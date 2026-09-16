<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a807e16c-6905-4da7-b0d7-e84d28559259(jetbrains.mps.ide.tools.todo)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="ngmm" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="dsdj" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.treeview(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="mte5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model.scopes(MPS.Core/)" />
    <import index="ngmn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.view(MPS.Core/)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="z3o9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model.holders(MPS.Core/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="gkle" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.findusages.view.treeholder.tree(MPS.Platform/)" />
    <import index="xnls" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.icons(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="b2d5" ref="r:1a2b3027-99d2-4946-917b-f185130ac75d(jetbrains.mps.ide.findusages.findalgorithm.finders)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888677711" name="jetbrains.mps.lang.plugin.structure.DisposeBlock" flags="in" index="2xpOpl" />
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="43535111852086466" name="isAvailableOnStartup" index="tEvSQ" />
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469615" name="toolDisposeBlock" index="uR5co" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ngI" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5472444609684539882" name="jetbrains.mps.lang.smodel.structure.SConceptTypeLiteral" flags="ig" index="2uNoUa">
        <reference id="5472444609684539883" name="conceptDeclaraton" index="2uNoUb" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
  </registry>
  <node concept="sEfby" id="4HeMkQiYObL">
    <property role="TrG5h" value="TodoViewer" />
    <property role="2XNbzY" value="ToDo" />
    <property role="3GE5qa" value="" />
    <property role="tEvSQ" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGB1" role="1nVCmq">
      <node concept="10M0yZ" id="6XsdSpiw0CW" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.ToolWindowTodo" resolve="ToolWindowTodo" />
      </node>
    </node>
    <node concept="2UmK3q" id="4HeMkQiYObM" role="2Um5zG">
      <node concept="3clFbS" id="4HeMkQiYObN" role="2VODD2">
        <node concept="3cpWs6" id="4HeMkQiYObO" role="3cqZAp">
          <node concept="2OqwBi" id="4HeMkQiYObP" role="3cqZAk">
            <node concept="2WthIp" id="4HeMkQiYObQ" role="2Oq$k0" />
            <node concept="2BZ7hE" id="4HeMkQiYObR" role="2OqNvi">
              <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="4HeMkQiYObS" role="2XNbBz">
      <property role="TrG5h" value="myComponent" />
      <node concept="3Tm6S6" id="4HeMkQiYObT" role="1B3o_S" />
      <node concept="3uibUv" id="4HeMkQiYObU" role="1tU5fm">
        <ref role="3uigEE" node="4HeMkQiYPXp" resolve="TodoViewer" />
      </node>
    </node>
    <node concept="2xpIHi" id="4HeMkQiYObV" role="uR5cp">
      <node concept="3clFbS" id="4HeMkQiYObW" role="2VODD2">
        <node concept="3clFbF" id="4HeMkQiYObX" role="3cqZAp">
          <node concept="37vLTI" id="4HeMkQiYObY" role="3clFbG">
            <node concept="2OqwBi" id="4HeMkQiYObZ" role="37vLTJ">
              <node concept="2WthIp" id="4HeMkQiYOc0" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4HeMkQiYOc1" role="2OqNvi">
                <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
              </node>
            </node>
            <node concept="2ShNRf" id="4HeMkQiYOc2" role="37vLTx">
              <node concept="1pGfFk" id="4HeMkQiYOc3" role="2ShVmc">
                <ref role="37wK5l" node="4HeMkQiYPZB" resolve="TodoViewer" />
                <node concept="2YIFZM" id="6J69$P31Fw6" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProjectOrFail(com.intellij.openapi.project.Project)" resolve="fromIdeaProjectOrFail" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2xqhHp" id="6J69$P31FAD" role="37wK5m" />
                </node>
                <node concept="2WthIp" id="4HeMkQiYOc8" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="4HeMkQiYOc9" role="uR5co">
      <node concept="3clFbS" id="4HeMkQiYOca" role="2VODD2">
        <node concept="3clFbJ" id="1$YBF88SoEs" role="3cqZAp">
          <node concept="3y3z36" id="1$YBF88SoEv" role="3clFbw">
            <node concept="2OqwBi" id="1$YBF88SoEy" role="3uHU7B">
              <node concept="2WthIp" id="1$YBF88SoE_" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1$YBF88SoEA" role="2OqNvi">
                <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
              </node>
            </node>
            <node concept="10Nm6u" id="1$YBF88SoEB" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1$YBF88SoEC" role="3clFbx">
            <node concept="3cpWs8" id="4HeMkQiYOcb" role="3cqZAp">
              <node concept="3cpWsn" id="4HeMkQiYOcc" role="3cpWs9">
                <property role="TrG5h" value="container" />
                <node concept="3uibUv" id="4HeMkQiYOcd" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                </node>
                <node concept="2OqwBi" id="4HeMkQiYOce" role="33vP2m">
                  <node concept="2OqwBi" id="4HeMkQiYOcf" role="2Oq$k0">
                    <node concept="2WthIp" id="4HeMkQiYOcg" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="4HeMkQiYOch" role="2OqNvi">
                      <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4HeMkQiYOci" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4HeMkQiYOcj" role="3cqZAp">
              <node concept="3clFbS" id="4HeMkQiYOck" role="3clFbx">
                <node concept="3clFbF" id="4HeMkQiYOcl" role="3cqZAp">
                  <node concept="2OqwBi" id="4HeMkQiYOcm" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTuAh" role="2Oq$k0">
                      <ref role="3cqZAo" node="4HeMkQiYOcc" resolve="container" />
                    </node>
                    <node concept="liA8E" id="4HeMkQiYOco" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                      <node concept="2OqwBi" id="4HeMkQiYOcp" role="37wK5m">
                        <node concept="2WthIp" id="4HeMkQiYOcq" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="4HeMkQiYOcr" role="2OqNvi">
                          <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4HeMkQiYOcs" role="3clFbw">
                <node concept="10Nm6u" id="4HeMkQiYOct" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTxWy" role="3uHU7B">
                  <ref role="3cqZAo" node="4HeMkQiYOcc" resolve="container" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4HeMkQiYOcv" role="3cqZAp">
              <node concept="2OqwBi" id="4HeMkQiYOcw" role="3clFbG">
                <node concept="2OqwBi" id="4HeMkQiYOcx" role="2Oq$k0">
                  <node concept="2WthIp" id="4HeMkQiYOcy" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="4HeMkQiYOcz" role="2OqNvi">
                    <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="4HeMkQiYOc$" role="2OqNvi">
                  <ref role="37wK5l" node="4HeMkQiYQ0r" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4HeMkQiYOc_" role="3cqZAp">
              <node concept="37vLTI" id="4HeMkQiYOcA" role="3clFbG">
                <node concept="10Nm6u" id="4HeMkQiYOcB" role="37vLTx" />
                <node concept="2OqwBi" id="4HeMkQiYOcC" role="37vLTJ">
                  <node concept="2WthIp" id="4HeMkQiYOcD" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="4HeMkQiYOcE" role="2OqNvi">
                    <ref role="2WH_rO" node="4HeMkQiYObS" resolve="myComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4HeMkQiYPXp">
    <property role="TrG5h" value="TodoViewer" />
    <property role="3GE5qa" value="" />
    <node concept="Wx3nA" id="4HeMkQiYPZu" role="jymVt">
      <property role="TrG5h" value="TODO_ICON" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4HeMkQiYPZw" role="1B3o_S" />
      <node concept="3uibUv" id="4HeMkQiYPZv" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="10M0yZ" id="5kMvUsGAE6F" role="33vP2m">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.ToolWindowTodo" resolve="ToolWindowTodo" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
      </node>
    </node>
    <node concept="312cEg" id="4HeMkQiYPZl" role="jymVt">
      <property role="TrG5h" value="myUsagesView" />
      <node concept="3Tm6S6" id="4HeMkQiYPZn" role="1B3o_S" />
      <node concept="3uibUv" id="4HeMkQiYPZm" role="1tU5fm">
        <ref role="3uigEE" to="ngmm:~UsagesView" resolve="UsagesView" />
      </node>
    </node>
    <node concept="312cEg" id="4HeMkQiYPZo" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="4HeMkQiYPZp" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="4HeMkQiYPZq" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4HeMkQiYPZr" role="jymVt">
      <property role="TrG5h" value="myTool" />
      <node concept="1xUVSX" id="4HeMkQiYPZt" role="1tU5fm">
        <ref role="1xYkEM" node="4HeMkQiYObL" resolve="TodoViewer" />
      </node>
      <node concept="3Tm6S6" id="4HeMkQiYPZs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4SCpAJX1KVC" role="jymVt" />
    <node concept="3clFbW" id="4HeMkQiYPZB" role="jymVt">
      <node concept="3clFbS" id="4HeMkQiYPZI" role="3clF47">
        <node concept="3clFbF" id="4HeMkQiYPZJ" role="3cqZAp">
          <node concept="37vLTI" id="4HeMkQiYPZK" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgll8j" role="37vLTx">
              <ref role="3cqZAo" node="4HeMkQiYPZG" resolve="tool" />
            </node>
            <node concept="2OqwBi" id="4HeMkQiYPZL" role="37vLTJ">
              <node concept="2OwXpG" id="4HeMkQiYPZN" role="2OqNvi">
                <ref role="2Oxat5" node="4HeMkQiYPZr" resolve="myTool" />
              </node>
              <node concept="Xjq3P" id="4HeMkQiYPZM" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYPZP" role="3cqZAp">
          <node concept="37vLTI" id="4HeMkQiYPZQ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumP$" role="37vLTJ">
              <ref role="3cqZAo" node="4HeMkQiYPZo" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgl9hB" role="37vLTx">
              <ref role="3cqZAo" node="4HeMkQiYPZE" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYPZT" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzkbZ" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="4HeMkQiYPZV" role="37wK5m">
              <node concept="1pGfFk" id="4HeMkQiYPZW" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4HeMkQiYPZX" role="3cqZAp">
          <node concept="3cpWsn" id="4HeMkQiYPZY" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4HeMkQiYPZZ" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="4HeMkQiYQ00" role="33vP2m">
              <node concept="1pGfFk" id="4HeMkQiYQ01" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,int)" resolve="JLabel" />
                <node concept="Xl_RD" id="4HeMkQiYQ02" role="37wK5m">
                  <property role="Xl_RC" value="Click to find TODOs" />
                </node>
                <node concept="10M0yZ" id="4HeMkQiYQ03" role="37wK5m">
                  <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                  <ref role="3cqZAo" to="dxuu:~SwingConstants.CENTER" resolve="CENTER" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ04" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz3_2" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="37vLTw" id="3GM_nagTyAG" role="37wK5m">
              <ref role="3cqZAo" node="4HeMkQiYPZY" resolve="label" />
            </node>
            <node concept="10M0yZ" id="4HeMkQiYQ07" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ08" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYZo" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
            <node concept="2ShNRf" id="4HeMkQiYQ0a" role="37wK5m">
              <node concept="YeOm9" id="4HeMkQiYQ0b" role="2ShVmc">
                <node concept="1Y3b0j" id="4HeMkQiYQ0c" role="YeSDq">
                  <property role="TrG5h" value="" />
                  <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                  <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                  <node concept="3clFb_" id="4HeMkQiYQ0d" role="jymVt">
                    <property role="TrG5h" value="mouseClicked" />
                    <node concept="37vLTG" id="4HeMkQiYQ0g" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="4HeMkQiYQ0h" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4HeMkQiYQ0i" role="3clF47">
                      <node concept="3clFbF" id="4HeMkQiYQ0j" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyAR2N" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener)" resolve="removeMouseListener" />
                          <node concept="Xjq3P" id="4HeMkQiYQ0l" role="37wK5m" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="4HeMkQiYQ0m" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyAR25" role="3clFbG">
                          <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                          <node concept="37vLTw" id="3GM_nagTw4f" role="37wK5m">
                            <ref role="3cqZAo" node="4HeMkQiYPZY" resolve="label" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4HeMkQiYQ0p" role="3cqZAp">
                        <node concept="1rXfSq" id="4hiugqyAR2R" role="3clFbG">
                          <ref role="37wK5l" node="4HeMkQiYQ0Q" resolve="refresh" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="4HeMkQiYQ0e" role="1B3o_S" />
                    <node concept="3cqZAl" id="4HeMkQiYQ0f" role="3clF45" />
                    <node concept="2AHcQZ" id="3tYsUK_S45L" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4HeMkQiYPZE" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4HeMkQiYPZF" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="4HeMkQiYPZG" role="3clF46">
        <property role="TrG5h" value="tool" />
        <node concept="1xUVSX" id="4HeMkQiYPZH" role="1tU5fm">
          <ref role="1xYkEM" node="4HeMkQiYObL" resolve="TodoViewer" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4HeMkQiYPZC" role="1B3o_S" />
      <node concept="3cqZAl" id="4HeMkQiYPZD" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4SCpAJX1MO1" role="jymVt" />
    <node concept="3clFb_" id="4HeMkQiYQ0r" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4HeMkQiYQ0t" role="3clF45" />
      <node concept="3Tm1VV" id="4HeMkQiYQ0s" role="1B3o_S" />
      <node concept="3clFbS" id="4HeMkQiYQ0u" role="3clF47">
        <node concept="3clFbJ" id="4HeMkQiYQ0v" role="3cqZAp">
          <node concept="3clFbS" id="4HeMkQiYQ0z" role="3clFbx">
            <node concept="3clFbF" id="4HeMkQiYQ0$" role="3cqZAp">
              <node concept="2OqwBi" id="4HeMkQiYQ0_" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuVuQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
                </node>
                <node concept="liA8E" id="4HeMkQiYQ0B" role="2OqNvi">
                  <ref role="37wK5l" to="ngmm:~UsagesView.dispose()" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4HeMkQiYQ0w" role="3clFbw">
            <node concept="10Nm6u" id="4HeMkQiYQ0y" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuqQs" role="3uHU7B">
              <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4SCpAJX1OqW" role="jymVt" />
    <node concept="3clFb_" id="4HeMkQiYQ0C" role="jymVt">
      <property role="TrG5h" value="getTool" />
      <node concept="3Tm6S6" id="4HeMkQiYQ0E" role="1B3o_S" />
      <node concept="3clFbS" id="4HeMkQiYQ0F" role="3clF47">
        <node concept="3cpWs6" id="4HeMkQiYQ0G" role="3cqZAp">
          <node concept="2OqwBi" id="4HeMkQiYQ0H" role="3cqZAk">
            <node concept="Xjq3P" id="4HeMkQiYQ0I" role="2Oq$k0" />
            <node concept="2OwXpG" id="4HeMkQiYQ0J" role="2OqNvi">
              <ref role="2Oxat5" node="4HeMkQiYPZr" resolve="myTool" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1xUVSX" id="4SCpAJX2ame" role="3clF45">
        <ref role="1xYkEM" node="4HeMkQiYObL" resolve="TodoViewer" />
      </node>
    </node>
    <node concept="2tJIrI" id="4SCpAJX1Q1t" role="jymVt" />
    <node concept="3clFb_" id="4HeMkQiYQ0K" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3clFbS" id="4HeMkQiYQ0N" role="3clF47">
        <node concept="3cpWs6" id="4HeMkQiYQ0O" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuUeF" role="3cqZAk">
            <ref role="3cqZAo" node="4HeMkQiYPZo" resolve="myProject" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4HeMkQiYQ0M" role="1B3o_S" />
      <node concept="3uibUv" id="4HeMkQiYQ0L" role="3clF45">
        <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="4SCpAJX1RCK" role="jymVt" />
    <node concept="3clFb_" id="4HeMkQiYQ0Q" role="jymVt">
      <property role="TrG5h" value="refresh" />
      <node concept="3Tm6S6" id="4HeMkQiYQ0R" role="1B3o_S" />
      <node concept="3clFbS" id="4HeMkQiYQ0T" role="3clF47">
        <node concept="3clFbF" id="59SCzNX_oqf" role="3cqZAp">
          <node concept="2YIFZM" id="59SCzNX_p8Q" role="3clFbG">
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ0X" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8sP" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.removeAll()" resolve="removeAll" />
          </node>
        </node>
        <node concept="3cpWs8" id="4HeMkQiYQ0Z" role="3cqZAp">
          <node concept="3cpWsn" id="4HeMkQiYQ10" role="3cpWs9">
            <property role="TrG5h" value="viewOptions" />
            <node concept="3uibUv" id="4HeMkQiYQ11" role="1tU5fm">
              <ref role="3uigEE" to="dsdj:~ViewOptions" resolve="ViewOptions" />
            </node>
            <node concept="2ShNRf" id="4HeMkQiYQ12" role="33vP2m">
              <node concept="1pGfFk" id="4HeMkQiYQ13" role="2ShVmc">
                <ref role="37wK5l" to="dsdj:~ViewOptions.&lt;init&gt;(boolean,boolean,boolean,boolean,boolean)" resolve="ViewOptions" />
                <node concept="3clFbT" id="4HeMkQiYQ14" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="4HeMkQiYQ15" role="37wK5m" />
                <node concept="3clFbT" id="4HeMkQiYQ16" role="37wK5m" />
                <node concept="3clFbT" id="4HeMkQiYQ17" role="37wK5m" />
                <node concept="3clFbT" id="4HeMkQiYQ18" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4HeMkQiYQ19" role="3cqZAp">
          <node concept="3cpWsn" id="4HeMkQiYQ1a" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="2OqwBi" id="4WqJQ8FEoBg" role="33vP2m">
              <node concept="1eOMI4" id="4WqJQ8FEogO" role="2Oq$k0">
                <node concept="10QFUN" id="4WqJQ8FEnvE" role="1eOMHV">
                  <node concept="3uibUv" id="4WqJQ8FEo50" role="10QFUM">
                    <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                  </node>
                  <node concept="1rXfSq" id="4WqJQ8FEntg" role="10QFUP">
                    <ref role="37wK5l" node="4HeMkQiYQ0K" resolve="getProject" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4WqJQ8FEq6C" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="3uibUv" id="4HeMkQiYQ1b" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ1g" role="3cqZAp">
          <node concept="37vLTI" id="4HeMkQiYQ1h" role="3clFbG">
            <node concept="2ShNRf" id="4HeMkQiYQ1j" role="37vLTx">
              <node concept="1pGfFk" id="3pNk_u$saPA" role="2ShVmc">
                <ref role="37wK5l" to="ngmm:~UsagesView.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions)" resolve="UsagesView" />
                <node concept="37vLTw" id="3GM_nagTtQm" role="37wK5m">
                  <ref role="3cqZAo" node="4HeMkQiYQ1a" resolve="project" />
                </node>
                <node concept="37vLTw" id="3GM_nagTue0" role="37wK5m">
                  <ref role="3cqZAo" node="4HeMkQiYQ10" resolve="viewOptions" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuPgQ" role="37vLTJ">
              <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3pNk_u$sjn8" role="3cqZAp">
          <node concept="3cpWsn" id="3pNk_u$sjn9" role="3cpWs9">
            <property role="TrG5h" value="searchTodoAction" />
            <node concept="3uibUv" id="3pNk_u$sjn5" role="1tU5fm">
              <ref role="3uigEE" to="ngmm:~UsagesView$RerunAction" resolve="UsagesView.RerunAction" />
            </node>
            <node concept="2ShNRf" id="3pNk_u$sjna" role="33vP2m">
              <node concept="1pGfFk" id="3pNk_u$sjnb" role="2ShVmc">
                <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.&lt;init&gt;(jetbrains.mps.ide.findusages.view.UsagesView,java.lang.String)" resolve="UsagesView.RerunAction" />
                <node concept="37vLTw" id="3pNk_u$sjnc" role="37wK5m">
                  <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
                </node>
                <node concept="Xl_RD" id="3pNk_u$sjnd" role="37wK5m">
                  <property role="Xl_RC" value="Search again" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$rJKH" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$rKaM" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$rJKF" role="2Oq$k0">
              <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
            </node>
            <node concept="liA8E" id="3pNk_u$rKR2" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setActions(com.intellij.openapi.actionSystem.AnAction...)" resolve="setActions" />
              <node concept="37vLTw" id="3pNk_u$sjne" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$sjn9" resolve="searchTodoAction" />
              </node>
              <node concept="2ShNRf" id="3pNk_u$s0jc" role="37wK5m">
                <node concept="1pGfFk" id="3pNk_u$s2jc" role="2ShVmc">
                  <ref role="37wK5l" to="ngmm:~UsagesView$RebuildAction.&lt;init&gt;(jetbrains.mps.ide.findusages.view.UsagesView)" resolve="UsagesView.RebuildAction" />
                  <node concept="37vLTw" id="3pNk_u$s2sL" role="37wK5m">
                    <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="6Qwue3HJ1IZ" role="37wK5m">
                <node concept="YeOm9" id="6Qwue3HJ33P" role="2ShVmc">
                  <node concept="1Y3b0j" id="6Qwue3HJ33S" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="AnAction" />
                    <ref role="1Y3XeK" to="qkt:~AnAction" resolve="AnAction" />
                    <node concept="3Tm1VV" id="6Qwue3HJ33T" role="1B3o_S" />
                    <node concept="3clFb_" id="6Qwue3HJ33U" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="actionPerformed" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="6Qwue3HJ33V" role="1B3o_S" />
                      <node concept="3cqZAl" id="6Qwue3HJ33X" role="3clF45" />
                      <node concept="37vLTG" id="6Qwue3HJ33Y" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="6Qwue3HJ33Z" role="1tU5fm">
                          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                        </node>
                        <node concept="2AHcQZ" id="6Qwue3HJ340" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6Qwue3HJ341" role="3clF47">
                        <node concept="3clFbF" id="4HeMkQiYQ1r" role="3cqZAp">
                          <node concept="2OqwBi" id="4HeMkQiYQ1s" role="3clFbG">
                            <node concept="1rXfSq" id="4hiugqyyJ2q" role="2Oq$k0">
                              <ref role="37wK5l" node="4HeMkQiYQ0C" resolve="getTool" />
                            </node>
                            <node concept="liA8E" id="4HeMkQiYQ1u" role="2OqNvi">
                              <ref role="37wK5l" to="71xd:~BaseTool.makeUnavailableLater()" resolve="makeUnavailableLater" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6Qwue3HJ5YU" role="37wK5m">
                      <property role="Xl_RC" value="Close" />
                    </node>
                    <node concept="Xl_RD" id="6Qwue3HJ7wh" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="10M0yZ" id="6Qwue3HJ8v8" role="37wK5m">
                      <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
                      <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Cancel" resolve="Cancel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="$51S7iuS4x" role="37wK5m">
                <node concept="2YIFZM" id="$51S7iuRXI" role="2Oq$k0">
                  <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
                  <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="$51S7iuSit" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                  <node concept="10M0yZ" id="$51S7ivEuf" role="37wK5m">
                    <ref role="3cqZAo" to="qkt:~IdeActions.ACTION_PIN_ACTIVE_TAB" resolve="ACTION_PIN_ACTIVE_TAB" />
                    <ref role="1PxDUh" to="qkt:~IdeActions" resolve="IdeActions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ1w" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9$j" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
            <node concept="2OqwBi" id="4HeMkQiYQ1y" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxeuwxF" role="2Oq$k0">
                <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
              </node>
              <node concept="liA8E" id="4HeMkQiYQ1$" role="2OqNvi">
                <ref role="37wK5l" to="ngmm:~UsagesView.getComponent()" resolve="getComponent" />
              </node>
            </node>
            <node concept="10M0yZ" id="4HeMkQiYQ1_" role="37wK5m">
              <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2fHgbadLc5b" role="3cqZAp">
          <node concept="3cpWsn" id="2fHgbadLc5c" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="2fHgbadLc59" role="1tU5fm">
              <ref role="3uigEE" to="mte5:~ProjectScope" resolve="ProjectScope" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="2fHgbadLGEf" role="3cqZAp">
          <node concept="1QHqEC" id="2fHgbadLGEh" role="1QHqEI">
            <node concept="3clFbS" id="2fHgbadLGEj" role="1bW5cS">
              <node concept="3clFbF" id="2fHgbadLcLv" role="3cqZAp">
                <node concept="37vLTI" id="2fHgbadLcLx" role="3clFbG">
                  <node concept="2ShNRf" id="2fHgbadLc5d" role="37vLTx">
                    <node concept="1pGfFk" id="2fHgbadLc5e" role="2ShVmc">
                      <ref role="37wK5l" to="mte5:~ProjectScope.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="ProjectScope" />
                      <node concept="37vLTw" id="2fHgbadLc5f" role="37wK5m">
                        <ref role="3cqZAo" node="4HeMkQiYPZo" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2fHgbadLcL_" role="37vLTJ">
                    <ref role="3cqZAo" node="2fHgbadLc5c" resolve="scope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2fHgbadLJrK" role="ukAjM">
            <node concept="37vLTw" id="2fHgbadLIr9" role="2Oq$k0">
              <ref role="3cqZAo" node="4HeMkQiYPZo" resolve="myProject" />
            </node>
            <node concept="liA8E" id="2fHgbadLK9i" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pNk_u$skEd" role="3cqZAp">
          <node concept="2OqwBi" id="3pNk_u$sl1s" role="3clFbG">
            <node concept="37vLTw" id="3pNk_u$skEb" role="2Oq$k0">
              <ref role="3cqZAo" node="3pNk_u$sjn9" resolve="searchTodoAction" />
            </node>
            <node concept="liA8E" id="3pNk_u$smEG" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView$RerunAction.setRunOptions(jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery)" resolve="setRunOptions" />
              <node concept="2YIFZM" id="4HeMkQiYQ1E" role="37wK5m">
                <ref role="1Pybhc" to="ngmn:~FindUtils" resolve="FindUtils" />
                <ref role="37wK5l" to="ngmn:~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...)" resolve="makeProvider" />
                <node concept="2ShNRf" id="4HeMkQiYQ1F" role="37wK5m">
                  <node concept="1pGfFk" id="4HeMkQiYQ1G" role="2ShVmc">
                    <ref role="37wK5l" node="58syclRv9F5" resolve="TodoFinder" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4HeMkQiYQ1H" role="37wK5m">
                <node concept="1pGfFk" id="4HeMkQiYQ1I" role="2ShVmc">
                  <ref role="37wK5l" to="9erk:~SearchQuery.&lt;init&gt;(jetbrains.mps.ide.findusages.model.holders.IHolder,org.jetbrains.mps.openapi.module.SearchScope)" resolve="SearchQuery" />
                  <node concept="2ShNRf" id="7f80zxbps2a" role="37wK5m">
                    <node concept="1pGfFk" id="7f80zxbqgQ1" role="2ShVmc">
                      <ref role="37wK5l" to="z3o9:~GenericHolder.&lt;init&gt;(java.lang.Object)" resolve="GenericHolder" />
                      <node concept="37vLTw" id="7f80zxbqibR" role="37wK5m">
                        <ref role="3cqZAo" node="4HeMkQiYPZo" resolve="myProject" />
                      </node>
                      <node concept="3uibUv" id="7f80zxbqlY0" role="1pMfVU">
                        <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2fHgbadLc5g" role="37wK5m">
                    <ref role="3cqZAo" node="2fHgbadLc5c" resolve="scope" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ1R" role="3cqZAp">
          <node concept="2OqwBi" id="4HeMkQiYQ1S" role="3clFbG">
            <node concept="liA8E" id="4HeMkQiYQ1U" role="2OqNvi">
              <ref role="37wK5l" to="ngmm:~UsagesView.setCustomNodeRepresentator(jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator)" resolve="setCustomNodeRepresentator" />
              <node concept="2ShNRf" id="4HeMkQiYQ1V" role="37wK5m">
                <node concept="1pGfFk" id="4HeMkQiYQ1W" role="2ShVmc">
                  <ref role="37wK5l" node="4HeMkQiYPXw" resolve="TodoViewer.MyNodeRepresentator" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuCtn" role="2Oq$k0">
              <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7CEWnxouV4R" role="3cqZAp">
          <node concept="3cpWsn" id="7CEWnxouV4S" role="3cpWs9">
            <property role="TrG5h" value="dataContext" />
            <node concept="3uibUv" id="7CEWnxouU_k" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
            </node>
            <node concept="2OqwBi" id="7CEWnxouV4T" role="33vP2m">
              <node concept="2YIFZM" id="7CEWnxouV4U" role="2Oq$k0">
                <ref role="37wK5l" to="ddhc:~DataManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
              </node>
              <node concept="liA8E" id="7CEWnxouV4V" role="2OqNvi">
                <ref role="37wK5l" to="ddhc:~DataManager.getDataContext(java.awt.Component)" resolve="getDataContext" />
                <node concept="2OqwBi" id="7CEWnxouV4W" role="37wK5m">
                  <node concept="37vLTw" id="7CEWnxouV4X" role="2Oq$k0">
                    <ref role="3cqZAo" node="4HeMkQiYPZl" resolve="myUsagesView" />
                  </node>
                  <node concept="liA8E" id="7CEWnxouV4Y" role="2OqNvi">
                    <ref role="37wK5l" to="ngmm:~UsagesView.getComponent()" resolve="getComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7CEWnxov5Wy" role="3cqZAp">
          <node concept="3cpWsn" id="7CEWnxov5Wz" role="3cpWs9">
            <property role="TrG5h" value="actionEvent" />
            <node concept="3uibUv" id="7CEWnxov5sh" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
            </node>
            <node concept="2YIFZM" id="5yprode8nfS" role="33vP2m">
              <ref role="37wK5l" to="qkt:~AnActionEvent.createEvent(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.DataContext,com.intellij.openapi.actionSystem.Presentation,java.lang.String,com.intellij.openapi.actionSystem.ActionUiKind,java.awt.event.InputEvent)" resolve="createEvent" />
              <ref role="1Pybhc" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
              <node concept="37vLTw" id="5yprode8pOh" role="37wK5m">
                <ref role="3cqZAo" node="3pNk_u$sjn9" resolve="searchTodoAction" />
              </node>
              <node concept="37vLTw" id="5yprode8uKD" role="37wK5m">
                <ref role="3cqZAo" node="7CEWnxouV4S" resolve="dataContext" />
              </node>
              <node concept="10Nm6u" id="5yprode8Arn" role="37wK5m" />
              <node concept="10M0yZ" id="5yprode8nfU" role="37wK5m">
                <ref role="3cqZAo" to="qkt:~ActionPlaces.TODO_VIEW_TOOLBAR" resolve="TODO_VIEW_TOOLBAR" />
                <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
              </node>
              <node concept="10M0yZ" id="5yprode8F6i" role="37wK5m">
                <ref role="3cqZAo" to="qkt:~ActionUiKind.TOOLBAR" resolve="TOOLBAR" />
                <ref role="1PxDUh" to="qkt:~ActionUiKind" resolve="ActionUiKind" />
              </node>
              <node concept="10Nm6u" id="5yprode8Jk_" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5yprode8Mvj" role="3cqZAp">
          <node concept="2YIFZM" id="5yprode8TSn" role="3clFbG">
            <ref role="37wK5l" to="8rsk:~ActionUtil.performAction(com.intellij.openapi.actionSystem.AnAction,com.intellij.openapi.actionSystem.AnActionEvent)" resolve="performAction" />
            <ref role="1Pybhc" to="8rsk:~ActionUtil" resolve="ActionUtil" />
            <node concept="37vLTw" id="5yprode8Vw_" role="37wK5m">
              <ref role="3cqZAo" node="3pNk_u$sjn9" resolve="searchTodoAction" />
            </node>
            <node concept="37vLTw" id="5yprode8YAu" role="37wK5m">
              <ref role="3cqZAo" node="7CEWnxov5Wz" resolve="actionEvent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HeMkQiYQ2m" role="3cqZAp">
          <node concept="2OqwBi" id="4HeMkQiYQ2n" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyz3w6" role="2Oq$k0">
              <ref role="37wK5l" node="4HeMkQiYQ0C" resolve="getTool" />
            </node>
            <node concept="liA8E" id="4HeMkQiYQ2p" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="3clFbT" id="4HeMkQiYQ2q" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4HeMkQiYQ0S" role="3clF45" />
    </node>
    <node concept="312cEu" id="4HeMkQiYPXs" role="jymVt">
      <property role="TrG5h" value="MyNodeRepresentator" />
      <node concept="3clFbW" id="4HeMkQiYPXw" role="jymVt">
        <node concept="3clFbS" id="4HeMkQiYPXz" role="3clF47" />
        <node concept="3cqZAl" id="4HeMkQiYPXy" role="3clF45" />
        <node concept="3Tm1VV" id="4HeMkQiYPXx" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="4HeMkQiYPX$" role="jymVt">
        <property role="TrG5h" value="getPresentation" />
        <node concept="17QB3L" id="4WqJQ8FEhug" role="3clF45" />
        <node concept="2AHcQZ" id="4HeMkQiYPXN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4HeMkQiYPXD" role="3clF47">
          <node concept="3cpWs6" id="5qXHvL$41__" role="3cqZAp">
            <node concept="2OqwBi" id="5qXHvL$67lD" role="3cqZAk">
              <node concept="1PxgMI" id="5qXHvL$551C" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="5qXHvL$66DI" role="3oSUPX">
                  <ref role="cht4Q" to="tpck:3W5q5oTL9mp" resolve="IGenericComment" />
                </node>
                <node concept="37vLTw" id="5qXHvL$53Lt" role="1m5AlR">
                  <ref role="3cqZAo" node="4HeMkQiYPXB" resolve="node" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORdtB" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:fB3l80ylIb" resolve="getTextualRepresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4HeMkQiYPXB" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="4HeMkQiYPXC" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4HeMkQiYPX_" role="1B3o_S" />
        <node concept="2AHcQZ" id="3tYsUK_UBDo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4HeMkQiYPXO" role="jymVt">
        <property role="TrG5h" value="getResultsText" />
        <node concept="17QB3L" id="4WqJQ8FEiQe" role="3clF45" />
        <node concept="3clFbS" id="4HeMkQiYPXT" role="3clF47">
          <node concept="3cpWs6" id="4HeMkQiYPXU" role="3cqZAp">
            <node concept="3cpWs3" id="4HeMkQiYPXV" role="3cqZAk">
              <node concept="2YIFZM" id="4HeMkQiYPXY" role="3uHU7B">
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <ref role="37wK5l" to="18ew:~NameUtil.formatNumericalString(int,java.lang.String)" resolve="formatNumericalString" />
                <node concept="2OqwBi" id="4HeMkQiYPXZ" role="37wK5m">
                  <node concept="2OwXpG" id="4HeMkQiYPY0" role="2OqNvi">
                    <ref role="2Oxat5" to="gkle:~TextOptions.mySubresultsCount" resolve="mySubresultsCount" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm6Qu" role="2Oq$k0">
                    <ref role="3cqZAo" node="4HeMkQiYPXR" resolve="options" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4HeMkQiYPY2" role="37wK5m">
                  <property role="Xl_RC" value="TODO item" />
                </node>
              </node>
              <node concept="Xl_RD" id="4HeMkQiYPY3" role="3uHU7w">
                <property role="Xl_RC" value=" found" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4HeMkQiYPXR" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="4HeMkQiYPXS" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4HeMkQiYPXP" role="1B3o_S" />
        <node concept="2AHcQZ" id="3tYsUK_UBD5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4HeMkQiYPXt" role="1B3o_S" />
      <node concept="3clFb_" id="4HeMkQiYPY4" role="jymVt">
        <property role="TrG5h" value="getResultsIcon" />
        <node concept="3Tm1VV" id="4HeMkQiYPY5" role="1B3o_S" />
        <node concept="3uibUv" id="4HeMkQiYPY6" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3clFbS" id="4HeMkQiYPY7" role="3clF47">
          <node concept="3cpWs6" id="4HeMkQiYPY8" role="3cqZAp">
            <node concept="10M0yZ" id="4HeMkQiYPY9" role="3cqZAk">
              <ref role="1PxDUh" node="4HeMkQiYPXp" resolve="TodoViewer" />
              <ref role="3cqZAo" node="4HeMkQiYPZu" resolve="TODO_ICON" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UBD0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4HeMkQiYPYa" role="jymVt">
        <property role="TrG5h" value="getCategoryText" />
        <node concept="17QB3L" id="4WqJQ8FEjgI" role="3clF45" />
        <node concept="3clFbS" id="4HeMkQiYPYj" role="3clF47">
          <node concept="3cpWs8" id="4HeMkQiYPYk" role="3cqZAp">
            <node concept="3cpWsn" id="4HeMkQiYPYl" role="3cpWs9">
              <property role="TrG5h" value="counter" />
              <node concept="17QB3L" id="4WqJQ8FEjBc" role="1tU5fm" />
              <node concept="Xl_RD" id="4HeMkQiYPYn" role="33vP2m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4HeMkQiYPYo" role="3cqZAp">
            <node concept="1Wc70l" id="4HeMkQiYPYp" role="3clFbw">
              <node concept="2OqwBi" id="4HeMkQiYPYq" role="3uHU7B">
                <node concept="2OwXpG" id="4HeMkQiYPYr" role="2OqNvi">
                  <ref role="2Oxat5" to="gkle:~TextOptions.myCounters" resolve="myCounters" />
                </node>
                <node concept="37vLTw" id="2BHiRxglnn3" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HeMkQiYPYd" resolve="options" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgkWsL" role="3uHU7w">
                <ref role="3cqZAo" node="4HeMkQiYPYh" resolve="isResultsSection" />
              </node>
            </node>
            <node concept="3clFbS" id="4HeMkQiYPYu" role="3clFbx">
              <node concept="3cpWs8" id="4HeMkQiYPYv" role="3cqZAp">
                <node concept="3cpWsn" id="4HeMkQiYPYw" role="3cpWs9">
                  <property role="TrG5h" value="size" />
                  <node concept="2OqwBi" id="4HeMkQiYPYy" role="33vP2m">
                    <node concept="2OwXpG" id="4HeMkQiYPYz" role="2OqNvi">
                      <ref role="2Oxat5" to="gkle:~TextOptions.mySubresultsCount" resolve="mySubresultsCount" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxglPPa" role="2Oq$k0">
                      <ref role="3cqZAo" node="4HeMkQiYPYd" resolve="options" />
                    </node>
                  </node>
                  <node concept="10Oyi0" id="4HeMkQiYPYx" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbF" id="4HeMkQiYPY_" role="3cqZAp">
                <node concept="37vLTI" id="4HeMkQiYPYA" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTwRw" role="37vLTJ">
                    <ref role="3cqZAo" node="4HeMkQiYPYl" resolve="counter" />
                  </node>
                  <node concept="3cpWs3" id="4HeMkQiYPYC" role="37vLTx">
                    <node concept="3cpWs3" id="4HeMkQiYPYD" role="3uHU7B">
                      <node concept="Xl_RD" id="4HeMkQiYPYE" role="3uHU7B">
                        <property role="Xl_RC" value=" (" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTyTW" role="3uHU7w">
                        <ref role="3cqZAo" node="4HeMkQiYPYw" resolve="size" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4HeMkQiYPYG" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4HeMkQiYPYH" role="3cqZAp">
            <node concept="3cpWs3" id="4HeMkQiYPYJ" role="3cqZAk">
              <node concept="37vLTw" id="3GM_nagTyh_" role="3uHU7w">
                <ref role="3cqZAo" node="4HeMkQiYPYl" resolve="counter" />
              </node>
              <node concept="Xl_RD" id="4HeMkQiYPYK" role="3uHU7B">
                <property role="Xl_RC" value="TODO items" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4HeMkQiYPYb" role="1B3o_S" />
        <node concept="37vLTG" id="4HeMkQiYPYd" role="3clF46">
          <property role="TrG5h" value="options" />
          <node concept="3uibUv" id="4HeMkQiYPYe" role="1tU5fm">
            <ref role="3uigEE" to="gkle:~TextOptions" resolve="TextOptions" />
          </node>
        </node>
        <node concept="37vLTG" id="4HeMkQiYPYf" role="3clF46">
          <property role="TrG5h" value="category" />
          <node concept="3uibUv" id="4HeMkQiYPYg" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4HeMkQiYPYh" role="3clF46">
          <property role="TrG5h" value="isResultsSection" />
          <node concept="10P_77" id="4HeMkQiYPYi" role="1tU5fm" />
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UBDi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4HeMkQiYPYN" role="jymVt">
        <property role="TrG5h" value="getCategoryIcon" />
        <node concept="37vLTG" id="4HeMkQiYPYQ" role="3clF46">
          <property role="TrG5h" value="category" />
          <node concept="17QB3L" id="4WqJQ8FEjYe" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="4HeMkQiYPYP" role="3clF45">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="3Tm1VV" id="4HeMkQiYPYO" role="1B3o_S" />
        <node concept="3clFbS" id="4HeMkQiYPYS" role="3clF47">
          <node concept="3SKdUt" id="7CEWnxov98h" role="3cqZAp">
            <node concept="1PaTwC" id="7CEWnxov98i" role="1aUNEU">
              <node concept="3oM_SD" id="7CEWnxov9zU" role="1PaTwD">
                <property role="3oM_SC" value="by" />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9zW" role="1PaTwD">
                <property role="3oM_SC" value="default," />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9zZ" role="1PaTwD">
                <property role="3oM_SC" value="DEFAULT_KATEGORY_KIND" />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9$N" role="1PaTwD">
                <property role="3oM_SC" value="goes" />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9_0" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9_6" role="1PaTwD">
                <property role="3oM_SC" value="'Filter'" />
              </node>
              <node concept="3oM_SD" id="7CEWnxov9__" role="1PaTwD">
                <property role="3oM_SC" value="icon" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4HeMkQiYPYT" role="3cqZAp">
            <node concept="10M0yZ" id="4HeMkQiYPYU" role="3cqZAk">
              <ref role="3cqZAo" to="xnls:~IdeIcons.CLOSED_FOLDER" resolve="CLOSED_FOLDER" />
              <ref role="1PxDUh" to="xnls:~IdeIcons" resolve="IdeIcons" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UBDc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="30S9H56k_9f" role="1zkMxy">
        <ref role="3uigEE" to="dsdj:~NodeRepresentatorBase" resolve="NodeRepresentatorBase" />
        <node concept="3uibUv" id="30S9H56kCgp" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4HeMkQiYPXq" role="1B3o_S" />
    <node concept="3uibUv" id="4HeMkQiYPXr" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
  </node>
  <node concept="312cEu" id="58syclRv9F3">
    <property role="TrG5h" value="TodoFinder" />
    <property role="3GE5qa" value="" />
    <node concept="3clFbW" id="58syclRv9F5" role="jymVt">
      <node concept="3cqZAl" id="58syclRv9F6" role="3clF45" />
      <node concept="3Tm1VV" id="58syclRv9F7" role="1B3o_S" />
      <node concept="3clFbS" id="58syclRv9F8" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1Fz6CCofmle" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1Fz6CCofmlf" role="1B3o_S" />
      <node concept="3uibUv" id="1Fz6CCofmlg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1Fz6CCofmlo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1Fz6CCofmlp" role="3clF47">
        <node concept="3clFbF" id="1Fz6CCofmTV" role="3cqZAp">
          <node concept="Xl_RD" id="1Fz6CCofmTU" role="3clFbG">
            <property role="Xl_RC" value="Todo's" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="58syclRv9Fa" role="jymVt">
      <property role="TrG5h" value="find" />
      <node concept="3uibUv" id="58syclRv9Fc" role="3clF45">
        <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
      </node>
      <node concept="37vLTG" id="58syclRv9Fd" role="3clF46">
        <property role="TrG5h" value="query" />
        <node concept="3uibUv" id="58syclRv9Fe" role="1tU5fm">
          <ref role="3uigEE" to="9erk:~SearchQuery" resolve="SearchQuery" />
        </node>
      </node>
      <node concept="3Tm1VV" id="58syclRv9Fb" role="1B3o_S" />
      <node concept="3clFbS" id="58syclRv9Fh" role="3clF47">
        <node concept="3cpWs8" id="1XU4lLpPKxR" role="3cqZAp">
          <node concept="3cpWsn" id="1XU4lLpPKxS" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1XU4lLpPKxP" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1XU4lLpPKXJ" role="11_B2D">
                <ref role="3uigEE" to="9erk:~SearchResult" resolve="SearchResult" />
                <node concept="3Tqbb2" id="1XU4lLpPKXK" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="1XU4lLpPO0T" role="33vP2m">
              <node concept="1pGfFk" id="1XU4lLpPU7b" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="592Zdv9aXRU" role="3cqZAp" />
        <node concept="3cpWs8" id="1XU4lLpQ1Af" role="3cqZAp">
          <node concept="3cpWsn" id="1XU4lLpQ1Ag" role="3cpWs9">
            <property role="TrG5h" value="searchFor" />
            <node concept="3uibUv" id="1XU4lLpQ1oI" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="2uNoUa" id="1XU4lLpQ1oL" role="11_B2D">
                <ref role="2uNoUb" to="tpck:3W5q5oTL9mp" resolve="IGenericComment" />
              </node>
            </node>
            <node concept="2YIFZM" id="1XU4lLpQ1Ah" role="33vP2m">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
              <node concept="35c_gC" id="1XU4lLpQ1Ai" role="37wK5m">
                <ref role="35c_gD" to="tpck:3W5q5oTL9mp" resolve="IGenericComment" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IrqCXr8HHJ" role="3cqZAp">
          <node concept="2OqwBi" id="592Zdv9aZcf" role="3clFbG">
            <node concept="liA8E" id="592Zdv9aZcg" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.Consumer,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
              <node concept="2OqwBi" id="592Zdv9aZch" role="37wK5m">
                <node concept="liA8E" id="592Zdv9aZci" role="2OqNvi">
                  <ref role="37wK5l" to="9erk:~SearchQuery.getScope()" resolve="getScope" />
                </node>
                <node concept="37vLTw" id="592Zdv9aZcj" role="2Oq$k0">
                  <ref role="3cqZAo" node="58syclRv9Fd" resolve="query" />
                </node>
              </node>
              <node concept="37vLTw" id="1XU4lLpQ1Aj" role="37wK5m">
                <ref role="3cqZAo" node="1XU4lLpQ1Ag" resolve="searchFor" />
              </node>
              <node concept="3clFbT" id="592Zdv9aZcl" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="1bVj0M" id="IrqCXr8siP" role="37wK5m">
                <node concept="gl6BB" id="IrqCXr8sj2" role="1bW2Oz">
                  <property role="TrG5h" value="gc" />
                  <node concept="2jxLKc" id="IrqCXr8sj3" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="IrqCXr8sj6" role="1bW5cS">
                  <node concept="3clFbJ" id="IrqCXr8vLk" role="3cqZAp">
                    <node concept="2OqwBi" id="IrqCXr8z50" role="3clFbw">
                      <node concept="1PxgMI" id="IrqCXr8BWw" role="2Oq$k0">
                        <node concept="chp4Y" id="IrqCXr8CAV" role="3oSUPX">
                          <ref role="cht4Q" to="tpck:3W5q5oTL9mp" resolve="IGenericComment" />
                        </node>
                        <node concept="37vLTw" id="IrqCXr8y8f" role="1m5AlR">
                          <ref role="3cqZAo" node="IrqCXr8sj2" resolve="gc" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORdtD" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:fB3l7ZufMD" resolve="isTODOComment" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="IrqCXr8vLm" role="3clFbx">
                      <node concept="3clFbF" id="fB3l80cGom" role="3cqZAp">
                        <node concept="2OqwBi" id="fB3l80cGon" role="3clFbG">
                          <node concept="liA8E" id="fB3l80cGoo" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                            <node concept="2ShNRf" id="fB3l80cGop" role="37wK5m">
                              <node concept="1pGfFk" id="fB3l80cGoq" role="2ShVmc">
                                <ref role="37wK5l" to="9erk:~SearchResult.&lt;init&gt;(java.lang.Object,java.lang.String)" resolve="SearchResult" />
                                <node concept="37vLTw" id="fB3l80cGor" role="37wK5m">
                                  <ref role="3cqZAo" node="IrqCXr8sj2" resolve="gc" />
                                </node>
                                <node concept="Xl_RD" id="fB3l80cGos" role="37wK5m">
                                  <property role="Xl_RC" value="TODO items" />
                                </node>
                                <node concept="3Tqbb2" id="fB3l80cGot" role="1pMfVU" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="fB3l80cGow" role="2Oq$k0">
                            <ref role="3cqZAo" node="1XU4lLpPKxS" resolve="results" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="IrqCXr8ooZ" role="37wK5m">
                <ref role="3cqZAo" node="58syclRv9Ff" resolve="monitor" />
              </node>
            </node>
            <node concept="2YIFZM" id="592Zdv9aZco" role="2Oq$k0">
              <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
              <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="IrqCXr7sFL" role="3cqZAp">
          <node concept="3clFbS" id="IrqCXr7sFN" role="3clFbx">
            <node concept="3cpWs6" id="IrqCXr7CXi" role="3cqZAp">
              <node concept="2YIFZM" id="6rzyaq0wOyV" role="3cqZAk">
                <ref role="37wK5l" to="9erk:~SearchResults.empty()" resolve="empty" />
                <ref role="1Pybhc" to="9erk:~SearchResults" resolve="SearchResults" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="IrqCXr7xa5" role="3clFbw">
            <node concept="37vLTw" id="IrqCXr7uEQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1XU4lLpPKxS" resolve="results" />
            </node>
            <node concept="liA8E" id="IrqCXr7Bb7" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~ArrayList.isEmpty()" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6rzyaq0wPXD" role="3cqZAp">
          <node concept="1PaTwC" id="6rzyaq0wPXE" role="1aUNEU">
            <node concept="3oM_SD" id="6rzyaq0wQAV" role="1PaTwD">
              <property role="3oM_SC" value="intentionally" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQDv" role="1PaTwD">
              <property role="3oM_SC" value="don't" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQEo" role="1PaTwD">
              <property role="3oM_SC" value="supply" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQFi" role="1PaTwD">
              <property role="3oM_SC" value="what" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQHT" role="1PaTwD">
              <property role="3oM_SC" value="we've" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQIP" role="1PaTwD">
              <property role="3oM_SC" value="searched" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQJM" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQKK" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQKT" role="1PaTwD">
              <property role="3oM_SC" value="it's" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQN6" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQO7" role="1PaTwD">
              <property role="3oM_SC" value="impl" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQOj" role="1PaTwD">
              <property role="3oM_SC" value="knowledge," />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQVm" role="1PaTwD">
              <property role="3oM_SC" value="users" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQWq" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQXv" role="1PaTwD">
              <property role="3oM_SC" value="interested" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQY_" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wQYQ" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6rzyaq0wR18" role="3cqZAp">
          <node concept="1PaTwC" id="6rzyaq0wR0P" role="1aUNEU">
            <node concept="3oM_SD" id="6rzyaq0wR0O" role="1PaTwD">
              <property role="3oM_SC" value="results" />
            </node>
            <node concept="3oM_SD" id="6rzyaq0wSaq" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="58syclRv9Ga" role="3cqZAp">
          <node concept="2ShNRf" id="1XU4lLpPXBr" role="3cqZAk">
            <node concept="1pGfFk" id="1XU4lLpQ0ZQ" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="9erk:~SearchResults.&lt;init&gt;(java.util.Collection,java.util.List)" resolve="SearchResults" />
              <node concept="2YIFZM" id="6rzyaq0wIBP" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Collections.emptySet()" resolve="emptySet" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
              <node concept="37vLTw" id="1XU4lLpQ5xC" role="37wK5m">
                <ref role="3cqZAo" node="1XU4lLpPKxS" resolve="results" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58syclRv9Ff" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="58syclRv9Fg" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScOM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="1jwh7Lzqgy3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="58syclRv9F4" role="1B3o_S" />
    <node concept="3uibUv" id="4Cga4ZG_YC8" role="EKbjA">
      <ref role="3uigEE" to="b2d5:7aWSXuXO6mS" resolve="IFinder" />
    </node>
  </node>
  <node concept="sE7Ow" id="4HeMkQiYObz">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="ShowTodoViewer" />
    <property role="2uzpH1" value="Todo..." />
    <property role="3GE5qa" value="" />
    <property role="1rBW0U" value="true" />
    <property role="2YLI8m" value="6u2MFnph2wS/none" />
    <node concept="1DS2jV" id="4HeMkQiYOb$" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4HeMkQiYOb_" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4HeMkQiYObA" role="tncku">
      <node concept="3clFbS" id="4HeMkQiYObB" role="2VODD2">
        <node concept="3clFbF" id="4HeMkQiYObC" role="3cqZAp">
          <node concept="2OqwBi" id="4HeMkQiYObD" role="3clFbG">
            <node concept="2OqwBi" id="4HeMkQiYObE" role="2Oq$k0">
              <node concept="2OqwBi" id="4HeMkQiYObF" role="2Oq$k0">
                <node concept="2WthIp" id="4HeMkQiYObG" role="2Oq$k0" />
                <node concept="1DTwFV" id="4HeMkQiYObH" role="2OqNvi">
                  <ref role="2WH_rO" node="4HeMkQiYOb$" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="4HeMkQiYObI" role="2OqNvi">
                <ref role="LR4U5" node="4HeMkQiYObL" resolve="TodoViewer" />
              </node>
            </node>
            <node concept="liA8E" id="4HeMkQiYObJ" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="3clFbT" id="4HeMkQiYObK" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="16mx0ETT_y7">
    <property role="TrG5h" value="ContributeToTools" />
    <node concept="tT9cl" id="16mx0ETT_z5" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
      <ref role="2f8Tey" to="tprs:hHYwqIT" resolve="customTools" />
    </node>
    <node concept="ftmFs" id="16mx0ETT_zr" role="ftER_">
      <node concept="tCFHf" id="16mx0ETT_zM" role="ftvYc">
        <ref role="tCJdB" node="4HeMkQiYObz" resolve="ShowTodoViewer" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="16mx0ETT_AG">
    <property role="3_H9TB" value="true" />
  </node>
</model>

