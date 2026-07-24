<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01820806-c285-4459-a416-37590f94adc8(jetbrains.mps.debugger.api.ui.actions)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="dp1x" ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="b8lf" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.selection(MPS.Editor/)" />
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="lt1n" ref="r:4a0301da-c964-420c-8e35-486843de9df5(jetbrains.mps.debug.api.evaluation)" />
    <import index="qiil" ref="r:16e1d5b7-80ca-4570-9d1a-1cf2ce305e08(jetbrains.mps.debugger.api.ui)" />
    <import index="qst8" ref="r:e8d15a56-f89d-47fc-ac9f-8a35d3539ac3(jetbrains.mps.debugger.api.ui.breakpoints)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="rw00" ref="r:d910d08e-4a00-41f9-ac8b-b7c374586874(jetbrains.mps.debug.api.breakpoints)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="4jgh" ref="r:e85e5755-b656-44cc-a19b-af0b99b30b13(jetbrains.mps.debugger.core.breakpoints)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="5023285075122009364" name="jetbrains.mps.lang.plugin.structure.IdeaInitializerDescriptor" flags="ng" index="9BnSX">
        <property id="5023285075122009369" name="version" index="9BnSK" />
        <property id="5023285075122009368" name="descripttion" index="9BnSL" />
        <property id="5023285075122009371" name="vendor" index="9BnSM" />
        <property id="5023285075122009373" name="ideaVersion" index="9BnSO" />
        <property id="5023285075122009372" name="vendorUrl" index="9BnSP" />
        <property id="5023285075122009366" name="id" index="9BnSZ" />
        <property id="1573568368168371217" name="handleErrors" index="3FCvg6" />
      </concept>
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207145360364" name="jetbrains.mps.lang.plugin.structure.BuildGroupBlock" flags="in" index="fu6FP" />
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
        <property id="6785623076777470797" name="change" index="3hacHL" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <property id="4692598989365753297" name="updateInBackground" index="1rBW0U" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
        <child id="8976425910813834639" name="icon" index="3Uehp1" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
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
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <property id="8646726056720906098" name="isPluginXmlKeymap" index="Z2u3V" />
        <property id="1562714432501166281" name="keymap" index="Zd52Q" />
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="1203680534665" name="jetbrains.mps.lang.plugin.structure.GroupAnchor" flags="ng" index="10WQ6h" />
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="ngI" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204383956737" name="jetbrains.mps.lang.plugin.structure.InterfaceGroup" flags="ng" index="1ESbSp">
        <child id="1206193920040" name="groupID" index="3mKD$K" />
      </concept>
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ngI" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ngI" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
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
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="sE7Ow" id="68aArIS9HCw">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="EvaluateExpression" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="tool" />
    <property role="2uzpH1" value="Evaluate Expression" />
    <property role="1teQrl" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAe" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphFK9T" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.EvaluateExpression" resolve="EvaluateExpression" />
      </node>
    </node>
    <node concept="1DS2jV" id="4pq21WIfsXi" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4pq21WIfsXj" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="49S2960UJSt" role="1NuT2Z">
      <property role="TrG5h" value="component" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
    </node>
    <node concept="tnohg" id="68aArIS9HCy" role="tncku">
      <node concept="3clFbS" id="68aArIS9HCz" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HC$" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HC_" role="3cpWs9">
            <property role="TrG5h" value="evaluationProvider" />
            <node concept="3uibUv" id="68aArIS9HCA" role="1tU5fm">
              <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
            </node>
            <node concept="2YIFZM" id="68UFb7YvEXe" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
              <node concept="tl45R" id="68UFb7YvEXf" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="68aArIS9HCD" role="3cqZAp">
          <node concept="3clFbS" id="68aArIS9HCE" role="3clFbx">
            <node concept="3cpWs8" id="2k1FxHpGmbq" role="3cqZAp">
              <node concept="3cpWsn" id="2k1FxHpGmbr" role="3cpWs9">
                <property role="TrG5h" value="nodePointers" />
                <node concept="2ShNRf" id="2k1FxHpGmbv" role="33vP2m">
                  <node concept="Tc6Ow" id="2k1FxHpGmbw" role="2ShVmc">
                    <node concept="3uibUv" id="76rSC49gkFW" role="HW$YZ">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                </node>
                <node concept="_YKpA" id="2k1FxHpGmbs" role="1tU5fm">
                  <node concept="3uibUv" id="2WLsYe1HMhu" role="_ZDj9">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="49S2960ULX3" role="3cqZAp">
              <node concept="3clFbS" id="49S2960ULX4" role="3clFbx">
                <node concept="3cpWs8" id="49S2960UTEV" role="3cqZAp">
                  <node concept="3cpWsn" id="49S2960UTEW" role="3cpWs9">
                    <property role="TrG5h" value="selection" />
                    <node concept="3uibUv" id="76rSC49glaz" role="1tU5fm">
                      <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
                    </node>
                    <node concept="2OqwBi" id="49S2960UTEY" role="33vP2m">
                      <node concept="2OqwBi" id="49S2960UTEZ" role="2Oq$k0">
                        <node concept="2OqwBi" id="49S2960UTF0" role="2Oq$k0">
                          <node concept="2WthIp" id="49S2960UTF1" role="2Oq$k0" />
                          <node concept="1DTwFV" id="49S2960UTF2" role="2OqNvi">
                            <ref role="2WH_rO" node="49S2960UJSt" resolve="component" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49S2960UTF3" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49S2960UTF4" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3KJgeSbH7_h" role="3cqZAp">
                  <node concept="3clFbS" id="3KJgeSbH7_i" role="3clFbx">
                    <node concept="3clFbF" id="1KUoCipv$3k" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCipv$3l" role="3clFbG">
                        <node concept="2OqwBi" id="1aZ6rrVyii9" role="2Oq$k0">
                          <node concept="2OqwBi" id="1aZ6rrVyhP_" role="2Oq$k0">
                            <node concept="2WthIp" id="1aZ6rrVyhPC" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1aZ6rrVyhPE" role="2OqNvi">
                              <ref role="2WH_rO" node="4pq21WIfsXi" resolve="mpsProject" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1aZ6rrVyiSK" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                          </node>
                        </node>
                        <node concept="liA8E" id="1KUoCipv$3n" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                          <node concept="1bVj0M" id="1KUoCipv$3o" role="37wK5m">
                            <node concept="3clFbS" id="1KUoCipv$3p" role="1bW5cS">
                              <node concept="3clFbF" id="1KUoCipv$3q" role="3cqZAp">
                                <node concept="2OqwBi" id="1KUoCipv$3r" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTzuL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2k1FxHpGmbr" resolve="nodePointers" />
                                  </node>
                                  <node concept="X8dFx" id="1KUoCipv$3t" role="2OqNvi">
                                    <node concept="2OqwBi" id="1KUoCipv$3u" role="25WWJ7">
                                      <node concept="2ShNRf" id="1KUoCipv$3v" role="2Oq$k0">
                                        <node concept="kMnCb" id="1KUoCipv$3w" role="2ShVmc">
                                          <node concept="3uibUv" id="1KUoCipv$3x" role="kMuH3">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                          <node concept="1bVj0M" id="1KUoCipv$3y" role="kMx8a">
                                            <node concept="3clFbS" id="1KUoCipv$3z" role="1bW5cS">
                                              <node concept="3clFbF" id="1KUoCipv$3$" role="3cqZAp">
                                                <node concept="2OqwBi" id="1KUoCipv$3_" role="3clFbG">
                                                  <node concept="liA8E" id="1KUoCipv$3A" role="2OqNvi">
                                                    <ref role="37wK5l" to="lwvz:~Selection.getSelectedNodes()" resolve="getSelectedNodes" />
                                                  </node>
                                                  <node concept="37vLTw" id="3GM_nagTvLQ" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3$u5V9" id="1KUoCipv$3C" role="2OqNvi">
                                        <node concept="1bVj0M" id="1KUoCipv$3D" role="23t8la">
                                          <node concept="3clFbS" id="1KUoCipv$3E" role="1bW5cS">
                                            <node concept="3clFbF" id="1KUoCipv$3F" role="3cqZAp">
                                              <node concept="2ShNRf" id="1KUoCipv$3G" role="3clFbG">
                                                <node concept="1pGfFk" id="1KUoCipv$3H" role="2ShVmc">
                                                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="SNodePointer" />
                                                  <node concept="37vLTw" id="2BHiRxglr$g" role="37wK5m">
                                                    <ref role="3cqZAo" node="5W7E4fV0XfS" resolve="it" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0XfS" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5W7E4fV0XfT" role="1tU5fm" />
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
                  <node concept="22lmx$" id="3KJgeSbHbT0" role="3clFbw">
                    <node concept="1eOMI4" id="3KJgeSbHbT3" role="3uHU7w">
                      <node concept="2ZW3vV" id="3KJgeSbHbT6" role="1eOMHV">
                        <node concept="3uibUv" id="3KJgeSbHeGe" role="2ZW6by">
                          <ref role="3uigEE" to="lwvz:~MultipleSelection" resolve="MultipleSelection" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTtPa" role="2ZW6bz">
                          <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="1UAYu51$CRO" role="3uHU7B">
                      <node concept="1eOMI4" id="1UAYu51$GGI" role="3uHU7w">
                        <node concept="1Wc70l" id="1UAYu51$I38" role="1eOMHV">
                          <node concept="3fqX7Q" id="1UAYu51$I3e" role="3uHU7w">
                            <node concept="1eOMI4" id="1UAYu51$I3f" role="3fr31v">
                              <node concept="2ZW3vV" id="1UAYu51$I3i" role="1eOMHV">
                                <node concept="3uibUv" id="1UAYu51$I3l" role="2ZW6by">
                                  <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTyFc" role="2ZW6bz">
                                  <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ZW3vV" id="1UAYu51$GGL" role="3uHU7B">
                            <node concept="3uibUv" id="1UAYu51$GGO" role="2ZW6by">
                              <ref role="3uigEE" to="b8lf:~EditorCellSelection" resolve="EditorCellSelection" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTwgJ" role="2ZW6bz">
                              <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1eOMI4" id="3KJgeSbH7_t" role="3uHU7B">
                        <node concept="1Wc70l" id="3KJgeSbH7_v" role="1eOMHV">
                          <node concept="2ZW3vV" id="3KJgeSbH7_m" role="3uHU7B">
                            <node concept="3uibUv" id="3KJgeSbH7_p" role="2ZW6by">
                              <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTtB$" role="2ZW6bz">
                              <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3KJgeSbHbSV" role="3uHU7w">
                            <node concept="1eOMI4" id="3KJgeSbH7_y" role="2Oq$k0">
                              <node concept="10QFUN" id="3KJgeSbH7_z" role="1eOMHV">
                                <node concept="3uibUv" id="3KJgeSbHbST" role="10QFUM">
                                  <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTuTD" role="10QFUP">
                                  <ref role="3cqZAo" node="49S2960UTEW" resolve="selection" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="3KJgeSbHbSZ" role="2OqNvi">
                              <ref role="37wK5l" to="b8lf:~EditorCellLabelSelection.hasNonTrivialSelection()" resolve="hasNonTrivialSelection" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="49S2960UOtk" role="3clFbw">
                <node concept="10Nm6u" id="49S2960UOtn" role="3uHU7w" />
                <node concept="2OqwBi" id="49S2960ULX7" role="3uHU7B">
                  <node concept="2WthIp" id="49S2960ULX8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="49S2960ULX9" role="2OqNvi">
                    <ref role="2WH_rO" node="49S2960UJSt" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="68aArIS9HCF" role="3cqZAp">
              <node concept="2OqwBi" id="68aArIS9HCG" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTBHy" role="2Oq$k0">
                  <ref role="3cqZAo" node="68aArIS9HC_" resolve="evaluationProvider" />
                </node>
                <node concept="liA8E" id="68aArIS9HCI" role="2OqNvi">
                  <ref role="37wK5l" to="lt1n:3SnNvqCaJu9" resolve="showEvaluationDialog" />
                  <node concept="2OqwBi" id="68aArIS9HCJ" role="37wK5m">
                    <node concept="2WthIp" id="68aArIS9HCK" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4pq21WIfuak" role="2OqNvi">
                      <ref role="2WH_rO" node="4pq21WIfsXi" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTwkL" role="37wK5m">
                    <ref role="3cqZAo" node="2k1FxHpGmbr" resolve="nodePointers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="68aArIS9HCM" role="3clFbw">
            <node concept="10Nm6u" id="68aArIS9HCN" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTsdS" role="3uHU7B">
              <ref role="3cqZAo" node="68aArIS9HC_" resolve="evaluationProvider" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HCP" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HCQ" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HCR" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HCS" role="3cpWs9">
            <property role="TrG5h" value="evaluationProvider" />
            <node concept="3uibUv" id="68aArIS9HCT" role="1tU5fm">
              <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
            </node>
            <node concept="2YIFZM" id="68UFb7YvEXc" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3Jh" resolve="getEvaluationProvider" />
              <node concept="tl45R" id="68UFb7YvEXd" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HCW" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HCX" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HCY" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HCZ" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HD0" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HD1" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HD2" role="37wK5m">
                <node concept="3y3z36" id="68aArIS9HD3" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTuoU" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HCS" resolve="evaluationProvider" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HD5" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="68aArIS9HD6" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTva$" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HCS" resolve="evaluationProvider" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HD8" role="2OqNvi">
                    <ref role="37wK5l" to="lt1n:3SnNvqCaJun" resolve="canEvaluate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HD9">
    <property role="TrG5h" value="ExportThreads" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="tool" />
    <property role="2uzpH1" value="Export Threads" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="68aArIS9HFv" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDkm" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGAf" role="3Uehp1">
      <node concept="10M0yZ" id="5wRYDvyuP4H" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$ToolbarDecorator.Export" resolve="Export" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$ToolbarDecorator" resolve="AllIcons.ToolbarDecorator" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HDa" role="tncku">
      <node concept="3clFbS" id="68aArIS9HDb" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HDc" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HDd" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HDe" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUTBC" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUTBD" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="68aArIS9HDh" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HDi" role="3cpWs9">
            <property role="TrG5h" value="uiState" />
            <node concept="3uibUv" id="68aArIS9HDj" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJjE" resolve="AbstractUiState" />
            </node>
            <node concept="1eOMI4" id="68aArIS9HDk" role="33vP2m">
              <node concept="10QFUN" id="68aArIS9HDl" role="1eOMHV">
                <node concept="3uibUv" id="68aArIS9HDm" role="10QFUM">
                  <ref role="3uigEE" to="1l1h:3SnNvqCaJjE" resolve="AbstractUiState" />
                </node>
                <node concept="2OqwBi" id="68aArIS9HDn" role="10QFUP">
                  <node concept="37vLTw" id="3GM_nagTx3e" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HDd" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HDp" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaKcb" resolve="getUiState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="68aArIS9HDq" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HDr" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="68aArIS9HDs" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
            </node>
            <node concept="2ShNRf" id="68aArIS9HDt" role="33vP2m">
              <node concept="1pGfFk" id="68aArIS9HDu" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;()" resolve="StringBuffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="68aArIS9HDv" role="3cqZAp">
          <node concept="2GrKxI" id="68aArIS9HDw" role="2Gsz3X">
            <property role="TrG5h" value="thread" />
          </node>
          <node concept="3clFbS" id="68aArIS9HDx" role="2LFqv$">
            <node concept="3clFbF" id="68aArIS9HDy" role="3cqZAp">
              <node concept="2OqwBi" id="68aArIS9HDz" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTwty" role="2Oq$k0">
                  <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                </node>
                <node concept="liA8E" id="68aArIS9HD_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                  <node concept="2OqwBi" id="68aArIS9HDA" role="37wK5m">
                    <node concept="2GrUjf" id="68aArIS9HDB" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="68aArIS9HDw" resolve="thread" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HDC" role="2OqNvi">
                      <ref role="37wK5l" to="pry4:3SnNvqCaJfE" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="68aArIS9HDD" role="3cqZAp">
              <node concept="2OqwBi" id="68aArIS9HDE" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTvKH" role="2Oq$k0">
                  <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                </node>
                <node concept="liA8E" id="68aArIS9HDG" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(char)" resolve="append" />
                  <node concept="1Xhbcc" id="68aArIS9HDH" role="37wK5m">
                    <property role="1XhdNS" value="\n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="68aArIS9HDI" role="3cqZAp">
              <node concept="2GrKxI" id="68aArIS9HDJ" role="2Gsz3X">
                <property role="TrG5h" value="frame" />
              </node>
              <node concept="2OqwBi" id="68aArIS9HDK" role="2GsD0m">
                <node concept="2GrUjf" id="68aArIS9HDL" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="68aArIS9HDw" resolve="thread" />
                </node>
                <node concept="liA8E" id="68aArIS9HDM" role="2OqNvi">
                  <ref role="37wK5l" to="pry4:3SnNvqCaJft" resolve="getFrames" />
                </node>
              </node>
              <node concept="3clFbS" id="68aArIS9HDN" role="2LFqv$">
                <node concept="3cpWs8" id="68aArIS9HDO" role="3cqZAp">
                  <node concept="3cpWsn" id="68aArIS9HDP" role="3cpWs9">
                    <property role="TrG5h" value="location" />
                    <node concept="3uibUv" id="68aArIS9HDQ" role="1tU5fm">
                      <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
                    </node>
                    <node concept="2OqwBi" id="68aArIS9HDR" role="33vP2m">
                      <node concept="2GrUjf" id="68aArIS9HDS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="68aArIS9HDJ" resolve="frame" />
                      </node>
                      <node concept="liA8E" id="68aArIS9HDT" role="2OqNvi">
                        <ref role="37wK5l" to="pry4:3SnNvqCaJtb" resolve="getLocation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HDU" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HDV" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_6e" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HDX" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(char)" resolve="append" />
                      <node concept="1Xhbcc" id="68aArIS9HDY" role="37wK5m">
                        <property role="1XhdNS" value="\t" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HDZ" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HE0" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTtVX" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HE2" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="68aArIS9HE3" role="37wK5m">
                        <property role="Xl_RC" value="at " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HE4" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HE5" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTzoR" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HE7" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="2OqwBi" id="68aArIS9HE8" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTu11" role="2Oq$k0">
                          <ref role="3cqZAo" node="68aArIS9HDP" resolve="location" />
                        </node>
                        <node concept="liA8E" id="68aArIS9HEa" role="2OqNvi">
                          <ref role="37wK5l" to="pry4:3SnNvqCaJtE" resolve="getUnitName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEb" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEc" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTufJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEe" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="68aArIS9HEf" role="37wK5m">
                        <property role="Xl_RC" value="." />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEg" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEh" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxxr" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEj" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="2OqwBi" id="68aArIS9HEk" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTr31" role="2Oq$k0">
                          <ref role="3cqZAo" node="68aArIS9HDP" resolve="location" />
                        </node>
                        <node concept="liA8E" id="68aArIS9HEm" role="2OqNvi">
                          <ref role="37wK5l" to="pry4:3SnNvqCaJtI" resolve="getRoutineName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEn" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEo" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$cr" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEq" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="68aArIS9HEr" role="37wK5m">
                        <property role="Xl_RC" value="(" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEs" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEt" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTA0i" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEv" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="2OqwBi" id="68aArIS9HEw" role="37wK5m">
                        <node concept="2OqwBi" id="68aArIS9HEx" role="2Oq$k0">
                          <node concept="2GrUjf" id="68aArIS9HEy" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="68aArIS9HDJ" resolve="frame" />
                          </node>
                          <node concept="liA8E" id="68aArIS9HEz" role="2OqNvi">
                            <ref role="37wK5l" to="pry4:3SnNvqCaJtb" resolve="getLocation" />
                          </node>
                        </node>
                        <node concept="liA8E" id="68aArIS9HE$" role="2OqNvi">
                          <ref role="37wK5l" to="pry4:3SnNvqCaJtA" resolve="getFileName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HE_" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEA" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTs26" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEC" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="68aArIS9HED" role="37wK5m">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEE" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEF" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTxW2" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEH" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(int)" resolve="append" />
                      <node concept="2OqwBi" id="68aArIS9HEI" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagT$qq" role="2Oq$k0">
                          <ref role="3cqZAo" node="68aArIS9HDP" resolve="location" />
                        </node>
                        <node concept="liA8E" id="68aArIS9HEK" role="2OqNvi">
                          <ref role="37wK5l" to="pry4:3SnNvqCaJtM" resolve="getLineNumber" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEL" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HEM" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTuVs" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HEO" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="68aArIS9HEP" role="37wK5m">
                        <property role="Xl_RC" value=")" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="68aArIS9HEQ" role="3cqZAp">
                  <node concept="2OqwBi" id="68aArIS9HER" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTtfg" role="2Oq$k0">
                      <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="68aArIS9HET" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuffer.append(char)" resolve="append" />
                      <node concept="1Xhbcc" id="68aArIS9HEU" role="37wK5m">
                        <property role="1XhdNS" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="68aArIS9HEV" role="3cqZAp">
              <node concept="2OqwBi" id="68aArIS9HEW" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTtbc" role="2Oq$k0">
                  <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                </node>
                <node concept="liA8E" id="68aArIS9HEY" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(char)" resolve="append" />
                  <node concept="1Xhbcc" id="68aArIS9HEZ" role="37wK5m">
                    <property role="1XhdNS" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="68aArIS9HF0" role="2GsD0m">
            <node concept="37vLTw" id="3GM_nagT_kG" role="2Oq$k0">
              <ref role="3cqZAo" node="68aArIS9HDi" resolve="uiState" />
            </node>
            <node concept="liA8E" id="68aArIS9HF2" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaJxZ" resolve="getThreads" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="68aArIS9HF3" role="3cqZAp" />
        <node concept="3cpWs8" id="68aArIS9HF4" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HF5" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="68aArIS9HF6" role="1tU5fm">
              <ref role="3uigEE" node="68aArIS9HFS" resolve="ExportThreadsDialog" />
            </node>
            <node concept="2ShNRf" id="68aArIS9HF7" role="33vP2m">
              <node concept="1pGfFk" id="68aArIS9HF8" role="2ShVmc">
                <ref role="37wK5l" node="68aArIS9HGN" resolve="ExportThreadsDialog" />
                <node concept="2OqwBi" id="68aArIS9HF9" role="37wK5m">
                  <node concept="1DTwFV" id="2AXf4R3VXTd" role="2OqNvi">
                    <ref role="2WH_rO" node="68aArIS9HFv" resolve="project" />
                  </node>
                  <node concept="2WthIp" id="68aArIS9HFa" role="2Oq$k0" />
                </node>
                <node concept="37vLTw" id="3GM_nagTxmL" role="37wK5m">
                  <ref role="3cqZAo" node="68aArIS9HDr" resolve="sb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="68aArIS9HFd" role="3cqZAp" />
        <node concept="3clFbF" id="68aArIS9HFe" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HFf" role="3clFbG">
            <node concept="2YIFZM" id="68aArIS9HFg" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="68aArIS9HFh" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeLater" />
              <node concept="2ShNRf" id="68aArIS9HFi" role="37wK5m">
                <node concept="YeOm9" id="68aArIS9HFj" role="2ShVmc">
                  <node concept="1Y3b0j" id="68aArIS9HFk" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3clFb_" id="68aArIS9HFm" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <node concept="3cqZAl" id="68aArIS9HFo" role="3clF45" />
                      <node concept="3clFbS" id="68aArIS9HFp" role="3clF47">
                        <node concept="3clFbF" id="68aArIS9HFq" role="3cqZAp">
                          <node concept="2OqwBi" id="68aArIS9HFr" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTt47" role="2Oq$k0">
                              <ref role="3cqZAo" node="68aArIS9HF5" resolve="dialog" />
                            </node>
                            <node concept="liA8E" id="68aArIS9HFt" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="68aArIS9HFn" role="1B3o_S" />
                      <node concept="2AHcQZ" id="3tYsUK_RUNp" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="68aArIS9HFl" role="1B3o_S" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="68aArIS9HFu" role="37wK5m">
                <ref role="3cqZAo" to="bd8o:~ModalityState.NON_MODAL" resolve="NON_MODAL" />
                <ref role="1PxDUh" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HFx" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HFy" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HFz" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HF$" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HF_" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUTBA" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUTBB" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HFC" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HFD" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HFE" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HFF" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HFG" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HFH" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3y3z36" id="68aArIS9HFI" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagT_br" role="3uHU7B">
                  <ref role="3cqZAo" node="68aArIS9HF$" resolve="debugSession" />
                </node>
                <node concept="10Nm6u" id="68aArIS9HFK" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HFL" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HFM" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HFN" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HFO" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HFP" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HFQ" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="68aArIS9HFR" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="68aArIS9HFS">
    <property role="TrG5h" value="ExportThreadsDialog" />
    <node concept="3uibUv" id="2LIywXQGHhb" role="1zkMxy">
      <ref role="3uigEE" to="jkm4:~DialogWrapper" resolve="DialogWrapper" />
    </node>
    <node concept="312cEg" id="68aArIS9HGG" role="jymVt">
      <property role="TrG5h" value="myThreads" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="68aArIS9HGI" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
      </node>
      <node concept="3Tm6S6" id="68aArIS9HGH" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="68aArIS9HGJ" role="jymVt">
      <property role="TrG5h" value="myMainComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="68aArIS9HGL" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm6S6" id="68aArIS9HGK" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="68aArIS9HGN" role="jymVt">
      <node concept="37vLTG" id="68aArIS9HGO" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Kh0XTSvJAV" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="68aArIS9HGQ" role="3clF46">
        <property role="TrG5h" value="threads" />
        <node concept="3uibUv" id="68aArIS9HGR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
        </node>
      </node>
      <node concept="3clFbS" id="68aArIS9HGU" role="3clF47">
        <node concept="XkiVB" id="6VqS2ffwuwW" role="3cqZAp">
          <ref role="37wK5l" to="jkm4:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="DialogWrapper" />
          <node concept="37vLTw" id="2BHiRxgm9eP" role="37wK5m">
            <ref role="3cqZAo" node="68aArIS9HGO" resolve="project" />
          </node>
        </node>
        <node concept="3clFbF" id="2LIywXQGOqK" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyIfq" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="Xl_RD" id="2LIywXQGOqO" role="37wK5m">
              <property role="Xl_RC" value="Export Threads" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sAOQR4Cppk" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9$L" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setOKButtonText(java.lang.String)" resolve="setOKButtonText" />
            <node concept="Xl_RD" id="6sAOQR4Cppm" role="37wK5m">
              <property role="Xl_RC" value="Copy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HH0" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz88m" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.setModal(boolean)" resolve="setModal" />
            <node concept="3clFbT" id="68aArIS9HH2" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbH" id="68aArIS9HH3" role="3cqZAp" />
        <node concept="3clFbF" id="68aArIS9HH4" role="3cqZAp">
          <node concept="37vLTI" id="68aArIS9HH5" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfnO" role="37vLTx">
              <ref role="3cqZAo" node="68aArIS9HGQ" resolve="threads" />
            </node>
            <node concept="37vLTw" id="2BHiRxeun5s" role="37vLTJ">
              <ref role="3cqZAo" node="68aArIS9HGG" resolve="myThreads" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="68aArIS9HH8" role="3cqZAp" />
        <node concept="3cpWs8" id="68aArIS9HH9" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HHa" role="3cpWs9">
            <property role="TrG5h" value="textArea" />
            <node concept="3uibUv" id="68aArIS9HHb" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JTextArea" resolve="JTextArea" />
            </node>
            <node concept="2ShNRf" id="68aArIS9HHc" role="33vP2m">
              <node concept="1pGfFk" id="68aArIS9HHd" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextArea.&lt;init&gt;()" resolve="JTextArea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HHe" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HHf" role="3clFbG">
            <node concept="liA8E" id="68aArIS9HHh" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setEditable(boolean)" resolve="setEditable" />
              <node concept="3clFbT" id="68aArIS9HHi" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTzrg" role="2Oq$k0">
              <ref role="3cqZAo" node="68aArIS9HHa" resolve="textArea" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HHj" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HHk" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzbF" role="2Oq$k0">
              <ref role="3cqZAo" node="68aArIS9HHa" resolve="textArea" />
            </node>
            <node concept="liA8E" id="68aArIS9HHm" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="68aArIS9HHn" role="37wK5m">
                <node concept="liA8E" id="68aArIS9HHp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.toString()" resolve="toString" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuFg_" role="2Oq$k0">
                  <ref role="3cqZAo" node="68aArIS9HGG" resolve="myThreads" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HHq" role="3cqZAp">
          <node concept="37vLTI" id="23qY$NaUbga" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeurqd" role="37vLTJ">
              <ref role="3cqZAo" node="68aArIS9HGJ" resolve="myMainComponent" />
            </node>
            <node concept="2YIFZM" id="23qY$NaUbgi" role="37vLTx">
              <ref role="37wK5l" to="lzb2:~ScrollPaneFactory.createScrollPane(java.awt.Component)" resolve="createScrollPane" />
              <ref role="1Pybhc" to="lzb2:~ScrollPaneFactory" resolve="ScrollPaneFactory" />
              <node concept="37vLTw" id="3GM_nagTsEa" role="37wK5m">
                <ref role="3cqZAo" node="68aArIS9HHa" resolve="textArea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sAOQR4CjrM" role="3cqZAp">
          <node concept="2OqwBi" id="6sAOQR4Cjs2" role="3clFbG">
            <node concept="37vLTw" id="6sAOQR4CjrN" role="2Oq$k0">
              <ref role="3cqZAo" node="68aArIS9HGJ" resolve="myMainComponent" />
            </node>
            <node concept="liA8E" id="6sAOQR4Cjs8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setMinimumSize(java.awt.Dimension)" resolve="setMinimumSize" />
              <node concept="2ShNRf" id="22HSw0Pv1Vj" role="37wK5m">
                <node concept="1pGfFk" id="22HSw0Pv3bS" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="22HSw0Pv3bT" role="37wK5m">
                    <property role="3cmrfH" value="600" />
                  </node>
                  <node concept="3cmrfG" id="22HSw0Pv3bV" role="37wK5m">
                    <property role="3cmrfH" value="300" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2LIywXQGOr7" role="3cqZAp" />
        <node concept="3clFbF" id="2LIywXQGOr9" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeB1" role="3clFbG">
            <ref role="37wK5l" to="jkm4:~DialogWrapper.init()" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="68aArIS9HGT" role="1B3o_S" />
      <node concept="3cqZAl" id="68aArIS9HGS" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2LIywXQGOqs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCenterPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="2LIywXQGOqu" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="2LIywXQGOqv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tmbuc" id="2LIywXQGOqt" role="1B3o_S" />
      <node concept="3clFbS" id="2LIywXQGOqw" role="3clF47">
        <node concept="3cpWs6" id="2LIywXQGOq_" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeurgB" role="3cqZAk">
            <ref role="3cqZAo" node="68aArIS9HGJ" resolve="myMainComponent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_ScsT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6sAOQR4Cppr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doOKAction" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="6sAOQR4Cppv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6sAOQR4Cppu" role="3clF47">
        <node concept="3clFbF" id="6sAOQR4Cppy" role="3cqZAp">
          <node concept="2YIFZM" id="6sAOQR4Cppz" role="3clFbG">
            <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
            <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
            <node concept="2OqwBi" id="6sAOQR4Cpp$" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxeufOM" role="2Oq$k0">
                <ref role="3cqZAo" node="68aArIS9HGG" resolve="myThreads" />
              </node>
              <node concept="liA8E" id="6sAOQR4CppA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuffer.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6sAOQR4Cppt" role="3clF45" />
      <node concept="3Tmbuc" id="6sAOQR4Cpps" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="68aArIS9HGM" role="1B3o_S" />
  </node>
  <node concept="sE7Ow" id="68aArIS9HHz">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="Pause Execution" />
    <property role="TrG5h" value="Pause" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="execution" />
    <property role="2uzpH1" value="Pause" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAg" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGdlv" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Pause" resolve="Pause" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HH_" role="tncku">
      <node concept="3clFbS" id="68aArIS9HHA" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HHB" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HHC" role="3clFbG">
            <node concept="2YIFZM" id="32_GPwHUMYV" role="2Oq$k0">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUMYW" role="37wK5m" />
            </node>
            <node concept="liA8E" id="68aArIS9HHF" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK8l" resolve="pause" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HHG" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HHH" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HHI" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HHJ" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HHK" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUMYT" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUMYU" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HHN" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HHO" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HHP" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HHQ" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HHR" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HHS" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HHT" role="37wK5m">
                <node concept="2OqwBi" id="68aArIS9HHU" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTzRa" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HHJ" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HHW" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaK9u" resolve="isRunning" />
                  </node>
                </node>
                <node concept="3y3z36" id="68aArIS9HHX" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTv0V" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HHJ" resolve="debugSession" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HHZ" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HI0">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="Resume Execution" />
    <property role="TrG5h" value="Resume" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="execution" />
    <property role="2uzpH1" value="Resume" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAh" role="3Uehp1">
      <node concept="10M0yZ" id="5wRYDvyuLdV" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Resume" resolve="Resume" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HI1" role="tncku">
      <node concept="3clFbS" id="68aArIS9HI2" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HI3" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HI4" role="3clFbG">
            <node concept="liA8E" id="68aArIS9HI7" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK8h" resolve="resume" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSj8" role="2Oq$k0">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSj9" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HI9" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HIa" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HIb" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HIc" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HId" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSj6" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSj7" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HIg" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HIh" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HIi" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HIj" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HIk" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HIl" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HIm" role="37wK5m">
                <node concept="2OqwBi" id="68aArIS9HIn" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTu0n" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HIc" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HIp" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaK9l" resolve="isPaused" />
                  </node>
                </node>
                <node concept="3y3z36" id="68aArIS9HIq" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagT_ux" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HIc" resolve="debugSession" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HIs" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HIt">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="StepInto" />
    <property role="3GE5qa" value="execution" />
    <property role="2uzpH1" value="Step Into" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAi" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGhE7" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.TraceInto" resolve="TraceInto" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HIv" role="tncku">
      <node concept="3clFbS" id="68aArIS9HIw" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HIx" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HIy" role="3clFbG">
            <node concept="liA8E" id="68aArIS9HI_" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK8z" resolve="stepInto" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSjc" role="2Oq$k0">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjd" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HIA" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HIB" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HIC" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HID" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HIE" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSja" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjb" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HIH" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HII" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HIJ" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HIK" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HIL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HIM" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HIN" role="37wK5m">
                <node concept="2OqwBi" id="68aArIS9HIO" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTycf" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HID" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HIQ" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaK9K" resolve="isStepEnabled" />
                  </node>
                </node>
                <node concept="3y3z36" id="68aArIS9HIR" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTALv" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HID" resolve="debugSession" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HIT" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HIU">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="StepOut" />
    <property role="3GE5qa" value="execution" />
    <property role="2uzpH1" value="Step Out" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAj" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGizo" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.StepOut" resolve="StepOut" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HIW" role="tncku">
      <node concept="3clFbS" id="68aArIS9HIX" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HIY" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HIZ" role="3clFbG">
            <node concept="liA8E" id="68aArIS9HJ2" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK8B" resolve="stepOut" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSjg" role="2Oq$k0">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjh" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HJ3" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HJ4" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HJ5" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HJ6" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HJ7" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSje" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjf" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HJa" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HJb" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HJc" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HJd" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HJe" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HJf" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HJg" role="37wK5m">
                <node concept="2OqwBi" id="68aArIS9HJh" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTz$z" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HJ6" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HJj" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaK9K" resolve="isStepEnabled" />
                  </node>
                </node>
                <node concept="3y3z36" id="68aArIS9HJk" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTrqB" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HJ6" resolve="debugSession" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HJm" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HJn">
    <property role="fJN8o" value="true" />
    <property role="TrG5h" value="StepOver" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="execution" />
    <property role="2uzpH1" value="Step Over" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1GtWCo" id="6S5fI02CGAk" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGjsk" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.TraceOver" resolve="TraceOver" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HJp" role="tncku">
      <node concept="3clFbS" id="68aArIS9HJq" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HJr" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HJs" role="3clFbG">
            <node concept="liA8E" id="68aArIS9HJv" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaK8v" resolve="stepOver" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSjk" role="2Oq$k0">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjl" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="68aArIS9HJw" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HJx" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HJy" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HJz" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="68aArIS9HJ$" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="32_GPwHUSji" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="tl45R" id="32_GPwHUSjj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HJB" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HJC" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HJD" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HJE" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HJF" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HJG" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aArIS9HJH" role="37wK5m">
                <node concept="2OqwBi" id="68aArIS9HJI" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagT_H2" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aArIS9HJz" resolve="debugSession" />
                  </node>
                  <node concept="liA8E" id="68aArIS9HJK" role="2OqNvi">
                    <ref role="37wK5l" to="1l1h:3SnNvqCaK9K" resolve="isStepEnabled" />
                  </node>
                </node>
                <node concept="3y3z36" id="68aArIS9HJL" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTt7O" role="3uHU7B">
                    <ref role="3cqZAo" node="68aArIS9HJz" resolve="debugSession" />
                  </node>
                  <node concept="10Nm6u" id="68aArIS9HJN" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HJO">
    <property role="TrG5h" value="ToggleBreakpoint" />
    <property role="3GE5qa" value="breakpoints" />
    <property role="2uzpH1" value="Toggle Breakpoint" />
    <property role="1teQrl" value="true" />
    <property role="2YLI8m" value="6u2MFnph2yg/read" />
    <node concept="tnohg" id="68aArIS9HJP" role="tncku">
      <node concept="3clFbS" id="68aArIS9HJQ" role="2VODD2">
        <node concept="3clFbF" id="68aArIS9HJR" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HJS" role="3clFbG">
            <node concept="2YIFZM" id="gP81Gp79el" role="2Oq$k0">
              <ref role="1Pybhc" to="qst8:3SnNvqCbxfm" resolve="BreakpointsUiComponent" />
              <ref role="37wK5l" to="qst8:3SnNvqCbyF3" resolve="getInstance" />
              <node concept="2OqwBi" id="gP81Gp79em" role="37wK5m">
                <node concept="1DTwFV" id="6urlbHEBRwb" role="2OqNvi">
                  <ref role="2WH_rO" node="68aArIS9HK5" resolve="project" />
                </node>
                <node concept="2WthIp" id="gP81Gp79en" role="2Oq$k0" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HJZ" role="2OqNvi">
              <ref role="37wK5l" to="4jgh:3SnNvqCbyKT" resolve="toggleBreakpoint" />
              <node concept="2OqwBi" id="68aArIS9HK0" role="37wK5m">
                <node concept="2WthIp" id="68aArIS9HK1" role="2Oq$k0" />
                <node concept="1DTwFV" id="68aArIS9HK2" role="2OqNvi">
                  <ref role="2WH_rO" node="68aArIS9HK3" resolve="selectedCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="68aArIS9HK3" role="1NuT2Z">
      <property role="TrG5h" value="selectedCell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="7HZe2EwZDlU" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="68aArIS9HK5" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7HZe2EwZDl_" role="1oa70y" />
    </node>
    <node concept="tkhdA" id="68aArIS9HK6" role="tmbBb">
      <node concept="3clFbS" id="68aArIS9HK7" role="2VODD2">
        <node concept="3cpWs8" id="68aU5OaCWaR" role="3cqZAp">
          <node concept="3cpWsn" id="68aU5OaCWaS" role="3cpWs9">
            <property role="TrG5h" value="breakpointManager" />
            <node concept="3uibUv" id="gP81Gp796y" role="1tU5fm">
              <ref role="3uigEE" to="qst8:3SnNvqCbxfm" resolve="BreakpointsUiComponent" />
            </node>
            <node concept="2YIFZM" id="gP81Gp796z" role="33vP2m">
              <ref role="1Pybhc" to="qst8:3SnNvqCbxfm" resolve="BreakpointsUiComponent" />
              <ref role="37wK5l" to="qst8:3SnNvqCbyF3" resolve="getInstance" />
              <node concept="2OqwBi" id="gP81Gp796$" role="37wK5m">
                <node concept="1DTwFV" id="6urlbHEBYBl" role="2OqNvi">
                  <ref role="2WH_rO" node="68aArIS9HK5" resolve="project" />
                </node>
                <node concept="2WthIp" id="gP81Gp796_" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HK8" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HK9" role="3clFbG">
            <node concept="2OqwBi" id="68aArIS9HKa" role="2Oq$k0">
              <node concept="tl45R" id="68aArIS9HKb" role="2Oq$k0" />
              <node concept="liA8E" id="68aArIS9HKc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="68aArIS9HKd" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="68aU5OaCWaZ" role="37wK5m">
                <node concept="3y3z36" id="68aU5OaCWb8" role="3uHU7B">
                  <node concept="10Nm6u" id="68aU5OaCWbb" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTAKb" role="3uHU7B">
                    <ref role="3cqZAo" node="68aU5OaCWaS" resolve="breakpointManager" />
                  </node>
                </node>
                <node concept="2OqwBi" id="68aArIS9HKe" role="3uHU7w">
                  <node concept="liA8E" id="68aArIS9HKl" role="2OqNvi">
                    <ref role="37wK5l" to="4jgh:3SnNvqCbyLf" resolve="isDebuggable" />
                    <node concept="2OqwBi" id="68aArIS9HKm" role="37wK5m">
                      <node concept="2WthIp" id="68aArIS9HKn" role="2Oq$k0" />
                      <node concept="1DTwFV" id="68aArIS9HKo" role="2OqNvi">
                        <ref role="2WH_rO" node="68aArIS9HK3" resolve="selectedCell" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTuzD" role="2Oq$k0">
                    <ref role="3cqZAo" node="68aU5OaCWaS" resolve="breakpointManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1FOz_N44d9N" role="3cqZAp">
          <node concept="2OqwBi" id="1FOz_N44eRW" role="3clFbw">
            <node concept="10M0yZ" id="1FOz_N44eRV" role="2Oq$k0">
              <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
              <ref role="3cqZAo" to="qkt:~ActionPlaces.TOUCHBAR_GENERAL" resolve="TOUCHBAR_GENERAL" />
            </node>
            <node concept="liA8E" id="1FOz_N44eRX" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="1FOz_N44fif" role="37wK5m">
                <node concept="tl45R" id="1FOz_N44f7c" role="2Oq$k0" />
                <node concept="liA8E" id="1FOz_N44f$O" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.getPlace()" resolve="getPlace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1FOz_N44d9R" role="3clFbx">
            <node concept="3clFbF" id="1FOz_N44d9S" role="3cqZAp">
              <node concept="2OqwBi" id="1FOz_N44d9T" role="3clFbG">
                <node concept="liA8E" id="1FOz_N44d9V" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setIcon(javax.swing.Icon)" resolve="setIcon" />
                  <node concept="10M0yZ" id="1FOz_N44h8a" role="37wK5m">
                    <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
                    <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.Db_set_breakpoint" resolve="Db_set_breakpoint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1FOz_N44fNf" role="2Oq$k0">
                  <node concept="tl45R" id="1FOz_N44fD0" role="2Oq$k0" />
                  <node concept="liA8E" id="1FOz_N44g5w" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1FOz_N44gAk" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="68aArIS9HKp">
    <property role="TrG5h" value="ViewBreakpoints" />
    <property role="72QZ$" value="true" />
    <property role="3GE5qa" value="breakpoints" />
    <property role="2uzpH1" value="View Breakpoints" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="4_scbGUJDhJ" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4_scbGUJDhK" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGAl" role="3Uehp1">
      <node concept="10M0yZ" id="6XsdSphGnFP" role="1GtWoa">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.ViewBreakpoints" resolve="ViewBreakpoints" />
      </node>
    </node>
    <node concept="tnohg" id="68aArIS9HKr" role="tncku">
      <node concept="3clFbS" id="68aArIS9HKs" role="2VODD2">
        <node concept="3cpWs8" id="68aArIS9HKt" role="3cqZAp">
          <node concept="3cpWsn" id="68aArIS9HKu" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3SfHmXJdHz5" role="1tU5fm">
              <ref role="3uigEE" to="qst8:3SnNvqCbyg2" resolve="BreakpointsBrowserDialog" />
            </node>
            <node concept="2ShNRf" id="68aArIS9HKw" role="33vP2m">
              <node concept="1pGfFk" id="68aArIS9HKx" role="2ShVmc">
                <ref role="37wK5l" to="qst8:3SnNvqCbyh1" resolve="BreakpointsBrowserDialog" />
                <node concept="2OqwBi" id="68aArIS9HKy" role="37wK5m">
                  <node concept="1DTwFV" id="4_scbGUJDTf" role="2OqNvi">
                    <ref role="2WH_rO" node="4_scbGUJDhJ" resolve="mpsProject" />
                  </node>
                  <node concept="2WthIp" id="68aArIS9HKz" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68aArIS9HK_" role="3cqZAp">
          <node concept="2OqwBi" id="68aArIS9HKA" role="3clFbG">
            <node concept="2YIFZM" id="68aArIS9HKB" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="68aArIS9HKC" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeLater" />
              <node concept="2ShNRf" id="68aArIS9HKD" role="37wK5m">
                <node concept="YeOm9" id="68aArIS9HKE" role="2ShVmc">
                  <node concept="1Y3b0j" id="68aArIS9HKF" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3clFb_" id="68aArIS9HKH" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <node concept="3clFbS" id="68aArIS9HKK" role="3clF47">
                        <node concept="3clFbF" id="68aArIS9HKL" role="3cqZAp">
                          <node concept="2OqwBi" id="68aArIS9HKM" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagT$GH" role="2Oq$k0">
                              <ref role="3cqZAo" node="68aArIS9HKu" resolve="dialog" />
                            </node>
                            <node concept="liA8E" id="68aArIS9HKO" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="68aArIS9HKI" role="1B3o_S" />
                      <node concept="3cqZAl" id="68aArIS9HKJ" role="3clF45" />
                      <node concept="2AHcQZ" id="3tYsUK_SedB" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="68aArIS9HKG" role="1B3o_S" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="68aArIS9HKP" role="37wK5m">
                <ref role="3cqZAo" to="bd8o:~ModalityState.NON_MODAL" resolve="NON_MODAL" />
                <ref role="1PxDUh" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="68aArIS9HKU">
    <property role="TrG5h" value="DebugRunMenu" />
    <node concept="ftmFs" id="68aArIS9HKV" role="ftER_">
      <node concept="2a7GMi" id="68aArIS9HKW" role="ftvYc" />
      <node concept="10WQ6h" id="7WbFayaFPHB" role="ftvYc">
        <property role="TrG5h" value="steps" />
      </node>
      <node concept="tCFHf" id="68aArIS9HL0" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HI0" resolve="Resume" />
      </node>
      <node concept="tCFHf" id="68aArIS9HL1" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HHz" resolve="Pause" />
      </node>
      <node concept="tCFHf" id="68aArIS9HL2" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HCw" resolve="EvaluateExpression" />
      </node>
      <node concept="tCFHf" id="68aArIS9HL3" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HD9" resolve="ExportThreads" />
      </node>
      <node concept="2a7GMi" id="68aArIS9HL4" role="ftvYc" />
      <node concept="tCFHf" id="68aArIS9HL5" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HJO" resolve="ToggleBreakpoint" />
      </node>
      <node concept="tCFHf" id="68aArIS9HL6" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HKp" resolve="ViewBreakpoints" />
      </node>
    </node>
    <node concept="tT9cl" id="68aArIS9HL7" role="2f5YQi">
      <ref role="tU$_T" to="tprs:6gEJNBIezVz" resolve="MPSRunMenu" />
    </node>
    <node concept="tT9cl" id="2LI6gbES2Dh" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2LI6gbES2$T" resolve="TouchBarDebug" />
      <ref role="2f8Tey" to="tprs:2LI6gbES2MP" resolve="debug" />
    </node>
  </node>
  <node concept="tC5Ba" id="68aArIS9HL8">
    <property role="TrG5h" value="DebugTool" />
    <node concept="ftmFs" id="68aArIS9HL9" role="ftER_">
      <node concept="2a7GMi" id="68aArIS9HLa" role="ftvYc" />
      <node concept="tCFHf" id="68aArIS9HLb" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HI0" resolve="Resume" />
      </node>
      <node concept="tCFHf" id="68aArIS9HLc" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HHz" resolve="Pause" />
      </node>
      <node concept="10WQ6h" id="68aArIS9HLd" role="ftvYc">
        <property role="TrG5h" value="StopAction" />
      </node>
      <node concept="2a7GMi" id="68aArIS9HLe" role="ftvYc" />
      <node concept="tCFHf" id="68aArIS9HLf" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HCw" resolve="EvaluateExpression" />
      </node>
      <node concept="tCFHf" id="68aArIS9HLg" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HD9" resolve="ExportThreads" />
      </node>
      <node concept="tCFHf" id="68aArIS9HLh" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HKp" resolve="ViewBreakpoints" />
      </node>
      <node concept="10WQ6h" id="68aArIS9HLi" role="ftvYc">
        <property role="TrG5h" value="MuteAction" />
      </node>
      <node concept="2a7GMi" id="68aArIS9HLj" role="ftvYc" />
    </node>
  </node>
  <node concept="1ESbSp" id="68aArISabSH">
    <property role="TrG5h" value="MPSDebugMuteAction" />
    <property role="3GE5qa" value="breakpoints" />
    <node concept="Xl_RD" id="68aArISabSI" role="3mKD$K">
      <property role="Xl_RC" value="DebugMuteAction" />
    </node>
    <node concept="ftmFs" id="68aArISabSJ" role="ftER_" />
    <node concept="tT9cl" id="68aArISabSK" role="2f5YQi">
      <ref role="tU$_T" node="68aArIS9HL8" resolve="DebugTool" />
      <ref role="2f8Tey" node="68aArIS9HLi" resolve="MuteAction" />
    </node>
  </node>
  <node concept="1ESbSp" id="68aArISabSL">
    <property role="TrG5h" value="MPSDebugStopAction" />
    <property role="3GE5qa" value="execution" />
    <node concept="Xl_RD" id="68aArISabSM" role="3mKD$K">
      <property role="Xl_RC" value="DebugStopAction" />
    </node>
    <node concept="ftmFs" id="68aArISabSN" role="ftER_" />
    <node concept="tT9cl" id="68aArISabSO" role="2f5YQi">
      <ref role="tU$_T" node="68aArIS9HL8" resolve="DebugTool" />
      <ref role="2f8Tey" node="68aArIS9HLd" resolve="StopAction" />
    </node>
  </node>
  <node concept="Zd50a" id="3y8X1iFCVuq">
    <property role="TrG5h" value="Debugger" />
    <node concept="Zd509" id="3y8X1iFCXBD" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HIt" resolve="StepInto" />
      <node concept="pLAjd" id="3y8X1iFCXBE" role="Zd501">
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXBF" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HIU" resolve="StepOut" />
      <node concept="pLAjd" id="3y8X1iFCXBG" role="Zd501">
        <property role="pLAjf" value="VK_F8" />
        <property role="pLAjc" value="shift" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXBH" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HJn" resolve="StepOver" />
      <node concept="pLAjd" id="3y8X1iFCXBI" role="Zd501">
        <property role="pLAjf" value="VK_F8" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXBJ" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HI0" resolve="Resume" />
      <node concept="pLAjd" id="3y8X1iFCXBK" role="Zd501">
        <property role="pLAjf" value="VK_F9" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXBL" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HCw" resolve="EvaluateExpression" />
      <node concept="pLAjd" id="3y8X1iFCXBM" role="Zd501">
        <property role="pLAjf" value="VK_F8" />
        <property role="pLAjc" value="alt" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXB$" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HJO" resolve="ToggleBreakpoint" />
      <node concept="pLAjd" id="3y8X1iFCXB_" role="Zd501">
        <property role="pLAjf" value="VK_F8" />
        <property role="pLAjc" value="ctrl" />
      </node>
    </node>
    <node concept="Zd509" id="3y8X1iFCXBA" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HKp" resolve="ViewBreakpoints" />
      <node concept="pLAjd" id="3y8X1iFCXBB" role="Zd501">
        <property role="pLAjf" value="VK_F8" />
        <property role="pLAjc" value="ctrl+shift" />
      </node>
    </node>
  </node>
  <node concept="9BnSX" id="5RpWpP11_BE">
    <property role="9BnSZ" value="jetbrains.mps.debugger.api" />
    <property role="3FCvg6" value="true" />
    <property role="9BnSP" value="http://www.jetbrains.com/mps/" />
    <property role="9BnSL" value="Base debugging support for MPS" />
    <property role="9BnSM" value="JetBrains" />
    <property role="TrG5h" value="Debugger API for MPS" />
    <property role="9BnSO" value="251.1" />
    <property role="9BnSK" value="2025.1.4" />
  </node>
  <node concept="312cEu" id="24OxoGwTqg6">
    <property role="TrG5h" value="MuteBreakpoints" />
    <property role="3GE5qa" value="breakpoints" />
    <node concept="Wx3nA" id="24OxoGwTqg9" role="jymVt">
      <property role="TrG5h" value="ICON" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="24OxoGwTqga" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm6S6" id="24OxoGwTqgb" role="1B3o_S" />
      <node concept="10M0yZ" id="6WRuqF8TBpb" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Debugger" resolve="AllIcons.Debugger" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Debugger.MuteBreakpoints" resolve="MuteBreakpoints" />
      </node>
    </node>
    <node concept="3clFbW" id="24OxoGwTqgi" role="jymVt">
      <node concept="3Tm1VV" id="24OxoGwTqgj" role="1B3o_S" />
      <node concept="3clFbS" id="24OxoGwTqgl" role="3clF47">
        <node concept="XkiVB" id="24OxoGwTqgm" role="3cqZAp">
          <ref role="37wK5l" to="qkt:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
          <node concept="Xl_RD" id="24OxoGwTqgn" role="37wK5m">
            <property role="Xl_RC" value="Mute Breakpoints" />
          </node>
          <node concept="Xl_RD" id="24OxoGwTqgo" role="37wK5m">
            <property role="Xl_RC" value="Mute Breakpoints" />
          </node>
          <node concept="37vLTw" id="2BHiRxeop0S" role="37wK5m">
            <ref role="3cqZAo" node="24OxoGwTqg9" resolve="ICON" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24OxoGwTqgk" role="3clF45" />
    </node>
    <node concept="3clFb_" id="24OxoGwTqgq" role="jymVt">
      <property role="TrG5h" value="setSelected" />
      <node concept="3Tm1VV" id="24OxoGwTqgr" role="1B3o_S" />
      <node concept="37vLTG" id="24OxoGwTqgt" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="24OxoGwTqgu" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="24OxoGwTqgv" role="3clF46">
        <property role="TrG5h" value="b" />
        <node concept="10P_77" id="24OxoGwTqgw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="24OxoGwTqgs" role="3clF45" />
      <node concept="3clFbS" id="24OxoGwTqgx" role="3clF47">
        <node concept="3cpWs8" id="24OxoGwTqgy" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwTqgz" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="24OxoGwTqg$" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="24OxoGwTqg_" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="37vLTw" id="2BHiRxgl3ki" role="37wK5m">
                <ref role="3cqZAo" node="24OxoGwTqgt" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24OxoGwTqgB" role="3cqZAp">
          <node concept="3clFbC" id="24OxoGwTqgC" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTrJW" role="3uHU7B">
              <ref role="3cqZAo" node="24OxoGwTqgz" resolve="debugSession" />
            </node>
            <node concept="10Nm6u" id="24OxoGwTqgE" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="24OxoGwTqgF" role="3clFbx">
            <node concept="3cpWs6" id="24OxoGwTqgG" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="24OxoGwTqgH" role="3cqZAp">
          <node concept="2OqwBi" id="24OxoGwTqgI" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTznB" role="2Oq$k0">
              <ref role="3cqZAo" node="24OxoGwTqgz" resolve="debugSession" />
            </node>
            <node concept="liA8E" id="24OxoGwTqgK" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaKcM" resolve="muteBreakpoints" />
              <node concept="37vLTw" id="2BHiRxgmzF9" role="37wK5m">
                <ref role="3cqZAo" node="24OxoGwTqgv" resolve="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S8nh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="24OxoGwTqgM" role="jymVt">
      <property role="TrG5h" value="isSelected" />
      <node concept="3Tm1VV" id="24OxoGwTqgN" role="1B3o_S" />
      <node concept="37vLTG" id="24OxoGwTqgP" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="24OxoGwTqgQ" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="10P_77" id="24OxoGwTqgO" role="3clF45" />
      <node concept="3clFbS" id="24OxoGwTqgR" role="3clF47">
        <node concept="3cpWs8" id="24OxoGwTqgS" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwTqgT" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="2YIFZM" id="24OxoGwTqgV" role="33vP2m">
              <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="37vLTw" id="2BHiRxgmOek" role="37wK5m">
                <ref role="3cqZAo" node="24OxoGwTqgP" resolve="event" />
              </node>
            </node>
            <node concept="3uibUv" id="24OxoGwTqgU" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="24OxoGwTqgX" role="3cqZAp">
          <node concept="1Wc70l" id="24OxoGwTqgY" role="3cqZAk">
            <node concept="2OqwBi" id="24OxoGwTqh3" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTxQh" role="2Oq$k0">
                <ref role="3cqZAo" node="24OxoGwTqgT" resolve="debugSession" />
              </node>
              <node concept="liA8E" id="24OxoGwTqh5" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKcS" resolve="isMute" />
              </node>
            </node>
            <node concept="1eOMI4" id="24OxoGwTqgZ" role="3uHU7B">
              <node concept="3y3z36" id="24OxoGwTqh0" role="1eOMHV">
                <node concept="10Nm6u" id="24OxoGwTqh2" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTxoD" role="3uHU7B">
                  <ref role="3cqZAo" node="24OxoGwTqgT" resolve="debugSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S8nc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="24OxoGwTqh6" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="24OxoGwTqhb" role="3clF47">
        <node concept="3clFbF" id="24OxoGwTqhc" role="3cqZAp">
          <node concept="3nyPlj" id="24OxoGwTqhd" role="3clFbG">
            <ref role="37wK5l" to="qkt:~ToggleAction.update(com.intellij.openapi.actionSystem.AnActionEvent)" resolve="update" />
            <node concept="37vLTw" id="2BHiRxgma$B" role="37wK5m">
              <ref role="3cqZAo" node="24OxoGwTqh9" resolve="event" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24OxoGwTqhf" role="3cqZAp">
          <node concept="2OqwBi" id="24OxoGwTqhg" role="3clFbG">
            <node concept="liA8E" id="24OxoGwTqhk" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3y3z36" id="24OxoGwTqhl" role="37wK5m">
                <node concept="10Nm6u" id="24OxoGwTqho" role="3uHU7w" />
                <node concept="2YIFZM" id="24OxoGwTqhm" role="3uHU7B">
                  <ref role="1Pybhc" to="qiil:24OxoGwU3IV" resolve="DebugActionsUtil" />
                  <ref role="37wK5l" to="qiil:24OxoGwU3J1" resolve="getDebugSession" />
                  <node concept="37vLTw" id="2BHiRxgm_sL" role="37wK5m">
                    <ref role="3cqZAo" node="24OxoGwTqh9" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="24OxoGwTqhh" role="2Oq$k0">
              <node concept="liA8E" id="24OxoGwTqhj" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="2BHiRxghf2C" role="2Oq$k0">
                <ref role="3cqZAo" node="24OxoGwTqh9" resolve="event" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24OxoGwTqh8" role="3clF45" />
      <node concept="37vLTG" id="24OxoGwTqh9" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="24OxoGwTqha" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="24OxoGwTqh7" role="1B3o_S" />
      <node concept="2AHcQZ" id="24OxoGwTqhp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
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
          <node concept="Rm8GO" id="6lFKwfyH6mn" role="3clFbG">
            <ref role="Rm8GQ" to="qkt:~ActionUpdateThread.BGT" resolve="BGT" />
            <ref role="1Px2BO" to="qkt:~ActionUpdateThread" resolve="ActionUpdateThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6lFKwfyH6mo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="24OxoGwTqg7" role="1B3o_S" />
    <node concept="3uibUv" id="24OxoGwTqg8" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~ToggleAction" resolve="ToggleAction" />
    </node>
  </node>
  <node concept="tC5Ba" id="7WbFayaFPHw">
    <property role="TrG5h" value="DebugStepsMenu" />
    <node concept="ftmFs" id="7WbFayaFPHy" role="ftER_">
      <node concept="tCFHf" id="7WbFayaFPHz" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HJn" resolve="StepOver" />
      </node>
      <node concept="tCFHf" id="7WbFayaFPH$" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HIt" resolve="StepInto" />
      </node>
      <node concept="tCFHf" id="7WbFayaFPH_" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HIU" resolve="StepOut" />
      </node>
    </node>
    <node concept="tT9cl" id="7WbFayaFPHC" role="2f5YQi">
      <ref role="tU$_T" node="68aArIS9HKU" resolve="DebugRunMenu" />
      <ref role="2f8Tey" node="7WbFayaFPHB" resolve="steps" />
    </node>
  </node>
  <node concept="sE7Ow" id="5DEfk93eF5C">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="Go To Source" />
    <property role="TrG5h" value="GoToBreakpointSourceAction" />
    <property role="2uzpH1" value="Go To" />
    <property role="3GE5qa" value="breakpoints.dialog" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="1_xVpoi0xbh" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1_xVpoi0xbi" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGAm" role="3Uehp1">
      <node concept="10M0yZ" id="1Pvy3VLlVyr" role="1GtWoa">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Debug" resolve="MPSIcons.Debug" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Debug.GoToSource" resolve="GoToSource" />
      </node>
    </node>
    <node concept="tnohg" id="5DEfk93eF5D" role="tncku">
      <node concept="3clFbS" id="5DEfk93eF5E" role="2VODD2">
        <node concept="3cpWs8" id="3SnNvqCbyuZ" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbyv0" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbyv1" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="5DEfk93eFth" role="33vP2m">
              <node concept="10M0yZ" id="5DEfk93eFti" role="2Oq$k0">
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
              </node>
              <node concept="liA8E" id="5DEfk93eFtj" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="5DEfk93eFtk" role="37wK5m">
                  <node concept="tl45R" id="5DEfk93eFtl" role="2Oq$k0" />
                  <node concept="liA8E" id="5DEfk93eFtm" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbyv4" role="3cqZAp">
          <node concept="22lmx$" id="5DEfk93eFU2" role="3clFbw">
            <node concept="3fqX7Q" id="5DEfk93eFU5" role="3uHU7w">
              <node concept="2ZW3vV" id="5DEfk93eFU8" role="3fr31v">
                <node concept="3uibUv" id="5DEfk93eFUb" role="2ZW6by">
                  <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                </node>
                <node concept="37vLTw" id="3GM_nagTrLF" role="2ZW6bz">
                  <ref role="3cqZAo" node="3SnNvqCbyv0" resolve="breakpoint" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3SnNvqCbyv5" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTBY0" role="3uHU7B">
                <ref role="3cqZAo" node="3SnNvqCbyv0" resolve="breakpoint" />
              </node>
              <node concept="10Nm6u" id="3SnNvqCbyv7" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="3SnNvqCbyv8" role="3clFbx">
            <node concept="3cpWs6" id="3SnNvqCbyv9" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="5DEfk93eFQx" role="3cqZAp">
          <node concept="3cpWsn" id="5DEfk93eFQy" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="3uibUv" id="5DEfk93eFQz" role="1tU5fm">
              <ref role="3uigEE" to="qst8:3SnNvqCbyg2" resolve="BreakpointsBrowserDialog" />
            </node>
            <node concept="2OqwBi" id="5DEfk93eFQQ" role="33vP2m">
              <node concept="10M0yZ" id="5DEfk93eFQ_" role="2Oq$k0">
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
                <ref role="3cqZAo" to="qst8:5DEfk93eFPd" resolve="MPS_BREAKPOINTS_BROWSER_DIALOG" />
              </node>
              <node concept="liA8E" id="5DEfk93eFQW" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="5DEfk93eFRe" role="37wK5m">
                  <node concept="tl45R" id="5DEfk93eFQX" role="2Oq$k0" />
                  <node concept="liA8E" id="5DEfk93eFRn" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5DEfk93eFOR" role="3cqZAp">
          <node concept="3clFbS" id="5DEfk93eFOS" role="3clFbx">
            <node concept="3clFbF" id="5DEfk93eFRI" role="3cqZAp">
              <node concept="2OqwBi" id="5DEfk93eFS0" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTuSq" role="2Oq$k0">
                  <ref role="3cqZAo" node="5DEfk93eFQy" resolve="dialog" />
                </node>
                <node concept="liA8E" id="5DEfk93eFS5" role="2OqNvi">
                  <ref role="37wK5l" to="qst8:3SnNvqCbyuc" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5DEfk93eFRE" role="3clFbw">
            <node concept="10Nm6u" id="5DEfk93eFRH" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT_A0" role="3uHU7B">
              <ref role="3cqZAo" node="5DEfk93eFQy" resolve="dialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_xVpoi0vl0" role="3cqZAp">
          <node concept="2OqwBi" id="1_xVpoi0zw2" role="3clFbG">
            <node concept="2OqwBi" id="1_xVpoi0yZC" role="2Oq$k0">
              <node concept="2OqwBi" id="1_xVpoi0yMW" role="2Oq$k0">
                <node concept="2ShNRf" id="1_xVpoi0vkW" role="2Oq$k0">
                  <node concept="1pGfFk" id="1_xVpoi0wmL" role="2ShVmc">
                    <ref role="37wK5l" to="kz9k:~EditorNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="EditorNavigator" />
                    <node concept="2OqwBi" id="1_xVpoi0yLL" role="37wK5m">
                      <node concept="2WthIp" id="1_xVpoi0yLO" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1_xVpoi0yLQ" role="2OqNvi">
                        <ref role="2WH_rO" node="1_xVpoi0xbh" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1_xVpoi0yXG" role="2OqNvi">
                  <ref role="37wK5l" to="kz9k:~EditorNavigator.shallFocus(boolean)" resolve="shallFocus" />
                  <node concept="3clFbT" id="1_xVpoi0yYu" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1_xVpoi0zdX" role="2OqNvi">
                <ref role="37wK5l" to="kz9k:~EditorNavigator.shallSelect(boolean)" resolve="shallSelect" />
                <node concept="3clFbT" id="1_xVpoi0zeP" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1_xVpoi0zFD" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~EditorNavigator.open(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="open" />
              <node concept="2OqwBi" id="1_xVpoi0_6s" role="37wK5m">
                <node concept="2OqwBi" id="1_xVpoi0zYU" role="2Oq$k0">
                  <node concept="1eOMI4" id="1_xVpoi0zUh" role="2Oq$k0">
                    <node concept="10QFUN" id="1_xVpoi0zGU" role="1eOMHV">
                      <node concept="3uibUv" id="1_xVpoi0zGV" role="10QFUM">
                        <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                      </node>
                      <node concept="37vLTw" id="1_xVpoi0zGW" role="10QFUP">
                        <ref role="3cqZAo" node="3SnNvqCbyv0" resolve="breakpoint" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1_xVpoi0$9c" role="2OqNvi">
                    <ref role="37wK5l" to="rw00:3SnNvqCaJeO" resolve="getLocation" />
                  </node>
                </node>
                <node concept="liA8E" id="1_xVpoi0_bY" role="2OqNvi">
                  <ref role="37wK5l" to="rw00:3SnNvqCaJWi" resolve="getNodePointer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="5DEfk93eFvb" role="tmbBb">
      <node concept="3clFbS" id="5DEfk93eFvc" role="2VODD2">
        <node concept="3cpWs8" id="5DEfk93eFSG" role="3cqZAp">
          <node concept="3cpWsn" id="5DEfk93eFSH" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <node concept="3uibUv" id="5DEfk93eFSI" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="5DEfk93eFSJ" role="33vP2m">
              <node concept="10M0yZ" id="5DEfk93eFSK" role="2Oq$k0">
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
              </node>
              <node concept="liA8E" id="5DEfk93eFSL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="5DEfk93eFSM" role="37wK5m">
                  <node concept="tl45R" id="5DEfk93eFSN" role="2Oq$k0" />
                  <node concept="liA8E" id="5DEfk93eFSO" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5DEfk93eFvd" role="3cqZAp">
          <node concept="2OqwBi" id="5DEfk93eFvQ" role="3clFbG">
            <node concept="2OqwBi" id="5DEfk93eFvv" role="2Oq$k0">
              <node concept="tl45R" id="5DEfk93eFve" role="2Oq$k0" />
              <node concept="liA8E" id="5DEfk93eFv_" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="5DEfk93eFvW" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="5DEfk93eFT8" role="37wK5m">
                <node concept="2ZW3vV" id="5DEfk93eFTE" role="3uHU7w">
                  <node concept="3uibUv" id="5DEfk93eFTJ" role="2ZW6by">
                    <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTyZM" role="2ZW6bz">
                    <ref role="3cqZAo" node="5DEfk93eFSH" resolve="breakpoint" />
                  </node>
                </node>
                <node concept="3y3z36" id="5DEfk93eF8q" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTykq" role="3uHU7B">
                    <ref role="3cqZAo" node="5DEfk93eFSH" resolve="breakpoint" />
                  </node>
                  <node concept="10Nm6u" id="5DEfk93eF8w" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5DEfk93eNLA">
    <property role="fJN8o" value="true" />
    <property role="1WHSii" value="View Source" />
    <property role="TrG5h" value="ViewBreakpointSourceAction" />
    <property role="2uzpH1" value="View Source" />
    <property role="3GE5qa" value="breakpoints.dialog" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="1_xVpoi0ERJ" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1_xVpoi0ERK" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGAn" role="3Uehp1">
      <node concept="10M0yZ" id="6FJbCpTvhN5" role="1GtWoa">
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.ShowCode" resolve="ShowCode" />
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
      </node>
    </node>
    <node concept="tnohg" id="5DEfk93eNLB" role="tncku">
      <node concept="3clFbS" id="5DEfk93eNLC" role="2VODD2">
        <node concept="3cpWs8" id="5DEfk93eNLD" role="3cqZAp">
          <node concept="3cpWsn" id="5DEfk93eNLE" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="5DEfk93eNLF" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="5DEfk93eNLG" role="33vP2m">
              <node concept="10M0yZ" id="5DEfk93eNLH" role="2Oq$k0">
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
              </node>
              <node concept="liA8E" id="5DEfk93eNLI" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="5DEfk93eNLJ" role="37wK5m">
                  <node concept="tl45R" id="5DEfk93eNLK" role="2Oq$k0" />
                  <node concept="liA8E" id="5DEfk93eNLL" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5DEfk93eNLM" role="3cqZAp">
          <node concept="22lmx$" id="5DEfk93eNLN" role="3clFbw">
            <node concept="3fqX7Q" id="5DEfk93eNLO" role="3uHU7w">
              <node concept="2ZW3vV" id="5DEfk93eNLP" role="3fr31v">
                <node concept="3uibUv" id="5DEfk93eNLQ" role="2ZW6by">
                  <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                </node>
                <node concept="37vLTw" id="3GM_nagTtix" role="2ZW6bz">
                  <ref role="3cqZAo" node="5DEfk93eNLE" resolve="breakpoint" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5DEfk93eNLS" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTsgT" role="3uHU7B">
                <ref role="3cqZAo" node="5DEfk93eNLE" resolve="breakpoint" />
              </node>
              <node concept="10Nm6u" id="5DEfk93eNLU" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="5DEfk93eNLV" role="3clFbx">
            <node concept="3cpWs6" id="5DEfk93eNLW" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="1_xVpoi0Cc_" role="3cqZAp">
          <node concept="2OqwBi" id="1_xVpoi0CcA" role="3clFbG">
            <node concept="2OqwBi" id="1_xVpoi0CcB" role="2Oq$k0">
              <node concept="2OqwBi" id="1_xVpoi0CcC" role="2Oq$k0">
                <node concept="2ShNRf" id="1_xVpoi0CcD" role="2Oq$k0">
                  <node concept="1pGfFk" id="1_xVpoi0CcE" role="2ShVmc">
                    <ref role="37wK5l" to="kz9k:~EditorNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="EditorNavigator" />
                    <node concept="2OqwBi" id="1_xVpoi0CcF" role="37wK5m">
                      <node concept="2WthIp" id="1_xVpoi0CcG" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1_xVpoi0CcH" role="2OqNvi">
                        <ref role="2WH_rO" node="1_xVpoi0ERJ" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1_xVpoi0CcI" role="2OqNvi">
                  <ref role="37wK5l" to="kz9k:~EditorNavigator.shallFocus(boolean)" resolve="shallFocus" />
                  <node concept="3clFbT" id="1_xVpoi0CcJ" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="1_xVpoi0CcK" role="2OqNvi">
                <ref role="37wK5l" to="kz9k:~EditorNavigator.shallSelect(boolean)" resolve="shallSelect" />
                <node concept="3clFbT" id="1_xVpoi0CcL" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1_xVpoi0CcM" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~EditorNavigator.open(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="open" />
              <node concept="2OqwBi" id="1_xVpoi0CcN" role="37wK5m">
                <node concept="2OqwBi" id="1_xVpoi0CcO" role="2Oq$k0">
                  <node concept="1eOMI4" id="1_xVpoi0CcP" role="2Oq$k0">
                    <node concept="10QFUN" id="1_xVpoi0CcQ" role="1eOMHV">
                      <node concept="3uibUv" id="1_xVpoi0CcR" role="10QFUM">
                        <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                      </node>
                      <node concept="37vLTw" id="1_xVpoi0CcS" role="10QFUP">
                        <ref role="3cqZAo" node="5DEfk93eNLE" resolve="breakpoint" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1_xVpoi0CcT" role="2OqNvi">
                    <ref role="37wK5l" to="rw00:3SnNvqCaJeO" resolve="getLocation" />
                  </node>
                </node>
                <node concept="liA8E" id="1_xVpoi0CcU" role="2OqNvi">
                  <ref role="37wK5l" to="rw00:3SnNvqCaJWi" resolve="getNodePointer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="5DEfk93eNMq" role="tmbBb">
      <node concept="3clFbS" id="5DEfk93eNMr" role="2VODD2">
        <node concept="3cpWs8" id="5DEfk93eNMs" role="3cqZAp">
          <node concept="3cpWsn" id="5DEfk93eNMt" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <node concept="3uibUv" id="5DEfk93eNMu" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="5DEfk93eNMv" role="33vP2m">
              <node concept="10M0yZ" id="5DEfk93eNMw" role="2Oq$k0">
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
              </node>
              <node concept="liA8E" id="5DEfk93eNMx" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="5DEfk93eNMy" role="37wK5m">
                  <node concept="tl45R" id="5DEfk93eNMz" role="2Oq$k0" />
                  <node concept="liA8E" id="5DEfk93eNM$" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5DEfk93eNM_" role="3cqZAp">
          <node concept="2OqwBi" id="5DEfk93eNMA" role="3clFbG">
            <node concept="2OqwBi" id="5DEfk93eNMB" role="2Oq$k0">
              <node concept="tl45R" id="5DEfk93eNMC" role="2Oq$k0" />
              <node concept="liA8E" id="5DEfk93eNMD" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="5DEfk93eNME" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="5DEfk93eNMF" role="37wK5m">
                <node concept="2ZW3vV" id="5DEfk93eNMG" role="3uHU7w">
                  <node concept="3uibUv" id="5DEfk93eNMH" role="2ZW6by">
                    <ref role="3uigEE" to="rw00:3SnNvqCaJeL" resolve="ILocationBreakpoint" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvVT" role="2ZW6bz">
                    <ref role="3cqZAo" node="5DEfk93eNMt" resolve="breakpoint" />
                  </node>
                </node>
                <node concept="3y3z36" id="5DEfk93eNMJ" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTA0e" role="3uHU7B">
                    <ref role="3cqZAo" node="5DEfk93eNMt" resolve="breakpoint" />
                  </node>
                  <node concept="10Nm6u" id="5DEfk93eNML" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="ndZCfAIclU">
    <property role="1WHSii" value="Delete Breakpoint" />
    <property role="TrG5h" value="DeleteBreakpointAction" />
    <property role="2uzpH1" value="Delete" />
    <property role="3GE5qa" value="breakpoints.dialog" />
    <property role="fJN8o" value="true" />
    <property role="1teQrl" value="true" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="ndZCfAIfOj" role="1NuT2Z">
      <property role="TrG5h" value="ideaProject" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="ndZCfAIfOk" role="1oa70y" />
    </node>
    <node concept="1GtWCo" id="6S5fI02CGAo" role="3Uehp1">
      <node concept="10M0yZ" id="1Pvy3VLlUBw" role="1GtWoa">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Debug" resolve="MPSIcons.Debug" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Debug.DeleteBreakpoint" resolve="DeleteBreakpoint" />
      </node>
    </node>
    <node concept="tnohg" id="ndZCfAIclV" role="tncku">
      <node concept="3clFbS" id="ndZCfAIclW" role="2VODD2">
        <node concept="3cpWs8" id="3SnNvqCbywg" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbywh" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3SnNvqCbywi" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="ndZCfAIfOa" role="33vP2m">
              <node concept="10M0yZ" id="ndZCfAIfOb" role="2Oq$k0">
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
              </node>
              <node concept="liA8E" id="ndZCfAIfOc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="ndZCfAIfOd" role="37wK5m">
                  <node concept="tl45R" id="ndZCfAIfOe" role="2Oq$k0" />
                  <node concept="liA8E" id="ndZCfAIfOf" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbywl" role="3cqZAp">
          <node concept="3clFbC" id="3SnNvqCbywm" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTuI3" role="3uHU7B">
              <ref role="3cqZAo" node="3SnNvqCbywh" resolve="breakpoint" />
            </node>
            <node concept="10Nm6u" id="3SnNvqCbywo" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3SnNvqCbywp" role="3clFbx">
            <node concept="3cpWs6" id="3SnNvqCbywq" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="5cQVs3xqn$$" role="3cqZAp" />
        <node concept="3clFbF" id="5cQVs3xqnY3" role="3cqZAp">
          <node concept="2OqwBi" id="5cQVs3xqtMl" role="3clFbG">
            <node concept="liA8E" id="5cQVs3xquOB" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="5cQVs3xquOX" role="37wK5m">
                <node concept="3clFbS" id="5cQVs3xquOY" role="1bW5cS">
                  <node concept="3clFbF" id="3SnNvqCbywN" role="3cqZAp">
                    <node concept="2OqwBi" id="3SnNvqCbywO" role="3clFbG">
                      <node concept="2YIFZM" id="ndZCfAIfOi" role="2Oq$k0">
                        <ref role="37wK5l" to="1l1h:3SnNvqCaJLp" resolve="getInstance" />
                        <ref role="1Pybhc" to="1l1h:3SnNvqCaJJB" resolve="BreakpointManagerComponent" />
                        <node concept="2OqwBi" id="ndZCfAIfOl" role="37wK5m">
                          <node concept="1DTwFV" id="ndZCfAIfOn" role="2OqNvi">
                            <ref role="2WH_rO" node="ndZCfAIfOj" resolve="ideaProject" />
                          </node>
                          <node concept="2WthIp" id="ndZCfAIfOm" role="2Oq$k0">
                            <ref role="32nkFo" node="ndZCfAIclU" resolve="DeleteBreakpointAction" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3SnNvqCbywQ" role="2OqNvi">
                        <ref role="37wK5l" to="1l1h:3SnNvqCaJOu" resolve="removeBreakpoint" />
                        <node concept="37vLTw" id="3GM_nagTxIH" role="37wK5m">
                          <ref role="3cqZAo" node="3SnNvqCbywh" resolve="breakpoint" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5cQVs3xqsVA" role="2Oq$k0">
              <node concept="liA8E" id="5cQVs3xqtG_" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="2OqwBi" id="5cQVs3xqpIN" role="2Oq$k0">
                <node concept="liA8E" id="5cQVs3xqsRo" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2OqwBi" id="5cQVs3xqnXX" role="2Oq$k0">
                  <node concept="2WthIp" id="5cQVs3xqnY0" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5cQVs3xqnY2" role="2OqNvi">
                    <ref role="2WH_rO" node="5cQVs3xqnot" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="ndZCfAIfNu" role="tmbBb">
      <node concept="3clFbS" id="ndZCfAIfNv" role="2VODD2">
        <node concept="3cpWs8" id="ndZCfAIfNw" role="3cqZAp">
          <node concept="3cpWsn" id="ndZCfAIfNx" role="3cpWs9">
            <property role="TrG5h" value="breakpoint" />
            <node concept="3uibUv" id="ndZCfAIfNy" role="1tU5fm">
              <ref role="3uigEE" to="rw00:3SnNvqCaK2T" resolve="IBreakpoint" />
            </node>
            <node concept="2OqwBi" id="ndZCfAIfNz" role="33vP2m">
              <node concept="10M0yZ" id="ndZCfAIfN$" role="2Oq$k0">
                <ref role="1PxDUh" to="qst8:5DEfk93eFP3" resolve="BreakpointsUtil" />
                <ref role="3cqZAo" to="qst8:3SnNvqCbycQ" resolve="MPS_BREAKPOINT" />
              </node>
              <node concept="liA8E" id="ndZCfAIfN_" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="2OqwBi" id="ndZCfAIfNA" role="37wK5m">
                  <node concept="tl45R" id="ndZCfAIfNB" role="2Oq$k0" />
                  <node concept="liA8E" id="ndZCfAIfNC" role="2OqNvi">
                    <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ndZCfAIfND" role="3cqZAp">
          <node concept="2OqwBi" id="ndZCfAIfNE" role="3clFbG">
            <node concept="2OqwBi" id="ndZCfAIfNF" role="2Oq$k0">
              <node concept="tl45R" id="ndZCfAIfNG" role="2Oq$k0" />
              <node concept="liA8E" id="ndZCfAIfNH" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="ndZCfAIfNI" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="3y3z36" id="ndZCfAIfNN" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagT_4m" role="3uHU7B">
                  <ref role="3cqZAo" node="ndZCfAIfNx" resolve="breakpoint" />
                </node>
                <node concept="10Nm6u" id="ndZCfAIfNP" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5cQVs3xqnot" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5cQVs3xqnou" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="7vO$jtdT3WS">
    <property role="TrG5h" value="GoToSource" />
    <property role="2uzpH1" value="Go To Source" />
    <property role="3GE5qa" value="tree" />
    <property role="1rBW0U" value="true" />
    <node concept="1DS2jV" id="7vO$jtdT3X7" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="7vO$jtdT3Xc" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7TBXmZ6i7N$" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7TBXmZ6i7N_" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7vO$jtdT3WT" role="tncku">
      <node concept="3clFbS" id="7vO$jtdT3WU" role="2VODD2">
        <node concept="3clFbF" id="2Fg1BDkKNrZ" role="3cqZAp">
          <node concept="2OqwBi" id="2Fg1BDkKOKD" role="3clFbG">
            <node concept="2OqwBi" id="2Fg1BDkKOCD" role="2Oq$k0">
              <node concept="2OqwBi" id="2Fg1BDkKOxm" role="2Oq$k0">
                <node concept="2ShNRf" id="2Fg1BDkKNrV" role="2Oq$k0">
                  <node concept="1pGfFk" id="2Fg1BDkKOv8" role="2ShVmc">
                    <ref role="37wK5l" to="kz9k:~EditorNavigator.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="EditorNavigator" />
                    <node concept="2OqwBi" id="2Fg1BDkKOvJ" role="37wK5m">
                      <node concept="2WthIp" id="2Fg1BDkKOvM" role="2Oq$k0" />
                      <node concept="1DTwFV" id="2Fg1BDkKOvO" role="2OqNvi">
                        <ref role="2WH_rO" node="7TBXmZ6i7N$" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2Fg1BDkKOAx" role="2OqNvi">
                  <ref role="37wK5l" to="kz9k:~EditorNavigator.shallFocus(boolean)" resolve="shallFocus" />
                  <node concept="3clFbT" id="2Fg1BDkKOBr" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2Fg1BDkKOH7" role="2OqNvi">
                <ref role="37wK5l" to="kz9k:~EditorNavigator.shallSelect(boolean)" resolve="shallSelect" />
                <node concept="3clFbT" id="2Fg1BDkKOJa" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2Fg1BDkKOPO" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~EditorNavigator.open(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="open" />
              <node concept="2OqwBi" id="2Fg1BDkKOTg" role="37wK5m">
                <node concept="2OqwBi" id="2Fg1BDkKORn" role="2Oq$k0">
                  <node concept="2WthIp" id="2Fg1BDkKORq" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2Fg1BDkKORs" role="2OqNvi">
                    <ref role="2WH_rO" node="7vO$jtdT3X7" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="2Fg1BDkKP2M" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7vO$jtdT3xe">
    <property role="TrG5h" value="AbstractWatchableNodeActions" />
    <property role="3GE5qa" value="tree" />
    <node concept="ftmFs" id="7vO$jtdT3xg" role="ftER_">
      <node concept="tCFHf" id="7vO$jtdT3Xg" role="ftvYc">
        <ref role="tCJdB" node="7vO$jtdT3WS" resolve="GoToSource" />
      </node>
      <node concept="10WQ6h" id="7HIptzC9jpX" role="ftvYc">
        <property role="TrG5h" value="extentions" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6dAEaqvbBih" />
  <node concept="Zd50a" id="4YyvUboEVi4">
    <property role="TrG5h" value="DefaultForGNOME" />
    <property role="Zd52Q" value="1E5xVYI0RcL/Default for GNOME" />
    <property role="Z2u3V" value="false" />
    <node concept="Zd509" id="4YyvUboEVi5" role="Zd508">
      <ref role="1bYAoF" node="68aArIS9HCw" resolve="EvaluateExpression" />
      <node concept="pLAjd" id="4YyvUboEVi6" role="Zd501">
        <property role="pLAjc" value="alt+shift" />
        <property role="pLAjf" value="VK_8" />
        <property role="3hacHL" value="5SFo3Mf0QpD/replace all" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2LI6gbERUiP">
    <property role="TrG5h" value="TouchBarDefault_cmd" />
    <property role="3GE5qa" value="TouchBar" />
    <node concept="tT9cl" id="2LI6gbERUiR" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2LI6gbERTXr" resolve="TouchBarDefault_cmd" />
    </node>
    <node concept="ftmFs" id="2LI6gbERUiX" role="ftER_">
      <node concept="tCFHf" id="2LI6gbERUj0" role="ftvYc">
        <ref role="tCJdB" node="68aArIS9HJO" resolve="ToggleBreakpoint" />
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="2LI6gbES37x">
    <property role="3GE5qa" value="TouchBar" />
    <property role="TrG5h" value="TouchBarDebug" />
    <node concept="tT9cl" id="2LI6gbES37A" role="2f5YQi">
      <ref role="tU$_T" to="tprs:2LI6gbES2$T" resolve="TouchBarDebug" />
    </node>
    <node concept="fu6FP" id="2LI6gbES37G" role="ftER_">
      <node concept="3clFbS" id="2LI6gbES37I" role="2VODD2">
        <node concept="3clFbF" id="2LI6gbES3XV" role="3cqZAp">
          <node concept="2OqwBi" id="2LI6gbES49r" role="3clFbG">
            <node concept="2WthIp" id="2LI6gbES3XU" role="2Oq$k0" />
            <node concept="liA8E" id="2LI6gbES4Cm" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction)" resolve="add" />
              <node concept="2ShNRf" id="2LI6gbES4K3" role="37wK5m">
                <node concept="1pGfFk" id="2LI6gbESkkq" role="2ShVmc">
                  <ref role="37wK5l" node="24OxoGwTqgi" resolve="MuteBreakpoints" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

