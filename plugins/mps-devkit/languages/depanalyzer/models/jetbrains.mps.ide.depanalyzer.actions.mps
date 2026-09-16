<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:77da0423-abdb-440a-b7fa-09f1e00ba0f2(jetbrains.mps.ide.depanalyzer.actions)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
  </languages>
  <imports>
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="7e8u" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.ui.tree(MPS.Platform/)" />
    <import index="g6cj" ref="r:e9e5ee4e-8216-40bc-b13e-6f1480c626c5(jetbrains.mps.ide.depanalyzer)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="9erk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
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
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
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
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469615" name="toolDisposeBlock" index="uR5co" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5891121763832969496" name="jetbrains.mps.lang.plugin.structure.IsInstanceCondition" flags="ng" index="1c5O4g">
        <reference id="5891121763832971425" name="cls" index="1c5NyD" />
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
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1173946412755" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAllElementsOperation" flags="nn" index="1kEaZ2" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="sE7Ow" id="4K0u7uB3viW">
    <property role="TrG5h" value="AnalyzeModuleDependencies" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Analyze Module Dependencies" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAy" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSpi8f2g" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.ToolWindowModuleDependencies" resolve="ToolWindowModuleDependencies" />
      </node>
    </node>
    <node concept="1DS2jV" id="4K0u7uB3viX" role="1NuT2Z">
      <property role="TrG5h" value="module" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULE" resolve="MODULE" />
      <node concept="1oajcY" id="4K0u7uB3viY" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="4K0u7uB3viZ" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4K0u7uB3vj0" role="1oa70y" />
    </node>
    <node concept="tnohg" id="4K0u7uB3vj1" role="tncku">
      <node concept="3clFbS" id="4K0u7uB3vj2" role="2VODD2">
        <node concept="3cpWs8" id="4K0u7uB3vj3" role="3cqZAp">
          <node concept="3cpWsn" id="4K0u7uB3vj4" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="1xUVSX" id="4K0u7uB3vj5" role="1tU5fm">
              <ref role="1xYkEM" node="4K0u7uB3vjg" resolve="ModuleDependencies" />
            </node>
            <node concept="2OqwBi" id="4K0u7uB3vj6" role="33vP2m">
              <node concept="2OqwBi" id="4K0u7uB3vj7" role="2Oq$k0">
                <node concept="2WthIp" id="4K0u7uB3vj8" role="2Oq$k0" />
                <node concept="1DTwFV" id="4K0u7uB3vj9" role="2OqNvi">
                  <ref role="2WH_rO" node="4K0u7uB3viZ" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="4K0u7uB3vja" role="2OqNvi">
                <ref role="LR4U5" node="4K0u7uB3vjg" resolve="ModuleDependencies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3YtP95zXO5k" role="3cqZAp">
          <node concept="2OqwBi" id="3YtP95zXO5m" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtOM" role="2Oq$k0">
              <ref role="3cqZAo" node="4K0u7uB3vj4" resolve="tool" />
            </node>
            <node concept="2XshWL" id="3YtP95zXO5q" role="2OqNvi">
              <ref role="2WH_rO" node="3YtP95zXLfI" resolve="setModules" />
              <node concept="2OqwBi" id="3YtP95zXO5r" role="2XxRq1">
                <node concept="2WthIp" id="3YtP95zXO5s" role="2Oq$k0" />
                <node concept="1DTwFV" id="3YtP95zXO5t" role="2OqNvi">
                  <ref role="2WH_rO" node="4K0u7uB3viX" resolve="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4K0u7uB3vjb" role="3cqZAp">
          <node concept="2OqwBi" id="4K0u7uB3vjc" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTutH" role="2Oq$k0">
              <ref role="3cqZAo" node="4K0u7uB3vj4" resolve="tool" />
            </node>
            <node concept="liA8E" id="4K0u7uB3vje" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="3clFbT" id="4K0u7uB3vjf" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="4ivPiovDO02">
    <property role="TrG5h" value="DependenciesKeyMap" />
    <node concept="Zd509" id="4ivPiovDO05" role="Zd508">
      <ref role="1bYAoF" node="yXzhPPCIr5" resolve="SafeDeleteModuleDependency" />
      <node concept="pLAjd" id="4ivPiovDO06" role="Zd501">
        <property role="pLAjf" value="VK_DELETE" />
        <property role="pLAjc" value="ctrl" />
      </node>
    </node>
  </node>
  <node concept="sEfby" id="4K0u7uB3vjg">
    <property role="TrG5h" value="ModuleDependencies" />
    <property role="2XNbzY" value="Module Dependencies" />
    <node concept="1GtWCo" id="6S5fI02CGAz" role="1nVCmq">
      <node concept="10M0yZ" id="6XsdSpivWqK" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.ToolWindowModuleDependencies" resolve="ToolWindowModuleDependencies" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
      </node>
    </node>
    <node concept="2XrIbr" id="3YtP95zXLfI" role="2XNbBy">
      <property role="TrG5h" value="setModules" />
      <node concept="3cqZAl" id="3YtP95zXMVy" role="3clF45" />
      <node concept="3clFbS" id="3YtP95zXLfK" role="3clF47">
        <node concept="3clFbF" id="5gnR903hpiX" role="3cqZAp">
          <node concept="2OqwBi" id="5gnR903hpj1" role="3clFbG">
            <node concept="2OqwBi" id="5gnR903hpiY" role="2Oq$k0">
              <node concept="2WthIp" id="5gnR903hpiZ" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5gnR903hpj0" role="2OqNvi">
                <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
              </node>
            </node>
            <node concept="liA8E" id="5gnR903hpjh" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:5gnR903hpj9" resolve="setModules" />
              <node concept="37vLTw" id="2BHiRxgm7UK" role="37wK5m">
                <ref role="3cqZAo" node="3YtP95zXMVz" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3YtP95zXMVz" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="6TI6RSr8O2M" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="6HLaAG1nIrm" role="2XNbBy">
      <property role="TrG5h" value="resetAll" />
      <node concept="3cqZAl" id="6HLaAG1nIrq" role="3clF45" />
      <node concept="3clFbS" id="6HLaAG1nIro" role="3clF47">
        <node concept="3clFbF" id="6HLaAG1nIrr" role="3cqZAp">
          <node concept="2OqwBi" id="6HLaAG1nIrv" role="3clFbG">
            <node concept="2OqwBi" id="6HLaAG1nIrs" role="2Oq$k0">
              <node concept="2WthIp" id="6HLaAG1nIrt" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6HLaAG1nIru" role="2OqNvi">
                <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
              </node>
            </node>
            <node concept="liA8E" id="6HLaAG1nIrz" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:5gnR903hjbm" resolve="resetAll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6HLaAG1nIrp" role="1B3o_S" />
    </node>
    <node concept="2UmK3q" id="4K0u7uB3vjh" role="2Um5zG">
      <node concept="3clFbS" id="4K0u7uB3vji" role="2VODD2">
        <node concept="3clFbF" id="4K0u7uB3vjj" role="3cqZAp">
          <node concept="2OqwBi" id="4K0u7uB3vjk" role="3clFbG">
            <node concept="2WthIp" id="4K0u7uB3vjl" role="2Oq$k0" />
            <node concept="2BZ7hE" id="4K0u7uB3vjm" role="2OqNvi">
              <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="4K0u7uB3vjn" role="2XNbBz">
      <property role="TrG5h" value="myComponent" />
      <node concept="3Tm6S6" id="4K0u7uB3vjo" role="1B3o_S" />
      <node concept="3uibUv" id="5gnR903hpiW" role="1tU5fm">
        <ref role="3uigEE" to="g6cj:5gnR903heD8" resolve="ModuleDependenciesView" />
      </node>
    </node>
    <node concept="2xpIHi" id="4K0u7uB3vjq" role="uR5cp">
      <node concept="3clFbS" id="4K0u7uB3vjr" role="2VODD2">
        <node concept="3clFbF" id="5gnR903hpiF" role="3cqZAp">
          <node concept="37vLTI" id="5gnR903hpiJ" role="3clFbG">
            <node concept="2ShNRf" id="5gnR903hpiM" role="37vLTx">
              <node concept="1pGfFk" id="5gnR903hpiO" role="2ShVmc">
                <ref role="37wK5l" to="g6cj:5gnR903heDa" resolve="ModuleDependenciesView" />
                <node concept="2WthIp" id="5gnR903hpiP" role="37wK5m" />
                <node concept="2xqhHp" id="5gnR903hpiR" role="37wK5m" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gnR903hpiG" role="37vLTJ">
              <node concept="2WthIp" id="5gnR903hpiH" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5gnR903hpiI" role="2OqNvi">
                <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="1$YBF88N69y" role="uR5co">
      <node concept="3clFbS" id="1$YBF88N69$" role="2VODD2">
        <node concept="3clFbJ" id="1$YBF88N69_" role="3cqZAp">
          <node concept="3y3z36" id="1$YBF88N69C" role="3clFbw">
            <node concept="2OqwBi" id="1$YBF88N69F" role="3uHU7B">
              <node concept="2WthIp" id="1$YBF88N69I" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1$YBF88N69J" role="2OqNvi">
                <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
              </node>
            </node>
            <node concept="10Nm6u" id="1$YBF88N69K" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1$YBF88N69L" role="3clFbx">
            <node concept="3clFbF" id="1$YBF88N69M" role="3cqZAp">
              <node concept="2OqwBi" id="1$YBF88N69O" role="3clFbG">
                <node concept="2OqwBi" id="1$YBF88N69R" role="2Oq$k0">
                  <node concept="2WthIp" id="1$YBF88N69U" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="1$YBF88N69V" role="2OqNvi">
                    <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="1$YBF88N69W" role="2OqNvi">
                  <ref role="37wK5l" to="g6cj:1$YBF88MScM" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1$YBF88N69X" role="3cqZAp">
              <node concept="37vLTI" id="1$YBF88N69Z" role="3clFbG">
                <node concept="2OqwBi" id="1$YBF88N6a2" role="37vLTJ">
                  <node concept="2WthIp" id="1$YBF88N6a5" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="1$YBF88N6a6" role="2OqNvi">
                    <ref role="2WH_rO" node="4K0u7uB3vjn" resolve="myComponent" />
                  </node>
                </node>
                <node concept="10Nm6u" id="1$YBF88N6a7" role="37vLTx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="yXzhPPCIr5">
    <property role="1WHSii" value="Safe delete module dependency" />
    <property role="TrG5h" value="SafeDeleteModuleDependency" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Safe Delete Dependency" />
    <property role="1teQrl" value="true" />
    <node concept="2XrIbr" id="14KV4bgTJ$K" role="32lrUH">
      <property role="TrG5h" value="getModuleFrom" />
      <node concept="3uibUv" id="1O8DjCqGClu" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFbS" id="14KV4bgTJ$M" role="3clF47">
        <node concept="3clFbF" id="14KV4bgTLTa" role="3cqZAp">
          <node concept="2OqwBi" id="4Xmgths29VN" role="3clFbG">
            <node concept="0kSF2" id="14KV4bgTLTf" role="2Oq$k0">
              <node concept="3uibUv" id="14KV4bgTLTg" role="0kSFW">
                <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
              </node>
              <node concept="2OqwBi" id="14KV4bgTLTh" role="0kSFX">
                <node concept="2OqwBi" id="14KV4bgTLTi" role="2Oq$k0">
                  <node concept="2WthIp" id="14KV4bgTLTj" role="2Oq$k0" />
                  <node concept="1DTwFV" id="14KV4bgTLTk" role="2OqNvi">
                    <ref role="2WH_rO" node="44sVLhmXetW" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="14KV4bgTLTl" role="2OqNvi">
                  <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="14KV4bgTLTm" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:2HP68CXWGDf" resolve="getModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1O8DjCqGH3A" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="441vB8LSuPW" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="14KV4bgTK_6" role="32lrUH">
      <property role="TrG5h" value="getModuleTo" />
      <node concept="3uibUv" id="14KV4bgTLPE" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFbS" id="14KV4bgTK_8" role="3clF47">
        <node concept="3cpWs6" id="14KV4bgTLDj" role="3cqZAp">
          <node concept="2OqwBi" id="4Xmgths2bBM" role="3cqZAk">
            <node concept="0kSF2" id="14KV4bgTL2j" role="2Oq$k0">
              <node concept="3uibUv" id="14KV4bgTL2k" role="0kSFW">
                <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
              </node>
              <node concept="2OqwBi" id="14KV4bgTL2l" role="0kSFX">
                <node concept="2WthIp" id="14KV4bgTL2m" role="2Oq$k0" />
                <node concept="1DTwFV" id="14KV4bgTL2n" role="2OqNvi">
                  <ref role="2WH_rO" node="44sVLhmXetW" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="14KV4bgTL2o" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:2HP68CXWGDf" resolve="getModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1O8DjCqGJyv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm6S6" id="441vB8Me5MG" role="1B3o_S" />
    </node>
    <node concept="1DS2jV" id="44sVLhmXetW" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="44sVLhmXetX" role="1oa70y" />
      <node concept="1c5O4g" id="4Xmgths1U2f" role="1oa70y">
        <ref role="1c5NyD" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
      </node>
    </node>
    <node concept="1DS2jV" id="2GH7fa3Patj" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4$Favkc8Oo_" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="x5jyaYgAko" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4$Favkc8OnC" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="yXzhPPCJ9S" role="32lrUH">
      <property role="TrG5h" value="removeDependency" />
      <node concept="3cqZAl" id="yXzhPPCJaX" role="3clF45" />
      <node concept="3clFbS" id="yXzhPPCJ9U" role="3clF47">
        <node concept="3clFbF" id="14KV4bgTPrB" role="3cqZAp">
          <node concept="2OqwBi" id="14KV4bgTQ4y" role="3clFbG">
            <node concept="2OqwBi" id="14KV4bgTPEI" role="2Oq$k0">
              <node concept="2OqwBi" id="14KV4bgTPrx" role="2Oq$k0">
                <node concept="2WthIp" id="14KV4bgTPr$" role="2Oq$k0" />
                <node concept="1DTwFV" id="14KV4bgTPrA" role="2OqNvi">
                  <ref role="2WH_rO" node="2GH7fa3Patj" resolve="project" />
                </node>
              </node>
              <node concept="liA8E" id="14KV4bgTQ0O" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="14KV4bgTQhK" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
              <node concept="1bVj0M" id="14KV4bgTQEN" role="37wK5m">
                <node concept="3clFbS" id="14KV4bgTQEO" role="1bW5cS">
                  <node concept="3cpWs8" id="14KV4bgTQW6" role="3cqZAp">
                    <node concept="3cpWsn" id="14KV4bgTQW7" role="3cpWs9">
                      <property role="TrG5h" value="from" />
                      <node concept="3uibUv" id="14KV4bgTQW8" role="1tU5fm">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="10QFUN" id="1O8DjCqGZD9" role="33vP2m">
                        <node concept="3uibUv" id="1O8DjCqH102" role="10QFUM">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                        <node concept="2OqwBi" id="14KV4bgTQW9" role="10QFUP">
                          <node concept="2WthIp" id="14KV4bgTQWa" role="2Oq$k0" />
                          <node concept="2XshWL" id="14KV4bgTQWb" role="2OqNvi">
                            <ref role="2WH_rO" node="14KV4bgTJ$K" resolve="getModuleFrom" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="14KV4bgTQWc" role="3cqZAp">
                    <node concept="3cpWsn" id="14KV4bgTQWd" role="3cpWs9">
                      <property role="TrG5h" value="to" />
                      <node concept="3uibUv" id="1O8DjCqLEgy" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                      </node>
                      <node concept="2OqwBi" id="1O8DjCqLByG" role="33vP2m">
                        <node concept="2OqwBi" id="14KV4bgTQWf" role="2Oq$k0">
                          <node concept="2WthIp" id="14KV4bgTQWg" role="2Oq$k0" />
                          <node concept="2XshWL" id="14KV4bgTQWh" role="2OqNvi">
                            <ref role="2WH_rO" node="14KV4bgTK_6" resolve="getModuleTo" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1O8DjCqLCZk" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="yXzhPPCJaZ" role="3cqZAp">
                    <node concept="3cpWsn" id="yXzhPPCJb0" role="3cpWs9">
                      <property role="TrG5h" value="descriptor" />
                      <node concept="3uibUv" id="yXzhPPCJb1" role="1tU5fm">
                        <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
                      </node>
                      <node concept="2OqwBi" id="yXzhPPCJb2" role="33vP2m">
                        <node concept="37vLTw" id="2BHiRxgm6Gu" role="2Oq$k0">
                          <ref role="3cqZAo" node="14KV4bgTQW7" resolve="from" />
                        </node>
                        <node concept="liA8E" id="yXzhPPCJb6" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="yXzhPPCJb9" role="3cqZAp">
                    <node concept="3cpWsn" id="yXzhPPCJba" role="3cpWs9">
                      <property role="TrG5h" value="dependencies" />
                      <node concept="3vKaQO" id="1O8DjCqLJvh" role="1tU5fm">
                        <node concept="3uibUv" id="1O8DjCqLJvj" role="3O5elw">
                          <ref role="3uigEE" to="w0gx:~Dependency" resolve="Dependency" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="yXzhPPCJbd" role="33vP2m">
                        <node concept="37vLTw" id="3GM_nagTz52" role="2Oq$k0">
                          <ref role="3cqZAo" node="yXzhPPCJb0" resolve="descriptor" />
                        </node>
                        <node concept="liA8E" id="yXzhPPCJbf" role="2OqNvi">
                          <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getDependencies()" resolve="getDependencies" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4milhKnhgZo" role="3cqZAp">
                    <node concept="3cpWsn" id="4milhKnhgZp" role="3cpWs9">
                      <property role="TrG5h" value="badDeps" />
                      <node concept="_YKpA" id="4milhKnhgZq" role="1tU5fm">
                        <node concept="3uibUv" id="4milhKnhgZr" role="_ZDj9">
                          <ref role="3uigEE" to="w0gx:~Dependency" resolve="Dependency" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4milhKnhgZs" role="33vP2m">
                        <node concept="2OqwBi" id="4milhKnhgZt" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagT_yM" role="2Oq$k0">
                            <ref role="3cqZAo" node="yXzhPPCJba" resolve="dependencies" />
                          </node>
                          <node concept="3zZkjj" id="4milhKnhgZv" role="2OqNvi">
                            <node concept="1bVj0M" id="4milhKnhgZw" role="23t8la">
                              <node concept="3clFbS" id="4milhKnhgZx" role="1bW5cS">
                                <node concept="3clFbF" id="4milhKnhgZy" role="3cqZAp">
                                  <node concept="2OqwBi" id="4milhKnhgZz" role="3clFbG">
                                    <node concept="2OqwBi" id="4milhKnhgZ$" role="2Oq$k0">
                                      <node concept="37vLTw" id="2BHiRxglwaA" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Xmw" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="4milhKnhgZA" role="2OqNvi">
                                        <ref role="37wK5l" to="w0gx:~Dependency.getModuleRef()" resolve="getModuleRef" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4milhKnhgZB" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                                      <node concept="37vLTw" id="2BHiRxgm9lu" role="37wK5m">
                                        <ref role="3cqZAo" node="14KV4bgTQWd" resolve="to" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Xmw" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Xmx" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="ANE8D" id="4milhKnhgZH" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4milhKnhgZK" role="3cqZAp">
                    <node concept="2OqwBi" id="1O8DjCqLWT8" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTsu3" role="2Oq$k0">
                        <ref role="3cqZAo" node="yXzhPPCJba" resolve="dependencies" />
                      </node>
                      <node concept="1kEaZ2" id="1O8DjCqLYHQ" role="2OqNvi">
                        <node concept="37vLTw" id="1O8DjCqM0Zc" role="25WWJ7">
                          <ref role="3cqZAo" node="4milhKnhgZp" resolve="badDeps" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="14KV4bgTRDK" role="3cqZAp">
                    <node concept="2OqwBi" id="14KV4bgTRSY" role="3clFbG">
                      <node concept="37vLTw" id="14KV4bgTRDI" role="2Oq$k0">
                        <ref role="3cqZAo" node="14KV4bgTQW7" resolve="from" />
                      </node>
                      <node concept="liA8E" id="14KV4bgTSaV" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.save()" resolve="save" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HLaAG1nFtR" role="3cqZAp">
          <node concept="2OqwBi" id="6HLaAG1nFtT" role="3clFbG">
            <node concept="2XshWL" id="6HLaAG1nIr$" role="2OqNvi">
              <ref role="2WH_rO" node="6HLaAG1nIrm" resolve="resetAll" />
            </node>
            <node concept="2OqwBi" id="44sVLhmXg9f" role="2Oq$k0">
              <node concept="2OqwBi" id="44sVLhmXg9g" role="2Oq$k0">
                <node concept="2WthIp" id="44sVLhmXg9h" role="2Oq$k0" />
                <node concept="1DTwFV" id="44sVLhmXg9i" role="2OqNvi">
                  <ref role="2WH_rO" node="x5jyaYgAko" resolve="ideaProject" />
                </node>
              </node>
              <node concept="LR4U6" id="44sVLhmXg9j" role="2OqNvi">
                <ref role="LR4U5" node="4K0u7uB3vjg" resolve="ModuleDependencies" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="yXzhPPCJaY" role="1B3o_S" />
    </node>
    <node concept="tnohg" id="yXzhPPCIr6" role="tncku">
      <node concept="3clFbS" id="yXzhPPCIr7" role="2VODD2">
        <node concept="3cpWs8" id="14KV4bgTGod" role="3cqZAp">
          <node concept="3cpWsn" id="14KV4bgTGoe" role="3cpWs9">
            <property role="TrG5h" value="dependenciesExist" />
            <node concept="10P_77" id="1O8DjCqHJjb" role="1tU5fm" />
            <node concept="2OqwBi" id="14KV4bgTGof" role="33vP2m">
              <node concept="2ShNRf" id="14KV4bgTGog" role="2Oq$k0">
                <node concept="1pGfFk" id="14KV4bgTGoh" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="14KV4bgTGoi" role="37wK5m">
                    <node concept="2OqwBi" id="14KV4bgTGoj" role="2Oq$k0">
                      <node concept="2WthIp" id="14KV4bgTGok" role="2Oq$k0" />
                      <node concept="1DTwFV" id="14KV4bgTGol" role="2OqNvi">
                        <ref role="2WH_rO" node="2GH7fa3Patj" resolve="project" />
                      </node>
                    </node>
                    <node concept="liA8E" id="14KV4bgTGom" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="14KV4bgTGon" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="14KV4bgTGoo" role="37wK5m">
                  <node concept="3clFbS" id="14KV4bgTGop" role="1bW5cS">
                    <node concept="3cpWs8" id="14KV4bgTGoq" role="3cqZAp">
                      <node concept="3cpWsn" id="14KV4bgTGor" role="3cpWs9">
                        <property role="TrG5h" value="from" />
                        <node concept="3uibUv" id="1O8DjCqGMbg" role="1tU5fm">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                        <node concept="2OqwBi" id="14KV4bgTM_s" role="33vP2m">
                          <node concept="2WthIp" id="14KV4bgTM_v" role="2Oq$k0" />
                          <node concept="2XshWL" id="14KV4bgTM_x" role="2OqNvi">
                            <ref role="2WH_rO" node="14KV4bgTJ$K" resolve="getModuleFrom" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="14KV4bgTGoC" role="3cqZAp">
                      <node concept="3cpWsn" id="14KV4bgTGoD" role="3cpWs9">
                        <property role="TrG5h" value="to" />
                        <node concept="3uibUv" id="14KV4bgTGoE" role="1tU5fm">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                        <node concept="2OqwBi" id="14KV4bgTNdk" role="33vP2m">
                          <node concept="2WthIp" id="14KV4bgTNdn" role="2Oq$k0" />
                          <node concept="2XshWL" id="14KV4bgTNdp" role="2OqNvi">
                            <ref role="2WH_rO" node="14KV4bgTK_6" resolve="getModuleTo" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="14KV4bgTGoM" role="3cqZAp">
                      <node concept="2YIFZM" id="7TKpiq3XkS3" role="3clFbG">
                        <ref role="37wK5l" node="1O8DjCqHekY" resolve="hasDependenciesToShow" />
                        <ref role="1Pybhc" node="185rHHJdrio" resolve="DependenciesUtil" />
                        <node concept="2OqwBi" id="1O8DjCqHENJ" role="37wK5m">
                          <node concept="2WthIp" id="1O8DjCqHENM" role="2Oq$k0" />
                          <node concept="1DTwFV" id="1O8DjCqHENO" role="2OqNvi">
                            <ref role="2WH_rO" node="2GH7fa3Patj" resolve="project" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1O8DjCqHBQV" role="37wK5m">
                          <ref role="3cqZAo" node="14KV4bgTGor" resolve="from" />
                        </node>
                        <node concept="37vLTw" id="1O8DjCqHBQW" role="37wK5m">
                          <ref role="3cqZAo" node="14KV4bgTGoD" resolve="to" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="yXzhPPCJ9u" role="3cqZAp">
          <node concept="37vLTw" id="1O8DjCqHQlv" role="3clFbw">
            <ref role="3cqZAo" node="14KV4bgTGoe" resolve="dependenciesExist" />
          </node>
          <node concept="3clFbS" id="x5jyaYg3F7" role="3clFbx">
            <node concept="3cpWs8" id="x5jyaYgAew" role="3cqZAp">
              <node concept="3cpWsn" id="x5jyaYgAex" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="10Oyi0" id="x5jyaYgAey" role="1tU5fm" />
                <node concept="2YIFZM" id="x5jyaYgUg6" role="33vP2m">
                  <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                  <ref role="37wK5l" to="jkm4:~Messages.showDialog(java.lang.String,java.lang.String,java.lang.String[],int,javax.swing.Icon)" resolve="showDialog" />
                  <node concept="Xl_RD" id="x5jyaYgUg7" role="37wK5m">
                    <property role="Xl_RC" value="Can't safe delete dependency" />
                  </node>
                  <node concept="Xl_RD" id="x5jyaYgUg8" role="37wK5m">
                    <property role="Xl_RC" value="Safe delete impossible" />
                  </node>
                  <node concept="2ShNRf" id="x5jyaYgUg9" role="37wK5m">
                    <node concept="3g6Rrh" id="x5jyaYgUga" role="2ShVmc">
                      <node concept="17QB3L" id="44sVLhmXeEZ" role="3g7fb8" />
                      <node concept="Xl_RD" id="x5jyaYgUgc" role="3g7hyw">
                        <property role="Xl_RC" value="View dependencies" />
                      </node>
                      <node concept="Xl_RD" id="x5jyaYgUgd" role="3g7hyw">
                        <property role="Xl_RC" value="Delete anyway" />
                      </node>
                      <node concept="Xl_RD" id="x5jyaYgUge" role="3g7hyw">
                        <property role="Xl_RC" value="Cancel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="x5jyaYgYV9" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="10Nm6u" id="x5jyaYgUgg" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="44sVLhmXg9l" role="3cqZAp">
              <property role="TyiWK" value="false" />
              <property role="TyiWL" value="true" />
              <node concept="3clFbC" id="44sVLhmXg9m" role="3clFbw">
                <node concept="3cmrfG" id="44sVLhmXg9n" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3GM_nagTw0D" role="3uHU7B">
                  <ref role="3cqZAo" node="x5jyaYgAex" resolve="res" />
                </node>
              </node>
              <node concept="3clFbS" id="44sVLhmXg9p" role="3clFbx">
                <node concept="3clFbF" id="6yR8fm$criy" role="3cqZAp">
                  <node concept="2YIFZM" id="7TKpiq3XkS0" role="3clFbG">
                    <ref role="37wK5l" node="1O8DjCqHX0Z" resolve="openDependenciesTool" />
                    <ref role="1Pybhc" node="185rHHJdrio" resolve="DependenciesUtil" />
                    <node concept="2OqwBi" id="1O8DjCqLcQ4" role="37wK5m">
                      <node concept="2WthIp" id="1O8DjCqLcQ7" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1O8DjCqLcQ9" role="2OqNvi">
                        <ref role="2WH_rO" node="2GH7fa3Patj" resolve="project" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1O8DjCqLoLf" role="37wK5m">
                      <node concept="2WthIp" id="1O8DjCqLoLg" role="2Oq$k0" />
                      <node concept="2XshWL" id="1O8DjCqLoLh" role="2OqNvi">
                        <ref role="2WH_rO" node="14KV4bgTJ$K" resolve="getModuleFrom" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1O8DjCqLpWR" role="37wK5m">
                      <node concept="2WthIp" id="1O8DjCqLpWS" role="2Oq$k0" />
                      <node concept="2XshWL" id="1O8DjCqLpWT" role="2OqNvi">
                        <ref role="2WH_rO" node="14KV4bgTK_6" resolve="getModuleTo" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="1O8DjCqLn8X" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="44sVLhmXg9$" role="3cqZAp">
              <node concept="3clFbS" id="44sVLhmXg9_" role="3clFbx">
                <node concept="3cpWs6" id="44sVLhmXg9H" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="44sVLhmXg9D" role="3clFbw">
                <node concept="3cmrfG" id="44sVLhmXg9G" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="3GM_nagTsSt" role="3uHU7B">
                  <ref role="3cqZAo" node="x5jyaYgAex" resolve="res" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yXzhPPCJaT" role="3cqZAp">
          <node concept="2OqwBi" id="yXzhPPCJaU" role="3clFbG">
            <node concept="2WthIp" id="yXzhPPCJaV" role="2Oq$k0" />
            <node concept="2XshWL" id="yXzhPPCJaW" role="2OqNvi">
              <ref role="2WH_rO" node="yXzhPPCJ9S" resolve="removeDependency" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="44sVLhmXetL" role="tmbBb">
      <node concept="3clFbS" id="44sVLhmXetM" role="2VODD2">
        <node concept="3cpWs8" id="3YX357bjrtP" role="3cqZAp">
          <node concept="3cpWsn" id="3YX357bjrtQ" role="3cpWs9">
            <property role="TrG5h" value="from" />
            <node concept="3uibUv" id="5JozKOuu6ZK" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="1O8DjCqGOIO" role="33vP2m">
              <node concept="2WthIp" id="1O8DjCqGOIR" role="2Oq$k0" />
              <node concept="2XshWL" id="1O8DjCqGOIT" role="2OqNvi">
                <ref role="2WH_rO" node="14KV4bgTJ$K" resolve="getModuleFrom" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5JozKOuu7wQ" role="3cqZAp">
          <node concept="3fqX7Q" id="5JozKOuu8ub" role="3clFbw">
            <node concept="2ZW3vV" id="5JozKOuu8ud" role="3fr31v">
              <node concept="3uibUv" id="5JozKOuu8ue" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
              <node concept="37vLTw" id="5JozKOuu8uf" role="2ZW6bz">
                <ref role="3cqZAo" node="3YX357bjrtQ" resolve="from" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5JozKOuu7wS" role="3clFbx">
            <node concept="3cpWs6" id="5JozKOuu8JB" role="3cqZAp">
              <node concept="3clFbT" id="5JozKOuu8JV" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3YX357bjruN" role="3cqZAp">
          <node concept="1Wc70l" id="3YX357bjruO" role="3cqZAk">
            <node concept="1Wc70l" id="1O8DjCqGRl$" role="3uHU7B">
              <node concept="3y3z36" id="1O8DjCqGTbM" role="3uHU7w">
                <node concept="10Nm6u" id="1O8DjCqGUo5" role="3uHU7w" />
                <node concept="2OqwBi" id="1O8DjCqGSxw" role="3uHU7B">
                  <node concept="2WthIp" id="1O8DjCqGSxz" role="2Oq$k0" />
                  <node concept="2XshWL" id="1O8DjCqGSx_" role="2OqNvi">
                    <ref role="2WH_rO" node="14KV4bgTK_6" resolve="getModuleTo" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3YX357bjruT" role="3uHU7B">
                <node concept="2OqwBi" id="3YX357bjruU" role="3fr31v">
                  <node concept="37vLTw" id="3GM_nagTzb0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3YX357bjrtQ" resolve="from" />
                  </node>
                  <node concept="liA8E" id="3YX357bjruW" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3YX357bjruX" role="3uHU7w">
              <node concept="2OqwBi" id="3YX357bjruY" role="3uHU7B">
                <node concept="2OwXpG" id="3YX357bjrv6" role="2OqNvi">
                  <ref role="2Oxat5" to="g6cj:65vkPOiCZ8q" resolve="linktype" />
                </node>
                <node concept="2OqwBi" id="4Xmgths29vp" role="2Oq$k0">
                  <node concept="0kSF2" id="3YX357bjrv0" role="2Oq$k0">
                    <node concept="3uibUv" id="3YX357bjrv1" role="0kSFW">
                      <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
                    </node>
                    <node concept="2OqwBi" id="3YX357bjrv2" role="0kSFX">
                      <node concept="2WthIp" id="3YX357bjrv3" role="2Oq$k0" />
                      <node concept="1DTwFV" id="3YX357bjrv4" role="2OqNvi">
                        <ref role="2WH_rO" node="44sVLhmXetW" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3YX357bjrv5" role="2OqNvi">
                    <ref role="37wK5l" to="g6cj:6Hf3JtD50kr" resolve="getLink" />
                  </node>
                </node>
              </node>
              <node concept="Rm8GO" id="3YX357bjrv7" role="3uHU7w">
                <ref role="Rm8GQ" to="g6cj:6F582lFlfym" resolve="Depends" />
                <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2Fydl1EdN_l">
    <property role="1WHSii" value="Show Usages in Dependecies Viewer" />
    <property role="TrG5h" value="ShowDependenciesInViewer" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Show Usages" />
    <property role="1teQrl" value="true" />
    <node concept="1DS2jV" id="2Fydl1EdN_m" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="2Fydl1EdN_n" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2Fydl1EdN_R" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="2Fydl1EdN_S" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="2Fydl1EdN_o" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="2Fydl1EdN_p" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2Fydl1EdN_q" role="tncku">
      <node concept="3clFbS" id="2Fydl1EdN_r" role="2VODD2">
        <node concept="3clFbF" id="14KV4bgVakf" role="3cqZAp">
          <node concept="2OqwBi" id="14KV4bgVaG9" role="3clFbG">
            <node concept="2OqwBi" id="14KV4bgVavD" role="2Oq$k0">
              <node concept="2OqwBi" id="14KV4bgVak9" role="2Oq$k0">
                <node concept="2WthIp" id="14KV4bgVakc" role="2Oq$k0" />
                <node concept="1DTwFV" id="14KV4bgVake" role="2OqNvi">
                  <ref role="2WH_rO" node="2Fydl1EdN_R" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="14KV4bgVaFe" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="14KV4bgVaNm" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="14KV4bgVaRx" role="37wK5m">
                <node concept="3clFbS" id="14KV4bgVaRy" role="1bW5cS">
                  <node concept="3cpWs8" id="2Fydl1EdOnf" role="3cqZAp">
                    <node concept="3cpWsn" id="2Fydl1EdOng" role="3cpWs9">
                      <property role="TrG5h" value="treeNode" />
                      <node concept="3uibUv" id="2Fydl1EdOnh" role="1tU5fm">
                        <ref role="3uigEE" to="g6cj:3YtP95zXIo3" resolve="ModuleDependencyNode" />
                      </node>
                      <node concept="10QFUN" id="2Fydl1EdOnZ" role="33vP2m">
                        <node concept="3uibUv" id="2Fydl1EdOo2" role="10QFUM">
                          <ref role="3uigEE" to="g6cj:3YtP95zXIo3" resolve="ModuleDependencyNode" />
                        </node>
                        <node concept="2OqwBi" id="2Fydl1EdOnj" role="10QFUP">
                          <node concept="2WthIp" id="2Fydl1EdOnk" role="2Oq$k0" />
                          <node concept="1DTwFV" id="2Fydl1EdOnl" role="2OqNvi">
                            <ref role="2WH_rO" node="2Fydl1EdN_o" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1yQON_5oaG8" role="3cqZAp">
                    <node concept="3cpWsn" id="1yQON_5oaG9" role="3cpWs9">
                      <property role="TrG5h" value="top" />
                      <node concept="3uibUv" id="1yQON_5oaGa" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="1yQON_5oczQ" role="33vP2m">
                        <node concept="1eOMI4" id="1yQON_5oaU9" role="2Oq$k0">
                          <node concept="10QFUN" id="1yQON_5o4J2" role="1eOMHV">
                            <node concept="3uibUv" id="1yQON_5o5r9" role="10QFUM">
                              <ref role="3uigEE" to="g6cj:2HP68CXWGxl" resolve="DependencyTree" />
                            </node>
                            <node concept="2OqwBi" id="1yQON_5o0Rn" role="10QFUP">
                              <node concept="37vLTw" id="1yQON_5o0yD" role="2Oq$k0">
                                <ref role="3cqZAo" node="2Fydl1EdOng" resolve="treeNode" />
                              </node>
                              <node concept="liA8E" id="1yQON_5o2NL" role="2OqNvi">
                                <ref role="37wK5l" to="7e8u:~MPSTreeNode.getTree()" resolve="getTree" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1yQON_5oD40" role="2OqNvi">
                          <ref role="37wK5l" to="g6cj:1yQON_5okWG" resolve="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7deq$1uK0fS" role="3cqZAp">
                    <node concept="3cpWsn" id="7deq$1uK0fT" role="3cpWs9">
                      <property role="TrG5h" value="to" />
                      <node concept="3uibUv" id="7deq$1uK0fU" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="7deq$1uK0xv" role="33vP2m">
                        <node concept="2OqwBi" id="7deq$1uKbZ8" role="2Oq$k0">
                          <node concept="37vLTw" id="7deq$1uKbZ9" role="2Oq$k0">
                            <ref role="3cqZAo" node="2Fydl1EdOng" resolve="treeNode" />
                          </node>
                          <node concept="liA8E" id="7deq$1uKbZa" role="2OqNvi">
                            <ref role="37wK5l" to="g6cj:6TI6RSrpMqO" resolve="getModule" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7deq$1uK0KT" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                          <node concept="2OqwBi" id="7deq$1uK2DD" role="37wK5m">
                            <node concept="2OqwBi" id="7deq$1uK1Hd" role="2Oq$k0">
                              <node concept="2WthIp" id="7deq$1uK1Hg" role="2Oq$k0" />
                              <node concept="1DTwFV" id="7deq$1uK1Hi" role="2OqNvi">
                                <ref role="2WH_rO" node="2Fydl1EdN_R" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7deq$1uK4va" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7deq$1uKeqW" role="3cqZAp">
                    <node concept="3clFbS" id="7deq$1uKeqY" role="3clFbx">
                      <node concept="3cpWs6" id="7deq$1uKfu5" role="3cqZAp" />
                    </node>
                    <node concept="3clFbC" id="7deq$1uKeXT" role="3clFbw">
                      <node concept="10Nm6u" id="7deq$1uKfpg" role="3uHU7w" />
                      <node concept="37vLTw" id="7deq$1uKeR$" role="3uHU7B">
                        <ref role="3cqZAo" node="7deq$1uK0fT" resolve="to" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2Fydl1EdOmM" role="3cqZAp">
                    <node concept="2YIFZM" id="7TKpiq3XkS1" role="3clFbG">
                      <ref role="37wK5l" node="1O8DjCqHX0Z" resolve="openDependenciesTool" />
                      <ref role="1Pybhc" node="185rHHJdrio" resolve="DependenciesUtil" />
                      <node concept="2OqwBi" id="1O8DjCqJhet" role="37wK5m">
                        <node concept="2WthIp" id="1O8DjCqJheu" role="2Oq$k0" />
                        <node concept="1DTwFV" id="1O8DjCqJhev" role="2OqNvi">
                          <ref role="2WH_rO" node="2Fydl1EdN_R" resolve="mpsProject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1O8DjCqJheo" role="37wK5m">
                        <ref role="3cqZAo" node="1yQON_5oaG9" resolve="top" />
                      </node>
                      <node concept="37vLTw" id="1O8DjCqJhep" role="37wK5m">
                        <ref role="3cqZAo" node="7deq$1uK0fT" resolve="to" />
                      </node>
                      <node concept="2OqwBi" id="1O8DjCqJhew" role="37wK5m">
                        <node concept="37vLTw" id="1O8DjCqJhex" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Fydl1EdOng" resolve="treeNode" />
                        </node>
                        <node concept="liA8E" id="1O8DjCqJhey" role="2OqNvi">
                          <ref role="37wK5l" to="g6cj:5dWvMyuy2We" resolve="isUsedLanguage" />
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
    <node concept="2ScWuX" id="2Fydl1EdN_D" role="tmbBb">
      <node concept="3clFbS" id="2Fydl1EdN_E" role="2VODD2">
        <node concept="3clFbF" id="6TI6RSrluBi" role="3cqZAp">
          <node concept="2ZW3vV" id="61cJvQSHh68" role="3clFbG">
            <node concept="3uibUv" id="61cJvQSHh6h" role="2ZW6by">
              <ref role="3uigEE" to="g6cj:3YtP95zXIo3" resolve="ModuleDependencyNode" />
            </node>
            <node concept="2OqwBi" id="61cJvQSHh6a" role="2ZW6bz">
              <node concept="2WthIp" id="61cJvQSHh6b" role="2Oq$k0" />
              <node concept="1DTwFV" id="61cJvQSHh6g" role="2OqNvi">
                <ref role="2WH_rO" node="2Fydl1EdN_o" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="185rHHJdnAu">
    <property role="1WHSii" value="show usages in dependencies viewer" />
    <property role="TrG5h" value="ShowInDependenciesViewer" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Show Usages" />
    <property role="1teQrl" value="true" />
    <node concept="1DS2jV" id="44sVLhmXeF6" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.TREE_NODE" resolve="TREE_NODE" />
      <node concept="1oajcY" id="44sVLhmXeF7" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="185rHHJdnAC" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4$Favkc8OoN" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="185rHHJdnAD" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4$Favkc8Ood" role="1oa70y" />
    </node>
    <node concept="tnohg" id="185rHHJdnAv" role="tncku">
      <node concept="3clFbS" id="185rHHJdnAw" role="2VODD2">
        <node concept="3cpWs8" id="1O8DjCqMGAy" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqMGAz" role="3cpWs9">
            <property role="TrG5h" value="projectRepo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1O8DjCqMDiB" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="1O8DjCqMGA$" role="33vP2m">
              <node concept="2OqwBi" id="1O8DjCqMGA_" role="2Oq$k0">
                <node concept="2WthIp" id="1O8DjCqMGAA" role="2Oq$k0">
                  <ref role="32nkFo" node="185rHHJdnAu" resolve="ShowInDependenciesViewer" />
                </node>
                <node concept="1DTwFV" id="1O8DjCqMGAB" role="2OqNvi">
                  <ref role="2WH_rO" node="185rHHJdnAC" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="1O8DjCqMGAC" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3f$pzFw9n__" role="3cqZAp">
          <node concept="2OqwBi" id="3f$pzFw9o41" role="3clFbG">
            <node concept="2OqwBi" id="3f$pzFw9nP0" role="2Oq$k0">
              <node concept="37vLTw" id="1O8DjCqMK2p" role="2Oq$k0">
                <ref role="3cqZAo" node="1O8DjCqMGAz" resolve="projectRepo" />
              </node>
              <node concept="liA8E" id="3f$pzFw9o36" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3f$pzFw9odJ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="3f$pzFwaDw7" role="37wK5m">
                <node concept="YeOm9" id="3f$pzFwbc0h" role="2ShVmc">
                  <node concept="1Y3b0j" id="3f$pzFwbc0k" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="3f$pzFwbc0l" role="1B3o_S" />
                    <node concept="3clFb_" id="3f$pzFwbc0m" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="3f$pzFwbc0n" role="1B3o_S" />
                      <node concept="3cqZAl" id="3f$pzFwbc0p" role="3clF45" />
                      <node concept="3clFbS" id="3f$pzFwbc0q" role="3clF47">
                        <node concept="3cpWs8" id="61cJvQSHh5v" role="3cqZAp">
                          <node concept="3cpWsn" id="61cJvQSHh5w" role="3cpWs9">
                            <property role="TrG5h" value="treeNode" />
                            <node concept="3uibUv" id="61cJvQSHh5x" role="1tU5fm">
                              <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
                            </node>
                            <node concept="10QFUN" id="61cJvQSHh5z" role="33vP2m">
                              <node concept="3uibUv" id="61cJvQSHh5$" role="10QFUM">
                                <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
                              </node>
                              <node concept="2OqwBi" id="61cJvQSHh5A" role="10QFUP">
                                <node concept="2WthIp" id="61cJvQSHh5B" role="2Oq$k0" />
                                <node concept="1DTwFV" id="61cJvQSHh5C" role="2OqNvi">
                                  <ref role="2WH_rO" node="44sVLhmXeF6" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="44sVLhmXeFo" role="3cqZAp">
                          <node concept="3cpWsn" id="44sVLhmXeFp" role="3cpWs9">
                            <property role="TrG5h" value="fromRef" />
                            <node concept="3uibUv" id="1O8DjCqM_oN" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                            </node>
                            <node concept="2EnYce" id="44sVLhmXeFr" role="33vP2m">
                              <node concept="0kSF2" id="44sVLhmXeFt" role="2Oq$k0">
                                <node concept="3uibUv" id="44sVLhmXeFu" role="0kSFW">
                                  <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
                                </node>
                                <node concept="2OqwBi" id="44sVLhmXeFv" role="0kSFX">
                                  <node concept="37vLTw" id="3GM_nagTrEd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="61cJvQSHh5w" resolve="treeNode" />
                                  </node>
                                  <node concept="liA8E" id="44sVLhmXeFz" role="2OqNvi">
                                    <ref role="37wK5l" to="rgfa:~DefaultMutableTreeNode.getParent()" resolve="getParent" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="1O8DjCqM$z_" role="2OqNvi">
                                <ref role="37wK5l" to="g6cj:1aCYpOWF1F9" resolve="getModuleReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1O8DjCqMBQI" role="3cqZAp">
                          <node concept="3cpWsn" id="1O8DjCqMBQJ" role="3cpWs9">
                            <property role="TrG5h" value="from" />
                            <node concept="3uibUv" id="1O8DjCqMBQK" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                            </node>
                            <node concept="3K4zz7" id="1O8DjCqMDJg" role="33vP2m">
                              <node concept="10Nm6u" id="1O8DjCqMEok" role="3K4E3e" />
                              <node concept="2OqwBi" id="1O8DjCqMFgc" role="3K4GZi">
                                <node concept="37vLTw" id="1O8DjCqMF1k" role="2Oq$k0">
                                  <ref role="3cqZAo" node="44sVLhmXeFp" resolve="fromRef" />
                                </node>
                                <node concept="liA8E" id="1O8DjCqMFYS" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                  <node concept="37vLTw" id="1O8DjCqMLsO" role="37wK5m">
                                    <ref role="3cqZAo" node="1O8DjCqMGAz" resolve="projectRepo" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="1O8DjCqMDmQ" role="3K4Cdx">
                                <node concept="10Nm6u" id="1O8DjCqMDxa" role="3uHU7w" />
                                <node concept="37vLTw" id="1O8DjCqMCYM" role="3uHU7B">
                                  <ref role="3cqZAo" node="44sVLhmXeFp" resolve="fromRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1O8DjCqMNLn" role="3cqZAp">
                          <node concept="3clFbS" id="1O8DjCqMNLp" role="3clFbx">
                            <node concept="3cpWs6" id="1O8DjCqMR97" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="1O8DjCqMPFs" role="3clFbw">
                            <node concept="10Nm6u" id="1O8DjCqMQri" role="3uHU7w" />
                            <node concept="37vLTw" id="1O8DjCqMPrS" role="3uHU7B">
                              <ref role="3cqZAo" node="1O8DjCqMBQJ" resolve="from" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="44sVLhmXeF_" role="3cqZAp">
                          <node concept="3cpWsn" id="44sVLhmXeFA" role="3cpWs9">
                            <property role="TrG5h" value="to" />
                            <node concept="2OqwBi" id="1O8DjCqMuGv" role="33vP2m">
                              <node concept="2OqwBi" id="61cJvQSHh5H" role="2Oq$k0">
                                <node concept="37vLTw" id="3GM_nagTvmY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="61cJvQSHh5w" resolve="treeNode" />
                                </node>
                                <node concept="liA8E" id="1O8DjCqMugk" role="2OqNvi">
                                  <ref role="37wK5l" to="g6cj:1aCYpOWF1F9" resolve="getModuleReference" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1O8DjCqMvxB" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                <node concept="37vLTw" id="1O8DjCqMGAD" role="37wK5m">
                                  <ref role="3cqZAo" node="1O8DjCqMGAz" resolve="projectRepo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="44sVLhmXeFB" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="185rHHJdtXz" role="3cqZAp">
                          <node concept="2YIFZM" id="7TKpiq3XkS2" role="3clFbG">
                            <ref role="37wK5l" node="1O8DjCqHX0Z" resolve="openDependenciesTool" />
                            <ref role="1Pybhc" node="185rHHJdrio" resolve="DependenciesUtil" />
                            <node concept="2OqwBi" id="1O8DjCqMgft" role="37wK5m">
                              <node concept="2WthIp" id="1O8DjCqMgfu" role="2Oq$k0" />
                              <node concept="1DTwFV" id="1O8DjCqMgfv" role="2OqNvi">
                                <ref role="2WH_rO" node="185rHHJdnAC" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="1O8DjCqMMsi" role="37wK5m">
                              <ref role="3cqZAo" node="1O8DjCqMBQJ" resolve="from" />
                            </node>
                            <node concept="37vLTw" id="1O8DjCqMgfx" role="37wK5m">
                              <ref role="3cqZAo" node="44sVLhmXeFA" resolve="to" />
                            </node>
                            <node concept="3clFbC" id="1O8DjCqMgf_" role="37wK5m">
                              <node concept="Rm8GO" id="1O8DjCqMgfA" role="3uHU7w">
                                <ref role="Rm8GQ" to="g6cj:6F582lFlfyo" resolve="UsesLanguage" />
                                <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                              </node>
                              <node concept="2OqwBi" id="1O8DjCqMgfB" role="3uHU7B">
                                <node concept="2OqwBi" id="1O8DjCqMgfC" role="2Oq$k0">
                                  <node concept="37vLTw" id="1O8DjCqMgfD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="61cJvQSHh5w" resolve="treeNode" />
                                  </node>
                                  <node concept="liA8E" id="1O8DjCqMgfE" role="2OqNvi">
                                    <ref role="37wK5l" to="g6cj:6Hf3JtD50kr" resolve="getLink" />
                                  </node>
                                </node>
                                <node concept="2OwXpG" id="1O8DjCqMgfF" role="2OqNvi">
                                  <ref role="2Oxat5" to="g6cj:65vkPOiCZ8q" resolve="linktype" />
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
    <node concept="2ScWuX" id="44sVLhmXeF8" role="tmbBb">
      <node concept="3clFbS" id="44sVLhmXeF9" role="2VODD2">
        <node concept="3clFbJ" id="61cJvQSHaJg" role="3cqZAp">
          <node concept="3clFbS" id="61cJvQSHaJh" role="3clFbx">
            <node concept="3cpWs6" id="61cJvQSHaJB" role="3cqZAp">
              <node concept="3clFbT" id="61cJvQSHaJD" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="61cJvQSHaJw" role="3clFbw">
            <node concept="2ZW3vV" id="61cJvQSHaJy" role="3fr31v">
              <node concept="3uibUv" id="61cJvQSHaJz" role="2ZW6by">
                <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
              </node>
              <node concept="2OqwBi" id="61cJvQSHaJ$" role="2ZW6bz">
                <node concept="2WthIp" id="61cJvQSHaJ_" role="2Oq$k0" />
                <node concept="1DTwFV" id="61cJvQSHaJA" role="2OqNvi">
                  <ref role="2WH_rO" node="44sVLhmXeF6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2aKxXDo5Ogs" role="3cqZAp">
          <node concept="3cpWsn" id="2aKxXDo5Ogt" role="3cpWs9">
            <property role="TrG5h" value="linktype" />
            <node concept="3uibUv" id="2aKxXDo5Ogu" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
            </node>
            <node concept="2OqwBi" id="2aKxXDo5Ogw" role="33vP2m">
              <node concept="2OqwBi" id="61cJvQSHaKy" role="2Oq$k0">
                <node concept="1eOMI4" id="61cJvQSHaKW" role="2Oq$k0">
                  <node concept="10QFUN" id="61cJvQSHaKX" role="1eOMHV">
                    <node concept="3uibUv" id="61cJvQSHaL0" role="10QFUM">
                      <ref role="3uigEE" to="g6cj:2HP68CXWGD6" resolve="DependencyTreeNode" />
                    </node>
                    <node concept="2OqwBi" id="61cJvQSHaL1" role="10QFUP">
                      <node concept="2WthIp" id="61cJvQSHaL2" role="2Oq$k0" />
                      <node concept="1DTwFV" id="61cJvQSHaL3" role="2OqNvi">
                        <ref role="2WH_rO" node="44sVLhmXeF6" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2aKxXDo5OgB" role="2OqNvi">
                  <ref role="37wK5l" to="g6cj:6Hf3JtD50kr" resolve="getLink" />
                </node>
              </node>
              <node concept="2OwXpG" id="2aKxXDo5OgC" role="2OqNvi">
                <ref role="2Oxat5" to="g6cj:65vkPOiCZ8q" resolve="linktype" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="44sVLhmXeFa" role="3cqZAp">
          <node concept="22lmx$" id="3SjivkpPKC9" role="3clFbG">
            <node concept="22lmx$" id="3SjivkpPKBo" role="3uHU7B">
              <node concept="22lmx$" id="3SjivkpPKAA" role="3uHU7B">
                <node concept="22lmx$" id="2aKxXDo5Oh1" role="3uHU7B">
                  <node concept="3clFbC" id="44sVLhmXeFb" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTxww" role="3uHU7B">
                      <ref role="3cqZAo" node="2aKxXDo5Ogt" resolve="linktype" />
                    </node>
                    <node concept="Rm8GO" id="5HJn1LSQyId" role="3uHU7w">
                      <ref role="Rm8GQ" to="g6cj:6F582lFlfym" resolve="Depends" />
                      <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="2aKxXDo5Ohp" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTxsE" role="3uHU7B">
                      <ref role="3cqZAo" node="2aKxXDo5Ogt" resolve="linktype" />
                    </node>
                    <node concept="Rm8GO" id="5HJn1LSQz4S" role="3uHU7w">
                      <ref role="Rm8GQ" to="g6cj:6F582lFlfyn" resolve="ReexportsDep" />
                      <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3SjivkpPKAY" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTBCH" role="3uHU7B">
                    <ref role="3cqZAo" node="2aKxXDo5Ogt" resolve="linktype" />
                  </node>
                  <node concept="Rm8GO" id="5HJn1LSQzep" role="3uHU7w">
                    <ref role="Rm8GQ" to="g6cj:6F582lFlfyp" resolve="ExtendsLanguage" />
                    <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3SjivkpPKCf" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagT$82" role="3uHU7B">
                  <ref role="3cqZAo" node="2aKxXDo5Ogt" resolve="linktype" />
                </node>
                <node concept="Rm8GO" id="3SjivkpPKBs" role="3uHU7w">
                  <ref role="Rm8GQ" to="g6cj:6F582lFlfyq" resolve="ExportsRuntime" />
                  <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3SjivkpPKCl" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTxco" role="3uHU7B">
                <ref role="3cqZAo" node="2aKxXDo5Ogt" resolve="linktype" />
              </node>
              <node concept="Rm8GO" id="3SjivkpPKCp" role="3uHU7w">
                <ref role="Rm8GQ" to="g6cj:6F582lFlfyo" resolve="UsesLanguage" />
                <ref role="1Px2BO" to="g6cj:6F582lFlfyl" resolve="DependencyUtil.LinkType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6VYoZEg$I$b">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="tC5Ba" id="5HJn1LT79vP">
    <property role="TrG5h" value="ContributeAnalyzeModule" />
    <node concept="ftmFs" id="5HJn1LT79vR" role="ftER_">
      <node concept="tCFHf" id="5HJn1LT79vU" role="ftvYc">
        <ref role="tCJdB" node="4K0u7uB3viW" resolve="AnalyzeModuleDependencies" />
      </node>
    </node>
    <node concept="tT9cl" id="5HJn1LT79vW" role="2f5YQi">
      <ref role="tU$_T" to="tprs:6XVANXZCfq$" resolve="AnalyzeModule" />
      <ref role="2f8Tey" to="tprs:2Y91NYHo6WU" resolve="analyze" />
    </node>
    <node concept="tT9cl" id="5HJn1LT79vY" role="2f5YQi">
      <ref role="tU$_T" to="9oh:222i7iS7htQ" resolve="AnalyzePlatform" />
      <ref role="2f8Tey" to="9oh:7TKpiq3XBP8" resolve="module" />
    </node>
  </node>
  <node concept="312cEu" id="185rHHJdrio">
    <property role="TrG5h" value="DependenciesUtil" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="185rHHJdrip" role="1B3o_S" />
    <node concept="3clFbW" id="185rHHJdriq" role="jymVt">
      <node concept="3cqZAl" id="185rHHJdrir" role="3clF45" />
      <node concept="3Tm6S6" id="1O8DjCqNnVf" role="1B3o_S" />
      <node concept="3clFbS" id="185rHHJdrit" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="1O8DjCqDx6n" role="jymVt" />
    <node concept="2YIFZL" id="6yR8fm$bNTy" role="jymVt">
      <property role="TrG5h" value="openDependenciesTool" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6yR8fm$bNT_" role="3clF47">
        <node concept="3cpWs8" id="6yR8fm$bPft" role="3cqZAp">
          <node concept="3cpWsn" id="6yR8fm$bPfu" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="2OqwBi" id="2Ic4of8Qz9v" role="33vP2m">
              <node concept="37vLTw" id="6yR8fm$bQqE" role="2Oq$k0">
                <ref role="3cqZAo" node="6yR8fm$bQgh" resolve="ideaProject" />
              </node>
              <node concept="LR4U6" id="7TKpiq42c6L" role="2OqNvi">
                <ref role="LR4U5" node="7TKpiq41OHp" resolve="AnalyzeDependencies" />
              </node>
            </node>
            <node concept="1xUVSX" id="7TKpiq42cLe" role="1tU5fm">
              <ref role="1xYkEM" node="7TKpiq41OHp" resolve="AnalyzeDependencies" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6yR8fm$cr_$" role="3cqZAp">
          <node concept="3clFbS" id="6yR8fm$cr_B" role="3clFbx">
            <node concept="3clFbF" id="7TKpiq42u$N" role="3cqZAp">
              <node concept="2OqwBi" id="7TKpiq42uL7" role="3clFbG">
                <node concept="37vLTw" id="7TKpiq42u$L" role="2Oq$k0">
                  <ref role="3cqZAo" node="6yR8fm$bPfu" resolve="tool" />
                </node>
                <node concept="2XshWL" id="7TKpiq42uUz" role="2OqNvi">
                  <ref role="2WH_rO" node="7TKpiq41RDw" resolve="setContent" />
                  <node concept="37vLTw" id="2Ic4of8QIT8" role="2XxRq1">
                    <ref role="3cqZAo" node="6yR8fm$bO$J" resolve="scope" />
                  </node>
                  <node concept="10Nm6u" id="ROdlokFPJ1" role="2XxRq1" />
                  <node concept="3clFbT" id="ROdlokFPPj" role="2XxRq1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6yR8fm$crLJ" role="3clFbw">
            <node concept="10Nm6u" id="6yR8fm$crOB" role="3uHU7w" />
            <node concept="37vLTw" id="6yR8fm$crFb" role="3uHU7B">
              <ref role="3cqZAo" node="6yR8fm$bO$J" resolve="scope" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ef2FgaFcjD" role="3cqZAp">
          <node concept="2OqwBi" id="2ef2FgaFcjE" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTwb_" role="2Oq$k0">
              <ref role="3cqZAo" node="6yR8fm$bPfu" resolve="tool" />
            </node>
            <node concept="liA8E" id="2ef2FgaFcjG" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="37vLTw" id="6yR8fm$bZvb" role="37wK5m">
                <ref role="3cqZAo" node="6yR8fm$bO$R" resolve="setActive" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6yR8fm$bNEE" role="1B3o_S" />
      <node concept="3cqZAl" id="6yR8fm$bNTw" role="3clF45" />
      <node concept="37vLTG" id="6yR8fm$bQgh" role="3clF46">
        <property role="TrG5h" value="ideaProject" />
        <node concept="3uibUv" id="6yR8fm$cPXE" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="6yR8fm$bO$J" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="6yR8fm$bO$I" role="1tU5fm">
          <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
      </node>
      <node concept="37vLTG" id="6yR8fm$bO$R" role="3clF46">
        <property role="TrG5h" value="setActive" />
        <node concept="10P_77" id="6yR8fm$bOHW" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqHXFn" role="jymVt" />
    <node concept="2YIFZL" id="1O8DjCqHX0Z" role="jymVt">
      <property role="TrG5h" value="openDependenciesTool" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1O8DjCqHX10" role="3clF47">
        <node concept="3cpWs8" id="7TKpiq42dtk" role="3cqZAp">
          <node concept="3cpWsn" id="7TKpiq42dtl" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="2OqwBi" id="7TKpiq42dtm" role="33vP2m">
              <node concept="2OqwBi" id="7TKpiq42eqo" role="2Oq$k0">
                <node concept="37vLTw" id="7TKpiq42dtn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8DjCqHYoC" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7TKpiq42f5k" role="2OqNvi">
                  <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
                </node>
              </node>
              <node concept="LR4U6" id="7TKpiq42dto" role="2OqNvi">
                <ref role="LR4U5" node="7TKpiq41OHp" resolve="AnalyzeDependencies" />
              </node>
            </node>
            <node concept="1xUVSX" id="7TKpiq42dtp" role="1tU5fm">
              <ref role="1xYkEM" node="7TKpiq41OHp" resolve="AnalyzeDependencies" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqIbV6" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqIbV7" role="3cpWs9">
            <property role="TrG5h" value="fromScope" />
            <node concept="3uibUv" id="1O8DjCqIbV8" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="2ShNRf" id="1O8DjCqIbV9" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqIbVa" role="2ShVmc">
                <ref role="37wK5l" to="g6cj:1GSGqPi_5T0" resolve="DependencyViewerScope" />
                <node concept="2OqwBi" id="1O8DjCqIbVb" role="37wK5m">
                  <node concept="37vLTw" id="1O8DjCqIbVc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8DjCqHYoC" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="1O8DjCqIbVd" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqIbVe" role="3cqZAp">
          <node concept="2OqwBi" id="1O8DjCqIbVf" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqIbVg" role="2Oq$k0">
              <ref role="3cqZAo" node="1O8DjCqIbV7" resolve="fromScope" />
            </node>
            <node concept="liA8E" id="1O8DjCqIbVh" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:7ctIhG_bUGB" resolve="add" />
              <node concept="37vLTw" id="1O8DjCqIbVi" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqHX1r" resolve="from" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqIc$v" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqIc$w" role="3cpWs9">
            <property role="TrG5h" value="toScope" />
            <node concept="3uibUv" id="1O8DjCqIc$x" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="10Nm6u" id="1O8DjCqIeja" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="1O8DjCqIfto" role="3cqZAp">
          <node concept="3clFbS" id="1O8DjCqIftq" role="3clFbx">
            <node concept="3clFbF" id="1O8DjCqIdbQ" role="3cqZAp">
              <node concept="37vLTI" id="1O8DjCqIdbS" role="3clFbG">
                <node concept="2ShNRf" id="1O8DjCqIc$y" role="37vLTx">
                  <node concept="1pGfFk" id="1O8DjCqIc$z" role="2ShVmc">
                    <ref role="37wK5l" to="g6cj:1GSGqPi_5T0" resolve="DependencyViewerScope" />
                    <node concept="2OqwBi" id="1O8DjCqIc$$" role="37wK5m">
                      <node concept="37vLTw" id="1O8DjCqIc$_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1O8DjCqHYoC" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="1O8DjCqIc$A" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1O8DjCqIdbW" role="37vLTJ">
                  <ref role="3cqZAo" node="1O8DjCqIc$w" resolve="toScope" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1O8DjCqIc$B" role="3cqZAp">
              <node concept="2OqwBi" id="1O8DjCqIc$C" role="3clFbG">
                <node concept="37vLTw" id="1O8DjCqIc$D" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8DjCqIc$w" resolve="toScope" />
                </node>
                <node concept="liA8E" id="1O8DjCqIc$E" role="2OqNvi">
                  <ref role="37wK5l" to="g6cj:7ctIhG_bUGB" resolve="add" />
                  <node concept="37vLTw" id="1O8DjCqIc$F" role="37wK5m">
                    <ref role="3cqZAo" node="1O8DjCqI0qv" resolve="to" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1O8DjCqIhNs" role="3clFbw">
            <node concept="10Nm6u" id="1O8DjCqIi97" role="3uHU7w" />
            <node concept="37vLTw" id="1O8DjCqIg5q" role="3uHU7B">
              <ref role="3cqZAo" node="1O8DjCqI0qv" resolve="to" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TKpiq42vGl" role="3cqZAp">
          <node concept="2OqwBi" id="7TKpiq42vR1" role="3clFbG">
            <node concept="37vLTw" id="7TKpiq42vGj" role="2Oq$k0">
              <ref role="3cqZAo" node="7TKpiq42dtl" resolve="tool" />
            </node>
            <node concept="2XshWL" id="7TKpiq42w6h" role="2OqNvi">
              <ref role="2WH_rO" node="7TKpiq41RDw" resolve="setContent" />
              <node concept="37vLTw" id="1O8DjCqKtOh" role="2XxRq1">
                <ref role="3cqZAo" node="1O8DjCqIbV7" resolve="fromScope" />
              </node>
              <node concept="37vLTw" id="1O8DjCqKv0$" role="2XxRq1">
                <ref role="3cqZAo" node="1O8DjCqIc$w" resolve="toScope" />
              </node>
              <node concept="37vLTw" id="1O8DjCqKw9V" role="2XxRq1">
                <ref role="3cqZAo" node="1O8DjCqJs8L" resolve="meta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1O8DjCqHX1i" role="3cqZAp">
          <node concept="2OqwBi" id="1O8DjCqHX1j" role="3clFbG">
            <node concept="37vLTw" id="1O8DjCqHX1k" role="2Oq$k0">
              <ref role="3cqZAo" node="7TKpiq42dtl" resolve="tool" />
            </node>
            <node concept="liA8E" id="1O8DjCqHX1l" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="3clFbT" id="1O8DjCqJ5V9" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8DjCqHX1n" role="1B3o_S" />
      <node concept="3cqZAl" id="1O8DjCqHX1o" role="3clF45" />
      <node concept="37vLTG" id="1O8DjCqHYoC" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1O8DjCqHYoD" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqMUPC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqHX1r" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="1O8DjCqHZuR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqI1SW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqI0qv" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="1O8DjCqI0X6" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="1O8DjCqI2P4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqJs8L" role="3clF46">
        <property role="TrG5h" value="meta" />
        <node concept="10P_77" id="1O8DjCqJsJl" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="1O8DjCqJc1D" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBWz" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBW$" role="1PaTwD">
            <property role="3oM_SC" value="requires" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBW_" role="1PaTwD">
            <property role="3oM_SC" value="EDT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1O8DjCqHdOt" role="jymVt" />
    <node concept="2YIFZL" id="1O8DjCqHekY" role="jymVt">
      <property role="TrG5h" value="hasDependenciesToShow" />
      <node concept="3clFbS" id="1O8DjCqE1LU" role="3clF47">
        <node concept="3cpWs8" id="1O8DjCqEgRM" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqEgRN" role="3cpWs9">
            <property role="TrG5h" value="scopeFrom" />
            <node concept="3uibUv" id="1O8DjCqEgRO" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="2ShNRf" id="1O8DjCqEiDA" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqEjKa" role="2ShVmc">
                <ref role="37wK5l" to="g6cj:1GSGqPi_5T0" resolve="DependencyViewerScope" />
                <node concept="2OqwBi" id="1O8DjCqEm4T" role="37wK5m">
                  <node concept="37vLTw" id="1O8DjCqEl_D" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8DjCqEkcA" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="1O8DjCqEnE$" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5v6_5mQnO84" role="3cqZAp">
          <node concept="2OqwBi" id="5v6_5mQnOnG" role="3clFbG">
            <node concept="37vLTw" id="5v6_5mQnO82" role="2Oq$k0">
              <ref role="3cqZAo" node="1O8DjCqEgRN" resolve="scopeFrom" />
            </node>
            <node concept="liA8E" id="5v6_5mQnOYu" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:7ctIhG_bUGB" resolve="add" />
              <node concept="37vLTw" id="5v6_5mQnPwZ" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqE2qR" resolve="from" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqEo9w" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqEo9x" role="3cpWs9">
            <property role="TrG5h" value="scopeTo" />
            <node concept="3uibUv" id="1O8DjCqEo9y" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="2ShNRf" id="1O8DjCqEo9z" role="33vP2m">
              <node concept="1pGfFk" id="1O8DjCqEo9$" role="2ShVmc">
                <ref role="37wK5l" to="g6cj:1GSGqPi_5T0" resolve="DependencyViewerScope" />
                <node concept="2OqwBi" id="1O8DjCqEo9_" role="37wK5m">
                  <node concept="37vLTw" id="1O8DjCqEo9A" role="2Oq$k0">
                    <ref role="3cqZAo" node="1O8DjCqEkcA" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="1O8DjCqEo9B" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5v6_5mQnQsY" role="3cqZAp">
          <node concept="2OqwBi" id="5v6_5mQnQZi" role="3clFbG">
            <node concept="37vLTw" id="5v6_5mQnQsW" role="2Oq$k0">
              <ref role="3cqZAo" node="1O8DjCqEo9x" resolve="scopeTo" />
            </node>
            <node concept="liA8E" id="5v6_5mQnR8z" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:7ctIhG_bUGB" resolve="add" />
              <node concept="37vLTw" id="5v6_5mQnRDL" role="37wK5m">
                <ref role="3cqZAo" node="1O8DjCqE2Sw" resolve="to" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1O8DjCqG54J" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXorv_" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXorvA" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvB" role="1PaTwD">
              <property role="3oM_SC" value="would" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvC" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvD" role="1PaTwD">
              <property role="3oM_SC" value="great" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvE" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvF" role="1PaTwD">
              <property role="3oM_SC" value="stop" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvG" role="1PaTwD">
              <property role="3oM_SC" value="after" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvH" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvI" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvJ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvK" role="1PaTwD">
              <property role="3oM_SC" value="save" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvL" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="ATZLwXorvM" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1O8DjCqG20H" role="3cqZAp">
          <node concept="3cpWsn" id="1O8DjCqG20I" role="3cpWs9">
            <property role="TrG5h" value="refsBetweenScopes" />
            <node concept="3uibUv" id="1O8DjCqG200" role="1tU5fm">
              <ref role="3uigEE" to="9erk:~SearchResults" resolve="SearchResults" />
              <node concept="3uibUv" id="1O8DjCqG203" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1O8DjCqG20J" role="33vP2m">
              <node concept="2ShNRf" id="1O8DjCqG20K" role="2Oq$k0">
                <node concept="1pGfFk" id="1O8DjCqG20L" role="2ShVmc">
                  <ref role="37wK5l" to="g6cj:5v6_5mQkoll" resolve="ReferencesFinder" />
                  <node concept="37vLTw" id="5v6_5mQl2pm" role="37wK5m">
                    <ref role="3cqZAo" node="1O8DjCqEgRN" resolve="scopeFrom" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1O8DjCqG20M" role="2OqNvi">
                <ref role="37wK5l" to="g6cj:7ctIhG_bUzn" resolve="getRefsBetweenScopes" />
                <node concept="37vLTw" id="1O8DjCqG20P" role="37wK5m">
                  <ref role="3cqZAo" node="1O8DjCqEgRN" resolve="scopeFrom" />
                </node>
                <node concept="37vLTw" id="1O8DjCqG20T" role="37wK5m">
                  <ref role="3cqZAo" node="1O8DjCqEo9x" resolve="scopeTo" />
                </node>
                <node concept="2ShNRf" id="1O8DjCqG20U" role="37wK5m">
                  <node concept="1pGfFk" id="1O8DjCqG20V" role="2ShVmc">
                    <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1O8DjCqE4xk" role="3cqZAp">
          <node concept="3fqX7Q" id="1O8DjCqG3QL" role="3cqZAk">
            <node concept="2OqwBi" id="1O8DjCqG3QN" role="3fr31v">
              <node concept="2OqwBi" id="1O8DjCqG3QO" role="2Oq$k0">
                <node concept="37vLTw" id="1O8DjCqG3QP" role="2Oq$k0">
                  <ref role="3cqZAo" node="1O8DjCqG20I" resolve="refsBetweenScopes" />
                </node>
                <node concept="liA8E" id="1O8DjCqG3QQ" role="2OqNvi">
                  <ref role="37wK5l" to="9erk:~SearchResults.getSearchResults2()" resolve="getSearchResults2" />
                </node>
              </node>
              <node concept="liA8E" id="1O8DjCqG3QR" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqEkcA" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1O8DjCqEkD8" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqE2qR" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="1O8DjCqE2qQ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="1O8DjCqE2Sw" role="3clF46">
        <property role="TrG5h" value="to" />
        <node concept="3uibUv" id="1O8DjCqE3c5" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="10P_77" id="1O8DjCqDUAn" role="3clF45" />
      <node concept="P$JXv" id="1O8DjCqEe$p" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHsBWA" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBWB" role="1PaTwD">
            <property role="3oM_SC" value="requires" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWC" role="1PaTwD">
            <property role="3oM_SC" value="model" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWD" role="1PaTwD">
            <property role="3oM_SC" value="read" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBWE" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBWF" role="1PaTwD">
            <property role="3oM_SC" value="at" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWG" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWH" role="1PaTwD">
            <property role="3oM_SC" value="moment," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWI" role="1PaTwD">
            <property role="3oM_SC" value="may" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWJ" role="1PaTwD">
            <property role="3oM_SC" value="run" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWK" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWL" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWM" role="1PaTwD">
            <property role="3oM_SC" value="noticeable" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWN" role="1PaTwD">
            <property role="3oM_SC" value="time" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWO" role="1PaTwD">
            <property role="3oM_SC" value="without" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWP" role="1PaTwD">
            <property role="3oM_SC" value="progress" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWQ" role="1PaTwD">
            <property role="3oM_SC" value="reporting." />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWR" role="1PaTwD">
            <property role="3oM_SC" value="I'd" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWS" role="1PaTwD">
            <property role="3oM_SC" value="like" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWT" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWU" role="1PaTwD">
            <property role="3oM_SC" value="fix" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWV" role="1PaTwD">
            <property role="3oM_SC" value="this" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWW" role="1PaTwD">
            <property role="3oM_SC" value="by" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWX" role="1PaTwD">
            <property role="3oM_SC" value="stop" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWY" role="1PaTwD">
            <property role="3oM_SC" value="fast" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBWZ" role="1PaTwD">
            <property role="3oM_SC" value="once" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX0" role="1PaTwD">
            <property role="3oM_SC" value="any" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX1" role="1PaTwD">
            <property role="3oM_SC" value="external" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX2" role="1PaTwD">
            <property role="3oM_SC" value="ref" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX3" role="1PaTwD">
            <property role="3oM_SC" value="found," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX4" role="1PaTwD">
            <property role="3oM_SC" value="but" />
          </node>
        </node>
        <node concept="1PaTwC" id="1E1X3WHsBX5" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHsBX6" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX7" role="1PaTwD">
            <property role="3oM_SC" value="I" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX8" role="1PaTwD">
            <property role="3oM_SC" value="don't" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBX9" role="1PaTwD">
            <property role="3oM_SC" value="manage" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXa" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXb" role="1PaTwD">
            <property role="3oM_SC" value="do" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXc" role="1PaTwD">
            <property role="3oM_SC" value="that," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXd" role="1PaTwD">
            <property role="3oM_SC" value="perhaps," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXe" role="1PaTwD">
            <property role="3oM_SC" value="shall" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXf" role="1PaTwD">
            <property role="3oM_SC" value="pass" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXg" role="1PaTwD">
            <property role="3oM_SC" value="ProgressMonitor" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHsBXh" role="1PaTwD">
            <property role="3oM_SC" value="here" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1O8DjCqDT7d" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6yR8fm$cOWH" role="jymVt" />
  </node>
  <node concept="sE7Ow" id="222i7iS8zo1">
    <property role="TrG5h" value="AnalyzeModelDependencies" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Analyze Model Dependencies" />
    <property role="1rBW0U" value="true" />
    <node concept="2XrIbr" id="3EnpNH2yrIP" role="32lrUH">
      <property role="TrG5h" value="computeScope" />
      <node concept="3uibUv" id="3EnpNH2yvDk" role="3clF45">
        <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
      </node>
      <node concept="3clFbS" id="3EnpNH2yrIU" role="3clF47">
        <node concept="3cpWs8" id="1nctWZUQT$Q" role="3cqZAp">
          <node concept="3cpWsn" id="1nctWZUQT$R" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="1nctWZUQT$M" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="1nctWZUQT$S" role="33vP2m">
              <node concept="liA8E" id="1nctWZUQT$T" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
              <node concept="2OqwBi" id="1nctWZUQT$U" role="2Oq$k0">
                <node concept="2WthIp" id="1nctWZUQT$V" role="2Oq$k0" />
                <node concept="1DTwFV" id="1nctWZUQT$W" role="2OqNvi">
                  <ref role="2WH_rO" node="222i7iS8zo6" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3EnpNH2yx7i" role="3cqZAp">
          <node concept="3cpWsn" id="3EnpNH2yx7j" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="3EnpNH2yx7k" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="2ShNRf" id="3EnpNH2yx7l" role="33vP2m">
              <node concept="1pGfFk" id="3EnpNH2yx7m" role="2ShVmc">
                <ref role="37wK5l" to="g6cj:1GSGqPi_5T0" resolve="DependencyViewerScope" />
                <node concept="37vLTw" id="1nctWZUQWoV" role="37wK5m">
                  <ref role="3cqZAo" node="1nctWZUQT$R" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3EnpNH2yx7n" role="3cqZAp">
          <node concept="2OqwBi" id="3EnpNH2yx7o" role="3clFbG">
            <node concept="liA8E" id="3EnpNH2yx7p" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="3EnpNH2yx7q" role="37wK5m">
                <node concept="3clFbS" id="3EnpNH2yx7r" role="1bW5cS">
                  <node concept="3clFbJ" id="3EnpNH2yx7s" role="3cqZAp">
                    <node concept="3clFbS" id="3EnpNH2yx7t" role="3clFbx">
                      <node concept="1DcWWT" id="3EnpNH2yx7u" role="3cqZAp">
                        <node concept="3clFbS" id="3EnpNH2yx7v" role="2LFqv$">
                          <node concept="3clFbF" id="3EnpNH2yx7w" role="3cqZAp">
                            <node concept="2OqwBi" id="3EnpNH2yx7x" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTspP" role="2Oq$k0">
                                <ref role="3cqZAo" node="3EnpNH2yx7j" resolve="scope" />
                              </node>
                              <node concept="liA8E" id="3EnpNH2yx7z" role="2OqNvi">
                                <ref role="37wK5l" to="g6cj:7ctIhG_bUGM" resolve="add" />
                                <node concept="37vLTw" id="3GM_nagTuMW" role="37wK5m">
                                  <ref role="3cqZAo" node="3EnpNH2yx7_" resolve="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="3EnpNH2yx7_" role="1Duv9x">
                          <property role="TrG5h" value="model" />
                          <node concept="3uibUv" id="3EnpNH2yx7A" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3EnpNH2yx7B" role="1DdaDG">
                          <node concept="2WthIp" id="3EnpNH2yx7C" role="2Oq$k0" />
                          <node concept="1DTwFV" id="3EnpNH2yx7D" role="2OqNvi">
                            <ref role="2WH_rO" node="222i7iS8zo4" resolve="models" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3EnpNH2yx7E" role="3clFbw">
                      <node concept="10Nm6u" id="3EnpNH2yx7F" role="3uHU7w" />
                      <node concept="2OqwBi" id="3EnpNH2yx7G" role="3uHU7B">
                        <node concept="2WthIp" id="3EnpNH2yx7H" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3EnpNH2yx7I" role="2OqNvi">
                          <ref role="2WH_rO" node="222i7iS8zo4" resolve="models" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3EnpNH2yx7J" role="3cqZAp">
                    <node concept="3clFbS" id="3EnpNH2yx7K" role="3clFbx">
                      <node concept="1DcWWT" id="3EnpNH2yx7L" role="3cqZAp">
                        <node concept="3clFbS" id="3EnpNH2yx7M" role="2LFqv$">
                          <node concept="3clFbF" id="3EnpNH2yx7N" role="3cqZAp">
                            <node concept="2OqwBi" id="3EnpNH2yx7O" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagT_IX" role="2Oq$k0">
                                <ref role="3cqZAo" node="3EnpNH2yx7j" resolve="scope" />
                              </node>
                              <node concept="liA8E" id="3EnpNH2yx7Q" role="2OqNvi">
                                <ref role="37wK5l" to="g6cj:7ctIhG_bUGB" resolve="add" />
                                <node concept="37vLTw" id="3GM_nagTvdy" role="37wK5m">
                                  <ref role="3cqZAo" node="3EnpNH2yx7S" resolve="module" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="3EnpNH2yx7S" role="1Duv9x">
                          <property role="TrG5h" value="module" />
                          <node concept="3uibUv" id="3EnpNH2yx7T" role="1tU5fm">
                            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3EnpNH2yx7U" role="1DdaDG">
                          <node concept="2WthIp" id="3EnpNH2yx7V" role="2Oq$k0" />
                          <node concept="1DTwFV" id="3EnpNH2yx7W" role="2OqNvi">
                            <ref role="2WH_rO" node="222i7iS8zo5" resolve="modules" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3EnpNH2yx7X" role="3clFbw">
                      <node concept="10Nm6u" id="3EnpNH2yx7Y" role="3uHU7w" />
                      <node concept="2OqwBi" id="3EnpNH2yx7Z" role="3uHU7B">
                        <node concept="2WthIp" id="3EnpNH2yx80" role="2Oq$k0" />
                        <node concept="1DTwFV" id="3EnpNH2yx81" role="2OqNvi">
                          <ref role="2WH_rO" node="222i7iS8zo5" resolve="modules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3EnpNH2yx82" role="3cqZAp">
                    <node concept="3clFbS" id="3EnpNH2yx83" role="3clFbx">
                      <node concept="3cpWs8" id="3EnpNH2yx84" role="3cqZAp">
                        <node concept="3cpWsn" id="3EnpNH2yx85" role="3cpWs9">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="3EnpNH2yx86" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2EnYce" id="3EnpNH2yx87" role="33vP2m">
                            <node concept="2OqwBi" id="3EnpNH2yx88" role="2Oq$k0">
                              <node concept="2WthIp" id="3EnpNH2yx89" role="2Oq$k0" />
                              <node concept="1DTwFV" id="3EnpNH2yx8a" role="2OqNvi">
                                <ref role="2WH_rO" node="222i7iS8zo8" resolve="node" />
                              </node>
                            </node>
                            <node concept="liA8E" id="3EnpNH2yx8b" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot()" resolve="getContainingRoot" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3EnpNH2yx8c" role="3cqZAp">
                        <node concept="3clFbS" id="3EnpNH2yx8d" role="3clFbx">
                          <node concept="3clFbF" id="3EnpNH2yx8e" role="3cqZAp">
                            <node concept="2OqwBi" id="3EnpNH2yx8f" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTsSF" role="2Oq$k0">
                                <ref role="3cqZAo" node="3EnpNH2yx7j" resolve="scope" />
                              </node>
                              <node concept="liA8E" id="3EnpNH2yx8h" role="2OqNvi">
                                <ref role="37wK5l" to="g6cj:7ctIhG_bUH5" resolve="add" />
                                <node concept="37vLTw" id="3GM_nagTxJs" role="37wK5m">
                                  <ref role="3cqZAo" node="3EnpNH2yx85" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="3EnpNH2yx8j" role="3clFbw">
                          <node concept="10Nm6u" id="3EnpNH2yx8k" role="3uHU7w" />
                          <node concept="37vLTw" id="3GM_nagTB5o" role="3uHU7B">
                            <ref role="3cqZAo" node="3EnpNH2yx85" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3EnpNH2yx8m" role="3clFbw">
                      <node concept="37vLTw" id="3GM_nagT_mj" role="2Oq$k0">
                        <ref role="3cqZAo" node="3EnpNH2yx7j" resolve="scope" />
                      </node>
                      <node concept="liA8E" id="3EnpNH2yx8o" role="2OqNvi">
                        <ref role="37wK5l" to="g6cj:7ctIhG_bUIh" resolve="isEmpty" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3EnpNH2yx8p" role="2Oq$k0">
              <node concept="liA8E" id="3EnpNH2yx8q" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="1nctWZUQT$X" role="2Oq$k0">
                <ref role="3cqZAo" node="1nctWZUQT$R" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3EnpNH2yyMJ" role="3cqZAp">
          <node concept="37vLTw" id="3EnpNH2yyMI" role="3clFbG">
            <ref role="3cqZAo" node="3EnpNH2yx7j" resolve="scope" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="441vB8LS_r$" role="1B3o_S" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGA$" role="3Uehp1">
      <node concept="10M0yZ" id="222i7iS8zo3" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Toolwindows" resolve="AllIcons.Toolwindows" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Toolwindows.ToolWindowInspection" resolve="ToolWindowInspection" />
      </node>
    </node>
    <node concept="1DS2jV" id="222i7iS8zo4" role="1NuT2Z">
      <property role="TrG5h" value="models" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODELS" resolve="MODELS" />
    </node>
    <node concept="1DS2jV" id="222i7iS8zo5" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
    </node>
    <node concept="1DS2jV" id="222i7iS8zo6" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="222i7iS8zo7" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="222i7iS8zo8" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
    </node>
    <node concept="1DS2jV" id="222i7iS8zo9" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="222i7iS8zoa" role="1oa70y" />
    </node>
    <node concept="tnohg" id="222i7iS8zob" role="tncku">
      <node concept="3clFbS" id="222i7iS8zoc" role="2VODD2">
        <node concept="3cpWs8" id="222i7iS8zod" role="3cqZAp">
          <node concept="3cpWsn" id="222i7iS8zoe" role="3cpWs9">
            <property role="TrG5h" value="scope" />
            <node concept="3uibUv" id="222i7iS8zof" role="1tU5fm">
              <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
            </node>
            <node concept="2OqwBi" id="3EnpNH2z89h" role="33vP2m">
              <node concept="2WthIp" id="3EnpNH2z89k" role="2Oq$k0" />
              <node concept="2XshWL" id="3EnpNH2z89m" role="2OqNvi">
                <ref role="2WH_rO" node="3EnpNH2yrIP" resolve="computeScope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="222i7iS8zpt" role="3cqZAp">
          <node concept="3clFbS" id="222i7iS8zpu" role="3clFbx">
            <node concept="3cpWs6" id="222i7iS8zpv" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="222i7iS8zpw" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTtZM" role="2Oq$k0">
              <ref role="3cqZAo" node="222i7iS8zoe" resolve="scope" />
            </node>
            <node concept="liA8E" id="222i7iS8zpy" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:7ctIhG_bUIh" resolve="isEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="222i7iS8zpz" role="3cqZAp">
          <node concept="2YIFZM" id="7TKpiq3XkRZ" role="3clFbG">
            <ref role="37wK5l" node="6yR8fm$bNTy" resolve="openDependenciesTool" />
            <ref role="1Pybhc" node="185rHHJdrio" resolve="DependenciesUtil" />
            <node concept="2OqwBi" id="222i7iS8zp_" role="37wK5m">
              <node concept="2WthIp" id="222i7iS8zpA" role="2Oq$k0" />
              <node concept="1DTwFV" id="222i7iS8zpB" role="2OqNvi">
                <ref role="2WH_rO" node="222i7iS8zo9" resolve="ideaProject" />
              </node>
            </node>
            <node concept="37vLTw" id="222i7iS8zpC" role="37wK5m">
              <ref role="3cqZAo" node="222i7iS8zoe" resolve="scope" />
            </node>
            <node concept="3clFbT" id="222i7iS8zpD" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3EnpNH2yoC4" role="tmbBb">
      <node concept="3clFbS" id="3EnpNH2yr0$" role="2VODD2">
        <node concept="3clFbF" id="3EnpNH2zbjW" role="3cqZAp">
          <node concept="3fqX7Q" id="3EnpNH2zbjU" role="3clFbG">
            <node concept="2OqwBi" id="3EnpNH2z9XK" role="3fr31v">
              <node concept="liA8E" id="3EnpNH2z9XM" role="2OqNvi">
                <ref role="37wK5l" to="g6cj:7ctIhG_bUIh" resolve="isEmpty" />
              </node>
              <node concept="2OqwBi" id="3EnpNH2zanX" role="2Oq$k0">
                <node concept="2WthIp" id="3EnpNH2zao0" role="2Oq$k0" />
                <node concept="2XshWL" id="3EnpNH2zao2" role="2OqNvi">
                  <ref role="2WH_rO" node="3EnpNH2yrIP" resolve="computeScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7TKpiq3XAPs">
    <property role="TrG5h" value="ContributeAnalyzeModel" />
    <node concept="ftmFs" id="7TKpiq3XARc" role="ftER_">
      <node concept="tCFHf" id="7TKpiq3XARp" role="ftvYc">
        <ref role="tCJdB" node="222i7iS8zo1" resolve="AnalyzeModelDependencies" />
      </node>
    </node>
    <node concept="tT9cl" id="7TKpiq3XAR_" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Hgq" resolve="ModelActions" />
      <ref role="2f8Tey" to="tprs:7TKpiq3XB37" resolve="analyze" />
    </node>
    <node concept="tT9cl" id="7TKpiq3XBcr" role="2f5YQi">
      <ref role="tU$_T" to="9oh:222i7iS7htQ" resolve="AnalyzePlatform" />
      <ref role="2f8Tey" to="9oh:7TKpiq3XBP$" resolve="model" />
    </node>
    <node concept="tT9cl" id="7TKpiq3XBb4" role="2f5YQi">
      <ref role="tU$_T" to="tprs:6XVANXZCfq$" resolve="AnalyzeModule" />
      <ref role="2f8Tey" to="tprs:5HJn1LT79wn" resolve="other" />
    </node>
  </node>
  <node concept="sEfby" id="7TKpiq41OHp">
    <property role="TrG5h" value="AnalyzeDependencies" />
    <property role="2XNbzY" value="Dependencies Viewer" />
    <node concept="2BZ0e9" id="7TKpiq41SPN" role="2XNbBz">
      <property role="TrG5h" value="myDependenciesPanel" />
      <node concept="3Tm6S6" id="7TKpiq41SPO" role="1B3o_S" />
      <node concept="3uibUv" id="7TKpiq41Tct" role="1tU5fm">
        <ref role="3uigEE" to="g6cj:7ctIhG_bUoJ" resolve="DependenciesPanel" />
      </node>
    </node>
    <node concept="2BZ0e9" id="7TKpiq423uu" role="2XNbBz">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="7TKpiq423uv" role="1B3o_S" />
      <node concept="3uibUv" id="7TKpiq424aj" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2UmK3q" id="7TKpiq41OHq" role="2Um5zG">
      <node concept="3clFbS" id="7TKpiq41OHr" role="2VODD2">
        <node concept="3clFbF" id="7TKpiq41SE0" role="3cqZAp">
          <node concept="2OqwBi" id="7TKpiq41SDU" role="3clFbG">
            <node concept="2WthIp" id="7TKpiq41SDX" role="2Oq$k0" />
            <node concept="2XshWL" id="7TKpiq41SDZ" role="2OqNvi">
              <ref role="2WH_rO" node="7TKpiq41S0O" resolve="mainPanelLazy" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="6S5fI02CGA_" role="1nVCmq">
      <node concept="10M0yZ" id="4mt8TTpwLCW" role="1GtWoa">
        <ref role="3cqZAo" to="l7us:~MPSIcons$ToolWindows.DependencyAnalyzer" resolve="DependencyAnalyzer" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$ToolWindows" resolve="MPSIcons.ToolWindows" />
      </node>
    </node>
    <node concept="2xpOpl" id="7TKpiq41QYo" role="uR5co">
      <node concept="3clFbS" id="7TKpiq41QYp" role="2VODD2">
        <node concept="3clFbJ" id="7TKpiq41Tkv" role="3cqZAp">
          <node concept="3clFbS" id="7TKpiq41Tkw" role="3clFbx">
            <node concept="3clFbF" id="7TKpiq41Tkx" role="3cqZAp">
              <node concept="2OqwBi" id="7TKpiq41Tky" role="3clFbG">
                <node concept="2OqwBi" id="7TKpiq41TqF" role="2Oq$k0">
                  <node concept="2WthIp" id="7TKpiq41TqI" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7TKpiq41TqK" role="2OqNvi">
                    <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
                  </node>
                </node>
                <node concept="liA8E" id="7TKpiq41Tk$" role="2OqNvi">
                  <ref role="37wK5l" to="g6cj:3JwmKU$OECe" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7TKpiq41Tk_" role="3cqZAp">
              <node concept="37vLTI" id="7TKpiq41TkA" role="3clFbG">
                <node concept="10Nm6u" id="7TKpiq41TkB" role="37vLTx" />
                <node concept="2OqwBi" id="7TKpiq41TuQ" role="37vLTJ">
                  <node concept="2WthIp" id="7TKpiq41TuT" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7TKpiq41TuV" role="2OqNvi">
                    <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7TKpiq41TkD" role="3clFbw">
            <node concept="10Nm6u" id="7TKpiq41TkE" role="3uHU7w" />
            <node concept="2OqwBi" id="7TKpiq41ToI" role="3uHU7B">
              <node concept="2WthIp" id="7TKpiq41ToL" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7TKpiq41ToN" role="2OqNvi">
                <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7TKpiq41RDw" role="2XNbBy">
      <property role="TrG5h" value="setContent" />
      <node concept="37vLTG" id="7TKpiq429ej" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="7TKpiq429ek" role="1tU5fm">
          <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="7TKpiq429el" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7TKpiq429em" role="3clF46">
        <property role="TrG5h" value="limitTo" />
        <node concept="3uibUv" id="7TKpiq429en" role="1tU5fm">
          <ref role="3uigEE" to="g6cj:7ctIhG_bUEK" resolve="DependencyViewerScope" />
        </node>
        <node concept="2AHcQZ" id="7TKpiq429eo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="7TKpiq429ep" role="3clF46">
        <property role="TrG5h" value="meta" />
        <node concept="10P_77" id="7TKpiq429eq" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7TKpiq41RWH" role="3clF45" />
      <node concept="3clFbS" id="7TKpiq41RDy" role="3clF47">
        <node concept="3clFbF" id="7TKpiq429A9" role="3cqZAp">
          <node concept="2OqwBi" id="7TKpiq42a77" role="3clFbG">
            <node concept="2OqwBi" id="7TKpiq429A3" role="2Oq$k0">
              <node concept="2WthIp" id="7TKpiq429A6" role="2Oq$k0" />
              <node concept="2XshWL" id="7TKpiq429A8" role="2OqNvi">
                <ref role="2WH_rO" node="7TKpiq41S0O" resolve="mainPanelLazy" />
              </node>
            </node>
            <node concept="liA8E" id="7TKpiq42aL7" role="2OqNvi">
              <ref role="37wK5l" to="g6cj:1O8DjCqWn5e" resolve="resetContent" />
              <node concept="37vLTw" id="7TKpiq42aWO" role="37wK5m">
                <ref role="3cqZAo" node="7TKpiq429ej" resolve="from" />
              </node>
              <node concept="37vLTw" id="7TKpiq42aWP" role="37wK5m">
                <ref role="3cqZAo" node="7TKpiq429em" resolve="limitTo" />
              </node>
              <node concept="37vLTw" id="7TKpiq42aWQ" role="37wK5m">
                <ref role="3cqZAo" node="7TKpiq429ep" resolve="meta" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="7TKpiq41S0O" role="2XNbBy">
      <property role="TrG5h" value="mainPanelLazy" />
      <node concept="3uibUv" id="7TKpiq41Sic" role="3clF45">
        <ref role="3uigEE" to="g6cj:7ctIhG_bUoJ" resolve="DependenciesPanel" />
      </node>
      <node concept="3clFbS" id="7TKpiq41S0Q" role="3clF47">
        <node concept="3clFbJ" id="7TKpiq41TEJ" role="3cqZAp">
          <node concept="3clFbS" id="7TKpiq41TEK" role="3clFbx">
            <node concept="3clFbF" id="7TKpiq41TEL" role="3cqZAp">
              <node concept="37vLTI" id="7TKpiq41TEM" role="3clFbG">
                <node concept="2OqwBi" id="7TKpiq41U0r" role="37vLTJ">
                  <node concept="2WthIp" id="7TKpiq41U0u" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7TKpiq41U0w" role="2OqNvi">
                    <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7TKpiq41TEO" role="37vLTx">
                  <node concept="1pGfFk" id="7TKpiq41TEP" role="2ShVmc">
                    <ref role="37wK5l" to="g6cj:7ctIhG_bUtM" resolve="DependenciesPanel" />
                    <node concept="2WthIp" id="7TKpiq421fQ" role="37wK5m" />
                    <node concept="2OqwBi" id="7TKpiq428DP" role="37wK5m">
                      <node concept="2WthIp" id="7TKpiq428DS" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="7TKpiq428DU" role="2OqNvi">
                        <ref role="2WH_rO" node="7TKpiq423uu" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7TKpiq41TET" role="3clFbw">
            <node concept="10Nm6u" id="7TKpiq41TEU" role="3uHU7w" />
            <node concept="2OqwBi" id="7TKpiq41TV0" role="3uHU7B">
              <node concept="2WthIp" id="7TKpiq41TV3" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7TKpiq41TV5" role="2OqNvi">
                <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7TKpiq41TEW" role="3cqZAp">
          <node concept="2OqwBi" id="7TKpiq41U32" role="3clFbG">
            <node concept="2WthIp" id="7TKpiq41U35" role="2Oq$k0" />
            <node concept="2BZ7hE" id="7TKpiq41U37" role="2OqNvi">
              <ref role="2WH_rO" node="7TKpiq41SPN" resolve="myDependenciesPanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7TKpiq41S2n" role="1B3o_S" />
    </node>
    <node concept="2xpIHi" id="7TKpiq423q7" role="uR5cp">
      <node concept="3clFbS" id="7TKpiq423q8" role="2VODD2">
        <node concept="3clFbF" id="7TKpiq4279j" role="3cqZAp">
          <node concept="37vLTI" id="7TKpiq4285r" role="3clFbG">
            <node concept="2OqwBi" id="7TKpiq4279d" role="37vLTJ">
              <node concept="2WthIp" id="7TKpiq4279g" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7TKpiq4279i" role="2OqNvi">
                <ref role="2WH_rO" node="7TKpiq423uu" resolve="myProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="7TKpiq428ed" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProjectOrFail(com.intellij.openapi.project.Project)" resolve="fromIdeaProjectOrFail" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="7TKpiq428fn" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

