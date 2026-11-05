<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:06e50ed3-c893-4772-ba4a-878fc9de01d0(jetbrains.mps.vcs.changesmanager.editor)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="lcr" ref="r:d634c129-ecb4-4acd-bd8c-5f057c144ffa(jetbrains.mps.vcs.changesmanager)" />
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="bfxj" ref="r:5744ed46-c83f-47cd-94ce-f24d1f92d6a1(jetbrains.mps.vcs.diff)" />
    <import index="dp1x" ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)" />
    <import index="zbx9" ref="r:c29f530b-f74d-4627-9da2-61138cfa6722(jetbrains.mps.vcs.platform.actions)" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="px75" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.leftHighlighter(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="zyr2" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.inspector(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="rlg8" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.highlighter(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="bmv6" ref="r:e9c4e128-4808-4224-a92b-dbeed02eb860(jetbrains.mps.vcs.diff.merge)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="kip1" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.nodefs(MPS.Platform/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="3205675194086686068" name="jetbrains.mps.lang.plugin.structure.GroupAccessOperation" flags="nn" index="3$FqnI">
        <reference id="3205675194086686070" name="group" index="3$FqnG" />
      </concept>
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1215695201514" name="jetbrains.mps.baseLanguage.structure.MinusAssignmentExpression" flags="nn" index="d5anL" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
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
      <concept id="1172664342967" name="jetbrains.mps.baseLanguage.collections.structure.TakeOperation" flags="nn" index="8ftyA">
        <child id="1172664372046" name="elementsToTake" index="8f$Dv" />
      </concept>
      <concept id="1172667724288" name="jetbrains.mps.baseLanguage.collections.structure.PageOperation" flags="nn" index="8snch">
        <child id="1172667737868" name="fromElement" index="8sqot" />
        <child id="1172667748353" name="toElement" index="8st4g" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
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
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1225730411176" name="jetbrains.mps.baseLanguage.collections.structure.FindLastOperation" flags="nn" index="1zesIP" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1522217801069359738" name="jetbrains.mps.baseLanguage.collections.structure.ReduceLeftOperation" flags="nn" index="1MCZdW" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="5zpsdFy5CyP">
    <property role="TrG5h" value="EditorHighlighterFactory" />
    <node concept="3Tm1VV" id="5zpsdFy5CyQ" role="1B3o_S" />
    <node concept="312cEg" id="5hxUVFSIm2E" role="jymVt">
      <property role="TrG5h" value="myEditorsHighlighters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5hxUVFSIm2F" role="1B3o_S" />
      <node concept="3rvAFt" id="5hxUVFSInyz" role="1tU5fm">
        <node concept="3uibUv" id="5zpsdFy5CyW" role="3rvSg0">
          <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
        </node>
        <node concept="3uibUv" id="6C9ueeimjW9" role="3rvQeY">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="2ShNRf" id="5hxUVFSIt47" role="33vP2m">
        <node concept="3rGOSV" id="5hxUVFSIt48" role="2ShVmc">
          <node concept="3uibUv" id="5zpsdFy5CyX" role="3rHtpV">
            <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
          </node>
          <node concept="3uibUv" id="6C9ueeimkmJ" role="3rHrn6">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="31IQ8dwSR4A" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31IQ8dwSQFf" role="1B3o_S" />
      <node concept="3uibUv" id="31IQ8dwSR41" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="31IQ8dwSG7c" role="jymVt" />
    <node concept="3clFbW" id="5zpsdFy5CyR" role="jymVt">
      <node concept="37vLTG" id="5zpsdFy5CyY" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5zpsdFy5Cz0" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zpsdFy5CyS" role="3clF45" />
      <node concept="3Tm1VV" id="5zpsdFy5CyT" role="1B3o_S" />
      <node concept="3clFbS" id="5zpsdFy5CyU" role="3clF47">
        <node concept="3clFbF" id="31IQ8dwSRZ0" role="3cqZAp">
          <node concept="37vLTI" id="31IQ8dwSSpE" role="3clFbG">
            <node concept="37vLTw" id="31IQ8dwSSDv" role="37vLTx">
              <ref role="3cqZAo" node="5zpsdFy5CyY" resolve="project" />
            </node>
            <node concept="37vLTw" id="31IQ8dwSRYZ" role="37vLTJ">
              <ref role="3cqZAo" node="31IQ8dwSR4A" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31IQ8dwSFg0" role="jymVt" />
    <node concept="2YIFZL" id="31IQ8dwSM13" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="31IQ8dwSM16" role="3clF47">
        <node concept="3cpWs6" id="31IQ8dwSN9j" role="3cqZAp">
          <node concept="2OqwBi" id="31IQ8dwSNNc" role="3cqZAk">
            <node concept="37vLTw" id="31IQ8dwSNoN" role="2Oq$k0">
              <ref role="3cqZAo" node="31IQ8dwSMVr" resolve="ideaProject" />
            </node>
            <node concept="liA8E" id="31IQ8dwSOcv" role="2OqNvi">
              <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
              <node concept="3VsKOn" id="31IQ8dwSOzj" role="37wK5m">
                <ref role="3VsUkX" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31IQ8dwSJS9" role="1B3o_S" />
      <node concept="3uibUv" id="31IQ8dwSLVP" role="3clF45">
        <ref role="3uigEE" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
      </node>
      <node concept="37vLTG" id="31IQ8dwSMVr" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="31IQ8dwSMVq" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31IQ8dwSFih" role="jymVt" />
    <node concept="3clFb_" id="1to3OFtQTQu" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="addHighighlighterIfNeeded" />
      <node concept="3cqZAl" id="1to3OFtQTQv" role="3clF45" />
      <node concept="3Tm6S6" id="1to3OFtQTQT" role="1B3o_S" />
      <node concept="3clFbS" id="1to3OFtQTQx" role="3clF47">
        <node concept="3clFbJ" id="5zpsdFy5CzB" role="3cqZAp">
          <node concept="3clFbS" id="5zpsdFy5CzC" role="3clFbx">
            <node concept="3clFbF" id="1to3OFtQW23" role="3cqZAp">
              <node concept="37vLTI" id="1to3OFtQW2j" role="3clFbG">
                <node concept="3EllGN" id="1to3OFtQW27" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxgmaPK" role="3ElVtu">
                    <ref role="3cqZAo" node="1to3OFtQVYW" resolve="editorComponent" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuLd3" role="3ElQJh">
                    <ref role="3cqZAo" node="5hxUVFSIm2E" resolve="myEditorsHighlighters" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1to3OFtQW2q" role="37vLTx">
                  <node concept="1pGfFk" id="1to3OFtQW2r" role="2ShVmc">
                    <ref role="37wK5l" node="5zpsdFy5B1A" resolve="EditorHighlighter" />
                    <node concept="37vLTw" id="31IQ8dwT5Bk" role="37wK5m">
                      <ref role="3cqZAo" node="31IQ8dwSR4A" resolve="myProject" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxgm7aX" role="37wK5m">
                      <ref role="3cqZAo" node="1to3OFtQVYW" resolve="editorComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5zpsdFy5CzG" role="3clFbw">
            <node concept="3clFbC" id="5zpsdFy5CzH" role="3uHU7w">
              <node concept="2OqwBi" id="5zpsdFy5CzI" role="3uHU7w">
                <node concept="2YIFZM" id="oeXz_6fUZw" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~InspectorTool.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                  <ref role="1Pybhc" to="exr9:~InspectorTool" resolve="InspectorTool" />
                  <node concept="2YIFZM" id="oeXz_6fZFo" role="37wK5m">
                    <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="37vLTw" id="oeXz_6g05_" role="37wK5m">
                      <ref role="3cqZAo" node="31IQ8dwSR4A" resolve="myProject" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5zpsdFy5CzN" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~InspectorTool.getInspector()" resolve="getInspector" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm8EC" role="3uHU7B">
                <ref role="3cqZAo" node="1to3OFtQVYW" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2ZW3vV" id="5zpsdFy5CzP" role="3uHU7B">
              <node concept="3uibUv" id="5zpsdFy5CzQ" role="2ZW6by">
                <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmC6N" role="2ZW6bz">
                <ref role="3cqZAo" node="1to3OFtQVYW" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1to3OFtQVYW" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1to3OFtQVYX" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="4TiB462Rs76" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1to3OFtQTQU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="disposeHighlighterIfNeeded" />
      <node concept="37vLTG" id="1to3OFtQVYY" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1to3OFtQVYZ" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="4TiB462Rs77" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="1to3OFtQTQV" role="3clF45" />
      <node concept="3Tm6S6" id="1to3OFtQTRl" role="1B3o_S" />
      <node concept="3clFbS" id="1to3OFtQTQX" role="3clF47">
        <node concept="3clFbJ" id="1to3OFtQVZ9" role="3cqZAp">
          <node concept="3clFbS" id="1to3OFtQVZb" role="3clFbx">
            <node concept="3clFbF" id="1to3OFtQVZN" role="3cqZAp">
              <node concept="2OqwBi" id="1to3OFtQVZZ" role="3clFbG">
                <node concept="3EllGN" id="1to3OFtQVZO" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgl3Fp" role="3ElVtu">
                    <ref role="3cqZAo" node="1to3OFtQVYY" resolve="editorComponent" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeusoF" role="3ElQJh">
                    <ref role="3cqZAo" node="5hxUVFSIm2E" resolve="myEditorsHighlighters" />
                  </node>
                </node>
                <node concept="liA8E" id="1to3OFtQW07" role="2OqNvi">
                  <ref role="37wK5l" node="5zpsdFy5Cun" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4TiB462Rs7g" role="3cqZAp">
              <node concept="2OqwBi" id="4TiB462Rs7h" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuL9V" role="2Oq$k0">
                  <ref role="3cqZAo" node="5hxUVFSIm2E" resolve="myEditorsHighlighters" />
                </node>
                <node concept="kI3uX" id="4TiB462Rs7j" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxglWKz" role="kIiFs">
                    <ref role="3cqZAo" node="1to3OFtQVYY" resolve="editorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4TiB462Rs7l" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuddE" role="2Oq$k0">
              <ref role="3cqZAo" node="5hxUVFSIm2E" resolve="myEditorsHighlighters" />
            </node>
            <node concept="2Nt0df" id="4TiB462Rs7n" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgkX6c" role="38cxEo">
                <ref role="3cqZAo" node="1to3OFtQVYY" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1LVXsqEggg1" role="jymVt">
      <property role="TrG5h" value="getHighlighter" />
      <node concept="37vLTG" id="1LVXsqEggg6" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="2AHcQZ" id="1LVXsqEggg9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6C9ueeimkNQ" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3uibUv" id="1LVXsqEggg5" role="3clF45">
        <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
      </node>
      <node concept="3Tm1VV" id="1LVXsqEggg3" role="1B3o_S" />
      <node concept="3clFbS" id="1LVXsqEggg4" role="3clF47">
        <node concept="3clFbF" id="1LVXsqEggga" role="3cqZAp">
          <node concept="3EllGN" id="1LVXsqEgggb" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghgYF" role="3ElVtu">
              <ref role="3cqZAo" node="1LVXsqEggg6" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="2BHiRxeurrH" role="3ElQJh">
              <ref role="3cqZAo" node="5hxUVFSIm2E" resolve="myEditorsHighlighters" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31IQ8dwSSLo" role="jymVt" />
    <node concept="312cEu" id="4TiB462Rs7x" role="jymVt">
      <property role="TrG5h" value="MyEditorComponentCreateListener" />
      <node concept="3uibUv" id="6iIJyBNax3m" role="EKbjA">
        <ref role="3uigEE" to="rlg8:~EditorComponentCreateListener" resolve="EditorComponentCreateListener" />
      </node>
      <node concept="312cEg" id="31IQ8dwSUG2" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="31IQ8dwSUG3" role="1B3o_S" />
        <node concept="3uibUv" id="31IQ8dwSUG4" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="31IQ8dwSUBh" role="jymVt" />
      <node concept="3clFbW" id="4TiB462Rs7z" role="jymVt">
        <node concept="3cqZAl" id="4TiB462Rs7$" role="3clF45" />
        <node concept="3Tm1VV" id="4TiB462Rs7_" role="1B3o_S" />
        <node concept="3clFbS" id="4TiB462Rs7A" role="3clF47">
          <node concept="3clFbF" id="31IQ8dwSV7Y" role="3cqZAp">
            <node concept="37vLTI" id="31IQ8dwSVJX" role="3clFbG">
              <node concept="37vLTw" id="31IQ8dwSW7i" role="37vLTx">
                <ref role="3cqZAo" node="31IQ8dwSUut" resolve="project" />
              </node>
              <node concept="37vLTw" id="31IQ8dwSV7X" role="37vLTJ">
                <ref role="3cqZAo" node="31IQ8dwSUG2" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="31IQ8dwSUut" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="31IQ8dwSUus" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4$qcrJI6rAB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="editorComponentCreated" />
        <node concept="3Tm1VV" id="4$qcrJI6rAC" role="1B3o_S" />
        <node concept="3cqZAl" id="4$qcrJI6rAD" role="3clF45" />
        <node concept="37vLTG" id="4$qcrJI6rAE" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="4$qcrJI6rAF" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="4$qcrJI6rAG" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4$qcrJI6rAH" role="3clF47">
          <node concept="3cpWs8" id="31IQ8dwSXh9" role="3cqZAp">
            <node concept="3cpWsn" id="31IQ8dwSXha" role="3cpWs9">
              <property role="TrG5h" value="ehf" />
              <node concept="3uibUv" id="31IQ8dwSXer" role="1tU5fm">
                <ref role="3uigEE" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
              </node>
              <node concept="2YIFZM" id="31IQ8dwSXhb" role="33vP2m">
                <ref role="37wK5l" node="31IQ8dwSM13" resolve="getInstance" />
                <ref role="1Pybhc" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
                <node concept="37vLTw" id="31IQ8dwSXhc" role="37wK5m">
                  <ref role="3cqZAo" node="31IQ8dwSUG2" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31IQ8dwSXJv" role="3cqZAp">
            <node concept="3clFbS" id="31IQ8dwSXJx" role="3clFbx">
              <node concept="3clFbF" id="31IQ8dwSZDU" role="3cqZAp">
                <node concept="2OqwBi" id="31IQ8dwT00P" role="3clFbG">
                  <node concept="37vLTw" id="31IQ8dwSZDS" role="2Oq$k0">
                    <ref role="3cqZAo" node="31IQ8dwSXha" resolve="ehf" />
                  </node>
                  <node concept="liA8E" id="31IQ8dwT0oe" role="2OqNvi">
                    <ref role="37wK5l" node="1to3OFtQTQu" resolve="addHighighlighterIfNeeded" />
                    <node concept="37vLTw" id="31IQ8dwT0W$" role="37wK5m">
                      <ref role="3cqZAo" node="4$qcrJI6rAE" resolve="editorComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31IQ8dwSYNu" role="3clFbw">
              <node concept="10Nm6u" id="31IQ8dwSZ85" role="3uHU7w" />
              <node concept="37vLTw" id="31IQ8dwSY1R" role="3uHU7B">
                <ref role="3cqZAo" node="31IQ8dwSXha" resolve="ehf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RUqd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4$qcrJI6rBb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="editorComponentDisposed" />
        <node concept="3Tm1VV" id="4$qcrJI6rBc" role="1B3o_S" />
        <node concept="3cqZAl" id="4$qcrJI6rBd" role="3clF45" />
        <node concept="37vLTG" id="4$qcrJI6rBe" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="4$qcrJI6rBf" role="1tU5fm">
            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="2AHcQZ" id="4$qcrJI6rBg" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4$qcrJI6rBh" role="3clF47">
          <node concept="3cpWs8" id="31IQ8dwT18T" role="3cqZAp">
            <node concept="3cpWsn" id="31IQ8dwT18U" role="3cpWs9">
              <property role="TrG5h" value="ehf" />
              <node concept="3uibUv" id="31IQ8dwT18V" role="1tU5fm">
                <ref role="3uigEE" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
              </node>
              <node concept="2YIFZM" id="31IQ8dwT18W" role="33vP2m">
                <ref role="1Pybhc" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
                <ref role="37wK5l" node="31IQ8dwSM13" resolve="getInstance" />
                <node concept="37vLTw" id="31IQ8dwT18X" role="37wK5m">
                  <ref role="3cqZAo" node="31IQ8dwSUG2" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="31IQ8dwT1y_" role="3cqZAp">
            <node concept="3clFbS" id="31IQ8dwT1yB" role="3clFbx">
              <node concept="3clFbF" id="31IQ8dwT2VD" role="3cqZAp">
                <node concept="2OqwBi" id="31IQ8dwT3d9" role="3clFbG">
                  <node concept="37vLTw" id="31IQ8dwT2VB" role="2Oq$k0">
                    <ref role="3cqZAo" node="31IQ8dwT18U" resolve="ehf" />
                  </node>
                  <node concept="liA8E" id="31IQ8dwT3l5" role="2OqNvi">
                    <ref role="37wK5l" node="1to3OFtQTQU" resolve="disposeHighlighterIfNeeded" />
                    <node concept="37vLTw" id="31IQ8dwT3SK" role="37wK5m">
                      <ref role="3cqZAo" node="4$qcrJI6rBe" resolve="editorComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="31IQ8dwT2ia" role="3clFbw">
              <node concept="10Nm6u" id="31IQ8dwT2AL" role="3uHU7w" />
              <node concept="37vLTw" id="31IQ8dwT1Si" role="3uHU7B">
                <ref role="3cqZAo" node="31IQ8dwT18U" resolve="ehf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_RUqi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="31IQ8dwSTue" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="5zpsdFy5B1u">
    <property role="TrG5h" value="EditorHighlighter" />
    <node concept="3uibUv" id="1z$$IgbmziI" role="EKbjA">
      <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
    </node>
    <node concept="3Tm1VV" id="5zpsdFy5B1_" role="1B3o_S" />
    <node concept="312cEg" id="5zpsdFy5B1v" role="jymVt">
      <property role="TrG5h" value="myEditorComponent" />
      <node concept="3Tm6S6" id="5zpsdFy5B1w" role="1B3o_S" />
      <node concept="3uibUv" id="5zpsdFy5B1x" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="9ee6OG4zHS" role="jymVt">
      <property role="TrG5h" value="myChangesMessages" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="9ee6OG4zHT" role="1B3o_S" />
      <node concept="3rvAFt" id="9ee6OG4zHU" role="1tU5fm">
        <node concept="3uibUv" id="5zpsdFy5Cp6" role="3rvQeY">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
        <node concept="_YKpA" id="5zpsdFy5Cr8" role="3rvSg0">
          <node concept="3uibUv" id="5zpsdFy5Cra" role="_ZDj9">
            <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="9ee6OG4zHX" role="33vP2m">
        <node concept="3rGOSV" id="9ee6OG4zHY" role="2ShVmc">
          <node concept="3uibUv" id="5zpsdFy5Cp8" role="3rHrn6">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="_YKpA" id="5zpsdFy5Crb" role="3rHtpV">
            <node concept="3uibUv" id="5zpsdFy5Crc" role="_ZDj9">
              <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5zpsdFy5Cb0" role="jymVt">
      <property role="TrG5h" value="myCurrentDifference" />
      <node concept="3Tm6S6" id="5zpsdFy5Cb1" role="1B3o_S" />
      <node concept="3uibUv" id="5zpsdFy5Cb3" role="1tU5fm">
        <ref role="3uigEE" to="lcr:2JwSLRbyUxe" resolve="CurrentDifference" />
      </node>
    </node>
    <node concept="312cEg" id="K9wxfKEU8Z" role="jymVt">
      <property role="TrG5h" value="myStripsPainter" />
      <node concept="3Tm6S6" id="K9wxfKEU90" role="1B3o_S" />
      <node concept="3uibUv" id="K9wxfKEU92" role="1tU5fm">
        <ref role="3uigEE" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
      </node>
    </node>
    <node concept="312cEg" id="5zpsdFy5B1y" role="jymVt">
      <property role="TrG5h" value="myListener" />
      <node concept="3Tm6S6" id="5zpsdFy5B1z" role="1B3o_S" />
      <node concept="3uibUv" id="5zpsdFy5Cbh" role="1tU5fm">
        <ref role="3uigEE" node="5zpsdFy5Cb9" resolve="EditorHighlighter.MyCurrentDifferenceListener" />
      </node>
    </node>
    <node concept="312cEg" id="5zpsdFy5CaN" role="jymVt">
      <property role="TrG5h" value="myDisposedLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5zpsdFy5CaO" role="1B3o_S" />
      <node concept="3uibUv" id="5zpsdFy5CaQ" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="5zpsdFy5CsN" role="33vP2m">
        <node concept="1pGfFk" id="5zpsdFy5CsO" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5zpsdFy5CaT" role="jymVt">
      <property role="TrG5h" value="myDisposed" />
      <node concept="3Tm6S6" id="5zpsdFy5CaU" role="1B3o_S" />
      <node concept="10P_77" id="5zpsdFy5CaW" role="1tU5fm" />
      <node concept="3clFbT" id="5zpsdFy5CaY" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="3clFbW" id="5zpsdFy5B1A" role="jymVt">
      <node concept="37vLTG" id="5zpsdFy5B1B" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5zpsdFy5B1L" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="5zpsdFy5B1D" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5zpsdFy5B1E" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="5zpsdFy5B1F" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="5zpsdFy5B1G" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zpsdFy5B1H" role="3clF45" />
      <node concept="3Tm1VV" id="5zpsdFy5B1I" role="1B3o_S" />
      <node concept="3clFbS" id="5zpsdFy5B1J" role="3clF47">
        <node concept="3clFbF" id="4fASneJs6d" role="3cqZAp">
          <node concept="37vLTI" id="4fASneJsgN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglnnG" role="37vLTx">
              <ref role="3cqZAo" node="5zpsdFy5B1E" resolve="editorComponent" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuHSu" role="37vLTJ">
              <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="9ee6OG4Ci5" role="3cqZAp" />
        <node concept="3clFbF" id="1IWbOwDRc9Y" role="3cqZAp">
          <node concept="2OqwBi" id="1IWbOwDRc9Z" role="3clFbG">
            <node concept="2OqwBi" id="1IWbOwDRca0" role="2Oq$k0">
              <node concept="2YIFZM" id="1IWbOwDRca1" role="2Oq$k0">
                <ref role="37wK5l" to="lcr:2JwSLRbyYP0" resolve="getInstance" />
                <ref role="1Pybhc" to="lcr:2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
                <node concept="37vLTw" id="2BHiRxgm85n" role="37wK5m">
                  <ref role="3cqZAo" node="5zpsdFy5B1B" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="1IWbOwDRca3" role="2OqNvi">
                <ref role="37wK5l" to="lcr:2JwSLRbyYWE" resolve="getCommandQueue" />
              </node>
            </node>
            <node concept="liA8E" id="1IWbOwDRca4" role="2OqNvi">
              <ref role="37wK5l" to="lcr:3eE6dTgUd0h" resolve="runTask" />
              <node concept="1bVj0M" id="1IWbOwDRca5" role="37wK5m">
                <node concept="3clFbS" id="1IWbOwDRca6" role="1bW5cS">
                  <node concept="3cpWs8" id="2OoyE6VUP4y" role="3cqZAp">
                    <node concept="3cpWsn" id="2OoyE6VUP4z" role="3cpWs9">
                      <property role="TrG5h" value="repo" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="2OoyE6VUP4x" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                      </node>
                      <node concept="2OqwBi" id="2OoyE6VUP4$" role="33vP2m">
                        <node concept="2OqwBi" id="2OoyE6VUP4_" role="2Oq$k0">
                          <node concept="37vLTw" id="2OoyE6VUP4A" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zpsdFy5B1E" resolve="editorComponent" />
                          </node>
                          <node concept="liA8E" id="2OoyE6VUP4B" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2OoyE6VUP4C" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1KUoCipvEae" role="3cqZAp">
                    <node concept="2OqwBi" id="1KUoCipvEaf" role="3clFbG">
                      <node concept="2OqwBi" id="2OoyE6VURAd" role="2Oq$k0">
                        <node concept="37vLTw" id="2OoyE6VUP4D" role="2Oq$k0">
                          <ref role="3cqZAo" node="2OoyE6VUP4z" resolve="repo" />
                        </node>
                        <node concept="liA8E" id="2OoyE6VUSzp" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1KUoCipvEai" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                        <node concept="1bVj0M" id="1KUoCipvEaj" role="37wK5m">
                          <node concept="3clFbS" id="1KUoCipvEal" role="1bW5cS">
                            <node concept="1HWtB8" id="1KUoCipvEam" role="3cqZAp">
                              <node concept="37vLTw" id="2BHiRxeuVYk" role="1HWFw0">
                                <ref role="3cqZAo" node="5zpsdFy5CaN" resolve="myDisposedLock" />
                              </node>
                              <node concept="3clFbS" id="1KUoCipvEap" role="1HWHxc">
                                <node concept="3clFbJ" id="1KUoCipvEar" role="3cqZAp">
                                  <node concept="3clFbS" id="1KUoCipvEas" role="3clFbx">
                                    <node concept="3cpWs6" id="1KUoCipvEat" role="3cqZAp" />
                                  </node>
                                  <node concept="37vLTw" id="2BHiRxeuxLA" role="3clFbw">
                                    <ref role="3cqZAo" node="5zpsdFy5CaT" resolve="myDisposed" />
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="1KUoCipvEav" role="3cqZAp">
                                  <node concept="3cpWsn" id="1KUoCipvEaw" role="3cpWs9">
                                    <property role="TrG5h" value="editedNode" />
                                    <node concept="3uibUv" id="1KUoCipvEay" role="1tU5fm">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                    <node concept="3K4zz7" id="2OoyE6VVfMY" role="33vP2m">
                                      <node concept="10Nm6u" id="2OoyE6VVgD1" role="3K4E3e" />
                                      <node concept="2OqwBi" id="2OoyE6VVmg5" role="3K4GZi">
                                        <node concept="2OqwBi" id="2OoyE6VViic" role="2Oq$k0">
                                          <node concept="37vLTw" id="2OoyE6VVgZA" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5zpsdFy5B1E" resolve="editorComponent" />
                                          </node>
                                          <node concept="liA8E" id="2OoyE6VVlxd" role="2OqNvi">
                                            <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNodePointer()" resolve="getEditedNodePointer" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2OoyE6VVnai" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                          <node concept="37vLTw" id="2OoyE6VVo0_" role="37wK5m">
                                            <ref role="3cqZAo" node="2OoyE6VUP4z" resolve="repo" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbC" id="2OoyE6VVe0T" role="3K4Cdx">
                                        <node concept="10Nm6u" id="2OoyE6VVeU3" role="3uHU7w" />
                                        <node concept="2OqwBi" id="2OoyE6VVaDp" role="3uHU7B">
                                          <node concept="37vLTw" id="2OoyE6VVaDq" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5zpsdFy5B1E" resolve="editorComponent" />
                                          </node>
                                          <node concept="liA8E" id="2OoyE6VVaDr" role="2OqNvi">
                                            <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNodePointer()" resolve="getEditedNodePointer" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1KUoCipvEaB" role="3cqZAp">
                                  <node concept="3clFbS" id="1KUoCipvEaC" role="3clFbx">
                                    <node concept="3cpWs6" id="1KUoCipvEaD" role="3cqZAp" />
                                  </node>
                                  <node concept="3clFbC" id="1KUoCipvEaN" role="3clFbw">
                                    <node concept="10Nm6u" id="1KUoCipvEaO" role="3uHU7w" />
                                    <node concept="37vLTw" id="3GM_nagT$I2" role="3uHU7B">
                                      <ref role="3cqZAo" node="1KUoCipvEaw" resolve="editedNode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="1KUoCipvEaT" role="3cqZAp">
                                  <node concept="3cpWsn" id="1KUoCipvEaU" role="3cpWs9">
                                    <property role="TrG5h" value="model" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="1KUoCipvEaV" role="1tU5fm">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                    <node concept="2OqwBi" id="1KUoCipvEaX" role="33vP2m">
                                      <node concept="37vLTw" id="3GM_nagTuDF" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1KUoCipvEaw" resolve="editedNode" />
                                      </node>
                                      <node concept="liA8E" id="1KUoCipvEaZ" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1KUoCipvEb0" role="3cqZAp">
                                  <node concept="1Wc70l" id="1KUoCipvEb1" role="3clFbw">
                                    <node concept="3fqX7Q" id="1KUoCipvEb2" role="3uHU7w">
                                      <node concept="2OqwBi" id="1KUoCipvEb3" role="3fr31v">
                                        <node concept="37vLTw" id="1KUoCipvEb5" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1KUoCipvEaU" resolve="model" />
                                        </node>
                                        <node concept="liA8E" id="1KUoCipvEb6" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2ZW3vV" id="1KUoCipvEb7" role="3uHU7B">
                                      <node concept="37vLTw" id="1KUoCipvEb8" role="2ZW6bz">
                                        <ref role="3cqZAo" node="1KUoCipvEaU" resolve="model" />
                                      </node>
                                      <node concept="3uibUv" id="1KUoCipvEb9" role="2ZW6by">
                                        <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="1KUoCipvEba" role="3clFbx">
                                    <node concept="3clFbF" id="1KUoCipvEbc" role="3cqZAp">
                                      <node concept="37vLTI" id="1KUoCipvEbd" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxeun7_" role="37vLTJ">
                                          <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                                        </node>
                                        <node concept="2OqwBi" id="1KUoCipvEbf" role="37vLTx">
                                          <node concept="2YIFZM" id="1KUoCipvEbg" role="2Oq$k0">
                                            <ref role="37wK5l" to="lcr:2JwSLRbyYP0" resolve="getInstance" />
                                            <ref role="1Pybhc" to="lcr:2JwSLRbyYN6" resolve="CurrentDifferenceRegistry" />
                                            <node concept="37vLTw" id="2BHiRxghf8H" role="37wK5m">
                                              <ref role="3cqZAo" node="5zpsdFy5B1B" resolve="project" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1KUoCipvEbi" role="2OqNvi">
                                            <ref role="37wK5l" to="lcr:2JwSLRbyYTp" resolve="getCurrentDifference" />
                                            <node concept="10QFUN" id="1KUoCipvEbk" role="37wK5m">
                                              <node concept="37vLTw" id="1KUoCipvEbl" role="10QFUP">
                                                <ref role="3cqZAo" node="1KUoCipvEaU" resolve="model" />
                                              </node>
                                              <node concept="3uibUv" id="1KUoCipvEbm" role="10QFUM">
                                                <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="1KUoCipvEbn" role="3cqZAp">
                                      <node concept="37vLTI" id="1KUoCipvEbo" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxeuOSF" role="37vLTJ">
                                          <ref role="3cqZAo" node="5zpsdFy5B1y" resolve="myListener" />
                                        </node>
                                        <node concept="2ShNRf" id="1KUoCipvEbr" role="37vLTx">
                                          <node concept="1pGfFk" id="1KUoCipvEbs" role="2ShVmc">
                                            <ref role="37wK5l" node="5zpsdFy5Cbb" resolve="EditorHighlighter.MyCurrentDifferenceListener" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1KUoCipvEbt" role="3cqZAp">
                                  <node concept="3clFbS" id="1KUoCipvEbu" role="3clFbx">
                                    <node concept="3clFbF" id="1KUoCipvEbv" role="3cqZAp">
                                      <node concept="2OqwBi" id="1KUoCipvEbx" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxeujRD" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                                        </node>
                                        <node concept="liA8E" id="1KUoCipvEbz" role="2OqNvi">
                                          <ref role="37wK5l" to="lcr:2JwSLRbzm_p" resolve="setEnabled" />
                                          <node concept="3clFbT" id="1KUoCipvEb$" role="37wK5m">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbH" id="1KUoCipvEbA" role="3cqZAp" />
                                    <node concept="3cpWs8" id="1KUoCipvEbB" role="3cqZAp">
                                      <node concept="3cpWsn" id="1KUoCipvEbC" role="3cpWs9">
                                        <property role="TrG5h" value="changeSet" />
                                        <node concept="3uibUv" id="1KUoCipvEbD" role="1tU5fm">
                                          <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
                                        </node>
                                        <node concept="2OqwBi" id="1KUoCipvEbF" role="33vP2m">
                                          <node concept="37vLTw" id="2BHiRxeusav" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                                          </node>
                                          <node concept="liA8E" id="1KUoCipvEbH" role="2OqNvi">
                                            <ref role="37wK5l" to="lcr:2JwSLRbzn5Q" resolve="getChangeSet" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1KUoCipvEbI" role="3cqZAp">
                                      <node concept="3clFbS" id="1KUoCipvEbK" role="3clFbx">
                                        <node concept="3clFbF" id="1KUoCipvEbL" role="3cqZAp">
                                          <node concept="2OqwBi" id="1KUoCipvEbM" role="3clFbG">
                                            <node concept="2OqwBi" id="1KUoCipvEbN" role="2Oq$k0">
                                              <node concept="2OqwBi" id="1KUoCipvEbO" role="2Oq$k0">
                                                <node concept="37vLTw" id="3GM_nagT$0K" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1KUoCipvEbC" resolve="changeSet" />
                                                </node>
                                                <node concept="liA8E" id="1KUoCipvEbR" role="2OqNvi">
                                                  <ref role="37wK5l" to="bfxj:3kRMfhMv9tJ" resolve="getModelChanges" />
                                                </node>
                                              </node>
                                              <node concept="3zZkjj" id="1KUoCipvEbS" role="2OqNvi">
                                                <node concept="1bVj0M" id="1KUoCipvEbT" role="23t8la">
                                                  <node concept="3clFbS" id="1KUoCipvEbV" role="1bW5cS">
                                                    <node concept="3clFbF" id="1KUoCipvEbW" role="3cqZAp">
                                                      <node concept="2OqwBi" id="1KUoCipvEbX" role="3clFbG">
                                                        <node concept="2OqwBi" id="1KUoCipvEbY" role="2Oq$k0">
                                                          <node concept="liA8E" id="1KUoCipvEbZ" role="2OqNvi">
                                                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                          </node>
                                                          <node concept="2OqwBi" id="48lEE9jxJrt" role="2Oq$k0">
                                                            <node concept="37vLTw" id="3GM_nagTAZg" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="1KUoCipvEaw" resolve="editedNode" />
                                                            </node>
                                                            <node concept="liA8E" id="48lEE9jxKGy" role="2OqNvi">
                                                              <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="1KUoCipvEc1" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                                          <node concept="2OqwBi" id="1KUoCipvEc3" role="37wK5m">
                                                            <node concept="37vLTw" id="2BHiRxglLMC" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="5W7E4fV0XKU" resolve="c" />
                                                            </node>
                                                            <node concept="liA8E" id="1KUoCipvEc5" role="2OqNvi">
                                                              <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="gl6BB" id="5W7E4fV0XKU" role="1bW2Oz">
                                                    <property role="TrG5h" value="c" />
                                                    <node concept="2jxLKc" id="5W7E4fV0XKV" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2es0OD" id="1KUoCipvEc9" role="2OqNvi">
                                              <node concept="1bVj0M" id="1KUoCipvEca" role="23t8la">
                                                <node concept="3clFbS" id="1KUoCipvEcb" role="1bW5cS">
                                                  <node concept="3clFbF" id="1KUoCipvEcc" role="3cqZAp">
                                                    <node concept="1rXfSq" id="4hiugqyyY_m" role="3clFbG">
                                                      <ref role="37wK5l" node="5zpsdFy5Cpg" resolve="createMessages" />
                                                      <node concept="37vLTw" id="2BHiRxglWM9" role="37wK5m">
                                                        <ref role="3cqZAo" node="5W7E4fV0XKW" resolve="c" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="gl6BB" id="5W7E4fV0XKW" role="1bW2Oz">
                                                  <property role="TrG5h" value="c" />
                                                  <node concept="2jxLKc" id="5W7E4fV0XKX" role="1tU5fm" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="1KUoCipvEci" role="3clFbw">
                                        <node concept="10Nm6u" id="1KUoCipvEcj" role="3uHU7w" />
                                        <node concept="37vLTw" id="3GM_nagTANb" role="3uHU7B">
                                          <ref role="3cqZAo" node="1KUoCipvEbC" resolve="changeSet" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1HWtB8" id="1KUoCipvEcm" role="3cqZAp">
                                      <node concept="37vLTw" id="2BHiRxeuyO$" role="1HWFw0">
                                        <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                                      </node>
                                      <node concept="3clFbS" id="1KUoCipvEco" role="1HWHxc">
                                        <node concept="3clFbF" id="1KUoCipvEcp" role="3cqZAp">
                                          <node concept="2OqwBi" id="1KUoCipvEcr" role="3clFbG">
                                            <node concept="2OqwBi" id="1KUoCipvEcs" role="2Oq$k0">
                                              <node concept="37vLTw" id="2BHiRxeuHsp" role="2Oq$k0">
                                                <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                                              </node>
                                              <node concept="T8wYR" id="1KUoCipvEcu" role="2OqNvi" />
                                            </node>
                                            <node concept="2es0OD" id="1KUoCipvEcw" role="2OqNvi">
                                              <node concept="1bVj0M" id="1KUoCipvEcx" role="23t8la">
                                                <node concept="3clFbS" id="1KUoCipvEcy" role="1bW5cS">
                                                  <node concept="3clFbF" id="1KUoCipvEcz" role="3cqZAp">
                                                    <node concept="2OqwBi" id="1KUoCipvEc$" role="3clFbG">
                                                      <node concept="37vLTw" id="2BHiRxgmxKK" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="5W7E4fV0XL0" resolve="messages" />
                                                      </node>
                                                      <node concept="2es0OD" id="1KUoCipvEcB" role="2OqNvi">
                                                        <node concept="1bVj0M" id="1KUoCipvEcC" role="23t8la">
                                                          <node concept="3clFbS" id="1KUoCipvEcD" role="1bW5cS">
                                                            <node concept="3clFbF" id="1KUoCipvEcE" role="3cqZAp">
                                                              <node concept="2OqwBi" id="1KUoCipvEcF" role="3clFbG">
                                                                <node concept="1rXfSq" id="4hiugqyzi9A" role="2Oq$k0">
                                                                  <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
                                                                </node>
                                                                <node concept="liA8E" id="1KUoCipvEcH" role="2OqNvi">
                                                                  <ref role="37wK5l" to="exr9:~NodeHighlightManager.mark(jetbrains.mps.openapi.editor.message.SimpleEditorMessage)" resolve="mark" />
                                                                  <node concept="37vLTw" id="2BHiRxgm7rX" role="37wK5m">
                                                                    <ref role="3cqZAo" node="5W7E4fV0XKY" resolve="m" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="gl6BB" id="5W7E4fV0XKY" role="1bW2Oz">
                                                            <property role="TrG5h" value="m" />
                                                            <node concept="2jxLKc" id="5W7E4fV0XKZ" role="1tU5fm" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="gl6BB" id="5W7E4fV0XL0" role="1bW2Oz">
                                                  <property role="TrG5h" value="messages" />
                                                  <node concept="2jxLKc" id="5W7E4fV0XL1" role="1tU5fm" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="1KUoCipvEcQ" role="3cqZAp">
                                      <node concept="2OqwBi" id="1KUoCipvEcR" role="3clFbG">
                                        <node concept="1rXfSq" id="4hiugqyz8Qr" role="2Oq$k0">
                                          <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
                                        </node>
                                        <node concept="liA8E" id="1KUoCipvEcU" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~NodeHighlightManager.repaintAndRebuildEditorMessages()" resolve="repaintAndRebuildEditorMessages" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="1KUoCipvEcV" role="3cqZAp">
                                      <node concept="2YIFZM" id="1KUoCipvEcW" role="3clFbG">
                                        <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
                                        <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                                        <node concept="1bVj0M" id="1KUoCipvEcX" role="37wK5m">
                                          <node concept="3clFbS" id="1KUoCipvEcY" role="1bW5cS">
                                            <node concept="3clFbJ" id="4UTqh_LTgmw" role="3cqZAp">
                                              <node concept="37vLTw" id="4UTqh_LTgmx" role="3clFbw">
                                                <ref role="3cqZAo" node="5zpsdFy5CaT" resolve="myDisposed" />
                                              </node>
                                              <node concept="3clFbS" id="4UTqh_LTgmz" role="3clFbx">
                                                <node concept="3cpWs6" id="4UTqh_LTgm$" role="3cqZAp" />
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="1KUoCipvEcZ" role="3cqZAp">
                                              <node concept="37vLTI" id="1KUoCipvEd0" role="3clFbG">
                                                <node concept="37vLTw" id="2BHiRxeuz75" role="37vLTJ">
                                                  <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                                                </node>
                                                <node concept="2ShNRf" id="1KUoCipvEd3" role="37vLTx">
                                                  <node concept="1pGfFk" id="1KUoCipvEd4" role="2ShVmc">
                                                    <ref role="37wK5l" node="K9wxfKEv35" resolve="ChangeStripsPainter" />
                                                    <node concept="Xjq3P" id="1KUoCipvEd5" role="37wK5m" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="1KUoCipvEd6" role="3cqZAp">
                                              <node concept="2OqwBi" id="1KUoCipvEd7" role="3clFbG">
                                                <node concept="2OqwBi" id="1KUoCipvEd8" role="2Oq$k0">
                                                  <node concept="37vLTw" id="2BHiRxeulz_" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
                                                  </node>
                                                  <node concept="liA8E" id="1KUoCipvEda" role="2OqNvi">
                                                    <ref role="37wK5l" to="exr9:~EditorComponent.getLeftEditorHighlighter()" resolve="getLeftEditorHighlighter" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="1KUoCipvEdb" role="2OqNvi">
                                                  <ref role="37wK5l" to="px75:~LeftEditorHighlighter.addFoldingAreaPainter(jetbrains.mps.nodeEditor.leftHighlighter.AbstractFoldingAreaPainter)" resolve="addFoldingAreaPainter" />
                                                  <node concept="37vLTw" id="2BHiRxeuoLD" role="37wK5m">
                                                    <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3SKdUt" id="4DCKBWQUAIQ" role="3cqZAp">
                                              <node concept="1PaTwC" id="ATZLwXom8F" role="1aUNEU">
                                                <node concept="3oM_SD" id="ATZLwXom8G" role="1PaTwD">
                                                  <property role="3oM_SC" value=".relayout()" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8H" role="1PaTwD">
                                                  <property role="3oM_SC" value="is" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8I" role="1PaTwD">
                                                  <property role="3oM_SC" value="called" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8J" role="1PaTwD">
                                                  <property role="3oM_SC" value="as" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8K" role="1PaTwD">
                                                  <property role="3oM_SC" value="a" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8L" role="1PaTwD">
                                                  <property role="3oM_SC" value="part" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8M" role="1PaTwD">
                                                  <property role="3oM_SC" value="of" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8N" role="1PaTwD">
                                                  <property role="3oM_SC" value=".addFoldingAreaPainter()" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8O" role="1PaTwD">
                                                  <property role="3oM_SC" value="method" />
                                                </node>
                                                <node concept="3oM_SD" id="ATZLwXom8P" role="1PaTwD">
                                                  <property role="3oM_SC" value="execution" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="1X3_iC" id="3$ZLRFpTwsN" role="lGtFl">
                                              <property role="3V$3am" value="statement" />
                                              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                              <node concept="3clFbF" id="1KUoCipvEde" role="8Wnug">
                                                <node concept="2OqwBi" id="1KUoCipvEdf" role="3clFbG">
                                                  <node concept="37vLTw" id="2BHiRxeuqTg" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                                                  </node>
                                                  <node concept="liA8E" id="1KUoCipvEdi" role="2OqNvi">
                                                    <ref role="37wK5l" node="K9wxfKEv2W" resolve="relayout" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="1KUoCipvEdj" role="3cqZAp">
                                      <node concept="2OqwBi" id="1KUoCipvEdk" role="3clFbG">
                                        <node concept="37vLTw" id="2BHiRxeuL3j" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                                        </node>
                                        <node concept="liA8E" id="1KUoCipvEdm" role="2OqNvi">
                                          <ref role="37wK5l" to="lcr:2JwSLRbziMZ" resolve="addDifferenceListener" />
                                          <node concept="37vLTw" id="2BHiRxeut5c" role="37wK5m">
                                            <ref role="3cqZAo" node="5zpsdFy5B1y" resolve="myListener" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="1KUoCipvEdp" role="3clFbw">
                                    <node concept="37vLTw" id="2BHiRxeumZI" role="3uHU7B">
                                      <ref role="3cqZAo" node="5zpsdFy5B1y" resolve="myListener" />
                                    </node>
                                    <node concept="10Nm6u" id="1KUoCipvEdr" role="3uHU7w" />
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
    <node concept="3clFb_" id="5zpsdFy5Cpg" role="jymVt">
      <property role="TrG5h" value="createMessages" />
      <node concept="_YKpA" id="5zpsdFy5Cre" role="3clF45">
        <node concept="3uibUv" id="5zpsdFy5Crf" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5zpsdFy5Cpq" role="1B3o_S" />
      <node concept="3clFbS" id="5zpsdFy5Cpj" role="3clF47">
        <node concept="3cpWs8" id="5zpsdFy5CpR" role="3cqZAp">
          <node concept="3cpWsn" id="5zpsdFy5CpS" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="_YKpA" id="5zpsdFy5CpT" role="1tU5fm">
              <node concept="3uibUv" id="5zpsdFy5CpU" role="_ZDj9">
                <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
              </node>
            </node>
            <node concept="10Nm6u" id="1Bd_iQFCrjU" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="3cKemOJLjqR" role="3cqZAp">
          <node concept="3clFbS" id="3cKemOJLjqS" role="3clFbx">
            <node concept="3cpWs8" id="2OoyE6VV00E" role="3cqZAp">
              <node concept="3cpWsn" id="2OoyE6VV00F" role="3cpWs9">
                <property role="TrG5h" value="repo" />
                <node concept="3uibUv" id="2OoyE6VV00C" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="2OoyE6VV00G" role="33vP2m">
                  <node concept="2OqwBi" id="2OoyE6VV00H" role="2Oq$k0">
                    <node concept="37vLTw" id="2OoyE6VV00I" role="2Oq$k0">
                      <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
                    </node>
                    <node concept="liA8E" id="2OoyE6VV00J" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2OoyE6VV00K" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1KUoCipvFhn" role="3cqZAp">
              <node concept="2OqwBi" id="1KUoCipvFho" role="3clFbG">
                <node concept="2OqwBi" id="2OoyE6VV1qr" role="2Oq$k0">
                  <node concept="37vLTw" id="2OoyE6VV0W7" role="2Oq$k0">
                    <ref role="3cqZAo" node="2OoyE6VV00F" resolve="repo" />
                  </node>
                  <node concept="liA8E" id="2OoyE6VV1St" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="1KUoCipvFhq" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="1KUoCipvFhr" role="37wK5m">
                    <node concept="3clFbS" id="1KUoCipvFhs" role="1bW5cS">
                      <node concept="3cpWs8" id="1KUoCipvFhw" role="3cqZAp">
                        <node concept="3cpWsn" id="1KUoCipvFhx" role="3cpWs9">
                          <property role="TrG5h" value="editedNode" />
                          <node concept="3uibUv" id="1KUoCipvFhy" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="3K4zz7" id="2OoyE6VV3Et" role="33vP2m">
                            <node concept="10Nm6u" id="2OoyE6VV45x" role="3K4E3e" />
                            <node concept="2OqwBi" id="2OoyE6VV8rX" role="3K4GZi">
                              <node concept="2OqwBi" id="2OoyE6VV5jO" role="2Oq$k0">
                                <node concept="37vLTw" id="2OoyE6VV4s6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
                                </node>
                                <node concept="liA8E" id="2OoyE6VV87X" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNodePointer()" resolve="getEditedNodePointer" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2OoyE6VV8Vi" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                <node concept="37vLTw" id="2OoyE6VV9mB" role="37wK5m">
                                  <ref role="3cqZAo" node="2OoyE6VV00F" resolve="repo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="2OoyE6VV2Im" role="3K4Cdx">
                              <node concept="10Nm6u" id="2OoyE6VV3cx" role="3uHU7w" />
                              <node concept="2OqwBi" id="1KUoCipvFhz" role="3uHU7B">
                                <node concept="37vLTw" id="2BHiRxeuQvI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
                                </node>
                                <node concept="liA8E" id="1KUoCipvFh_" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNodePointer()" resolve="getEditedNodePointer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1KUoCipvFhA" role="3cqZAp">
                        <node concept="3clFbS" id="1KUoCipvFhB" role="3clFbx">
                          <node concept="3cpWs6" id="1KUoCipvFhC" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="1KUoCipvFhG" role="3clFbw">
                          <node concept="37vLTw" id="3GM_nagTv4D" role="3uHU7B">
                            <ref role="3cqZAo" node="1KUoCipvFhx" resolve="editedNode" />
                          </node>
                          <node concept="10Nm6u" id="1KUoCipvFhI" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="nthHoNZPiZ" role="3cqZAp">
                        <node concept="3cpWsn" id="nthHoNZPj0" role="3cpWs9">
                          <property role="TrG5h" value="model" />
                          <node concept="3uibUv" id="nthHoNZPiU" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                          <node concept="2OqwBi" id="nthHoNZPj1" role="33vP2m">
                            <node concept="37vLTw" id="nthHoNZPj2" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KUoCipvFhx" resolve="editedNode" />
                            </node>
                            <node concept="liA8E" id="nthHoNZPj3" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipvFhY" role="3cqZAp">
                        <node concept="37vLTI" id="1KUoCipvFhZ" role="3clFbG">
                          <node concept="2YIFZM" id="1KUoCipvFi0" role="37vLTx">
                            <ref role="37wK5l" to="hdhb:7X2JJJDQ1mf" resolve="createMessages" />
                            <ref role="1Pybhc" to="hdhb:7X2JJJDQ1m9" resolve="ChangeEditorMessageFactory" />
                            <node concept="37vLTw" id="nthHoNZPj4" role="37wK5m">
                              <ref role="3cqZAo" node="nthHoNZPj0" resolve="model" />
                            </node>
                            <node concept="3y3z36" id="nthHoNZQ8y" role="37wK5m">
                              <node concept="37vLTw" id="nthHoNZQua" role="3uHU7w">
                                <ref role="3cqZAo" node="nthHoNZPj0" resolve="model" />
                              </node>
                              <node concept="2OqwBi" id="nthHoNZPUM" role="3uHU7B">
                                <node concept="2OqwBi" id="nthHoNZPHR" role="2Oq$k0">
                                  <node concept="37vLTw" id="nthHoNZPxb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5zpsdFy5Cpo" resolve="change" />
                                  </node>
                                  <node concept="liA8E" id="nthHoNZPPj" role="2OqNvi">
                                    <ref role="37wK5l" to="btf5:5x0q8wkvS4u" resolve="getChangeSet" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="nthHoNZQ2I" role="2OqNvi">
                                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="2BHiRxgm6Q5" role="37wK5m">
                              <ref role="3cqZAo" node="5zpsdFy5Cpo" resolve="change" />
                            </node>
                            <node concept="Xjq3P" id="1KUoCipvFi8" role="37wK5m">
                              <ref role="1HBi2w" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
                            </node>
                            <node concept="10Nm6u" id="1KUoCipvFi9" role="37wK5m" />
                            <node concept="3clFbT" id="1KUoCipvFia" role="37wK5m">
                              <property role="3clFbU" value="false" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTsFB" role="37vLTJ">
                            <ref role="3cqZAo" node="5zpsdFy5CpS" resolve="messages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3cKemOJLjqW" role="3clFbw">
            <node concept="2ZW3vV" id="3cKemOJLjqZ" role="3fr31v">
              <node concept="3uibUv" id="3cKemOJLjr2" role="2ZW6by">
                <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
              </node>
              <node concept="37vLTw" id="2BHiRxglIdh" role="2ZW6bz">
                <ref role="3cqZAo" node="5zpsdFy5Cpo" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1Bd_iQFCrjW" role="3cqZAp">
          <node concept="3clFbS" id="1Bd_iQFCrjX" role="3clFbx">
            <node concept="3clFbF" id="1Bd_iQFCrk5" role="3cqZAp">
              <node concept="37vLTI" id="1Bd_iQFCrk7" role="3clFbG">
                <node concept="2ShNRf" id="1Bd_iQFCrka" role="37vLTx">
                  <node concept="Tc6Ow" id="1Bd_iQFCrkb" role="2ShVmc">
                    <node concept="3uibUv" id="1Bd_iQFCrkc" role="HW$YZ">
                      <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTBbN" role="37vLTJ">
                  <ref role="3cqZAo" node="5zpsdFy5CpS" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1Bd_iQFCrk1" role="3clFbw">
            <node concept="10Nm6u" id="1Bd_iQFCrk4" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTsAI" role="3uHU7B">
              <ref role="3cqZAo" node="5zpsdFy5CpS" resolve="messages" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="5zpsdFy5CqT" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuL1z" role="1HWFw0">
            <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
          </node>
          <node concept="3clFbS" id="5zpsdFy5CqV" role="1HWHxc">
            <node concept="3clFbJ" id="5zpsdFy5CqX" role="3cqZAp">
              <node concept="2OqwBi" id="5zpsdFy5Cr1" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeuyVh" role="2Oq$k0">
                  <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                </node>
                <node concept="2Nt0df" id="5zpsdFy5Cr5" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxgmaog" role="38cxEo">
                    <ref role="3cqZAo" node="5zpsdFy5Cpo" resolve="change" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5zpsdFy5CqZ" role="3clFbx">
                <node concept="3cpWs6" id="5zpsdFy5Crg" role="3cqZAp">
                  <node concept="2ShNRf" id="5zpsdFy5Cri" role="3cqZAk">
                    <node concept="Tc6Ow" id="5zpsdFy5Crj" role="2ShVmc">
                      <node concept="3uibUv" id="5zpsdFy5Crk" role="HW$YZ">
                        <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5zpsdFy5Cro" role="3cqZAp">
              <node concept="37vLTI" id="5zpsdFy5Cru" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTA$l" role="37vLTx">
                  <ref role="3cqZAo" node="5zpsdFy5CpS" resolve="messages" />
                </node>
                <node concept="3EllGN" id="5zpsdFy5Crq" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxglyGl" role="3ElVtu">
                    <ref role="3cqZAo" node="5zpsdFy5Cpo" resolve="change" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuW0R" role="3ElQJh">
                    <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5zpsdFy5CqM" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsmP" role="3cqZAk">
            <ref role="3cqZAo" node="5zpsdFy5CpS" resolve="messages" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zpsdFy5Cpo" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5zpsdFy5Cpp" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5zpsdFy5CsP" role="jymVt">
      <property role="TrG5h" value="removeMessages" />
      <node concept="_YKpA" id="5zpsdFy5CsU" role="3clF45">
        <node concept="3uibUv" id="5zpsdFy5CsW" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5zpsdFy5CsT" role="1B3o_S" />
      <node concept="3clFbS" id="5zpsdFy5CsS" role="3clF47">
        <node concept="1HWtB8" id="5zpsdFy5CsZ" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuySQ" role="1HWFw0">
            <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
          </node>
          <node concept="3clFbS" id="5zpsdFy5Ct1" role="1HWHxc">
            <node concept="3cpWs8" id="5zpsdFy5Ct9" role="3cqZAp">
              <node concept="3cpWsn" id="5zpsdFy5Cta" role="3cpWs9">
                <property role="TrG5h" value="messages" />
                <node concept="_YKpA" id="5zpsdFy5Ctb" role="1tU5fm">
                  <node concept="3uibUv" id="5zpsdFy5Ctc" role="_ZDj9">
                    <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                  </node>
                </node>
                <node concept="3EllGN" id="5zpsdFy5Ctd" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmaPG" role="3ElVtu">
                    <ref role="3cqZAo" node="5zpsdFy5CsX" resolve="change" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeun94" role="3ElQJh">
                    <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5zpsdFy5Cti" role="3cqZAp">
              <node concept="3clFbS" id="5zpsdFy5Ctj" role="3clFbx">
                <node concept="3cpWs6" id="5zpsdFy5Ctr" role="3cqZAp">
                  <node concept="2ShNRf" id="5zpsdFy5Cu6" role="3cqZAk">
                    <node concept="Tc6Ow" id="5zpsdFy5Cu7" role="2ShVmc">
                      <node concept="3uibUv" id="5zpsdFy5Cu8" role="HW$YZ">
                        <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="5zpsdFy5Ct_" role="3clFbw">
                <node concept="2OqwBi" id="5zpsdFy5CtD" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTtCT" role="2Oq$k0">
                    <ref role="3cqZAo" node="5zpsdFy5Cta" resolve="messages" />
                  </node>
                  <node concept="2HwmR7" id="5zpsdFy5CtS" role="2OqNvi">
                    <node concept="1bVj0M" id="5zpsdFy5CtT" role="23t8la">
                      <node concept="3clFbS" id="5zpsdFy5CtU" role="1bW5cS">
                        <node concept="3clFbF" id="5zpsdFy5CtV" role="3cqZAp">
                          <node concept="3clFbC" id="5zpsdFy5Cu2" role="3clFbG">
                            <node concept="10Nm6u" id="5zpsdFy5Cu5" role="3uHU7w" />
                            <node concept="2OqwBi" id="5zpsdFy5CtW" role="3uHU7B">
                              <node concept="37vLTw" id="2BHiRxgmP2e" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XL2" resolve="m" />
                              </node>
                              <node concept="liA8E" id="5zpsdFy5Cu1" role="2OqNvi">
                                <ref role="37wK5l" to="exr9:~DefaultEditorMessage.getNode()" resolve="getNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XL2" role="1bW2Oz">
                        <property role="TrG5h" value="m" />
                        <node concept="2jxLKc" id="5W7E4fV0XL3" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="5zpsdFy5Ctt" role="3uHU7B">
                  <node concept="3clFbC" id="5zpsdFy5Ctn" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTt3l" role="3uHU7B">
                      <ref role="3cqZAo" node="5zpsdFy5Cta" resolve="messages" />
                    </node>
                    <node concept="10Nm6u" id="5zpsdFy5Ctq" role="3uHU7w" />
                  </node>
                  <node concept="3clFbC" id="5zpsdFy5Ctx" role="3uHU7w">
                    <node concept="1rXfSq" id="4hiugqyz8t5" role="3uHU7B">
                      <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
                    </node>
                    <node concept="10Nm6u" id="5zpsdFy5Ct$" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5zpsdFy5Cua" role="3cqZAp">
              <node concept="2OqwBi" id="5zpsdFy5Cuc" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeu_EV" role="2Oq$k0">
                  <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                </node>
                <node concept="kI3uX" id="5zpsdFy5Cug" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxghfQr" role="kIiFs">
                    <ref role="3cqZAo" node="5zpsdFy5CsX" resolve="change" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5zpsdFy5Cuk" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTsuZ" role="3cqZAk">
                <ref role="3cqZAo" node="5zpsdFy5Cta" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zpsdFy5CsX" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="5zpsdFy5CsY" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2S1Dx7NdLLy" role="jymVt" />
    <node concept="3clFb_" id="K9wxfKEGFs" role="jymVt">
      <property role="TrG5h" value="getMessages" />
      <node concept="3clFbS" id="K9wxfKEGFv" role="3clF47">
        <node concept="3cpWs8" id="2S1Dx7N9K2c" role="3cqZAp">
          <node concept="3cpWsn" id="2S1Dx7N9K2f" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="_YKpA" id="2S1Dx7N9K28" role="1tU5fm">
              <node concept="3uibUv" id="2S1Dx7N9Nds" role="_ZDj9">
                <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="K9wxfKEGFB" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvxd" role="1HWFw0">
            <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
          </node>
          <node concept="3clFbS" id="K9wxfKEGFD" role="1HWHxc">
            <node concept="3clFbF" id="2S1Dx7Ncivy" role="3cqZAp">
              <node concept="37vLTI" id="2S1Dx7NclzO" role="3clFbG">
                <node concept="37vLTw" id="2S1Dx7Ncivw" role="37vLTJ">
                  <ref role="3cqZAo" node="2S1Dx7N9K2f" resolve="messages" />
                </node>
                <node concept="3EllGN" id="2S1Dx7NcpOb" role="37vLTx">
                  <node concept="37vLTw" id="2S1Dx7NcpOc" role="3ElVtu">
                    <ref role="3cqZAo" node="K9wxfKEGFy" resolve="change" />
                  </node>
                  <node concept="37vLTw" id="2S1Dx7NcpOd" role="3ElQJh">
                    <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2S1Dx7Nc$Gz" role="3cqZAp">
          <node concept="3clFbS" id="2S1Dx7Nc$G_" role="3clFbx">
            <node concept="3cpWs6" id="2S1Dx7NcNxk" role="3cqZAp">
              <node concept="2YIFZM" id="2S1Dx7Nd1I7" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2S1Dx7NcGJ2" role="3clFbw">
            <node concept="10Nm6u" id="2S1Dx7NcKKu" role="3uHU7w" />
            <node concept="37vLTw" id="2S1Dx7NcCir" role="3uHU7B">
              <ref role="3cqZAo" node="2S1Dx7N9K2f" resolve="messages" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="71YcT_PDxJu" role="3cqZAp">
          <node concept="3cpWsn" id="71YcT_PDxJv" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="71YcT_PDxJw" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="71YcT_PDxJx" role="33vP2m">
              <node concept="2OqwBi" id="71YcT_PDxJy" role="2Oq$k0">
                <node concept="37vLTw" id="71YcT_PDxJz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
                </node>
                <node concept="liA8E" id="71YcT_PDxJ$" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                </node>
              </node>
              <node concept="liA8E" id="71YcT_PDxJ_" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="71YcT_PDxJA" role="3cqZAp">
          <node concept="2OqwBi" id="71YcT_PDxJB" role="3clFbG">
            <node concept="2OqwBi" id="71YcT_PDxJC" role="2Oq$k0">
              <node concept="37vLTw" id="71YcT_PDxJD" role="2Oq$k0">
                <ref role="3cqZAo" node="71YcT_PDxJv" resolve="repo" />
              </node>
              <node concept="liA8E" id="71YcT_PDxJE" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="71YcT_PDxJF" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="71YcT_PDxJG" role="37wK5m">
                <node concept="3clFbS" id="71YcT_PDxJH" role="1bW5cS">
                  <node concept="3clFbF" id="2S1Dx7NaDB2" role="3cqZAp">
                    <node concept="37vLTI" id="2S1Dx7NaI2r" role="3clFbG">
                      <node concept="37vLTw" id="2S1Dx7NaDB0" role="37vLTJ">
                        <ref role="3cqZAo" node="2S1Dx7N9K2f" resolve="messages" />
                      </node>
                      <node concept="2OqwBi" id="ReceyxRA5P" role="37vLTx">
                        <node concept="2OqwBi" id="2S1Dx7Nb1Us" role="2Oq$k0">
                          <node concept="3zZkjj" id="2S1Dx7Nb6x2" role="2OqNvi">
                            <node concept="1bVj0M" id="2S1Dx7Nb6x4" role="23t8la">
                              <node concept="3clFbS" id="2S1Dx7Nb6x5" role="1bW5cS">
                                <node concept="3clFbF" id="2S1Dx7Nbp8F" role="3cqZAp">
                                  <node concept="3fqX7Q" id="2S1Dx7NbGHR" role="3clFbG">
                                    <node concept="1rXfSq" id="2S1Dx7NbGHT" role="3fr31v">
                                      <ref role="37wK5l" node="2S1Dx7NbIO3" resolve="changeNodeIsDeleted" />
                                      <node concept="37vLTw" id="2S1Dx7NbGHU" role="37wK5m">
                                        <ref role="3cqZAo" node="5W7E4fV0XL4" resolve="m" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XL4" role="1bW2Oz">
                                <property role="TrG5h" value="m" />
                                <node concept="2jxLKc" id="5W7E4fV0XL5" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="2S1Dx7NdqrR" role="2Oq$k0">
                            <ref role="3cqZAo" node="2S1Dx7N9K2f" resolve="messages" />
                          </node>
                        </node>
                        <node concept="ANE8D" id="ReceyxREBp" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2S1Dx7NaRe8" role="3cqZAp">
          <node concept="37vLTw" id="2S1Dx7NaVmK" role="3cqZAk">
            <ref role="3cqZAo" node="2S1Dx7N9K2f" resolve="messages" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="K9wxfKEGFw" role="3clF45">
        <node concept="3uibUv" id="K9wxfKEGFx" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="37vLTG" id="K9wxfKEGFy" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="K9wxfKEGFz" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2S1Dx7Ndurl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="2S1Dx7NbyEQ" role="jymVt" />
    <node concept="2YIFZL" id="2S1Dx7NbIO3" role="jymVt">
      <property role="TrG5h" value="changeNodeIsDeleted" />
      <node concept="3clFbS" id="2S1Dx7NbIO5" role="3clF47">
        <node concept="3cpWs8" id="2S1Dx7NbIO6" role="3cqZAp">
          <node concept="3cpWsn" id="2S1Dx7NbIO7" role="3cpWs9">
            <property role="TrG5h" value="changeNode" />
            <node concept="3Tqbb2" id="2S1Dx7NbIO8" role="1tU5fm" />
            <node concept="2OqwBi" id="2S1Dx7NbIO9" role="33vP2m">
              <node concept="37vLTw" id="2S1Dx7NbIOa" role="2Oq$k0">
                <ref role="3cqZAo" node="2S1Dx7NbIOw" resolve="message" />
              </node>
              <node concept="liA8E" id="2S1Dx7NbIOb" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~DefaultEditorMessage.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2S1Dx7NbIOc" role="3cqZAp">
          <node concept="22lmx$" id="2S1Dx7NbIOd" role="3cqZAk">
            <node concept="3clFbC" id="2S1Dx7NbIOe" role="3uHU7B">
              <node concept="2OqwBi" id="2S1Dx7NbIOf" role="3uHU7B">
                <node concept="37vLTw" id="2S1Dx7NbIOg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2S1Dx7NbIO7" resolve="changeNode" />
                </node>
                <node concept="I4A8Y" id="2S1Dx7NbIOh" role="2OqNvi" />
              </node>
              <node concept="10Nm6u" id="2S1Dx7NbIOi" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="2S1Dx7NbIOj" role="3uHU7w">
              <node concept="2OqwBi" id="2S1Dx7NbIOk" role="3uHU7B">
                <node concept="liA8E" id="2S1Dx7NbIOl" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                  <node concept="2OqwBi" id="2S1Dx7NbIOm" role="37wK5m">
                    <node concept="liA8E" id="2S1Dx7NbIOn" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="2S1Dx7NbIOo" role="2Oq$k0">
                      <node concept="37vLTw" id="2S1Dx7NbIOp" role="2JrQYb">
                        <ref role="3cqZAo" node="2S1Dx7NbIO7" resolve="changeNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2JrnkZ" id="2S1Dx7NbIOq" role="2Oq$k0">
                  <node concept="2OqwBi" id="2S1Dx7NbIOr" role="2JrQYb">
                    <node concept="37vLTw" id="2S1Dx7NbIOs" role="2Oq$k0">
                      <ref role="3cqZAo" node="2S1Dx7NbIO7" resolve="changeNode" />
                    </node>
                    <node concept="I4A8Y" id="2S1Dx7NbIOt" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2S1Dx7NbIOu" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2S1Dx7NbIOv" role="3clF45" />
      <node concept="37vLTG" id="2S1Dx7NbIOw" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="2S1Dx7NbIOx" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2S1Dx7NbIOy" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2S1Dx7NbA6u" role="jymVt" />
    <node concept="3clFb_" id="5zpsdFy5Cun" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="5zpsdFy5Cuo" role="3clF45" />
      <node concept="3Tm1VV" id="5zpsdFy5Cup" role="1B3o_S" />
      <node concept="3clFbS" id="5zpsdFy5Cuq" role="3clF47">
        <node concept="1HWtB8" id="1KUoCipvxIi" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukF4" role="1HWFw0">
            <ref role="3cqZAo" node="5zpsdFy5CaN" resolve="myDisposedLock" />
          </node>
          <node concept="3clFbS" id="1KUoCipvxIk" role="1HWHxc">
            <node concept="3clFbF" id="1KUoCipvxIl" role="3cqZAp">
              <node concept="37vLTI" id="1KUoCipvxIm" role="3clFbG">
                <node concept="3clFbT" id="1KUoCipvxIn" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="2BHiRxeujY8" role="37vLTJ">
                  <ref role="3cqZAo" node="5zpsdFy5CaT" resolve="myDisposed" />
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="1KUoCipvxIp" role="3cqZAp">
              <node concept="3clFbS" id="1KUoCipvxIq" role="1zxBo7">
                <node concept="1HWtB8" id="1KUoCipvxIr" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxeumwo" role="1HWFw0">
                    <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                  </node>
                  <node concept="3clFbS" id="1KUoCipvxIt" role="1HWHxc">
                    <node concept="3clFbF" id="1KUoCipvxIu" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCipvxIv" role="3clFbG">
                        <node concept="2OqwBi" id="1KUoCipvxIw" role="2Oq$k0">
                          <node concept="2OqwBi" id="1KUoCipvxIx" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxeuRRs" role="2Oq$k0">
                              <ref role="3cqZAo" node="9ee6OG4zHS" resolve="myChangesMessages" />
                            </node>
                            <node concept="3lbrtF" id="1KUoCipvxIz" role="2OqNvi" />
                          </node>
                          <node concept="ANE8D" id="1KUoCipvxI$" role="2OqNvi" />
                        </node>
                        <node concept="2es0OD" id="1KUoCipvxI_" role="2OqNvi">
                          <node concept="1bVj0M" id="1KUoCipvxIA" role="23t8la">
                            <node concept="3clFbS" id="1KUoCipvxIB" role="1bW5cS">
                              <node concept="3clFbF" id="1KUoCipvxIC" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyzew0" role="3clFbG">
                                  <ref role="37wK5l" node="5zpsdFy5CsP" resolve="removeMessages" />
                                  <node concept="37vLTw" id="2BHiRxgmv92" role="37wK5m">
                                    <ref role="3cqZAo" node="5W7E4fV0XL6" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XL6" role="1bW2Oz">
                              <property role="TrG5h" value="ch" />
                              <node concept="2jxLKc" id="5W7E4fV0XL7" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1KUoCipvxIH" role="3cqZAp">
                  <node concept="2OqwBi" id="1KUoCipvxII" role="3clFbG">
                    <node concept="1rXfSq" id="4hiugqyzkrq" role="2Oq$k0">
                      <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
                    </node>
                    <node concept="liA8E" id="1KUoCipvxIK" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~NodeHighlightManager.clearForOwner(jetbrains.mps.openapi.editor.message.EditorMessageOwner)" resolve="clearForOwner" />
                      <node concept="Xjq3P" id="1KUoCipvxIL" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1KUoCipvxIM" role="3cqZAp">
                  <node concept="3clFbS" id="1KUoCipvxIN" role="3clFbx">
                    <node concept="3clFbF" id="1KUoCipvxIO" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCipvxIP" role="3clFbG">
                        <node concept="1rXfSq" id="4hiugqyyKwC" role="2Oq$k0">
                          <ref role="37wK5l" node="K9wxfKEE_l" resolve="getLeftEditorHighlighter" />
                        </node>
                        <node concept="liA8E" id="1KUoCipvxIR" role="2OqNvi">
                          <ref role="37wK5l" to="px75:~LeftEditorHighlighter.removeFoldingAreaPainter(jetbrains.mps.nodeEditor.leftHighlighter.AbstractFoldingAreaPainter)" resolve="removeFoldingAreaPainter" />
                          <node concept="37vLTw" id="2BHiRxeuKqF" role="37wK5m">
                            <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1KUoCipvxIT" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCipvxIU" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxeuTxe" role="2Oq$k0">
                          <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                        </node>
                        <node concept="liA8E" id="1KUoCipvxIW" role="2OqNvi">
                          <ref role="37wK5l" node="76itSV98wRQ" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1KUoCipvxIX" role="3clFbw">
                    <node concept="10Nm6u" id="1KUoCipvxIY" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeuss6" role="3uHU7B">
                      <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1wplmZ" id="xvs04dIpjp" role="1zxBo6">
                <node concept="3clFbS" id="1KUoCipvxJ0" role="1wplMD">
                  <node concept="3clFbJ" id="1KUoCipvxJ1" role="3cqZAp">
                    <node concept="3y3z36" id="1KUoCipvxJ2" role="3clFbw">
                      <node concept="10Nm6u" id="1KUoCipvxJ3" role="3uHU7w" />
                      <node concept="37vLTw" id="2BHiRxeuog1" role="3uHU7B">
                        <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1KUoCipvxJ5" role="3clFbx">
                      <node concept="3clFbF" id="1KUoCipvxJ6" role="3cqZAp">
                        <node concept="2OqwBi" id="1KUoCipvxJ7" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxeu_GC" role="2Oq$k0">
                            <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
                          </node>
                          <node concept="liA8E" id="1KUoCipvxJ9" role="2OqNvi">
                            <ref role="37wK5l" to="lcr:2JwSLRbziNe" resolve="removeDifferenceListener" />
                            <node concept="37vLTw" id="2BHiRxeudHu" role="37wK5m">
                              <ref role="3cqZAo" node="5zpsdFy5B1y" resolve="myListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1KUoCipvxJb" role="3cqZAp">
                        <node concept="37vLTI" id="1KUoCipvxJc" role="3clFbG">
                          <node concept="10Nm6u" id="1KUoCipvxJd" role="37vLTx" />
                          <node concept="37vLTw" id="2BHiRxeugcX" role="37vLTJ">
                            <ref role="3cqZAo" node="5zpsdFy5B1y" resolve="myListener" />
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
    <node concept="3clFb_" id="K9wxfKET20" role="jymVt">
      <property role="TrG5h" value="getChangeSet" />
      <node concept="3uibUv" id="K9wxfKET24" role="3clF45">
        <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
      </node>
      <node concept="3clFbS" id="K9wxfKET23" role="3clF47">
        <node concept="3clFbF" id="K9wxfKET25" role="3cqZAp">
          <node concept="2EnYce" id="7ZCwmdu7S1E" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeurr5" role="2Oq$k0">
              <ref role="3cqZAo" node="5zpsdFy5Cb0" resolve="myCurrentDifference" />
            </node>
            <node concept="liA8E" id="K9wxfKET2b" role="2OqNvi">
              <ref role="37wK5l" to="lcr:2JwSLRbzn5Q" resolve="getChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="K9wxfKET2d" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="1LVXsqEggho" role="jymVt">
      <property role="TrG5h" value="getStripsPainter" />
      <node concept="3uibUv" id="1LVXsqEgghs" role="3clF45">
        <ref role="3uigEE" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
      </node>
      <node concept="3clFbS" id="1LVXsqEgghr" role="3clF47">
        <node concept="3clFbF" id="1LVXsqEgght" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuRQU" role="3clFbG">
            <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEGFa" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <node concept="3clFbS" id="K9wxfKEGFb" role="3clF47">
        <node concept="3clFbF" id="K9wxfKEGFc" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuvz5" role="3clFbG">
            <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="K9wxfKEGFh" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="5zpsdFy5CrA" role="jymVt">
      <property role="TrG5h" value="getHighlightManager" />
      <node concept="3clFbS" id="5zpsdFy5CrD" role="3clF47">
        <node concept="3clFbF" id="5zpsdFy5CrF" role="3cqZAp">
          <node concept="2OqwBi" id="5zpsdFy5CrH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeus6o" role="2Oq$k0">
              <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
            </node>
            <node concept="liA8E" id="5zpsdFy5CrL" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getHighlightManager()" resolve="getHighlightManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5zpsdFy5CrE" role="3clF45">
        <ref role="3uigEE" to="exr9:~NodeHighlightManager" resolve="NodeHighlightManager" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEE_l" role="jymVt">
      <property role="TrG5h" value="getLeftEditorHighlighter" />
      <node concept="3uibUv" id="K9wxfKEE_p" role="3clF45">
        <ref role="3uigEE" to="px75:~LeftEditorHighlighter" resolve="LeftEditorHighlighter" />
      </node>
      <node concept="3clFbS" id="K9wxfKEE_o" role="3clF47">
        <node concept="3clFbF" id="K9wxfKEE_q" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKEE_s" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuRPj" role="2Oq$k0">
              <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
            </node>
            <node concept="liA8E" id="K9wxfKEF8_" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.getLeftEditorHighlighter()" resolve="getLeftEditorHighlighter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4henvQNwh7l" role="jymVt" />
    <node concept="312cEu" id="5zpsdFy5Cb9" role="jymVt">
      <property role="TrG5h" value="MyCurrentDifferenceListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="5zpsdFy5Cba" role="1B3o_S" />
      <node concept="3uibUv" id="5zpsdFy5Cbf" role="1zkMxy">
        <ref role="3uigEE" to="lcr:5R2TaPUKrqT" resolve="CurrentDifferenceAdapter" />
      </node>
      <node concept="312cEg" id="v7AJWA4buN" role="jymVt">
        <property role="TrG5h" value="myAddedMessages" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="v7AJWA4buO" role="1B3o_S" />
        <node concept="_YKpA" id="v7AJWA4bX_" role="1tU5fm">
          <node concept="3uibUv" id="v7AJWA4bXB" role="_ZDj9">
            <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
          </node>
        </node>
        <node concept="2ShNRf" id="v7AJWA4bXD" role="33vP2m">
          <node concept="Tc6Ow" id="v7AJWA4bXE" role="2ShVmc">
            <node concept="3uibUv" id="v7AJWA4bXF" role="HW$YZ">
              <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="v7AJWA4bXG" role="jymVt">
        <property role="TrG5h" value="myRemovedMessages" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="v7AJWA4bXH" role="1B3o_S" />
        <node concept="_YKpA" id="v7AJWA4bXI" role="1tU5fm">
          <node concept="3uibUv" id="v7AJWA4bXJ" role="_ZDj9">
            <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
          </node>
        </node>
        <node concept="2ShNRf" id="v7AJWA4bXK" role="33vP2m">
          <node concept="Tc6Ow" id="v7AJWA4bXL" role="2ShVmc">
            <node concept="3uibUv" id="v7AJWA4bXM" role="HW$YZ">
              <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4henvQNwh5i" role="jymVt" />
      <node concept="3clFbW" id="5zpsdFy5Cbb" role="jymVt">
        <node concept="3cqZAl" id="5zpsdFy5Cbc" role="3clF45" />
        <node concept="3Tm1VV" id="5zpsdFy5Cbd" role="1B3o_S" />
        <node concept="3clFbS" id="5zpsdFy5Cbe" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="4henvQNwh3e" role="jymVt" />
      <node concept="3clFb_" id="3Mnkyd_$E83" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeAdded" />
        <node concept="3cqZAl" id="3Mnkyd_$E84" role="3clF45" />
        <node concept="3Tm1VV" id="3Mnkyd_$E85" role="1B3o_S" />
        <node concept="37vLTG" id="3Mnkyd_$E86" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="v7AJWA4bXN" role="1tU5fm">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="2AHcQZ" id="f7MobKgjZU" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="3Mnkyd_$E88" role="3clF47">
          <node concept="3cpWs8" id="v7AJWA4bXU" role="3cqZAp">
            <node concept="3cpWsn" id="v7AJWA4bXV" role="3cpWs9">
              <property role="TrG5h" value="messages" />
              <node concept="_YKpA" id="v7AJWA4bXW" role="1tU5fm">
                <node concept="3uibUv" id="v7AJWA4bXX" role="_ZDj9">
                  <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyWdz" role="33vP2m">
                <ref role="37wK5l" node="5zpsdFy5Cpg" resolve="createMessages" />
                <node concept="37vLTw" id="2BHiRxgmG5T" role="37wK5m">
                  <ref role="3cqZAo" node="3Mnkyd_$E86" resolve="change" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Ny5pAszB4s" role="3cqZAp">
            <node concept="2OqwBi" id="Ny5pAszB4w" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeudFL" role="2Oq$k0">
                <ref role="3cqZAo" node="v7AJWA4bXG" resolve="myRemovedMessages" />
              </node>
              <node concept="1kEaZ2" id="v7AJWA4bY1" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTBem" role="25WWJ7">
                  <ref role="3cqZAo" node="v7AJWA4bXV" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="PH5JSZXqdO" role="3cqZAp">
            <node concept="2OqwBi" id="7MduFaKE7bw" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeui1B" role="2Oq$k0">
                <ref role="3cqZAo" node="v7AJWA4buN" resolve="myAddedMessages" />
              </node>
              <node concept="X8dFx" id="v7AJWA4bY4" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTyUv" role="25WWJ7">
                  <ref role="3cqZAo" node="v7AJWA4bXV" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_GK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4henvQNwh3f" role="jymVt" />
      <node concept="3clFb_" id="3Mnkyd_$E8j" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeRemoved" />
        <node concept="3cqZAl" id="3Mnkyd_$E8k" role="3clF45" />
        <node concept="3Tm1VV" id="3Mnkyd_$E8l" role="1B3o_S" />
        <node concept="37vLTG" id="3Mnkyd_$E8m" role="3clF46">
          <property role="TrG5h" value="change" />
          <node concept="3uibUv" id="v7AJWA4bXO" role="1tU5fm">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
          <node concept="2AHcQZ" id="f7MobKgjZW" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="3Mnkyd_$E8o" role="3clF47">
          <node concept="3cpWs8" id="v7AJWA4bY7" role="3cqZAp">
            <node concept="3cpWsn" id="v7AJWA4bY8" role="3cpWs9">
              <property role="TrG5h" value="messages" />
              <node concept="_YKpA" id="v7AJWA4bY9" role="1tU5fm">
                <node concept="3uibUv" id="v7AJWA4bYa" role="_ZDj9">
                  <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                </node>
              </node>
              <node concept="1rXfSq" id="4hiugqyyKvc" role="33vP2m">
                <ref role="37wK5l" node="5zpsdFy5CsP" resolve="removeMessages" />
                <node concept="37vLTw" id="2BHiRxgm9hw" role="37wK5m">
                  <ref role="3cqZAo" node="3Mnkyd_$E8m" resolve="change" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="v7AJWA4bYd" role="3cqZAp">
            <node concept="2OqwBi" id="v7AJWA4bYe" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuDQZ" role="2Oq$k0">
                <ref role="3cqZAo" node="v7AJWA4bXG" resolve="myRemovedMessages" />
              </node>
              <node concept="X8dFx" id="v7AJWA4bYn" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagT_xe" role="25WWJ7">
                  <ref role="3cqZAo" node="v7AJWA4bY8" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="v7AJWA4bYi" role="3cqZAp">
            <node concept="2OqwBi" id="v7AJWA4bYj" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeul7C" role="2Oq$k0">
                <ref role="3cqZAo" node="v7AJWA4buN" resolve="myAddedMessages" />
              </node>
              <node concept="1kEaZ2" id="v7AJWA4bYp" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTBNb" role="25WWJ7">
                  <ref role="3cqZAo" node="v7AJWA4bY8" resolve="messages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_GL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4henvQNwh3g" role="jymVt" />
      <node concept="3clFb_" id="v7AJWA4bYr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="changeUpdateFinished" />
        <node concept="3cqZAl" id="v7AJWA4bYs" role="3clF45" />
        <node concept="3Tm1VV" id="v7AJWA4bYt" role="1B3o_S" />
        <node concept="3clFbS" id="v7AJWA4bYu" role="3clF47">
          <node concept="3clFbJ" id="5f5LHA4If5z" role="3cqZAp">
            <node concept="3clFbS" id="5f5LHA4If5_" role="3clFbx">
              <node concept="3cpWs6" id="5f5LHA4IhlE" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="5f5LHA4Ig5R" role="3clFbw">
              <node concept="37vLTw" id="5f5LHA4IfGJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5zpsdFy5B1v" resolve="myEditorComponent" />
              </node>
              <node concept="liA8E" id="5f5LHA4IgNT" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.isDisposed()" resolve="isDisposed" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="PH5JSZXqnk" role="3cqZAp">
            <node concept="3clFbS" id="PH5JSZXqnl" role="3clFbx">
              <node concept="3cpWs8" id="7MduFaKE7d0" role="3cqZAp">
                <node concept="3cpWsn" id="7MduFaKE7d1" role="3cpWs9">
                  <property role="TrG5h" value="nodeHighlightManager" />
                  <node concept="3uibUv" id="7MduFaKE7d2" role="1tU5fm">
                    <ref role="3uigEE" to="exr9:~NodeHighlightManager" resolve="NodeHighlightManager" />
                  </node>
                  <node concept="1rXfSq" id="4hiugqyzcMm" role="33vP2m">
                    <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="PH5JSZXqyg" role="3cqZAp">
                <node concept="2GrKxI" id="PH5JSZXqyh" role="2Gsz3X">
                  <property role="TrG5h" value="removedMessage" />
                </node>
                <node concept="37vLTw" id="2BHiRxeudBc" role="2GsD0m">
                  <ref role="3cqZAo" node="v7AJWA4bXG" resolve="myRemovedMessages" />
                </node>
                <node concept="3clFbS" id="PH5JSZXqyl" role="2LFqv$">
                  <node concept="3clFbF" id="PH5JSZXqBy" role="3cqZAp">
                    <node concept="2OqwBi" id="PH5JSZXrQh" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTAdn" role="2Oq$k0">
                        <ref role="3cqZAo" node="7MduFaKE7d1" resolve="nodeHighlightManager" />
                      </node>
                      <node concept="liA8E" id="PH5JSZXrZ0" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~NodeHighlightManager.unmark(jetbrains.mps.openapi.editor.message.SimpleEditorMessage)" resolve="unmark" />
                        <node concept="2GrUjf" id="PH5JSZXs17" role="37wK5m">
                          <ref role="2Gs0qQ" node="PH5JSZXqyh" resolve="removedMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="PH5JSZXqyr" role="3cqZAp">
                <node concept="2GrKxI" id="PH5JSZXqys" role="2Gsz3X">
                  <property role="TrG5h" value="addedMessage" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuVfB" role="2GsD0m">
                  <ref role="3cqZAo" node="v7AJWA4buN" resolve="myAddedMessages" />
                </node>
                <node concept="3clFbS" id="PH5JSZXqyw" role="2LFqv$">
                  <node concept="3clFbF" id="PH5JSZXs5p" role="3cqZAp">
                    <node concept="2OqwBi" id="PH5JSZXs93" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagT$SN" role="2Oq$k0">
                        <ref role="3cqZAo" node="7MduFaKE7d1" resolve="nodeHighlightManager" />
                      </node>
                      <node concept="liA8E" id="PH5JSZXs9O" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~NodeHighlightManager.mark(jetbrains.mps.openapi.editor.message.SimpleEditorMessage)" resolve="mark" />
                        <node concept="2GrUjf" id="PH5JSZXsgb" role="37wK5m">
                          <ref role="2Gs0qQ" node="PH5JSZXqys" resolve="addedMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7FLRXY0Gpg8" role="3cqZAp">
                <node concept="2EnYce" id="6fAJOxHSlUO" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeumNw" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKEU8Z" resolve="myStripsPainter" />
                  </node>
                  <node concept="liA8E" id="7FLRXY0GpkL" role="2OqNvi">
                    <ref role="37wK5l" node="K9wxfKEv2W" resolve="relayout" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="PH5JSZXskw" role="3cqZAp">
                <node concept="2OqwBi" id="PH5JSZXsoa" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagT_QI" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MduFaKE7d1" resolve="nodeHighlightManager" />
                  </node>
                  <node concept="liA8E" id="PH5JSZXsoV" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~NodeHighlightManager.repaintAndRebuildEditorMessages()" resolve="repaintAndRebuildEditorMessages" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2269xq9AZg4" role="3cqZAp">
                <node concept="2OqwBi" id="7MduFaKE7bB" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuG_G" role="2Oq$k0">
                    <ref role="3cqZAo" node="v7AJWA4buN" resolve="myAddedMessages" />
                  </node>
                  <node concept="2Kehj3" id="7MduFaKE7bF" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="2269xq9AZfW" role="3cqZAp">
                <node concept="2OqwBi" id="7MduFaKE7bG" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuvMT" role="2Oq$k0">
                    <ref role="3cqZAo" node="v7AJWA4bXG" resolve="myRemovedMessages" />
                  </node>
                  <node concept="2Kehj3" id="7MduFaKE7bK" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="PH5JSZXqt8" role="3clFbw">
              <node concept="3fqX7Q" id="PH5JSZXqtS" role="3uHU7w">
                <node concept="2OqwBi" id="2n8eZQFdJ9b" role="3fr31v">
                  <node concept="37vLTw" id="2BHiRxeuwyQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="v7AJWA4bXG" resolve="myRemovedMessages" />
                  </node>
                  <node concept="1v1jN8" id="2n8eZQFdJ9f" role="2OqNvi" />
                </node>
              </node>
              <node concept="3fqX7Q" id="PH5JSZXqsp" role="3uHU7B">
                <node concept="2OqwBi" id="2n8eZQFdJ96" role="3fr31v">
                  <node concept="37vLTw" id="2BHiRxeuE0R" role="2Oq$k0">
                    <ref role="3cqZAo" node="v7AJWA4buN" resolve="myAddedMessages" />
                  </node>
                  <node concept="1v1jN8" id="2n8eZQFdJ9a" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="v7AJWA4bYv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="K9wxfKEuYQ">
    <property role="TrG5h" value="ChangeStripsPainter" />
    <property role="3GE5qa" value="" />
    <node concept="3Tm1VV" id="K9wxfKEuZi" role="1B3o_S" />
    <node concept="3uibUv" id="K9wxfKEuZj" role="1zkMxy">
      <ref role="3uigEE" to="px75:~AbstractFoldingAreaPainter" resolve="AbstractFoldingAreaPainter" />
    </node>
    <node concept="Wx3nA" id="K9wxfKEuYR" role="jymVt">
      <property role="TrG5h" value="AREA_WIDTH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="K9wxfKEuYS" role="1B3o_S" />
      <node concept="10Oyi0" id="K9wxfKEuYT" role="1tU5fm" />
      <node concept="3cmrfG" id="K9wxfKEuYU" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="K9wxfKEuYV" role="jymVt">
      <property role="TrG5h" value="ARROW_HEIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="K9wxfKEuYW" role="1B3o_S" />
      <node concept="10Oyi0" id="K9wxfKEuYX" role="1tU5fm" />
      <node concept="3cmrfG" id="K9wxfKEuYY" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="312cEg" id="K9wxfKEuYZ" role="jymVt">
      <property role="TrG5h" value="myEditorHighlighter" />
      <node concept="3Tm6S6" id="K9wxfKEuZ0" role="1B3o_S" />
      <node concept="3uibUv" id="K9wxfKEvO9" role="1tU5fm">
        <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
      </node>
    </node>
    <node concept="312cEg" id="K9wxfKEF8A" role="jymVt">
      <property role="TrG5h" value="myChangeGroupLayout" />
      <node concept="3Tm6S6" id="K9wxfKEF8B" role="1B3o_S" />
      <node concept="3uibUv" id="K9wxfKEF8D" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
      </node>
    </node>
    <node concept="312cEg" id="29gu5uHWtpC" role="jymVt">
      <property role="TrG5h" value="myGroupUnderMouse" />
      <node concept="3Tm6S6" id="29gu5uHWtpD" role="1B3o_S" />
      <node concept="3uibUv" id="29gu5uHWtpF" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
    </node>
    <node concept="312cEg" id="2vWZukgxAKo" role="jymVt">
      <property role="TrG5h" value="myPopupToolbar" />
      <node concept="3Tm6S6" id="2vWZukgxAKp" role="1B3o_S" />
      <node concept="3uibUv" id="2vWZukgxAKr" role="1tU5fm">
        <ref role="3uigEE" node="2vWZukgxAEo" resolve="PopupPanel" />
      </node>
      <node concept="10Nm6u" id="2vWZukgxAKt" role="33vP2m" />
    </node>
    <node concept="312cEg" id="76itSV98wS9" role="jymVt">
      <property role="TrG5h" value="myGroupMessages" />
      <node concept="3Tm6S6" id="76itSV98wSa" role="1B3o_S" />
      <node concept="3uibUv" id="76itSV98wSb" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:D356mG1l9K" resolve="ChangeGroupMessages" />
      </node>
    </node>
    <node concept="3clFbW" id="K9wxfKEv35" role="jymVt">
      <node concept="3cqZAl" id="K9wxfKEv36" role="3clF45" />
      <node concept="3Tm1VV" id="K9wxfKEv37" role="1B3o_S" />
      <node concept="3clFbS" id="K9wxfKEv38" role="3clF47">
        <node concept="XkiVB" id="K9wxfKEv39" role="3cqZAp">
          <ref role="37wK5l" to="px75:~AbstractFoldingAreaPainter.&lt;init&gt;(jetbrains.mps.nodeEditor.leftHighlighter.LeftEditorHighlighter)" resolve="AbstractFoldingAreaPainter" />
          <node concept="2OqwBi" id="K9wxfKEv3a" role="37wK5m">
            <node concept="37vLTw" id="2BHiRxglEs8" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEv3j" resolve="editorHighlighter" />
            </node>
            <node concept="liA8E" id="K9wxfKEv3e" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEE_l" resolve="getLeftEditorHighlighter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K9wxfKEv3f" role="3cqZAp">
          <node concept="37vLTI" id="K9wxfKEv3g" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMg0" role="37vLTJ">
              <ref role="3cqZAo" node="K9wxfKEuYZ" resolve="myEditorHighlighter" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm7vT" role="37vLTx">
              <ref role="3cqZAo" node="K9wxfKEv3j" resolve="editorHighlighter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K9wxfKEF8F" role="3cqZAp">
          <node concept="37vLTI" id="K9wxfKEF8H" role="3clFbG">
            <node concept="2ShNRf" id="K9wxfKEF8K" role="37vLTx">
              <node concept="1pGfFk" id="K9wxfKETKh" role="2ShVmc">
                <ref role="37wK5l" node="K9wxfKET0z" resolve="StripsChangeGroupLayout" />
                <node concept="37vLTw" id="2BHiRxeulwc" role="37wK5m">
                  <ref role="3cqZAo" node="K9wxfKEuYZ" resolve="myEditorHighlighter" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeulbb" role="37vLTJ">
              <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76itSV98wSc" role="3cqZAp">
          <node concept="37vLTI" id="76itSV98wSd" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeusrG" role="37vLTJ">
              <ref role="3cqZAo" node="76itSV98wS9" resolve="myGroupMessages" />
            </node>
            <node concept="2ShNRf" id="76itSV98wSh" role="37vLTx">
              <node concept="1pGfFk" id="76itSV98wSi" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:D356mG1lCH" resolve="ChangeGroupMessages" />
                <node concept="37vLTw" id="2BHiRxeuL6n" role="37wK5m">
                  <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
                </node>
                <node concept="3clFbT" id="76itSV98wSk" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="K9wxfKEv3j" role="3clF46">
        <property role="TrG5h" value="editorHighlighter" />
        <node concept="3uibUv" id="K9wxfKEE_k" role="1tU5fm">
          <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
        </node>
        <node concept="2AHcQZ" id="K9wxfKEv3l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2vWZukgxAK2" role="jymVt">
      <property role="TrG5h" value="getEditorComponent" />
      <node concept="3uibUv" id="2vWZukgxAK6" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3clFbS" id="2vWZukgxAK5" role="3clF47">
        <node concept="3clFbF" id="7Y3dZoOnT_h" role="3cqZAp">
          <node concept="3nyPlj" id="7Y3dZoOnT_i" role="3clFbG">
            <ref role="37wK5l" to="px75:~AbstractHighlighterPainter.getEditorComponent()" resolve="getEditorComponent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2vWZukgxAKe" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tmbuc" id="1LVXsqEfN5K" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_S6te" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEuZk" role="jymVt">
      <property role="TrG5h" value="getWeight" />
      <node concept="3Tm1VV" id="K9wxfKEuZl" role="1B3o_S" />
      <node concept="10Oyi0" id="K9wxfKEuZm" role="3clF45" />
      <node concept="3clFbS" id="K9wxfKEuZn" role="3clF47">
        <node concept="3cpWs6" id="K9wxfKEuZo" role="3cqZAp">
          <node concept="3cmrfG" id="K9wxfKEuZp" role="3cqZAk">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6td" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEuZq" role="jymVt">
      <property role="TrG5h" value="paintInLocalCoordinates" />
      <node concept="3Tmbuc" id="K9wxfKEuZr" role="1B3o_S" />
      <node concept="3cqZAl" id="K9wxfKEuZs" role="3clF45" />
      <node concept="37vLTG" id="K9wxfKEuZt" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="K9wxfKEuZu" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3clFbS" id="K9wxfKEuZv" role="3clF47">
        <node concept="3cpWs8" id="K9wxfKEuZB" role="3cqZAp">
          <node concept="3cpWsn" id="K9wxfKEuZC" role="3cpWs9">
            <property role="TrG5h" value="clipBounds" />
            <node concept="3uibUv" id="K9wxfKEuZD" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2OqwBi" id="K9wxfKEuZE" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm6E_" role="2Oq$k0">
                <ref role="3cqZAo" node="K9wxfKEuZt" resolve="g" />
              </node>
              <node concept="liA8E" id="K9wxfKEuZG" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.getClipBounds()" resolve="getClipBounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="K9wxfKEuZH" role="3cqZAp">
          <node concept="3clFbS" id="K9wxfKEuZI" role="3clFbx">
            <node concept="3cpWs6" id="K9wxfKEuZJ" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="K9wxfKEuZK" role="3clFbw">
            <node concept="3eOVzh" id="K9wxfKEuZL" role="3uHU7w">
              <node concept="2OqwBi" id="K9wxfKEuZM" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTuJw" role="2Oq$k0">
                  <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                </node>
                <node concept="2OwXpG" id="K9wxfKEuZO" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                </node>
              </node>
              <node concept="3cmrfG" id="K9wxfKEuZP" role="3uHU7B">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="K9wxfKEuZQ" role="3uHU7B">
              <node concept="3cpWs3" id="K9wxfKEuZR" role="3uHU7B">
                <node concept="2OqwBi" id="K9wxfKEuZS" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTvia" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                  </node>
                  <node concept="2OwXpG" id="K9wxfKEuZU" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="K9wxfKEuZV" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTs4s" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                  </node>
                  <node concept="2OwXpG" id="K9wxfKEuZX" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsd" id="K9wxfKEuZY" role="3uHU7w">
                <node concept="1ZRNhn" id="K9wxfKEuZZ" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxeoh9_" role="2$L3a6">
                    <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                  </node>
                </node>
                <node concept="3cmrfG" id="K9wxfKEv01" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="K9wxfKEv02" role="3cqZAp">
          <node concept="2GrKxI" id="K9wxfKEv03" role="2Gsz3X">
            <property role="TrG5h" value="changeGroup" />
          </node>
          <node concept="2OqwBi" id="K9wxfKETKl" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxeuk19" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
            </node>
            <node concept="liA8E" id="K9wxfKETKp" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHan9" resolve="getChangeGroups" />
            </node>
          </node>
          <node concept="3clFbS" id="K9wxfKEv05" role="2LFqv$">
            <node concept="3cpWs8" id="K9wxfKETKH" role="3cqZAp">
              <node concept="3cpWsn" id="K9wxfKETKI" role="3cpWs9">
                <property role="TrG5h" value="bounds" />
                <node concept="2pR195" id="K9wxfKETKJ" role="1tU5fm">
                  <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
                </node>
                <node concept="2OqwBi" id="K9wxfKETKK" role="33vP2m">
                  <node concept="2GrUjf" id="K9wxfKETKL" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="K9wxfKEv03" resolve="changeGroup" />
                  </node>
                  <node concept="liA8E" id="K9wxfKETKM" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                    <node concept="3clFbT" id="K9wxfKETKN" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="K9wxfKEv06" role="3cqZAp">
              <node concept="3cpWsn" id="K9wxfKEv07" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10Oyi0" id="K9wxfKEv08" role="1tU5fm" />
                <node concept="2OqwBi" id="K9wxfKETKq" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTAHW" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKETKI" resolve="bounds" />
                  </node>
                  <node concept="2sxana" id="K9wxfKETKu" role="2OqNvi">
                    <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="K9wxfKEv0c" role="3cqZAp">
              <node concept="2OqwBi" id="K9wxfKEv0d" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgl7jb" role="2Oq$k0">
                  <ref role="3cqZAo" node="K9wxfKEuZt" resolve="g" />
                </node>
                <node concept="liA8E" id="K9wxfKEv0f" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="2OqwBi" id="7dUqWL4oTvR" role="37wK5m">
                    <node concept="2YIFZM" id="7dUqWL4oS1d" role="2Oq$k0">
                      <ref role="37wK5l" to="hdhb:3$C2wb7p0AM" resolve="getInstance" />
                      <ref role="1Pybhc" to="hdhb:42hl10VH9R2" resolve="ChangeColors" />
                    </node>
                    <node concept="liA8E" id="7dUqWL4oU3k" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:3$C2wb7p4kP" resolve="getGutterColor" />
                      <node concept="2OqwBi" id="7dUqWL4oS1e" role="37wK5m">
                        <node concept="2GrUjf" id="7dUqWL4oS1f" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="K9wxfKEv03" resolve="changeGroup" />
                        </node>
                        <node concept="liA8E" id="7dUqWL4oS1g" role="2OqNvi">
                          <ref role="37wK5l" to="hdhb:42hl10VHagR" resolve="getChangeType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="K9wxfKEv0j" role="3cqZAp">
              <node concept="3clFbS" id="K9wxfKEv0k" role="3clFbx">
                <node concept="3cpWs8" id="K9wxfKEv0l" role="3cqZAp">
                  <node concept="3cpWsn" id="K9wxfKEv0m" role="3cpWs9">
                    <property role="TrG5h" value="g2d" />
                    <node concept="3uibUv" id="K9wxfKEv0n" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                    </node>
                    <node concept="1eOMI4" id="K9wxfKEv0o" role="33vP2m">
                      <node concept="10QFUN" id="K9wxfKEv0p" role="1eOMHV">
                        <node concept="37vLTw" id="2BHiRxgmFm4" role="10QFUP">
                          <ref role="3cqZAo" node="K9wxfKEuZt" resolve="g" />
                        </node>
                        <node concept="3uibUv" id="K9wxfKEv0r" role="10QFUM">
                          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="K9wxfKEv0s" role="3cqZAp">
                  <node concept="3cpWsn" id="K9wxfKEv0t" role="3cpWs9">
                    <property role="TrG5h" value="oldAntialiasing" />
                    <node concept="3uibUv" id="K9wxfKEv0u" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="K9wxfKEv0v" role="33vP2m">
                      <node concept="37vLTw" id="3GM_nagTA_g" role="2Oq$k0">
                        <ref role="3cqZAo" node="K9wxfKEv0m" resolve="g2d" />
                      </node>
                      <node concept="liA8E" id="K9wxfKEv0x" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics2D.getRenderingHint(java.awt.RenderingHints$Key)" resolve="getRenderingHint" />
                        <node concept="10M0yZ" id="K9wxfKEv0y" role="37wK5m">
                          <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                          <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="K9wxfKEv0z" role="3cqZAp">
                  <node concept="2OqwBi" id="K9wxfKEv0$" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTuVt" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEv0m" resolve="g2d" />
                    </node>
                    <node concept="liA8E" id="K9wxfKEv0A" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                      <node concept="10M0yZ" id="K9wxfKEv0B" role="37wK5m">
                        <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                        <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                      </node>
                      <node concept="10M0yZ" id="K9wxfKEv0C" role="37wK5m">
                        <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                        <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="K9wxfKEv0D" role="3cqZAp">
                  <node concept="3cpWsn" id="K9wxfKEv0E" role="3cpWs9">
                    <property role="TrG5h" value="xPoints" />
                    <node concept="10Q1$e" id="K9wxfKEv0F" role="1tU5fm">
                      <node concept="10Oyi0" id="K9wxfKEv0G" role="10Q1$1" />
                    </node>
                    <node concept="2ShNRf" id="K9wxfKEv0H" role="33vP2m">
                      <node concept="3g6Rrh" id="K9wxfKEv0I" role="2ShVmc">
                        <node concept="10Oyi0" id="K9wxfKEv0J" role="3g7fb8" />
                        <node concept="1ZRNhn" id="K9wxfKEv0K" role="3g7hyw">
                          <node concept="37vLTw" id="2BHiRxeoeiP" role="2$L3a6">
                            <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                          </node>
                        </node>
                        <node concept="1ZRNhn" id="K9wxfKEv0M" role="3g7hyw">
                          <node concept="37vLTw" id="2BHiRxeodk5" role="2$L3a6">
                            <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="K9wxfKEv0O" role="3g7hyw">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="K9wxfKEv0P" role="3cqZAp">
                  <node concept="3cpWsn" id="K9wxfKEv0Q" role="3cpWs9">
                    <property role="TrG5h" value="yPoints" />
                    <node concept="10Q1$e" id="K9wxfKEv0R" role="1tU5fm">
                      <node concept="10Oyi0" id="K9wxfKEv0S" role="10Q1$1" />
                    </node>
                    <node concept="2ShNRf" id="K9wxfKEv0T" role="33vP2m">
                      <node concept="3g6Rrh" id="K9wxfKEv0U" role="2ShVmc">
                        <node concept="10Oyi0" id="K9wxfKEv0V" role="3g7fb8" />
                        <node concept="37vLTw" id="3GM_nagTsto" role="3g7hyw">
                          <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                        </node>
                        <node concept="3cpWs3" id="K9wxfKEv0X" role="3g7hyw">
                          <node concept="37vLTw" id="3GM_nagTtto" role="3uHU7B">
                            <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                          </node>
                          <node concept="10M0yZ" id="K9wxfKEv0Z" role="3uHU7w">
                            <ref role="3cqZAo" node="K9wxfKEuYV" resolve="ARROW_HEIGHT" />
                            <ref role="1PxDUh" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="K9wxfKEv10" role="3g7hyw">
                          <node concept="37vLTw" id="3GM_nagTATk" role="3uHU7B">
                            <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                          </node>
                          <node concept="FJ1c_" id="K9wxfKEv12" role="3uHU7w">
                            <node concept="3cmrfG" id="K9wxfKEv13" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="10M0yZ" id="K9wxfKEv14" role="3uHU7B">
                              <ref role="3cqZAo" node="K9wxfKEuYV" resolve="ARROW_HEIGHT" />
                              <ref role="1PxDUh" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="K9wxfKEv15" role="3cqZAp">
                  <node concept="2OqwBi" id="K9wxfKEv16" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglK$T" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEuZt" resolve="g" />
                    </node>
                    <node concept="liA8E" id="K9wxfKEv18" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.fillPolygon(int[],int[],int)" resolve="fillPolygon" />
                      <node concept="37vLTw" id="3GM_nagTyJ5" role="37wK5m">
                        <ref role="3cqZAo" node="K9wxfKEv0E" resolve="xPoints" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTySR" role="37wK5m">
                        <ref role="3cqZAo" node="K9wxfKEv0Q" resolve="yPoints" />
                      </node>
                      <node concept="3cmrfG" id="K9wxfKEv1b" role="37wK5m">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="K9wxfKEv1p" role="3cqZAp">
                  <node concept="2OqwBi" id="K9wxfKEv1q" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTzV7" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEv0m" resolve="g2d" />
                    </node>
                    <node concept="liA8E" id="K9wxfKEv1s" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                      <node concept="10M0yZ" id="K9wxfKEv1t" role="37wK5m">
                        <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                        <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_cm" role="37wK5m">
                        <ref role="3cqZAo" node="K9wxfKEv0t" resolve="oldAntialiasing" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="K9wxfKEv1v" role="3cqZAp" />
              </node>
              <node concept="2dkUwp" id="K9wxfKETKR" role="3clFbw">
                <node concept="3cmrfG" id="K9wxfKETKU" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="K9wxfKETKD" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTx9y" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKETKI" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="K9wxfKETKQ" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VH9HX" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="K9wxfKEv1z" role="3cqZAp">
              <node concept="3cpWsn" id="K9wxfKEv1$" role="3cpWs9">
                <property role="TrG5h" value="height" />
                <node concept="10Oyi0" id="K9wxfKEv1_" role="1tU5fm" />
                <node concept="2OqwBi" id="K9wxfKEv1A" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTrww" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKETKI" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="K9wxfKETKX" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VH9HX" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="K9wxfKEv1D" role="3cqZAp">
              <node concept="3clFbS" id="K9wxfKEv1E" role="3clFbx">
                <node concept="3N13vt" id="K9wxfKEv1F" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="K9wxfKEv1G" role="3clFbw">
                <node concept="3clFbC" id="K9wxfKEv1H" role="3uHU7B">
                  <node concept="3cmrfG" id="K9wxfKEv1I" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT$eL" role="3uHU7B">
                    <ref role="3cqZAo" node="K9wxfKEv1$" resolve="height" />
                  </node>
                </node>
                <node concept="3eOVzh" id="K9wxfKEv1K" role="3uHU7w">
                  <node concept="2OqwBi" id="K9wxfKEv1L" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTAGM" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                    </node>
                    <node concept="2OwXpG" id="K9wxfKEv1N" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="K9wxfKEv1O" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTvGj" role="3uHU7B">
                      <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTurR" role="3uHU7w">
                      <ref role="3cqZAo" node="K9wxfKEv1$" resolve="height" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="K9wxfKEv1R" role="3cqZAp">
              <node concept="3clFbS" id="K9wxfKEv1S" role="3clFbx">
                <node concept="3zACq4" id="K9wxfKEv1T" role="3cqZAp" />
              </node>
              <node concept="3eOVzh" id="K9wxfKEv1U" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTvfx" role="3uHU7w">
                  <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                </node>
                <node concept="3cpWs3" id="K9wxfKEv1W" role="3uHU7B">
                  <node concept="2OqwBi" id="K9wxfKEv1X" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTvOJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                    </node>
                    <node concept="2OwXpG" id="K9wxfKEv1Z" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="K9wxfKEv20" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTwkS" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEuZC" resolve="clipBounds" />
                    </node>
                    <node concept="2OwXpG" id="K9wxfKEv22" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="K9wxfKEv23" role="3cqZAp">
              <node concept="2OqwBi" id="K9wxfKEv24" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm9qr" role="2Oq$k0">
                  <ref role="3cqZAo" node="K9wxfKEuZt" resolve="g" />
                </node>
                <node concept="liA8E" id="K9wxfKEv26" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                  <node concept="1ZRNhn" id="K9wxfKEv27" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxeoidP" role="2$L3a6">
                      <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvxg" role="37wK5m">
                    <ref role="3cqZAo" node="K9wxfKEv07" resolve="y" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeohaQ" role="37wK5m">
                    <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagT_Vh" role="37wK5m">
                    <ref role="3cqZAo" node="K9wxfKEv1$" resolve="height" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="K9wxfKEv2O" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEv2P" role="jymVt">
      <property role="TrG5h" value="getLeftAreaWidth" />
      <node concept="3Tm1VV" id="K9wxfKEv2Q" role="1B3o_S" />
      <node concept="10Oyi0" id="K9wxfKEv2R" role="3clF45" />
      <node concept="3clFbS" id="K9wxfKEv2S" role="3clF47">
        <node concept="3cpWs6" id="K9wxfKEv2T" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeopEx" role="3cqZAk">
            <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="K9wxfKEv2V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEv2W" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3Tm1VV" id="K9wxfKEv2X" role="1B3o_S" />
      <node concept="3cqZAl" id="K9wxfKEv2Y" role="3clF45" />
      <node concept="3clFbS" id="K9wxfKEv2Z" role="3clF47">
        <node concept="3clFbF" id="K9wxfKETKY" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKETL0" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuuSb" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
            </node>
            <node concept="liA8E" id="K9wxfKETL4" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHann" resolve="invalidate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="K9wxfKEv34" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEvkC" role="jymVt">
      <property role="TrG5h" value="getToolTipText" />
      <node concept="3Tm1VV" id="K9wxfKEvkD" role="1B3o_S" />
      <node concept="17QB3L" id="K9wxfKEvkE" role="3clF45" />
      <node concept="3clFbS" id="K9wxfKEvkF" role="3clF47">
        <node concept="3clFbJ" id="47zQHaXcWDs" role="3cqZAp">
          <node concept="3clFbS" id="47zQHaXcWDt" role="3clFbx">
            <node concept="3cpWs6" id="47zQHaXcWDB" role="3cqZAp">
              <node concept="10Nm6u" id="47zQHaXcWDD" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="47zQHaXcWDx" role="3clFbw">
            <node concept="10Nm6u" id="47zQHaXcWD$" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuXzE" role="3uHU7B">
              <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
            </node>
          </node>
          <node concept="9aQIb" id="47zQHaXcWD_" role="9aQIa">
            <node concept="3clFbS" id="47zQHaXcWDA" role="9aQI4">
              <node concept="3cpWs8" id="52JQx_XoJaI" role="3cqZAp">
                <node concept="3cpWsn" id="52JQx_XoJaJ" role="3cpWs9">
                  <property role="TrG5h" value="changes" />
                  <node concept="_YKpA" id="52JQx_XoJaK" role="1tU5fm">
                    <node concept="3uibUv" id="52JQx_XoJaL" role="_ZDj9">
                      <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="52JQx_XoJaM" role="33vP2m">
                    <node concept="37vLTw" id="2BHiRxeuPpU" role="2Oq$k0">
                      <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
                    </node>
                    <node concept="liA8E" id="52JQx_XoJaO" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="52JQx_XoIKQ" role="3cqZAp">
                <node concept="3clFbC" id="52JQx_XoKtl" role="3clFbw">
                  <node concept="2OqwBi" id="52JQx_XoJb3" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTw1U" role="2Oq$k0">
                      <ref role="3cqZAo" node="52JQx_XoJaJ" resolve="changes" />
                    </node>
                    <node concept="34oBXx" id="52JQx_XoJb5" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="52JQx_XoJb6" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3clFbS" id="52JQx_XoJbk" role="3clFbx">
                  <node concept="3cpWs8" id="52JQx_XoJbG" role="3cqZAp">
                    <node concept="3cpWsn" id="52JQx_XoJbH" role="3cpWs9">
                      <property role="TrG5h" value="change" />
                      <node concept="3uibUv" id="52JQx_XoJbI" role="1tU5fm">
                        <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                      </node>
                      <node concept="2OqwBi" id="52JQx_XoJbJ" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTyY8" role="2Oq$k0">
                          <ref role="3cqZAo" node="52JQx_XoJaJ" resolve="changes" />
                        </node>
                        <node concept="1uHKPH" id="52JQx_XoJbL" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="52JQx_XoJbz" role="3cqZAp">
                    <node concept="2ZW3vV" id="52JQx_XoJbS" role="3clFbw">
                      <node concept="3uibUv" id="52JQx_XoJbV" role="2ZW6by">
                        <ref role="3uigEE" to="btf5:2nwhOFr8I08" resolve="SetPropertyChange" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTwP1" role="2ZW6bz">
                        <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="52JQx_XoJb_" role="3clFbx">
                      <node concept="3cpWs6" id="52JQx_XoJbW" role="3cqZAp">
                        <node concept="3cpWs3" id="52JQx_XoJbZ" role="3cqZAk">
                          <node concept="2OqwBi" id="52JQx_XoJc7" role="3uHU7w">
                            <node concept="1eOMI4" id="52JQx_XoJc3" role="2Oq$k0">
                              <node concept="10QFUN" id="52JQx_XoJc4" role="1eOMHV">
                                <node concept="37vLTw" id="3GM_nagTzKk" role="10QFUP">
                                  <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                                </node>
                                <node concept="3uibUv" id="52JQx_XoJc6" role="10QFUM">
                                  <ref role="3uigEE" to="btf5:2nwhOFr8I08" resolve="SetPropertyChange" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="52JQx_XoJcb" role="2OqNvi">
                              <ref role="37wK5l" to="btf5:2nH2HpRnsoR" resolve="getPropertyName" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="52JQx_XoJbY" role="3uHU7B">
                            <property role="Xl_RC" value="Changed " />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="52JQx_XoJcc" role="3eNLev">
                      <node concept="2ZW3vV" id="52JQx_XoJcg" role="3eO9$A">
                        <node concept="3uibUv" id="52JQx_XoJcj" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:2nH2HpRnsob" resolve="SetReferenceChange" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT_pO" role="2ZW6bz">
                          <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="52JQx_XoJce" role="3eOfB_">
                        <node concept="3cpWs6" id="52JQx_XoJck" role="3cqZAp">
                          <node concept="3cpWs3" id="1XuTulVDRit" role="3cqZAk">
                            <node concept="Xl_RD" id="1XuTulVDRiw" role="3uHU7w">
                              <property role="Xl_RC" value=" reference" />
                            </node>
                            <node concept="3cpWs3" id="52JQx_XoJcl" role="3uHU7B">
                              <node concept="Xl_RD" id="52JQx_XoJcs" role="3uHU7B">
                                <property role="Xl_RC" value="Changed " />
                              </node>
                              <node concept="2OqwBi" id="52JQx_XoJcm" role="3uHU7w">
                                <node concept="1eOMI4" id="52JQx_XoJcn" role="2Oq$k0">
                                  <node concept="10QFUN" id="52JQx_XoJco" role="1eOMHV">
                                    <node concept="37vLTw" id="3GM_nagTrzi" role="10QFUP">
                                      <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                                    </node>
                                    <node concept="3uibUv" id="52JQx_XoJcx" role="10QFUM">
                                      <ref role="3uigEE" to="btf5:2nH2HpRnsob" resolve="SetReferenceChange" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="52JQx_XoJcr" role="2OqNvi">
                                  <ref role="37wK5l" to="btf5:4TJPS00dNDU" resolve="getRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="52JQx_XoJcy" role="3eNLev">
                      <node concept="2ZW3vV" id="52JQx_XoJcA" role="3eO9$A">
                        <node concept="3uibUv" id="52JQx_XoJcD" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTwu_" role="2ZW6bz">
                          <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="52JQx_XoJc$" role="3eOfB_">
                        <node concept="3cpWs6" id="52JQx_XoJcE" role="3cqZAp">
                          <node concept="2OqwBi" id="52JQx_XoJcG" role="3cqZAk">
                            <node concept="1eOMI4" id="52JQx_XoJcH" role="2Oq$k0">
                              <node concept="10QFUN" id="52JQx_XoKtf" role="1eOMHV">
                                <node concept="37vLTw" id="3GM_nagTsdP" role="10QFUP">
                                  <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                                </node>
                                <node concept="3uibUv" id="52JQx_XoKth" role="10QFUM">
                                  <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="52JQx_XoKtj" role="2OqNvi">
                              <ref role="37wK5l" to="btf5:52JQx_XoJdM" resolve="getDescription" />
                              <node concept="3clFbT" id="52JQx_XoKtk" role="37wK5m">
                                <property role="3clFbU" value="false" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="3u6fppQUiWU" role="3eNLev">
                      <node concept="2ZW3vV" id="3u6fppQUlrI" role="3eO9$A">
                        <node concept="3uibUv" id="3u6fppQUl$g" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:3_sNgK5peRL" resolve="SetConceptChange" />
                        </node>
                        <node concept="37vLTw" id="3u6fppQUlgh" role="2ZW6bz">
                          <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3u6fppQUiWW" role="3eOfB_">
                        <node concept="3cpWs6" id="3u6fppQUl$J" role="3cqZAp">
                          <node concept="2OqwBi" id="3u6fppQUl$K" role="3cqZAk">
                            <node concept="1eOMI4" id="3u6fppQUl$L" role="2Oq$k0">
                              <node concept="10QFUN" id="3u6fppQUl$M" role="1eOMHV">
                                <node concept="37vLTw" id="3u6fppQUl$N" role="10QFUP">
                                  <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                                </node>
                                <node concept="3uibUv" id="3u6fppQUlLn" role="10QFUM">
                                  <ref role="3uigEE" to="btf5:3_sNgK5peRL" resolve="SetConceptChange" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="3u6fppQUl$P" role="2OqNvi">
                              <ref role="37wK5l" to="btf5:3_sNgK5phcJ" resolve="getDescription" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="$Z3RHQ$hb9" role="3eNLev">
                      <node concept="2ZW3vV" id="$Z3RHQ$jyz" role="3eO9$A">
                        <node concept="3uibUv" id="$Z3RHQ$jKc" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                        </node>
                        <node concept="37vLTw" id="$Z3RHQ$jrg" role="2ZW6bz">
                          <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="$Z3RHQ$hbb" role="3eOfB_">
                        <node concept="3cpWs6" id="$Z3RHQ$jO6" role="3cqZAp">
                          <node concept="2OqwBi" id="$Z3RHQ$wHk" role="3cqZAk">
                            <node concept="1eOMI4" id="$Z3RHQ$vPg" role="2Oq$k0">
                              <node concept="10QFUN" id="$Z3RHQ$qyA" role="1eOMHV">
                                <node concept="3uibUv" id="$Z3RHQ$sJT" role="10QFUM">
                                  <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                                </node>
                                <node concept="37vLTw" id="$Z3RHQ$pIN" role="10QFUP">
                                  <ref role="3cqZAo" node="52JQx_XoJbH" resolve="change" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="$Z3RHQ$z1g" role="2OqNvi">
                              <ref role="37wK5l" to="btf5:2prfDaQ83CW" resolve="getDescription" />
                              <node concept="3clFbT" id="$Z3RHQ$zQR" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="52JQx_XoKto" role="3cqZAp">
                <node concept="2YIFZM" id="52JQx_XoKts" role="3cqZAk">
                  <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                  <node concept="2OqwBi" id="52JQx_XoKtw" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTwXS" role="2Oq$k0">
                      <ref role="3cqZAo" node="52JQx_XoJaJ" resolve="changes" />
                    </node>
                    <node concept="34oBXx" id="52JQx_XoKt$" role="2OqNvi" />
                  </node>
                  <node concept="Xl_RD" id="52JQx_XoKtA" role="37wK5m">
                    <property role="Xl_RC" value="change" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="K9wxfKEvkK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6sqIVyMs4Wf" role="jymVt">
      <property role="TrG5h" value="findMessageGroupUnder" />
      <node concept="3uibUv" id="29gu5uHWtpz" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="3Tm6S6" id="6sqIVyMs4WU" role="1B3o_S" />
      <node concept="3clFbS" id="6sqIVyMs4Wi" role="3clF47">
        <node concept="3cpWs8" id="6sqIVyMs4X0" role="3cqZAp">
          <node concept="3cpWsn" id="6sqIVyMs4X1" role="3cpWs9">
            <property role="TrG5h" value="localX" />
            <node concept="10P55v" id="6sqIVyMs4X2" role="1tU5fm" />
            <node concept="3cpWsd" id="6sqIVyMs4X3" role="33vP2m">
              <node concept="2OqwBi" id="6sqIVyMs4X4" role="3uHU7w">
                <node concept="1rXfSq" id="4hiugqyzcfb" role="2Oq$k0">
                  <ref role="37wK5l" to="px75:~AbstractHighlighterPainter.getLeftHighlighter()" resolve="getLeftHighlighter" />
                </node>
                <node concept="liA8E" id="6sqIVyMs4X8" role="2OqNvi">
                  <ref role="37wK5l" to="px75:~LeftEditorHighlighter.getFoldingLineX()" resolve="getFoldingLineX" />
                </node>
              </node>
              <node concept="2OqwBi" id="6sqIVyMs4X9" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmeqL" role="2Oq$k0">
                  <ref role="3cqZAo" node="6sqIVyMs4WW" resolve="p" />
                </node>
                <node concept="liA8E" id="6sqIVyMs4Xb" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Point.getX()" resolve="getX" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6sqIVyMs4Ya" role="3cqZAp">
          <node concept="3clFbS" id="6sqIVyMs4Yb" role="3clFbx">
            <node concept="3cpWs6" id="6sqIVyMs4Yr" role="3cqZAp">
              <node concept="2OqwBi" id="6sqIVyMs4Yw" role="3cqZAk">
                <node concept="2OqwBi" id="29gu5uHWtnK" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuhhI" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
                  </node>
                  <node concept="liA8E" id="29gu5uHWtnO" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHan9" resolve="getChangeGroups" />
                  </node>
                </node>
                <node concept="1z4cxt" id="29gu5uHWtp4" role="2OqNvi">
                  <node concept="1bVj0M" id="29gu5uHWtp5" role="23t8la">
                    <node concept="3clFbS" id="29gu5uHWtp6" role="1bW5cS">
                      <node concept="3cpWs8" id="7Y3dZoOnTBa" role="3cqZAp">
                        <node concept="3cpWsn" id="7Y3dZoOnTBb" role="3cpWs9">
                          <property role="TrG5h" value="b" />
                          <node concept="2pR195" id="7Y3dZoOnTBc" role="1tU5fm">
                            <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
                          </node>
                          <node concept="2OqwBi" id="7Y3dZoOnTBd" role="33vP2m">
                            <node concept="37vLTw" id="2BHiRxghfJh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0XL8" resolve="cg" />
                            </node>
                            <node concept="liA8E" id="7Y3dZoOnTBf" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                              <node concept="3clFbT" id="7Y3dZoOnTBg" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="29gu5uHWtp7" role="3cqZAp">
                        <node concept="22lmx$" id="7Y3dZoOnT_j" role="3clFbG">
                          <node concept="1Wc70l" id="7Y3dZoOnTAy" role="3uHU7w">
                            <node concept="1Wc70l" id="7Y3dZoOnT_A" role="3uHU7B">
                              <node concept="2dkUwp" id="7Y3dZoOnT_y" role="3uHU7B">
                                <node concept="2OqwBi" id="7Y3dZoOnT_t" role="3uHU7B">
                                  <node concept="37vLTw" id="3GM_nagT$vu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Y3dZoOnTBb" resolve="b" />
                                  </node>
                                  <node concept="liA8E" id="7Y3dZoOnT_x" role="2OqNvi">
                                    <ref role="37wK5l" to="hdhb:42hl10VH9HX" resolve="length" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="7Y3dZoOnT__" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                              <node concept="2dkUwp" id="7Y3dZoOnTAz" role="3uHU7w">
                                <node concept="2OqwBi" id="7Y3dZoOnTA$" role="3uHU7w">
                                  <node concept="37vLTw" id="2BHiRxgkWAE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6sqIVyMs4WW" resolve="p" />
                                  </node>
                                  <node concept="liA8E" id="7Y3dZoOnTAA" role="2OqNvi">
                                    <ref role="37wK5l" to="z60i:~Point.getY()" resolve="getY" />
                                  </node>
                                </node>
                                <node concept="3cpWsd" id="7Y3dZoOnTAR" role="3uHU7B">
                                  <node concept="FJ1c_" id="7Y3dZoOnTAZ" role="3uHU7w">
                                    <node concept="37vLTw" id="2BHiRxeogRl" role="3uHU7B">
                                      <ref role="3cqZAo" node="K9wxfKEuYV" resolve="ARROW_HEIGHT" />
                                    </node>
                                    <node concept="3cmrfG" id="7Y3dZoOnTB2" role="3uHU7w">
                                      <property role="3cmrfH" value="2" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7Y3dZoOnTAB" role="3uHU7B">
                                    <node concept="37vLTw" id="3GM_nagT_8$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7Y3dZoOnTBb" resolve="b" />
                                    </node>
                                    <node concept="2sxana" id="7Y3dZoOnTAG" role="2OqNvi">
                                      <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2dkUwp" id="7Y3dZoOnTAH" role="3uHU7w">
                              <node concept="2OqwBi" id="7Y3dZoOnTAI" role="3uHU7B">
                                <node concept="37vLTw" id="2BHiRxgmhFb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6sqIVyMs4WW" resolve="p" />
                                </node>
                                <node concept="liA8E" id="7Y3dZoOnTAK" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Point.getY()" resolve="getY" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="7Y3dZoOnTB4" role="3uHU7w">
                                <node concept="2OqwBi" id="7Y3dZoOnTAL" role="3uHU7B">
                                  <node concept="37vLTw" id="3GM_nagT$t3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Y3dZoOnTBb" resolve="b" />
                                  </node>
                                  <node concept="2sxana" id="7Y3dZoOnTAQ" role="2OqNvi">
                                    <ref role="2sxfKC" to="hdhb:42hl10VH9Iz" resolve="end" />
                                  </node>
                                </node>
                                <node concept="FJ1c_" id="7Y3dZoOnTB7" role="3uHU7w">
                                  <node concept="37vLTw" id="2BHiRxeoe56" role="3uHU7B">
                                    <ref role="3cqZAo" node="K9wxfKEuYV" resolve="ARROW_HEIGHT" />
                                  </node>
                                  <node concept="3cmrfG" id="7Y3dZoOnTB8" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="29gu5uHWtp8" role="3uHU7B">
                            <node concept="2dkUwp" id="29gu5uHWtpj" role="3uHU7B">
                              <node concept="2OqwBi" id="29gu5uHWtpk" role="3uHU7w">
                                <node concept="37vLTw" id="2BHiRxgm$7Y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6sqIVyMs4WW" resolve="p" />
                                </node>
                                <node concept="liA8E" id="29gu5uHWtpm" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Point.getY()" resolve="getY" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="29gu5uHWtpn" role="3uHU7B">
                                <node concept="37vLTw" id="3GM_nagTAJN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Y3dZoOnTBb" resolve="b" />
                                </node>
                                <node concept="2sxana" id="29gu5uHWtps" role="2OqNvi">
                                  <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                                </node>
                              </node>
                            </node>
                            <node concept="2dkUwp" id="7Y3dZoOnTAo" role="3uHU7w">
                              <node concept="2OqwBi" id="7Y3dZoOnTAp" role="3uHU7B">
                                <node concept="37vLTw" id="2BHiRxgkWyS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6sqIVyMs4WW" resolve="p" />
                                </node>
                                <node concept="liA8E" id="7Y3dZoOnTAr" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Point.getY()" resolve="getY" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7Y3dZoOnTAs" role="3uHU7w">
                                <node concept="37vLTw" id="3GM_nagTzW9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Y3dZoOnTBb" resolve="b" />
                                </node>
                                <node concept="2sxana" id="7Y3dZoOnTAx" role="2OqNvi">
                                  <ref role="2sxfKC" to="hdhb:42hl10VH9Iz" resolve="end" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XL8" role="1bW2Oz">
                      <property role="TrG5h" value="cg" />
                      <node concept="2jxLKc" id="5W7E4fV0XL9" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6sqIVyMs4Ye" role="3clFbw">
            <node concept="3eOVzh" id="6sqIVyMs4Yf" role="3uHU7w">
              <node concept="3cmrfG" id="6sqIVyMs4Yg" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3GM_nagTsb_" role="3uHU7B">
                <ref role="3cqZAo" node="6sqIVyMs4X1" resolve="localX" />
              </node>
            </node>
            <node concept="2d3UOw" id="6sqIVyMs4Yi" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTrnL" role="3uHU7B">
                <ref role="3cqZAo" node="6sqIVyMs4X1" resolve="localX" />
              </node>
              <node concept="1ZRNhn" id="6sqIVyMs4Yk" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxeoh9v" role="2$L3a6">
                  <ref role="3cqZAo" node="K9wxfKEuYR" resolve="AREA_WIDTH" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6sqIVyMs4Ym" role="9aQIa">
            <node concept="3clFbS" id="6sqIVyMs4Yn" role="9aQI4">
              <node concept="3cpWs6" id="6sqIVyMs4Yo" role="3cqZAp">
                <node concept="10Nm6u" id="6sqIVyMs4Yq" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6sqIVyMs4WW" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="6sqIVyMs4WX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="4TiB462Rpn1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4TiB462Rpn3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="29gu5uHWtqK" role="jymVt">
      <property role="TrG5h" value="setGroupHighlighted" />
      <node concept="3cqZAl" id="29gu5uHWtqL" role="3clF45" />
      <node concept="3clFbS" id="29gu5uHWtqN" role="3clF47">
        <node concept="3clFbJ" id="29gu5uHWtqU" role="3cqZAp">
          <node concept="3y3z36" id="29gu5uHWtqV" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm_x_" role="3uHU7B">
              <ref role="3cqZAo" node="29gu5uHWtqP" resolve="group" />
            </node>
            <node concept="10Nm6u" id="29gu5uHWtqX" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="29gu5uHWtqY" role="3clFbx">
            <node concept="3clFbF" id="29gu5uHWtqZ" role="3cqZAp">
              <node concept="2OqwBi" id="29gu5uHWtr0" role="3clFbG">
                <node concept="2OqwBi" id="29gu5uHWtr1" role="2Oq$k0">
                  <node concept="2OqwBi" id="29gu5uHWtr2" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxglVvs" role="2Oq$k0">
                      <ref role="3cqZAo" node="29gu5uHWtqP" resolve="group" />
                    </node>
                    <node concept="liA8E" id="29gu5uHWtr4" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                    </node>
                  </node>
                  <node concept="3goQfb" id="29gu5uHWtr5" role="2OqNvi">
                    <node concept="1bVj0M" id="29gu5uHWtr6" role="23t8la">
                      <node concept="3clFbS" id="29gu5uHWtr7" role="1bW5cS">
                        <node concept="3clFbF" id="29gu5uHWtr8" role="3cqZAp">
                          <node concept="2OqwBi" id="29gu5uHWtr9" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxeuVZc" role="2Oq$k0">
                              <ref role="3cqZAo" node="K9wxfKEuYZ" resolve="myEditorHighlighter" />
                            </node>
                            <node concept="liA8E" id="29gu5uHWtrb" role="2OqNvi">
                              <ref role="37wK5l" node="K9wxfKEGFs" resolve="getMessages" />
                              <node concept="37vLTw" id="2BHiRxgmepV" role="37wK5m">
                                <ref role="3cqZAo" node="5W7E4fV0XLa" resolve="ch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XLa" role="1bW2Oz">
                        <property role="TrG5h" value="ch" />
                        <node concept="2jxLKc" id="5W7E4fV0XLb" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2es0OD" id="29gu5uHWtrf" role="2OqNvi">
                  <node concept="1bVj0M" id="29gu5uHWtrg" role="23t8la">
                    <node concept="3clFbS" id="29gu5uHWtrh" role="1bW5cS">
                      <node concept="3clFbF" id="29gu5uHWtri" role="3cqZAp">
                        <node concept="2OqwBi" id="29gu5uHWtrj" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgm79p" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0XLc" resolve="m" />
                          </node>
                          <node concept="liA8E" id="29gu5uHWtrl" role="2OqNvi">
                            <ref role="37wK5l" to="hdhb:mN65zTkQPP" resolve="setHighlighted" />
                            <node concept="37vLTw" id="2BHiRxglnn7" role="37wK5m">
                              <ref role="3cqZAo" node="29gu5uHWtqR" resolve="highlighted" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XLc" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="2jxLKc" id="5W7E4fV0XLd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="29gu5uHWtqP" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="29gu5uHWtqQ" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
        <node concept="2AHcQZ" id="29gu5uHWtrp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="29gu5uHWtqR" role="3clF46">
        <property role="TrG5h" value="highlighted" />
        <node concept="10P_77" id="29gu5uHWtqT" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6sqIVyMs4yd" role="jymVt">
      <property role="TrG5h" value="setGroupUnderMouse" />
      <node concept="3cqZAl" id="6sqIVyMs4ye" role="3clF45" />
      <node concept="3Tm6S6" id="6sqIVyMs4yQ" role="1B3o_S" />
      <node concept="3clFbS" id="6sqIVyMs4yg" role="3clF47">
        <node concept="3clFbJ" id="1IB5XsTCPgU" role="3cqZAp">
          <node concept="3clFbS" id="1IB5XsTCPgV" role="3clFbx">
            <node concept="3cpWs6" id="1IB5XsTCPh5" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1IB5XsTCPh1" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmaZY" role="3uHU7w">
              <ref role="3cqZAo" node="6sqIVyMs4yR" resolve="group" />
            </node>
            <node concept="37vLTw" id="2BHiRxeukqS" role="3uHU7B">
              <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3PjzFo0$ud_" role="3cqZAp" />
        <node concept="3clFbF" id="29gu5uHWtrx" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhWA" role="3clFbG">
            <ref role="37wK5l" node="29gu5uHWtqK" resolve="setGroupHighlighted" />
            <node concept="37vLTw" id="2BHiRxeuPI1" role="37wK5m">
              <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
            </node>
            <node concept="3clFbT" id="29gu5uHWtr_" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sqIVyMs4Ut" role="3cqZAp">
          <node concept="37vLTI" id="6sqIVyMs4Ux" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmKIr" role="37vLTx">
              <ref role="3cqZAo" node="6sqIVyMs4yR" resolve="group" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuLk0" role="37vLTJ">
              <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29gu5uHWtrA" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyIg2" role="3clFbG">
            <ref role="37wK5l" node="29gu5uHWtqK" resolve="setGroupHighlighted" />
            <node concept="37vLTw" id="2BHiRxeuswE" role="37wK5m">
              <ref role="3cqZAo" node="29gu5uHWtpC" resolve="myGroupUnderMouse" />
            </node>
            <node concept="3clFbT" id="29gu5uHWtrD" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2GFh7wrO2Ju" role="3cqZAp">
          <node concept="3clFbS" id="2GFh7wrO2Jv" role="3clFbx">
            <node concept="3clFbF" id="2GFh7wrO2Jq" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyIcK" role="3clFbG">
                <ref role="37wK5l" node="29gu5uHWtqK" resolve="setGroupHighlighted" />
                <node concept="2OqwBi" id="2GFh7wrO2JB" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeudEP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
                  </node>
                  <node concept="liA8E" id="2GFh7wrO2Oe" role="2OqNvi">
                    <ref role="37wK5l" node="2GFh7wrO2g$" resolve="getChangeGroup" />
                  </node>
                </node>
                <node concept="3clFbT" id="2GFh7wrO2Og" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GFh7wrO2Jz" role="3clFbw">
            <node concept="10Nm6u" id="2GFh7wrO2JA" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeu$FD" role="3uHU7B">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5q$kpXRiagJ" role="3cqZAp">
          <node concept="2OqwBi" id="5q$kpXRibxs" role="3clFbG">
            <node concept="2OqwBi" id="5q$kpXRiagS" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeufBa" role="2Oq$k0">
                <ref role="3cqZAo" node="K9wxfKEuYZ" resolve="myEditorHighlighter" />
              </node>
              <node concept="liA8E" id="5q$kpXRibxr" role="2OqNvi">
                <ref role="37wK5l" node="5zpsdFy5CrA" resolve="getHighlightManager" />
              </node>
            </node>
            <node concept="liA8E" id="5q$kpXRibxw" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~NodeHighlightManager.repaintAndRebuildEditorMessages()" resolve="repaintAndRebuildEditorMessages" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6sqIVyMs4yR" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="29gu5uHWtpG" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
        <node concept="2AHcQZ" id="4TiB462Rpn2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="13yjqzuGJfz" role="jymVt">
      <property role="TrG5h" value="mouseMoved" />
      <node concept="3Tm1VV" id="13yjqzuGJf$" role="1B3o_S" />
      <node concept="3cqZAl" id="13yjqzuGJf_" role="3clF45" />
      <node concept="37vLTG" id="13yjqzuGJfA" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="13yjqzuGJfB" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="13yjqzuGJfC" role="3clF47">
        <node concept="3cpWs8" id="6sqIVyMs50A" role="3cqZAp">
          <node concept="3cpWsn" id="6sqIVyMs50B" role="3cpWs9">
            <property role="TrG5h" value="changeGroup" />
            <node concept="3uibUv" id="29gu5uHWtrG" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzhKB" role="33vP2m">
              <ref role="37wK5l" node="6sqIVyMs4Wf" resolve="findMessageGroupUnder" />
              <node concept="2OqwBi" id="6sqIVyMs50F" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxglJ$N" role="2Oq$k0">
                  <ref role="3cqZAo" node="13yjqzuGJfA" resolve="event" />
                </node>
                <node concept="liA8E" id="6sqIVyMs50H" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~MouseEvent.getPoint()" resolve="getPoint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7IAdK0r$W4G" role="3cqZAp">
          <node concept="3clFbS" id="7IAdK0r$W4H" role="3clFbx">
            <node concept="3clFbF" id="7IAdK0r$W4P" role="3cqZAp">
              <node concept="2OqwBi" id="7IAdK0r$W4R" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm9g2" role="2Oq$k0">
                  <ref role="3cqZAo" node="13yjqzuGJfA" resolve="event" />
                </node>
                <node concept="liA8E" id="7IAdK0r$W4V" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7IAdK0r$W4L" role="3clFbw">
            <node concept="10Nm6u" id="7IAdK0r$W4O" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTBrO" role="3uHU7B">
              <ref role="3cqZAo" node="6sqIVyMs50B" resolve="changeGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29gu5uHWtrN" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhXq" role="3clFbG">
            <ref role="37wK5l" node="6sqIVyMs4yd" resolve="setGroupUnderMouse" />
            <node concept="37vLTw" id="3GM_nagT$dW" role="37wK5m">
              <ref role="3cqZAo" node="6sqIVyMs50B" resolve="changeGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13yjqzuGJkW" role="3cqZAp">
          <node concept="3clFbS" id="13yjqzuGJkX" role="3clFbx">
            <node concept="3clFbF" id="13yjqzuGJl9" role="3cqZAp">
              <node concept="2OqwBi" id="13yjqzuGJlg" role="3clFbG">
                <node concept="2OqwBi" id="13yjqzuGJlb" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgm_kK" role="2Oq$k0">
                    <ref role="3cqZAo" node="13yjqzuGJfA" resolve="event" />
                  </node>
                  <node concept="liA8E" id="13yjqzuGJlf" role="2OqNvi">
                    <ref role="37wK5l" to="hyam:~ComponentEvent.getComponent()" resolve="getComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="13yjqzuGJlk" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.setCursor(java.awt.Cursor)" resolve="setCursor" />
                  <node concept="2YIFZM" id="13yjqzuGJlq" role="37wK5m">
                    <ref role="1Pybhc" to="z60i:~Cursor" resolve="Cursor" />
                    <ref role="37wK5l" to="z60i:~Cursor.getPredefinedCursor(int)" resolve="getPredefinedCursor" />
                    <node concept="10M0yZ" id="13yjqzuGJlr" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Cursor.HAND_CURSOR" resolve="HAND_CURSOR" />
                      <ref role="1PxDUh" to="z60i:~Cursor" resolve="Cursor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6sqIVyMs50O" role="3clFbw">
            <node concept="10Nm6u" id="6sqIVyMs50R" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT$Wz" role="3uHU7B">
              <ref role="3cqZAo" node="6sqIVyMs50B" resolve="changeGroup" />
            </node>
          </node>
          <node concept="9aQIb" id="13yjqzuGJlm" role="9aQIa">
            <node concept="3clFbS" id="13yjqzuGJln" role="9aQI4">
              <node concept="3clFbF" id="13yjqzuGJlH" role="3cqZAp">
                <node concept="2OqwBi" id="13yjqzuGJlI" role="3clFbG">
                  <node concept="2OqwBi" id="13yjqzuGJlJ" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgl8Zw" role="2Oq$k0">
                      <ref role="3cqZAo" node="13yjqzuGJfA" resolve="event" />
                    </node>
                    <node concept="liA8E" id="13yjqzuGJlL" role="2OqNvi">
                      <ref role="37wK5l" to="hyam:~ComponentEvent.getComponent()" resolve="getComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="13yjqzuGJlM" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.setCursor(java.awt.Cursor)" resolve="setCursor" />
                    <node concept="10Nm6u" id="7IAdK0r$W4Y" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13yjqzuGJfD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="13yjqzuGJgc" role="jymVt">
      <property role="TrG5h" value="mouseExited" />
      <node concept="3Tm1VV" id="13yjqzuGJgd" role="1B3o_S" />
      <node concept="3cqZAl" id="13yjqzuGJge" role="3clF45" />
      <node concept="37vLTG" id="13yjqzuGJgf" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="13yjqzuGJgg" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="13yjqzuGJgh" role="3clF47">
        <node concept="3clFbF" id="13yjqzuGJlP" role="3cqZAp">
          <node concept="2OqwBi" id="13yjqzuGJlQ" role="3clFbG">
            <node concept="2OqwBi" id="13yjqzuGJlR" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxglfvn" role="2Oq$k0">
                <ref role="3cqZAo" node="13yjqzuGJgf" resolve="event" />
              </node>
              <node concept="liA8E" id="13yjqzuGJlT" role="2OqNvi">
                <ref role="37wK5l" to="hyam:~ComponentEvent.getComponent()" resolve="getComponent" />
              </node>
            </node>
            <node concept="liA8E" id="13yjqzuGJlU" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setCursor(java.awt.Cursor)" resolve="setCursor" />
              <node concept="10Nm6u" id="7IAdK0r$W4c" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29gu5uHWtrR" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzfdF" role="3clFbG">
            <ref role="37wK5l" node="6sqIVyMs4yd" resolve="setGroupUnderMouse" />
            <node concept="10Nm6u" id="29gu5uHWtrU" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13yjqzuGJgi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2vWZukgxAKu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="mousePressed" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2vWZukgxAKv" role="1B3o_S" />
      <node concept="3cqZAl" id="2vWZukgxAKw" role="3clF45" />
      <node concept="37vLTG" id="2vWZukgxAKx" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="2vWZukgxAKy" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="2vWZukgxAKz" role="3clF47">
        <node concept="3clFbJ" id="7J1HrxD8MJm" role="3cqZAp">
          <node concept="3clFbS" id="7J1HrxD8MJn" role="3clFbx">
            <node concept="3cpWs6" id="7J1HrxD8MO9" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="7J1HrxD8MO3" role="3clFbw">
            <node concept="10M0yZ" id="7J1HrxD8MO8" role="3uHU7w">
              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
              <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
            </node>
            <node concept="2OqwBi" id="7J1HrxD8MJr" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgmP9q" role="2Oq$k0">
                <ref role="3cqZAo" node="2vWZukgxAKx" resolve="event" />
              </node>
              <node concept="liA8E" id="7J1HrxD8MO2" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~AWTEvent.getID()" resolve="getID" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2vWZukgxBua" role="3cqZAp">
          <node concept="2EnYce" id="2vWZukgxBuq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuRPX" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
            <node concept="liA8E" id="2twBGhzwQQ_" role="2OqNvi">
              <ref role="37wK5l" node="2twBGhzw_Sv" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$3Dq87U7_B" role="3cqZAp">
          <node concept="2OqwBi" id="6$3Dq87U7_D" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyz1t6" role="2Oq$k0">
              <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
            </node>
            <node concept="liA8E" id="6$3Dq87U8Zo" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.requestFocus()" resolve="requestFocus" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2vWZukgxAKD" role="3cqZAp">
          <node concept="3clFbS" id="2vWZukgxAKE" role="3clFbx">
            <node concept="3cpWs8" id="2vWZukgxAL7" role="3cqZAp">
              <node concept="3cpWsn" id="2vWZukgxAL8" role="3cpWs9">
                <property role="TrG5h" value="changeGroup" />
                <node concept="3uibUv" id="2vWZukgxAL9" role="1tU5fm">
                  <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
                </node>
                <node concept="1rXfSq" id="4hiugqyyIhj" role="33vP2m">
                  <ref role="37wK5l" node="6sqIVyMs4Wf" resolve="findMessageGroupUnder" />
                  <node concept="2OqwBi" id="2vWZukgxALb" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgm8eR" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vWZukgxAKx" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2vWZukgxALd" role="2OqNvi">
                      <ref role="37wK5l" to="hyam:~MouseEvent.getPoint()" resolve="getPoint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2vWZukgxALg" role="3cqZAp">
              <node concept="3clFbS" id="2vWZukgxALh" role="3clFbx">
                <node concept="3clFbF" id="1LVXsqEggTM" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyzeF0" role="3clFbG">
                    <ref role="37wK5l" node="1LVXsqEggEO" resolve="showPopupForGroup" />
                    <node concept="37vLTw" id="3GM_nagTxrC" role="37wK5m">
                      <ref role="3cqZAo" node="2vWZukgxAL8" resolve="changeGroup" />
                    </node>
                    <node concept="2OqwBi" id="1LVXsqEggTZ" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxglqOk" role="2Oq$k0">
                        <ref role="3cqZAo" node="2vWZukgxAKx" resolve="event" />
                      </node>
                      <node concept="liA8E" id="1LVXsqEggU3" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2vWZukgxALi" role="3cqZAp" />
                <node concept="3clFbF" id="2vWZukgxAKR" role="3cqZAp">
                  <node concept="2OqwBi" id="2vWZukgxAKT" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmaLY" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vWZukgxAKx" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2vWZukgxAKX" role="2OqNvi">
                      <ref role="37wK5l" to="hyam:~InputEvent.consume()" resolve="consume" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2vWZukgxALl" role="3clFbw">
                <node concept="10Nm6u" id="2vWZukgxALo" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTBDh" role="3uHU7B">
                  <ref role="3cqZAo" node="2vWZukgxAL8" resolve="changeGroup" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2vWZukgxAKN" role="3clFbw">
            <node concept="10M0yZ" id="2vWZukgxAKQ" role="3uHU7w">
              <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
              <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
            </node>
            <node concept="2OqwBi" id="2vWZukgxAKI" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgltax" role="2Oq$k0">
                <ref role="3cqZAo" node="2vWZukgxAKx" resolve="event" />
              </node>
              <node concept="liA8E" id="2vWZukgxAKM" role="2OqNvi">
                <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2vWZukgxAK$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1LVXsqEggEO" role="jymVt">
      <property role="TrG5h" value="showPopupForGroup" />
      <node concept="3cqZAl" id="1LVXsqEggEP" role="3clF45" />
      <node concept="3Tm6S6" id="1LVXsqEggES" role="1B3o_S" />
      <node concept="3clFbS" id="1LVXsqEggER" role="3clF47">
        <node concept="3cpWs8" id="1LVXsqEggU4" role="3cqZAp">
          <node concept="3cpWsn" id="1LVXsqEggU5" role="3cpWs9">
            <property role="TrG5h" value="foldingLineX" />
            <node concept="10Oyi0" id="1LVXsqEggU6" role="1tU5fm" />
            <node concept="2OqwBi" id="1LVXsqEggU7" role="33vP2m">
              <node concept="2OqwBi" id="1LVXsqEggU8" role="2Oq$k0">
                <node concept="1rXfSq" id="4hiugqyyOmr" role="2Oq$k0">
                  <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                </node>
                <node concept="liA8E" id="1LVXsqEggUa" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getLeftEditorHighlighter()" resolve="getLeftEditorHighlighter" />
                </node>
              </node>
              <node concept="liA8E" id="1LVXsqEggUb" role="2OqNvi">
                <ref role="37wK5l" to="px75:~LeftEditorHighlighter.getFoldingLineX()" resolve="getFoldingLineX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1LVXsqEggFC" role="3cqZAp">
          <node concept="3cpWsn" id="1LVXsqEggFD" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3uibUv" id="$0IQ_NPLXB" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1LVXsqEggFF" role="33vP2m">
              <node concept="1rXfSq" id="4hiugqyz9fs" role="2Oq$k0">
                <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
              </node>
              <node concept="liA8E" id="1LVXsqEggFH" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.findCellWeak(int,int)" resolve="findCellWeak" />
                <node concept="37vLTw" id="3GM_nagT$RD" role="37wK5m">
                  <ref role="3cqZAo" node="1LVXsqEggU5" resolve="foldingLineX" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmj0h" role="37wK5m">
                  <ref role="3cqZAo" node="1LVXsqEggGn" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1LVXsqEggFO" role="3cqZAp">
          <node concept="3clFbS" id="1LVXsqEggFP" role="3clFbx">
            <node concept="3clFbF" id="1LVXsqEggFQ" role="3cqZAp">
              <node concept="2OqwBi" id="1LVXsqEggFR" role="3clFbG">
                <node concept="1rXfSq" id="4hiugqyzhBP" role="2Oq$k0">
                  <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                </node>
                <node concept="liA8E" id="1LVXsqEggFT" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.changeSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="changeSelection" />
                  <node concept="37vLTw" id="3GM_nagTsrl" role="37wK5m">
                    <ref role="3cqZAo" node="1LVXsqEggFD" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1LVXsqEggFV" role="3clFbw">
            <node concept="10Nm6u" id="1LVXsqEggFW" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTyjt" role="3uHU7B">
              <ref role="3cqZAo" node="1LVXsqEggFD" resolve="cell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1LVXsqEggFY" role="3cqZAp">
          <node concept="37vLTI" id="1LVXsqEggFZ" role="3clFbG">
            <node concept="2ShNRf" id="1LVXsqEggG0" role="37vLTx">
              <node concept="1pGfFk" id="1LVXsqEggG1" role="2ShVmc">
                <ref role="37wK5l" node="2vWZukgxAEq" resolve="PopupPanel" />
                <node concept="Xjq3P" id="1LVXsqEggG2" role="37wK5m" />
                <node concept="37vLTw" id="2BHiRxgmaA7" role="37wK5m">
                  <ref role="3cqZAo" node="1LVXsqEggET" resolve="changeGroup" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeufRk" role="37vLTJ">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1LVXsqEggG5" role="3cqZAp">
          <node concept="2OqwBi" id="1LVXsqEggG6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwx$" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
            <node concept="liA8E" id="1LVXsqEggG8" role="2OqNvi">
              <ref role="37wK5l" node="2twBGhzw_SN" resolve="show" />
              <node concept="3cmrfG" id="5$9qmoC1QLn" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="2BHiRxglISd" role="37wK5m">
                <ref role="3cqZAo" node="1LVXsqEggGn" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1LVXsqEggET" role="3clF46">
        <property role="TrG5h" value="changeGroup" />
        <node concept="3uibUv" id="1LVXsqEggEU" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
        <node concept="2AHcQZ" id="1LVXsqEggEV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1LVXsqEggGn" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1LVXsqEggGp" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1WTvgPOMa7A" role="jymVt">
      <property role="TrG5h" value="popupClosed" />
      <node concept="3cqZAl" id="1WTvgPOMa7B" role="3clF45" />
      <node concept="3clFbS" id="1WTvgPOMa7D" role="3clF47">
        <node concept="3clFbF" id="1WTvgPOMaAp" role="3cqZAp">
          <node concept="37vLTI" id="1WTvgPOMaAr" role="3clFbG">
            <node concept="10Nm6u" id="1WTvgPOMaAu" role="37vLTx" />
            <node concept="37vLTw" id="2BHiRxeukoX" role="37vLTJ">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1LVXsqEgg_N" role="jymVt">
      <property role="TrG5h" value="getNeighbourChangeGroup" />
      <node concept="3uibUv" id="1LVXsqEgg_O" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="3clFbS" id="1LVXsqEgg_P" role="3clF47">
        <node concept="3clFbJ" id="5FFOk1KfC43" role="3cqZAp">
          <node concept="3clFbS" id="5FFOk1KfC44" role="3clFbx">
            <node concept="3cpWs6" id="5FFOk1KfC45" role="3cqZAp">
              <node concept="10Nm6u" id="5FFOk1KfC46" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5FFOk1KfC47" role="3clFbw">
            <node concept="10Nm6u" id="5FFOk1KfC48" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgkWrI" role="3uHU7B">
              <ref role="3cqZAo" node="5FFOk1KfC4e" resolve="contextCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5FFOk1KfC3Y" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgmnt_" role="3clFbw">
            <ref role="3cqZAo" node="1LVXsqEggAe" resolve="next" />
          </node>
          <node concept="3clFbS" id="5FFOk1KfC40" role="3clFbx">
            <node concept="3cpWs8" id="5FFOk1KfC8j" role="3cqZAp">
              <node concept="3cpWsn" id="5FFOk1KfC8k" role="3cpWs9">
                <property role="TrG5h" value="bottomY" />
                <node concept="10Oyi0" id="5FFOk1KfC8l" role="1tU5fm" />
                <node concept="3cpWs3" id="5FFOk1KfC8m" role="33vP2m">
                  <node concept="2OqwBi" id="5FFOk1KfC8n" role="3uHU7B">
                    <node concept="37vLTw" id="2BHiRxgmC7B" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FFOk1KfC4e" resolve="contextCell" />
                    </node>
                    <node concept="liA8E" id="5FFOk1KfC8r" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5FFOk1KfC8s" role="3uHU7w">
                    <node concept="37vLTw" id="2BHiRxgmoFx" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FFOk1KfC4e" resolve="contextCell" />
                    </node>
                    <node concept="liA8E" id="5FFOk1KfC8w" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5FFOk1KfC8x" role="3cqZAp">
              <node concept="2OqwBi" id="5FFOk1KfC8y" role="3cqZAk">
                <node concept="2OqwBi" id="5FFOk1KfC8z" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeug4T" role="2Oq$k0">
                    <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
                  </node>
                  <node concept="liA8E" id="5FFOk1KfC8_" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHan9" resolve="getChangeGroups" />
                  </node>
                </node>
                <node concept="1z4cxt" id="5FFOk1KfC8A" role="2OqNvi">
                  <node concept="1bVj0M" id="5FFOk1KfC8B" role="23t8la">
                    <node concept="3clFbS" id="5FFOk1KfC8C" role="1bW5cS">
                      <node concept="3clFbF" id="5FFOk1KfC8D" role="3cqZAp">
                        <node concept="3eOVzh" id="5FFOk1KfC8E" role="3clFbG">
                          <node concept="2OqwBi" id="5FFOk1KfC8F" role="3uHU7w">
                            <node concept="2OqwBi" id="5FFOk1KfC8G" role="2Oq$k0">
                              <node concept="37vLTw" id="2BHiRxghiy1" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XLe" resolve="g" />
                              </node>
                              <node concept="liA8E" id="5FFOk1KfC8I" role="2OqNvi">
                                <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                                <node concept="3clFbT" id="5FFOk1KfC8J" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                            <node concept="2sxana" id="5FFOk1KfC8K" role="2OqNvi">
                              <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTAF0" role="3uHU7B">
                            <ref role="3cqZAo" node="5FFOk1KfC8k" resolve="bottomY" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XLe" role="1bW2Oz">
                      <property role="TrG5h" value="g" />
                      <node concept="2jxLKc" id="5W7E4fV0XLf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5FFOk1KfC8h" role="9aQIa">
            <node concept="3clFbS" id="5FFOk1KfC8i" role="9aQI4">
              <node concept="3cpWs8" id="5FFOk1KfC7O" role="3cqZAp">
                <node concept="3cpWsn" id="5FFOk1KfC7P" role="3cpWs9">
                  <property role="TrG5h" value="topY" />
                  <node concept="10Oyi0" id="5FFOk1KfC7Q" role="1tU5fm" />
                  <node concept="2OqwBi" id="5FFOk1KfC7R" role="33vP2m">
                    <node concept="37vLTw" id="2BHiRxgm_hw" role="2Oq$k0">
                      <ref role="3cqZAo" node="5FFOk1KfC4e" resolve="contextCell" />
                    </node>
                    <node concept="liA8E" id="5FFOk1KfC7V" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5FFOk1KfC7W" role="3cqZAp">
                <node concept="2OqwBi" id="5FFOk1KfC7X" role="3cqZAk">
                  <node concept="2OqwBi" id="5FFOk1KfC7Y" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxeuMBF" role="2Oq$k0">
                      <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
                    </node>
                    <node concept="liA8E" id="5FFOk1KfC80" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHan9" resolve="getChangeGroups" />
                    </node>
                  </node>
                  <node concept="1zesIP" id="5FFOk1KfC81" role="2OqNvi">
                    <node concept="1bVj0M" id="5FFOk1KfC82" role="23t8la">
                      <node concept="3clFbS" id="5FFOk1KfC83" role="1bW5cS">
                        <node concept="3clFbF" id="5FFOk1KfC84" role="3cqZAp">
                          <node concept="3eOSWO" id="5FFOk1KfC85" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagT_pN" role="3uHU7B">
                              <ref role="3cqZAo" node="5FFOk1KfC7P" resolve="topY" />
                            </node>
                            <node concept="2OqwBi" id="5FFOk1KfC87" role="3uHU7w">
                              <node concept="2OqwBi" id="5FFOk1KfC88" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxgmBPW" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0XLg" resolve="g" />
                                </node>
                                <node concept="liA8E" id="5FFOk1KfC8a" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                                  <node concept="3clFbT" id="5FFOk1KfC8b" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2sxana" id="5FFOk1KfC8c" role="2OqNvi">
                                <ref role="2sxfKC" to="hdhb:42hl10VH9Iz" resolve="end" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XLg" role="1bW2Oz">
                        <property role="TrG5h" value="g" />
                        <node concept="2jxLKc" id="5W7E4fV0XLh" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1LVXsqEggAc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="5FFOk1KfC4e" role="3clF46">
        <property role="TrG5h" value="contextCell" />
        <node concept="3uibUv" id="$0IQ_NOgCr" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
        <node concept="2AHcQZ" id="5FFOk1KfC7L" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="1LVXsqEggAe" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="1LVXsqEggAf" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="4oRgVqwe_b$" role="jymVt">
      <property role="TrG5h" value="getCurrentChangeGroup" />
      <node concept="3uibUv" id="4oRgVqwe_b_" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="3clFbS" id="4oRgVqwe_bA" role="3clF47">
        <node concept="3clFbF" id="4oRgVqwe_cJ" role="3cqZAp">
          <node concept="2EnYce" id="4oRgVqwe_cP" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuwz7" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
            <node concept="liA8E" id="4oRgVqwe_Is" role="2OqNvi">
              <ref role="37wK5l" node="2GFh7wrO2g$" resolve="getChangeGroup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4oRgVqwe_cD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="1LVXsqEggE$" role="jymVt">
      <property role="TrG5h" value="showPopupForGroup" />
      <node concept="37vLTG" id="1LVXsqEggUe" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="1LVXsqEggUg" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
        <node concept="2AHcQZ" id="1LVXsqEggUh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3cqZAl" id="1LVXsqEggE_" role="3clF45" />
      <node concept="3clFbS" id="1LVXsqEggEB" role="3clF47">
        <node concept="3clFbF" id="1LVXsqEggEC" role="3cqZAp">
          <node concept="2EnYce" id="1LVXsqEghc$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeug5X" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAKo" resolve="myPopupToolbar" />
            </node>
            <node concept="liA8E" id="2twBGhzwQQz" role="2OqNvi">
              <ref role="37wK5l" node="2twBGhzw_Sv" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4oRgVqweIWQ" role="3cqZAp">
          <node concept="3clFbS" id="4oRgVqweIWR" role="3clFbx">
            <node concept="3clFbF" id="1LVXsqEggUn" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz9hm" role="3clFbG">
                <ref role="37wK5l" node="1LVXsqEggEO" resolve="showPopupForGroup" />
                <node concept="37vLTw" id="2BHiRxgm9sj" role="37wK5m">
                  <ref role="3cqZAo" node="1LVXsqEggUe" resolve="group" />
                </node>
                <node concept="2OqwBi" id="1LVXsqEgh9D" role="37wK5m">
                  <node concept="2OqwBi" id="1LVXsqEgh9z" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxghenZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1LVXsqEggUe" resolve="group" />
                    </node>
                    <node concept="liA8E" id="1LVXsqEgh9B" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                      <node concept="3clFbT" id="1LVXsqEgh9C" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="2sxana" id="1LVXsqEgh9H" role="2OqNvi">
                    <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4oRgVqweIWV" role="3clFbw">
            <node concept="10Nm6u" id="4oRgVqweIWY" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgm9jU" role="3uHU7B">
              <ref role="3cqZAo" node="1LVXsqEggUe" resolve="group" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="76itSV98wRQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="76itSV98wRR" role="1B3o_S" />
      <node concept="3cqZAl" id="76itSV98wRS" role="3clF45" />
      <node concept="3clFbS" id="76itSV98wRT" role="3clF47">
        <node concept="3clFbF" id="76itSV98wSP" role="3cqZAp">
          <node concept="2OqwBi" id="76itSV98wSQ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuvHv" role="2Oq$k0">
              <ref role="3cqZAo" node="76itSV98wS9" resolve="myGroupMessages" />
            </node>
            <node concept="liA8E" id="76itSV98wSS" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:76itSV98wSB" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ID7N5Ay3ma" role="3cqZAp">
          <node concept="2OqwBi" id="6ID7N5Ay3mM" role="3clFbG">
            <node concept="37vLTw" id="6ID7N5Ay3mk" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEF8A" resolve="myChangeGroupLayout" />
            </node>
            <node concept="liA8E" id="6ID7N5Ay3mN" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6ID7N5AwtJR" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="76itSV98wRV" role="3cqZAp">
          <node concept="3nyPlj" id="76itSV98wRW" role="3clFbG">
            <ref role="37wK5l" to="px75:~AbstractHighlighterPainter.dispose()" resolve="dispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="76itSV98wRU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="K9wxfKEGEn">
    <property role="TrG5h" value="StripsChangeGroupLayout" />
    <node concept="3uibUv" id="K9wxfKEGEt" role="1zkMxy">
      <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
    </node>
    <node concept="312cEg" id="K9wxfKEGEY" role="jymVt">
      <property role="TrG5h" value="myEditorHighlighter" />
      <node concept="3Tm6S6" id="K9wxfKEGEZ" role="1B3o_S" />
      <node concept="3uibUv" id="K9wxfKEGF1" role="1tU5fm">
        <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
      </node>
    </node>
    <node concept="3clFbW" id="K9wxfKET0z" role="jymVt">
      <node concept="3cqZAl" id="K9wxfKET0$" role="3clF45" />
      <node concept="3Tm1VV" id="K9wxfKET0_" role="1B3o_S" />
      <node concept="3clFbS" id="K9wxfKET0B" role="3clF47">
        <node concept="XkiVB" id="K9wxfKET0C" role="3cqZAp">
          <ref role="37wK5l" to="hdhb:6ID7N5Baw1y" resolve="ChangeGroupLayout" />
          <node concept="10Nm6u" id="K9wxfKET1F" role="37wK5m" />
          <node concept="2ZW3vV" id="K9wxfKET1N" role="37wK5m">
            <node concept="3uibUv" id="K9wxfKET1Q" role="2ZW6by">
              <ref role="3uigEE" to="zyr2:~InspectorEditorComponent" resolve="InspectorEditorComponent" />
            </node>
            <node concept="2OqwBi" id="K9wxfKET1I" role="2ZW6bz">
              <node concept="37vLTw" id="2BHiRxgmiY7" role="2Oq$k0">
                <ref role="3cqZAo" node="K9wxfKET0P" resolve="editorHighlighter" />
              </node>
              <node concept="liA8E" id="K9wxfKET1M" role="2OqNvi">
                <ref role="37wK5l" node="K9wxfKEGFa" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="6Xy5Ur26Gac" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="2OqwBi" id="6ID7N5AZSL_" role="37wK5m">
            <node concept="37vLTw" id="6ID7N5AZSLq" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKET0P" resolve="editorHighlighter" />
            </node>
            <node concept="liA8E" id="6ID7N5AZSLA" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEGFa" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="K9wxfKET0R" role="3cqZAp">
          <node concept="37vLTI" id="K9wxfKET0T" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumLK" role="37vLTJ">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="37vLTw" id="2BHiRxglYD0" role="37vLTx">
              <ref role="3cqZAo" node="K9wxfKET0P" resolve="editorHighlighter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="K9wxfKET0P" role="3clF46">
        <property role="TrG5h" value="editorHighlighter" />
        <node concept="3uibUv" id="K9wxfKET0Q" role="1tU5fm">
          <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEGEN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLeftComponent" />
      <node concept="3uibUv" id="K9wxfKEGEO" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3Tm1VV" id="K9wxfKEGEP" role="1B3o_S" />
      <node concept="2AHcQZ" id="K9wxfKEGEQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="K9wxfKEGER" role="3clF47">
        <node concept="3clFbF" id="K9wxfKEGF3" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKEGF6" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuVuE" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="liA8E" id="K9wxfKEGFi" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEGFa" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Ah" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEGEI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRightComponent" />
      <node concept="3uibUv" id="K9wxfKEGEJ" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="3Tm1VV" id="K9wxfKEGEK" role="1B3o_S" />
      <node concept="2AHcQZ" id="K9wxfKEGEL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="K9wxfKEGEM" role="3clF47">
        <node concept="3clFbF" id="K9wxfKEGFj" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKEGFk" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukrX" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="liA8E" id="K9wxfKEGFm" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEGFa" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Ae" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEGEA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLeftMessages" />
      <node concept="_YKpA" id="K9wxfKEGEB" role="3clF45">
        <node concept="3uibUv" id="K9wxfKEGEC" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="3Tmbuc" id="K9wxfKEGED" role="1B3o_S" />
      <node concept="37vLTG" id="K9wxfKEGEE" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="K9wxfKEGEF" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3clFbS" id="K9wxfKEGEH" role="3clF47">
        <node concept="3clFbF" id="K9wxfKEGFn" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKEGFo" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMzV" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="liA8E" id="K9wxfKET0s" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEGFs" resolve="getMessages" />
              <node concept="37vLTw" id="2BHiRxgm9AP" role="37wK5m">
                <ref role="3cqZAo" node="K9wxfKEGEE" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Af" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="K9wxfKEGEu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRightMessages" />
      <node concept="_YKpA" id="K9wxfKEGEv" role="3clF45">
        <node concept="3uibUv" id="K9wxfKEGEw" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
        </node>
      </node>
      <node concept="3Tmbuc" id="K9wxfKEGEx" role="1B3o_S" />
      <node concept="37vLTG" id="K9wxfKEGEy" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="K9wxfKEGEz" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3clFbS" id="K9wxfKEGE_" role="3clF47">
        <node concept="3clFbF" id="K9wxfKET0u" role="3cqZAp">
          <node concept="2OqwBi" id="K9wxfKET0v" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujSf" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="liA8E" id="K9wxfKET0x" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKEGFs" resolve="getMessages" />
              <node concept="37vLTw" id="2BHiRxglQ_e" role="37wK5m">
                <ref role="3cqZAo" node="K9wxfKEGEy" resolve="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Ag" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7FLRXY0GyFJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChangeSet" />
      <node concept="3uibUv" id="7FLRXY0GyFK" role="3clF45">
        <ref role="3uigEE" to="bfxj:3kRMfhMv03j" resolve="ChangeSet" />
      </node>
      <node concept="3Tmbuc" id="7FLRXY0GyFL" role="1B3o_S" />
      <node concept="2AHcQZ" id="7FLRXY0GyFM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="7FLRXY0GyFN" role="3clF47">
        <node concept="3clFbF" id="7FLRXY0GyFR" role="3cqZAp">
          <node concept="2OqwBi" id="7FLRXY0GyFT" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPEP" role="2Oq$k0">
              <ref role="3cqZAo" node="K9wxfKEGEY" resolve="myEditorHighlighter" />
            </node>
            <node concept="liA8E" id="7FLRXY0GyFX" role="2OqNvi">
              <ref role="37wK5l" node="K9wxfKET20" resolve="getChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S6Ai" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2vWZukgxAEo">
    <property role="TrG5h" value="PopupPanel" />
    <node concept="3uibUv" id="2twBGhzwzLq" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="312cEg" id="2vWZukgxAEI" role="jymVt">
      <property role="TrG5h" value="myPainter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2vWZukgxAEJ" role="1B3o_S" />
      <node concept="3uibUv" id="2vWZukgxAEL" role="1tU5fm">
        <ref role="3uigEE" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
      </node>
    </node>
    <node concept="312cEg" id="2vWZukgxAJI" role="jymVt">
      <property role="TrG5h" value="myChangeGroup" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2vWZukgxAJJ" role="1B3o_S" />
      <node concept="3uibUv" id="2vWZukgxAJL" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
    </node>
    <node concept="312cEg" id="2twBGhzwAI4" role="jymVt">
      <property role="TrG5h" value="myMouseListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2twBGhzwAI5" role="1B3o_S" />
      <node concept="3uibUv" id="2twBGhzwAI7" role="1tU5fm">
        <ref role="3uigEE" node="2twBGhzw_Sd" resolve="PopupPanel.MyMouseListener" />
      </node>
      <node concept="2ShNRf" id="2twBGhzwAI9" role="33vP2m">
        <node concept="1pGfFk" id="2twBGhzwAIa" role="2ShVmc">
          <ref role="37wK5l" node="2twBGhzw_Sf" resolve="PopupPanel.MyMouseListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2twBGhzwAIb" role="jymVt">
      <property role="TrG5h" value="myFocusListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2twBGhzwAIc" role="1B3o_S" />
      <node concept="3uibUv" id="2twBGhzwAIg" role="1tU5fm">
        <ref role="3uigEE" node="2twBGhzw_Tn" resolve="PopupPanel.MyFocusListener" />
      </node>
      <node concept="2ShNRf" id="2twBGhzwAIe" role="33vP2m">
        <node concept="1pGfFk" id="2twBGhzwAIf" role="2ShVmc">
          <ref role="37wK5l" node="2twBGhzw_Tp" resolve="PopupPanel.MyFocusListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="jCAmFld4Ot" role="jymVt">
      <property role="TrG5h" value="myLayeredPane" />
      <node concept="3Tm6S6" id="jCAmFld4Or" role="1B3o_S" />
      <node concept="3uibUv" id="jCAmFld4Os" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JLayeredPane" resolve="JLayeredPane" />
      </node>
    </node>
    <node concept="312cEg" id="23PS3yVDzrd" role="jymVt">
      <property role="TrG5h" value="myBaseEditor" />
      <node concept="3uibUv" id="30mmRK2dMee" role="1tU5fm">
        <ref role="3uigEE" node="3SxFjl1oIks" resolve="BaseVersionEditorComponent" />
      </node>
      <node concept="3Tm6S6" id="23PS3yVDzre" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="bnI1yDxAg7" role="jymVt">
      <property role="TrG5h" value="myToolbar" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="bnI1yDxAg8" role="1B3o_S" />
      <node concept="3uibUv" id="bnI1yDxAg9" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
      </node>
    </node>
    <node concept="312cEg" id="3CHeQ8cxRjW" role="jymVt">
      <property role="TrG5h" value="myTempRepo" />
      <node concept="3Tm6S6" id="3CHeQ8cxJwC" role="1B3o_S" />
      <node concept="3uibUv" id="3CHeQ8cxWhV" role="1tU5fm">
        <ref role="3uigEE" to="cttk:5F0lsbynlOq" resolve="RepositoryFacade" />
      </node>
    </node>
    <node concept="312cEg" id="3CHeQ8cy8qU" role="jymVt">
      <property role="TrG5h" value="myTempRepoFiles" />
      <node concept="3Tm6S6" id="3CHeQ8cy4qu" role="1B3o_S" />
      <node concept="3uibUv" id="3CHeQ8cyelY" role="1tU5fm">
        <ref role="3uigEE" to="kip1:~FileSystemRepoBridge" resolve="FileSystemRepoBridge" />
      </node>
    </node>
    <node concept="2tJIrI" id="2d6eGLKgLBZ" role="jymVt" />
    <node concept="3clFbW" id="2vWZukgxAEq" role="jymVt">
      <node concept="3cqZAl" id="2vWZukgxAEr" role="3clF45" />
      <node concept="3Tm1VV" id="2vWZukgxAEs" role="1B3o_S" />
      <node concept="3clFbS" id="2vWZukgxAEt" role="3clF47">
        <node concept="3clFbF" id="2vWZukgxDQY" role="3cqZAp">
          <node concept="37vLTI" id="2vWZukgxDR0" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm6Yz" role="37vLTx">
              <ref role="3cqZAo" node="2vWZukgxAJF" resolve="group" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuIyx" role="37vLTJ">
              <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2vWZukgxAEQ" role="3cqZAp">
          <node concept="37vLTI" id="2vWZukgxAES" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm9M1" role="37vLTx">
              <ref role="3cqZAo" node="2vWZukgxAEM" resolve="painter" />
            </node>
            <node concept="37vLTw" id="2BHiRxeul6s" role="37vLTJ">
              <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rBlRfyNv4e" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyZ39" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="4rBlRfyNv4g" role="37wK5m">
              <node concept="1pGfFk" id="4rBlRfyNv4i" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nnEAoIgEGX" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8ZC" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
            <node concept="3clFbT" id="3nnEAoIgEGZ" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4rBlRfyNv3X" role="3cqZAp" />
        <node concept="3cpWs8" id="4rBlRfyNv41" role="3cqZAp">
          <node concept="3cpWsn" id="4rBlRfyNv42" role="3cpWs9">
            <property role="TrG5h" value="toolbarPanel" />
            <node concept="3uibUv" id="4rBlRfyNv43" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="4rBlRfyNv45" role="33vP2m">
              <node concept="1pGfFk" id="4rBlRfyNv47" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="4rBlRfyNv49" role="37wK5m">
                  <node concept="1pGfFk" id="4rBlRfyNv4b" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rBlRfyNv9y" role="3cqZAp">
          <node concept="2OqwBi" id="4rBlRfyNv9$" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuZB" role="2Oq$k0">
              <ref role="3cqZAo" node="4rBlRfyNv42" resolve="toolbarPanel" />
            </node>
            <node concept="liA8E" id="4rBlRfyNv9C" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="4rBlRfyNv9D" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bnI1yDxAga" role="3cqZAp">
          <node concept="37vLTI" id="bnI1yDxAgb" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMzH" role="37vLTJ">
              <ref role="3cqZAo" node="bnI1yDxAg7" resolve="myToolbar" />
            </node>
            <node concept="2OqwBi" id="bnI1yDxAgf" role="37vLTx">
              <node concept="2YIFZM" id="bnI1yDxAgg" role="2Oq$k0">
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="bnI1yDxAgh" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
                <node concept="Xl_RD" id="2d6eGLKgzCa" role="37wK5m">
                  <property role="Xl_RC" value="popup panel toolbar" />
                </node>
                <node concept="3$FqnI" id="bnI1yDxAgj" role="37wK5m">
                  <ref role="3$FqnG" to="zbx9:78RbNhWi9LZ" resolve="ChangesStrip" />
                </node>
                <node concept="3clFbT" id="bnI1yDxAgk" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5E$eFJIbDro" role="3cqZAp">
          <node concept="2OqwBi" id="5E$eFJIbDrq" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW3i" role="2Oq$k0">
              <ref role="3cqZAo" node="bnI1yDxAg7" resolve="myToolbar" />
            </node>
            <node concept="liA8E" id="5E$eFJIbDtw" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.setTargetComponent(javax.swing.JComponent)" resolve="setTargetComponent" />
              <node concept="2OqwBi" id="2vWZukgxAEX" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeufQL" role="2Oq$k0">
                  <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
                </node>
                <node concept="liA8E" id="2vWZukgxAKg" role="2OqNvi">
                  <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rBlRfyNv4k" role="3cqZAp">
          <node concept="2OqwBi" id="4rBlRfyNv4m" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTyRO" role="2Oq$k0">
              <ref role="3cqZAo" node="4rBlRfyNv42" resolve="toolbarPanel" />
            </node>
            <node concept="liA8E" id="4rBlRfyNv8X" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="2OqwBi" id="4rBlRfyNv8Z" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeuXi1" role="2Oq$k0">
                  <ref role="3cqZAo" node="bnI1yDxAg7" resolve="myToolbar" />
                </node>
                <node concept="liA8E" id="4rBlRfyNv91" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
                </node>
              </node>
              <node concept="10M0yZ" id="4rBlRfyNv93" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5oDg2xBeVmD" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeWF" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="3GM_nagTy0e" role="37wK5m">
              <ref role="3cqZAo" node="4rBlRfyNv42" resolve="toolbarPanel" />
            </node>
            <node concept="10M0yZ" id="4rBlRfyNv96" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rBlRfyNv98" role="3cqZAp">
          <node concept="2OqwBi" id="4rBlRfyNv9a" role="3clFbG">
            <node concept="2OqwBi" id="4rBlRfyNv9i" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeuVZz" role="2Oq$k0">
                <ref role="3cqZAo" node="bnI1yDxAg7" resolve="myToolbar" />
              </node>
              <node concept="liA8E" id="4rBlRfyNv9m" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
              </node>
            </node>
            <node concept="liA8E" id="4rBlRfyNv9e" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2ShNRf" id="1KI84SNagpr" role="37wK5m">
                <node concept="1pGfFk" id="1KI84SNakmI" role="2ShVmc">
                  <ref role="37wK5l" to="lzb2:~ColoredSideBorder.&lt;init&gt;(java.awt.Color,java.awt.Color,java.awt.Color,java.awt.Color,int)" resolve="ColoredSideBorder" />
                  <node concept="10M0yZ" id="1KI84SNakmJ" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                  <node concept="10M0yZ" id="1KI84SNakmL" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                  <node concept="3K4zz7" id="1KI84SNakmT" role="37wK5m">
                    <node concept="10Nm6u" id="1cWLtgfvAR7" role="3K4E3e" />
                    <node concept="10M0yZ" id="1cWLtgfvAR8" role="3K4GZi">
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                      <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                    </node>
                    <node concept="3y3z36" id="1KI84SNakmO" role="3K4Cdx">
                      <node concept="2OqwBi" id="1KI84SNakmP" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxeurpO" role="2Oq$k0">
                          <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
                        </node>
                        <node concept="liA8E" id="1KI84SNakmR" role="2OqNvi">
                          <ref role="37wK5l" to="hdhb:42hl10VHagR" resolve="getChangeType" />
                        </node>
                      </node>
                      <node concept="Rm8GO" id="1KI84SNakmS" role="3uHU7w">
                        <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                        <ref role="Rm8GQ" to="btf5:7inhnIFBpHO" resolve="ADD" />
                      </node>
                    </node>
                  </node>
                  <node concept="10M0yZ" id="1KI84SNakn0" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                  </node>
                  <node concept="3cmrfG" id="1KI84SNakn2" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SxFjl1ovmG" role="3cqZAp" />
        <node concept="3clFbJ" id="3SxFjl1oBjs" role="3cqZAp">
          <node concept="3clFbS" id="3SxFjl1oBjt" role="3clFbx">
            <node concept="3SKdUt" id="3CHeQ8cJE4W" role="3cqZAp">
              <node concept="1PaTwC" id="3CHeQ8cJE4X" role="1aUNEU">
                <node concept="3oM_SD" id="3CHeQ8cJE4Y" role="1PaTwD">
                  <property role="3oM_SC" value="FIXME" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJH7I" role="1PaTwD">
                  <property role="3oM_SC" value="seems" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQE7" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQFn" role="1PaTwD">
                  <property role="3oM_SC" value="proper" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQFC" role="1PaTwD">
                  <property role="3oM_SC" value="place" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQGS" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQGT" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQHT" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQHU" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJQIb" role="1PaTwD">
                  <property role="3oM_SC" value="ChangeStripsPainter," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTGF" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTHV" role="1PaTwD">
                  <property role="3oM_SC" value="keep" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTIc" role="1PaTwD">
                  <property role="3oM_SC" value="single" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTJc" role="1PaTwD">
                  <property role="3oM_SC" value="copy" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTJt" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTKH" role="1PaTwD">
                  <property role="3oM_SC" value="old" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTNu" role="1PaTwD">
                  <property role="3oM_SC" value="model." />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTNJ" role="1PaTwD">
                  <property role="3oM_SC" value="Could" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTRd" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTRu" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTRv" role="1PaTwD">
                  <property role="3oM_SC" value="then" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTTI" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTTJ" role="1PaTwD">
                  <property role="3oM_SC" value="ChangesStripActionHelper" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTYs" role="1PaTwD">
                  <property role="3oM_SC" value="w/o" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTZG" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJTZX" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJU0X" role="1PaTwD">
                  <property role="3oM_SC" value="copy" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJU2t" role="1PaTwD">
                  <property role="3oM_SC" value="again" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJXuc" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cJXud" role="1PaTwD">
                  <property role="3oM_SC" value="copyOldNodes()" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3CHeQ8cykox" role="3cqZAp">
              <node concept="37vLTI" id="3CHeQ8cylKb" role="3clFbG">
                <node concept="37vLTw" id="3CHeQ8cykov" role="37vLTJ">
                  <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
                </node>
                <node concept="2YIFZM" id="3CHeQ8cyvTM" role="37vLTx">
                  <ref role="37wK5l" to="cttk:5F0lsbynlQK" resolve="createPlainRegistrationRepo" />
                  <ref role="1Pybhc" to="cttk:5F0lsbynlOq" resolve="RepositoryFacade" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3CHeQ8cy$bS" role="3cqZAp">
              <node concept="37vLTI" id="3CHeQ8cyAJB" role="3clFbG">
                <node concept="2ShNRf" id="3CHeQ8cyDA1" role="37vLTx">
                  <node concept="1pGfFk" id="3CHeQ8cyPoE" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="kip1:~FileSystemRepoBridge.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="FileSystemRepoBridge" />
                    <node concept="2OqwBi" id="3CHeQ8cyXJD" role="37wK5m">
                      <node concept="37vLTw" id="3CHeQ8cyWyD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
                      </node>
                      <node concept="liA8E" id="3CHeQ8cyYFz" role="2OqNvi">
                        <ref role="37wK5l" to="cttk:5F0lsbynmm$" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3CHeQ8cy$bQ" role="37vLTJ">
                  <ref role="3cqZAo" node="3CHeQ8cy8qU" resolve="myTempRepoFiles" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3CHeQ8c_DZB" role="3cqZAp">
              <node concept="1PaTwC" id="3CHeQ8c_DZC" role="1aUNEU">
                <node concept="3oM_SD" id="3CHeQ8c_ELU" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_EMU" role="1PaTwD">
                  <property role="3oM_SC" value="dispose" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_Fk4" role="1PaTwD">
                  <property role="3oM_SC" value="whole" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_Fl$" role="1PaTwD">
                  <property role="3oM_SC" value="repo" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cBSD_" role="1PaTwD">
                  <property role="3oM_SC" value="at" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cBSDA" role="1PaTwD">
                  <property role="3oM_SC" value="once," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_FmO" role="1PaTwD">
                  <property role="3oM_SC" value="hence" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_Fok" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_FpO" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_FpP" role="1PaTwD">
                  <property role="3oM_SC" value="track" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_Fr5" role="1PaTwD">
                  <property role="3oM_SC" value="ModelLot" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c_Ftk" role="1PaTwD">
                  <property role="3oM_SC" value="instance" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3CHeQ8c_jui" role="3cqZAp">
              <node concept="3cpWsn" id="3CHeQ8c_juj" role="3cpWs9">
                <property role="TrG5h" value="ml" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="3CHeQ8c_juk" role="1tU5fm">
                  <ref role="3uigEE" to="bmv6:568jgXHmVv8" resolve="ModelLot" />
                </node>
                <node concept="2ShNRf" id="3CHeQ8c_mT6" role="33vP2m">
                  <node concept="1pGfFk" id="3CHeQ8c_z2d" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="bmv6:568jgXHnbHR" resolve="ModelLot" />
                    <node concept="37vLTw" id="3CHeQ8c__Wh" role="37wK5m">
                      <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3CHeQ8c$t4B" role="3cqZAp">
              <node concept="1PaTwC" id="3CHeQ8c$t4C" role="1aUNEU">
                <node concept="3oM_SD" id="3CHeQ8c$tOt" role="1PaTwD">
                  <property role="3oM_SC" value="XXX" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tMc" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tMd" role="1PaTwD">
                  <property role="3oM_SC" value="fact," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tNd" role="1PaTwD">
                  <property role="3oM_SC" value="likely" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tQW" role="1PaTwD">
                  <property role="3oM_SC" value="shall" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tRd" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tSd" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tSe" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tTu" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tUY" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$tVY" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u0X" role="1PaTwD">
                  <property role="3oM_SC" value="changeGroup" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u3s" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u4s" role="1PaTwD">
                  <property role="3oM_SC" value="after" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u5W" role="1PaTwD">
                  <property role="3oM_SC" value="all," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u5X" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u7v" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u8J" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$u8K" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$ua0" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$ua1" role="1PaTwD">
                  <property role="3oM_SC" value="access," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$udv" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$udw" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$ueK" role="1PaTwD">
                  <property role="3oM_SC" value="one" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$uf1" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$uf2" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8c$ug2" role="1PaTwD">
                  <property role="3oM_SC" value="editor" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3CHeQ8cLZHm" role="3cqZAp">
              <node concept="1PaTwC" id="3CHeQ8cLZHn" role="1aUNEU">
                <node concept="3oM_SD" id="3CHeQ8cLZHo" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cLZHr" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM0N0" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM0N1" role="1PaTwD">
                  <property role="3oM_SC" value="however," />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM1uO" role="1PaTwD">
                  <property role="3oM_SC" value="code" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM1v5" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM1w5" role="1PaTwD">
                  <property role="3oM_SC" value="ChangesStringActionHelper.copyOldNodes" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM7KU" role="1PaTwD">
                  <property role="3oM_SC" value="suggests" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM7Ms" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM7Qc" role="1PaTwD">
                  <property role="3oM_SC" value="oldModel" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM7Tb" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3CHeQ8cM7Ur" role="1PaTwD">
                  <property role="3oM_SC" value="detached." />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3CHeQ8c$mxk" role="3cqZAp">
              <node concept="3cpWsn" id="3CHeQ8c$mxl" role="3cpWs9">
                <property role="TrG5h" value="srcRepo" />
                <node concept="3uibUv" id="3CHeQ8c$mxm" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="1qhrjhg$R64" role="33vP2m">
                  <node concept="liA8E" id="1qhrjhg$TYR" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                  </node>
                  <node concept="2OqwBi" id="3SxFjl1oON4" role="2Oq$k0">
                    <node concept="liA8E" id="3SxFjl1oON6" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                    </node>
                    <node concept="2OqwBi" id="2twBGhzwQQj" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxeuuYv" role="2Oq$k0">
                        <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
                      </node>
                      <node concept="liA8E" id="2twBGhzwQQl" role="2OqNvi">
                        <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3CHeQ8c$Wl0" role="3cqZAp">
              <node concept="3cpWsn" id="3CHeQ8c$Wl1" role="3cpWs9">
                <property role="TrG5h" value="roCopy" />
                <node concept="3uibUv" id="3CHeQ8c$Vwz" role="1tU5fm">
                  <ref role="3uigEE" to="bmv6:1m2uLwrRQWq" resolve="MergeTemporaryModel" />
                </node>
                <node concept="2OqwBi" id="3CHeQ8c$Wl2" role="33vP2m">
                  <node concept="2OqwBi" id="3CHeQ8c$Wl3" role="2Oq$k0">
                    <node concept="37vLTw" id="3CHeQ8c$Wl4" role="2Oq$k0">
                      <ref role="3cqZAo" node="3CHeQ8c$mxl" resolve="srcRepo" />
                    </node>
                    <node concept="liA8E" id="3CHeQ8c$Wl5" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3CHeQ8c$Wl6" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                    <node concept="1bVj0M" id="3CHeQ8c$Wl7" role="37wK5m">
                      <node concept="3clFbS" id="3CHeQ8c$Wl8" role="1bW5cS">
                        <node concept="3cpWs8" id="3CHeQ8cERdY" role="3cqZAp">
                          <node concept="3cpWsn" id="3CHeQ8cERdZ" role="3cpWs9">
                            <property role="TrG5h" value="original" />
                            <node concept="H_c77" id="3CHeQ8cEOKQ" role="1tU5fm" />
                            <node concept="2OqwBi" id="3CHeQ8cERe0" role="33vP2m">
                              <node concept="2OqwBi" id="3CHeQ8cERe1" role="2Oq$k0">
                                <node concept="2OqwBi" id="3CHeQ8cERe2" role="2Oq$k0">
                                  <node concept="2OqwBi" id="3CHeQ8cERe3" role="2Oq$k0">
                                    <node concept="37vLTw" id="3CHeQ8cERe4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
                                    </node>
                                    <node concept="liA8E" id="3CHeQ8cERe5" role="2OqNvi">
                                      <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                                    </node>
                                  </node>
                                  <node concept="1uHKPH" id="3CHeQ8cERe6" role="2OqNvi" />
                                </node>
                                <node concept="liA8E" id="3CHeQ8cERe7" role="2OqNvi">
                                  <ref role="37wK5l" to="btf5:5x0q8wkvS4u" resolve="getChangeSet" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3CHeQ8cERe8" role="2OqNvi">
                                <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="3CHeQ8cG4rO" role="3cqZAp">
                          <node concept="2OqwBi" id="3CHeQ8c_LCM" role="3cqZAk">
                            <node concept="37vLTw" id="3CHeQ8c_KpO" role="2Oq$k0">
                              <ref role="3cqZAo" node="3CHeQ8c_juj" resolve="ml" />
                            </node>
                            <node concept="liA8E" id="3CHeQ8c_Mw2" role="2OqNvi">
                              <ref role="37wK5l" to="bmv6:568jgXHngtt" resolve="addCloneOf" />
                              <node concept="37vLTw" id="3CHeQ8cERe9" role="37wK5m">
                                <ref role="3cqZAo" node="3CHeQ8cERdZ" resolve="original" />
                              </node>
                              <node concept="2OqwBi" id="3CHeQ8cF9Wf" role="37wK5m">
                                <node concept="2OqwBi" id="3CHeQ8cEZSf" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="3CHeQ8cF5Xy" role="2Oq$k0">
                                    <node concept="37vLTw" id="3CHeQ8cEYll" role="2JrQYb">
                                      <ref role="3cqZAo" node="3CHeQ8cERdZ" resolve="original" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3CHeQ8cF8Tc" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3CHeQ8cFaO8" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModelName.getStereotype()" resolve="getStereotype" />
                                </node>
                              </node>
                              <node concept="3clFbT" id="3CHeQ8c_SIO" role="37wK5m">
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
            <node concept="3clFbF" id="3CHeQ8cAgEc" role="3cqZAp">
              <node concept="2OqwBi" id="3CHeQ8cAhSs" role="3clFbG">
                <node concept="37vLTw" id="3CHeQ8cAgEa" role="2Oq$k0">
                  <ref role="3cqZAo" node="3CHeQ8c_juj" resolve="ml" />
                </node>
                <node concept="liA8E" id="3CHeQ8cAjN4" role="2OqNvi">
                  <ref role="37wK5l" to="bmv6:568jgXHr1XS" resolve="registerModels" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="30mmRK2doRw" role="3cqZAp">
              <node concept="37vLTI" id="30mmRK2drby" role="3clFbG">
                <node concept="37vLTw" id="30mmRK2dzqD" role="37vLTJ">
                  <ref role="3cqZAo" node="23PS3yVDzrd" resolve="myBaseEditor" />
                </node>
                <node concept="2ShNRf" id="3SxFjl1oOMZ" role="37vLTx">
                  <node concept="1pGfFk" id="3SxFjl1oON0" role="2ShVmc">
                    <ref role="37wK5l" node="3SxFjl1oOMg" resolve="BaseVersionEditorComponent" />
                    <node concept="37vLTw" id="3CHeQ8cAdf7" role="37wK5m">
                      <ref role="3cqZAo" node="3CHeQ8c$Wl1" resolve="roCopy" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuoNA" role="37wK5m">
                      <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1mbt4VJPfoy" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXom8Q" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXom8R" role="1PaTwD">
                  <property role="3oM_SC" value="Do" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8S" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8T" role="1PaTwD">
                  <property role="3oM_SC" value="extend" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8U" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8V" role="1PaTwD">
                  <property role="3oM_SC" value="editor" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8W" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8X" role="1PaTwD">
                  <property role="3oM_SC" value="extensions:" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8Y" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom8Z" role="1PaTwD">
                  <property role="3oM_SC" value="project" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom90" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom91" role="1PaTwD">
                  <property role="3oM_SC" value="tricky" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom92" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom93" role="1PaTwD">
                  <property role="3oM_SC" value="get" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom94" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom95" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom96" role="1PaTwD">
                  <property role="3oM_SC" value="point," />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1mbt4VJPfNd" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXom97" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXom98" role="1PaTwD">
                  <property role="3oM_SC" value="and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom99" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9a" role="1PaTwD">
                  <property role="3oM_SC" value="editor" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9b" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9c" role="1PaTwD">
                  <property role="3oM_SC" value="seem" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9d" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9e" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9f" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9g" role="1PaTwD">
                  <property role="3oM_SC" value="important" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9h" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9i" role="1PaTwD">
                  <property role="3oM_SC" value="extend." />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4rBlRfyNv9p" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz2Uk" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                <node concept="2OqwBi" id="1gM_IjhvHsT" role="37wK5m">
                  <node concept="37vLTw" id="30mmRK2dRv9" role="2Oq$k0">
                    <ref role="3cqZAo" node="23PS3yVDzrd" resolve="myBaseEditor" />
                  </node>
                  <node concept="liA8E" id="1gM_IjhvHsX" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
                  </node>
                </node>
                <node concept="10M0yZ" id="4rBlRfyNv9w" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                  <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3SxFjl1oBjG" role="3clFbw">
            <node concept="2OqwBi" id="3SxFjl1oBjH" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuwxS" role="2Oq$k0">
                <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
              </node>
              <node concept="liA8E" id="3SxFjl1oBjJ" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHagR" resolve="getChangeType" />
              </node>
            </node>
            <node concept="Rm8GO" id="3SxFjl1oBjT" role="3uHU7w">
              <ref role="Rm8GQ" to="btf5:7inhnIFBpHO" resolve="ADD" />
              <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2vWZukgxAEM" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="2vWZukgxAEN" role="1tU5fm">
          <ref role="3uigEE" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
        </node>
      </node>
      <node concept="37vLTG" id="2vWZukgxAJF" role="3clF46">
        <property role="TrG5h" value="group" />
        <node concept="3uibUv" id="2vWZukgxAJH" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2d6eGLKgChg" role="jymVt" />
    <node concept="3clFb_" id="2GFh7wrO2g$" role="jymVt">
      <property role="TrG5h" value="getChangeGroup" />
      <node concept="3uibUv" id="2GFh7wrO2g_" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="3clFbS" id="2GFh7wrO2gB" role="3clF47">
        <node concept="3clFbF" id="2GFh7wrO2gC" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuL1H" role="3clFbG">
            <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2d6eGLKgGRy" role="jymVt" />
    <node concept="3clFb_" id="2twBGhzw_SN" role="jymVt">
      <property role="TrG5h" value="show" />
      <node concept="37vLTG" id="2twBGhzw_SU" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2twBGhzw_SW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2twBGhzw_SX" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2twBGhzw_SZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2twBGhzw_SO" role="3clF45" />
      <node concept="3clFbS" id="2twBGhzw_SP" role="3clF47">
        <node concept="3clFbF" id="jCAmFld4OC" role="3cqZAp">
          <node concept="37vLTI" id="jCAmFld4OD" role="3clFbG">
            <node concept="37vLTw" id="jCAmFld8mf" role="37vLTJ">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="2OqwBi" id="jCAmFld4OH" role="37vLTx">
              <node concept="2OqwBi" id="jCAmFld4OI" role="2Oq$k0">
                <node concept="liA8E" id="jCAmFld4OJ" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getRootPane()" resolve="getRootPane" />
                </node>
                <node concept="2OqwBi" id="3CHeQ8cx5BD" role="2Oq$k0">
                  <node concept="37vLTw" id="3CHeQ8cx5BE" role="2Oq$k0">
                    <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
                  </node>
                  <node concept="liA8E" id="3CHeQ8cx5BF" role="2OqNvi">
                    <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="jCAmFld4OL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JRootPane.getLayeredPane()" resolve="getLayeredPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwAhi" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz93Q" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.setLocation(java.awt.Point)" resolve="setLocation" />
            <node concept="2YIFZM" id="2a2fc5ZjZx8" role="37wK5m">
              <ref role="37wK5l" to="dxuu:~SwingUtilities.convertPoint(java.awt.Component,int,int,java.awt.Component)" resolve="convertPoint" />
              <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
              <node concept="2OqwBi" id="3CHeQ8cx7ff" role="37wK5m">
                <node concept="37vLTw" id="3CHeQ8cx7fg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
                </node>
                <node concept="liA8E" id="3CHeQ8cx7fh" role="2OqNvi">
                  <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxglBzI" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzw_SU" resolve="x" />
              </node>
              <node concept="37vLTw" id="2BHiRxglRtB" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzw_SX" resolve="y" />
              </node>
              <node concept="37vLTw" id="3GM_nagTAZX" role="37wK5m">
                <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zjetcwXCTW" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzc2u" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean)" resolve="setVisible" />
            <node concept="3clFbT" id="zjetcwXCTY" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQhH" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQPN" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtIp" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="2twBGhzwQPR" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="Xjq3P" id="2twBGhzwQPS" role="37wK5m" />
              <node concept="10M0yZ" id="2twBGhzwQPU" role="37wK5m">
                <ref role="1PxDUh" to="dxuu:~JLayeredPane" resolve="JLayeredPane" />
                <ref role="3cqZAo" to="dxuu:~JLayeredPane.POPUP_LAYER" resolve="POPUP_LAYER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bnI1yDxAfR" role="3cqZAp" />
        <node concept="3clFbF" id="bnI1yDxAfT" role="3cqZAp">
          <node concept="2OqwBi" id="bnI1yDxAfU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuQsq" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
            </node>
            <node concept="liA8E" id="bnI1yDxAfW" role="2OqNvi">
              <ref role="37wK5l" node="29gu5uHWtqK" resolve="setGroupHighlighted" />
              <node concept="37vLTw" id="2BHiRxeusvn" role="37wK5m">
                <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
              </node>
              <node concept="3clFbT" id="bnI1yDxAfY" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="bnI1yDxAfZ" role="3cqZAp">
          <node concept="2OqwBi" id="bnI1yDxAg0" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuW17" role="2Oq$k0">
              <ref role="3cqZAo" node="bnI1yDxAg7" resolve="myToolbar" />
            </node>
            <node concept="liA8E" id="bnI1yDxAg2" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.updateActionsAsync()" resolve="updateActionsAsync" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzw_TG" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz80B" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
            <node concept="1rXfSq" id="4hiugqyyOl0" role="37wK5m">
              <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2T2NPEcpV9" role="3cqZAp">
          <node concept="3cpWsn" id="2T2NPEcpVa" role="3cpWs9">
            <property role="TrG5h" value="overflow" />
            <node concept="10Oyi0" id="2T2NPEcpVb" role="1tU5fm" />
            <node concept="3cpWsd" id="2T2NPEcpVc" role="33vP2m">
              <node concept="1eOMI4" id="2T2NPEcpVd" role="3uHU7B">
                <node concept="10QFUN" id="2T2NPEcpVe" role="1eOMHV">
                  <node concept="2OqwBi" id="2T2NPEcpVf" role="10QFUP">
                    <node concept="1rXfSq" id="4hiugqyz8RM" role="2Oq$k0">
                      <ref role="37wK5l" to="z60i:~Component.getBounds()" resolve="getBounds" />
                    </node>
                    <node concept="liA8E" id="2T2NPEcpVh" role="2OqNvi">
                      <ref role="37wK5l" to="fbzs:~RectangularShape.getMaxX()" resolve="getMaxX" />
                    </node>
                  </node>
                  <node concept="10Oyi0" id="2T2NPEcpVi" role="10QFUM" />
                </node>
              </node>
              <node concept="2OqwBi" id="2T2NPEcpVj" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTrVr" role="2Oq$k0">
                  <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
                </node>
                <node concept="liA8E" id="2T2NPEcpVl" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2T2NPEcpdP" role="3cqZAp">
          <node concept="3clFbS" id="2T2NPEcpdQ" role="3clFbx">
            <node concept="3SKdUt" id="2T2NPEcpUx" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXom9j" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXom9k" role="1PaTwD">
                  <property role="3oM_SC" value="panel" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9l" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9m" role="1PaTwD">
                  <property role="3oM_SC" value="too" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9n" role="1PaTwD">
                  <property role="3oM_SC" value="wide," />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9o" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9p" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9q" role="1PaTwD">
                  <property role="3oM_SC" value="move" />
                </node>
                <node concept="3oM_SD" id="ATZLwXom9r" role="1PaTwD">
                  <property role="3oM_SC" value="it" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2T2NPEcpVJ" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz8l3" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Component.setLocation(int,int)" resolve="setLocation" />
                <node concept="2YIFZM" id="2T2NPEcpVO" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                  <node concept="3cmrfG" id="2T2NPEcpVP" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cpWsd" id="2T2NPEcpVW" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTro2" role="3uHU7w">
                      <ref role="3cqZAo" node="2T2NPEcpVa" resolve="overflow" />
                    </node>
                    <node concept="1rXfSq" id="4hiugqyyZ93" role="3uHU7B">
                      <ref role="37wK5l" to="dxuu:~JComponent.getX()" resolve="getX" />
                    </node>
                  </node>
                </node>
                <node concept="1rXfSq" id="4hiugqyz004" role="37wK5m">
                  <ref role="37wK5l" to="dxuu:~JComponent.getY()" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="2T2NPEcpVs" role="3clFbw">
            <node concept="3cmrfG" id="2T2NPEcpVv" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3GM_nagT_T3" role="3uHU7B">
              <ref role="3cqZAo" node="2T2NPEcpVa" resolve="overflow" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6A8PMQURnR_" role="3cqZAp">
          <node concept="2OqwBi" id="6A8PMQURnRA" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTssm" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="6A8PMQURnRE" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.validate()" resolve="validate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5N3ntE_MyE1" role="3cqZAp">
          <node concept="2OqwBi" id="5N3ntE_MyE2" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_3m" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="5N3ntE_MyE4" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.repaint(java.awt.Rectangle)" resolve="repaint" />
              <node concept="1rXfSq" id="4hiugqyyZwR" role="37wK5m">
                <ref role="37wK5l" to="z60i:~Component.getBounds()" resolve="getBounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="bnI1yDx$bg" role="3cqZAp" />
        <node concept="3clFbF" id="2twBGhzw_T6" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz90S" role="3clFbG">
            <ref role="37wK5l" node="2twBGhzw_Nm" resolve="addListeners" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2twBGhzw_SQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2d6eGLKgGRz" role="jymVt" />
    <node concept="3clFb_" id="2twBGhzw_Nm" role="jymVt">
      <property role="TrG5h" value="addListeners" />
      <node concept="3cqZAl" id="2twBGhzw_Nn" role="3clF45" />
      <node concept="3clFbS" id="2twBGhzw_No" role="3clF47">
        <node concept="3cpWs8" id="3CHeQ8cxinJ" role="3cqZAp">
          <node concept="3cpWsn" id="3CHeQ8cxinK" role="3cpWs9">
            <property role="TrG5h" value="ec" />
            <node concept="3uibUv" id="3CHeQ8cxgJ_" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="3CHeQ8cxinL" role="33vP2m">
              <node concept="37vLTw" id="3CHeQ8cxinM" role="2Oq$k0">
                <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
              </node>
              <node concept="liA8E" id="3CHeQ8cxinN" role="2OqNvi">
                <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQh9" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQhg" role="3clFbG">
            <node concept="liA8E" id="2twBGhzwQhk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="37vLTw" id="2BHiRxeux9F" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzwAI4" resolve="myMouseListener" />
              </node>
            </node>
            <node concept="37vLTw" id="3CHeQ8cxinO" role="2Oq$k0">
              <ref role="3cqZAo" node="3CHeQ8cxinK" resolve="ec" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQhm" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQhn" role="3clFbG">
            <node concept="liA8E" id="2twBGhzwQhr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addFocusListener(java.awt.event.FocusListener)" resolve="addFocusListener" />
              <node concept="37vLTw" id="2BHiRxeufPa" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzwAIb" resolve="myFocusListener" />
              </node>
            </node>
            <node concept="37vLTw" id="3CHeQ8cxinP" role="2Oq$k0">
              <ref role="3cqZAo" node="3CHeQ8cxinK" resolve="ec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2twBGhzw_Np" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2d6eGLKgGR$" role="jymVt" />
    <node concept="3clFb_" id="2twBGhzw_Nq" role="jymVt">
      <property role="TrG5h" value="removeListeners" />
      <node concept="3cqZAl" id="2twBGhzw_Nr" role="3clF45" />
      <node concept="3clFbS" id="2twBGhzw_Ns" role="3clF47">
        <node concept="3cpWs8" id="3CHeQ8cxrhv" role="3cqZAp">
          <node concept="3cpWsn" id="3CHeQ8cxrhw" role="3cpWs9">
            <property role="TrG5h" value="ec" />
            <node concept="3uibUv" id="3CHeQ8cxpIv" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="2OqwBi" id="3CHeQ8cxrhx" role="33vP2m">
              <node concept="37vLTw" id="3CHeQ8cxrhy" role="2Oq$k0">
                <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
              </node>
              <node concept="liA8E" id="3CHeQ8cxrhz" role="2OqNvi">
                <ref role="37wK5l" node="2vWZukgxAK2" resolve="getEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQh_" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQhA" role="3clFbG">
            <node concept="liA8E" id="2twBGhzwQhE" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeFocusListener(java.awt.event.FocusListener)" resolve="removeFocusListener" />
              <node concept="37vLTw" id="2BHiRxeuyOq" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzwAIb" resolve="myFocusListener" />
              </node>
            </node>
            <node concept="37vLTw" id="3CHeQ8cxrh$" role="2Oq$k0">
              <ref role="3cqZAo" node="3CHeQ8cxrhw" resolve="ec" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQhu" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQhv" role="3clFbG">
            <node concept="liA8E" id="2twBGhzwQhz" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener)" resolve="removeMouseListener" />
              <node concept="37vLTw" id="2BHiRxeuyR0" role="37wK5m">
                <ref role="3cqZAo" node="2twBGhzwAI4" resolve="myMouseListener" />
              </node>
            </node>
            <node concept="37vLTw" id="3CHeQ8cxrh_" role="2Oq$k0">
              <ref role="3cqZAo" node="3CHeQ8cxrhw" resolve="ec" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2twBGhzw_Nt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2d6eGLKgGR_" role="jymVt" />
    <node concept="3clFb_" id="2twBGhzw_Sv" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2twBGhzw_Sw" role="3clF45" />
      <node concept="3clFbS" id="2twBGhzw_Sx" role="3clF47">
        <node concept="3clFbJ" id="jCAmFlduCi" role="3cqZAp">
          <node concept="3clFbS" id="jCAmFlduCk" role="3clFbx">
            <node concept="3cpWs6" id="jCAmFldDxm" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="jCAmFld$jT" role="3clFbw">
            <node concept="10Nm6u" id="jCAmFldBux" role="3uHU7w" />
            <node concept="37vLTw" id="jCAmFldxuZ" role="3uHU7B">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzw_Td" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhK5" role="3clFbG">
            <ref role="37wK5l" node="2twBGhzw_Nq" resolve="removeListeners" />
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzwQPW" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzwQQ5" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTvgI" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="2twBGhzwQQ9" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
              <node concept="Xjq3P" id="2twBGhzwQQa" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="CAEW9VcwFl" role="3cqZAp">
          <node concept="2OqwBi" id="CAEW9VcwFm" role="3clFbG">
            <node concept="37vLTw" id="jCAmFldeot" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="CAEW9VcwFo" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.validate()" resolve="validate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="CAEW9VcwFp" role="3cqZAp">
          <node concept="2OqwBi" id="CAEW9VcwFq" role="3clFbG">
            <node concept="37vLTw" id="jCAmFldhc8" role="2Oq$k0">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
            <node concept="liA8E" id="CAEW9VcwFs" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.repaint(java.awt.Rectangle)" resolve="repaint" />
              <node concept="1rXfSq" id="4hiugqyyQ5P" role="37wK5m">
                <ref role="37wK5l" to="z60i:~Component.getBounds()" resolve="getBounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2twBGhzw_SM" role="3cqZAp" />
        <node concept="3clFbF" id="2twBGhzw_Sz" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzw_S$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuq9H" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
            </node>
            <node concept="liA8E" id="2twBGhzw_SA" role="2OqNvi">
              <ref role="37wK5l" node="29gu5uHWtqK" resolve="setGroupHighlighted" />
              <node concept="37vLTw" id="2BHiRxeun6E" role="37wK5m">
                <ref role="3cqZAo" node="2vWZukgxAJI" resolve="myChangeGroup" />
              </node>
              <node concept="3clFbT" id="2twBGhzw_SC" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2twBGhzw_SD" role="3cqZAp">
          <node concept="2OqwBi" id="2twBGhzw_SE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuMzo" role="2Oq$k0">
              <ref role="3cqZAo" node="2vWZukgxAEI" resolve="myPainter" />
            </node>
            <node concept="liA8E" id="2twBGhzw_SG" role="2OqNvi">
              <ref role="37wK5l" node="1WTvgPOMa7A" resolve="popupClosed" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2D6byw_kHM4" role="3cqZAp" />
        <node concept="3clFbJ" id="2D6byw_h8qj" role="3cqZAp">
          <node concept="3y3z36" id="2D6byw_hjyo" role="3clFbw">
            <node concept="10Nm6u" id="2D6byw_hjyC" role="3uHU7w" />
            <node concept="37vLTw" id="2D6byw_hdkb" role="3uHU7B">
              <ref role="3cqZAo" node="23PS3yVDzrd" resolve="myBaseEditor" />
            </node>
          </node>
          <node concept="3clFbS" id="2D6byw_h8qm" role="3clFbx">
            <node concept="3clFbF" id="23PS3yVEh1c" role="3cqZAp">
              <node concept="2OqwBi" id="23PS3yVEkhx" role="3clFbG">
                <node concept="liA8E" id="23PS3yVE$8G" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.dispose()" resolve="dispose" />
                </node>
                <node concept="37vLTw" id="23PS3yVEh1b" role="2Oq$k0">
                  <ref role="3cqZAo" node="23PS3yVDzrd" resolve="myBaseEditor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2D6byw_hyfS" role="3cqZAp">
              <node concept="37vLTI" id="2D6byw_hElh" role="3clFbG">
                <node concept="10Nm6u" id="2D6byw_hJ7q" role="37vLTx" />
                <node concept="37vLTw" id="2D6byw_hyfR" role="37vLTJ">
                  <ref role="3cqZAo" node="23PS3yVDzrd" resolve="myBaseEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jCAmFldNBs" role="3cqZAp">
          <node concept="37vLTI" id="jCAmFldR7t" role="3clFbG">
            <node concept="10Nm6u" id="jCAmFldSQ3" role="37vLTx" />
            <node concept="37vLTw" id="jCAmFldNBq" role="37vLTJ">
              <ref role="3cqZAo" node="jCAmFld4Ot" resolve="myLayeredPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3CHeQ8cz6EI" role="3cqZAp">
          <node concept="3clFbS" id="3CHeQ8cz6EK" role="3clFbx">
            <node concept="3clFbF" id="3CHeQ8czReG" role="3cqZAp">
              <node concept="2OqwBi" id="3CHeQ8czSoR" role="3clFbG">
                <node concept="37vLTw" id="3CHeQ8czReE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3CHeQ8cy8qU" resolve="myTempRepoFiles" />
                </node>
                <node concept="liA8E" id="3CHeQ8czUz_" role="2OqNvi">
                  <ref role="37wK5l" to="kip1:~FileSystemRepoBridge.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3CHeQ8czFmd" role="3cqZAp">
              <node concept="2OqwBi" id="3CHeQ8czGNP" role="3clFbG">
                <node concept="37vLTw" id="3CHeQ8czFmb" role="2Oq$k0">
                  <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
                </node>
                <node concept="liA8E" id="3CHeQ8czKKF" role="2OqNvi">
                  <ref role="37wK5l" to="cttk:5F0lsbynmkA" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3CHeQ8czsyI" role="3cqZAp">
              <node concept="37vLTI" id="3CHeQ8czw4l" role="3clFbG">
                <node concept="10Nm6u" id="3CHeQ8cz$ow" role="37vLTx" />
                <node concept="37vLTw" id="3CHeQ8czsyG" role="37vLTJ">
                  <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3CHeQ8c$3Kr" role="3cqZAp">
              <node concept="37vLTI" id="3CHeQ8c$8YY" role="3clFbG">
                <node concept="10Nm6u" id="3CHeQ8c$aN9" role="37vLTx" />
                <node concept="37vLTw" id="3CHeQ8c$3Kp" role="37vLTJ">
                  <ref role="3cqZAo" node="3CHeQ8cy8qU" resolve="myTempRepoFiles" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3CHeQ8czfTB" role="3clFbw">
            <node concept="10Nm6u" id="3CHeQ8czl1T" role="3uHU7w" />
            <node concept="37vLTw" id="3CHeQ8czcxL" role="3uHU7B">
              <ref role="3cqZAo" node="3CHeQ8cxRjW" resolve="myTempRepo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="2twBGhzw_Sd" role="jymVt">
      <property role="TrG5h" value="MyMouseListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2twBGhzw_Sj" role="1B3o_S" />
      <node concept="3uibUv" id="2twBGhzw_Sk" role="1zkMxy">
        <ref role="3uigEE" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
      </node>
      <node concept="3clFbW" id="2twBGhzw_Sf" role="jymVt">
        <node concept="3cqZAl" id="2twBGhzw_Sg" role="3clF45" />
        <node concept="3Tm1VV" id="2twBGhzw_Sh" role="1B3o_S" />
        <node concept="3clFbS" id="2twBGhzw_Si" role="3clF47" />
      </node>
      <node concept="3clFb_" id="2twBGhzw_Sl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="mousePressed" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="2twBGhzw_Sm" role="1B3o_S" />
        <node concept="3cqZAl" id="2twBGhzw_Sn" role="3clF45" />
        <node concept="37vLTG" id="2twBGhzw_So" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2twBGhzw_Sp" role="1tU5fm">
            <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="2twBGhzw_Sq" role="3clF47">
          <node concept="3clFbF" id="2twBGhzw_Tf" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz8Gj" role="3clFbG">
              <ref role="37wK5l" node="2twBGhzw_Sv" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2twBGhzw_Sr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="2twBGhzw_Tn" role="jymVt">
      <property role="TrG5h" value="MyFocusListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2twBGhzw_Tt" role="1B3o_S" />
      <node concept="3uibUv" id="2twBGhzw_Tu" role="1zkMxy">
        <ref role="3uigEE" to="hyam:~FocusAdapter" resolve="FocusAdapter" />
      </node>
      <node concept="3clFbW" id="2twBGhzw_Tp" role="jymVt">
        <node concept="3cqZAl" id="2twBGhzw_Tq" role="3clF45" />
        <node concept="3Tm1VV" id="2twBGhzw_Tr" role="1B3o_S" />
        <node concept="3clFbS" id="2twBGhzw_Ts" role="3clF47" />
      </node>
      <node concept="3clFb_" id="2twBGhzw_Tv" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="focusLost" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="2twBGhzw_Tw" role="1B3o_S" />
        <node concept="3cqZAl" id="2twBGhzw_Tx" role="3clF45" />
        <node concept="37vLTG" id="2twBGhzw_Ty" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="2twBGhzw_Tz" role="1tU5fm">
            <ref role="3uigEE" to="hyam:~FocusEvent" resolve="FocusEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="2twBGhzw_T$" role="3clF47">
          <node concept="3clFbF" id="2twBGhzw_TD" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyYgM" role="3clFbG">
              <ref role="37wK5l" node="2twBGhzw_Sv" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2twBGhzw_T_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1LVXsqEggck">
    <property role="TrG5h" value="ChangesStripActionsHelper" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="3w_vEw9JdqK" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3w_vEw9JbBG" role="1B3o_S" />
      <node concept="3uibUv" id="3w_vEw9JdqD" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="3w_vEw9Jkkh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEditorContext" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3w_vEw9JdVR" role="1B3o_S" />
      <node concept="3uibUv" id="3w_vEw9JkiG" role="1tU5fm">
        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1LVXsqEggcl" role="1B3o_S" />
    <node concept="2tJIrI" id="3w_vEw9Jkzc" role="jymVt" />
    <node concept="3clFbW" id="1LVXsqEggcm" role="jymVt">
      <node concept="3cqZAl" id="1LVXsqEggcn" role="3clF45" />
      <node concept="3Tm1VV" id="3w_vEw9ITCL" role="1B3o_S" />
      <node concept="3clFbS" id="1LVXsqEggcp" role="3clF47">
        <node concept="3clFbF" id="3w_vEw9Jl7e" role="3cqZAp">
          <node concept="37vLTI" id="3w_vEw9JlIg" role="3clFbG">
            <node concept="37vLTw" id="3w_vEw9Jm4R" role="37vLTx">
              <ref role="3cqZAo" node="3w_vEw9JaSA" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="3w_vEw9Jl7d" role="37vLTJ">
              <ref role="3cqZAo" node="3w_vEw9JdqK" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9Jmye" role="3cqZAp">
          <node concept="37vLTI" id="3w_vEw9JmLY" role="3clFbG">
            <node concept="37vLTw" id="3w_vEw9Jn09" role="37vLTx">
              <ref role="3cqZAo" node="3w_vEw9JaTc" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="3w_vEw9Jmyc" role="37vLTJ">
              <ref role="3cqZAo" node="3w_vEw9Jkkh" resolve="myEditorContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3w_vEw9JaSA" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="3w_vEw9JaS_" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="3w_vEw9Jbiu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3w_vEw9JaTc" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="3w_vEw9JbdX" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="3w_vEw9Jbgh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3w_vEw9Jn1a" role="jymVt" />
    <node concept="3clFb_" id="3w_vEw9L3tQ" role="jymVt">
      <property role="TrG5h" value="getNeighbourChangeGroup" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9L3tY" role="3clF47">
        <node concept="3cpWs6" id="3w_vEw9L3tZ" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9L3u0" role="3cqZAk">
            <node concept="1rXfSq" id="3w_vEw9L3u1" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
            </node>
            <node concept="liA8E" id="3w_vEw9L3u2" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEgg_N" resolve="getNeighbourChangeGroup" />
              <node concept="2OqwBi" id="3w_vEw9L9cg" role="37wK5m">
                <node concept="37vLTw" id="3w_vEw9LbjM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9Jkkh" resolve="myEditorContext" />
                </node>
                <node concept="liA8E" id="3w_vEw9L3u5" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                </node>
              </node>
              <node concept="37vLTw" id="3w_vEw9L3u6" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9L3tW" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w_vEw9L3tS" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="2AHcQZ" id="3w_vEw9L3u8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="3w_vEw9L3tW" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="3w_vEw9L3tX" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="3w_vEw9L3u7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3w_vEw9LcN5" role="jymVt" />
    <node concept="3clFb_" id="3w_vEw9L$1o" role="jymVt">
      <property role="TrG5h" value="isNeighbourGroupAvailable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9L$1w" role="3clF47">
        <node concept="3clFbF" id="3w_vEw9L$1x" role="3cqZAp">
          <node concept="3y3z36" id="3w_vEw9L$1y" role="3clFbG">
            <node concept="10Nm6u" id="3w_vEw9L$1z" role="3uHU7w" />
            <node concept="1rXfSq" id="3w_vEw9L$1$" role="3uHU7B">
              <ref role="37wK5l" node="3w_vEw9L3tQ" resolve="getNeighbourChangeGroup" />
              <node concept="37vLTw" id="3w_vEw9L$1_" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9L$1u" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3w_vEw9L$1q" role="3clF45" />
      <node concept="37vLTG" id="3w_vEw9L$1u" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="3w_vEw9L$1v" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3w_vEw9L$1A" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3w_vEw9LFP0" role="jymVt">
      <property role="TrG5h" value="goToNeighbourGroup" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9LFP8" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9LFP9" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9LFPa" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3uibUv" id="3w_vEw9LFPb" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
            </node>
            <node concept="1rXfSq" id="3w_vEw9LFPc" role="33vP2m">
              <ref role="37wK5l" node="3w_vEw9L3tQ" resolve="getNeighbourChangeGroup" />
              <node concept="37vLTw" id="3w_vEw9LFPe" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9LFP6" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3w_vEw9LFPf" role="3cqZAp">
          <node concept="3clFbS" id="3w_vEw9LFPg" role="3clFbx">
            <node concept="3cpWs6" id="3w_vEw9LFPh" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3w_vEw9LFPi" role="3clFbw">
            <node concept="10Nm6u" id="3w_vEw9LFPj" role="3uHU7w" />
            <node concept="37vLTw" id="3w_vEw9LFPk" role="3uHU7B">
              <ref role="3cqZAo" node="3w_vEw9LFPa" resolve="group" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9LFPl" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9LFPm" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="3w_vEw9LFPn" role="33vP2m">
              <node concept="3uibUv" id="3w_vEw9LFPo" role="10QFUM">
                <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="3w_vEw9LFPp" role="10QFUP">
                <node concept="37vLTw" id="3w_vEw9LJQH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9Jkkh" resolve="myEditorContext" />
                </node>
                <node concept="liA8E" id="3w_vEw9LFPr" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3w_vEw9LFPs" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9LFPt" role="3cqZAp">
          <node concept="1rXfSq" id="3w_vEw9LFPu" role="3clFbG">
            <ref role="37wK5l" node="1LVXsqEghbJ" resolve="goToY" />
            <node concept="37vLTw" id="3w_vEw9LFPv" role="37wK5m">
              <ref role="3cqZAo" node="3w_vEw9LFPm" resolve="editorComponent" />
            </node>
            <node concept="2OqwBi" id="3w_vEw9LFPw" role="37wK5m">
              <node concept="2OqwBi" id="3w_vEw9LFPx" role="2Oq$k0">
                <node concept="37vLTw" id="3w_vEw9LFPy" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9LFPa" resolve="group" />
                </node>
                <node concept="liA8E" id="3w_vEw9LFPz" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                  <node concept="3clFbT" id="3w_vEw9LFP$" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2sxana" id="3w_vEw9LFP_" role="2OqNvi">
                <ref role="2sxfKC" to="hdhb:42hl10VH9Iz" resolve="end" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9LFPA" role="3cqZAp">
          <node concept="1rXfSq" id="3w_vEw9LFPB" role="3clFbG">
            <ref role="37wK5l" node="1LVXsqEghbJ" resolve="goToY" />
            <node concept="37vLTw" id="3w_vEw9LFPC" role="37wK5m">
              <ref role="3cqZAo" node="3w_vEw9LFPm" resolve="editorComponent" />
            </node>
            <node concept="2OqwBi" id="3w_vEw9LFPD" role="37wK5m">
              <node concept="2OqwBi" id="3w_vEw9LFPE" role="2Oq$k0">
                <node concept="37vLTw" id="3w_vEw9LFPF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9LFPa" resolve="group" />
                </node>
                <node concept="liA8E" id="3w_vEw9LFPG" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
                  <node concept="3clFbT" id="3w_vEw9LFPH" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2sxana" id="3w_vEw9LFPI" role="2OqNvi">
                <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9LFPJ" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9LFPK" role="3clFbG">
            <node concept="1rXfSq" id="3w_vEw9LFPL" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
            </node>
            <node concept="liA8E" id="3w_vEw9LFPN" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEggE$" resolve="showPopupForGroup" />
              <node concept="37vLTw" id="3w_vEw9LFPO" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9LFPa" resolve="group" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3w_vEw9LFP2" role="3clF45" />
      <node concept="37vLTG" id="3w_vEw9LFP6" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="10P_77" id="3w_vEw9LFP7" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3w_vEw9LFPP" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="1LVXsqEghbJ" role="jymVt">
      <property role="TrG5h" value="goToY" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="1LVXsqEghbt" role="3clF45" />
      <node concept="37vLTG" id="1LVXsqEghbx" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="1LVXsqEghby" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="1LVXsqEghbN" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1LVXsqEghbP" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1LVXsqEghbv" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbcY" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbcZ" role="3cpWs9">
            <property role="TrG5h" value="editorCell" />
            <node concept="3uibUv" id="$0IQ_NQqya" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="42hl10VHbd1" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm7MZ" role="2Oq$k0">
                <ref role="3cqZAo" node="1LVXsqEghbx" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="42hl10VHbd3" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.findCellWeak(int,int)" resolve="findCellWeak" />
                <node concept="3cmrfG" id="42hl10VHbd4" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cpWs3" id="42hl10VHbd5" role="37wK5m">
                  <node concept="3cmrfG" id="42hl10VHbd6" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxghfr4" role="3uHU7B">
                    <ref role="3cqZAo" node="1LVXsqEghbN" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="42hl10VHbd8" role="3cqZAp">
          <node concept="3clFbS" id="42hl10VHbd9" role="3clFbx">
            <node concept="3clFbF" id="42hl10VHbda" role="3cqZAp">
              <node concept="2OqwBi" id="42hl10VHbdb" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm7gL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LVXsqEghbx" resolve="editorComponent" />
                </node>
                <node concept="liA8E" id="42hl10VHbdd" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.changeSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="changeSelection" />
                  <node concept="37vLTw" id="3GM_nagTv8u" role="37wK5m">
                    <ref role="3cqZAo" node="42hl10VHbcZ" resolve="editorCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="42hl10VHbdf" role="3clFbw">
            <node concept="10Nm6u" id="42hl10VHbdg" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTAO7" role="3uHU7B">
              <ref role="3cqZAo" node="42hl10VHbcZ" resolve="editorCell" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1LVXsqEghbw" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3w_vEw9Jnk0" role="jymVt">
      <property role="TrG5h" value="getHighlighter" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9Jnk6" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9Jnk7" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Jnk8" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="2OqwBi" id="3w_vEw9Jnkb" role="33vP2m">
              <node concept="37vLTw" id="3w_vEw9JBrh" role="2Oq$k0">
                <ref role="3cqZAo" node="3w_vEw9Jkkh" resolve="myEditorContext" />
              </node>
              <node concept="liA8E" id="3w_vEw9Jnkd" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="3uibUv" id="6C9ueeimoiW" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3w_vEw9Jnkf" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9Jnkg" role="3cqZAk">
            <node concept="liA8E" id="3w_vEw9Jnkn" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEggg1" resolve="getHighlighter" />
              <node concept="37vLTw" id="3w_vEw9Jnko" role="37wK5m">
                <ref role="3cqZAo" node="3w_vEw9Jnk8" resolve="editorComponent" />
              </node>
            </node>
            <node concept="2YIFZM" id="6C9ueeimuM5" role="2Oq$k0">
              <ref role="37wK5l" node="31IQ8dwSM13" resolve="getInstance" />
              <ref role="1Pybhc" node="5zpsdFy5CyP" resolve="EditorHighlighterFactory" />
              <node concept="2OqwBi" id="6C9ueeimE5Y" role="37wK5m">
                <node concept="37vLTw" id="6C9ueeimy1F" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9JdqK" resolve="myProject" />
                </node>
                <node concept="liA8E" id="6C9ueeimHVW" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w_vEw9Jnk3" role="3clF45">
        <ref role="3uigEE" node="5zpsdFy5B1u" resolve="EditorHighlighter" />
      </node>
      <node concept="2AHcQZ" id="3w_vEw9Jnkp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="3w_vEw9Jnk2" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3w_vEw9JBsY" role="jymVt">
      <property role="TrG5h" value="getPainter" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9JBt4" role="3clF47">
        <node concept="3cpWs6" id="3w_vEw9JBt5" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9JBt6" role="3cqZAk">
            <node concept="1rXfSq" id="3w_vEw9JBt7" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9Jnk0" resolve="getHighlighter" />
            </node>
            <node concept="liA8E" id="3w_vEw9JBt9" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEggho" resolve="getStripsPainter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w_vEw9JBt1" role="3clF45">
        <ref role="3uigEE" node="K9wxfKEuYQ" resolve="ChangeStripsPainter" />
      </node>
      <node concept="2AHcQZ" id="3w_vEw9JBta" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="3w_vEw9JBt0" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3w_vEw9JNy2" role="jymVt">
      <property role="TrG5h" value="getCurrentChangeGroup" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9JNy6" role="3clF47">
        <node concept="3cpWs6" id="3w_vEw9JNy7" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9JNy8" role="3cqZAk">
            <node concept="1rXfSq" id="3w_vEw9JNy9" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
            </node>
            <node concept="liA8E" id="3w_vEw9JNya" role="2OqNvi">
              <ref role="37wK5l" node="4oRgVqwe_b$" resolve="getCurrentChangeGroup" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w_vEw9JNy4" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
      </node>
      <node concept="2AHcQZ" id="3w_vEw9JNyb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="3w_vEw9JNy5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3w_vEw9KIX8" role="jymVt" />
    <node concept="3clFb_" id="3w_vEw9Kyu9" role="jymVt">
      <property role="TrG5h" value="rollbackChanges" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9Kyug" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9Kyuh" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Kyui" role="3cpWs9">
            <property role="TrG5h" value="changes" />
            <node concept="_YKpA" id="3w_vEw9Kyuj" role="1tU5fm">
              <node concept="3uibUv" id="3w_vEw9Kyuk" role="_ZDj9">
                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
              </node>
            </node>
            <node concept="2EnYce" id="3w_vEw9Kyul" role="33vP2m">
              <node concept="1rXfSq" id="3w_vEw9Kyum" role="2Oq$k0">
                <ref role="37wK5l" node="3w_vEw9JNy2" resolve="getCurrentChangeGroup" />
              </node>
              <node concept="liA8E" id="3w_vEw9Kyuo" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3w_vEw9Kyup" role="3cqZAp">
          <node concept="3clFbS" id="3w_vEw9Kyuq" role="3clFbx">
            <node concept="3cpWs6" id="3w_vEw9Kyur" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3w_vEw9Kyus" role="3clFbw">
            <node concept="10Nm6u" id="3w_vEw9Kyut" role="3uHU7w" />
            <node concept="37vLTw" id="3w_vEw9Kyuu" role="3uHU7B">
              <ref role="3cqZAo" node="3w_vEw9Kyui" resolve="changes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9Kyuv" role="3cqZAp">
          <node concept="2OqwBi" id="3w_vEw9Kyuw" role="3clFbG">
            <node concept="2OqwBi" id="3w_vEw9Kyux" role="2Oq$k0">
              <node concept="2OqwBi" id="3w_vEw9Kyuy" role="2Oq$k0">
                <node concept="37vLTw" id="3w_vEw9KDRM" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9Jkkh" resolve="myEditorContext" />
                </node>
                <node concept="liA8E" id="3w_vEw9Kyu$" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9Kyu_" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3w_vEw9KyuA" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
              <node concept="1bVj0M" id="3w_vEw9KyuB" role="37wK5m">
                <node concept="3clFbS" id="3w_vEw9KyuC" role="1bW5cS">
                  <node concept="3cpWs8" id="3w_vEw9KyuD" role="3cqZAp">
                    <node concept="3cpWsn" id="3w_vEw9KyuE" role="3cpWs9">
                      <property role="TrG5h" value="model" />
                      <node concept="H_c77" id="3w_vEw9KyuF" role="1tU5fm" />
                      <node concept="2OqwBi" id="3w_vEw9KyuG" role="33vP2m">
                        <node concept="2OqwBi" id="3w_vEw9KyuH" role="2Oq$k0">
                          <node concept="2OqwBi" id="3w_vEw9KyuI" role="2Oq$k0">
                            <node concept="37vLTw" id="3w_vEw9KyuJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3w_vEw9Kyui" resolve="changes" />
                            </node>
                            <node concept="1uHKPH" id="3w_vEw9KyuK" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="3w_vEw9KyuL" role="2OqNvi">
                            <ref role="37wK5l" to="btf5:5x0q8wkvS4u" resolve="getChangeSet" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3w_vEw9KyuM" role="2OqNvi">
                          <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3w_vEw9KyuN" role="3cqZAp">
                    <node concept="3cpWsn" id="3w_vEw9KyuO" role="3cpWs9">
                      <property role="TrG5h" value="nc" />
                      <node concept="3uibUv" id="3w_vEw9KyuP" role="1tU5fm">
                        <ref role="3uigEE" to="btf5:69abr3GmYnQ" resolve="NodeCopier" />
                      </node>
                      <node concept="2ShNRf" id="3w_vEw9KyuQ" role="33vP2m">
                        <node concept="1pGfFk" id="3w_vEw9KyuR" role="2ShVmc">
                          <ref role="37wK5l" to="btf5:69abr3GmYsP" resolve="NodeCopier" />
                          <node concept="37vLTw" id="3w_vEw9KyuS" role="37wK5m">
                            <ref role="3cqZAo" node="3w_vEw9KyuE" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3w_vEw9KyuT" role="3cqZAp">
                    <node concept="3cpWsn" id="3w_vEw9KyuU" role="3cpWs9">
                      <property role="TrG5h" value="oppositeChanges" />
                      <node concept="A3Dl8" id="3w_vEw9KyuV" role="1tU5fm">
                        <node concept="3uibUv" id="3w_vEw9KyuW" role="A3Ik2">
                          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3w_vEw9KyuX" role="33vP2m">
                        <node concept="37vLTw" id="3w_vEw9KyuY" role="2Oq$k0">
                          <ref role="3cqZAo" node="3w_vEw9Kyui" resolve="changes" />
                        </node>
                        <node concept="3$u5V9" id="3w_vEw9KyuZ" role="2OqNvi">
                          <node concept="1bVj0M" id="3w_vEw9Kyv0" role="23t8la">
                            <node concept="3clFbS" id="3w_vEw9Kyv1" role="1bW5cS">
                              <node concept="3clFbF" id="3w_vEw9Kyv2" role="3cqZAp">
                                <node concept="2OqwBi" id="3w_vEw9Kyv3" role="3clFbG">
                                  <node concept="37vLTw" id="3w_vEw9Kyv4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XLi" resolve="ch" />
                                  </node>
                                  <node concept="liA8E" id="3w_vEw9Kyv5" role="2OqNvi">
                                    <ref role="37wK5l" to="btf5:2WueYNNT$jz" resolve="getOppositeChange" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XLi" role="1bW2Oz">
                              <property role="TrG5h" value="ch" />
                              <node concept="2jxLKc" id="5W7E4fV0XLj" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="3w_vEw9Kyv8" role="3cqZAp">
                    <node concept="2GrKxI" id="3w_vEw9Kyv9" role="2Gsz3X">
                      <property role="TrG5h" value="ch" />
                    </node>
                    <node concept="37vLTw" id="3w_vEw9Kyva" role="2GsD0m">
                      <ref role="3cqZAo" node="3w_vEw9KyuU" resolve="oppositeChanges" />
                    </node>
                    <node concept="3clFbS" id="3w_vEw9Kyvb" role="2LFqv$">
                      <node concept="3clFbJ" id="3w_vEw9Kyvc" role="3cqZAp">
                        <node concept="2ZW3vV" id="3w_vEw9Kyvd" role="3clFbw">
                          <node concept="3uibUv" id="3w_vEw9Kyve" role="2ZW6by">
                            <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                          </node>
                          <node concept="2GrUjf" id="3w_vEw9Kyvf" role="2ZW6bz">
                            <ref role="2Gs0qQ" node="3w_vEw9Kyv9" resolve="ch" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3w_vEw9Kyvg" role="3clFbx">
                          <node concept="3clFbF" id="3w_vEw9Kyvh" role="3cqZAp">
                            <node concept="2OqwBi" id="3w_vEw9Kyvi" role="3clFbG">
                              <node concept="1eOMI4" id="3w_vEw9Kyvj" role="2Oq$k0">
                                <node concept="10QFUN" id="3w_vEw9Kyvk" role="1eOMHV">
                                  <node concept="3uibUv" id="3w_vEw9Kyvl" role="10QFUM">
                                    <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                                  </node>
                                  <node concept="2GrUjf" id="3w_vEw9Kyvm" role="10QFUP">
                                    <ref role="2Gs0qQ" node="3w_vEw9Kyv9" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3w_vEw9Kyvn" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:PhFjFi7uzM" resolve="prepare" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3w_vEw9Kyvo" role="3cqZAp">
                    <node concept="2OqwBi" id="3w_vEw9Kyvp" role="3clFbG">
                      <node concept="37vLTw" id="3w_vEw9Kyvq" role="2Oq$k0">
                        <ref role="3cqZAo" node="3w_vEw9KyuU" resolve="oppositeChanges" />
                      </node>
                      <node concept="2es0OD" id="3w_vEw9Kyvr" role="2OqNvi">
                        <node concept="1bVj0M" id="3w_vEw9Kyvs" role="23t8la">
                          <node concept="3clFbS" id="3w_vEw9Kyvt" role="1bW5cS">
                            <node concept="3clFbF" id="3w_vEw9Kyvu" role="3cqZAp">
                              <node concept="2OqwBi" id="3w_vEw9Kyvv" role="3clFbG">
                                <node concept="37vLTw" id="3w_vEw9Kyvw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0XLk" resolve="ch" />
                                </node>
                                <node concept="liA8E" id="3w_vEw9Kyvx" role="2OqNvi">
                                  <ref role="37wK5l" to="btf5:2W$ok$XX_PQ" resolve="apply" />
                                  <node concept="37vLTw" id="3w_vEw9Kyvy" role="37wK5m">
                                    <ref role="3cqZAo" node="3w_vEw9KyuE" resolve="model" />
                                  </node>
                                  <node concept="37vLTw" id="3w_vEw9Kyvz" role="37wK5m">
                                    <ref role="3cqZAo" node="3w_vEw9KyuO" resolve="nc" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XLk" role="1bW2Oz">
                            <property role="TrG5h" value="ch" />
                            <node concept="2jxLKc" id="5W7E4fV0XLl" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3w_vEw9KyvA" role="3cqZAp">
                    <node concept="2OqwBi" id="3w_vEw9KyvB" role="3clFbG">
                      <node concept="37vLTw" id="3w_vEw9KyvC" role="2Oq$k0">
                        <ref role="3cqZAo" node="3w_vEw9KyuO" resolve="nc" />
                      </node>
                      <node concept="liA8E" id="3w_vEw9KyvD" role="2OqNvi">
                        <ref role="37wK5l" to="btf5:69abr3GmYp9" resolve="restoreIds" />
                        <node concept="3clFbT" id="3w_vEw9KyvE" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3w_vEw9KyvF" role="3cqZAp">
                    <node concept="2EnYce" id="3w_vEw9KyvG" role="3clFbG">
                      <node concept="1rXfSq" id="3w_vEw9KyvH" role="2Oq$k0">
                        <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
                      </node>
                      <node concept="liA8E" id="3w_vEw9KyvJ" role="2OqNvi">
                        <ref role="37wK5l" node="1LVXsqEggE$" resolve="showPopupForGroup" />
                        <node concept="10Nm6u" id="3w_vEw9KyvK" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3w_vEw9Kyue" role="3clF45" />
      <node concept="3Tm1VV" id="3w_vEw9Kyuf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3w_vEw9KHmo" role="jymVt" />
    <node concept="3clFb_" id="3w_vEw9KM6r" role="jymVt">
      <property role="TrG5h" value="getCurrentChangeGroupPositionAndHidePopup" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9KM6v" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9KM6w" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9KM6x" role="3cpWs9">
            <property role="TrG5h" value="cg" />
            <node concept="3uibUv" id="3w_vEw9KM6y" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
            </node>
            <node concept="1rXfSq" id="3w_vEw9KM6z" role="33vP2m">
              <ref role="37wK5l" node="3w_vEw9JNy2" resolve="getCurrentChangeGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9KM6_" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9KM6A" role="3clFbG">
            <node concept="1rXfSq" id="3w_vEw9KQfO" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
            </node>
            <node concept="liA8E" id="3w_vEw9KM6D" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEggE$" resolve="showPopupForGroup" />
              <node concept="10Nm6u" id="3w_vEw9KM6E" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3w_vEw9KM6F" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9KM6G" role="3cqZAk">
            <node concept="37vLTw" id="3w_vEw9KM6H" role="2Oq$k0">
              <ref role="3cqZAo" node="3w_vEw9KM6x" resolve="cg" />
            </node>
            <node concept="liA8E" id="3w_vEw9KM6I" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHag_" resolve="getBounds" />
              <node concept="3clFbT" id="3w_vEw9KM6J" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pR195" id="3w_vEw9KM6t" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
      </node>
      <node concept="3Tm1VV" id="3w_vEw9KM6u" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3w_vEw9KVQ2" role="jymVt" />
    <node concept="3clFb_" id="3w_vEw9LeMD" role="jymVt">
      <property role="TrG5h" value="areOldNodesAvailable" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9LeMK" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9LeML" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9LeMM" role="3cpWs9">
            <property role="TrG5h" value="cg" />
            <node concept="3uibUv" id="3w_vEw9LeMN" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
            </node>
            <node concept="1rXfSq" id="3w_vEw9LeMO" role="33vP2m">
              <ref role="37wK5l" node="3w_vEw9JNy2" resolve="getCurrentChangeGroup" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3w_vEw9LeMQ" role="3cqZAp">
          <node concept="1Wc70l" id="3w_vEw9LeMR" role="3cqZAk">
            <node concept="3y3z36" id="3w_vEw9LeMS" role="3uHU7w">
              <node concept="Rm8GO" id="3w_vEw9LeMT" role="3uHU7w">
                <ref role="Rm8GQ" to="btf5:7inhnIFBpHO" resolve="ADD" />
                <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
              </node>
              <node concept="2OqwBi" id="3w_vEw9LeMU" role="3uHU7B">
                <node concept="37vLTw" id="3w_vEw9LeMV" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9LeMM" resolve="cg" />
                </node>
                <node concept="liA8E" id="3w_vEw9LeMW" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHagR" resolve="getChangeType" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3w_vEw9LeMX" role="3uHU7B">
              <node concept="37vLTw" id="3w_vEw9LeMY" role="3uHU7B">
                <ref role="3cqZAo" node="3w_vEw9LeMM" resolve="cg" />
              </node>
              <node concept="10Nm6u" id="3w_vEw9LeMZ" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3w_vEw9LeMI" role="3clF45" />
      <node concept="3Tm1VV" id="3w_vEw9LeMJ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3w_vEw9Lh6S" role="jymVt">
      <property role="TrG5h" value="copyOldNodes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3w_vEw9Lh6Z" role="3clF47">
        <node concept="3cpWs8" id="3w_vEw9Lh70" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lh71" role="3cpWs9">
            <property role="TrG5h" value="changeGroup" />
            <node concept="3uibUv" id="3w_vEw9Lh72" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
            </node>
            <node concept="1rXfSq" id="3w_vEw9Lh73" role="33vP2m">
              <ref role="37wK5l" node="3w_vEw9JNy2" resolve="getCurrentChangeGroup" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="3w_vEw9Lh75" role="3cqZAp">
          <node concept="3y3z36" id="3w_vEw9Lh76" role="1gVkn0">
            <node concept="10Nm6u" id="3w_vEw9Lh77" role="3uHU7w" />
            <node concept="37vLTw" id="3w_vEw9Lh78" role="3uHU7B">
              <ref role="3cqZAo" node="3w_vEw9Lh71" resolve="changeGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9Lh79" role="3cqZAp" />
        <node concept="3cpWs8" id="3w_vEw9Lh7a" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lh7b" role="3cpWs9">
            <property role="TrG5h" value="oldModel" />
            <node concept="2OqwBi" id="3w_vEw9Lh7c" role="33vP2m">
              <node concept="2OqwBi" id="3w_vEw9Lh7d" role="2Oq$k0">
                <node concept="2OqwBi" id="3w_vEw9Lh7e" role="2Oq$k0">
                  <node concept="2OqwBi" id="3w_vEw9Lh7f" role="2Oq$k0">
                    <node concept="37vLTw" id="3w_vEw9Lh7g" role="2Oq$k0">
                      <ref role="3cqZAo" node="3w_vEw9Lh71" resolve="changeGroup" />
                    </node>
                    <node concept="liA8E" id="3w_vEw9Lh7h" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="3w_vEw9Lh7i" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="3w_vEw9Lh7j" role="2OqNvi">
                  <ref role="37wK5l" to="btf5:5x0q8wkvS4u" resolve="getChangeSet" />
                </node>
              </node>
              <node concept="liA8E" id="3w_vEw9Lh7k" role="2OqNvi">
                <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
              </node>
            </node>
            <node concept="H_c77" id="3w_vEw9Lh7l" role="1tU5fm" />
          </node>
        </node>
        <node concept="3SKdUt" id="3w_vEw9Lh7m" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom9s" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom9t" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9u" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9v" role="1PaTwD">
              <property role="3oM_SC" value="need???" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9w" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9x" role="1PaTwD">
              <property role="3oM_SC" value="were" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9y" role="1PaTwD">
              <property role="3oM_SC" value="no" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9z" role="1PaTwD">
              <property role="3oM_SC" value="de-registration" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3CHeQ8cK1Mp" role="3cqZAp">
          <node concept="1PaTwC" id="3CHeQ8cK1Mq" role="1aUNEU">
            <node concept="3oM_SD" id="3CHeQ8cK33O" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK34O" role="1PaTwD">
              <property role="3oM_SC" value="(a)" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK45A" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK46S" role="1PaTwD">
              <property role="3oM_SC" value="sure" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK47b" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4bx" role="1PaTwD">
              <property role="3oM_SC" value="paste" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4cN" role="1PaTwD">
              <property role="3oM_SC" value="comment" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4f4" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4f5" role="1PaTwD">
              <property role="3oM_SC" value="still" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4iD" role="1PaTwD">
              <property role="3oM_SC" value="relevant;" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4jD" role="1PaTwD">
              <property role="3oM_SC" value="(b)" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4kw" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4lM" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4qT" role="1PaTwD">
              <property role="3oM_SC" value="is," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4rc" role="1PaTwD">
              <property role="3oM_SC" value="let" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4su" role="1PaTwD">
              <property role="3oM_SC" value="getPainter():ChangeStripsPainter" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4O_" role="1PaTwD">
              <property role="3oM_SC" value="hold" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4PR" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4UE" role="1PaTwD">
              <property role="3oM_SC" value="clone" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4UF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4VF" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4VG" role="1PaTwD">
              <property role="3oM_SC" value="temp" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cK4WY" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3jLQrYdLfoe" role="3cqZAp">
          <node concept="3clFbS" id="3jLQrYdLfog" role="3clFbx">
            <node concept="3SKdUt" id="3jLQrYdLz4u" role="3cqZAp">
              <node concept="1PaTwC" id="3jLQrYdLz4v" role="1aUNEU">
                <node concept="3oM_SD" id="3jLQrYdLz4x" role="1PaTwD">
                  <property role="3oM_SC" value="without" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz5u" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz5x" role="1PaTwD">
                  <property role="3oM_SC" value="registration" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz6d" role="1PaTwD">
                  <property role="3oM_SC" value="reference" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz86" role="1PaTwD">
                  <property role="3oM_SC" value="resolving" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz6s" role="1PaTwD">
                  <property role="3oM_SC" value="doesn't" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz6G" role="1PaTwD">
                  <property role="3oM_SC" value="work" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz75" role="1PaTwD">
                  <property role="3oM_SC" value="during" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz7n" role="1PaTwD">
                  <property role="3oM_SC" value="paste:" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz8S" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz9d" role="1PaTwD">
                  <property role="3oM_SC" value="be" />
                </node>
                <node concept="3oM_SD" id="3jLQrYdLz9p" role="1PaTwD">
                  <property role="3oM_SC" value="fixed" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3w_vEw9Lh7o" role="3cqZAp">
              <node concept="2YIFZM" id="3w_vEw9Lh7p" role="3clFbG">
                <ref role="37wK5l" to="hdhb:2v$NtEHjiFm" resolve="renameModelAndRegister" />
                <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                <node concept="37vLTw" id="3w_vEw9Lh7q" role="37wK5m">
                  <ref role="3cqZAo" node="3w_vEw9Lh7b" resolve="oldModel" />
                </node>
                <node concept="Xl_RD" id="3w_vEw9Lh7r" role="37wK5m">
                  <property role="Xl_RC" value="old" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3jLQrYdLvmv" role="3clFbw">
            <node concept="10Nm6u" id="3jLQrYdLwX1" role="3uHU7w" />
            <node concept="2OqwBi" id="3jLQrYdLuac" role="3uHU7B">
              <node concept="2JrnkZ" id="3jLQrYdLsBd" role="2Oq$k0">
                <node concept="37vLTw" id="3jLQrYdLhXi" role="2JrQYb">
                  <ref role="3cqZAo" node="3w_vEw9Lh7b" resolve="oldModel" />
                </node>
              </node>
              <node concept="liA8E" id="3jLQrYdLveU" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9Lh7s" role="3cqZAp" />
        <node concept="3SKdUt" id="3w_vEw9Lh7t" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom9$" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom9_" role="1PaTwD">
              <property role="3oM_SC" value="compute" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9A" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9B" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9C" role="1PaTwD">
              <property role="3oM_SC" value="root" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9Lh7v" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lh7w" role="3cpWs9">
            <property role="TrG5h" value="baseNodes" />
            <node concept="A3Dl8" id="3w_vEw9Lh7x" role="1tU5fm">
              <node concept="3Tqbb2" id="3w_vEw9Lh7y" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="3w_vEw9Lh7z" role="33vP2m">
              <node concept="2OqwBi" id="3w_vEw9Lh7$" role="2Oq$k0">
                <node concept="37vLTw" id="3w_vEw9Lh7_" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9Lh71" resolve="changeGroup" />
                </node>
                <node concept="liA8E" id="3w_vEw9Lh7A" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                </node>
              </node>
              <node concept="3goQfb" id="3w_vEw9Lh7B" role="2OqNvi">
                <node concept="1bVj0M" id="3w_vEw9Lh7C" role="23t8la">
                  <node concept="3clFbS" id="3w_vEw9Lh7D" role="1bW5cS">
                    <node concept="3clFbJ" id="3w_vEw9Lh7E" role="3cqZAp">
                      <node concept="2ZW3vV" id="3w_vEw9Lh7F" role="3clFbw">
                        <node concept="3uibUv" id="3w_vEw9Lh7G" role="2ZW6by">
                          <ref role="3uigEE" to="btf5:4W7A6jbeACg" resolve="NodeChange" />
                        </node>
                        <node concept="37vLTw" id="3w_vEw9Lh7H" role="2ZW6bz">
                          <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3w_vEw9Lh7I" role="3clFbx">
                        <node concept="3cpWs6" id="3w_vEw9Lh7J" role="3cqZAp">
                          <node concept="2ShNRf" id="3w_vEw9Lh7K" role="3cqZAk">
                            <node concept="2HTt$P" id="3w_vEw9Lh7L" role="2ShVmc">
                              <node concept="2OqwBi" id="3w_vEw9Lh7M" role="2HTEbv">
                                <node concept="2JrnkZ" id="3w_vEw9Lh7N" role="2Oq$k0">
                                  <node concept="37vLTw" id="3w_vEw9Lh7O" role="2JrQYb">
                                    <ref role="3cqZAo" node="3w_vEw9Lh7b" resolve="oldModel" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3w_vEw9Lh7P" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                                  <node concept="2OqwBi" id="3w_vEw9Lh7Q" role="37wK5m">
                                    <node concept="1eOMI4" id="3w_vEw9Lh7R" role="2Oq$k0">
                                      <node concept="10QFUN" id="3w_vEw9Lh7S" role="1eOMHV">
                                        <node concept="37vLTw" id="3w_vEw9Lh7T" role="10QFUP">
                                          <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                                        </node>
                                        <node concept="3uibUv" id="3w_vEw9Lh7U" role="10QFUM">
                                          <ref role="3uigEE" to="btf5:4W7A6jbeACg" resolve="NodeChange" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3w_vEw9Lh7V" role="2OqNvi">
                                      <ref role="37wK5l" to="btf5:4W7A6jbeACU" resolve="getAffectedNodeId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tqbb2" id="3w_vEw9Lh7W" role="2HTBi0" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="3w_vEw9Lh7X" role="3eNLev">
                        <node concept="3clFbS" id="3w_vEw9Lh7Y" role="3eOfB_">
                          <node concept="3cpWs8" id="3w_vEw9Lh7Z" role="3cqZAp">
                            <node concept="3cpWsn" id="3w_vEw9Lh80" role="3cpWs9">
                              <property role="TrG5h" value="ngc" />
                              <node concept="3uibUv" id="3w_vEw9Lh81" role="1tU5fm">
                                <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                              </node>
                              <node concept="10QFUN" id="3w_vEw9Lh82" role="33vP2m">
                                <node concept="37vLTw" id="3w_vEw9Lh83" role="10QFUP">
                                  <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                                </node>
                                <node concept="3uibUv" id="3w_vEw9Lh84" role="10QFUM">
                                  <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="3w_vEw9Lh85" role="3cqZAp">
                            <node concept="3cpWsn" id="3w_vEw9Lh86" role="3cpWs9">
                              <property role="TrG5h" value="changeChildren" />
                              <node concept="2OqwBi" id="63cAeS_uhbH" role="33vP2m">
                                <node concept="37vLTw" id="63cAeS_ufLv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3w_vEw9Lh80" resolve="ngc" />
                                </node>
                                <node concept="liA8E" id="63cAeS_ujgO" role="2OqNvi">
                                  <ref role="37wK5l" to="btf5:63cAeS_l3ht" resolve="getChangedCollection" />
                                  <node concept="3clFbT" id="63cAeS_vooR" role="37wK5m">
                                    <property role="3clFbU" value="false" />
                                  </node>
                                </node>
                              </node>
                              <node concept="_YKpA" id="3w_vEw9Lh8k" role="1tU5fm">
                                <node concept="3uibUv" id="3w_vEw9Lh8l" role="_ZDj9">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="3w_vEw9Lh8m" role="3cqZAp">
                            <node concept="2OqwBi" id="3w_vEw9Lh8n" role="3cqZAk">
                              <node concept="37vLTw" id="3w_vEw9Lh8o" role="2Oq$k0">
                                <ref role="3cqZAo" node="3w_vEw9Lh86" resolve="changeChildren" />
                              </node>
                              <node concept="8snch" id="3w_vEw9Lh8p" role="2OqNvi">
                                <node concept="2OqwBi" id="3w_vEw9Lh8q" role="8sqot">
                                  <node concept="37vLTw" id="3w_vEw9Lh8r" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3w_vEw9Lh80" resolve="ngc" />
                                  </node>
                                  <node concept="liA8E" id="3w_vEw9Lh8s" role="2OqNvi">
                                    <ref role="37wK5l" to="btf5:PhFjFi6YEP" resolve="getBegin" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3w_vEw9Lh8t" role="8st4g">
                                  <node concept="37vLTw" id="3w_vEw9Lh8u" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3w_vEw9Lh80" resolve="ngc" />
                                  </node>
                                  <node concept="liA8E" id="3w_vEw9Lh8v" role="2OqNvi">
                                    <ref role="37wK5l" to="btf5:PhFjFi6YEV" resolve="getEnd" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="3w_vEw9Lh8w" role="3eO9$A">
                          <node concept="3uibUv" id="3w_vEw9Lh8x" role="2ZW6by">
                            <ref role="3uigEE" to="btf5:4k3fuHGsESX" resolve="NodeGroupChange" />
                          </node>
                          <node concept="37vLTw" id="3w_vEw9Lh8y" role="2ZW6bz">
                            <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="3w_vEw9Lh8z" role="9aQIa">
                        <node concept="3clFbS" id="3w_vEw9Lh8$" role="9aQI4">
                          <node concept="3cpWs6" id="3w_vEw9Lh8_" role="3cqZAp">
                            <node concept="2ShNRf" id="3w_vEw9Lh8A" role="3cqZAk">
                              <node concept="kMnCb" id="3w_vEw9Lh8B" role="2ShVmc">
                                <node concept="3Tqbb2" id="3w_vEw9Lh8C" role="kMuH3" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="$Z3RHQC7By" role="3eNLev">
                        <node concept="2ZW3vV" id="$Z3RHQCb1s" role="3eO9$A">
                          <node concept="3uibUv" id="$Z3RHQCdgh" role="2ZW6by">
                            <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                          </node>
                          <node concept="37vLTw" id="$Z3RHQC9mp" role="2ZW6bz">
                            <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="$Z3RHQC7B$" role="3eOfB_">
                          <node concept="3cpWs6" id="7v6p9iW5Dxb" role="3cqZAp">
                            <node concept="2ShNRf" id="7v6p9iW5Dxc" role="3cqZAk">
                              <node concept="2HTt$P" id="7v6p9iW5Dxd" role="2ShVmc">
                                <node concept="2OqwBi" id="7v6p9iW5Dxe" role="2HTEbv">
                                  <node concept="2JrnkZ" id="7v6p9iW5Dxf" role="2Oq$k0">
                                    <node concept="37vLTw" id="7v6p9iW5Dxg" role="2JrQYb">
                                      <ref role="3cqZAo" node="3w_vEw9Lh7b" resolve="oldModel" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7v6p9iW5Dxh" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                                    <node concept="2OqwBi" id="7v6p9iW5Dxi" role="37wK5m">
                                      <node concept="1eOMI4" id="7v6p9iW5Dxj" role="2Oq$k0">
                                        <node concept="10QFUN" id="7v6p9iW5Dxk" role="1eOMHV">
                                          <node concept="37vLTw" id="7v6p9iW5Dxl" role="10QFUP">
                                            <ref role="3cqZAo" node="5W7E4fV0XLm" resolve="ch" />
                                          </node>
                                          <node concept="3uibUv" id="7v6p9iW5Hz_" role="10QFUM">
                                            <ref role="3uigEE" to="btf5:2prfDaQ83wW" resolve="NodeIdChange" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7v6p9iW5Jrk" role="2OqNvi">
                                        <ref role="37wK5l" to="btf5:7v6p9iW3p60" resolve="getNodeId" />
                                        <node concept="3clFbT" id="7v6p9iW5PpP" role="37wK5m" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3Tqbb2" id="7v6p9iW5Dxo" role="2HTBi0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0XLm" role="1bW2Oz">
                    <property role="TrG5h" value="ch" />
                    <node concept="2jxLKc" id="5W7E4fV0XLn" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9Lh8F" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lh8G" role="3cpWs9">
            <property role="TrG5h" value="paths" />
            <node concept="_YKpA" id="3w_vEw9Lh8H" role="1tU5fm">
              <node concept="_YKpA" id="3w_vEw9Lh8I" role="_ZDj9">
                <node concept="3Tqbb2" id="3w_vEw9Lh8J" role="_ZDj9" />
              </node>
            </node>
            <node concept="2OqwBi" id="3w_vEw9Lh8K" role="33vP2m">
              <node concept="2OqwBi" id="3w_vEw9Lh8L" role="2Oq$k0">
                <node concept="37vLTw" id="3w_vEw9Lh8M" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9Lh7w" resolve="baseNodes" />
                </node>
                <node concept="3$u5V9" id="3w_vEw9Lh8N" role="2OqNvi">
                  <node concept="1bVj0M" id="3w_vEw9Lh8O" role="23t8la">
                    <node concept="3clFbS" id="3w_vEw9Lh8P" role="1bW5cS">
                      <node concept="3clFbF" id="3w_vEw9Lh8Q" role="3cqZAp">
                        <node concept="10QFUN" id="3w_vEw9Lh8R" role="3clFbG">
                          <node concept="2OqwBi" id="3w_vEw9Lh8S" role="10QFUP">
                            <node concept="2OqwBi" id="3w_vEw9Lh8T" role="2Oq$k0">
                              <node concept="37vLTw" id="3w_vEw9Lh8U" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0XLo" resolve="n" />
                              </node>
                              <node concept="z$bX8" id="3w_vEw9Lh8V" role="2OqNvi">
                                <node concept="1xIGOp" id="3w_vEw9Lh8W" role="1xVPHs" />
                              </node>
                            </node>
                            <node concept="35Qw8J" id="3w_vEw9Lh8X" role="2OqNvi" />
                          </node>
                          <node concept="_YKpA" id="3w_vEw9Lh8Y" role="10QFUM">
                            <node concept="3Tqbb2" id="3w_vEw9Lh8Z" role="_ZDj9" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XLo" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="2jxLKc" id="5W7E4fV0XLp" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3w_vEw9Lh92" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9Lh93" role="3cqZAp" />
        <node concept="3SKdUt" id="3w_vEw9Lh94" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom9D" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom9E" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9F" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9G" role="1PaTwD">
              <property role="3oM_SC" value="path" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9Lh96" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lh97" role="3cpWs9">
            <property role="TrG5h" value="commonPath" />
            <node concept="_YKpA" id="3w_vEw9Lh98" role="1tU5fm">
              <node concept="3Tqbb2" id="3w_vEw9Lh99" role="_ZDj9" />
            </node>
            <node concept="1y4W85" id="3w_vEw9Lh9a" role="33vP2m">
              <node concept="3cmrfG" id="3w_vEw9Lh9b" role="1y58nS">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3w_vEw9Lh9c" role="1y566C">
                <ref role="3cqZAo" node="3w_vEw9Lh8G" resolve="paths" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3w_vEw9Lh9d" role="3cqZAp">
          <node concept="2GrKxI" id="3w_vEw9Lh9e" role="2Gsz3X">
            <property role="TrG5h" value="pathToRoot" />
          </node>
          <node concept="37vLTw" id="3w_vEw9Lh9f" role="2GsD0m">
            <ref role="3cqZAo" node="3w_vEw9Lh8G" resolve="paths" />
          </node>
          <node concept="3clFbS" id="3w_vEw9Lh9g" role="2LFqv$">
            <node concept="1Dw8fO" id="3w_vEw9Lh9h" role="3cqZAp">
              <node concept="3cpWsn" id="3w_vEw9Lh9i" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3w_vEw9Lh9j" role="1tU5fm" />
                <node concept="3cmrfG" id="3w_vEw9Lh9k" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3clFbS" id="3w_vEw9Lh9l" role="2LFqv$">
                <node concept="3clFbJ" id="3w_vEw9Lh9m" role="3cqZAp">
                  <node concept="3y3z36" id="3w_vEw9Lh9n" role="3clFbw">
                    <node concept="1y4W85" id="3w_vEw9Lh9o" role="3uHU7w">
                      <node concept="37vLTw" id="3w_vEw9Lh9p" role="1y58nS">
                        <ref role="3cqZAo" node="3w_vEw9Lh9i" resolve="i" />
                      </node>
                      <node concept="2GrUjf" id="3w_vEw9Lh9q" role="1y566C">
                        <ref role="2Gs0qQ" node="3w_vEw9Lh9e" resolve="pathToRoot" />
                      </node>
                    </node>
                    <node concept="1y4W85" id="3w_vEw9Lh9r" role="3uHU7B">
                      <node concept="37vLTw" id="3w_vEw9Lh9s" role="1y58nS">
                        <ref role="3cqZAo" node="3w_vEw9Lh9i" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="3w_vEw9Lh9t" role="1y566C">
                        <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3w_vEw9Lh9u" role="3clFbx">
                    <node concept="3clFbF" id="3w_vEw9Lh9v" role="3cqZAp">
                      <node concept="37vLTI" id="3w_vEw9Lh9w" role="3clFbG">
                        <node concept="2OqwBi" id="3w_vEw9Lh9x" role="37vLTx">
                          <node concept="2OqwBi" id="3w_vEw9Lh9y" role="2Oq$k0">
                            <node concept="37vLTw" id="3w_vEw9Lh9z" role="2Oq$k0">
                              <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                            </node>
                            <node concept="8ftyA" id="3w_vEw9Lh9$" role="2OqNvi">
                              <node concept="37vLTw" id="3w_vEw9Lh9_" role="8f$Dv">
                                <ref role="3cqZAo" node="3w_vEw9Lh9i" resolve="i" />
                              </node>
                            </node>
                          </node>
                          <node concept="ANE8D" id="3w_vEw9Lh9A" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="3w_vEw9Lh9B" role="37vLTJ">
                          <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="3w_vEw9Lh9C" role="3cqZAp" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="3w_vEw9Lh9D" role="1Dwp0S">
                <node concept="2YIFZM" id="3w_vEw9Lh9E" role="3uHU7w">
                  <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                  <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                  <node concept="2OqwBi" id="3w_vEw9Lh9F" role="37wK5m">
                    <node concept="37vLTw" id="3w_vEw9Lh9G" role="2Oq$k0">
                      <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                    </node>
                    <node concept="34oBXx" id="3w_vEw9Lh9H" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3w_vEw9Lh9I" role="37wK5m">
                    <node concept="2GrUjf" id="3w_vEw9Lh9J" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3w_vEw9Lh9e" resolve="pathToRoot" />
                    </node>
                    <node concept="34oBXx" id="3w_vEw9Lh9K" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="3w_vEw9Lh9L" role="3uHU7B">
                  <ref role="3cqZAo" node="3w_vEw9Lh9i" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="3w_vEw9Lh9M" role="1Dwrff">
                <node concept="37vLTw" id="3w_vEw9Lh9N" role="2$L3a6">
                  <ref role="3cqZAo" node="3w_vEw9Lh9i" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3w_vEw9Lh9O" role="3cqZAp">
              <node concept="3clFbS" id="3w_vEw9Lh9P" role="3clFbx">
                <node concept="3clFbF" id="3w_vEw9Lh9Q" role="3cqZAp">
                  <node concept="37vLTI" id="3w_vEw9Lh9R" role="3clFbG">
                    <node concept="2OqwBi" id="3w_vEw9Lh9S" role="37vLTx">
                      <node concept="2OqwBi" id="3w_vEw9Lh9T" role="2Oq$k0">
                        <node concept="37vLTw" id="3w_vEw9Lh9U" role="2Oq$k0">
                          <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                        </node>
                        <node concept="8ftyA" id="3w_vEw9Lh9V" role="2OqNvi">
                          <node concept="2OqwBi" id="3w_vEw9Lh9W" role="8f$Dv">
                            <node concept="2GrUjf" id="3w_vEw9Lh9X" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3w_vEw9Lh9e" resolve="pathToRoot" />
                            </node>
                            <node concept="34oBXx" id="3w_vEw9Lh9Y" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="3w_vEw9Lh9Z" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="3w_vEw9Lha0" role="37vLTJ">
                      <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="3w_vEw9Lha1" role="3clFbw">
                <node concept="2OqwBi" id="3w_vEw9Lha2" role="3uHU7w">
                  <node concept="37vLTw" id="3w_vEw9Lha3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                  </node>
                  <node concept="34oBXx" id="3w_vEw9Lha4" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="3w_vEw9Lha5" role="3uHU7B">
                  <node concept="2GrUjf" id="3w_vEw9Lha6" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3w_vEw9Lh9e" resolve="pathToRoot" />
                  </node>
                  <node concept="34oBXx" id="3w_vEw9Lha7" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="3w_vEw9Lha8" role="3cqZAp">
          <node concept="3fqX7Q" id="3w_vEw9Lha9" role="1gVkn0">
            <node concept="2OqwBi" id="3w_vEw9Lhaa" role="3fr31v">
              <node concept="37vLTw" id="3w_vEw9Lhab" role="2Oq$k0">
                <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
              </node>
              <node concept="1v1jN8" id="3w_vEw9Lhac" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9Lhad" role="3cqZAp" />
        <node concept="3SKdUt" id="3w_vEw9Lhae" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXom9H" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXom9I" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9J" role="1PaTwD">
              <property role="3oM_SC" value="default," />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9K" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9L" role="1PaTwD">
              <property role="3oM_SC" value="common" />
            </node>
            <node concept="3oM_SD" id="ATZLwXom9M" role="1PaTwD">
              <property role="3oM_SC" value="ancestor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9Lhag" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lhah" role="3cpWs9">
            <property role="TrG5h" value="commonNode" />
            <node concept="3Tqbb2" id="3w_vEw9Lhai" role="1tU5fm" />
            <node concept="2OqwBi" id="3w_vEw9Lhaj" role="33vP2m">
              <node concept="37vLTw" id="3w_vEw9Lhak" role="2Oq$k0">
                <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
              </node>
              <node concept="1yVyf7" id="3w_vEw9Lhal" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3w_vEw9Lham" role="3cqZAp">
          <node concept="3cpWsn" id="3w_vEw9Lhan" role="3cpWs9">
            <property role="TrG5h" value="nodesToCopy" />
            <node concept="_YKpA" id="3w_vEw9Lhao" role="1tU5fm">
              <node concept="3Tqbb2" id="3w_vEw9Lhap" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="3w_vEw9Lhaq" role="33vP2m">
              <node concept="2ShNRf" id="3w_vEw9Lhar" role="2Oq$k0">
                <node concept="2HTt$P" id="3w_vEw9Lhas" role="2ShVmc">
                  <node concept="3Tqbb2" id="3w_vEw9Lhat" role="2HTBi0" />
                  <node concept="37vLTw" id="3w_vEw9Lhau" role="2HTEbv">
                    <ref role="3cqZAo" node="3w_vEw9Lhah" resolve="commonNode" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="3w_vEw9Lhav" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9Lhaw" role="3cqZAp" />
        <node concept="3clFbJ" id="3w_vEw9Lhax" role="3cqZAp">
          <node concept="3clFbS" id="3w_vEw9Lhay" role="3clFbx">
            <node concept="3cpWs8" id="3w_vEw9Lhaz" role="3cqZAp">
              <node concept="3cpWsn" id="3w_vEw9Lha$" role="3cpWs9">
                <property role="TrG5h" value="children" />
                <node concept="A3Dl8" id="3w_vEw9Lha_" role="1tU5fm">
                  <node concept="3Tqbb2" id="3w_vEw9LhaA" role="A3Ik2" />
                </node>
                <node concept="2OqwBi" id="3w_vEw9LhaB" role="33vP2m">
                  <node concept="37vLTw" id="3w_vEw9LhaC" role="2Oq$k0">
                    <ref role="3cqZAo" node="3w_vEw9Lh8G" resolve="paths" />
                  </node>
                  <node concept="3$u5V9" id="3w_vEw9LhaD" role="2OqNvi">
                    <node concept="1bVj0M" id="3w_vEw9LhaE" role="23t8la">
                      <node concept="3clFbS" id="3w_vEw9LhaF" role="1bW5cS">
                        <node concept="3clFbF" id="3w_vEw9LhaG" role="3cqZAp">
                          <node concept="1y4W85" id="3w_vEw9LhaH" role="3clFbG">
                            <node concept="2OqwBi" id="3w_vEw9LhaI" role="1y58nS">
                              <node concept="37vLTw" id="3w_vEw9LhaJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                              </node>
                              <node concept="34oBXx" id="3w_vEw9LhaK" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="3w_vEw9LhaL" role="1y566C">
                              <ref role="3cqZAo" node="5W7E4fV0XLq" resolve="p" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XLq" role="1bW2Oz">
                        <property role="TrG5h" value="p" />
                        <node concept="2jxLKc" id="5W7E4fV0XLr" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3w_vEw9LhaO" role="3cqZAp">
              <node concept="3cpWsn" id="3w_vEw9LhaP" role="3cpWs9">
                <property role="TrG5h" value="links" />
                <node concept="A3Dl8" id="3w_vEw9LhaQ" role="1tU5fm">
                  <node concept="3uibUv" id="2L2wprwSQRH" role="A3Ik2">
                    <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3w_vEw9LhaS" role="33vP2m">
                  <node concept="37vLTw" id="3w_vEw9LhaT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3w_vEw9Lha$" resolve="children" />
                  </node>
                  <node concept="3$u5V9" id="3w_vEw9LhaU" role="2OqNvi">
                    <node concept="1bVj0M" id="3w_vEw9LhaV" role="23t8la">
                      <node concept="3clFbS" id="3w_vEw9LhaW" role="1bW5cS">
                        <node concept="3clFbF" id="3w_vEw9LhaX" role="3cqZAp">
                          <node concept="2YIFZM" id="2L2wprwT0YD" role="3clFbG">
                            <ref role="37wK5l" to="i8bi:63cAeS_sgEb" resolve="getContainingLinkInChildrenAndChildAttributesCollection" />
                            <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                            <node concept="37vLTw" id="2L2wprwT1ro" role="37wK5m">
                              <ref role="3cqZAo" node="5W7E4fV0XLs" resolve="c" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0XLs" role="1bW2Oz">
                        <property role="TrG5h" value="c" />
                        <node concept="2jxLKc" id="5W7E4fV0XLt" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3w_vEw9Lhb5" role="3cqZAp">
              <node concept="3cpWsn" id="3w_vEw9Lhb6" role="3cpWs9">
                <property role="TrG5h" value="commonRole" />
                <node concept="3uibUv" id="2L2wprwT1Tx" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="2OqwBi" id="3w_vEw9Lhb8" role="33vP2m">
                  <node concept="37vLTw" id="3w_vEw9Lhb9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3w_vEw9LhaP" resolve="links" />
                  </node>
                  <node concept="1uHKPH" id="3w_vEw9Lhba" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3w_vEw9Lhbb" role="3cqZAp">
              <node concept="3clFbS" id="3w_vEw9Lhbc" role="3clFbx">
                <node concept="3cpWs8" id="3w_vEw9Lhbd" role="3cqZAp">
                  <node concept="3cpWsn" id="3w_vEw9Lhbe" role="3cpWs9">
                    <property role="TrG5h" value="indices" />
                    <node concept="A3Dl8" id="3w_vEw9Lhbf" role="1tU5fm">
                      <node concept="10Oyi0" id="3w_vEw9Lhbg" role="A3Ik2" />
                    </node>
                    <node concept="2OqwBi" id="3w_vEw9Lhbh" role="33vP2m">
                      <node concept="2OqwBi" id="3w_vEw9Lhbi" role="2Oq$k0">
                        <node concept="37vLTw" id="3w_vEw9Lhbj" role="2Oq$k0">
                          <ref role="3cqZAo" node="3w_vEw9Lha$" resolve="children" />
                        </node>
                        <node concept="3$u5V9" id="3w_vEw9Lhbk" role="2OqNvi">
                          <node concept="1bVj0M" id="3w_vEw9Lhbl" role="23t8la">
                            <node concept="3clFbS" id="3w_vEw9Lhbm" role="1bW5cS">
                              <node concept="3clFbF" id="3w_vEw9Lhbn" role="3cqZAp">
                                <node concept="2YIFZM" id="2L2wprwTgZA" role="3clFbG">
                                  <ref role="37wK5l" to="i8bi:63cAeS_s9ie" resolve="getIndexInChildrenAndChildAttributesCollection" />
                                  <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                                  <node concept="37vLTw" id="2L2wprwTgZB" role="37wK5m">
                                    <ref role="3cqZAo" node="5W7E4fV0XLu" resolve="c" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XLu" role="1bW2Oz">
                              <property role="TrG5h" value="c" />
                              <node concept="2jxLKc" id="5W7E4fV0XLv" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1VAtEI" id="3w_vEw9Lhbt" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3w_vEw9Lhbu" role="3cqZAp">
                  <node concept="3cpWsn" id="3w_vEw9Lhbv" role="3cpWs9">
                    <property role="TrG5h" value="min" />
                    <node concept="10Oyi0" id="3w_vEw9Lhbw" role="1tU5fm" />
                    <node concept="2OqwBi" id="3w_vEw9Lhbx" role="33vP2m">
                      <node concept="37vLTw" id="3w_vEw9Lhby" role="2Oq$k0">
                        <ref role="3cqZAo" node="3w_vEw9Lhbe" resolve="indices" />
                      </node>
                      <node concept="1MCZdW" id="3w_vEw9Lhbz" role="2OqNvi">
                        <node concept="1bVj0M" id="3w_vEw9Lhb$" role="23t8la">
                          <node concept="3clFbS" id="3w_vEw9Lhb_" role="1bW5cS">
                            <node concept="3clFbF" id="3w_vEw9LhbA" role="3cqZAp">
                              <node concept="2YIFZM" id="3w_vEw9LhbB" role="3clFbG">
                                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                                <ref role="37wK5l" to="wyt6:~Math.min(int,int)" resolve="min" />
                                <node concept="37vLTw" id="3w_vEw9LhbC" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XLw" resolve="a" />
                                </node>
                                <node concept="37vLTw" id="3w_vEw9LhbD" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XLy" resolve="b" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XLw" role="1bW2Oz">
                            <property role="TrG5h" value="a" />
                            <node concept="2jxLKc" id="5W7E4fV0XLx" role="1tU5fm" />
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XLy" role="1bW2Oz">
                            <property role="TrG5h" value="b" />
                            <node concept="2jxLKc" id="5W7E4fV0XLz" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3w_vEw9LhbI" role="3cqZAp">
                  <node concept="3cpWsn" id="3w_vEw9LhbJ" role="3cpWs9">
                    <property role="TrG5h" value="max" />
                    <node concept="10Oyi0" id="3w_vEw9LhbK" role="1tU5fm" />
                    <node concept="2OqwBi" id="3w_vEw9LhbL" role="33vP2m">
                      <node concept="37vLTw" id="3w_vEw9LhbM" role="2Oq$k0">
                        <ref role="3cqZAo" node="3w_vEw9Lhbe" resolve="indices" />
                      </node>
                      <node concept="1MCZdW" id="3w_vEw9LhbN" role="2OqNvi">
                        <node concept="1bVj0M" id="3w_vEw9LhbO" role="23t8la">
                          <node concept="3clFbS" id="3w_vEw9LhbP" role="1bW5cS">
                            <node concept="3clFbF" id="3w_vEw9LhbQ" role="3cqZAp">
                              <node concept="2YIFZM" id="3w_vEw9LhbR" role="3clFbG">
                                <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                                <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                                <node concept="37vLTw" id="3w_vEw9LhbS" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XL$" resolve="a" />
                                </node>
                                <node concept="37vLTw" id="3w_vEw9LhbT" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0XLA" resolve="b" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XL$" role="1bW2Oz">
                            <property role="TrG5h" value="a" />
                            <node concept="2jxLKc" id="5W7E4fV0XL_" role="1tU5fm" />
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0XLA" role="1bW2Oz">
                            <property role="TrG5h" value="b" />
                            <node concept="2jxLKc" id="5W7E4fV0XLB" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3w_vEw9LhbY" role="3cqZAp">
                  <node concept="2OqwBi" id="3w_vEw9LhbZ" role="3clFbG">
                    <node concept="37vLTw" id="3w_vEw9Lhc0" role="2Oq$k0">
                      <ref role="3cqZAo" node="3w_vEw9Lhan" resolve="nodesToCopy" />
                    </node>
                    <node concept="2Kehj3" id="3w_vEw9Lhc1" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbF" id="3w_vEw9Lhc4" role="3cqZAp">
                  <node concept="2OqwBi" id="3w_vEw9Lhc5" role="3clFbG">
                    <node concept="37vLTw" id="3w_vEw9Lhc6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3w_vEw9Lhan" resolve="nodesToCopy" />
                    </node>
                    <node concept="X8dFx" id="2L2wprwT9Dl" role="2OqNvi">
                      <node concept="2OqwBi" id="2L2wprwTcQf" role="25WWJ7">
                        <node concept="2OqwBi" id="2L2wprwTbWx" role="2Oq$k0">
                          <node concept="37vLTw" id="2L2wprwTbns" role="2Oq$k0">
                            <ref role="3cqZAo" node="3w_vEw9Lhah" resolve="commonNode" />
                          </node>
                          <node concept="Bykcj" id="2L2wprwTc8C" role="2OqNvi">
                            <node concept="1aIX9F" id="2L2wprwTc8E" role="1xVPHs">
                              <node concept="25Kdxt" id="2L2wprwTcza" role="1aIX9E">
                                <node concept="37vLTw" id="2L2wprwTcET" role="25KhWn">
                                  <ref role="3cqZAo" node="3w_vEw9Lhb6" resolve="commonRole" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="8snch" id="2L2wprwTdDX" role="2OqNvi">
                          <node concept="37vLTw" id="2L2wprwTeXb" role="8sqot">
                            <ref role="3cqZAo" node="3w_vEw9Lhbv" resolve="min" />
                          </node>
                          <node concept="3cpWs3" id="33pw6Pr$RV6" role="8st4g">
                            <node concept="3cmrfG" id="33pw6Pr$S11" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="2L2wprwTfC2" role="3uHU7B">
                              <ref role="3cqZAo" node="3w_vEw9LhbJ" resolve="max" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3w_vEw9Lhcn" role="3clFbw">
                <node concept="37vLTw" id="3w_vEw9Lhco" role="2Oq$k0">
                  <ref role="3cqZAo" node="3w_vEw9LhaP" resolve="links" />
                </node>
                <node concept="2HxqBE" id="3w_vEw9Lhcp" role="2OqNvi">
                  <node concept="1bVj0M" id="3w_vEw9Lhcq" role="23t8la">
                    <node concept="3clFbS" id="3w_vEw9Lhcr" role="1bW5cS">
                      <node concept="3clFbF" id="3w_vEw9Lhcs" role="3cqZAp">
                        <node concept="17R0WA" id="3w_vEw9Lhct" role="3clFbG">
                          <node concept="37vLTw" id="3w_vEw9Lhcu" role="3uHU7B">
                            <ref role="3cqZAo" node="5W7E4fV0XLC" resolve="r" />
                          </node>
                          <node concept="37vLTw" id="3w_vEw9Lhcv" role="3uHU7w">
                            <ref role="3cqZAo" node="3w_vEw9Lhb6" resolve="commonRole" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0XLC" role="1bW2Oz">
                      <property role="TrG5h" value="r" />
                      <node concept="2jxLKc" id="5W7E4fV0XLD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3w_vEw9Lhcy" role="3clFbw">
            <node concept="37vLTw" id="3w_vEw9Lhcz" role="2Oq$k0">
              <ref role="3cqZAo" node="3w_vEw9Lh8G" resolve="paths" />
            </node>
            <node concept="2HxqBE" id="3w_vEw9Lhc$" role="2OqNvi">
              <node concept="1bVj0M" id="3w_vEw9Lhc_" role="23t8la">
                <node concept="3clFbS" id="3w_vEw9LhcA" role="1bW5cS">
                  <node concept="3clFbF" id="3w_vEw9LhcB" role="3cqZAp">
                    <node concept="3eOSWO" id="3w_vEw9LhcC" role="3clFbG">
                      <node concept="2OqwBi" id="3w_vEw9LhcD" role="3uHU7B">
                        <node concept="37vLTw" id="3w_vEw9LhcE" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0XLE" resolve="p" />
                        </node>
                        <node concept="34oBXx" id="3w_vEw9LhcF" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="3w_vEw9LhcG" role="3uHU7w">
                        <node concept="37vLTw" id="3w_vEw9LhcH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3w_vEw9Lh97" resolve="commonPath" />
                        </node>
                        <node concept="34oBXx" id="3w_vEw9LhcI" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0XLE" role="1bW2Oz">
                  <property role="TrG5h" value="p" />
                  <node concept="2jxLKc" id="5W7E4fV0XLF" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3w_vEw9LhcL" role="3cqZAp" />
        <node concept="3clFbF" id="3w_vEw9LhcM" role="3cqZAp">
          <node concept="2YIFZM" id="3w_vEw9LhcN" role="3clFbG">
            <ref role="37wK5l" to="dp1x:5tGs5KqKiIT" resolve="copyNodesToClipboard" />
            <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="37vLTw" id="3w_vEw9LhcO" role="37wK5m">
              <ref role="3cqZAo" node="3w_vEw9Lhan" resolve="nodesToCopy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3w_vEw9LhcP" role="3cqZAp">
          <node concept="2EnYce" id="3w_vEw9LhcQ" role="3clFbG">
            <node concept="1rXfSq" id="3w_vEw9LhcR" role="2Oq$k0">
              <ref role="37wK5l" node="3w_vEw9JBsY" resolve="getPainter" />
            </node>
            <node concept="liA8E" id="3w_vEw9LhcT" role="2OqNvi">
              <ref role="37wK5l" node="1LVXsqEggE$" resolve="showPopupForGroup" />
              <node concept="10Nm6u" id="3w_vEw9LhcU" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3w_vEw9Lh6X" role="3clF45" />
      <node concept="3Tm1VV" id="3w_vEw9Lh6Y" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3SxFjl1oIks">
    <property role="TrG5h" value="BaseVersionEditorComponent" />
    <node concept="3Tm1VV" id="3SxFjl1oIkt" role="1B3o_S" />
    <node concept="3uibUv" id="3SxFjl1oOM4" role="1zkMxy">
      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
    </node>
    <node concept="3uibUv" id="2Xanblty2zZ" role="EKbjA">
      <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
    </node>
    <node concept="312cEg" id="3zkePfDxuNU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myBaseModel" />
      <property role="3TUv4t" value="true" />
      <node concept="H_c77" id="377Orl2p3DW" role="1tU5fm" />
      <node concept="3Tm6S6" id="3zkePfDxoOH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7uQHEcHfJv4" role="jymVt" />
    <node concept="3clFbW" id="3SxFjl1oOMg" role="jymVt">
      <node concept="3cqZAl" id="3SxFjl1oOMh" role="3clF45" />
      <node concept="3Tm1VV" id="3SxFjl1oOMi" role="1B3o_S" />
      <node concept="3clFbS" id="3SxFjl1oOMk" role="3clF47">
        <node concept="XkiVB" id="3SxFjl1oOMl" role="3cqZAp">
          <ref role="37wK5l" to="exr9:~EditorComponent.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="EditorComponent" />
          <node concept="2OqwBi" id="3CHeQ8cAt2D" role="37wK5m">
            <node concept="2JrnkZ" id="3CHeQ8cAvKx" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxghgpr" role="2JrQYb">
                <ref role="3cqZAo" node="3SxFjl1oOMm" resolve="baseModel" />
              </node>
            </node>
            <node concept="liA8E" id="3CHeQ8cAx$t" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3CHeQ8cAIM9" role="3cqZAp">
          <node concept="37vLTI" id="3CHeQ8cAKJA" role="3clFbG">
            <node concept="37vLTw" id="3CHeQ8cAR2n" role="37vLTx">
              <ref role="3cqZAo" node="3SxFjl1oOMm" resolve="baseModel" />
            </node>
            <node concept="37vLTw" id="3CHeQ8cAIM7" role="37vLTJ">
              <ref role="3cqZAo" node="3zkePfDxuNU" resolve="myBaseModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="20tipxamZSO" role="3cqZAp">
          <node concept="3cpWsn" id="20tipxamZSP" role="3cpWs9">
            <property role="TrG5h" value="modelAccess" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="20tipxamZSN" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="2OqwBi" id="20tipxamZSQ" role="33vP2m">
              <node concept="2OqwBi" id="3CHeQ8cB1wF" role="2Oq$k0">
                <node concept="2JrnkZ" id="3CHeQ8cAZMp" role="2Oq$k0">
                  <node concept="37vLTw" id="20tipxamZSR" role="2JrQYb">
                    <ref role="3cqZAo" node="3SxFjl1oOMm" resolve="baseModel" />
                  </node>
                </node>
                <node concept="liA8E" id="3CHeQ8cB3nX" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="20tipxamZSS" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3CHeQ8cBDDD" role="3cqZAp">
          <node concept="1PaTwC" id="3CHeQ8cBDDE" role="1aUNEU">
            <node concept="3oM_SD" id="3CHeQ8cBGjf" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGjw" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGkx" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGlL" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGm2" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGm3" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGoO" role="1PaTwD">
              <property role="3oM_SC" value="much" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGp5" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBGql" role="1PaTwD">
              <property role="3oM_SC" value="changeGroup," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJRH" role="1PaTwD">
              <property role="3oM_SC" value="but" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJTd" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJUt" role="1PaTwD">
              <property role="3oM_SC" value="baseModel" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJXc" role="1PaTwD">
              <property role="3oM_SC" value="(indeed," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJYG" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJYH" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJZX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBJZY" role="1PaTwD">
              <property role="3oM_SC" value="repo" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK0f" role="1PaTwD">
              <property role="3oM_SC" value="w/o" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK1v" role="1PaTwD">
              <property role="3oM_SC" value="strict" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK2J" role="1PaTwD">
              <property role="3oM_SC" value="control" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK4v" role="1PaTwD">
              <property role="3oM_SC" value="now," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK5v" role="1PaTwD">
              <property role="3oM_SC" value="yet" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK60" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK7g" role="1PaTwD">
              <property role="3oM_SC" value="hurt" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK8w" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK8x" role="1PaTwD">
              <property role="3oM_SC" value="follow" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBK9x" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBKax" role="1PaTwD">
              <property role="3oM_SC" value="general" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBKgJ" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBKdg" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cBKew" role="1PaTwD">
              <property role="3oM_SC" value="rules)" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Xanblty7nJ" role="3cqZAp">
          <node concept="3cpWsn" id="2Xanblty7nK" role="3cpWs9">
            <property role="TrG5h" value="verticalBounds" />
            <node concept="2pR195" id="2Xanblty7nL" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
            </node>
            <node concept="2OqwBi" id="27S0kf09WgA" role="33vP2m">
              <node concept="37vLTw" id="20tipxan1m2" role="2Oq$k0">
                <ref role="3cqZAo" node="20tipxamZSP" resolve="modelAccess" />
              </node>
              <node concept="liA8E" id="27S0kf0a1_$" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.computeReadAction(java.util.function.Supplier)" resolve="computeReadAction" />
                <node concept="1bVj0M" id="27S0kf0a1E9" role="37wK5m">
                  <node concept="3clFbS" id="27S0kf0a1Eb" role="1bW5cS">
                    <node concept="3cpWs8" id="3SxFjl1oOMH" role="3cqZAp">
                      <node concept="3cpWsn" id="3SxFjl1oOMI" role="3cpWs9">
                        <property role="TrG5h" value="baseRoot" />
                        <node concept="2OqwBi" id="2n9zn0CqMCA" role="33vP2m">
                          <node concept="liA8E" id="2n9zn0CqMCB" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId)" resolve="getNode" />
                            <node concept="2OqwBi" id="2n9zn0CqMCC" role="37wK5m">
                              <node concept="2OqwBi" id="2n9zn0CqMCD" role="2Oq$k0">
                                <node concept="2OqwBi" id="2n9zn0CqMCE" role="2Oq$k0">
                                  <node concept="37vLTw" id="2BHiRxglb0n" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3SxFjl1oOMt" resolve="changeGroup" />
                                  </node>
                                  <node concept="liA8E" id="2n9zn0CqMCG" role="2OqNvi">
                                    <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2n9zn0CqMCH" role="2OqNvi" />
                              </node>
                              <node concept="liA8E" id="2n9zn0CqMCI" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                              </node>
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="2n9zn0CqMCJ" role="2Oq$k0">
                            <node concept="37vLTw" id="4C9d4dInjq7" role="2JrQYb">
                              <ref role="3cqZAo" node="3zkePfDxuNU" resolve="myBaseModel" />
                            </node>
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="3SxFjl1oOMJ" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="3SxFjl1oONd" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqyzbE9" role="3clFbG">
                        <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                        <node concept="37vLTw" id="3GM_nagT_Hz" role="37wK5m">
                          <ref role="3cqZAo" node="3SxFjl1oOMI" resolve="baseRoot" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6ZFQQ$xmAyb" role="3cqZAp" />
                    <node concept="3clFbF" id="6ZFQQ$xmI2b" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqyzc6b" role="3clFbG">
                        <ref role="37wK5l" to="dxuu:~JComponent.setBackground(java.awt.Color)" resolve="setBackground" />
                        <node concept="2OqwBi" id="7GCP4nYaTtM" role="37wK5m">
                          <node concept="2YIFZM" id="7GCP4nYaSMX" role="2Oq$k0">
                            <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                            <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                          </node>
                          <node concept="liA8E" id="7GCP4nYaVO7" role="2OqNvi">
                            <ref role="37wK5l" to="exr9:~EditorSettings.getCaretRowColor()" resolve="getCaretRowColor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1gM_IjhvHsE" role="3cqZAp" />
                    <node concept="3cpWs8" id="2Xanblty2$v" role="3cqZAp">
                      <node concept="3cpWsn" id="2Xanblty2$w" role="3cpWs9">
                        <property role="TrG5h" value="messages" />
                        <node concept="A3Dl8" id="2Xanblty2$x" role="1tU5fm">
                          <node concept="3uibUv" id="2Xanblty2$y" role="A3Ik2">
                            <ref role="3uigEE" to="hdhb:42hl10VH9Tb" resolve="ChangeEditorMessage" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2Xanblty2$z" role="33vP2m">
                          <node concept="2OqwBi" id="2Xanblty2$$" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxgmvJQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SxFjl1oOMt" resolve="changeGroup" />
                            </node>
                            <node concept="liA8E" id="2Xanblty2$A" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                            </node>
                          </node>
                          <node concept="3goQfb" id="2Xanblty2$B" role="2OqNvi">
                            <node concept="1bVj0M" id="2Xanblty2$C" role="23t8la">
                              <node concept="3clFbS" id="2Xanblty2$D" role="1bW5cS">
                                <node concept="3clFbF" id="2Xanblty2$E" role="3cqZAp">
                                  <node concept="2YIFZM" id="2Xanblty2$F" role="3clFbG">
                                    <ref role="1Pybhc" to="hdhb:7X2JJJDQ1m9" resolve="ChangeEditorMessageFactory" />
                                    <ref role="37wK5l" to="hdhb:7X2JJJDQ1s4" resolve="createMessages" />
                                    <node concept="37vLTw" id="7WdbGFXkKUY" role="37wK5m">
                                      <ref role="3cqZAo" node="3zkePfDxuNU" resolve="myBaseModel" />
                                    </node>
                                    <node concept="3clFbT" id="nthHoNZSwA" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                    <node concept="37vLTw" id="2BHiRxgmKHg" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0XLG" resolve="ch" />
                                    </node>
                                    <node concept="Xjq3P" id="2Xanblty2$I" role="37wK5m" />
                                    <node concept="10Nm6u" id="2Xanblty2$J" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XLG" role="1bW2Oz">
                                <property role="TrG5h" value="ch" />
                                <node concept="2jxLKc" id="5W7E4fV0XLH" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3CHeQ8cBohP" role="3cqZAp">
                      <node concept="2OqwBi" id="2Xanblty7nM" role="3cqZAk">
                        <node concept="2OqwBi" id="2Xanblty7nN" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTrni" role="2Oq$k0">
                            <ref role="3cqZAo" node="2Xanblty2$w" resolve="messages" />
                          </node>
                          <node concept="3$u5V9" id="2Xanblty7nP" role="2OqNvi">
                            <node concept="1bVj0M" id="2Xanblty7nQ" role="23t8la">
                              <node concept="3clFbS" id="2Xanblty7nR" role="1bW5cS">
                                <node concept="3clFbF" id="2Xanblty7nS" role="3cqZAp">
                                  <node concept="2OqwBi" id="2Xanblty7nT" role="3clFbG">
                                    <node concept="37vLTw" id="2BHiRxghfPQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0XLI" resolve="m" />
                                    </node>
                                    <node concept="liA8E" id="2Xanblty7nV" role="2OqNvi">
                                      <ref role="37wK5l" to="hdhb:42hl10VHab3" resolve="getBounds" />
                                      <node concept="Xjq3P" id="2Xanblty7nW" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0XLI" role="1bW2Oz">
                                <property role="TrG5h" value="m" />
                                <node concept="2jxLKc" id="5W7E4fV0XLJ" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1MCZdW" id="2Xanblty7nZ" role="2OqNvi">
                          <node concept="1bVj0M" id="2Xanblty7o0" role="23t8la">
                            <node concept="gl6BB" id="5W7E4fV0XLK" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0XLL" role="1tU5fm" />
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0XLM" role="1bW2Oz">
                              <property role="TrG5h" value="b" />
                              <node concept="2jxLKc" id="5W7E4fV0XLN" role="1tU5fm" />
                            </node>
                            <node concept="3clFbS" id="2Xanblty7o1" role="1bW5cS">
                              <node concept="3clFbF" id="2Xanblty7o2" role="3cqZAp">
                                <node concept="2OqwBi" id="2Xanblty7o3" role="3clFbG">
                                  <node concept="37vLTw" id="2BHiRxgmFor" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0XLK" resolve="a" />
                                  </node>
                                  <node concept="liA8E" id="2Xanblty7o5" role="2OqNvi">
                                    <ref role="37wK5l" to="hdhb:42hl10VH9I9" resolve="merge" />
                                    <node concept="37vLTw" id="2BHiRxghiBd" role="37wK5m">
                                      <ref role="3cqZAo" node="5W7E4fV0XLM" resolve="b" />
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
        <node concept="3cpWs8" id="4SRQPWVC2qs" role="3cqZAp">
          <node concept="3cpWsn" id="4SRQPWVC2qv" role="3cpWs9">
            <property role="TrG5h" value="rightMost" />
            <node concept="3cmrfG" id="4SRQPWVCgaz" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="4SRQPWVC2qq" role="1tU5fm" />
          </node>
        </node>
        <node concept="1Dw8fO" id="5SJzgN4Sg2U" role="3cqZAp">
          <node concept="37vLTI" id="5HY4jbOlAwb" role="1Dwrff">
            <node concept="2YIFZM" id="5HY4jbOlH62" role="37vLTx">
              <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
              <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getNextLeaf(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getNextLeaf" />
              <node concept="37vLTw" id="5HY4jbOlJ3f" role="37wK5m">
                <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTs2K" role="37vLTJ">
              <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
            </node>
          </node>
          <node concept="3clFbS" id="5SJzgN4Sg2V" role="2LFqv$">
            <node concept="3clFbJ" id="5SJzgN4ShqB" role="3cqZAp">
              <node concept="22lmx$" id="5SJzgN4SxDO" role="3clFbw">
                <node concept="22lmx$" id="5SJzgN4SxDf" role="3uHU7B">
                  <node concept="2OqwBi" id="5SJzgN4SxDa" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTsvk" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Xanblty7nK" resolve="verticalBounds" />
                    </node>
                    <node concept="liA8E" id="5SJzgN4SxDe" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:5SJzgN4SlCA" resolve="contains" />
                      <node concept="2OqwBi" id="4SRQPWVAG_f" role="37wK5m">
                        <node concept="liA8E" id="4SRQPWVAHuG" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                        </node>
                        <node concept="37vLTw" id="4SRQPWVAzeS" role="2Oq$k0">
                          <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5SJzgN4SxDi" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTr9n" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Xanblty7nK" resolve="verticalBounds" />
                    </node>
                    <node concept="liA8E" id="5SJzgN4SxDk" role="2OqNvi">
                      <ref role="37wK5l" to="hdhb:5SJzgN4SlCA" resolve="contains" />
                      <node concept="2OqwBi" id="4SRQPWVARJi" role="37wK5m">
                        <node concept="liA8E" id="4SRQPWVATtn" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getBottom()" resolve="getBottom" />
                        </node>
                        <node concept="37vLTw" id="4SRQPWVAQNf" role="2Oq$k0">
                          <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5SJzgN4SxDR" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTBQ2" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Xanblty7nK" resolve="verticalBounds" />
                  </node>
                  <node concept="liA8E" id="5SJzgN4SxDT" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:5SJzgN4SlCA" resolve="contains" />
                    <node concept="3cpWs3" id="5SJzgN4SxDU" role="37wK5m">
                      <node concept="2OqwBi" id="4SRQPWVBocJ" role="3uHU7B">
                        <node concept="liA8E" id="4SRQPWVBpTu" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                        </node>
                        <node concept="37vLTw" id="4SRQPWVBng2" role="2Oq$k0">
                          <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                        </node>
                      </node>
                      <node concept="FJ1c_" id="5SJzgN4SxE1" role="3uHU7w">
                        <node concept="2OqwBi" id="4SRQPWVB$Te" role="3uHU7B">
                          <node concept="liA8E" id="4SRQPWVB_NC" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                          </node>
                          <node concept="37vLTw" id="4SRQPWVBzP8" role="2Oq$k0">
                            <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="5SJzgN4SxE4" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5SJzgN4ShqC" role="3clFbx">
                <node concept="3clFbJ" id="4SRQPWVCkgT" role="3cqZAp">
                  <node concept="3eOSWO" id="4SRQPWVCwSh" role="3clFbw">
                    <node concept="37vLTw" id="4SRQPWVCxE4" role="3uHU7w">
                      <ref role="3cqZAo" node="4SRQPWVC2qv" resolve="rightMost" />
                    </node>
                    <node concept="2OqwBi" id="4SRQPWVCsAq" role="3uHU7B">
                      <node concept="liA8E" id="4SRQPWVCtvE" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getRight()" resolve="getRight" />
                      </node>
                      <node concept="37vLTw" id="4SRQPWVCrKU" role="2Oq$k0">
                        <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4SRQPWVCkgV" role="3clFbx">
                    <node concept="3clFbF" id="4SRQPWVCyuR" role="3cqZAp">
                      <node concept="37vLTI" id="4SRQPWVCADO" role="3clFbG">
                        <node concept="2OqwBi" id="4SRQPWVCSZD" role="37vLTx">
                          <node concept="liA8E" id="4SRQPWVCWB1" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.getRight()" resolve="getRight" />
                          </node>
                          <node concept="37vLTw" id="4SRQPWVCQBn" role="2Oq$k0">
                            <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4SRQPWVCyuQ" role="37vLTJ">
                          <ref role="3cqZAo" node="4SRQPWVC2qv" resolve="rightMost" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5SJzgN4Sg2Z" role="1Duv9x">
            <property role="TrG5h" value="leafCell" />
            <node concept="2YIFZM" id="5HY4jbOljlF" role="33vP2m">
              <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
              <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getFirstLeaf(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getFirstLeaf" />
              <node concept="1rXfSq" id="4hiugqyzfJv" role="37wK5m">
                <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
              </node>
            </node>
            <node concept="3uibUv" id="5HY4jbOl1eP" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
          </node>
          <node concept="3y3z36" id="5SJzgN4Shdd" role="1Dwp0S">
            <node concept="37vLTw" id="3GM_nagTzK$" role="3uHU7B">
              <ref role="3cqZAo" node="5SJzgN4Sg2Z" resolve="leafCell" />
            </node>
            <node concept="10Nm6u" id="5SJzgN4Shdg" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs8" id="2Xanblty7pu" role="3cqZAp">
          <node concept="3cpWsn" id="2Xanblty7pv" role="3cpWs9">
            <property role="TrG5h" value="viewRect" />
            <node concept="3uibUv" id="2Xanblty7pw" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2ShNRf" id="2Xanblty7py" role="33vP2m">
              <node concept="1pGfFk" id="2Xanblty7p$" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                <node concept="3cmrfG" id="2Xanblty7pN" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="2Xanblty7pQ" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTuNG" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Xanblty7nK" resolve="verticalBounds" />
                  </node>
                  <node concept="2sxana" id="2Xanblty7pU" role="2OqNvi">
                    <ref role="2sxfKC" to="hdhb:42hl10VH9Ix" resolve="start" />
                  </node>
                </node>
                <node concept="37vLTw" id="4SRQPWVDi15" role="37wK5m">
                  <ref role="3cqZAo" node="4SRQPWVC2qv" resolve="rightMost" />
                </node>
                <node concept="2OqwBi" id="2Xanblty7qa" role="37wK5m">
                  <node concept="37vLTw" id="3GM_nagTvnc" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Xanblty7nK" resolve="verticalBounds" />
                  </node>
                  <node concept="liA8E" id="2Xanblty7qe" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VH9HX" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZFQQ$xmI2V" role="3cqZAp">
          <node concept="d5anL" id="6ZFQQ$xmI2W" role="3clFbG">
            <node concept="3cmrfG" id="1cWLtgfvARa" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="6ZFQQ$xmI2Y" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTBov" role="2Oq$k0">
                <ref role="3cqZAo" node="2Xanblty7pv" resolve="viewRect" />
              </node>
              <node concept="2OwXpG" id="6ZFQQ$xmI31" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZFQQ$xmI38" role="3cqZAp">
          <node concept="d57v9" id="6ZFQQ$xmI3f" role="3clFbG">
            <node concept="2OqwBi" id="6ZFQQ$xmI3g" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTA9C" role="2Oq$k0">
                <ref role="3cqZAo" node="2Xanblty7pv" resolve="viewRect" />
              </node>
              <node concept="2OwXpG" id="6ZFQQ$xmI3i" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
              </node>
            </node>
            <node concept="3cmrfG" id="1cWLtgfvAR9" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZFQQ$xmI3q" role="3cqZAp">
          <node concept="d57v9" id="6ZFQQ$xmI3r" role="3clFbG">
            <node concept="2OqwBi" id="6ZFQQ$xmI3s" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTuF4" role="2Oq$k0">
                <ref role="3cqZAo" node="2Xanblty7pv" resolve="viewRect" />
              </node>
              <node concept="2OwXpG" id="6ZFQQ$xmI3y" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
              </node>
            </node>
            <node concept="3cmrfG" id="1cWLtgfvARc" role="37vLTx">
              <property role="3cmrfH" value="4" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gM_IjhvHsD" role="3cqZAp" />
        <node concept="3clFbF" id="2YSDt1ND1si" role="3cqZAp">
          <node concept="2OqwBi" id="2YSDt1ND3sI" role="3clFbG">
            <node concept="1rXfSq" id="2YSDt1ND1sg" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
            </node>
            <node concept="liA8E" id="2YSDt1ND5Zi" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setVerticalScrollBarPolicy(int)" resolve="setVerticalScrollBarPolicy" />
              <node concept="10M0yZ" id="2YSDt1NDgkA" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER" resolve="VERTICAL_SCROLLBAR_NEVER" />
                <ref role="1PxDUh" to="dxuu:~ScrollPaneConstants" resolve="ScrollPaneConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2YSDt1NDhWU" role="3cqZAp">
          <node concept="2OqwBi" id="2YSDt1NDhWV" role="3clFbG">
            <node concept="1rXfSq" id="2YSDt1NDhWW" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
            </node>
            <node concept="liA8E" id="2YSDt1NDhWX" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setHorizontalScrollBarPolicy(int)" resolve="setHorizontalScrollBarPolicy" />
              <node concept="10M0yZ" id="2YSDt1NDkWN" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER" resolve="HORIZONTAL_SCROLLBAR_NEVER" />
                <ref role="1PxDUh" to="dxuu:~ScrollPaneConstants" resolve="ScrollPaneConstants" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2YSDt1NDV6t" role="3cqZAp">
          <node concept="1PaTwC" id="2YSDt1NDV6u" role="1aUNEU">
            <node concept="3oM_SD" id="2YSDt1NDY3k" role="1PaTwD">
              <property role="3oM_SC" value="init" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3m" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3J" role="1PaTwD">
              <property role="3oM_SC" value="like" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3t" role="1PaTwD">
              <property role="3oM_SC" value="base" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3y" role="1PaTwD">
              <property role="3oM_SC" value="JScrollPane" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3P" role="1PaTwD">
              <property role="3oM_SC" value="constructor" />
            </node>
            <node concept="3oM_SD" id="2YSDt1NDY3W" role="1PaTwD">
              <property role="3oM_SC" value="does" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2YSDt1NDsqV" role="3cqZAp">
          <node concept="2OqwBi" id="2YSDt1NDtzF" role="3clFbG">
            <node concept="1rXfSq" id="2YSDt1NDsqT" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
            </node>
            <node concept="liA8E" id="2YSDt1NDx2f" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setVerticalScrollBar(javax.swing.JScrollBar)" resolve="setVerticalScrollBar" />
              <node concept="2OqwBi" id="2YSDt1NDEYA" role="37wK5m">
                <node concept="1rXfSq" id="2YSDt1NDBdY" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
                </node>
                <node concept="liA8E" id="2YSDt1NDIyH" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JScrollPane.createVerticalScrollBar()" resolve="createVerticalScrollBar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2YSDt1NDKrj" role="3cqZAp">
          <node concept="2OqwBi" id="2YSDt1NDKrk" role="3clFbG">
            <node concept="1rXfSq" id="2YSDt1NDKrl" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
            </node>
            <node concept="liA8E" id="2YSDt1NDKrm" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JScrollPane.setHorizontalScrollBar(javax.swing.JScrollBar)" resolve="setHorizontalScrollBar" />
              <node concept="2OqwBi" id="2YSDt1NDKrn" role="37wK5m">
                <node concept="1rXfSq" id="2YSDt1NDKro" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
                </node>
                <node concept="liA8E" id="2YSDt1NDKrp" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JScrollPane.createHorizontalScrollBar()" resolve="createHorizontalScrollBar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Xanblty7qg" role="3cqZAp">
          <node concept="2OqwBi" id="2Xanblty7qi" role="3clFbG">
            <node concept="liA8E" id="2Xanblty7qm" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="2OqwBi" id="2Xanblty7qo" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTy7a" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Xanblty7pv" resolve="viewRect" />
                </node>
                <node concept="liA8E" id="2Xanblty7qs" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Rectangle.getSize()" resolve="getSize" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="7uQHEcHfmcL" role="2Oq$k0">
              <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Xanblty7qu" role="3cqZAp">
          <node concept="2OqwBi" id="2Xanblty7qw" role="3clFbG">
            <node concept="2OqwBi" id="1gM_IjhvHsH" role="2Oq$k0">
              <node concept="liA8E" id="1gM_IjhvHsL" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JScrollPane.getViewport()" resolve="getViewport" />
              </node>
              <node concept="1rXfSq" id="7uQHEcHfs9w" role="2Oq$k0">
                <ref role="37wK5l" to="exr9:~EditorComponent.getScrollPane()" resolve="getScrollPane" />
              </node>
            </node>
            <node concept="liA8E" id="2Xanblty7q$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JViewport.setViewPosition(java.awt.Point)" resolve="setViewPosition" />
              <node concept="2OqwBi" id="2Xanblty7qA" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagTzrf" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Xanblty7pv" resolve="viewRect" />
                </node>
                <node concept="liA8E" id="2Xanblty7qE" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Rectangle.getLocation()" resolve="getLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SxFjl1oOMm" role="3clF46">
        <property role="TrG5h" value="baseModel" />
        <node concept="H_c77" id="3CHeQ8cAnxf" role="1tU5fm" />
        <node concept="2AHcQZ" id="3CHeQ8cASKd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3SxFjl1oOMt" role="3clF46">
        <property role="TrG5h" value="changeGroup" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3SxFjl1oOMv" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
        <node concept="2AHcQZ" id="3CHeQ8cBGvi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7uQHEcHeEwD" role="jymVt" />
    <node concept="2tJIrI" id="7uQHEcHeE_6" role="jymVt" />
    <node concept="3clFb_" id="7uQHEcHeHhr" role="jymVt">
      <property role="TrG5h" value="createScrollPane" />
      <node concept="3Tmbuc" id="7uQHEcHeHhs" role="1B3o_S" />
      <node concept="3uibUv" id="7uQHEcHeHhu" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
      </node>
      <node concept="3clFbS" id="7uQHEcHeHhv" role="3clF47">
        <node concept="3SKdUt" id="3CHeQ8cCl$d" role="3cqZAp">
          <node concept="1PaTwC" id="3CHeQ8cCl$e" role="1aUNEU">
            <node concept="3oM_SD" id="3CHeQ8cCnlQ" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnm7" role="1PaTwD">
              <property role="3oM_SC" value="fix" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnno" role="1PaTwD">
              <property role="3oM_SC" value="superclass" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnoC" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnoT" role="1PaTwD">
              <property role="3oM_SC" value="respect" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnpT" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnqT" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnra" role="1PaTwD">
              <property role="3oM_SC" value="have" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnsa" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnsr" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCntr" role="1PaTwD">
              <property role="3oM_SC" value="scrollbar" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnuF" role="1PaTwD">
              <property role="3oM_SC" value="policy," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnwb" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnyq" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnyr" role="1PaTwD">
              <property role="3oM_SC" value="ugly" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCnDT" role="1PaTwD">
              <property role="3oM_SC" value="re-set" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCn$b" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCn_r" role="1PaTwD">
              <property role="3oM_SC" value="cons," />
            </node>
            <node concept="3oM_SD" id="3CHeQ8cCn_G" role="1PaTwD">
              <property role="3oM_SC" value="above!" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7uQHEcHeZ1L" role="3cqZAp">
          <node concept="3cpWsn" id="7uQHEcHeZ1M" role="3cpWs9">
            <property role="TrG5h" value="sp" />
            <node concept="3uibUv" id="7uQHEcHeY2Z" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
            </node>
            <node concept="2ShNRf" id="7uQHEcHeZ1N" role="33vP2m">
              <node concept="1pGfFk" id="7uQHEcHeZ1O" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component,int,int)" resolve="JBScrollPane" />
                <node concept="Xjq3P" id="7uQHEcHeZ1P" role="37wK5m" />
                <node concept="10M0yZ" id="7uQHEcHeZ1Q" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                  <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER" resolve="VERTICAL_SCROLLBAR_NEVER" />
                </node>
                <node concept="10M0yZ" id="7uQHEcHeZ1R" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                  <ref role="3cqZAo" to="dxuu:~ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER" resolve="HORIZONTAL_SCROLLBAR_NEVER" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7uQHEcHeHhy" role="3cqZAp">
          <node concept="2OqwBi" id="7uQHEcHf2KR" role="3clFbG">
            <node concept="37vLTw" id="7uQHEcHeZ1S" role="2Oq$k0">
              <ref role="3cqZAo" node="7uQHEcHeZ1M" resolve="sp" />
            </node>
            <node concept="liA8E" id="7uQHEcHf807" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="5L3TB6kd6iO" role="37wK5m">
                <ref role="37wK5l" to="dxuu:~BorderFactory.createLineBorder(java.awt.Color)" resolve="createLineBorder" />
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <node concept="10M0yZ" id="3CHeQ8cCa6w" role="37wK5m">
                  <ref role="3cqZAo" to="lzb2:~JBColor.BLACK" resolve="BLACK" />
                  <ref role="1PxDUh" to="lzb2:~JBColor" resolve="JBColor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7uQHEcHfz7D" role="3cqZAp">
          <node concept="37vLTw" id="7uQHEcHf_uN" role="3cqZAk">
            <ref role="3cqZAo" node="7uQHEcHeZ1M" resolve="sp" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7uQHEcHeHhw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4akBq_r2agG" role="jymVt" />
    <node concept="3clFb_" id="4akBq_r2e4b" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmptyCell" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4akBq_r2e4c" role="1B3o_S" />
      <node concept="3uibUv" id="4akBq_r2e4e" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="3clFbS" id="4akBq_r2e4f" role="3clF47">
        <node concept="3cpWs6" id="42hl10VHayq" role="3cqZAp">
          <node concept="2ShNRf" id="42hl10VHayr" role="3cqZAk">
            <node concept="1pGfFk" id="42hl10VHays" role="2ShVmc">
              <ref role="37wK5l" to="g51k:~EditorCell_Constant.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="EditorCell_Constant" />
              <node concept="1rXfSq" id="4hiugqyzjXV" role="37wK5m">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
              <node concept="1rXfSq" id="4hiugqyzjXz" role="37wK5m">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
              </node>
              <node concept="Xl_RD" id="42hl10VHayv" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4akBq_r2e4g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

