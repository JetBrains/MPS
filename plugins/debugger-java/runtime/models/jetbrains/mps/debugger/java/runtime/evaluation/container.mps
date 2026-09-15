<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f5448de3-0d76-42bb-afa7-00b3b32de849(jetbrains.mps.debugger.java.runtime.evaluation.container)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qgwr" ref="r:f326a98e-32f7-47a0-ba29-239107a89ca4(jetbrains.mps.debugger.java.api.evaluation)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="a3o9" ref="r:6c15a5c9-1bba-4ade-a066-13f2741b04fc(jetbrains.mps.debugger.java.api.state)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="8sls" ref="r:3a27a6eb-dfce-419d-9e4c-ca44cc01a2e2(jetbrains.mps.debugger.java.evaluation.structure)" />
    <import index="d822" ref="r:63e7a653-1334-49d4-8e81-fd72b84fb4ff(jetbrains.mps.debugger.java.runtime.state)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="i9so" ref="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" />
    <import index="crif" ref="r:64e8c41f-3f2d-46c6-8308-0849585af7d7(jetbrains.mps.debugger.java.evaluation.plugin)" />
    <import index="fn29" ref="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="drpk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.make(MPS.Platform/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="yo81" ref="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="gvpw" ref="r:23e91135-7369-4a41-8156-2843acab7aa3(jetbrains.mps.debugger.java.evaluation.behavior)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
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
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
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
    <language id="696c1165-4a59-463b-bc5d-902caab85dd0" name="jetbrains.mps.make.facet">
      <concept id="8703512757937156087" name="jetbrains.mps.make.facet.structure.TargetReferenceExpression" flags="nn" index="29r_a">
        <reference id="8703512757937161148" name="target" index="29tk1" />
        <child id="8703512757937161134" name="facetRef" index="29tkj" />
      </concept>
      <concept id="1919086248986845077" name="jetbrains.mps.make.facet.structure.NamedFacetReference" flags="ng" index="2e$Q_j" />
      <concept id="7178445679340358576" name="jetbrains.mps.make.facet.structure.FacetReferenceExpression" flags="nn" index="2n6ZRZ">
        <child id="7178445679340358578" name="reference" index="2n6ZRX" />
      </concept>
      <concept id="6447445394688422642" name="jetbrains.mps.make.facet.structure.FacetReference" flags="ng" index="1Mm5Yv">
        <reference id="6447445394688422643" name="facet" index="1Mm5Yu" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="IYmOvntYf6">
    <property role="TrG5h" value="EvaluationContainer" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="IYmOvnPjbf" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="OqYxEjOcs_" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="hASWOEq6Fx" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="IYmOvnLPie" role="jymVt">
      <property role="TrG5h" value="myContainerModule" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="hASWOEn6b5" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnMaRg" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="312cEg" id="IYmOvnLXFn" role="jymVt">
      <property role="TrG5h" value="myContainerModel" />
      <property role="34CwA1" value="true" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="hASWOEipka" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnMdz$" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
    </node>
    <node concept="312cEg" id="IYmOvnMC4i" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="34CwA1" value="true" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tmbuc" id="hASWOEintR" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnMC6e" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="IYmOvnMT_e" role="jymVt">
      <property role="TrG5h" value="myDebuggerRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="Tb4PsnpRug" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="3Tmbuc" id="hASWOEn9Vw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="IYmOvnTy_I" role="jymVt" />
    <node concept="312cEg" id="IYmOvnTyO1" role="jymVt">
      <property role="TrG5h" value="myDebugSession" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="hASWOEmvNn" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnTySV" role="1tU5fm">
        <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
      </node>
    </node>
    <node concept="312cEg" id="IYmOvnTyYh" role="jymVt">
      <property role="TrG5h" value="myUiState" />
      <property role="34CwA1" value="true" />
      <node concept="3Tmbuc" id="hASWOEmws5" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnTz3e" role="1tU5fm">
        <ref role="3uigEE" to="a3o9:2Y$mRnICm6b" resolve="JavaUiState" />
      </node>
    </node>
    <node concept="2tJIrI" id="IYmOvnMVoe" role="jymVt" />
    <node concept="3clFbW" id="IYmOvnLP6N" role="jymVt">
      <node concept="37vLTG" id="IYmOvnPiYa" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="OqYxEjPrEc" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvnTzzG" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="IYmOvnTzAX" role="1tU5fm">
          <ref role="3uigEE" to="d822:3L_P6qKH88z" resolve="DebugSession" />
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvnTHmj" role="3clF46">
        <property role="TrG5h" value="containerModule" />
        <node concept="3uibUv" id="IYmOvnTHoO" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="2AHcQZ" id="5znotC_qO2n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="IYmOvnLP6O" role="3clF45" />
      <node concept="3Tm1VV" id="IYmOvnLP6P" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnLP6R" role="3clF47">
        <node concept="3clFbF" id="IYmOvnPjj2" role="3cqZAp">
          <node concept="37vLTI" id="IYmOvnPju$" role="3clFbG">
            <node concept="37vLTw" id="IYmOvnPjzj" role="37vLTx">
              <ref role="3cqZAo" node="IYmOvnPiYa" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="IYmOvnPjj1" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnPjbf" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IYmOvnTzMD" role="3cqZAp">
          <node concept="37vLTI" id="IYmOvnTzUc" role="3clFbG">
            <node concept="37vLTw" id="IYmOvnTzZt" role="37vLTx">
              <ref role="3cqZAo" node="IYmOvnTzzG" resolve="session" />
            </node>
            <node concept="37vLTw" id="IYmOvnTzMC" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnTyO1" resolve="myDebugSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IYmOvnLPuB" role="3cqZAp">
          <node concept="37vLTI" id="IYmOvnLPCq" role="3clFbG">
            <node concept="37vLTw" id="IYmOvnLPuA" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnLPie" resolve="myContainerModule" />
            </node>
            <node concept="37vLTw" id="IYmOvnTI0P" role="37vLTx">
              <ref role="3cqZAo" node="IYmOvnTHmj" resolve="containerModule" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3QVEyvl1WVW" role="3cqZAp">
          <node concept="37vLTI" id="3QVEyvl1WVX" role="3clFbG">
            <node concept="2OqwBi" id="3QVEyvl1WVY" role="37vLTx">
              <node concept="liA8E" id="3QVEyvl1WVZ" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
              </node>
              <node concept="37vLTw" id="3QVEyvl1WW0" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnTyO1" resolve="myDebugSession" />
              </node>
            </node>
            <node concept="37vLTw" id="3QVEyvl1WW1" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnTyYh" resolve="myUiState" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Tb4PsnpQvT" role="3cqZAp">
          <node concept="37vLTI" id="Tb4PsnpQJ6" role="3clFbG">
            <node concept="2OqwBi" id="Tb4PsnpRhO" role="37vLTx">
              <node concept="37vLTw" id="Tb4PsnpR8o" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnPiYa" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="Tb4PsnpRo$" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="37vLTw" id="Tb4PsnpQvR" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="OqYxEjUiYh" role="3cqZAp">
          <node concept="3cpWsn" id="OqYxEjUiYi" role="3cpWs9">
            <property role="TrG5h" value="modelAccess" />
            <node concept="3uibUv" id="OqYxEjUiYc" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="2OqwBi" id="OqYxEjUiYj" role="33vP2m">
              <node concept="liA8E" id="OqYxEjUiYk" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="OqYxEjUiYn" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnPiYa" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="OqYxEjU8Yj" role="3cqZAp">
          <node concept="2OqwBi" id="OqYxEjUkXA" role="3clFbG">
            <node concept="liA8E" id="OqYxEjUnvZ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
              <node concept="1bVj0M" id="OqYxEjUpoW" role="37wK5m">
                <node concept="3clFbS" id="OqYxEjUpoX" role="1bW5cS">
                  <node concept="3cpWs8" id="_Rntce2R6g" role="3cqZAp">
                    <node concept="3cpWsn" id="_Rntce2R6h" role="3cpWs9">
                      <property role="TrG5h" value="containerModule" />
                      <node concept="3uibUv" id="_Rntce2R24" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="_Rntce2R6i" role="33vP2m">
                        <node concept="liA8E" id="_Rntce2R6j" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="_Rntce2R6k" role="37wK5m">
                            <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="_Rntce2R6l" role="2Oq$k0">
                          <ref role="3cqZAo" node="IYmOvnLPie" resolve="myContainerModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="IYmOvnM0e5" role="3cqZAp">
                    <node concept="3cpWsn" id="IYmOvnM0e6" role="3cpWs9">
                      <property role="TrG5h" value="descriptor" />
                      <node concept="3uibUv" id="OqYxEjUAkd" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="6N7oOgwRa63" role="33vP2m">
                        <node concept="liA8E" id="6N7oOgwRbMb" role="2OqNvi">
                          <ref role="37wK5l" to="tqvn:~TemporaryModels.createLongTerm(java.lang.String,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="createLongTerm" />
                          <node concept="Xl_RD" id="5wjl$8BC3fJ" role="37wK5m">
                            <property role="Xl_RC" value="DebuggerModel" />
                          </node>
                          <node concept="2YIFZM" id="6N7oOgwReRI" role="37wK5m">
                            <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
                            <ref role="37wK5l" to="tqvn:~TempModuleOptions.forExistingModule(org.jetbrains.mps.openapi.module.SModule)" resolve="forExistingModule" />
                            <node concept="37vLTw" id="6N7oOgwRo2Z" role="37wK5m">
                              <ref role="3cqZAo" node="_Rntce2R6h" resolve="containerModule" />
                            </node>
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6N7oOgwR93h" role="2Oq$k0">
                          <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
                          <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="IYmOvnMdGB" role="3cqZAp">
                    <node concept="37vLTI" id="IYmOvnMetz" role="3clFbG">
                      <node concept="37vLTw" id="IYmOvnMdGA" role="37vLTJ">
                        <ref role="3cqZAo" node="IYmOvnLXFn" resolve="myContainerModel" />
                      </node>
                      <node concept="2OqwBi" id="IYmOvnMbZq" role="37vLTx">
                        <node concept="liA8E" id="IYmOvnMdws" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                        </node>
                        <node concept="37vLTw" id="IYmOvnMbMJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="IYmOvnM0e6" resolve="descriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="OqYxEjUiYo" role="2Oq$k0">
              <ref role="3cqZAo" node="OqYxEjUiYi" resolve="modelAccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="IYmOvnMVrT" role="jymVt" />
    <node concept="3clFb_" id="IYmOvn$KD0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="generateClass" />
      <node concept="3uibUv" id="IYmOvn$KD1" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3Tm1VV" id="IYmOvn$KD2" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvn$KD4" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
      </node>
      <node concept="3clFbS" id="IYmOvn$KD5" role="3clF47">
        <node concept="3SKdUt" id="1fR_qhYXB0X" role="3cqZAp">
          <node concept="1PaTwC" id="1fR_qhYXB11" role="1aUNEU">
            <node concept="3oM_SD" id="1fR_qhYXB13" role="1PaTwD">
              <property role="3oM_SC" value="Release" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB14" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB15" role="1PaTwD">
              <property role="3oM_SC" value="read" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB16" role="1PaTwD">
              <property role="3oM_SC" value="access" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB17" role="1PaTwD">
              <property role="3oM_SC" value="before" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB18" role="1PaTwD">
              <property role="3oM_SC" value="make," />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB19" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB1a" role="1PaTwD">
              <property role="3oM_SC" value="needs" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB1b" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="1fR_qhYXB1c" role="1PaTwD">
              <property role="3oM_SC" value="access." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6zsZmIBYLV9" role="3cqZAp">
          <node concept="3cpWsn" id="6zsZmIBYLVa" role="3cpWs9">
            <property role="TrG5h" value="containerModel" />
            <node concept="2OqwBi" id="1fR_qhYX$pf" role="33vP2m">
              <node concept="2ShNRf" id="1fR_qhYX$ow" role="2Oq$k0">
                <node concept="1pGfFk" id="1fR_qhYX$oH" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                  <node concept="37vLTw" id="1fR_qhYX$oI" role="37wK5m">
                    <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1fR_qhYX$pg" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="1fR_qhYX$ph" role="37wK5m">
                  <node concept="3clFbS" id="1fR_qhYX$pi" role="1bW5cS">
                    <node concept="3clFbF" id="1fR_qhYX$pj" role="3cqZAp">
                      <node concept="2OqwBi" id="1fR_qhYX$pO" role="3clFbG">
                        <node concept="37vLTw" id="1fR_qhYX$pl" role="2Oq$k0">
                          <ref role="3cqZAo" node="IYmOvnLXFn" resolve="myContainerModel" />
                        </node>
                        <node concept="liA8E" id="1fR_qhYX$pP" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="37vLTw" id="1fR_qhYX$pQ" role="37wK5m">
                            <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6zsZmIBYLVf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IYmOvn0m$2" role="3cqZAp">
          <node concept="2YIFZM" id="IYmOvnjm9o" role="3clFbG">
            <ref role="37wK5l" node="IYmOvntYfo" resolve="generateAndLoadEvaluatorClass" />
            <ref role="1Pybhc" node="IYmOvntYfm" resolve="GeneratorUtil" />
            <node concept="37vLTw" id="IYmOvnPkw0" role="37wK5m">
              <ref role="3cqZAo" node="IYmOvnPjbf" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="6zsZmIBYOCo" role="37wK5m">
              <ref role="3cqZAo" node="6zsZmIBYLVa" resolve="containerModel" />
            </node>
            <node concept="10M0yZ" id="7GZZbkP_jD" role="37wK5m">
              <ref role="1PxDUh" node="7GZZbkP$rA" resolve="Properties" />
              <ref role="3cqZAo" node="7GZZbkP_jz" resolve="EVALUATOR_NAME" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UybI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Tb4PsnpKV8" role="jymVt" />
    <node concept="3clFb_" id="IYmOvn$KD8" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEvaluatorInstance" />
      <node concept="3uibUv" id="IYmOvnTVqj" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3uibUv" id="IYmOvn$KD9" role="3clF45">
        <ref role="3uigEE" to="qgwr:46sxDGTfo5B" resolve="Evaluator" />
      </node>
      <node concept="3Tm1VV" id="IYmOvn$KDa" role="1B3o_S" />
      <node concept="37vLTG" id="IYmOvn$KDc" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="IYmOvn$KDd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        </node>
      </node>
      <node concept="3clFbS" id="IYmOvn$KDe" role="3clF47">
        <node concept="3clFbF" id="IYmOvnjGoj" role="3cqZAp">
          <node concept="2YIFZM" id="IYmOvnjGq7" role="3clFbG">
            <ref role="1Pybhc" node="IYmOvntYfm" resolve="GeneratorUtil" />
            <ref role="37wK5l" node="IYmOvntYif" resolve="createInstance" />
            <node concept="37vLTw" id="IYmOvnjGzJ" role="37wK5m">
              <ref role="3cqZAo" node="IYmOvn$KDc" resolve="clazz" />
            </node>
            <node concept="2ShNRf" id="IYmOvnjG_e" role="37wK5m">
              <node concept="3g6Rrh" id="IYmOvnjKJV" role="2ShVmc">
                <node concept="3VsKOn" id="IYmOvnjMDz" role="3g7hyw">
                  <ref role="3VsUkX" to="a3o9:2Y$mRnICm6b" resolve="JavaUiState" />
                </node>
                <node concept="3uibUv" id="IYmOvnjJN8" role="3g7fb8">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="IYmOvnjMOP" role="37wK5m">
              <node concept="3g6Rrh" id="IYmOvnjNVq" role="2ShVmc">
                <node concept="37vLTw" id="IYmOvnTR5z" role="3g7hyw">
                  <ref role="3cqZAo" node="IYmOvnTyYh" resolve="myUiState" />
                </node>
                <node concept="3uibUv" id="IYmOvnjNcy" role="3g7fb8">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Uybv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5UmwnySZJYu" role="jymVt" />
    <node concept="3Tm1VV" id="IYmOvntYf7" role="1B3o_S" />
    <node concept="3uibUv" id="IYmOvnwl8e" role="EKbjA">
      <ref role="3uigEE" node="IYmOvnu1Zm" resolve="IEvaluationContainer" />
    </node>
    <node concept="3clFb_" id="IYmOvnwm09" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="copy" />
      <node concept="37vLTG" id="IYmOvnwm0a" role="3clF46">
        <property role="TrG5h" value="isWatch" />
        <node concept="10P_77" id="IYmOvnwm0b" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5LCzy_V4Rl7" role="3clF46">
        <property role="TrG5h" value="onNodeSetUp" />
        <node concept="1ajhzC" id="5LCzy_V4Rld" role="1tU5fm">
          <node concept="3cqZAl" id="5LCzy_V4Rll" role="1ajl9A" />
          <node concept="3uibUv" id="5LCzy_V4Rlj" role="1ajw0F">
            <ref role="3uigEE" node="IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IYmOvnwm0c" role="1B3o_S" />
      <node concept="3uibUv" id="IYmOvnwm0e" role="3clF45">
        <ref role="3uigEE" node="IYmOvnu1Zm" resolve="IEvaluationContainer" />
      </node>
      <node concept="3clFbS" id="IYmOvnwm0f" role="3clF47" />
      <node concept="2AHcQZ" id="3tYsUK_UybO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5UmwnySZKTa" role="jymVt" />
    <node concept="3clFb_" id="IYmOvn_6_I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="IYmOvn_6_J" role="1B3o_S" />
      <node concept="17QB3L" id="IYmOvn_6_L" role="3clF45" />
      <node concept="3clFbS" id="IYmOvn_6_M" role="3clF47">
        <node concept="3clFbF" id="7XaAmAsUA_f" role="3cqZAp">
          <node concept="2OqwBi" id="7XaAmAsUA_i" role="3clFbG">
            <node concept="2ShNRf" id="3lMTlvhUdTl" role="2Oq$k0">
              <node concept="1pGfFk" id="3lMTlvhUe_l" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                <node concept="37vLTw" id="3lMTlvhUeGz" role="37wK5m">
                  <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7XaAmAsUAWO" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="7XaAmAsUAWP" role="37wK5m">
                <node concept="YeOm9" id="7XaAmAsUAWR" role="2ShVmc">
                  <node concept="1Y3b0j" id="7XaAmAsUAWS" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                    <node concept="3Tm1VV" id="7XaAmAsUAWT" role="1B3o_S" />
                    <node concept="17QB3L" id="7XaAmAsUAWZ" role="2Ghqu4" />
                    <node concept="3clFb_" id="7XaAmAsUAWU" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="compute" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="7XaAmAsUAWV" role="1B3o_S" />
                      <node concept="17QB3L" id="7XaAmAsUAX0" role="3clF45" />
                      <node concept="3clFbS" id="7XaAmAsUAWX" role="3clF47">
                        <node concept="3clFbF" id="IYmOvnXqnm" role="3cqZAp">
                          <node concept="2YIFZM" id="IYmOvnXqnT" role="3clFbG">
                            <ref role="1Pybhc" node="IYmOvnWiI0" resolve="PresentationUtil" />
                            <ref role="37wK5l" node="IYmOvnWiY7" resolve="getPresentation" />
                            <node concept="2OqwBi" id="IYmOvnXsW7" role="37wK5m">
                              <node concept="3zqWPK" id="70OdufORce9" role="2OqNvi">
                                <ref role="37wK5l" to="gvpw:hASWOEj0jB" resolve="getCode" />
                              </node>
                              <node concept="1PxgMI" id="IYmOvnXrjs" role="2Oq$k0">
                                <node concept="chp4Y" id="714IaVdH1w9" role="3oSUPX">
                                  <ref role="cht4Q" to="8sls:7XaAmAsUzpV" resolve="IEvaluatorConcept" />
                                </node>
                                <node concept="1rXfSq" id="IYmOvnXqqU" role="1m5AlR">
                                  <ref role="37wK5l" node="IYmOvnJt$W" resolve="getNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_RXtJ" role="2AJF6D">
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
      <node concept="2AHcQZ" id="3tYsUK_UybD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Tb4PsnpGBy" role="jymVt" />
    <node concept="3clFb_" id="IYmOvnJt$W" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="IYmOvnJt$X" role="1B3o_S" />
      <node concept="3Tqbb2" id="IYmOvnJt$Z" role="3clF45" />
      <node concept="3clFbS" id="IYmOvnJt_0" role="3clF47">
        <node concept="3clFbJ" id="IYmOvnMTew" role="3cqZAp">
          <node concept="3clFbC" id="IYmOvnMToe" role="3clFbw">
            <node concept="10Nm6u" id="IYmOvnMTr0" role="3uHU7w" />
            <node concept="37vLTw" id="IYmOvnMThB" role="3uHU7B">
              <ref role="3cqZAo" node="IYmOvnMC4i" resolve="myNode" />
            </node>
          </node>
          <node concept="3clFbS" id="IYmOvnMTey" role="3clFbx">
            <node concept="3cpWs6" id="IYmOvnMTtC" role="3cqZAp">
              <node concept="10Nm6u" id="IYmOvnMTuH" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IYmOvnMChJ" role="3cqZAp">
          <node concept="2OqwBi" id="IYmOvnMCmn" role="3clFbG">
            <node concept="liA8E" id="IYmOvnMCTM" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
              <node concept="37vLTw" id="IYmOvnMTP0" role="37wK5m">
                <ref role="3cqZAo" node="IYmOvnMT_e" resolve="myDebuggerRepository" />
              </node>
            </node>
            <node concept="37vLTw" id="IYmOvnMChI" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnMC4i" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Uybo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5UmwnySZL2S" role="jymVt" />
    <node concept="3clFb_" id="IYmOvnJt_1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="updateState" />
      <node concept="3cqZAl" id="IYmOvnJt_2" role="3clF45" />
      <node concept="3Tm1VV" id="IYmOvnJt_3" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnJt_5" role="3clF47">
        <node concept="3clFbF" id="IYmOvnTIkj" role="3cqZAp">
          <node concept="37vLTI" id="IYmOvnTIte" role="3clFbG">
            <node concept="2OqwBi" id="IYmOvnTIFo" role="37vLTx">
              <node concept="liA8E" id="IYmOvnTK3d" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
              </node>
              <node concept="37vLTw" id="IYmOvnTIvT" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnTyO1" resolve="myDebugSession" />
              </node>
            </node>
            <node concept="37vLTw" id="IYmOvnTIki" role="37vLTJ">
              <ref role="3cqZAo" node="IYmOvnTyYh" resolve="myUiState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_UybL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="IYmOvntYf8">
    <property role="TrG5h" value="EvaluationModule" />
    <property role="1EXbeo" value="true" />
    <node concept="3UR2Jj" id="43MM86uVfEz" role="lGtFl">
      <node concept="1PaTwC" id="1E1X3WHsAW7" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAW8" role="1PaTwD">
          <property role="3oM_SC" value="This" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAW9" role="1PaTwD">
          <property role="3oM_SC" value="module" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWa" role="1PaTwD">
          <property role="3oM_SC" value="contains" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWb" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWc" role="1PaTwD">
          <property role="3oM_SC" value="necessary" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWd" role="1PaTwD">
          <property role="3oM_SC" value="information" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWe" role="1PaTwD">
          <property role="3oM_SC" value="for" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWf" role="1PaTwD">
          <property role="3oM_SC" value="the" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWg" role="1PaTwD">
          <property role="3oM_SC" value="'evaluate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWh" role="1PaTwD">
          <property role="3oM_SC" value="expression'" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAWi" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAWj" role="1PaTwD">
          <property role="3oM_SC" value="action" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWk" role="1PaTwD">
          <property role="3oM_SC" value="during" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWl" role="1PaTwD">
          <property role="3oM_SC" value="a" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWm" role="1PaTwD">
          <property role="3oM_SC" value="debug" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWn" role="1PaTwD">
          <property role="3oM_SC" value="session." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAWo" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAWp" role="1PaTwD">
          <property role="3oM_SC" value="Have" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWq" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWr" role="1PaTwD">
          <property role="3oM_SC" value="be" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWs" role="1PaTwD">
          <property role="3oM_SC" value="ReloadableModule" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWt" role="1PaTwD">
          <property role="3oM_SC" value="as" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWu" role="1PaTwD">
          <property role="3oM_SC" value="I'd" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWv" role="1PaTwD">
          <property role="3oM_SC" value="like" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWw" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWx" role="1PaTwD">
          <property role="3oM_SC" value="use" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWy" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWz" role="1PaTwD">
          <property role="3oM_SC" value="CLM" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAW$" role="1PaTwD">
          <property role="3oM_SC" value="mechanism" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAW_" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWA" role="1PaTwD">
          <property role="3oM_SC" value="compile" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWB" role="1PaTwD">
          <property role="3oM_SC" value="code" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWC" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWD" role="1PaTwD">
          <property role="3oM_SC" value="access" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWE" role="1PaTwD">
          <property role="3oM_SC" value="generated" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWF" role="1PaTwD">
          <property role="3oM_SC" value="classes." />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAWG" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAWH" role="1PaTwD">
          <property role="3oM_SC" value="Alternatively," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWI" role="1PaTwD">
          <property role="3oM_SC" value="may" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWJ" role="1PaTwD">
          <property role="3oM_SC" value="generate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWK" role="1PaTwD">
          <property role="3oM_SC" value="plain" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWL" role="1PaTwD">
          <property role="3oM_SC" value="text," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWM" role="1PaTwD">
          <property role="3oM_SC" value="compile" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWN" role="1PaTwD">
          <property role="3oM_SC" value="it" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWO" role="1PaTwD">
          <property role="3oM_SC" value="with" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWP" role="1PaTwD">
          <property role="3oM_SC" value="JavaCompiler" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWQ" role="1PaTwD">
          <property role="3oM_SC" value="impl," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWR" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWS" role="1PaTwD">
          <property role="3oM_SC" value="load" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWT" role="1PaTwD">
          <property role="3oM_SC" value="classes" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWU" role="1PaTwD">
          <property role="3oM_SC" value="by" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWV" role="1PaTwD">
          <property role="3oM_SC" value="some" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWW" role="1PaTwD">
          <property role="3oM_SC" value="URLClassLoader," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWX" role="1PaTwD">
          <property role="3oM_SC" value="which" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWY" role="1PaTwD">
          <property role="3oM_SC" value="seems" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAWZ" role="1PaTwD">
          <property role="3oM_SC" value="too" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAX0" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAX1" role="1PaTwD">
          <property role="3oM_SC" value="much" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX2" role="1PaTwD">
          <property role="3oM_SC" value="pain," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX3" role="1PaTwD">
          <property role="3oM_SC" value="provided" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX4" role="1PaTwD">
          <property role="3oM_SC" value="rest" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX5" role="1PaTwD">
          <property role="3oM_SC" value="of" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX6" role="1PaTwD">
          <property role="3oM_SC" value="MPS" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX7" role="1PaTwD">
          <property role="3oM_SC" value="sticks" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX8" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAX9" role="1PaTwD">
          <property role="3oM_SC" value="ReloadableModule" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXa" role="1PaTwD">
          <property role="3oM_SC" value="(e.g." />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXb" role="1PaTwD">
          <property role="3oM_SC" value="temp" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXc" role="1PaTwD">
          <property role="3oM_SC" value="models" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXd" role="1PaTwD">
          <property role="3oM_SC" value="and" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXe" role="1PaTwD">
          <property role="3oM_SC" value="console)" />
        </node>
      </node>
      <node concept="1PaTwC" id="1E1X3WHsAXf" role="1Vez_I">
        <node concept="3oM_SD" id="1E1X3WHsAXg" role="1PaTwD">
          <property role="3oM_SC" value="Although" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXh" role="1PaTwD">
          <property role="3oM_SC" value="generic" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXi" role="1PaTwD">
          <property role="3oM_SC" value="GenerationTargetFacet" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXj" role="1PaTwD">
          <property role="3oM_SC" value="could" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXk" role="1PaTwD">
          <property role="3oM_SC" value="suffice" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXl" role="1PaTwD">
          <property role="3oM_SC" value="here" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXm" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXn" role="1PaTwD">
          <property role="3oM_SC" value="control" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXo" role="1PaTwD">
          <property role="3oM_SC" value="output," />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXp" role="1PaTwD">
          <property role="3oM_SC" value="need" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXq" role="1PaTwD">
          <property role="3oM_SC" value="JMF" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXr" role="1PaTwD">
          <property role="3oM_SC" value="to" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXs" role="1PaTwD">
          <property role="3oM_SC" value="facilitate" />
        </node>
        <node concept="3oM_SD" id="1E1X3WHsAXt" role="1PaTwD">
          <property role="3oM_SC" value="compilation/classloading" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="29Pb3oJp8Wm" role="jymVt">
      <property role="TrG5h" value="myDescriptor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="29Pb3oJp8Ye" role="1tU5fm">
        <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
      </node>
      <node concept="3Tm6S6" id="29Pb3oJp8Wn" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="jVJrchkIFy" role="jymVt">
      <property role="TrG5h" value="myPlatform" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="jVJrchkIFz" role="1B3o_S" />
      <node concept="3uibUv" id="jVJrchkIF_" role="1tU5fm">
        <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
      </node>
    </node>
    <node concept="Wx3nA" id="u1wCMkc3Wb" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ourCounter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="u1wCMkc3Kc" role="1B3o_S" />
      <node concept="3uibUv" id="u1wCMkc3W9" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="2ShNRf" id="u1wCMkc4aW" role="33vP2m">
        <node concept="1pGfFk" id="u1wCMkcg9s" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;()" resolve="AtomicInteger" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3uNHdNFkPbq" role="jymVt" />
    <node concept="312cEg" id="3uNHdNFqwIx" role="jymVt">
      <property role="TrG5h" value="myTempModuleLocation" />
      <node concept="3Tm6S6" id="3uNHdNFquFB" role="1B3o_S" />
      <node concept="3uibUv" id="3uNHdNFqw37" role="1tU5fm">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
    </node>
    <node concept="312cEg" id="3uNHdNFkTm_" role="jymVt">
      <property role="TrG5h" value="myJavaFacet" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3uNHdNFkR4o" role="1B3o_S" />
      <node concept="3uibUv" id="3uNHdNFkV4X" role="1tU5fm">
        <ref role="3uigEE" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
      </node>
      <node concept="2ShNRf" id="3uNHdNFp$BX" role="33vP2m">
        <node concept="YeOm9" id="3uNHdNFpDS2" role="2ShVmc">
          <node concept="1Y3b0j" id="3uNHdNFpDS5" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="373rjd" value="true" />
            <ref role="1Y3XeK" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="3uNHdNFpDS6" role="1B3o_S" />
            <node concept="3clFb_" id="3uNHdNFpDSk" role="jymVt">
              <property role="TrG5h" value="getModule" />
              <node concept="3Tm1VV" id="3uNHdNFpDSl" role="1B3o_S" />
              <node concept="2AHcQZ" id="3uNHdNFpDSn" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3uNHdNFpDSo" role="3clF45">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="3clFbS" id="3uNHdNFpDSp" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFpFux" role="3cqZAp">
                  <node concept="Xjq3P" id="3uNHdNFpH04" role="3clFbG">
                    <ref role="1HBi2w" node="IYmOvntYf8" resolve="EvaluationModule" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDSr" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDSs" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDSt" role="jymVt">
              <property role="TrG5h" value="getFacetType" />
              <node concept="3Tm1VV" id="3uNHdNFpDSu" role="1B3o_S" />
              <node concept="2AHcQZ" id="3uNHdNFpDSw" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="3uNHdNFpDSx" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3uNHdNFpDSy" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFpIDI" role="3cqZAp">
                  <node concept="10M0yZ" id="3uNHdNFpKlj" role="3clFbG">
                    <ref role="3cqZAo" to="b0pz:~JavaModuleFacet.FACET_TYPE" resolve="FACET_TYPE" />
                    <ref role="1PxDUh" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDS$" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDS_" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDT4" role="jymVt">
              <property role="TrG5h" value="getLanguageLevel" />
              <node concept="3Tm1VV" id="3uNHdNFpDT5" role="1B3o_S" />
              <node concept="3uibUv" id="3uNHdNFpDT7" role="3clF45">
                <ref role="3uigEE" to="b0pz:~JavaLanguageLevel" resolve="JavaLanguageLevel" />
              </node>
              <node concept="3clFbS" id="3uNHdNFpDT8" role="3clF47">
                <node concept="3SKdUt" id="3uNHdNFpRea" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFpReb" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFpSU7" role="1PaTwD">
                      <property role="3oM_SC" value="why" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpSUj" role="1PaTwD">
                      <property role="3oM_SC" value="not," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpSUm" role="1PaTwD">
                      <property role="3oM_SC" value="after" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpSUU" role="1PaTwD">
                      <property role="3oM_SC" value="all?" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3uNHdNFpNcm" role="3cqZAp">
                  <node concept="Rm8GO" id="3uNHdNFpOSe" role="3clFbG">
                    <ref role="Rm8GQ" to="b0pz:~JavaLanguageLevel.JAVA_10" resolve="JAVA_10" />
                    <ref role="1Px2BO" to="b0pz:~JavaLanguageLevel" resolve="JavaLanguageLevel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDTa" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDTb" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDTc" role="jymVt">
              <property role="TrG5h" value="getClassesGen" />
              <node concept="3Tm1VV" id="3uNHdNFpDTd" role="1B3o_S" />
              <node concept="2AHcQZ" id="3uNHdNFpDTf" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3uNHdNFpDTg" role="3clF45">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
              <node concept="3clFbS" id="3uNHdNFpDTh" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFqxTD" role="3cqZAp">
                  <node concept="2OqwBi" id="3uNHdNFqzgw" role="3clFbG">
                    <node concept="37vLTw" id="3uNHdNFqxTC" role="2Oq$k0">
                      <ref role="3cqZAo" node="3uNHdNFqwIx" resolve="myTempModuleLocation" />
                    </node>
                    <node concept="liA8E" id="3uNHdNFq$BC" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                      <node concept="Xl_RD" id="3uNHdNFq_CL" role="37wK5m">
                        <property role="Xl_RC" value="cls_gen" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDTj" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDTk" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDTl" role="jymVt">
              <property role="TrG5h" value="getLibraryClassPath" />
              <node concept="3Tm1VV" id="3uNHdNFpDTm" role="1B3o_S" />
              <node concept="3uibUv" id="3uNHdNFpDTo" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="3uNHdNFpDTp" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3clFbS" id="3uNHdNFpDTq" role="3clF47">
                <node concept="3SKdUt" id="3uNHdNFpX0z" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFpX0$" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFpYiR" role="1PaTwD">
                      <property role="3oM_SC" value="none" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYje" role="1PaTwD">
                      <property role="3oM_SC" value="specific" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjh" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjl" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjq" role="1PaTwD">
                      <property role="3oM_SC" value="module," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjw" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjB" role="1PaTwD">
                      <property role="3oM_SC" value="guess." />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjJ" role="1PaTwD">
                      <property role="3oM_SC" value="In" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYjS" role="1PaTwD">
                      <property role="3oM_SC" value="case" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYkK" role="1PaTwD">
                      <property role="3oM_SC" value="there" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYkV" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYl7" role="1PaTwD">
                      <property role="3oM_SC" value="any" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYlL" role="1PaTwD">
                      <property role="3oM_SC" value="debugger-specific" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYlZ" role="1PaTwD">
                      <property role="3oM_SC" value="requirement," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYme" role="1PaTwD">
                      <property role="3oM_SC" value="may" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYmu" role="1PaTwD">
                      <property role="3oM_SC" value="add" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYmJ" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFpYn1" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3uNHdNFq05c" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFq05d" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFq0rG" role="1PaTwD">
                      <property role="3oM_SC" value="although" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq0rI" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1ec" role="1PaTwD">
                      <property role="3oM_SC" value="expect" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1eo" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1et" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1ez" role="1PaTwD">
                      <property role="3oM_SC" value="everything" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1f2" role="1PaTwD">
                      <property role="3oM_SC" value="needed" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1fy" role="1PaTwD">
                      <property role="3oM_SC" value="through" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1fF" role="1PaTwD">
                      <property role="3oM_SC" value="module" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFq1fX" role="1PaTwD">
                      <property role="3oM_SC" value="dependencies" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3uNHdNFpT1s" role="3cqZAp">
                  <node concept="2YIFZM" id="3uNHdNFpUxU" role="3clFbG">
                    <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDTs" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDTt" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDTu" role="jymVt">
              <property role="TrG5h" value="getClassPath" />
              <node concept="3Tm1VV" id="3uNHdNFpDTv" role="1B3o_S" />
              <node concept="3uibUv" id="3uNHdNFpDTx" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="3uNHdNFpDTy" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3clFbS" id="3uNHdNFpDTz" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFq4x$" role="3cqZAp">
                  <node concept="2YIFZM" id="3uNHdNFq5Q1" role="3clFbG">
                    <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="2OqwBi" id="3uNHdNFq99k" role="37wK5m">
                      <node concept="1rXfSq" id="3uNHdNFq7CT" role="2Oq$k0">
                        <ref role="37wK5l" node="3uNHdNFpDTc" resolve="getClassesGen" />
                      </node>
                      <node concept="liA8E" id="3uNHdNFqbjP" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDT_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFpDTA" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFpDTB" role="jymVt">
              <property role="TrG5h" value="getAdditionalSourcePaths" />
              <node concept="3Tm1VV" id="3uNHdNFpDTC" role="1B3o_S" />
              <node concept="3uibUv" id="3uNHdNFpDTE" role="3clF45">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="3uibUv" id="3uNHdNFpDTF" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
              <node concept="3clFbS" id="3uNHdNFpDTG" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFq1mH" role="3cqZAp">
                  <node concept="2YIFZM" id="3uNHdNFq2Ww" role="3clFbG">
                    <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFpDTI" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFqEgs" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFqFBG" role="jymVt">
              <property role="TrG5h" value="getOutputRoot" />
              <node concept="3Tm1VV" id="3uNHdNFqFBI" role="1B3o_S" />
              <node concept="2AHcQZ" id="3uNHdNFqFBK" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3uNHdNFqFBL" role="3clF45">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
              <node concept="3clFbS" id="3uNHdNFqFBN" role="3clF47">
                <node concept="3SKdUt" id="3uNHdNFqS32" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFqS33" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFqS3a" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT8y" role="1PaTwD">
                      <property role="3oM_SC" value="part" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT8_" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT8D" role="1PaTwD">
                      <property role="3oM_SC" value="GenerationTargetFacet" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT9d" role="1PaTwD">
                      <property role="3oM_SC" value="API," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT9z" role="1PaTwD">
                      <property role="3oM_SC" value="rather" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqT9M" role="1PaTwD">
                      <property role="3oM_SC" value="implementation" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTaa" role="1PaTwD">
                      <property role="3oM_SC" value="helper" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTb0" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTc9" role="1PaTwD">
                      <property role="3oM_SC" value="JMF," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTc$" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTcK" role="1PaTwD">
                      <property role="3oM_SC" value="there" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTcX" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTdb" role="1PaTwD">
                      <property role="3oM_SC" value="uses" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTdM" role="1PaTwD">
                      <property role="3oM_SC" value="through" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTeq" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3uNHdNFqTfD" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFqTfm" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFqTfl" role="1PaTwD">
                      <property role="3oM_SC" value="JMF" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqTeN" role="1PaTwD">
                      <property role="3oM_SC" value="directly," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqUAP" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqUAT" role="1PaTwD">
                      <property role="3oM_SC" value="want" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqUAY" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFqUB4" role="1PaTwD">
                      <property role="3oM_SC" value="bother" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3uNHdNFrsQW" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFrsQX" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFrtXI" role="1PaTwD">
                      <property role="3oM_SC" value="Although" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtXK" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtXN" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtXR" role="1PaTwD">
                      <property role="3oM_SC" value="like" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtXW" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtY2" role="1PaTwD">
                      <property role="3oM_SC" value="depend" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtYh" role="1PaTwD">
                      <property role="3oM_SC" value="on" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtY9" role="1PaTwD">
                      <property role="3oM_SC" value="getOutput*Location()" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtYq" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtY$" role="1PaTwD">
                      <property role="3oM_SC" value="JMF," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtYJ" role="1PaTwD">
                      <property role="3oM_SC" value="it's" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtYV" role="1PaTwD">
                      <property role="3oM_SC" value="tedious" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtZ8" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtZm" role="1PaTwD">
                      <property role="3oM_SC" value="write" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtZ_" role="1PaTwD">
                      <property role="3oM_SC" value="proper" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrtZP" role="1PaTwD">
                      <property role="3oM_SC" value="replacement" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFru06" role="1PaTwD">
                      <property role="3oM_SC" value="here" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3uNHdNFrvpT" role="3cqZAp">
                  <node concept="1PaTwC" id="3uNHdNFrvpU" role="1aUNEU">
                    <node concept="3oM_SD" id="3uNHdNFrwAt" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwAv" role="1PaTwD">
                      <property role="3oM_SC" value="I'd" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwAy" role="1PaTwD">
                      <property role="3oM_SC" value="need" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwAA" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwAF" role="1PaTwD">
                      <property role="3oM_SC" value="refactor" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwB7" role="1PaTwD">
                      <property role="3oM_SC" value="FileGenerationUtil" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwBe" role="1PaTwD">
                      <property role="3oM_SC" value="(or" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwBm" role="1PaTwD">
                      <property role="3oM_SC" value="copy" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwBv" role="1PaTwD">
                      <property role="3oM_SC" value="parts" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwBD" role="1PaTwD">
                      <property role="3oM_SC" value="thereof" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwBO" role="1PaTwD">
                      <property role="3oM_SC" value="here)," />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwC0" role="1PaTwD">
                      <property role="3oM_SC" value="which" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwCd" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwCr" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwCE" role="1PaTwD">
                      <property role="3oM_SC" value="what" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwCU" role="1PaTwD">
                      <property role="3oM_SC" value="I'm" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwDb" role="1PaTwD">
                      <property role="3oM_SC" value="inclined" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwE4" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwEn" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                    </node>
                    <node concept="3oM_SD" id="3uNHdNFrwEF" role="1PaTwD">
                      <property role="3oM_SC" value="now" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3uNHdNFqFBS" role="3cqZAp">
                  <node concept="2OqwBi" id="3uNHdNFrf7f" role="3clFbG">
                    <node concept="37vLTw" id="3uNHdNFrdEW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3uNHdNFqwIx" resolve="myTempModuleLocation" />
                    </node>
                    <node concept="liA8E" id="3uNHdNFrgpy" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                      <node concept="Xl_RD" id="3uNHdNFrhw9" role="37wK5m">
                        <property role="Xl_RC" value="src_gen" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFqFBO" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3uNHdNFqUBj" role="jymVt" />
            <node concept="2tJIrI" id="3uNHdNFqUE9" role="jymVt" />
            <node concept="3clFb_" id="3uNHdNFqW7t" role="jymVt">
              <property role="TrG5h" value="getOutputRoot" />
              <node concept="3Tm1VV" id="3uNHdNFqW7v" role="1B3o_S" />
              <node concept="2AHcQZ" id="3uNHdNFqW7x" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3uNHdNFqW7y" role="3clF45">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
              <node concept="37vLTG" id="3uNHdNFqW7z" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="3uNHdNFqW7$" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2AHcQZ" id="3uNHdNFqW7_" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3uNHdNFqW7B" role="3clF47">
                <node concept="3clFbF" id="3uNHdNFqW7H" role="3cqZAp">
                  <node concept="1rXfSq" id="3uNHdNFr0sl" role="3clFbG">
                    <ref role="37wK5l" node="3uNHdNFqFBG" resolve="getOutputRoot" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3uNHdNFqW7C" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="6qMqnXmlEN_" role="jymVt" />
            <node concept="3clFb_" id="6qMqnXmlGaZ" role="jymVt">
              <property role="TrG5h" value="getCompile" />
              <node concept="3Tm1VV" id="6qMqnXmlGb1" role="1B3o_S" />
              <node concept="2AHcQZ" id="6qMqnXmlGb3" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="6qMqnXmlGb4" role="3clF45">
                <ref role="3uigEE" to="b0pz:~JavaModuleFacet$Compile" resolve="JavaModuleFacet.Compile" />
              </node>
              <node concept="3clFbS" id="6qMqnXmlGb6" role="3clF47">
                <node concept="3cpWs6" id="6qMqnXmlSav" role="3cqZAp">
                  <node concept="Rm8GO" id="6qMqnXmlWtP" role="3cqZAk">
                    <ref role="Rm8GQ" to="b0pz:~JavaModuleFacet$Compile.MPS" resolve="MPS" />
                    <ref role="1Px2BO" to="b0pz:~JavaModuleFacet$Compile" resolve="JavaModuleFacet.Compile" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6qMqnXmlGb7" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6qMqnXmlGaM" role="jymVt">
              <property role="TrG5h" value="getLoadClasses" />
              <node concept="3Tm1VV" id="6qMqnXmlGaO" role="1B3o_S" />
              <node concept="2AHcQZ" id="6qMqnXmlGaQ" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="6qMqnXmlGaR" role="3clF45">
                <ref role="3uigEE" to="b0pz:~JavaModuleFacet$LoadClasses" resolve="JavaModuleFacet.LoadClasses" />
              </node>
              <node concept="3clFbS" id="6qMqnXmlGaT" role="3clF47">
                <node concept="3cpWs6" id="6qMqnXmlY7g" role="3cqZAp">
                  <node concept="Rm8GO" id="6qMqnXmm0KH" role="3cqZAk">
                    <ref role="Rm8GQ" to="b0pz:~JavaModuleFacet$LoadClasses.ManagedByMPS" resolve="ManagedByMPS" />
                    <ref role="1Px2BO" to="b0pz:~JavaModuleFacet$LoadClasses" resolve="JavaModuleFacet.LoadClasses" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6qMqnXmlGaU" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="6qMqnXmlGbc" role="jymVt">
              <property role="TrG5h" value="getLoadExtensions" />
              <node concept="3Tm1VV" id="6qMqnXmlGbe" role="1B3o_S" />
              <node concept="3uibUv" id="6qMqnXmlGbg" role="3clF45">
                <ref role="3uigEE" to="b0pz:~JavaModuleFacet$LoadExtensions" resolve="JavaModuleFacet.LoadExtensions" />
              </node>
              <node concept="3clFbS" id="6qMqnXmlGbi" role="3clF47">
                <node concept="3cpWs6" id="6qMqnXmm2Gs" role="3cqZAp">
                  <node concept="Rm8GO" id="6qMqnXmm5O8" role="3cqZAk">
                    <ref role="Rm8GQ" to="b0pz:~JavaModuleFacet$LoadExtensions.NotAvailable" resolve="NotAvailable" />
                    <ref role="1Px2BO" to="b0pz:~JavaModuleFacet$LoadExtensions" resolve="JavaModuleFacet.LoadExtensions" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6qMqnXmlGbj" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="z59LJ" id="3uNHdNFqgtt" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsAXu" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsAXv" role="1PaTwD">
            <property role="3oM_SC" value="pretty" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXw" role="1PaTwD">
            <property role="3oM_SC" value="much" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXx" role="1PaTwD">
            <property role="3oM_SC" value="identical" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXy" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXz" role="1PaTwD">
            <property role="3oM_SC" value="NaiveJavaModuleFacet," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAX$" role="1PaTwD">
            <property role="3oM_SC" value="just" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAX_" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXA" role="1PaTwD">
            <property role="3oM_SC" value="want" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXB" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXC" role="1PaTwD">
            <property role="3oM_SC" value="and" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXD" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXE" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXF" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXG" role="1PaTwD">
            <property role="3oM_SC" value="its" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXH" role="1PaTwD">
            <property role="3oM_SC" value="approach" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXI" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXJ" role="1PaTwD">
            <property role="3oM_SC" value="arguments" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsAXK" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsAXL" role="1PaTwD">
            <property role="3oM_SC" value="(createTempDirectory()" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXM" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXN" role="1PaTwD">
            <property role="3oM_SC" value="cons" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXO" role="1PaTwD">
            <property role="3oM_SC" value="ignores" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsAXP" role="1PaTwD">
            <property role="3oM_SC" value="them)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="u1wCMkc3DS" role="jymVt" />
    <node concept="2YIFZL" id="u1wCMkcgwV" role="jymVt">
      <property role="TrG5h" value="incCounter" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="u1wCMkcgqs" role="3clF47">
        <node concept="3cpWs6" id="u1wCMkcgM7" role="3cqZAp">
          <node concept="2OqwBi" id="u1wCMkciMC" role="3cqZAk">
            <node concept="37vLTw" id="u1wCMkcgWV" role="2Oq$k0">
              <ref role="3cqZAo" node="u1wCMkc3Wb" resolve="ourCounter" />
            </node>
            <node concept="liA8E" id="u1wCMkcj7o" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicInteger.incrementAndGet()" resolve="incrementAndGet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="u1wCMkcgqn" role="3clF45" />
      <node concept="3Tm6S6" id="u1wCMkcgjU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="u1wCMkcgdw" role="jymVt" />
    <node concept="3clFbW" id="5$fHs$AvHaI" role="jymVt">
      <node concept="37vLTG" id="jVJrchkIsk" role="3clF46">
        <property role="TrG5h" value="mpsPlatform" />
        <node concept="3uibUv" id="jVJrchkIsj" role="1tU5fm">
          <ref role="3uigEE" to="wyuk:~ComponentHost" resolve="ComponentHost" />
        </node>
      </node>
      <node concept="3cqZAl" id="5$fHs$AvHaJ" role="3clF45" />
      <node concept="3clFbS" id="5$fHs$AvHaL" role="3clF47">
        <node concept="XkiVB" id="u1wCMkcnKl" role="3cqZAp">
          <ref role="37wK5l" to="z1c3:~AbstractModule.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="AbstractModule" />
          <node concept="10QFUN" id="u1wCMkcoDY" role="37wK5m">
            <node concept="3uibUv" id="u1wCMkcrCU" role="10QFUM">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="10Nm6u" id="u1wCMkcnVp" role="10QFUP" />
          </node>
        </node>
        <node concept="3SKdUt" id="5uM7SrBOz$F" role="3cqZAp">
          <node concept="1PaTwC" id="5uM7SrBOz$G" role="1aUNEU">
            <node concept="3oM_SD" id="5uM7SrBOz$H" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$bn" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$cF" role="1PaTwD">
              <property role="3oM_SC" value="fine" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fg" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fh" role="1PaTwD">
              <property role="3oM_SC" value="AM" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fi" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fj" role="1PaTwD">
              <property role="3oM_SC" value="long" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fk" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fl" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fm" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$fn" role="1PaTwD">
              <property role="3oM_SC" value="require" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$gE" role="1PaTwD">
              <property role="3oM_SC" value="IFile" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$hX" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$hY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$n9" role="1PaTwD">
              <property role="3oM_SC" value="good" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$na" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$pJ" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$sk" role="1PaTwD">
              <property role="3oM_SC" value="MD." />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$uT" role="1PaTwD">
              <property role="3oM_SC" value="All" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$uU" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$uV" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$we" role="1PaTwD">
              <property role="3oM_SC" value="MD" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$xx" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$yO" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$yP" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$yQ" role="1PaTwD">
              <property role="3oM_SC" value="keep" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$AH" role="1PaTwD">
              <property role="3oM_SC" value="track" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$C0" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$Dj" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBO$Dk" role="1PaTwD">
              <property role="3oM_SC" value="dependencies" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="jVJrchkIFA" role="3cqZAp">
          <node concept="37vLTI" id="jVJrchkIFC" role="3clFbG">
            <node concept="37vLTw" id="jVJrchkIFF" role="37vLTJ">
              <ref role="3cqZAo" node="jVJrchkIFy" resolve="myPlatform" />
            </node>
            <node concept="37vLTw" id="jVJrchkIFG" role="37vLTx">
              <ref role="3cqZAo" node="jVJrchkIsk" resolve="mpsPlatform" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3uNHdNFkEeW" role="3cqZAp">
          <node concept="1PaTwC" id="3uNHdNFkEeX" role="1aUNEU">
            <node concept="3oM_SD" id="3uNHdNFkEBh" role="1PaTwD">
              <property role="3oM_SC" value="follow" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFkEBq" role="1PaTwD">
              <property role="3oM_SC" value="pattern" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFkEBt" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFkEBx" role="1PaTwD">
              <property role="3oM_SC" value="TempModule2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29Pb3oJpa7b" role="3cqZAp">
          <node concept="37vLTI" id="29Pb3oJpacL" role="3clFbG">
            <node concept="2ShNRf" id="29Pb3oJpadp" role="37vLTx">
              <node concept="1pGfFk" id="29Pb3oJpuV$" role="2ShVmc">
                <ref role="37wK5l" to="w0gx:~ModuleDescriptor.&lt;init&gt;()" resolve="ModuleDescriptor" />
              </node>
            </node>
            <node concept="37vLTw" id="29Pb3oJpa7a" role="37vLTJ">
              <ref role="3cqZAo" node="29Pb3oJp8Wm" resolve="myDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3uNHdNFkBkp" role="3cqZAp">
          <node concept="2OqwBi" id="3uNHdNFkBZK" role="3clFbG">
            <node concept="37vLTw" id="3uNHdNFkBkn" role="2Oq$k0">
              <ref role="3cqZAo" node="29Pb3oJp8Wm" resolve="myDescriptor" />
            </node>
            <node concept="liA8E" id="3uNHdNFkF1N" role="2OqNvi">
              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.setId(jetbrains.mps.project.ModuleId)" resolve="setId" />
              <node concept="2YIFZM" id="5$fHs$AwMD4" role="37wK5m">
                <ref role="37wK5l" to="z1c3:~ModuleId.regular()" resolve="regular" />
                <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3uNHdNFkGPg" role="3cqZAp">
          <node concept="2OqwBi" id="3uNHdNFkHxH" role="3clFbG">
            <node concept="37vLTw" id="3uNHdNFkGPe" role="2Oq$k0">
              <ref role="3cqZAo" node="29Pb3oJp8Wm" resolve="myDescriptor" />
            </node>
            <node concept="liA8E" id="3uNHdNFkIqo" role="2OqNvi">
              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.setNamespace(java.lang.String)" resolve="setNamespace" />
              <node concept="3cpWs3" id="u1wCMkcjo$" role="37wK5m">
                <node concept="Xl_RD" id="5$fHs$AwMD3" role="3uHU7B">
                  <property role="Xl_RC" value="Evaluation Container Module " />
                </node>
                <node concept="1rXfSq" id="u1wCMkckvl" role="3uHU7w">
                  <ref role="37wK5l" node="u1wCMkcgwV" resolve="incCounter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5uM7SrBOyiD" role="3cqZAp">
          <node concept="1PaTwC" id="5uM7SrBOyiE" role="1aUNEU">
            <node concept="3oM_SD" id="5uM7SrBOyiF" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyKl" role="1PaTwD">
              <property role="3oM_SC" value="EvaluationWithContextContainer.setUpNode," />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyOc" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyOd" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyPw" role="1PaTwD">
              <property role="3oM_SC" value="mostly" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyPx" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyPy" role="1PaTwD">
              <property role="3oM_SC" value="AM.addDependency()" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyXf" role="1PaTwD">
              <property role="3oM_SC" value="+" />
            </node>
            <node concept="3oM_SD" id="5uM7SrBOyZP" role="1PaTwD">
              <property role="3oM_SC" value="ModelDependencyUpdate." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15fzu3GFzhq" role="3cqZAp">
          <node concept="1rXfSq" id="3JORKHorGvR" role="3clFbG">
            <ref role="37wK5l" to="z1c3:~AbstractModule.setModuleReference(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="setModuleReference" />
            <node concept="2OqwBi" id="3uNHdNFkKqA" role="37wK5m">
              <node concept="37vLTw" id="3uNHdNFkJHh" role="2Oq$k0">
                <ref role="3cqZAo" node="29Pb3oJp8Wm" resolve="myDescriptor" />
              </node>
              <node concept="liA8E" id="3uNHdNFkLfs" role="2OqNvi">
                <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getModuleReference()" resolve="getModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="3uNHdNFs4mE" role="3cqZAp">
          <node concept="3uVAMA" id="3uNHdNFs6a9" role="1zxBo5">
            <node concept="XOnhg" id="3uNHdNFs6aa" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="3uNHdNFs6ab" role="1tU5fm">
                <node concept="3uibUv" id="3uNHdNFs6Il" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3uNHdNFs6ac" role="1zc67A">
              <node concept="YS8fn" id="3uNHdNFs7V7" role="3cqZAp">
                <node concept="2ShNRf" id="3uNHdNFs8zc" role="YScLw">
                  <node concept="1pGfFk" id="3uNHdNFscFI" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.Throwable)" resolve="IllegalStateException" />
                    <node concept="37vLTw" id="3uNHdNFsdjR" role="37wK5m">
                      <ref role="3cqZAo" node="3uNHdNFs6aa" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3uNHdNFs4mG" role="1zxBo7">
            <node concept="3cpWs8" id="3uNHdNFrGso" role="3cqZAp">
              <node concept="3cpWsn" id="3uNHdNFrGsp" role="3cpWs9">
                <property role="TrG5h" value="tempFile" />
                <node concept="3uibUv" id="3uNHdNFrGsq" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2OqwBi" id="3uNHdNFrUHy" role="33vP2m">
                  <node concept="2YIFZM" id="3uNHdNFrTkf" role="2Oq$k0">
                    <ref role="37wK5l" to="eoo2:~Files.createTempDirectory(java.lang.String,java.nio.file.attribute.FileAttribute...)" resolve="createTempDirectory" />
                    <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                    <node concept="Xl_RD" id="3uNHdNFrKdn" role="37wK5m">
                      <property role="Xl_RC" value="MPS-EVAL" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3uNHdNFrVQc" role="2OqNvi">
                    <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3uNHdNFrDr_" role="3cqZAp">
              <node concept="3cpWsn" id="3uNHdNFrDrA" role="3cpWs9">
                <property role="TrG5h" value="fileSystem" />
                <node concept="3uibUv" id="3uNHdNFrCYm" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFileSystem" resolve="IFileSystem" />
                </node>
                <node concept="2OqwBi" id="3uNHdNFrDrB" role="33vP2m">
                  <node concept="2OqwBi" id="3uNHdNFrDrC" role="2Oq$k0">
                    <node concept="37vLTw" id="3uNHdNFrDrD" role="2Oq$k0">
                      <ref role="3cqZAo" node="jVJrchkIsk" resolve="mpsPlatform" />
                    </node>
                    <node concept="liA8E" id="3uNHdNFrDrE" role="2OqNvi">
                      <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                      <node concept="3VsKOn" id="3uNHdNFrDrF" role="37wK5m">
                        <ref role="3VsUkX" to="3ju5:~VFSManager" resolve="VFSManager" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3uNHdNFrDrG" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~VFSManager.getFileSystem(java.lang.String)" resolve="getFileSystem" />
                    <node concept="10M0yZ" id="3uNHdNFrDrH" role="37wK5m">
                      <ref role="3cqZAo" to="3ju5:~VFSManager.JAVA_IO_FILE_FS" resolve="JAVA_IO_FILE_FS" />
                      <ref role="1PxDUh" to="3ju5:~VFSManager" resolve="VFSManager" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3uNHdNFr$1x" role="3cqZAp">
              <node concept="37vLTI" id="3uNHdNFs2$G" role="3clFbG">
                <node concept="37vLTw" id="3uNHdNFs39w" role="37vLTJ">
                  <ref role="3cqZAo" node="3uNHdNFqwIx" resolve="myTempModuleLocation" />
                </node>
                <node concept="2OqwBi" id="3uNHdNFrE4W" role="37vLTx">
                  <node concept="37vLTw" id="3uNHdNFrDrI" role="2Oq$k0">
                    <ref role="3cqZAo" node="3uNHdNFrDrA" resolve="fileSystem" />
                  </node>
                  <node concept="liA8E" id="3uNHdNFrEHF" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFileSystem.getFile(java.io.File)" resolve="getFile" />
                    <node concept="37vLTw" id="3uNHdNFs1Tk" role="37wK5m">
                      <ref role="3cqZAo" node="3uNHdNFrGsp" resolve="tempFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5$fHs$AvGzm" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="IYmOvntYfe" role="1B3o_S" />
    <node concept="2tJIrI" id="4AqxpFyU5M" role="jymVt" />
    <node concept="3clFb_" id="29Pb3oJpRIW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModuleDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="29Pb3oJpRIX" role="1B3o_S" />
      <node concept="3uibUv" id="29Pb3oJpRIZ" role="3clF45">
        <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
      </node>
      <node concept="3clFbS" id="29Pb3oJpRJ0" role="3clF47">
        <node concept="3clFbF" id="29Pb3oJpROu" role="3cqZAp">
          <node concept="37vLTw" id="29Pb3oJpROt" role="3clFbG">
            <ref role="3cqZAo" node="29Pb3oJp8Wm" resolve="myDescriptor" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29Pb3oJpRJ1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3uNHdNFqosC" role="jymVt" />
    <node concept="3clFb_" id="3uNHdNFqpNF" role="jymVt">
      <property role="TrG5h" value="save" />
      <node concept="3Tm1VV" id="3uNHdNFqpNG" role="1B3o_S" />
      <node concept="3cqZAl" id="3uNHdNFqpNI" role="3clF45" />
      <node concept="3clFbS" id="3uNHdNFqpNL" role="3clF47">
        <node concept="3SKdUt" id="3uNHdNFqsh4" role="3cqZAp">
          <node concept="1PaTwC" id="3uNHdNFqsh5" role="1aUNEU">
            <node concept="3oM_SD" id="3uNHdNFqtgO" role="1PaTwD">
              <property role="3oM_SC" value="no-op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3uNHdNFqpNM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3uNHdNFkWuP" role="jymVt" />
    <node concept="3clFb_" id="3uNHdNFkYr8" role="jymVt">
      <property role="TrG5h" value="updateFacets" />
      <node concept="3Tmbuc" id="3uNHdNFkYr9" role="1B3o_S" />
      <node concept="3cqZAl" id="3uNHdNFkYrb" role="3clF45" />
      <node concept="3clFbS" id="3uNHdNFkYre" role="3clF47">
        <node concept="3SKdUt" id="3uNHdNFl2_w" role="3cqZAp">
          <node concept="1PaTwC" id="3uNHdNFl2_x" role="1aUNEU">
            <node concept="3oM_SD" id="3uNHdNFl3_K" role="1PaTwD">
              <property role="3oM_SC" value="no-op" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3uNHdNFkYrf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3uNHdNFl3_M" role="jymVt" />
    <node concept="3clFb_" id="3uNHdNFl6NC" role="jymVt">
      <property role="TrG5h" value="getFacets" />
      <node concept="3Tm1VV" id="3uNHdNFl6ND" role="1B3o_S" />
      <node concept="2AHcQZ" id="3uNHdNFl6NF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3uNHdNFl6NG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="3uNHdNFl6NH" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
        </node>
      </node>
      <node concept="3clFbS" id="3uNHdNFl6NK" role="3clF47">
        <node concept="3clFbF" id="3uNHdNFl6NN" role="3cqZAp">
          <node concept="2YIFZM" id="3uNHdNFlcmt" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="3uNHdNFldey" role="37wK5m">
              <ref role="3cqZAo" node="3uNHdNFkTm_" resolve="myJavaFacet" />
            </node>
            <node concept="3uibUv" id="3uNHdNFlgTF" role="3PaCim">
              <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3uNHdNFl6NL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$fHs$AvxAx" role="jymVt" />
    <node concept="3clFb_" id="4vwge_xfz9l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isReadOnly" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4vwge_xfz9m" role="1B3o_S" />
      <node concept="10P_77" id="4vwge_xfz9o" role="3clF45" />
      <node concept="3clFbS" id="4vwge_xfz9p" role="3clF47">
        <node concept="3SKdUt" id="3w294VT1mwX" role="3cqZAp">
          <node concept="1PaTwC" id="3w294VT1mwY" role="1aUNEU">
            <node concept="3oM_SD" id="3w294VT1mwZ" role="1PaTwD">
              <property role="3oM_SC" value="XXX" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nT6" role="1PaTwD">
              <property role="3oM_SC" value="how" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nTo" role="1PaTwD">
              <property role="3oM_SC" value="come" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nTp" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nTE" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nTF" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nTW" role="1PaTwD">
              <property role="3oM_SC" value="NOT" />
            </node>
            <node concept="3oM_SD" id="3w294VT1nUd" role="1PaTwD">
              <property role="3oM_SC" value="read-only?" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vwge_xfz9s" role="3cqZAp">
          <node concept="3clFbT" id="4vwge_xfA9T" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vwge_xfz9q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3uNHdNFppMK" role="jymVt" />
    <node concept="3clFb_" id="3uNHdNFpqAX" role="jymVt">
      <property role="TrG5h" value="isPackaged" />
      <node concept="3Tm1VV" id="3uNHdNFpqAY" role="1B3o_S" />
      <node concept="10P_77" id="3uNHdNFpqB0" role="3clF45" />
      <node concept="3clFbS" id="3uNHdNFpqB3" role="3clF47">
        <node concept="3SKdUt" id="3uNHdNFpvT6" role="3cqZAp">
          <node concept="1PaTwC" id="3uNHdNFpvT7" role="1aUNEU">
            <node concept="3oM_SD" id="3uNHdNFpx1V" role="1PaTwD">
              <property role="3oM_SC" value="just" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx1X" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx20" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx2m" role="1PaTwD">
              <property role="3oM_SC" value="there's" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx2u" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx2B" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx2f" role="1PaTwD">
              <property role="3oM_SC" value="doesn't" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx2S" role="1PaTwD">
              <property role="3oM_SC" value="compile" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx31" role="1PaTwD">
              <property role="3oM_SC" value="packaged" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx3b" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx3J" role="1PaTwD">
              <property role="3oM_SC" value="(although" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx3V" role="1PaTwD">
              <property role="3oM_SC" value="ModuleMaker" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx48" role="1PaTwD">
              <property role="3oM_SC" value="respects" />
            </node>
            <node concept="3oM_SD" id="3uNHdNFpx4P" role="1PaTwD">
              <property role="3oM_SC" value="isReadOnly)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3uNHdNFptEj" role="3cqZAp">
          <node concept="3clFbT" id="3uNHdNFptEi" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3uNHdNFpqB4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM7SrBO$EO" role="jymVt" />
    <node concept="3uibUv" id="5uM7SrBOjJb" role="1zkMxy">
      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
    </node>
    <node concept="3uibUv" id="5uM7SrBOnaR" role="EKbjA">
      <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
    </node>
    <node concept="3clFb_" id="5uM7SrBOBsS" role="jymVt">
      <property role="TrG5h" value="getClassLoader" />
      <node concept="3Tm1VV" id="5uM7SrBOBsU" role="1B3o_S" />
      <node concept="2AHcQZ" id="5uM7SrBOBsW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5uM7SrBOBsX" role="3clF45">
        <ref role="3uigEE" to="3qmy:~MPSModuleClassLoader" resolve="MPSModuleClassLoader" />
      </node>
      <node concept="3clFbS" id="5uM7SrBOBt0" role="3clF47">
        <node concept="3clFbF" id="5uM7SrBOHMO" role="3cqZAp">
          <node concept="2OqwBi" id="5uM7SrBORel" role="3clFbG">
            <node concept="2OqwBi" id="5uM7SrBOIZA" role="2Oq$k0">
              <node concept="37vLTw" id="5uM7SrBOHML" role="2Oq$k0">
                <ref role="3cqZAo" node="jVJrchkIFy" resolve="myPlatform" />
              </node>
              <node concept="liA8E" id="5uM7SrBOLTN" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="5uM7SrBOPUu" role="37wK5m">
                  <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5uM7SrBOSwK" role="2OqNvi">
              <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClassLoader(org.jetbrains.mps.openapi.module.SModule)" resolve="getClassLoader" />
              <node concept="1rXfSq" id="5uM7SrBOVjW" role="37wK5m">
                <ref role="37wK5l" to="j8aq:~ReloadableModule.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uM7SrBOBt1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="IYmOvntYfm">
    <property role="TrG5h" value="GeneratorUtil" />
    <node concept="3Tm1VV" id="IYmOvntYfn" role="1B3o_S" />
    <node concept="2YIFZL" id="IYmOvntYfo" role="jymVt">
      <property role="TrG5h" value="generateAndLoadEvaluatorClass" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="IYmOvntYfp" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
      </node>
      <node concept="37vLTG" id="IYmOvntYfq" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="OqYxEjOELf" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvntYfs" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="IYmOvnS7zY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvntYfu" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="IYmOvntYfv" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="IYmOvntYfC" role="3clF47">
        <node concept="3cpWs8" id="6zsZmIBZ0kI" role="3cqZAp">
          <node concept="3cpWsn" id="6zsZmIBZ0kJ" role="3cpWs9">
            <property role="TrG5h" value="makeService" />
            <node concept="3uibUv" id="6zsZmIBZ0kH" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:1NAY6bPd4nM" resolve="IMakeService" />
            </node>
            <node concept="2OqwBi" id="IIVxgkIZ2l" role="33vP2m">
              <node concept="2OqwBi" id="IIVxgkIVMf" role="2Oq$k0">
                <node concept="37vLTw" id="IIVxgkIUSY" role="2Oq$k0">
                  <ref role="3cqZAo" node="IYmOvntYfq" resolve="project" />
                </node>
                <node concept="liA8E" id="IIVxgkIWHM" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                  <node concept="3VsKOn" id="IIVxgkIYbs" role="37wK5m">
                    <ref role="3VsUkX" to="hfuk:4QUA3Sqts3M" resolve="MakeServiceComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="IIVxgkJ03J" role="2OqNvi">
                <ref role="37wK5l" to="hfuk:4QUA3SqtLoe" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6zsZmIBZCao" role="3cqZAp">
          <node concept="3cpWsn" id="6zsZmIBZCap" role="3cpWs9">
            <property role="TrG5h" value="makeSession" />
            <node concept="3uibUv" id="6zsZmIBZCaq" role="1tU5fm">
              <ref role="3uigEE" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
            </node>
            <node concept="2ShNRf" id="6zsZmIBZKAA" role="33vP2m">
              <node concept="YeOm9" id="3uNHdNFteOo" role="2ShVmc">
                <node concept="1Y3b0j" id="3uNHdNFteOr" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="hfuk:2BjwmTxT7Q7" resolve="MakeSession" />
                  <ref role="1Y3XeK" to="hfuk:7yGn3z4N4Nd" resolve="MakeSession" />
                  <node concept="3Tm1VV" id="3uNHdNFteOs" role="1B3o_S" />
                  <node concept="37vLTw" id="2BjwmTxW$X4" role="37wK5m">
                    <ref role="3cqZAo" node="IYmOvntYfq" resolve="project" />
                  </node>
                  <node concept="2OqwBi" id="3uNHdNFsRkp" role="37wK5m">
                    <node concept="2ShNRf" id="7JDtVAB6r_i" role="2Oq$k0">
                      <node concept="1pGfFk" id="7JDtVAB6u4_" role="2ShVmc">
                        <ref role="37wK5l" to="drpk:~DefaultMakeMessageHandler.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="DefaultMakeMessageHandler" />
                        <node concept="37vLTw" id="7JDtVAB6vl0" role="37wK5m">
                          <ref role="3cqZAo" node="IYmOvntYfq" resolve="project" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3uNHdNFsSBF" role="2OqNvi">
                      <ref role="37wK5l" to="et5u:~IMessageHandler.restrict(jetbrains.mps.messages.MessageKind)" resolve="restrict" />
                      <node concept="Rm8GO" id="3uNHdNFsVS3" role="37wK5m">
                        <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="2BjwmTxWDXi" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFb_" id="3uNHdNFtfKe" role="jymVt">
                    <property role="TrG5h" value="toScript" />
                    <node concept="3uibUv" id="3uNHdNFtfKf" role="3clF45">
                      <ref role="3uigEE" to="i9so:5mqBoD3U3Wb" resolve="IScript" />
                    </node>
                    <node concept="3Tm1VV" id="3uNHdNFtfKg" role="1B3o_S" />
                    <node concept="37vLTG" id="3uNHdNFtfKm" role="3clF46">
                      <property role="TrG5h" value="scriptBuilder" />
                      <node concept="3uibUv" id="3uNHdNFtfKn" role="1tU5fm">
                        <ref role="3uigEE" to="i9so:1i9nLvh04oW" resolve="ScriptBuilder" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3uNHdNFtfKp" role="3clF47">
                      <node concept="3SKdUt" id="3uNHdNFtqK9" role="3cqZAp">
                        <node concept="1PaTwC" id="3uNHdNFtqKa" role="1aUNEU">
                          <node concept="3oM_SD" id="3uNHdNFtr$T" role="1PaTwD">
                            <property role="3oM_SC" value="let" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr$V" role="1PaTwD">
                            <property role="3oM_SC" value="our" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr$Y" role="1PaTwD">
                            <property role="3oM_SC" value="make" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr_2" role="1PaTwD">
                            <property role="3oM_SC" value="facet" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr_7" role="1PaTwD">
                            <property role="3oM_SC" value="inject" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr_d" role="1PaTwD">
                            <property role="3oM_SC" value="evaluator" />
                          </node>
                          <node concept="3oM_SD" id="3uNHdNFtr_k" role="1PaTwD">
                            <property role="3oM_SC" value="class" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3uNHdNFtil7" role="3cqZAp">
                        <node concept="2OqwBi" id="3uNHdNFtjrk" role="3clFbG">
                          <node concept="37vLTw" id="3uNHdNFtil5" role="2Oq$k0">
                            <ref role="3cqZAo" node="3uNHdNFtfKm" resolve="scriptBuilder" />
                          </node>
                          <node concept="liA8E" id="3uNHdNFtk94" role="2OqNvi">
                            <ref role="37wK5l" to="i9so:1i9nLvh04ps" resolve="withFacetName" />
                            <node concept="2n6ZRZ" id="6zsZmIC0IsK" role="37wK5m">
                              <node concept="2e$Q_j" id="6zsZmIC0IsL" role="2n6ZRX">
                                <ref role="1Mm5Yu" to="crif:6zsZmIBWRfg" resolve="JavaDebugEvaluate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3uNHdNFu0as" role="3cqZAp">
                        <node concept="2OqwBi" id="3uNHdNFu0Yp" role="3clFbG">
                          <node concept="37vLTw" id="3uNHdNFu0aq" role="2Oq$k0">
                            <ref role="3cqZAo" node="3uNHdNFtfKm" resolve="scriptBuilder" />
                          </node>
                          <node concept="liA8E" id="3uNHdNFu2bj" role="2OqNvi">
                            <ref role="37wK5l" to="i9so:1i9nLvh04r3" resolve="withAuxTarget" />
                            <node concept="29r_a" id="3uNHdNFu5Cs" role="37wK5m">
                              <ref role="29tk1" to="crif:6zsZmIBWXQs" resolve="transformEvaluator" />
                              <node concept="2n6ZRZ" id="3uNHdNFu3Qc" role="29tkj">
                                <node concept="2e$Q_j" id="3uNHdNFu3Qd" role="2n6ZRX">
                                  <ref role="1Mm5Yu" to="crif:6zsZmIBWRfg" resolve="JavaDebugEvaluate" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3uNHdNFtfKt" role="3cqZAp">
                        <node concept="3nyPlj" id="3uNHdNFtfKs" role="3clFbG">
                          <ref role="37wK5l" to="hfuk:6j3uy_cVOw4" resolve="toScript" />
                          <node concept="37vLTw" id="3uNHdNFtfKr" role="37wK5m">
                            <ref role="3cqZAo" node="3uNHdNFtfKm" resolve="scriptBuilder" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3uNHdNFtfKq" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6zsZmIBZPyL" role="3cqZAp">
          <node concept="3clFbS" id="6zsZmIBZPyO" role="3clFbx">
            <node concept="3cpWs8" id="IYmOvntYfU" role="3cqZAp">
              <node concept="3cpWsn" id="IYmOvntYfV" role="3cpWs9">
                <property role="TrG5h" value="fullClassName" />
                <property role="3TUv4t" value="true" />
                <node concept="3cpWs3" id="IYmOvntYfW" role="33vP2m">
                  <node concept="37vLTw" id="IYmOvntYfX" role="3uHU7w">
                    <ref role="3cqZAo" node="IYmOvntYfu" resolve="className" />
                  </node>
                  <node concept="3cpWs3" id="IYmOvntYfY" role="3uHU7B">
                    <node concept="2YIFZM" id="2AYTeDfPNtu" role="3uHU7B">
                      <ref role="1Pybhc" to="18ew:~JavaNameUtil" resolve="JavaNameUtil" />
                      <ref role="37wK5l" to="18ew:~JavaNameUtil.packageName(org.jetbrains.mps.openapi.model.SModel)" resolve="packageName" />
                      <node concept="37vLTw" id="2AYTeDfPNtv" role="37wK5m">
                        <ref role="3cqZAo" node="IYmOvntYfs" resolve="model" />
                      </node>
                    </node>
                    <node concept="1Xhbcc" id="2AYTeDfPOfj" role="3uHU7w">
                      <property role="1XhdNS" value="." />
                    </node>
                  </node>
                </node>
                <node concept="17QB3L" id="IYmOvntYg3" role="1tU5fm" />
              </node>
            </node>
            <node concept="3J1_TO" id="3dqGTDfp6b" role="3cqZAp">
              <node concept="3clFbS" id="6zsZmIBZH2V" role="1zxBo7">
                <node concept="3cpWs8" id="72x5NjM$koK" role="3cqZAp">
                  <node concept="3cpWsn" id="72x5NjM$koL" role="3cpWs9">
                    <property role="TrG5h" value="clm" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="72x5NjM$koM" role="1tU5fm">
                      <ref role="3uigEE" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                    </node>
                    <node concept="2OqwBi" id="72x5NjM$nq9" role="33vP2m">
                      <node concept="37vLTw" id="72x5NjM$mxm" role="2Oq$k0">
                        <ref role="3cqZAo" node="IYmOvntYfq" resolve="project" />
                      </node>
                      <node concept="liA8E" id="72x5NjM$qvL" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
                        <node concept="3VsKOn" id="72x5NjM$rqc" role="37wK5m">
                          <ref role="3VsUkX" to="3qmy:~ClassLoaderManager" resolve="ClassLoaderManager" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6KqxBER337c" role="3cqZAp">
                  <node concept="3cpWsn" id="6KqxBER337d" role="3cpWs9">
                    <property role="TrG5h" value="resources" />
                    <node concept="A3Dl8" id="6KqxBER3371" role="1tU5fm">
                      <node concept="3uibUv" id="6KqxBER3374" role="A3Ik2">
                        <ref role="3uigEE" to="yo81:5mqBoD3U3WC" resolve="IResource" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6KqxBER337e" role="33vP2m">
                      <node concept="2OqwBi" id="6KqxBER337f" role="2Oq$k0">
                        <node concept="2ShNRf" id="6KqxBER337g" role="2Oq$k0">
                          <node concept="1pGfFk" id="6KqxBER337h" role="2ShVmc">
                            <ref role="37wK5l" to="fn29:6zsZmIC0WqK" resolve="ModelsToResources" />
                            <node concept="2ShNRf" id="6KqxBER337i" role="37wK5m">
                              <node concept="2HTt$P" id="6KqxBER337j" role="2ShVmc">
                                <node concept="37vLTw" id="6KqxBER337k" role="2HTEbv">
                                  <ref role="3cqZAo" node="IYmOvntYfs" resolve="model" />
                                </node>
                                <node concept="H_c77" id="6KqxBER337l" role="2HTBi0" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6KqxBER337m" role="2OqNvi">
                          <ref role="37wK5l" to="fn29:35A2TU_A5Nk" resolve="canGenerateCondition" />
                          <node concept="1bVj0M" id="6KqxBER337n" role="37wK5m">
                            <node concept="3clFbS" id="6KqxBER337o" role="1bW5cS">
                              <node concept="3clFbF" id="6KqxBER337p" role="3cqZAp">
                                <node concept="3clFbT" id="6KqxBER337q" role="3clFbG">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="6KqxBER337r" role="1bW2Oz">
                              <property role="TrG5h" value="m" />
                              <node concept="3uibUv" id="6KqxBER337s" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6KqxBER337t" role="2OqNvi">
                        <ref role="37wK5l" to="fn29:713BH0S$TAn" resolve="resources" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6zsZmIC1CHd" role="3cqZAp">
                  <node concept="3cpWsn" id="6zsZmIC1CHe" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="6zsZmIC1CGq" role="1tU5fm">
                      <ref role="3uigEE" to="i9so:17I1R__cQ5X" resolve="IResult" />
                    </node>
                    <node concept="2OqwBi" id="6zsZmIC1CHf" role="33vP2m">
                      <node concept="2OqwBi" id="6zsZmIC1FUq" role="2Oq$k0">
                        <node concept="37vLTw" id="6zsZmIC1FUr" role="2Oq$k0">
                          <ref role="3cqZAo" node="6zsZmIBZ0kJ" resolve="makeService" />
                        </node>
                        <node concept="liA8E" id="6zsZmIC1FUs" role="2OqNvi">
                          <ref role="37wK5l" to="hfuk:7yGn3z4N64K" resolve="make" />
                          <node concept="37vLTw" id="6zsZmIC1FUt" role="37wK5m">
                            <ref role="3cqZAo" node="6zsZmIBZCap" resolve="makeSession" />
                          </node>
                          <node concept="37vLTw" id="6KqxBER337u" role="37wK5m">
                            <ref role="3cqZAo" node="6KqxBER337d" resolve="resources" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6zsZmIC1CHh" role="2OqNvi">
                        <ref role="37wK5l" to="5zyv:~Future.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6zsZmIC1VKO" role="3cqZAp">
                  <node concept="3clFbS" id="6zsZmIC1VKR" role="3clFbx">
                    <node concept="3cpWs8" id="4KPvSRqLCqA" role="3cqZAp">
                      <node concept="3cpWsn" id="4KPvSRqLCqG" role="3cpWs9">
                        <property role="TrG5h" value="rv" />
                        <node concept="3uibUv" id="4KPvSRqLCqI" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qTvmN" id="4KPvSRqLCTX" role="11_B2D" />
                        </node>
                        <node concept="2OqwBi" id="4KPvSRqLsfW" role="33vP2m">
                          <node concept="2ShNRf" id="4KPvSRqLgTo" role="2Oq$k0">
                            <node concept="1pGfFk" id="4KPvSRqLoND" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                              <node concept="2OqwBi" id="4KPvSRqLqbW" role="37wK5m">
                                <node concept="37vLTw" id="4KPvSRqLptf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="IYmOvntYfs" resolve="model" />
                                </node>
                                <node concept="liA8E" id="4KPvSRqLqE_" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4KPvSRqLsLR" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="4KPvSRqLtaz" role="37wK5m">
                              <node concept="3clFbS" id="4KPvSRqLta$" role="1bW5cS">
                                <node concept="3J1_TO" id="4KPvSRqLuHi" role="3cqZAp">
                                  <node concept="3uVAMA" id="4KPvSRqLvha" role="1zxBo5">
                                    <node concept="XOnhg" id="4KPvSRqLvhb" role="1zc67B">
                                      <property role="TrG5h" value="ex" />
                                      <node concept="nSUau" id="4KPvSRqLvhc" role="1tU5fm">
                                        <node concept="3uibUv" id="4KPvSRqLyst" role="nSUat">
                                          <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4KPvSRqLvhd" role="1zc67A">
                                      <node concept="3SKdUt" id="4KPvSRqLPvF" role="3cqZAp">
                                        <node concept="1PaTwC" id="4KPvSRqLPvG" role="1aUNEU">
                                          <node concept="3oM_SD" id="4KPvSRqLQ0N" role="1PaTwD">
                                            <property role="3oM_SC" value="ignore" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="4KPvSRqLuHj" role="1zxBo7">
                                    <node concept="3SKdUt" id="3uNHdNFtxiM" role="3cqZAp">
                                      <node concept="1PaTwC" id="3uNHdNFtxiN" role="1aUNEU">
                                        <node concept="3oM_SD" id="4KPvSRqLfJY" role="1PaTwD">
                                          <property role="3oM_SC" value="although" />
                                        </node>
                                        <node concept="3oM_SD" id="3uNHdNFtygk" role="1PaTwD">
                                          <property role="3oM_SC" value="model.getModule" />
                                        </node>
                                        <node concept="3oM_SD" id="3uNHdNFtygp" role="1PaTwD">
                                          <property role="3oM_SC" value="doesn't" />
                                        </node>
                                        <node concept="3oM_SD" id="3uNHdNFtygv" role="1PaTwD">
                                          <property role="3oM_SC" value="require" />
                                        </node>
                                        <node concept="3oM_SD" id="3uNHdNFtygA" role="1PaTwD">
                                          <property role="3oM_SC" value="model" />
                                        </node>
                                        <node concept="3oM_SD" id="3uNHdNFtygI" role="1PaTwD">
                                          <property role="3oM_SC" value="read," />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLfP7" role="1PaTwD">
                                          <property role="3oM_SC" value="module" />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLfUh" role="1PaTwD">
                                          <property role="3oM_SC" value="classloader" />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLfZs" role="1PaTwD">
                                          <property role="3oM_SC" value="deep" />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLg4C" role="1PaTwD">
                                          <property role="3oM_SC" value="down" />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLg4N" role="1PaTwD">
                                          <property role="3oM_SC" value="there" />
                                        </node>
                                        <node concept="3oM_SD" id="4KPvSRqLga1" role="1PaTwD">
                                          <property role="3oM_SC" value="does" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3SKdUt" id="72x5NjM$t5x" role="3cqZAp">
                                      <node concept="1PaTwC" id="72x5NjM$t5y" role="1aUNEU">
                                        <node concept="3oM_SD" id="72x5NjM$tBk" role="1PaTwD">
                                          <property role="3oM_SC" value="FIXME" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$u7t" role="1PaTwD">
                                          <property role="3oM_SC" value="revisit," />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$vAa" role="1PaTwD">
                                          <property role="3oM_SC" value="likely" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$w_A" role="1PaTwD">
                                          <property role="3oM_SC" value="CLM.getClassLoader" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$yyu" role="1PaTwD">
                                          <property role="3oM_SC" value="could" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$z2b" role="1PaTwD">
                                          <property role="3oM_SC" value="live" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$z2i" role="1PaTwD">
                                          <property role="3oM_SC" value="w/o" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$zyx" role="1PaTwD">
                                          <property role="3oM_SC" value="model" />
                                        </node>
                                        <node concept="3oM_SD" id="72x5NjM$zyE" role="1PaTwD">
                                          <property role="3oM_SC" value="read" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="3uNHdNFtJee" role="3cqZAp">
                                      <node concept="2OqwBi" id="3uNHdNFtFrn" role="3cqZAk">
                                        <node concept="liA8E" id="3uNHdNFtG1K" role="2OqNvi">
                                          <ref role="37wK5l" to="3qmy:~MPSModuleClassLoader.loadOwnClass(java.lang.String)" resolve="loadOwnClass" />
                                          <node concept="37vLTw" id="3uNHdNFtGxf" role="37wK5m">
                                            <ref role="3cqZAo" node="IYmOvntYfV" resolve="fullClassName" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="72x5NjM$A07" role="2Oq$k0">
                                          <node concept="37vLTw" id="72x5NjM$$Id" role="2Oq$k0">
                                            <ref role="3cqZAo" node="72x5NjM$koL" resolve="clm" />
                                          </node>
                                          <node concept="liA8E" id="72x5NjM$AG1" role="2OqNvi">
                                            <ref role="37wK5l" to="3qmy:~ClassLoaderManager.getClassLoader(org.jetbrains.mps.openapi.module.SModule)" resolve="getClassLoader" />
                                            <node concept="2OqwBi" id="3uNHdNFtCUJ" role="37wK5m">
                                              <node concept="37vLTw" id="3uNHdNFtBYO" role="2Oq$k0">
                                                <ref role="3cqZAo" node="IYmOvntYfs" resolve="model" />
                                              </node>
                                              <node concept="liA8E" id="3uNHdNFtDRL" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="4KPvSRqLwBW" role="3cqZAp">
                                  <node concept="10Nm6u" id="4KPvSRqLxZC" role="3cqZAk" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4KPvSRqLG$E" role="3cqZAp">
                      <node concept="3clFbS" id="4KPvSRqLG$G" role="3clFbx">
                        <node concept="YS8fn" id="6zsZmIC5tx7" role="3cqZAp">
                          <node concept="2ShNRf" id="6zsZmIC5tx8" role="YScLw">
                            <node concept="1pGfFk" id="6zsZmIC5tx9" role="2ShVmc">
                              <ref role="37wK5l" to="qgwr:46sxDGTfogY" resolve="EvaluationException" />
                              <node concept="2OqwBi" id="3uNHdNFtRFT" role="37wK5m">
                                <node concept="Xl_RD" id="2AYTeDfQptC" role="2Oq$k0">
                                  <property role="Xl_RC" value="Can not load evaluator class %s" />
                                </node>
                                <node concept="2cAKMz" id="3uNHdNFtSN4" role="2OqNvi">
                                  <node concept="37vLTw" id="3uNHdNFtXiP" role="2cAKU6">
                                    <ref role="3cqZAo" node="IYmOvntYfV" resolve="fullClassName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="4KPvSRqLHUF" role="3clFbw">
                        <node concept="10Nm6u" id="4KPvSRqLIz_" role="3uHU7w" />
                        <node concept="37vLTw" id="4KPvSRqLH4L" role="3uHU7B">
                          <ref role="3cqZAo" node="4KPvSRqLCqG" resolve="rv" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4KPvSRqLM6u" role="3cqZAp">
                      <node concept="37vLTw" id="4KPvSRqLMKk" role="3cqZAk">
                        <ref role="3cqZAo" node="4KPvSRqLCqG" resolve="rv" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6KqxBER1z5t" role="3clFbw">
                    <node concept="37vLTw" id="6KqxBER1z5u" role="2Oq$k0">
                      <ref role="3cqZAo" node="6zsZmIC1CHe" resolve="result" />
                    </node>
                    <node concept="liA8E" id="6KqxBER1z5v" role="2OqNvi">
                      <ref role="37wK5l" to="i9so:17I1R__cQ6v" resolve="isSucessful" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6zsZmIC7kQz" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXocCr" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXocCs" role="1PaTwD">
                      <property role="3oM_SC" value="else" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCt" role="1PaTwD">
                      <property role="3oM_SC" value="fall-through," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCu" role="1PaTwD">
                      <property role="3oM_SC" value="up" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCv" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCw" role="1PaTwD">
                      <property role="3oM_SC" value="throws" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCx" role="1PaTwD">
                      <property role="3oM_SC" value="EvaluationException" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCy" role="1PaTwD">
                      <property role="3oM_SC" value="below" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="6zsZmIC1y_G" role="1zxBo5">
                <node concept="XOnhg" id="6zsZmIC1y_I" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dGZWg" role="1tU5fm">
                    <node concept="3uibUv" id="6zsZmIC1y_J" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                    </node>
                    <node concept="3uibUv" id="7gy9dXjS_JN" role="nSUat">
                      <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6zsZmIC1y_H" role="1zc67A">
                  <node concept="YS8fn" id="6zsZmIC1zG3" role="3cqZAp">
                    <node concept="2ShNRf" id="6zsZmIC1zI6" role="YScLw">
                      <node concept="1pGfFk" id="6zsZmIC1$Tg" role="2ShVmc">
                        <ref role="37wK5l" to="qgwr:46sxDGTfohh" resolve="EvaluationException" />
                        <node concept="37vLTw" id="6zsZmIC1$WB" role="37wK5m">
                          <ref role="3cqZAo" node="6zsZmIC1y_I" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6zsZmIBZ34c" role="3clFbw">
            <node concept="37vLTw" id="6zsZmIBZ0kL" role="2Oq$k0">
              <ref role="3cqZAo" node="6zsZmIBZ0kJ" resolve="makeService" />
            </node>
            <node concept="liA8E" id="6zsZmIBZ3H0" role="2OqNvi">
              <ref role="37wK5l" to="hfuk:7yGn3z4N63W" resolve="openNewSession" />
              <node concept="37vLTw" id="6zsZmIBZK2k" role="37wK5m">
                <ref role="3cqZAo" node="6zsZmIBZCap" resolve="makeSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="6zsZmIC5txd" role="3cqZAp">
          <node concept="2ShNRf" id="6zsZmIC5txe" role="YScLw">
            <node concept="1pGfFk" id="6zsZmIC5txf" role="2ShVmc">
              <ref role="37wK5l" to="qgwr:46sxDGTfogY" resolve="EvaluationException" />
              <node concept="Xl_RD" id="6zsZmIC5txg" role="37wK5m">
                <property role="Xl_RC" value="Errors during generation." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="IYmOvntYic" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3Tm1VV" id="IYmOvntYid" role="1B3o_S" />
      <node concept="2AHcQZ" id="IYmOvntYie" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2YIFZL" id="IYmOvntYif" role="jymVt">
      <property role="TrG5h" value="createInstance" />
      <property role="DiZV1" value="false" />
      <node concept="16syzq" id="IYmOvntYig" role="3clF45">
        <ref role="16sUi3" node="IYmOvntYja" resolve="E" />
      </node>
      <node concept="37vLTG" id="IYmOvntYih" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="IYmOvntYii" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvntYij" role="3clF46">
        <property role="TrG5h" value="parameterClasses" />
        <node concept="10Q1$e" id="IYmOvntYik" role="1tU5fm">
          <node concept="3uibUv" id="IYmOvntYil" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IYmOvntYim" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="10Q1$e" id="IYmOvntYin" role="1tU5fm">
          <node concept="3uibUv" id="IYmOvntYio" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="IYmOvntYip" role="3clF47">
        <node concept="3J1_TO" id="IYmOvntYiq" role="3cqZAp">
          <node concept="3clFbS" id="IYmOvntYir" role="1zxBo7">
            <node concept="3cpWs6" id="IYmOvntYis" role="3cqZAp">
              <node concept="10QFUN" id="IYmOvntYit" role="3cqZAk">
                <node concept="16syzq" id="IYmOvntYiu" role="10QFUM">
                  <ref role="16sUi3" node="IYmOvntYja" resolve="E" />
                </node>
                <node concept="2OqwBi" id="IYmOvntYiv" role="10QFUP">
                  <node concept="2OqwBi" id="IYmOvntYiw" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmOdM" role="2Oq$k0">
                      <ref role="3cqZAo" node="IYmOvntYih" resolve="clazz" />
                    </node>
                    <node concept="liA8E" id="IYmOvntYiy" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getConstructor(java.lang.Class...)" resolve="getConstructor" />
                      <node concept="37vLTw" id="IYmOvntYiz" role="37wK5m">
                        <ref role="3cqZAo" node="IYmOvntYij" resolve="parameterClasses" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="IYmOvntYi$" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                    <node concept="37vLTw" id="IYmOvntYi_" role="37wK5m">
                      <ref role="3cqZAo" node="IYmOvntYim" resolve="parameters" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="IYmOvntYiA" role="1zxBo5">
            <node concept="XOnhg" id="IYmOvntYiB" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGZXG" role="1tU5fm">
                <node concept="3uibUv" id="IYmOvntYiC" role="nSUat">
                  <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="IYmOvntYiD" role="1zc67A">
              <node concept="YS8fn" id="IYmOvntYiE" role="3cqZAp">
                <node concept="2ShNRf" id="IYmOvntYiF" role="YScLw">
                  <node concept="1pGfFk" id="IYmOvntYiG" role="2ShVmc">
                    <ref role="37wK5l" to="qgwr:46sxDGTfod$" resolve="InvocationTargetEvaluationException" />
                    <node concept="2OqwBi" id="IYmOvntYiH" role="37wK5m">
                      <node concept="37vLTw" id="3GM_nagTuou" role="2Oq$k0">
                        <ref role="3cqZAo" node="IYmOvntYiB" resolve="e" />
                      </node>
                      <node concept="liA8E" id="IYmOvntYiJ" role="2OqNvi">
                        <ref role="37wK5l" to="t6h5:~InvocationTargetException.getCause()" resolve="getCause" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="IYmOvntYiK" role="1zxBo5">
            <node concept="XOnhg" id="IYmOvntYiL" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGZXI" role="1tU5fm">
                <node concept="3uibUv" id="IYmOvntYiM" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NoSuchMethodException" resolve="NoSuchMethodException" />
                </node>
                <node concept="3uibUv" id="7gy9dXjSvS$" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                </node>
                <node concept="3uibUv" id="7gy9dXjSxka" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InstantiationException" resolve="InstantiationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="IYmOvntYiN" role="1zc67A">
              <node concept="YS8fn" id="IYmOvntYiO" role="3cqZAp">
                <node concept="2ShNRf" id="IYmOvntYiP" role="YScLw">
                  <node concept="1pGfFk" id="IYmOvntYiQ" role="2ShVmc">
                    <ref role="37wK5l" to="qgwr:46sxDGTfohh" resolve="EvaluationException" />
                    <node concept="37vLTw" id="3GM_nagTyOZ" role="37wK5m">
                      <ref role="3cqZAo" node="IYmOvntYiL" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="IYmOvntYj8" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3Tm1VV" id="IYmOvntYj9" role="1B3o_S" />
      <node concept="16euLQ" id="IYmOvntYja" role="16eVyc">
        <property role="TrG5h" value="E" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="IYmOvnu1Zm">
    <property role="TrG5h" value="IEvaluationContainer" />
    <node concept="3Tm1VV" id="IYmOvnu1Zn" role="1B3o_S" />
    <node concept="3clFb_" id="IYmOvnu1ZE" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="37vLTG" id="IYmOvnwl8q" role="3clF46">
        <property role="TrG5h" value="isWatch" />
        <node concept="10P_77" id="IYmOvnwl9I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5LCzy_V4Rrp" role="3clF46">
        <property role="TrG5h" value="onNodeSetUp" />
        <node concept="1ajhzC" id="5LCzy_V4Rrq" role="1tU5fm">
          <node concept="3cqZAl" id="5LCzy_V4Rrr" role="1ajl9A" />
          <node concept="3uibUv" id="5LCzy_V4Rrs" role="1ajw0F">
            <ref role="3uigEE" node="IYmOvnu1Zm" resolve="IEvaluationContainer" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IYmOvnu1ZG" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnu1ZH" role="3clF47" />
      <node concept="3uibUv" id="IYmOvnu1ZM" role="3clF45">
        <ref role="3uigEE" node="IYmOvnu1Zm" resolve="IEvaluationContainer" />
      </node>
    </node>
    <node concept="3clFb_" id="IYmOvn$0UJ" role="jymVt">
      <property role="TrG5h" value="generateClass" />
      <node concept="3uibUv" id="IYmOvn$3UR" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3Tm1VV" id="IYmOvn$0UM" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvn$0UN" role="3clF47" />
      <node concept="3uibUv" id="IYmOvn$0Vi" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
      </node>
    </node>
    <node concept="3clFb_" id="IYmOvn$H8I" role="jymVt">
      <property role="TrG5h" value="createEvaluatorInstance" />
      <node concept="3uibUv" id="IYmOvnEvm7" role="Sfmx6">
        <ref role="3uigEE" to="qgwr:46sxDGTfogQ" resolve="EvaluationException" />
      </node>
      <node concept="3uibUv" id="IYmOvn$JdZ" role="3clF45">
        <ref role="3uigEE" to="qgwr:46sxDGTfo5B" resolve="Evaluator" />
      </node>
      <node concept="3Tm1VV" id="IYmOvn$H8L" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvn$H8M" role="3clF47" />
      <node concept="37vLTG" id="IYmOvn$Jee" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="IYmOvn$Jed" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="IYmOvn_6ln" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="IYmOvn_6lq" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvn_6lr" role="3clF47" />
      <node concept="17QB3L" id="IYmOvn_6mr" role="3clF45" />
    </node>
    <node concept="3clFb_" id="IYmOvnANfZ" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="IYmOvnANg2" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnANg3" role="3clF47" />
      <node concept="3Tqbb2" id="IYmOvnANhv" role="3clF45" />
    </node>
    <node concept="3clFb_" id="IYmOvnCJGj" role="jymVt">
      <property role="TrG5h" value="updateState" />
      <node concept="3cqZAl" id="IYmOvnCJGl" role="3clF45" />
      <node concept="3Tm1VV" id="IYmOvnCJGm" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnCJGn" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="IYmOvnWiI0">
    <property role="TrG5h" value="PresentationUtil" />
    <node concept="2YIFZL" id="IYmOvnWiY7" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="IYmOvnWiYa" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnWiYb" role="3clF47">
        <node concept="3cpWs8" id="1dKkU9nruPH" role="3cqZAp">
          <node concept="3cpWsn" id="1dKkU9nruPI" role="3cpWs9">
            <property role="TrG5h" value="statements" />
            <node concept="2I9FWS" id="1dKkU9nruPJ" role="1tU5fm">
              <ref role="2I9WkF" to="tpee:fzclF8l" resolve="Statement" />
            </node>
            <node concept="2OqwBi" id="1dKkU9nruPL" role="33vP2m">
              <node concept="3Tsc0h" id="65usDfuLH_w" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
              </node>
              <node concept="37vLTw" id="IYmOvnWvh2" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnWuZq" resolve="statementList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1dKkU9nruPT" role="3cqZAp">
          <node concept="3clFbS" id="1dKkU9nruPU" role="3clFbx">
            <node concept="3cpWs6" id="1dKkU9nruQ3" role="3cqZAp">
              <node concept="Xl_RD" id="1dKkU9nruQ5" role="3cqZAk">
                <property role="Xl_RC" value="empty statement" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1dKkU9nruPY" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTtGu" role="2Oq$k0">
              <ref role="3cqZAo" node="1dKkU9nruPI" resolve="statements" />
            </node>
            <node concept="1v1jN8" id="1dKkU9nruQ2" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUI16" role="3cqZAp" />
        <node concept="3cpWs8" id="1dKkU9nrBE1" role="3cqZAp">
          <node concept="3cpWsn" id="1dKkU9nrBE2" role="3cpWs9">
            <property role="TrG5h" value="lastStatement" />
            <node concept="3Tqbb2" id="1dKkU9nrBE3" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8l" resolve="Statement" />
            </node>
            <node concept="2OqwBi" id="1dKkU9nrBE4" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTw2y" role="2Oq$k0">
                <ref role="3cqZAo" node="1dKkU9nruPI" resolve="statements" />
              </node>
              <node concept="1yVyf7" id="2Z_WgpF0Nth" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="JZQiz5ytWM" role="3cqZAp">
          <node concept="3cpWsn" id="JZQiz5ytWN" role="3cpWs9">
            <property role="TrG5h" value="suffix" />
            <node concept="17QB3L" id="JZQiz5ytWO" role="1tU5fm" />
            <node concept="1eOMI4" id="JZQiz5ytWP" role="33vP2m">
              <node concept="3K4zz7" id="JZQiz5ytWQ" role="1eOMHV">
                <node concept="Xl_RD" id="JZQiz5ytWR" role="3K4E3e">
                  <property role="Xl_RC" value="..." />
                </node>
                <node concept="Xl_RD" id="JZQiz5ytWS" role="3K4GZi">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3eOSWO" id="JZQiz5ytWT" role="3K4Cdx">
                  <node concept="3cmrfG" id="JZQiz5ytWU" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="JZQiz5ytWV" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTsJa" role="2Oq$k0">
                      <ref role="3cqZAo" node="1dKkU9nruPI" resolve="statements" />
                    </node>
                    <node concept="34oBXx" id="JZQiz5ytWX" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUI17" role="3cqZAp" />
        <node concept="3clFbJ" id="1dKkU9nrBE9" role="3cqZAp">
          <node concept="3clFbS" id="1dKkU9nrBEa" role="3clFbx">
            <node concept="3cpWs6" id="7XaAmAsUAYB" role="3cqZAp">
              <node concept="3cpWs3" id="IYmOvnWGS2" role="3cqZAk">
                <node concept="1rXfSq" id="IYmOvnWGSp" role="3uHU7B">
                  <ref role="37wK5l" node="IYmOvnWCZP" resolve="getExpressionPresentation" />
                  <node concept="2OqwBi" id="JZQiz5ytYC" role="37wK5m">
                    <node concept="1PxgMI" id="JZQiz5ytYD" role="2Oq$k0">
                      <node concept="chp4Y" id="714IaVdH1w5" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTADd" role="1m5AlR">
                        <ref role="3cqZAo" node="1dKkU9nrBE2" resolve="lastStatement" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="JZQiz5ytYF" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF8k" resolve="expression" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagT_my" role="3uHU7w">
                  <ref role="3cqZAo" node="JZQiz5ytWN" resolve="suffix" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1dKkU9nrBEh" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTwnU" role="2Oq$k0">
              <ref role="3cqZAo" node="1dKkU9nrBE2" resolve="lastStatement" />
            </node>
            <node concept="1mIQ4w" id="1dKkU9nrBEl" role="2OqNvi">
              <node concept="chp4Y" id="1dKkU9nrBEn" role="cj9EA">
                <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUI18" role="3cqZAp" />
        <node concept="3cpWs6" id="1dKkU9nruPx" role="3cqZAp">
          <node concept="3cpWs3" id="JZQiz5yjxa" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTzvT" role="3uHU7w">
              <ref role="3cqZAo" node="JZQiz5ytWN" resolve="suffix" />
            </node>
            <node concept="2OqwBi" id="1dKkU9nruPy" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTyCJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1dKkU9nrBE2" resolve="lastStatement" />
              </node>
              <node concept="3zqWPK" id="70OdufORceb" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="IYmOvnWiYh" role="3clF45" />
      <node concept="37vLTG" id="IYmOvnWuZq" role="3clF46">
        <property role="TrG5h" value="statementList" />
        <node concept="3Tqbb2" id="IYmOvnWuZp" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="IYmOvnWCZP" role="jymVt">
      <property role="TrG5h" value="getExpressionPresentation" />
      <node concept="37vLTG" id="IYmOvnWD0Z" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3Tqbb2" id="IYmOvnWD15" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
        </node>
        <node concept="2AHcQZ" id="IYmOvnWD2s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="IYmOvnWCZS" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnWCZT" role="3clF47">
        <node concept="3clFbJ" id="JZQiz5ytXi" role="3cqZAp">
          <node concept="3clFbS" id="JZQiz5ytXj" role="3clFbx">
            <node concept="3cpWs6" id="JZQiz5ytXr" role="3cqZAp">
              <node concept="Xl_RD" id="JZQiz5ytXt" role="3cqZAk">
                <property role="Xl_RC" value="????" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="JZQiz5ytXn" role="3clFbw">
            <node concept="10Nm6u" id="JZQiz5ytXq" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglfhB" role="3uHU7B">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZw" role="3cqZAp" />
        <node concept="3clFbJ" id="JZQiz5yjwK" role="3cqZAp">
          <node concept="2OqwBi" id="JZQiz5yjwP" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxghis3" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="JZQiz5yjwT" role="2OqNvi">
              <node concept="chp4Y" id="IYmOvnWDSQ" role="cj9EA">
                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="JZQiz5yjwM" role="3clFbx">
            <node concept="3cpWs6" id="JZQiz5yjwW" role="3cqZAp">
              <node concept="2OqwBi" id="JZQiz5yjx1" role="3cqZAk">
                <node concept="1PxgMI" id="JZQiz5yjwZ" role="2Oq$k0">
                  <node concept="chp4Y" id="714IaVdH1w6" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm6AY" role="1m5AlR">
                    <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                  </node>
                </node>
                <node concept="3TrcHB" id="JZQiz5yjx5" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZx" role="3cqZAp" />
        <node concept="3clFbJ" id="JZQiz5ytX3" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="JZQiz5ytX4" role="3clFbx">
            <node concept="3cpWs6" id="IYmOvnWOtr" role="3cqZAp">
              <node concept="3cpWs3" id="IYmOvnWYmp" role="3cqZAk">
                <node concept="1rXfSq" id="IYmOvnWYrV" role="3uHU7w">
                  <ref role="37wK5l" node="IYmOvnWTg0" resolve="getOperationPresentation" />
                  <node concept="2OqwBi" id="4HVSRL4a_WY" role="37wK5m">
                    <node concept="1PxgMI" id="4HVSRL4a_WZ" role="2Oq$k0">
                      <node concept="chp4Y" id="714IaVdH1w1" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgm2rt" role="1m5AlR">
                        <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="7XaAmAsUAZr" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="IYmOvnWPKl" role="3uHU7B">
                  <node concept="1rXfSq" id="IYmOvnWPdR" role="3uHU7B">
                    <ref role="37wK5l" node="IYmOvnWCZP" resolve="getExpressionPresentation" />
                    <node concept="2OqwBi" id="JZQiz5ytX$" role="37wK5m">
                      <node concept="1PxgMI" id="JZQiz5ytXy" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdH1vZ" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgm77O" role="1m5AlR">
                          <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="JZQiz5ytY0" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="IYmOvnWPMa" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="JZQiz5ytX8" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm6nO" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="JZQiz5ytXc" role="2OqNvi">
              <node concept="chp4Y" id="JZQiz5ytXe" role="cj9EA">
                <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZv" role="3cqZAp" />
        <node concept="3clFbJ" id="JZQiz5ytY2" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="JZQiz5ytY3" role="3clFbx">
            <node concept="3cpWs6" id="IYmOvnX3zF" role="3cqZAp">
              <node concept="3cpWs3" id="IYmOvnX6qQ" role="3cqZAk">
                <node concept="1rXfSq" id="IYmOvnX6xQ" role="3uHU7w">
                  <ref role="37wK5l" node="IYmOvnWCZP" resolve="getExpressionPresentation" />
                  <node concept="2OqwBi" id="3X0IU8rrGuN" role="37wK5m">
                    <node concept="1PxgMI" id="3X0IU8rrGuO" role="2Oq$k0">
                      <node concept="chp4Y" id="714IaVdH1we" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:fJuHJVf" resolve="BinaryOperation" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglS16" role="1m5AlR">
                        <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3X0IU8rrGuQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fJuHU4r" resolve="rightExpression" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="IYmOvnX41R" role="3uHU7B">
                  <node concept="1rXfSq" id="IYmOvnX3$h" role="3uHU7B">
                    <ref role="37wK5l" node="IYmOvnWCZP" resolve="getExpressionPresentation" />
                    <node concept="2OqwBi" id="JZQiz5ytYm" role="37wK5m">
                      <node concept="1PxgMI" id="JZQiz5ytYn" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdH1vX" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fJuHJVf" resolve="BinaryOperation" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxghfu1" role="1m5AlR">
                          <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="JZQiz5ytYG" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2wdLO7KgGgv" role="3uHU7w">
                    <node concept="2OqwBi" id="6b5F$bhnIft" role="2Oq$k0">
                      <node concept="2yIwOk" id="6b5F$bhnIfu" role="2OqNvi" />
                      <node concept="1PxgMI" id="2wdLO7KgGgz" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxglayM" role="1m5AlR">
                          <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                        </node>
                        <node concept="chp4Y" id="714IaVdH1w8" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:fJuHJVf" resolve="BinaryOperation" />
                        </node>
                      </node>
                    </node>
                    <node concept="3n3YKJ" id="6b5F$bhnIfv" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="JZQiz5ytY7" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglf4x" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="JZQiz5ytYb" role="2OqNvi">
              <node concept="chp4Y" id="JZQiz5ytYd" role="cj9EA">
                <ref role="cht4Q" to="tpee:fJuHJVf" resolve="BinaryOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZy" role="3cqZAp" />
        <node concept="3clFbJ" id="2Z_WgpF0Ntw" role="3cqZAp">
          <node concept="3clFbS" id="2Z_WgpF0Ntx" role="3clFbx">
            <node concept="3cpWs6" id="2Z_WgpF0NtG" role="3cqZAp">
              <node concept="3cpWs3" id="7rpH3WUMBxd" role="3cqZAk">
                <node concept="Xl_RD" id="7rpH3WUMBXN" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="3cpWs3" id="7rpH3WUMBXO" role="3uHU7B">
                  <node concept="Xl_RD" id="7rpH3WUMBXR" role="3uHU7B">
                    <property role="Xl_RC" value="\&quot;" />
                  </node>
                  <node concept="2OqwBi" id="2Z_WgpF0NtL" role="3uHU7w">
                    <node concept="1PxgMI" id="2Z_WgpF0NtJ" role="2Oq$k0">
                      <node concept="chp4Y" id="714IaVdH1w2" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxghiwU" role="1m5AlR">
                        <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="2Z_WgpF0NtP" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2Z_WgpF0Nt_" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm6CP" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="2Z_WgpF0NtD" role="2OqNvi">
              <node concept="chp4Y" id="2Z_WgpF0NtF" role="cj9EA">
                <ref role="cht4Q" to="tpee:f$Xl_Og" resolve="StringLiteral" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZz" role="3cqZAp" />
        <node concept="3clFbJ" id="5L0tGOozxAq" role="3cqZAp">
          <node concept="3clFbS" id="5L0tGOozxAr" role="3clFbx">
            <node concept="3cpWs6" id="5L0tGOozxAA" role="3cqZAp">
              <node concept="3cpWs3" id="5L0tGOozxAD" role="3cqZAk">
                <node concept="2OqwBi" id="5L0tGOozxAO" role="3uHU7w">
                  <node concept="2OqwBi" id="5L0tGOozxAJ" role="2Oq$k0">
                    <node concept="1PxgMI" id="5L0tGOozxAH" role="2Oq$k0">
                      <node concept="chp4Y" id="714IaVdH1wf" role="3oSUPX">
                        <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglr$8" role="1m5AlR">
                        <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5L0tGOozxAN" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gEShVi6" resolve="creator" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORced" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5L0tGOozxAC" role="3uHU7B">
                  <property role="Xl_RC" value="new " />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5L0tGOozxAv" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgmaM0" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="1mIQ4w" id="5L0tGOozxAz" role="2OqNvi">
              <node concept="chp4Y" id="5L0tGOozxA_" role="cj9EA">
                <ref role="cht4Q" to="tpee:gEShNN5" resolve="GenericNewExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZ$" role="3cqZAp" />
        <node concept="3clFbJ" id="2Z_WgpF0Ntj" role="3cqZAp">
          <node concept="2OqwBi" id="1653mnvBkiZ" role="3clFbw">
            <node concept="2OqwBi" id="1653mnvBkj0" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxgmLat" role="2Oq$k0">
                <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
              </node>
              <node concept="2yIwOk" id="6hI7daPP75o" role="2OqNvi" />
            </node>
            <node concept="3zqWPK" id="70OdufORcef" role="2OqNvi">
              <ref role="37wK5l" to="tpek:1653mnvAgr2" resolve="constant" />
            </node>
          </node>
          <node concept="3clFbS" id="2Z_WgpF0Ntk" role="3clFbx">
            <node concept="3cpWs6" id="2Z_WgpF0Ntl" role="3cqZAp">
              <node concept="3cpWs3" id="2Z_WgpF0Ntm" role="3cqZAk">
                <node concept="Xl_RD" id="2Z_WgpF0Ntn" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2OqwBi" id="2Z_WgpF0Nto" role="3uHU7B">
                  <node concept="37vLTw" id="2BHiRxgmeX5" role="2Oq$k0">
                    <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORceh" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i1LP2xI" resolve="getCompileTimeConstantValue" />
                    <node concept="2OqwBi" id="70OdufORcej" role="37wK5m">
                      <node concept="2JrnkZ" id="70OdufORcek" role="2Oq$k0">
                        <node concept="2OqwBi" id="70OdufORcel" role="2JrQYb">
                          <node concept="I4A8Y" id="70OdufORcem" role="2OqNvi" />
                          <node concept="37vLTw" id="70OdufORcen" role="2Oq$k0">
                            <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="70OdufORceo" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7XaAmAsUAZ_" role="3cqZAp" />
        <node concept="3cpWs6" id="JZQiz5ytYs" role="3cqZAp">
          <node concept="2OqwBi" id="JZQiz5ytYv" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxgkZ0X" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWD0Z" resolve="expression" />
            </node>
            <node concept="3zqWPK" id="70OdufORcep" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="IYmOvnWD0X" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="IYmOvnWTg0" role="jymVt">
      <property role="TrG5h" value="getOperationPresentation" />
      <node concept="3Tm1VV" id="IYmOvnWTg3" role="1B3o_S" />
      <node concept="3clFbS" id="IYmOvnWTg4" role="3clF47">
        <node concept="3clFbJ" id="4HVSRL4a_Wm" role="3cqZAp">
          <node concept="3clFbC" id="4HVSRL4a_Wq" role="3clFbw">
            <node concept="10Nm6u" id="4HVSRL4a_Wt" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxgmP6j" role="3uHU7B">
              <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
            </node>
          </node>
          <node concept="3clFbS" id="4HVSRL4a_Wo" role="3clFbx">
            <node concept="3cpWs6" id="4HVSRL4a_Wu" role="3cqZAp">
              <node concept="Xl_RD" id="4HVSRL4a_Ww" role="3cqZAk">
                <property role="Xl_RC" value="????" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4HVSRL4a_Wy" role="3cqZAp">
          <node concept="3clFbS" id="4HVSRL4a_Wz" role="3clFbx">
            <node concept="3cpWs6" id="4HVSRL4a_WL" role="3cqZAp">
              <node concept="2OqwBi" id="2wdLO7KfEKc" role="3cqZAk">
                <node concept="2OqwBi" id="6b5F$bhnIfx" role="2Oq$k0">
                  <node concept="2yIwOk" id="6b5F$bhnIfy" role="2OqNvi" />
                  <node concept="37vLTw" id="2BHiRxgmyAS" role="2Oq$k0">
                    <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
                  </node>
                </node>
                <node concept="3n3YKJ" id="6b5F$bhnIfz" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4HVSRL4a_WG" role="3clFbw">
            <node concept="2OqwBi" id="2wdLO7KhUN_" role="2Oq$k0">
              <node concept="2OqwBi" id="6b5F$bhnIf_" role="2Oq$k0">
                <node concept="2yIwOk" id="6b5F$bhnIfA" role="2OqNvi" />
                <node concept="37vLTw" id="2BHiRxghfYU" role="2Oq$k0">
                  <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
                </node>
              </node>
              <node concept="3n3YKJ" id="6b5F$bhnIfB" role="2OqNvi" />
            </node>
            <node concept="17RvpY" id="4HVSRL4a_WK" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="4HVSRL4a_X2" role="3cqZAp">
          <node concept="3clFbS" id="4HVSRL4a_X3" role="3clFbx">
            <node concept="3cpWs6" id="4HVSRL4a_Xe" role="3cqZAp">
              <node concept="3cpWs3" id="4HVSRL4aCpV" role="3cqZAk">
                <node concept="Xl_RD" id="4HVSRL4aCpY" role="3uHU7w">
                  <property role="Xl_RC" value=")" />
                </node>
                <node concept="3cpWs3" id="4HVSRL4aCpe" role="3uHU7B">
                  <node concept="3cpWs3" id="4HVSRL4aCp7" role="3uHU7B">
                    <node concept="2OqwBi" id="4HVSRL4aCp2" role="3uHU7B">
                      <node concept="2OqwBi" id="4HVSRL4a_Xn" role="2Oq$k0">
                        <node concept="1PxgMI" id="4HVSRL4a_Xl" role="2Oq$k0">
                          <node concept="chp4Y" id="714IaVdH1vT" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:hxndl_i" resolve="IMethodCall" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxgh9ZQ" role="1m5AlR">
                            <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="4HVSRL4aCp1" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fz7wK6H" resolve="baseMethodDeclaration" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4HVSRL4aCp6" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4HVSRL4aCpa" role="3uHU7w">
                      <property role="Xl_RC" value="(" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4HVSRL4aCpp" role="3uHU7w">
                    <node concept="2OqwBi" id="4HVSRL4aCpk" role="2Oq$k0">
                      <node concept="1PxgMI" id="4HVSRL4aCpi" role="2Oq$k0">
                        <node concept="chp4Y" id="714IaVdH1wa" role="3oSUPX">
                          <ref role="cht4Q" to="tpee:hxndl_i" resolve="IMethodCall" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxghg_l" role="1m5AlR">
                          <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="4HVSRL4aCpo" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fz7wK6I" resolve="actualArgument" />
                      </node>
                    </node>
                    <node concept="1MD8d$" id="4HVSRL4aCpt" role="2OqNvi">
                      <node concept="1bVj0M" id="4HVSRL4aCpu" role="23t8la">
                        <node concept="3clFbS" id="4HVSRL4aCpv" role="1bW5cS">
                          <node concept="3clFbF" id="4HVSRL4aCpB" role="3cqZAp">
                            <node concept="3cpWs3" id="IYmOvnWVLR" role="3clFbG">
                              <node concept="1rXfSq" id="IYmOvnWVQd" role="3uHU7w">
                                <ref role="37wK5l" node="IYmOvnWCZP" resolve="getExpressionPresentation" />
                                <node concept="37vLTw" id="IYmOvnWVY2" role="37wK5m">
                                  <ref role="3cqZAo" node="5W7E4fV0Xhs" resolve="it" />
                                </node>
                              </node>
                              <node concept="1eOMI4" id="4HVSRL4aHdk" role="3uHU7B">
                                <node concept="3K4zz7" id="4HVSRL4aHdm" role="1eOMHV">
                                  <node concept="Xl_RD" id="4HVSRL4aHdn" role="3K4E3e">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                  <node concept="2OqwBi" id="4HVSRL4aHdo" role="3K4Cdx">
                                    <node concept="37vLTw" id="2BHiRxghgha" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4HVSRL4aCpw" resolve="s" />
                                    </node>
                                    <node concept="17RlXB" id="4HVSRL4aHdq" role="2OqNvi" />
                                  </node>
                                  <node concept="3cpWs3" id="4HVSRL4aHdr" role="3K4GZi">
                                    <node concept="37vLTw" id="2BHiRxglryi" role="3uHU7B">
                                      <ref role="3cqZAo" node="4HVSRL4aCpw" resolve="s" />
                                    </node>
                                    <node concept="Xl_RD" id="4HVSRL4aHdt" role="3uHU7w">
                                      <property role="Xl_RC" value="," />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="4HVSRL4aCpw" role="1bW2Oz">
                          <property role="TrG5h" value="s" />
                          <node concept="17QB3L" id="4HVSRL4aCpA" role="1tU5fm" />
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xhs" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xht" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4HVSRL4aCp_" role="1MDeny">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4HVSRL4a_X7" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm41x" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
            </node>
            <node concept="1mIQ4w" id="4HVSRL4a_Xb" role="2OqNvi">
              <node concept="chp4Y" id="4HVSRL4a_Xd" role="cj9EA">
                <ref role="cht4Q" to="tpee:hxndl_i" resolve="IMethodCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4HVSRL4aCpN" role="3cqZAp">
          <node concept="2OqwBi" id="4HVSRL4aCpQ" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxghfVP" role="2Oq$k0">
              <ref role="3cqZAo" node="IYmOvnWTjh" resolve="operation" />
            </node>
            <node concept="3zqWPK" id="70OdufORcer" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="IYmOvnWTje" role="3clF45" />
      <node concept="37vLTG" id="IYmOvnWTjh" role="3clF46">
        <property role="TrG5h" value="operation" />
        <node concept="3Tqbb2" id="IYmOvnWTjg" role="1tU5fm">
          <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
        </node>
        <node concept="2AHcQZ" id="IYmOvnWWAQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="IYmOvnWiI1" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="IYmOvnY1D7">
    <property role="TrG5h" value="BaseLanguagesImportHelper" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFb_" id="7dwGA3a9C6X" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findVariable" />
      <node concept="3Tm1VV" id="7dwGA3a9C70" role="1B3o_S" />
      <node concept="3clFbS" id="7dwGA3a9C71" role="3clF47" />
      <node concept="3Tqbb2" id="7dwGA3a9CdB" role="3clF45" />
      <node concept="37vLTG" id="7dwGA3a9D5e" role="3clF46">
        <property role="TrG5h" value="variableReference" />
        <node concept="2z4iKi" id="7dwGA3a9D5d" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="7dwGA3a9D5X" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createVariableReference" />
      <node concept="3Tm1VV" id="7dwGA3a9D5Y" role="1B3o_S" />
      <node concept="3clFbS" id="7dwGA3a9D5Z" role="3clF47" />
      <node concept="3Tqbb2" id="7dwGA3a9D60" role="3clF45" />
      <node concept="37vLTG" id="7dwGA3a9D61" role="3clF46">
        <property role="TrG5h" value="variable" />
        <node concept="3Tqbb2" id="7dwGA3a9DbT" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFbW" id="OqYxEjQkkP" role="jymVt">
      <node concept="3cqZAl" id="OqYxEjQkkR" role="3clF45" />
      <node concept="3Tm1VV" id="OqYxEjQkkS" role="1B3o_S" />
      <node concept="3clFbS" id="OqYxEjQkkT" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="IYmOvnY1D8" role="1B3o_S" />
    <node concept="3clFb_" id="7dwGA3a9ovy" role="jymVt">
      <property role="TrG5h" value="tryToImport" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="6hQteoiVuJt" role="3clF45" />
      <node concept="37vLTG" id="IYmOvnYelZ" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3Tqbb2" id="IYmOvnYem8" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
        </node>
      </node>
      <node concept="37vLTG" id="6hQteoiVuJA" role="3clF46">
        <property role="TrG5h" value="nodesToImport" />
        <node concept="_YKpA" id="6hQteoiVuJB" role="1tU5fm">
          <node concept="3uibUv" id="2muBbPs8jT5" role="_ZDj9">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6hQteoiVuJv" role="3clF47">
        <node concept="3cpWs8" id="3OkcvSSBWrH" role="3cqZAp">
          <node concept="3cpWsn" id="3OkcvSSBWrI" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3OkcvSSBWrD" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="3OkcvSSBWrJ" role="33vP2m">
              <node concept="2JrnkZ" id="3OkcvSSBWrK" role="2Oq$k0">
                <node concept="2OqwBi" id="3OkcvSSBWrL" role="2JrQYb">
                  <node concept="37vLTw" id="3OkcvSSBWrM" role="2Oq$k0">
                    <ref role="3cqZAo" node="IYmOvnYelZ" resolve="container" />
                  </node>
                  <node concept="I4A8Y" id="3OkcvSSBWrN" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="3OkcvSSBWrO" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7wawnAdo5fc" role="3cqZAp">
          <node concept="3cpWsn" id="7wawnAdo5fd" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="_YKpA" id="7wawnAdo5g6" role="1tU5fm">
              <node concept="3Tqbb2" id="7wawnAdo5ga" role="_ZDj9" />
            </node>
            <node concept="2YIFZM" id="7wawnAdo5gl" role="33vP2m">
              <ref role="1Pybhc" to="w1kc:~CopyUtil" resolve="CopyUtil" />
              <ref role="37wK5l" to="w1kc:~CopyUtil.copy(java.util.List)" resolve="copy" />
              <node concept="2OqwBi" id="7wawnAdo5fV" role="37wK5m">
                <node concept="2OqwBi" id="7wawnAdo5fx" role="2Oq$k0">
                  <node concept="2OqwBi" id="7wawnAdo5fg" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmFje" role="2Oq$k0">
                      <ref role="3cqZAo" node="6hQteoiVuJA" resolve="nodesToImport" />
                    </node>
                    <node concept="3$u5V9" id="7wawnAdo5fi" role="2OqNvi">
                      <node concept="1bVj0M" id="7wawnAdo5fj" role="23t8la">
                        <node concept="3clFbS" id="7wawnAdo5fk" role="1bW5cS">
                          <node concept="3clFbF" id="7wawnAdo5fl" role="3cqZAp">
                            <node concept="10QFUN" id="7wawnAdo5fm" role="3clFbG">
                              <node concept="3Tqbb2" id="7wawnAdo5fn" role="10QFUM" />
                              <node concept="2OqwBi" id="7wawnAdo5fo" role="10QFUP">
                                <node concept="37vLTw" id="2BHiRxgmb$i" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Xhu" resolve="it" />
                                </node>
                                <node concept="liA8E" id="6SyhPqtSbOt" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                  <node concept="37vLTw" id="3OkcvSSBWrP" role="37wK5m">
                                    <ref role="3cqZAo" node="3OkcvSSBWrI" resolve="repository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Xhu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Xhv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1KnU$U" id="5wDRINDp156" role="2OqNvi" />
                </node>
                <node concept="ANE8D" id="7wawnAdo5g1" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6hQteoiVuKh" role="3cqZAp">
          <node concept="2GrKxI" id="6hQteoiVuKi" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="37vLTw" id="3GM_nagTvoB" role="2GsD0m">
            <ref role="3cqZAo" node="7wawnAdo5fd" resolve="nodes" />
          </node>
          <node concept="3clFbS" id="6hQteoiVuKk" role="2LFqv$">
            <node concept="3clFbJ" id="LxX7LpSo$v" role="3cqZAp">
              <node concept="3clFbS" id="LxX7LpSo$w" role="3clFbx">
                <node concept="3N13vt" id="LxX7LpSo$E" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="LxX7LpSo$$" role="3clFbw">
                <node concept="10Nm6u" id="LxX7LpSo$B" role="3uHU7w" />
                <node concept="2GrUjf" id="LxX7LpSo$z" role="3uHU7B">
                  <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6hQteoiVuKA" role="3cqZAp">
              <node concept="3clFbS" id="6hQteoiVuKC" role="3clFbx">
                <node concept="3cpWs8" id="6hQteoiVuNk" role="3cqZAp">
                  <node concept="3cpWsn" id="6hQteoiVuNl" role="3cpWs9">
                    <property role="TrG5h" value="clone" />
                    <node concept="3Tqbb2" id="6hQteoiVuNm" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                    </node>
                    <node concept="2c44tf" id="6hQteoiVuNn" role="33vP2m">
                      <node concept="3clFbF" id="6hQteoiVuNo" role="2c44tc">
                        <node concept="33vP2n" id="6hQteoiVuNp" role="3clFbG">
                          <node concept="2c44te" id="6hQteoiVuNq" role="lGtFl">
                            <node concept="2GrUjf" id="6hQteoiVuMp" role="2c44t1">
                              <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="IYmOvnYNvq" role="3cqZAp">
                  <node concept="1rXfSq" id="IYmOvnYNvp" role="3clFbG">
                    <ref role="37wK5l" node="7dwGA3a9yYk" resolve="transformNode" />
                    <node concept="37vLTw" id="IYmOvnYNx6" role="37wK5m">
                      <ref role="3cqZAo" node="6hQteoiVuNl" resolve="clone" />
                    </node>
                    <node concept="2OqwBi" id="IYmOvnZGBc" role="37wK5m">
                      <node concept="I4A8Y" id="IYmOvnZIWe" role="2OqNvi" />
                      <node concept="37vLTw" id="IYmOvnZGta" role="2Oq$k0">
                        <ref role="3cqZAo" node="IYmOvnYelZ" resolve="container" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6hQteoiVuN1" role="3cqZAp">
                  <node concept="2OqwBi" id="6hQteoiVuNd" role="3clFbG">
                    <node concept="2OqwBi" id="6hQteoiVuN8" role="2Oq$k0">
                      <node concept="3Tsc0h" id="6hQteoiVuNc" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                      </node>
                      <node concept="37vLTw" id="IYmOvnYg66" role="2Oq$k0">
                        <ref role="3cqZAo" node="IYmOvnYelZ" resolve="container" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="6hQteoiVuNh" role="2OqNvi">
                      <node concept="37vLTw" id="3GM_nagTvQ9" role="25WWJ7">
                        <ref role="3cqZAo" node="6hQteoiVuNl" resolve="clone" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6hQteoiVuLC" role="3clFbw">
                <node concept="2GrUjf" id="6hQteoiVuLB" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="6hQteoiVuLG" role="2OqNvi">
                  <node concept="chp4Y" id="6hQteoiVuLI" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="6hQteoiVuLK" role="3eNLev">
                <node concept="3clFbS" id="6hQteoiVuLM" role="3eOfB_">
                  <node concept="3clFbF" id="IYmOvnYLqe" role="3cqZAp">
                    <node concept="1rXfSq" id="IYmOvnYLqd" role="3clFbG">
                      <ref role="37wK5l" node="7dwGA3a9yYk" resolve="transformNode" />
                      <node concept="2GrUjf" id="IYmOvnYLs0" role="37wK5m">
                        <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                      </node>
                      <node concept="2OqwBi" id="IYmOvnZJTp" role="37wK5m">
                        <node concept="I4A8Y" id="IYmOvnZJTq" role="2OqNvi" />
                        <node concept="37vLTw" id="IYmOvnZJTr" role="2Oq$k0">
                          <ref role="3cqZAo" node="IYmOvnYelZ" resolve="container" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6hQteoiVuN_" role="3cqZAp">
                    <node concept="2OqwBi" id="6hQteoiVuNA" role="3clFbG">
                      <node concept="2OqwBi" id="6hQteoiVuNB" role="2Oq$k0">
                        <node concept="3Tsc0h" id="6hQteoiVuNF" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                        </node>
                        <node concept="37vLTw" id="IYmOvnYg_y" role="2Oq$k0">
                          <ref role="3cqZAo" node="IYmOvnYelZ" resolve="container" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="6hQteoiVuNG" role="2OqNvi">
                        <node concept="1PxgMI" id="2oUhUdDHf03" role="25WWJ7">
                          <node concept="chp4Y" id="714IaVdH1wb" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                          </node>
                          <node concept="2GrUjf" id="7wawnAdo5gu" role="1m5AlR">
                            <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6hQteoiVuLO" role="3eO9$A">
                  <node concept="2GrUjf" id="6hQteoiVuLN" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6hQteoiVuKi" resolve="node" />
                  </node>
                  <node concept="1mIQ4w" id="6hQteoiVuLS" role="2OqNvi">
                    <node concept="chp4Y" id="6hQteoiVuLU" role="cj9EA">
                      <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IYmOvnY9$Q" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7dwGA3a9ref" role="jymVt">
      <property role="TrG5h" value="replaceStubReferences" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="6hQteoiVDuw" role="3clF45" />
      <node concept="37vLTG" id="6hQteoiVDuD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6hQteoiVDuE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IYmOvnZ8Yi" role="3clF46">
        <property role="TrG5h" value="containerModel" />
        <node concept="H_c77" id="IYmOvnZA5M" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6hQteoiVDuy" role="3clF47">
        <node concept="2Gpval" id="6hQteoiVDuF" role="3cqZAp">
          <node concept="2GrKxI" id="6hQteoiVDuG" role="2Gsz3X">
            <property role="TrG5h" value="reference" />
          </node>
          <node concept="2OqwBi" id="6hQteoiVDuK" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxghfVV" role="2Oq$k0">
              <ref role="3cqZAo" node="6hQteoiVDuD" resolve="node" />
            </node>
            <node concept="2z74zc" id="6hQteoiVDuR" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6hQteoiVDuI" role="2LFqv$">
            <node concept="3cpWs8" id="6hQteoiVDMI" role="3cqZAp">
              <node concept="3cpWsn" id="6hQteoiVDMJ" role="3cpWs9">
                <property role="TrG5h" value="targetModel" />
                <node concept="H_c77" id="6hQteoiVDMK" role="1tU5fm" />
                <node concept="2OqwBi" id="6hQteoiVDML" role="33vP2m">
                  <node concept="2OqwBi" id="6hQteoiVDMM" role="2Oq$k0">
                    <node concept="2GrUjf" id="6hQteoiVDMN" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6hQteoiVDuG" resolve="reference" />
                    </node>
                    <node concept="2ZHEkA" id="6hQteoiVDMO" role="2OqNvi" />
                  </node>
                  <node concept="I4A8Y" id="6hQteoiVDMP" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6hQteoiVDuS" role="3cqZAp">
              <node concept="17QLQc" id="6hQteoiVDMS" role="3clFbw">
                <node concept="37vLTw" id="IYmOvnZb7V" role="3uHU7w">
                  <ref role="3cqZAo" node="IYmOvnZ8Yi" resolve="containerModel" />
                </node>
                <node concept="37vLTw" id="3GM_nagTuAB" role="3uHU7B">
                  <ref role="3cqZAo" node="6hQteoiVDMJ" resolve="targetModel" />
                </node>
              </node>
              <node concept="3clFbS" id="6hQteoiVDuU" role="3clFbx">
                <node concept="3cpWs8" id="6hQteoiVDYK" role="3cqZAp">
                  <node concept="3cpWsn" id="6hQteoiVDYL" role="3cpWs9">
                    <property role="TrG5h" value="scopeModel" />
                    <node concept="3uibUv" id="2muBbPs8jTc" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="6HsDLAzizUw" role="33vP2m">
                      <node concept="2OqwBi" id="2n9zn0CqN3K" role="2Oq$k0">
                        <node concept="liA8E" id="2n9zn0CqN3L" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                        </node>
                        <node concept="2JrnkZ" id="2n9zn0CqN3M" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTtwe" role="2JrQYb">
                            <ref role="3cqZAo" node="6hQteoiVDMJ" resolve="targetModel" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6HsDLAzi$9x" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                        <node concept="2OqwBi" id="3OkcvSSBBnK" role="37wK5m">
                          <node concept="2JrnkZ" id="3OkcvSSBAC4" role="2Oq$k0">
                            <node concept="37vLTw" id="3OkcvSSBzT7" role="2JrQYb">
                              <ref role="3cqZAo" node="IYmOvnZ8Yi" resolve="containerModel" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3OkcvSSBCc_" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3OkcvSSBJ$8" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXocCz" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXocC$" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocC_" role="1PaTwD">
                      <property role="3oM_SC" value="I" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCA" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCB" role="1PaTwD">
                      <property role="3oM_SC" value="understand" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCC" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCD" role="1PaTwD">
                      <property role="3oM_SC" value="code," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCE" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCF" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCG" role="1PaTwD">
                      <property role="3oM_SC" value="sure" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCH" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCI" role="1PaTwD">
                      <property role="3oM_SC" value="ever" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCJ" role="1PaTwD">
                      <property role="3oM_SC" value="worked" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCK" role="1PaTwD">
                      <property role="3oM_SC" value="(how" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCL" role="1PaTwD">
                      <property role="3oM_SC" value="come" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCM" role="1PaTwD">
                      <property role="3oM_SC" value="model" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCN" role="1PaTwD">
                      <property role="3oM_SC" value="!=" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCO" role="1PaTwD">
                      <property role="3oM_SC" value="model.reference.resolve(global" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCP" role="1PaTwD">
                      <property role="3oM_SC" value="repo)" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3OkcvSSBJXN" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXocCQ" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXocCR" role="1PaTwD">
                      <property role="3oM_SC" value="just" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCS" role="1PaTwD">
                      <property role="3oM_SC" value="refactored" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCT" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCU" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCV" role="1PaTwD">
                      <property role="3oM_SC" value="bit," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCW" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCX" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCY" role="1PaTwD">
                      <property role="3oM_SC" value="guess" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocCZ" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD0" role="1PaTwD">
                      <property role="3oM_SC" value="intention" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD1" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD2" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD3" role="1PaTwD">
                      <property role="3oM_SC" value="replace" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD4" role="1PaTwD">
                      <property role="3oM_SC" value="references" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD5" role="1PaTwD">
                      <property role="3oM_SC" value="pointing" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD6" role="1PaTwD">
                      <property role="3oM_SC" value="outside" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD7" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD8" role="1PaTwD">
                      <property role="3oM_SC" value="debugger" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocD9" role="1PaTwD">
                      <property role="3oM_SC" value="repository" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="3OkcvSSBKn6" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXocDa" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXocDb" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDc" role="1PaTwD">
                      <property role="3oM_SC" value="dynamics" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDd" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDe" role="1PaTwD">
                      <property role="3oM_SC" value="would" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDf" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDg" role="1PaTwD">
                      <property role="3oM_SC" value="resolved" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDh" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDi" role="1PaTwD">
                      <property role="3oM_SC" value="proper" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDj" role="1PaTwD">
                      <property role="3oM_SC" value="debugger" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDk" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDl" role="1PaTwD">
                      <property role="3oM_SC" value="later" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXocDm" role="1PaTwD">
                      <property role="3oM_SC" value="on." />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6hQteoiVDZ5" role="3cqZAp">
                  <node concept="3clFbS" id="6hQteoiVDZ6" role="3clFbx">
                    <node concept="3cpWs8" id="2dZJkfwvAQi" role="3cqZAp">
                      <node concept="3cpWsn" id="2dZJkfwvAQj" role="3cpWs9">
                        <property role="TrG5h" value="resolveInfo" />
                        <node concept="17QB3L" id="2dZJkfwvAQk" role="1tU5fm" />
                        <node concept="2OqwBi" id="2dZJkfwvAPS" role="33vP2m">
                          <node concept="2GrUjf" id="2dZJkfwvAPR" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6hQteoiVDuG" resolve="reference" />
                          </node>
                          <node concept="1FfNbt" id="2dZJkfwvAPW" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2dZJkfwvAPN" role="3cqZAp">
                      <node concept="3clFbS" id="2dZJkfwvAPO" role="3clFbx">
                        <node concept="3clFbF" id="4G_hNBG3RyV" role="3cqZAp">
                          <node concept="37vLTI" id="4G_hNBG3RyX" role="3clFbG">
                            <node concept="2YIFZM" id="7LmwlFdRJzv" role="37vLTx">
                              <ref role="1Pybhc" to="18ew:~SNodeOperations" resolve="SNodeOperations" />
                              <ref role="37wK5l" to="18ew:~SNodeOperations.getResolveInfo(org.jetbrains.mps.openapi.model.SNode)" resolve="getResolveInfo" />
                              <node concept="2OqwBi" id="7LmwlFdRJzx" role="37wK5m">
                                <node concept="2GrUjf" id="7LmwlFdRJzy" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6hQteoiVDuG" resolve="reference" />
                                </node>
                                <node concept="2ZHEkA" id="7LmwlFdRJzz" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3GM_nagTuuy" role="37vLTJ">
                              <ref role="3cqZAo" node="2dZJkfwvAQj" resolve="resolveInfo" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2dZJkfwvAPX" role="3clFbw">
                        <node concept="17RlXB" id="2dZJkfwvAQ1" role="2OqNvi" />
                        <node concept="37vLTw" id="3GM_nagT$SB" role="2Oq$k0">
                          <ref role="3cqZAo" node="2dZJkfwvAQj" resolve="resolveInfo" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6hQteoiVDZT" role="3cqZAp">
                      <node concept="2OqwBi" id="6hQteoiVDZX" role="3clFbG">
                        <node concept="2JrnkZ" id="6hQteoiVDZV" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgm8j8" role="2JrQYb">
                            <ref role="3cqZAo" node="6hQteoiVDuD" resolve="node" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6hQteoiVE01" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.ResolveInfo)" resolve="setReference" />
                          <node concept="2OqwBi" id="2mTpoiCuknO" role="37wK5m">
                            <node concept="liA8E" id="3OkcvSSBH$m" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                            </node>
                            <node concept="2GrUjf" id="2mTpoiCuk5j" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6hQteoiVDuG" resolve="reference" />
                            </node>
                          </node>
                          <node concept="2YIFZM" id="2NfIE_ZXirv" role="37wK5m">
                            <ref role="37wK5l" to="18ew:~SNodeOperations.qualifiedResolveInfo(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SModelReference,java.lang.String)" resolve="qualifiedResolveInfo" />
                            <ref role="1Pybhc" to="18ew:~SNodeOperations" resolve="SNodeOperations" />
                            <node concept="2OqwBi" id="2NfIE_ZXz9r" role="37wK5m">
                              <node concept="2GrUjf" id="2NfIE_ZXyZE" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6hQteoiVDuG" resolve="reference" />
                              </node>
                              <node concept="liA8E" id="2NfIE_ZXzyA" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2NfIE_ZX$75" role="37wK5m">
                              <node concept="37vLTw" id="2NfIE_ZXzS7" role="2Oq$k0">
                                <ref role="3cqZAo" node="6hQteoiVDYL" resolve="scopeModel" />
                              </node>
                              <node concept="liA8E" id="2NfIE_ZX$qi" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2NfIE_ZX$PR" role="37wK5m">
                              <ref role="3cqZAo" node="2dZJkfwvAQj" resolve="resolveInfo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="6hQteoiVDZe" role="3clFbw">
                    <node concept="17QLQc" id="6hQteoiVDZi" role="3uHU7w">
                      <node concept="37vLTw" id="3GM_nagTAMR" role="3uHU7B">
                        <ref role="3cqZAo" node="6hQteoiVDYL" resolve="scopeModel" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTrWP" role="3uHU7w">
                        <ref role="3cqZAo" node="6hQteoiVDMJ" resolve="targetModel" />
                      </node>
                    </node>
                    <node concept="3y3z36" id="6hQteoiVDZa" role="3uHU7B">
                      <node concept="37vLTw" id="3GM_nagTsQn" role="3uHU7B">
                        <ref role="3cqZAo" node="6hQteoiVDYL" resolve="scopeModel" />
                      </node>
                      <node concept="10Nm6u" id="6hQteoiVDZd" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6hQteoiVDuC" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7dwGA3a9xu6" role="jymVt">
      <property role="TrG5h" value="transformNodeToProperVariableReference" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="6hQteoiV_$u" role="3clF45" />
      <node concept="37vLTG" id="6hQteoiV_$A" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6hQteoiV_$B" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IYmOvnZDDl" role="3clF46">
        <property role="TrG5h" value="containerModel" />
        <node concept="H_c77" id="IYmOvnZDEC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6hQteoiV_$w" role="3clF47">
        <node concept="3clFbJ" id="6hQteoiV_$C" role="3cqZAp">
          <node concept="3clFbC" id="6hQteoiV_$T" role="3clFbw">
            <node concept="2OqwBi" id="6hQteoiV_$O" role="3uHU7B">
              <node concept="2OqwBi" id="6hQteoiV_$G" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm6aT" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hQteoiV_$A" resolve="node" />
                </node>
                <node concept="2z74zc" id="6hQteoiV_$N" role="2OqNvi" />
              </node>
              <node concept="34oBXx" id="6hQteoiV_$S" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="6hQteoiV_$W" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="6hQteoiV_$E" role="3clFbx">
            <node concept="3cpWs8" id="6hQteoiV__o" role="3cqZAp">
              <node concept="3cpWsn" id="6hQteoiV__p" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="2z4iKi" id="6hQteoiV__q" role="1tU5fm" />
                <node concept="2OqwBi" id="6hQteoiV__r" role="33vP2m">
                  <node concept="2OqwBi" id="6hQteoiV__s" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgm2s1" role="2Oq$k0">
                      <ref role="3cqZAo" node="6hQteoiV_$A" resolve="node" />
                    </node>
                    <node concept="2z74zc" id="6hQteoiV__u" role="2OqNvi" />
                  </node>
                  <node concept="1uHKPH" id="6hQteoiV__v" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6hQteoiV__z" role="3cqZAp">
              <node concept="3clFbS" id="6hQteoiV__$" role="3clFbx">
                <node concept="3cpWs8" id="6hQteoiV_A6" role="3cqZAp">
                  <node concept="3cpWsn" id="6hQteoiV_A7" role="3cpWs9">
                    <property role="TrG5h" value="matchingVar" />
                    <node concept="1rXfSq" id="7dwGA3aaGMD" role="33vP2m">
                      <ref role="37wK5l" node="7dwGA3a9C6X" resolve="findVariable" />
                      <node concept="37vLTw" id="7dwGA3aaGSe" role="37wK5m">
                        <ref role="3cqZAo" node="6hQteoiV__p" resolve="reference" />
                      </node>
                    </node>
                    <node concept="3Tqbb2" id="6hQteoiV_A8" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbJ" id="5hRgzFbdjHa" role="3cqZAp">
                  <node concept="3clFbS" id="5hRgzFbdjHb" role="3clFbx">
                    <node concept="3clFbF" id="6hQteoiVDsU" role="3cqZAp">
                      <node concept="2OqwBi" id="6hQteoiVDsW" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgm_vb" role="2Oq$k0">
                          <ref role="3cqZAo" node="6hQteoiV_$A" resolve="node" />
                        </node>
                        <node concept="1P9Npp" id="6hQteoiVDt0" role="2OqNvi">
                          <node concept="1rXfSq" id="7dwGA3aaH3$" role="1P9ThW">
                            <ref role="37wK5l" node="7dwGA3a9D5X" resolve="createVariableReference" />
                            <node concept="37vLTw" id="7dwGA3aaHbh" role="37wK5m">
                              <ref role="3cqZAo" node="6hQteoiV_A7" resolve="matchingVar" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5hRgzFbdjHf" role="3clFbw">
                    <node concept="10Nm6u" id="5hRgzFbdjHi" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTx_K" role="3uHU7B">
                      <ref role="3cqZAo" node="6hQteoiV_A7" resolve="matchingVar" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6hQteoiV__Q" role="3clFbw">
                <node concept="17QLQc" id="IYmOvo059M" role="3uHU7B">
                  <node concept="37vLTw" id="IYmOvo05br" role="3uHU7w">
                    <ref role="3cqZAo" node="IYmOvnZDDl" resolve="containerModel" />
                  </node>
                  <node concept="2OqwBi" id="6hQteoiV__H" role="3uHU7B">
                    <node concept="2OqwBi" id="6hQteoiV__C" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTw9V" role="2Oq$k0">
                        <ref role="3cqZAo" node="6hQteoiV__p" resolve="reference" />
                      </node>
                      <node concept="2ZHEkA" id="6hQteoiV__G" role="2OqNvi" />
                    </node>
                    <node concept="I4A8Y" id="6hQteoiV__L" role="2OqNvi" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6hQteoiV__Z" role="3uHU7w">
                  <node concept="2OqwBi" id="6hQteoiV__U" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTBa0" role="2Oq$k0">
                      <ref role="3cqZAo" node="6hQteoiV__p" resolve="reference" />
                    </node>
                    <node concept="2ZHEkA" id="6hQteoiV__Y" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="6hQteoiV_A3" role="2OqNvi">
                    <node concept="chp4Y" id="6hQteoiV_A5" role="cj9EA">
                      <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6hQteoiV_$_" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7dwGA3a9yYk" role="jymVt">
      <property role="TrG5h" value="transformNode" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="6hQteoiVuLW" role="3clF45" />
      <node concept="37vLTG" id="6hQteoiVuMb" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6hQteoiVuMc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IYmOvnZmoK" role="3clF46">
        <property role="TrG5h" value="containerModel" />
        <node concept="H_c77" id="IYmOvnZEqS" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6hQteoiVuLY" role="3clF47">
        <node concept="3SKdUt" id="6hQteoiVuNL" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXocDn" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXocDo" role="1PaTwD">
              <property role="3oM_SC" value="try" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDp" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDq" role="1PaTwD">
              <property role="3oM_SC" value="resolve" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDr" role="1PaTwD">
              <property role="3oM_SC" value="variables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6hQteoiVDtb" role="3cqZAp">
          <node concept="2OqwBi" id="6hQteoiVDtG" role="3clFbG">
            <node concept="2OqwBi" id="6hQteoiVDtm" role="2Oq$k0">
              <node concept="2OqwBi" id="6hQteoiVDtd" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxglN3g" role="2Oq$k0">
                  <ref role="3cqZAo" node="6hQteoiVuMb" resolve="node" />
                </node>
                <node concept="2Rf3mk" id="6hQteoiVDth" role="2OqNvi" />
              </node>
              <node concept="3zZkjj" id="6hQteoiVDtq" role="2OqNvi">
                <node concept="1bVj0M" id="6hQteoiVDtr" role="23t8la">
                  <node concept="3clFbS" id="6hQteoiVDts" role="1bW5cS">
                    <node concept="3clFbF" id="6hQteoiVDtv" role="3cqZAp">
                      <node concept="2OqwBi" id="6hQteoiVDtA" role="3clFbG">
                        <node concept="2OqwBi" id="6hQteoiVDtx" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgmFcX" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0Xhw" resolve="it" />
                          </node>
                          <node concept="32TBzR" id="6hQteoiVDt_" role="2OqNvi" />
                        </node>
                        <node concept="1v1jN8" id="6hQteoiVDtE" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Xhw" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Xhx" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="6hQteoiVDtK" role="2OqNvi">
              <node concept="1bVj0M" id="6hQteoiVDtL" role="23t8la">
                <node concept="3clFbS" id="6hQteoiVDtM" role="1bW5cS">
                  <node concept="3clFbF" id="IYmOvo091L" role="3cqZAp">
                    <node concept="1rXfSq" id="IYmOvo091K" role="3clFbG">
                      <ref role="37wK5l" node="7dwGA3a9xu6" resolve="transformNodeToProperVariableReference" />
                      <node concept="37vLTw" id="2$2GTfm4g9" role="37wK5m">
                        <ref role="3cqZAo" node="5W7E4fV0Xhy" resolve="it" />
                      </node>
                      <node concept="37vLTw" id="IYmOvo09h$" role="37wK5m">
                        <ref role="3cqZAo" node="IYmOvnZmoK" resolve="containerModel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0Xhy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0Xhz" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6hQteoiVuNI" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXocDs" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXocDt" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDu" role="1PaTwD">
              <property role="3oM_SC" value="links" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDv" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDw" role="1PaTwD">
              <property role="3oM_SC" value="subs" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDx" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDy" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocDz" role="1PaTwD">
              <property role="3oM_SC" value="debugger" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocD$" role="1PaTwD">
              <property role="3oM_SC" value="stubs" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5hRgzFbd2sG" role="3cqZAp">
          <node concept="2GrKxI" id="5hRgzFbd2sH" role="2Gsz3X">
            <property role="TrG5h" value="d" />
          </node>
          <node concept="2OqwBi" id="5hRgzFbd2sL" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxgm62W" role="2Oq$k0">
              <ref role="3cqZAo" node="6hQteoiVuMb" resolve="node" />
            </node>
            <node concept="2Rf3mk" id="5hRgzFbd2sP" role="2OqNvi">
              <node concept="1xIGOp" id="5hRgzFbd2t0" role="1xVPHs" />
            </node>
          </node>
          <node concept="3clFbS" id="5hRgzFbd2sJ" role="2LFqv$">
            <node concept="3clFbF" id="IYmOvnZPbQ" role="3cqZAp">
              <node concept="1rXfSq" id="IYmOvnZPbP" role="3clFbG">
                <ref role="37wK5l" node="7dwGA3a9ref" resolve="replaceStubReferences" />
                <node concept="2GrUjf" id="IYmOvnZPe6" role="37wK5m">
                  <ref role="2Gs0qQ" node="5hRgzFbd2sH" resolve="d" />
                </node>
                <node concept="37vLTw" id="IYmOvnZPnr" role="37wK5m">
                  <ref role="3cqZAo" node="IYmOvnZmoK" resolve="containerModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6hQteoiVuM3" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="7GZZbkP$rA">
    <property role="TrG5h" value="Properties" />
    <node concept="Wx3nA" id="7GZZbkP_jz" role="jymVt">
      <property role="TrG5h" value="EVALUATOR_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="7GZZbkP_j$" role="1tU5fm" />
      <node concept="Xl_RD" id="7GZZbkP_j_" role="33vP2m">
        <property role="Xl_RC" value="EvaluatorInstance" />
      </node>
      <node concept="3Tm1VV" id="7GZZbkP_jA" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7GZZbkP$rB" role="1B3o_S" />
  </node>
</model>

