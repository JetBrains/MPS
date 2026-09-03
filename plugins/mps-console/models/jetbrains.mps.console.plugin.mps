<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:12d1fcfd-d198-4520-8b28-436d7e8a8ae6(jetbrains.mps.console.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="6" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="4" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
  </languages>
  <imports>
    <import index="qgo0" ref="r:de40a5a4-f08c-4c67-ac43-e1f5c384f7d6(jetbrains.mps.console.tool)" />
    <import index="oh9p" ref="r:ab572aa6-6e4f-43f3-8bc9-ad4a8ae29372(jetbrains.mps.console.actions)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mmaq" ref="f647e48e-4568-4f4c-b48a-1546492c6a2e/java:org.jdom(org.jdom/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="eynw" ref="r:359b1d2b-77c4-46df-9bf2-b25cbea32254(jetbrains.mps.console.base.structure)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="v7ux" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.content(MPS.IDEA/)" />
    <import index="eqyk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.plugins.tool(MPS.Platform/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="7927811850890310904" name="jetbrains.mps.lang.resources.structure.ConstantFieldIcon" flags="ng" index="1GtWCo">
        <child id="7927811850890311914" name="field" index="1GtWoa" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="5896642449625981893" name="jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration" flags="ng" index="2wDNrl" />
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="43535111852086466" name="isAvailableOnStartup" index="tEvSQ" />
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
        <child id="471625927503648174" name="shortcut" index="15cTzA" />
        <child id="6791676465872004185" name="toolIcon" index="1nVCmq" />
      </concept>
      <concept id="471625927503603120" name="jetbrains.mps.lang.plugin.structure.ToolKeystroke" flags="ng" index="15fezS">
        <child id="471625927503601958" name="keystroke" index="15feLI" />
      </concept>
      <concept id="471625927503601957" name="jetbrains.mps.lang.plugin.structure.CustomToolShortcut" flags="ng" index="15feLH">
        <child id="471625927503603128" name="changes" index="15fezK" />
      </concept>
      <concept id="5818192529492099570" name="jetbrains.mps.lang.plugin.structure.CloseTabOperation" flags="nn" index="3ryLUP">
        <child id="5818192529492102108" name="componentExpression" index="3ryLir" />
      </concept>
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
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
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1196978630214" name="jetbrains.mps.lang.core.structure.IResolveInfo" flags="ngI" index="2Lv6Xg">
        <property id="1196978656277" name="resolveInfo" index="2Lvdk3" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
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
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2wDNrl" id="2$nlLZbVXWa">
    <property role="3GE5qa" value="tool" />
    <property role="TrG5h" value="ConsoleTool" />
    <property role="2XNbzY" value="Console" />
    <property role="tEvSQ" value="true" />
    <node concept="2XrIbr" id="2pebujXOEef" role="2XNbBy">
      <property role="TrG5h" value="doUnregister" />
      <node concept="3cqZAl" id="2pebujXOIfL" role="3clF45" />
      <node concept="3clFbS" id="2pebujXOEeh" role="3clF47">
        <node concept="3clFbF" id="2fyEhAmKmiL" role="3cqZAp">
          <node concept="37vLTI" id="2fyEhAmKmiN" role="3clFbG">
            <node concept="2OqwBi" id="2fyEhAmKmiQ" role="37vLTJ">
              <node concept="2WthIp" id="2fyEhAmKmiT" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2fyEhAmKmiU" role="2OqNvi">
                <ref role="2WH_rO" node="2fyEhAmKdxL" resolve="myTabsInitialized" />
              </node>
            </node>
            <node concept="3clFbT" id="2fyEhAmKmiV" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2pebujXOJFd" role="3cqZAp">
          <node concept="2OqwBi" id="2pebujXOKBh" role="3clFbG">
            <node concept="2OqwBi" id="2pebujXOJF7" role="2Oq$k0">
              <node concept="2WthIp" id="2pebujXOJFa" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2pebujXOJFc" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
              </node>
            </node>
            <node concept="2Kehj3" id="2pebujXOPeM" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4qsxhdjKqUW" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZc0PFd" role="2XNbBy">
      <property role="TrG5h" value="doRegister" />
      <node concept="3clFbS" id="11UfqYTPC0S" role="3clF47">
        <node concept="3clFbF" id="2$nlLZc0PFj" role="3cqZAp">
          <node concept="2OqwBi" id="2$nlLZc0TlA" role="3clFbG">
            <node concept="2WthIp" id="2$nlLZc0TlD" role="2Oq$k0" />
            <node concept="2XshWL" id="2$nlLZc0TlF" role="2OqNvi">
              <ref role="2WH_rO" node="2$nlLZbZUBw" resolve="initTabs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="11UfqYTPC0P" role="3clF45" />
      <node concept="2AHcQZ" id="11UfqYTPEar" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tmbuc" id="11UfqYTPC0N" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4GSEy3uNxSW" role="2XNbBy">
      <property role="TrG5h" value="getMyself" />
      <node concept="3clFbS" id="4GSEy3uNgeP" role="3clF47">
        <node concept="3cpWs6" id="4GSEy3uNgeQ" role="3cqZAp">
          <node concept="1eOMI4" id="4GSEy3uNgeR" role="3cqZAk">
            <node concept="10QFUN" id="4GSEy3uNgeS" role="1eOMHV">
              <node concept="3uibUv" id="4GSEy3uNgeT" role="10QFUM">
                <ref role="3uigEE" to="71xd:~BaseTabbedProjectTool" resolve="BaseTabbedProjectTool" />
              </node>
              <node concept="2OqwBi" id="4GSEy3uNgeU" role="10QFUP">
                <node concept="2WthIp" id="4GSEy3uNgeV" role="2Oq$k0">
                  <ref role="32nkFo" node="2$nlLZbVXWa" resolve="ConsoleTool" />
                </node>
                <node concept="2BZ7hE" id="4GSEy3uNgeW" role="2OqNvi">
                  <ref role="2WH_rO" node="4GSEy3uM01_" resolve="myself" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4GSEy3uNgf0" role="3clF45">
        <ref role="3uigEE" to="71xd:~BaseTabbedProjectTool" resolve="BaseTabbedProjectTool" />
      </node>
      <node concept="3Tm6S6" id="4GSEy3uNgeZ" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZbYu$Y" role="2XNbBy">
      <property role="TrG5h" value="clearAll" />
      <node concept="3clFbS" id="6ST_gT5Oi2W" role="3clF47">
        <node concept="2$JKZl" id="2P1lCEM5HdU" role="3cqZAp">
          <node concept="3clFbS" id="2P1lCEM5HdW" role="2LFqv$">
            <node concept="3cpWs8" id="2fyEhAmI$8A" role="3cqZAp">
              <node concept="3cpWsn" id="2fyEhAmI$8D" role="3cpWs9">
                <property role="TrG5h" value="tab" />
                <node concept="3uibUv" id="2fyEhAmI$8F" role="1tU5fm">
                  <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                </node>
                <node concept="2OqwBi" id="2fyEhAmI$8G" role="33vP2m">
                  <node concept="2OqwBi" id="2fyEhAmI$8J" role="2Oq$k0">
                    <node concept="2WthIp" id="2fyEhAmI$8M" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="2fyEhAmI$8N" role="2OqNvi">
                      <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="2fyEhAmI$8O" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2fyEhAmIBzn" role="3cqZAp">
              <node concept="3cpWsn" id="2fyEhAmIBzq" role="3cpWs9">
                <property role="TrG5h" value="tabCountBefore" />
                <node concept="10Oyi0" id="2fyEhAmIBzs" role="1tU5fm" />
                <node concept="2OqwBi" id="2fyEhAmIBzt" role="33vP2m">
                  <node concept="2OqwBi" id="2fyEhAmIBzw" role="2Oq$k0">
                    <node concept="2WthIp" id="2fyEhAmIBzz" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="2fyEhAmIBz$" role="2OqNvi">
                      <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2fyEhAmIBz_" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2$nlLZcjRTS" role="3cqZAp">
              <node concept="2OqwBi" id="2$nlLZcjS4H" role="3clFbG">
                <node concept="2WthIp" id="2$nlLZcjRTQ" role="2Oq$k0" />
                <node concept="3ryLUP" id="2$nlLZcjSqH" role="2OqNvi">
                  <node concept="37vLTw" id="2fyEhAmIGyw" role="3ryLir">
                    <ref role="3cqZAo" node="2fyEhAmI$8D" resolve="tab" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2fyEhAmIKAK" role="3cqZAp">
              <node concept="2d3UOw" id="2fyEhAmIKAN" role="3clFbw">
                <node concept="2OqwBi" id="2fyEhAmIKAQ" role="3uHU7B">
                  <node concept="2OqwBi" id="2fyEhAmIKAT" role="2Oq$k0">
                    <node concept="2WthIp" id="2fyEhAmIKAW" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="2fyEhAmIKAX" role="2OqNvi">
                      <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="2fyEhAmIKAY" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="2fyEhAmIKAZ" role="3uHU7w">
                  <ref role="3cqZAo" node="2fyEhAmIBzq" resolve="tabCountBefore" />
                </node>
              </node>
              <node concept="3clFbS" id="2fyEhAmIKB0" role="3clFbx">
                <node concept="3clFbF" id="2fyEhAmIKB1" role="3cqZAp">
                  <node concept="2OqwBi" id="2fyEhAmIKB3" role="3clFbG">
                    <node concept="2OqwBi" id="2fyEhAmIKB6" role="2Oq$k0">
                      <node concept="2WthIp" id="2fyEhAmIKB9" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="2fyEhAmIKBa" role="2OqNvi">
                        <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
                      </node>
                    </node>
                    <node concept="3dhRuq" id="2fyEhAmIKBb" role="2OqNvi">
                      <node concept="37vLTw" id="2fyEhAmIKBd" role="25WWJ7">
                        <ref role="3cqZAo" node="2fyEhAmI$8D" resolve="tab" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2P1lCEM5HFk" role="2$JKZa">
            <node concept="2OqwBi" id="2$nlLZbYv6k" role="2Oq$k0">
              <node concept="2WthIp" id="2$nlLZbYv6n" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZbYv6p" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
              </node>
            </node>
            <node concept="3GX2aA" id="2P1lCEM5KNA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="5_3XmOPgxd4" role="3cqZAp">
          <node concept="3cpWsn" id="5_3XmOPgxd5" role="3cpWs9">
            <property role="TrG5h" value="persistence" />
            <node concept="3uibUv" id="5_3XmOPgxd6" role="1tU5fm">
              <ref role="3uigEE" node="6_l8R4fErqk" resolve="ConsoleToolPersistence" />
            </node>
            <node concept="2OqwBi" id="5_3XmOPgxd7" role="33vP2m">
              <node concept="2OqwBi" id="5_3XmOPgxd8" role="2Oq$k0">
                <node concept="2WthIp" id="5_3XmOPgxd9" role="2Oq$k0" />
                <node concept="2BZ7hE" id="5_3XmOPgxda" role="2OqNvi">
                  <ref role="2WH_rO" node="2$nlLZc8dHG" resolve="myIdeaProject" />
                </node>
              </node>
              <node concept="liA8E" id="5_3XmOPgxdb" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="5_3XmOPgxdc" role="37wK5m">
                  <ref role="3VsUkX" node="6_l8R4fErqk" resolve="ConsoleToolPersistence" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5_3XmOPgxP9" role="3cqZAp">
          <node concept="3clFbS" id="5_3XmOPgxPb" role="3clFbx">
            <node concept="3clFbF" id="5_3XmOPgyYz" role="3cqZAp">
              <node concept="2OqwBi" id="5_3XmOPgznB" role="3clFbG">
                <node concept="37vLTw" id="5_3XmOPgyYx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5_3XmOPgxd5" resolve="persistence" />
                </node>
                <node concept="liA8E" id="5_3XmOPgzRv" role="2OqNvi">
                  <ref role="37wK5l" node="5_3XmOPgqL9" resolve="storeLoadedState" />
                  <node concept="2ShNRf" id="5_3XmOPgAAs" role="37wK5m">
                    <node concept="HV5vD" id="5_3XmOPgTt2" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="HV5vE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5_3XmOPgykI" role="3clFbw">
            <node concept="10Nm6u" id="5_3XmOPgyBk" role="3uHU7w" />
            <node concept="37vLTw" id="5_3XmOPgxUP" role="3uHU7B">
              <ref role="3cqZAo" node="5_3XmOPgxd5" resolve="persistence" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ST_gT5Or_h" role="3cqZAp">
          <node concept="2OqwBi" id="2$nlLZc0FpT" role="3clFbG">
            <node concept="2WthIp" id="2$nlLZc0FpW" role="2Oq$k0" />
            <node concept="2XshWL" id="2$nlLZc0FpY" role="2OqNvi">
              <ref role="2WH_rO" node="2$nlLZbZUBw" resolve="initTabs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ST_gT5Oi2R" role="3clF45" />
      <node concept="3Tm1VV" id="6ST_gT5NOUG" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4GSEy3uMN6X" role="2XNbBy">
      <property role="TrG5h" value="selectTab" />
      <node concept="3clFbS" id="4GSEy3uMN70" role="3clF47">
        <node concept="3clFbF" id="2fyEhAlRAiJ" role="3cqZAp">
          <node concept="2OqwBi" id="2fyEhAlRAiL" role="3clFbG">
            <node concept="2OqwBi" id="2fyEhAlRAiO" role="2Oq$k0">
              <node concept="2WthIp" id="2fyEhAlRAiR" role="2Oq$k0" />
              <node concept="2XshWL" id="2fyEhAlRAiS" role="2OqNvi">
                <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
              </node>
            </node>
            <node concept="liA8E" id="2fyEhAlRAiT" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.selectTabSafely(javax.swing.JComponent)" resolve="selectTabSafely" />
              <node concept="37vLTw" id="2fyEhAlRAiU" role="37wK5m">
                <ref role="3cqZAo" node="4GSEy3uMN72" resolve="tab" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4GSEy3uMN71" role="3clF45" />
      <node concept="37vLTG" id="4GSEy3uMN72" role="3clF46">
        <property role="TrG5h" value="tab" />
        <node concept="3uibUv" id="4GSEy3uMN73" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4GSEy3uMN74" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZbYzpR" role="2XNbBy">
      <property role="TrG5h" value="addConsoleTab" />
      <node concept="3clFbS" id="5VzHAnc510k" role="3clF47">
        <node concept="3cpWs8" id="5VzHAncawFW" role="3cqZAp">
          <node concept="3cpWsn" id="5VzHAncawFZ" role="3cpWs9">
            <property role="TrG5h" value="title" />
            <node concept="17QB3L" id="5VzHAncawFU" role="1tU5fm" />
            <node concept="2EnYce" id="5VzHAnceoRH" role="33vP2m">
              <node concept="37vLTw" id="5VzHAncazNU" role="2Oq$k0">
                <ref role="3cqZAo" node="5VzHAncaimG" resolve="tabState" />
              </node>
              <node concept="2OwXpG" id="5VzHAncaBtV" role="2OqNvi">
                <ref role="2Oxat5" to="oh9p:5VzHAnc9T5v" resolve="title" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5VzHAncaEHs" role="3cqZAp">
          <node concept="3cpWsn" id="5VzHAncaEHv" role="3cpWs9">
            <property role="TrG5h" value="history" />
            <node concept="3uibUv" id="4$5fOk0ILkS" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2EnYce" id="5_fMMnAPCla" role="33vP2m">
              <node concept="2EnYce" id="5_fMMnAPB$c" role="2Oq$k0">
                <node concept="2EnYce" id="5_fMMnAPB2l" role="2Oq$k0">
                  <node concept="2EnYce" id="5VzHAnceqcm" role="2Oq$k0">
                    <node concept="37vLTw" id="5VzHAncaHR5" role="2Oq$k0">
                      <ref role="3cqZAo" node="5VzHAncaimG" resolve="tabState" />
                    </node>
                    <node concept="2OwXpG" id="4$5fOk0ILAm" role="2OqNvi">
                      <ref role="2Oxat5" to="oh9p:4$5fOk0GUTg" resolve="historyXml" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5_fMMnAPsve" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getChildren()" resolve="getChildren" />
                  </node>
                </node>
                <node concept="liA8E" id="5_fMMnAPukg" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="5_fMMnAP_2A" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5_fMMnAPAEy" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.clone()" resolve="clone" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5VzHAnc510l" role="3cqZAp">
          <node concept="3clFbS" id="5VzHAnc510m" role="3clFbx">
            <node concept="3clFbF" id="5VzHAnc510n" role="3cqZAp">
              <node concept="37vLTI" id="5VzHAnc510o" role="3clFbG">
                <node concept="37vLTw" id="5VzHAnc510p" role="37vLTJ">
                  <ref role="3cqZAo" node="5VzHAnc511e" resolve="icon" />
                </node>
                <node concept="10M0yZ" id="5VzHAnc510q" role="37vLTx">
                  <ref role="3cqZAo" to="l7us:~MPSIcons$ToolWindows.OpenTerminal_13x13" resolve="OpenTerminal_13x13" />
                  <ref role="1PxDUh" to="l7us:~MPSIcons$ToolWindows" resolve="MPSIcons.ToolWindows" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5VzHAnc510r" role="3clFbw">
            <node concept="10Nm6u" id="5VzHAnc510s" role="3uHU7w" />
            <node concept="37vLTw" id="5VzHAnc510t" role="3uHU7B">
              <ref role="3cqZAo" node="5VzHAnc511e" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5VzHAnc510u" role="3cqZAp">
          <node concept="3clFbS" id="5VzHAnc510v" role="3clFbx">
            <node concept="3clFbF" id="5VzHAnc510w" role="3cqZAp">
              <node concept="37vLTI" id="5VzHAnc510x" role="3clFbG">
                <node concept="Xl_RD" id="5VzHAnc510y" role="37vLTx">
                  <property role="Xl_RC" value="Console" />
                </node>
                <node concept="37vLTw" id="5VzHAnc510z" role="37vLTJ">
                  <ref role="3cqZAo" node="5VzHAncawFZ" resolve="title" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5VzHAnc510$" role="3clFbw">
            <node concept="10Nm6u" id="5VzHAnc510_" role="3uHU7w" />
            <node concept="37vLTw" id="5VzHAnc510A" role="3uHU7B">
              <ref role="3cqZAo" node="5VzHAncawFZ" resolve="title" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2$nlLZchbbu" role="3cqZAp">
          <node concept="3cpWsn" id="2$nlLZchbbv" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="3uibUv" id="2$nlLZchbbt" role="1tU5fm">
              <ref role="3uigEE" to="oh9p:2$nlLZc9SPm" resolve="IConsoleTool" />
            </node>
            <node concept="2ShNRf" id="2$nlLZchbbw" role="33vP2m">
              <node concept="YeOm9" id="2$nlLZchbbx" role="2ShVmc">
                <node concept="1Y3b0j" id="2$nlLZchbby" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="oh9p:2$nlLZc9SPm" resolve="IConsoleTool" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="2$nlLZchbbz" role="1B3o_S" />
                  <node concept="3clFb_" id="2$nlLZchbbE" role="jymVt">
                    <property role="TrG5h" value="getToolWindow" />
                    <node concept="3Tm1VV" id="2$nlLZchbbF" role="1B3o_S" />
                    <node concept="3uibUv" id="2$nlLZchbbG" role="3clF45">
                      <ref role="3uigEE" to="jkny:~ToolWindow" resolve="ToolWindow" />
                    </node>
                    <node concept="3clFbS" id="2$nlLZchbbH" role="3clF47">
                      <node concept="3clFbF" id="4GSEy3uM91q" role="3cqZAp">
                        <node concept="2OqwBi" id="4GSEy3uMlNu" role="3clFbG">
                          <node concept="2OqwBi" id="4GSEy3uN_Bw" role="2Oq$k0">
                            <node concept="2WthIp" id="4GSEy3uN_Bz" role="2Oq$k0">
                              <ref role="32nkFo" node="2$nlLZbVXWa" resolve="ConsoleTool" />
                            </node>
                            <node concept="2XshWL" id="4GSEy3uN_B_" role="2OqNvi">
                              <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4GSEy3uMo$K" role="2OqNvi">
                            <ref role="37wK5l" to="71xd:~BaseTool.getToolWindow()" resolve="getToolWindow" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2$nlLZchbbI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="2$nlLZchbbJ" role="jymVt" />
                  <node concept="3clFb_" id="2$nlLZchbbK" role="jymVt">
                    <property role="TrG5h" value="selectTab" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="2$nlLZchbbL" role="1B3o_S" />
                    <node concept="3cqZAl" id="2$nlLZchbbM" role="3clF45" />
                    <node concept="37vLTG" id="2$nlLZchbbN" role="3clF46">
                      <property role="TrG5h" value="tab" />
                      <node concept="3uibUv" id="2$nlLZchbbO" role="1tU5fm">
                        <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2$nlLZchbbP" role="3clF47">
                      <node concept="3clFbF" id="4GSEy3uN57B" role="3cqZAp">
                        <node concept="2OqwBi" id="4GSEy3uN7up" role="3clFbG">
                          <node concept="2WthIp" id="4GSEy3uN57A" role="2Oq$k0" />
                          <node concept="2XshWL" id="4GSEy3uN9SI" role="2OqNvi">
                            <ref role="2WH_rO" node="4GSEy3uMN6X" resolve="selectTab" />
                            <node concept="37vLTw" id="4GSEy3uNczx" role="2XxRq1">
                              <ref role="3cqZAo" node="2$nlLZchbbN" resolve="tab" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2$nlLZchbbQ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="9fcK6$QdBb" role="jymVt">
                    <property role="TrG5h" value="closeTab" />
                    <node concept="37vLTG" id="9fcK6$QdBc" role="3clF46">
                      <property role="TrG5h" value="tab" />
                      <node concept="3uibUv" id="9fcK6$QdBd" role="1tU5fm">
                        <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="9fcK6$QdBf" role="1B3o_S" />
                    <node concept="3cqZAl" id="9fcK6$QdBg" role="3clF45" />
                    <node concept="3clFbS" id="9fcK6$QdBi" role="3clF47">
                      <node concept="3clFbF" id="9fcK6$QkOx" role="3cqZAp">
                        <node concept="2OqwBi" id="9fcK6$QkOz" role="3clFbG">
                          <node concept="2OqwBi" id="9fcK6$QkO$" role="2Oq$k0">
                            <node concept="2WthIp" id="9fcK6$QkO_" role="2Oq$k0">
                              <ref role="32nkFo" node="2$nlLZbVXWa" resolve="ConsoleTool" />
                            </node>
                            <node concept="2XshWL" id="9fcK6$QkOA" role="2OqNvi">
                              <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
                            </node>
                          </node>
                          <node concept="liA8E" id="9fcK6$QroE" role="2OqNvi">
                            <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.closeTab(javax.swing.JComponent)" resolve="closeTab" />
                            <node concept="37vLTw" id="9fcK6$Qu45" role="37wK5m">
                              <ref role="3cqZAo" node="9fcK6$QdBc" resolve="tab" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9fcK6$QdBj" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5VzHAncaQTT" role="3cqZAp">
          <node concept="3cpWsn" id="5VzHAncaQTU" role="3cpWs9">
            <property role="TrG5h" value="tab" />
            <node concept="3uibUv" id="5VzHAncaQTV" role="1tU5fm">
              <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5VzHAncaUd2" role="3cqZAp">
          <node concept="3clFbS" id="5VzHAncaUd5" role="3clFbx">
            <node concept="3clFbF" id="5VzHAncb7Lw" role="3cqZAp">
              <node concept="37vLTI" id="5VzHAncb7Lx" role="3clFbG">
                <node concept="37vLTw" id="5VzHAncb7Ly" role="37vLTJ">
                  <ref role="3cqZAo" node="5VzHAncaQTU" resolve="tab" />
                </node>
                <node concept="2ShNRf" id="5VzHAncb7Lz" role="37vLTx">
                  <node concept="1pGfFk" id="5VzHAncb7L$" role="2ShVmc">
                    <ref role="37wK5l" to="qgo0:2wDkRIghB1S" resolve="OutputConsoleTab" />
                    <node concept="2OqwBi" id="2$nlLZbZQk2" role="37wK5m">
                      <node concept="2WthIp" id="2$nlLZbZQk5" role="2Oq$k0" />
                      <node concept="2BZ7hE" id="2$nlLZbZQk7" role="2OqNvi">
                        <ref role="2WH_rO" node="2$nlLZbYb9h" resolve="myMPSProject" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2$nlLZchbbR" role="37wK5m">
                      <ref role="3cqZAo" node="2$nlLZchbbv" resolve="tool" />
                    </node>
                    <node concept="37vLTw" id="5VzHAncb7LA" role="37wK5m">
                      <ref role="3cqZAo" node="5VzHAncawFZ" resolve="title" />
                    </node>
                    <node concept="37vLTw" id="5VzHAncb7LB" role="37wK5m">
                      <ref role="3cqZAo" node="5VzHAncaEHv" resolve="history" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2EnYce" id="5VzHAncenIA" role="3clFbw">
            <node concept="37vLTw" id="5VzHAncaWCI" role="2Oq$k0">
              <ref role="3cqZAo" node="5VzHAncaimG" resolve="tabState" />
            </node>
            <node concept="2OwXpG" id="5VzHAncaZST" role="2OqNvi">
              <ref role="2Oxat5" to="oh9p:5VzHAnc9Nn9" resolve="isHistoryTab" />
            </node>
          </node>
          <node concept="9aQIb" id="5VzHAncb1OO" role="9aQIa">
            <node concept="3clFbS" id="5VzHAncb1OP" role="9aQI4">
              <node concept="3clFbF" id="5VzHAncb4Ju" role="3cqZAp">
                <node concept="37vLTI" id="5VzHAncb5s$" role="3clFbG">
                  <node concept="37vLTw" id="5VzHAncb4Jt" role="37vLTJ">
                    <ref role="3cqZAo" node="5VzHAncaQTU" resolve="tab" />
                  </node>
                  <node concept="2ShNRf" id="5VzHAnc510E" role="37vLTx">
                    <node concept="1pGfFk" id="5VzHAnc510F" role="2ShVmc">
                      <ref role="37wK5l" to="qgo0:6ysF3v1PQFv" resolve="DialogConsoleTab" />
                      <node concept="2OqwBi" id="2$nlLZbZQWi" role="37wK5m">
                        <node concept="2WthIp" id="2$nlLZbZQWl" role="2Oq$k0" />
                        <node concept="2BZ7hE" id="2$nlLZbZQWn" role="2OqNvi">
                          <ref role="2WH_rO" node="2$nlLZbYb9h" resolve="myMPSProject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2$nlLZchhPj" role="37wK5m">
                        <ref role="3cqZAo" node="2$nlLZchbbv" resolve="tool" />
                      </node>
                      <node concept="37vLTw" id="5VzHAnc510H" role="37wK5m">
                        <ref role="3cqZAo" node="5VzHAncawFZ" resolve="title" />
                      </node>
                      <node concept="37vLTw" id="5VzHAnc510I" role="37wK5m">
                        <ref role="3cqZAo" node="5VzHAncaEHv" resolve="history" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5VzHAnc510J" role="3cqZAp">
          <node concept="2OqwBi" id="5VzHAnc510K" role="3clFbG">
            <node concept="2OqwBi" id="2$nlLZbZR6M" role="2Oq$k0">
              <node concept="2WthIp" id="2$nlLZbZR6P" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZbZR6R" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
              </node>
            </node>
            <node concept="TSZUe" id="5VzHAnc510M" role="2OqNvi">
              <node concept="37vLTw" id="5VzHAnc510N" role="25WWJ7">
                <ref role="3cqZAo" node="5VzHAncaQTU" resolve="tab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4GSEy3uNE7u" role="3cqZAp">
          <node concept="2OqwBi" id="4GSEy3uNHIn" role="3clFbG">
            <node concept="2OqwBi" id="4GSEy3uNE7w" role="2Oq$k0">
              <node concept="2WthIp" id="4GSEy3uNE7x" role="2Oq$k0">
                <ref role="32nkFo" node="2$nlLZbVXWa" resolve="ConsoleTool" />
              </node>
              <node concept="2XshWL" id="4GSEy3uNE7y" role="2OqNvi">
                <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
              </node>
            </node>
            <node concept="liA8E" id="4GSEy3uNKhT" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.addTab(javax.swing.JComponent,java.lang.String,javax.swing.Icon,jetbrains.mps.plugins.tool.IComponentDisposer,boolean)" resolve="addTab" />
              <node concept="37vLTw" id="4GSEy3uNMnY" role="37wK5m">
                <ref role="3cqZAo" node="5VzHAncaQTU" resolve="tab" />
              </node>
              <node concept="37vLTw" id="4GSEy3uNQws" role="37wK5m">
                <ref role="3cqZAo" node="5VzHAncawFZ" resolve="title" />
              </node>
              <node concept="37vLTw" id="4GSEy3uNUTt" role="37wK5m">
                <ref role="3cqZAo" node="5VzHAnc511e" resolve="icon" />
              </node>
              <node concept="2ShNRf" id="4YIWOQyBfCz" role="37wK5m">
                <node concept="YeOm9" id="4YIWOQyBxoq" role="2ShVmc">
                  <node concept="1Y3b0j" id="4YIWOQyBxot" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="eqyk:~IComponentDisposer" resolve="IComponentDisposer" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="4YIWOQyBxou" role="1B3o_S" />
                    <node concept="3clFb_" id="4YIWOQyBxoG" role="jymVt">
                      <property role="TrG5h" value="disposeComponent" />
                      <node concept="3Tm1VV" id="4YIWOQyBxoH" role="1B3o_S" />
                      <node concept="3cqZAl" id="4YIWOQyBxoJ" role="3clF45" />
                      <node concept="37vLTG" id="4YIWOQyBxoK" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="4YIWOQyBxoQ" role="1tU5fm">
                          <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4YIWOQyBxoM" role="3clF47">
                        <node concept="3clFbF" id="4YIWOQyBBb4" role="3cqZAp">
                          <node concept="2OqwBi" id="4YIWOQyBBb6" role="3clFbG">
                            <node concept="2OqwBi" id="4YIWOQyBBb7" role="2Oq$k0">
                              <node concept="2WthIp" id="4YIWOQyBBb8" role="2Oq$k0" />
                              <node concept="2BZ7hE" id="4YIWOQyBBb9" role="2OqNvi">
                                <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
                              </node>
                            </node>
                            <node concept="3dhRuq" id="4YIWOQyBBba" role="2OqNvi">
                              <node concept="37vLTw" id="4YIWOQyBBbb" role="25WWJ7">
                                <ref role="3cqZAo" node="4YIWOQyBxoK" resolve="component" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4YIWOQyBxoO" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4YIWOQyBxoP" role="2Ghqu4">
                      <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4GSEy3uO8$B" role="37wK5m">
                <ref role="3cqZAo" node="7s6$JurAJpA" resolve="openTool" />
              </node>
              <node concept="3uibUv" id="JU0IbvloH4" role="3PaCim">
                <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4GSEy3uNBXV" role="3cqZAp" />
        <node concept="3cpWs6" id="5VzHAnccAAR" role="3cqZAp">
          <node concept="37vLTw" id="5VzHAnccIsR" role="3cqZAk">
            <ref role="3cqZAo" node="5VzHAncaQTU" resolve="tab" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5VzHAnccNeE" role="3clF45">
        <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
      </node>
      <node concept="37vLTG" id="5VzHAncaimG" role="3clF46">
        <property role="TrG5h" value="tabState" />
        <node concept="3uibUv" id="5VzHAncaln$" role="1tU5fm">
          <ref role="3uigEE" to="oh9p:2$nlLZbWgc5" resolve="TabState" />
        </node>
        <node concept="2AHcQZ" id="5VzHAncer28" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="5VzHAnc511e" role="3clF46">
        <property role="TrG5h" value="icon" />
        <node concept="3uibUv" id="5VzHAnc511f" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
        </node>
        <node concept="2AHcQZ" id="5VzHAnc511g" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="7s6$JurAJpA" role="3clF46">
        <property role="TrG5h" value="openTool" />
        <node concept="10P_77" id="7s6$JurAMns" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2zN3jCMGXqf" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZbZUBw" role="2XNbBy">
      <property role="TrG5h" value="initTabs" />
      <node concept="3clFbS" id="7GtYJ30PG8e" role="3clF47">
        <node concept="3cpWs8" id="2$nlLZc8Bbf" role="3cqZAp">
          <node concept="3cpWsn" id="2$nlLZc8Bbg" role="3cpWs9">
            <property role="TrG5h" value="cm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2$nlLZc8$Rl" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~ContentManager" resolve="ContentManager" />
            </node>
            <node concept="2OqwBi" id="2fyEhAlR81o" role="33vP2m">
              <node concept="2OqwBi" id="2fyEhAlR81r" role="2Oq$k0">
                <node concept="2WthIp" id="2fyEhAlR81u" role="2Oq$k0" />
                <node concept="2XshWL" id="2fyEhAlR81v" role="2OqNvi">
                  <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
                </node>
              </node>
              <node concept="liA8E" id="2fyEhAlR81w" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.getContentManager()" resolve="getContentManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2fyEhAlRdB9" role="3cqZAp">
          <node concept="3clFbC" id="2fyEhAlRdBc" role="3clFbw">
            <node concept="37vLTw" id="2fyEhAlRdBf" role="3uHU7B">
              <ref role="3cqZAo" node="2$nlLZc8Bbg" resolve="cm" />
            </node>
            <node concept="10Nm6u" id="2fyEhAlRdBg" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2fyEhAlRdBh" role="3clFbx">
            <node concept="3cpWs6" id="2fyEhAlRdBi" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="7jXRP$r62gj" role="3cqZAp">
          <node concept="3cpWsn" id="7jXRP$r62gk" role="3cpWs9">
            <property role="TrG5h" value="persistence" />
            <node concept="3uibUv" id="7jXRP$r62bw" role="1tU5fm">
              <ref role="3uigEE" node="6_l8R4fErqk" resolve="ConsoleToolPersistence" />
            </node>
            <node concept="2OqwBi" id="7jXRP$r62gl" role="33vP2m">
              <node concept="2OqwBi" id="7jXRP$r62gm" role="2Oq$k0">
                <node concept="2WthIp" id="7jXRP$r62gn" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7jXRP$r62go" role="2OqNvi">
                  <ref role="2WH_rO" node="2$nlLZc8dHG" resolve="myIdeaProject" />
                </node>
              </node>
              <node concept="liA8E" id="7jXRP$r62gp" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="7jXRP$r62gq" role="37wK5m">
                  <ref role="3VsUkX" node="6_l8R4fErqk" resolve="ConsoleToolPersistence" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5_3XmOPfKeW" role="3cqZAp">
          <node concept="3cpWsn" id="5_3XmOPfKeX" role="3cpWs9">
            <property role="TrG5h" value="loadedState" />
            <node concept="3uibUv" id="5_3XmOPfK9b" role="1tU5fm">
              <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
            </node>
            <node concept="3K4zz7" id="5_3XmOPfNLT" role="33vP2m">
              <node concept="2OqwBi" id="5_3XmOPfRQE" role="3K4E3e">
                <node concept="37vLTw" id="5_3XmOPfQu2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jXRP$r62gk" resolve="persistence" />
                </node>
                <node concept="liA8E" id="5_3XmOPfSn8" role="2OqNvi">
                  <ref role="37wK5l" node="1136W4AspLp" resolve="retrieveLoadedState" />
                </node>
              </node>
              <node concept="10Nm6u" id="5_3XmOPfTCe" role="3K4GZi" />
              <node concept="3y3z36" id="5_3XmOPfLMa" role="3K4Cdx">
                <node concept="10Nm6u" id="5_3XmOPfLMb" role="3uHU7w" />
                <node concept="37vLTw" id="5_3XmOPfLMc" role="3uHU7B">
                  <ref role="3cqZAo" node="7jXRP$r62gk" resolve="persistence" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2mGSJz0G2Rb" role="3cqZAp">
          <node concept="3clFbS" id="2mGSJz0G2Re" role="3clFbx">
            <node concept="2Gpval" id="5VzHAncbZDC" role="3cqZAp">
              <node concept="2GrKxI" id="5VzHAncbZDE" role="2Gsz3X">
                <property role="TrG5h" value="tabState" />
              </node>
              <node concept="2OqwBi" id="5VzHAncc4mB" role="2GsD0m">
                <node concept="37vLTw" id="5_3XmOPg3Xh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5_3XmOPfKeX" resolve="loadedState" />
                </node>
                <node concept="2OwXpG" id="5VzHAncc5CN" role="2OqNvi">
                  <ref role="2Oxat5" to="oh9p:5VzHAncafkW" resolve="tabs" />
                </node>
              </node>
              <node concept="3clFbS" id="5VzHAncbZDI" role="2LFqv$">
                <node concept="3cpWs8" id="1mK8QXd_nBk" role="3cqZAp">
                  <node concept="3cpWsn" id="1mK8QXd_nBl" role="3cpWs9">
                    <property role="TrG5h" value="tab" />
                    <node concept="3uibUv" id="5VzHAnccT$F" role="1tU5fm">
                      <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                    </node>
                    <node concept="2OqwBi" id="2$nlLZckBJO" role="33vP2m">
                      <node concept="2WthIp" id="2$nlLZckBJP" role="2Oq$k0" />
                      <node concept="2XshWL" id="2$nlLZckBJQ" role="2OqNvi">
                        <ref role="2WH_rO" node="2$nlLZbYzpR" resolve="addConsoleTab" />
                        <node concept="2GrUjf" id="2$nlLZckBJR" role="2XxRq1">
                          <ref role="2Gs0qQ" node="5VzHAncbZDE" resolve="tabState" />
                        </node>
                        <node concept="10Nm6u" id="2$nlLZckBJS" role="2XxRq1" />
                        <node concept="3clFbT" id="2$nlLZckBJT" role="2XxRq1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1mK8QXd_zDi" role="3cqZAp">
                  <node concept="2EnYce" id="2fyEhAlRik_" role="3clFbG">
                    <node concept="2OqwBi" id="2fyEhAlRikC" role="2Oq$k0">
                      <node concept="37vLTw" id="2fyEhAlRikF" role="2Oq$k0">
                        <ref role="3cqZAo" node="2$nlLZc8Bbg" resolve="cm" />
                      </node>
                      <node concept="liA8E" id="2fyEhAlRikG" role="2OqNvi">
                        <ref role="37wK5l" to="v7ux:~ContentManager.getContent(javax.swing.JComponent)" resolve="getContent" />
                        <node concept="37vLTw" id="2fyEhAlRikH" role="37wK5m">
                          <ref role="3cqZAo" node="1mK8QXd_nBl" resolve="tab" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2fyEhAlRikI" role="2OqNvi">
                      <ref role="37wK5l" to="v7ux:~Content.setPinned(boolean)" resolve="setPinned" />
                      <node concept="3clFbT" id="2fyEhAlRikJ" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2mGSJz0G9lw" role="3clFbw">
            <node concept="10Nm6u" id="2mGSJz0GbU0" role="3uHU7w" />
            <node concept="37vLTw" id="5_3XmOPg1Cr" role="3uHU7B">
              <ref role="3cqZAo" node="5_3XmOPfKeX" resolve="loadedState" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2fyEhAmIWFw" role="3cqZAp">
          <node concept="3cpWsn" id="2fyEhAmIWFz" role="3cpWs9">
            <property role="TrG5h" value="defaultTab" />
            <node concept="3uibUv" id="2fyEhAmIWF_" role="1tU5fm">
              <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
            </node>
            <node concept="10Nm6u" id="2fyEhAmIWFA" role="33vP2m" />
          </node>
        </node>
        <node concept="2Gpval" id="2fyEhAmJ1Ar" role="3cqZAp">
          <node concept="2GrKxI" id="2fyEhAmJ1Av" role="2Gsz3X">
            <property role="TrG5h" value="existingTab" />
          </node>
          <node concept="2OqwBi" id="2fyEhAmJ1Aw" role="2GsD0m">
            <node concept="2WthIp" id="2fyEhAmJ1Az" role="2Oq$k0" />
            <node concept="2BZ7hE" id="2fyEhAmJ1A$" role="2OqNvi">
              <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
            </node>
          </node>
          <node concept="3clFbS" id="2fyEhAmJ1A_" role="2LFqv$">
            <node concept="3clFbJ" id="2fyEhAmJ1AA" role="3cqZAp">
              <node concept="2ZW3vV" id="2fyEhAmJ1AD" role="3clFbw">
                <node concept="2GrUjf" id="2fyEhAmJ1AG" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="2fyEhAmJ1Av" resolve="existingTab" />
                </node>
                <node concept="3uibUv" id="2fyEhAmJ1AH" role="2ZW6by">
                  <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
                </node>
              </node>
              <node concept="3clFbS" id="2fyEhAmJ1AI" role="3clFbx">
                <node concept="3clFbF" id="2fyEhAmJ1AJ" role="3cqZAp">
                  <node concept="37vLTI" id="2fyEhAmJ1AL" role="3clFbG">
                    <node concept="37vLTw" id="2fyEhAmJ1AO" role="37vLTJ">
                      <ref role="3cqZAo" node="2fyEhAmIWFz" resolve="defaultTab" />
                    </node>
                    <node concept="2GrUjf" id="2fyEhAmJ1AP" role="37vLTx">
                      <ref role="2Gs0qQ" node="2fyEhAmJ1Av" resolve="existingTab" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="2fyEhAmJ1AQ" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2fyEhAmJ6ZD" role="3cqZAp">
          <node concept="3clFbC" id="2fyEhAmJ6ZG" role="3clFbw">
            <node concept="37vLTw" id="2fyEhAmJ6ZJ" role="3uHU7B">
              <ref role="3cqZAo" node="2fyEhAmIWFz" resolve="defaultTab" />
            </node>
            <node concept="10Nm6u" id="2fyEhAmJ6ZK" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2fyEhAmJ6ZL" role="3clFbx">
            <node concept="3clFbF" id="2fyEhAmJ6ZM" role="3cqZAp">
              <node concept="37vLTI" id="2fyEhAmJ6ZO" role="3clFbG">
                <node concept="37vLTw" id="2fyEhAmJ6ZR" role="37vLTJ">
                  <ref role="3cqZAo" node="2fyEhAmIWFz" resolve="defaultTab" />
                </node>
                <node concept="2OqwBi" id="2fyEhAmJ6ZS" role="37vLTx">
                  <node concept="2WthIp" id="2fyEhAmJ6ZV" role="2Oq$k0" />
                  <node concept="2XshWL" id="2fyEhAmJ6ZW" role="2OqNvi">
                    <ref role="2WH_rO" node="2$nlLZbYzpR" resolve="addConsoleTab" />
                    <node concept="10Nm6u" id="2fyEhAmJ6ZX" role="2XxRq1" />
                    <node concept="10Nm6u" id="2fyEhAmJ6ZY" role="2XxRq1" />
                    <node concept="3clFbT" id="2fyEhAmJ6ZZ" role="2XxRq1">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2fyEhAmJ700" role="3cqZAp">
              <node concept="2EnYce" id="2fyEhAmJ702" role="3clFbG">
                <node concept="2OqwBi" id="2fyEhAmJ705" role="2Oq$k0">
                  <node concept="37vLTw" id="2fyEhAmJ708" role="2Oq$k0">
                    <ref role="3cqZAo" node="2$nlLZc8Bbg" resolve="cm" />
                  </node>
                  <node concept="liA8E" id="2fyEhAmJ709" role="2OqNvi">
                    <ref role="37wK5l" to="v7ux:~ContentManager.getContent(javax.swing.JComponent)" resolve="getContent" />
                    <node concept="37vLTw" id="2fyEhAmJ70a" role="37wK5m">
                      <ref role="3cqZAo" node="2fyEhAmIWFz" resolve="defaultTab" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2fyEhAmJ70b" role="2OqNvi">
                  <ref role="37wK5l" to="v7ux:~Content.setPinned(boolean)" resolve="setPinned" />
                  <node concept="3clFbT" id="2fyEhAmJ70c" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2fyEhAmJcof" role="3cqZAp">
          <node concept="3cpWsn" id="2fyEhAmJcoi" role="3cpWs9">
            <property role="TrG5h" value="defaultContent" />
            <node concept="3uibUv" id="2fyEhAmJcok" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~Content" resolve="Content" />
            </node>
            <node concept="2OqwBi" id="2fyEhAmJcol" role="33vP2m">
              <node concept="37vLTw" id="2fyEhAmJcoo" role="2Oq$k0">
                <ref role="3cqZAo" node="2$nlLZc8Bbg" resolve="cm" />
              </node>
              <node concept="liA8E" id="2fyEhAmJcop" role="2OqNvi">
                <ref role="37wK5l" to="v7ux:~ContentManager.getContent(javax.swing.JComponent)" resolve="getContent" />
                <node concept="37vLTw" id="2fyEhAmJcoq" role="37wK5m">
                  <ref role="3cqZAo" node="2fyEhAmIWFz" resolve="defaultTab" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2fyEhAmJg8S" role="3cqZAp">
          <node concept="3y3z36" id="2fyEhAmJg8V" role="3clFbw">
            <node concept="37vLTw" id="2fyEhAmJg8Y" role="3uHU7B">
              <ref role="3cqZAo" node="2fyEhAmJcoi" resolve="defaultContent" />
            </node>
            <node concept="10Nm6u" id="2fyEhAmJg8Z" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2fyEhAmJg90" role="3clFbx">
            <node concept="3clFbF" id="2fyEhAmJg91" role="3cqZAp">
              <node concept="2OqwBi" id="2fyEhAmJg93" role="3clFbG">
                <node concept="37vLTw" id="2fyEhAmJg96" role="2Oq$k0">
                  <ref role="3cqZAo" node="2fyEhAmJcoi" resolve="defaultContent" />
                </node>
                <node concept="liA8E" id="2fyEhAmJg97" role="2OqNvi">
                  <ref role="37wK5l" to="v7ux:~Content.setPinnable(boolean)" resolve="setPinnable" />
                  <node concept="3clFbT" id="2fyEhAmJg98" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2fyEhAmJg99" role="3cqZAp">
              <node concept="2OqwBi" id="2fyEhAmJg9b" role="3clFbG">
                <node concept="37vLTw" id="2fyEhAmJg9e" role="2Oq$k0">
                  <ref role="3cqZAo" node="2fyEhAmJcoi" resolve="defaultContent" />
                </node>
                <node concept="liA8E" id="2fyEhAmJg9f" role="2OqNvi">
                  <ref role="37wK5l" to="v7ux:~Content.setCloseable(boolean)" resolve="setCloseable" />
                  <node concept="3clFbT" id="2fyEhAmJg9g" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2fyEhAmJg9h" role="3cqZAp">
              <node concept="2OqwBi" id="2fyEhAmJg9j" role="3clFbG">
                <node concept="37vLTw" id="2fyEhAmJg9m" role="2Oq$k0">
                  <ref role="3cqZAo" node="2$nlLZc8Bbg" resolve="cm" />
                </node>
                <node concept="liA8E" id="2fyEhAmJg9n" role="2OqNvi">
                  <ref role="37wK5l" to="v7ux:~ContentManager.setSelectedContent(com.intellij.ui.content.Content)" resolve="setSelectedContent" />
                  <node concept="37vLTw" id="2fyEhAmJg9o" role="37wK5m">
                    <ref role="3cqZAo" node="2fyEhAmJcoi" resolve="defaultContent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2fyEhAmKhH4" role="3cqZAp">
          <node concept="37vLTI" id="2fyEhAmKhH6" role="3clFbG">
            <node concept="2OqwBi" id="2fyEhAmKhH9" role="37vLTJ">
              <node concept="2WthIp" id="2fyEhAmKhHc" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2fyEhAmKhHd" role="2OqNvi">
                <ref role="2WH_rO" node="2fyEhAmKdxL" resolve="myTabsInitialized" />
              </node>
            </node>
            <node concept="3clFbT" id="2fyEhAmKhHe" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7GtYJ30PL4p" role="3clF45" />
      <node concept="3Tm6S6" id="7GtYJ30PEGu" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZc0m4J" role="2XNbBy">
      <property role="TrG5h" value="executeCommand" />
      <node concept="3clFbS" id="2JKiGNKT6OC" role="3clF47">
        <node concept="3cpWs8" id="5VzHAnceNrT" role="3cqZAp">
          <node concept="3cpWsn" id="5VzHAnceNrU" role="3cpWs9">
            <property role="TrG5h" value="tabState" />
            <node concept="3uibUv" id="5VzHAnceNrV" role="1tU5fm">
              <ref role="3uigEE" to="oh9p:2$nlLZbWgc5" resolve="TabState" />
            </node>
            <node concept="2ShNRf" id="5VzHAnceQ7T" role="33vP2m">
              <node concept="HV5vD" id="5VzHAnceTdX" role="2ShVmc">
                <ref role="HV5vE" to="oh9p:2$nlLZbWgc5" resolve="TabState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="7M1Gaz34PM3" role="3cqZAp">
          <node concept="2OqwBi" id="2mWP9pMvBD0" role="ukAjM">
            <node concept="2OqwBi" id="2$nlLZc0BJQ" role="2Oq$k0">
              <node concept="2WthIp" id="2$nlLZc0BJT" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZc0BJV" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbYb9h" resolve="myMPSProject" />
              </node>
            </node>
            <node concept="liA8E" id="2mWP9pMvBXU" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="1QHqEC" id="7M1Gaz34PM5" role="1QHqEI">
            <node concept="3clFbS" id="7M1Gaz34PM7" role="1bW5cS">
              <node concept="3clFbF" id="7M1Gaz35ygV" role="3cqZAp">
                <node concept="37vLTI" id="7M1Gaz35$Pt" role="3clFbG">
                  <node concept="2OqwBi" id="5VzHAncffBf" role="37vLTJ">
                    <node concept="37vLTw" id="5VzHAncfdiG" role="2Oq$k0">
                      <ref role="3cqZAo" node="5VzHAnceNrU" resolve="tabState" />
                    </node>
                    <node concept="2OwXpG" id="5VzHAncfgjF" role="2OqNvi">
                      <ref role="2Oxat5" to="oh9p:5VzHAnc9T5v" resolve="title" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7M1Gaz34NF1" role="37vLTx">
                    <node concept="37vLTw" id="7M1Gaz34NF2" role="2Oq$k0">
                      <ref role="3cqZAo" node="2JKiGNKT6Pv" resolve="command" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORdxh" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5VzHAncflGY" role="3cqZAp">
          <node concept="37vLTI" id="5VzHAncfr7B" role="3clFbG">
            <node concept="3clFbT" id="5VzHAncfrfg" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="5VzHAncfo66" role="37vLTJ">
              <node concept="37vLTw" id="5VzHAncflGX" role="2Oq$k0">
                <ref role="3cqZAo" node="5VzHAnceNrU" resolve="tabState" />
              </node>
              <node concept="2OwXpG" id="5VzHAncfo_k" role="2OqNvi">
                <ref role="2Oxat5" to="oh9p:5VzHAnc9Nn9" resolve="isHistoryTab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7mj7IbYSDAa" role="3cqZAp">
          <node concept="3cpWsn" id="7mj7IbYSDAb" role="3cpWs9">
            <property role="TrG5h" value="tab" />
            <node concept="3uibUv" id="5VzHAncfyc0" role="1tU5fm">
              <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
            </node>
            <node concept="2OqwBi" id="2$nlLZckNtK" role="33vP2m">
              <node concept="2WthIp" id="2$nlLZckNtL" role="2Oq$k0" />
              <node concept="2XshWL" id="2$nlLZckNtM" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbYzpR" resolve="addConsoleTab" />
                <node concept="37vLTw" id="2$nlLZckR5X" role="2XxRq1">
                  <ref role="3cqZAo" node="5VzHAnceNrU" resolve="tabState" />
                </node>
                <node concept="10Nm6u" id="2$nlLZckNtN" role="2XxRq1" />
                <node concept="3clFbT" id="2$nlLZckNtO" role="2XxRq1">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEO" id="7mj7IbYSOIo" role="3cqZAp">
          <node concept="2OqwBi" id="758rrhN5gzY" role="ukAjM">
            <node concept="2OqwBi" id="2$nlLZc0Bxd" role="2Oq$k0">
              <node concept="2WthIp" id="2$nlLZc0Bxg" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZc0Bxi" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbYb9h" resolve="myMPSProject" />
              </node>
            </node>
            <node concept="liA8E" id="758rrhN5g$0" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
          <node concept="1QHqEC" id="7mj7IbYSOIq" role="1QHqEI">
            <node concept="3clFbS" id="7mj7IbYSOIs" role="1bW5cS">
              <node concept="3clFbF" id="7mj7IbYSQVW" role="3cqZAp">
                <node concept="2OqwBi" id="7mj7IbYSRms" role="3clFbG">
                  <node concept="37vLTw" id="7mj7IbYSQVV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7mj7IbYSDAb" resolve="tab" />
                  </node>
                  <node concept="liA8E" id="2JKiGNKTjPS" role="2OqNvi">
                    <ref role="37wK5l" to="qgo0:2wDkRIgm5fm" resolve="execute" />
                    <node concept="37vLTw" id="2JKiGNKTknr" role="37wK5m">
                      <ref role="3cqZAo" node="2JKiGNKT6Pv" resolve="command" />
                    </node>
                    <node concept="10Nm6u" id="7mj7IbYTnHw" role="37wK5m" />
                    <node concept="10Nm6u" id="7mj7IbYTzNA" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2JKiGNKT6Pu" role="3clF45" />
      <node concept="37vLTG" id="2JKiGNKT6Pv" role="3clF46">
        <property role="TrG5h" value="command" />
        <node concept="3Tqbb2" id="2JKiGNKT6Pw" role="1tU5fm">
          <ref role="ehGHo" to="eynw:5WvH$QO98uv" resolve="Command" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2JKiGNKT6Pt" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZc0tw7" role="2XNbBy">
      <property role="TrG5h" value="getCurrentEditableTab" />
      <node concept="3clFbS" id="5VzHAnbXFF2" role="3clF47">
        <node concept="3cpWs8" id="2fyEhAlRMdq" role="3cqZAp">
          <node concept="3cpWsn" id="2fyEhAlRMdt" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <property role="2Lvdk3" value="selected" />
            <node concept="3uibUv" id="2fyEhAlRMdv" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="2OqwBi" id="2fyEhAlRMdw" role="33vP2m">
              <node concept="2OqwBi" id="2fyEhAlRMdz" role="2Oq$k0">
                <node concept="2WthIp" id="2fyEhAlRMdA" role="2Oq$k0" />
                <node concept="2XshWL" id="2fyEhAlRMdB" role="2OqNvi">
                  <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
                </node>
              </node>
              <node concept="liA8E" id="2fyEhAlRMdC" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.getSelectedTab()" resolve="getSelectedTab" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5VzHAnbZ8l6" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="5VzHAnbZ8l9" role="3clFbx">
            <node concept="3cpWs6" id="5VzHAnbZsxX" role="3cqZAp">
              <node concept="0kSF2" id="5VzHAnbZP1E" role="3cqZAk">
                <node concept="3uibUv" id="5VzHAnbZP1H" role="0kSFW">
                  <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
                </node>
                <node concept="37vLTw" id="2fyEhAlRTVt" role="0kSFX">
                  <ref role="3cqZAo" node="2fyEhAlRMdt" resolve="selected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5VzHAnbZjol" role="3clFbw">
            <node concept="3uibUv" id="5VzHAnbZk9v" role="2ZW6by">
              <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
            </node>
            <node concept="37vLTw" id="2fyEhAlRQem" role="2ZW6bz">
              <ref role="3cqZAo" node="2fyEhAlRMdt" resolve="selected" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2fyEhAmJIsi" role="3cqZAp">
          <node concept="2GrKxI" id="2fyEhAmJIsm" role="2Gsz3X">
            <property role="TrG5h" value="candidate" />
          </node>
          <node concept="2OqwBi" id="2fyEhAmJIsn" role="2GsD0m">
            <node concept="2WthIp" id="2fyEhAmJIsq" role="2Oq$k0" />
            <node concept="2BZ7hE" id="2fyEhAmJIsr" role="2OqNvi">
              <ref role="2WH_rO" node="2$nlLZbWs$f" resolve="myTabs" />
            </node>
          </node>
          <node concept="3clFbS" id="2fyEhAmJIss" role="2LFqv$">
            <node concept="3clFbJ" id="2fyEhAmJIst" role="3cqZAp">
              <node concept="2ZW3vV" id="2fyEhAmJIsw" role="3clFbw">
                <node concept="2GrUjf" id="2fyEhAmJIsz" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="2fyEhAmJIsm" resolve="candidate" />
                </node>
                <node concept="3uibUv" id="2fyEhAmJIs$" role="2ZW6by">
                  <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
                </node>
              </node>
              <node concept="3clFbS" id="2fyEhAmJIs_" role="3clFbx">
                <node concept="3cpWs6" id="2fyEhAmJIsA" role="3cqZAp">
                  <node concept="0kSF2" id="2fyEhAmJIsB" role="3cqZAk">
                    <node concept="2GrUjf" id="2fyEhAmJIsE" role="0kSFX">
                      <ref role="2Gs0qQ" node="2fyEhAmJIsm" resolve="candidate" />
                    </node>
                    <node concept="3uibUv" id="2fyEhAmJIsF" role="0kSFW">
                      <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5VzHAnc2lbd" role="3cqZAp">
          <node concept="10Nm6u" id="2fyEhAmJMWx" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="5VzHAnbXFz_" role="3clF45">
        <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
      </node>
      <node concept="3Tm1VV" id="5VzHAnbXAm9" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="2$nlLZc0xgg" role="2XNbBy">
      <property role="TrG5h" value="getState" />
      <node concept="3clFbS" id="5lgJV$ofyKF" role="3clF47">
        <node concept="3cpWs8" id="4lEPRiTCdFo" role="3cqZAp">
          <node concept="3cpWsn" id="4lEPRiTCdFn" role="3cpWs9">
            <property role="TrG5h" value="cm" />
            <node concept="3uibUv" id="4lEPRiTCdFp" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~ContentManager" resolve="com.intellij.ui.content.ContentManager" />
            </node>
            <node concept="2OqwBi" id="4lEPRiTCp9K" role="33vP2m">
              <node concept="2OqwBi" id="4lEPRiTCp9N" role="2Oq$k0">
                <node concept="2WthIp" id="4lEPRiTCp9Q" role="2Oq$k0" />
                <node concept="2XshWL" id="4lEPRiTCp9R" role="2OqNvi">
                  <ref role="2WH_rO" node="4GSEy3uNxSW" resolve="getMyself" />
                </node>
              </node>
              <node concept="liA8E" id="4lEPRiTCp9S" role="2OqNvi">
                <ref role="37wK5l" to="71xd:~BaseTabbedProjectTool.getContentManagerIfCreated()" resolve="getContentManagerIfCreated" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4lEPRiTCdFr" role="3cqZAp">
          <node concept="22lmx$" id="4lEPRiTCdFs" role="3clFbw">
            <node concept="3clFbC" id="4lEPRiTCdFt" role="3uHU7B">
              <node concept="37vLTw" id="4lEPRiTCdFu" role="3uHU7B">
                <ref role="3cqZAo" node="4lEPRiTCdFn" resolve="cm" />
              </node>
              <node concept="10Nm6u" id="4lEPRiTCdFv" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="4lEPRiTCdFw" role="3uHU7w">
              <node concept="2OqwBi" id="4lEPRiTCqXH" role="3fr31v">
                <node concept="2WthIp" id="4lEPRiTCqXK" role="2Oq$k0" />
                <node concept="2BZ7hE" id="4lEPRiTCqXL" role="2OqNvi">
                  <ref role="2WH_rO" node="2fyEhAmKdxL" resolve="myTabsInitialized" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4lEPRiTCdFz" role="3clFbx">
            <node concept="3cpWs6" id="4lEPRiTCdF$" role="3cqZAp">
              <node concept="10Nm6u" id="4lEPRiTCdF_" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4lEPRiTCdFB" role="3cqZAp">
          <node concept="3cpWsn" id="4lEPRiTCdFA" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4lEPRiTCdFC" role="1tU5fm">
              <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
            </node>
            <node concept="2ShNRf" id="4lEPRiTCeiq" role="33vP2m">
              <node concept="HV5vD" id="4lEPRiTCeis" role="2ShVmc">
                <ref role="HV5vE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4lEPRiTCdFE" role="3cqZAp">
          <node concept="2OqwBi" id="4lEPRiTCejF" role="1DdaDG">
            <node concept="37vLTw" id="4lEPRiTCeit" role="2Oq$k0">
              <ref role="3cqZAo" node="4lEPRiTCdFn" resolve="cm" />
            </node>
            <node concept="liA8E" id="4lEPRiTCejG" role="2OqNvi">
              <ref role="37wK5l" to="v7ux:~ContentManager.getContentsRecursively()" resolve="getContentsRecursively" />
            </node>
          </node>
          <node concept="3cpWsn" id="4lEPRiTCdGN" role="1Duv9x">
            <property role="TrG5h" value="content" />
            <node concept="3uibUv" id="4lEPRiTCdGP" role="1tU5fm">
              <ref role="3uigEE" to="v7ux:~Content" resolve="com.intellij.ui.content.Content" />
            </node>
          </node>
          <node concept="3clFbS" id="4lEPRiTCdFG" role="2LFqv$">
            <node concept="3clFbJ" id="4lEPRiTCdFH" role="3cqZAp">
              <node concept="3fqX7Q" id="4lEPRiTCdFI" role="3clFbw">
                <node concept="1eOMI4" id="4lEPRiTCdFK" role="3fr31v">
                  <node concept="2OqwBi" id="4lEPRiTCejR" role="1eOMHV">
                    <node concept="37vLTw" id="4lEPRiTCeiv" role="2Oq$k0">
                      <ref role="3cqZAo" node="4lEPRiTCdGN" resolve="content" />
                    </node>
                    <node concept="liA8E" id="4lEPRiTCejS" role="2OqNvi">
                      <ref role="37wK5l" to="v7ux:~Content.isPinned()" resolve="isPinned" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4lEPRiTCdFM" role="3clFbx">
                <node concept="3N13vt" id="4lEPRiTCdFN" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="4lEPRiTCdFP" role="3cqZAp">
              <node concept="3cpWsn" id="4lEPRiTCdFO" role="3cpWs9">
                <property role="TrG5h" value="component" />
                <node concept="3uibUv" id="4lEPRiTCdFQ" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JComponent" resolve="javax.swing.JComponent" />
                </node>
                <node concept="2OqwBi" id="4lEPRiTCek3" role="33vP2m">
                  <node concept="37vLTw" id="4lEPRiTCeix" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdGN" resolve="content" />
                  </node>
                  <node concept="liA8E" id="4lEPRiTCek4" role="2OqNvi">
                    <ref role="37wK5l" to="jkm4:~ComponentContainer.getComponent()" resolve="getComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4lEPRiTCdFS" role="3cqZAp">
              <node concept="3fqX7Q" id="4lEPRiTCdFT" role="3clFbw">
                <node concept="1eOMI4" id="4lEPRiTCdFX" role="3fr31v">
                  <node concept="2ZW3vV" id="4lEPRiTCdFW" role="1eOMHV">
                    <node concept="37vLTw" id="4lEPRiTCdFU" role="2ZW6bz">
                      <ref role="3cqZAo" node="4lEPRiTCdFO" resolve="component" />
                    </node>
                    <node concept="3uibUv" id="4lEPRiTCdFV" role="2ZW6by">
                      <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4lEPRiTCdFZ" role="3clFbx">
                <node concept="3N13vt" id="4lEPRiTCdG0" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="4lEPRiTCdG2" role="3cqZAp">
              <node concept="3cpWsn" id="4lEPRiTCdG1" role="3cpWs9">
                <property role="TrG5h" value="tab" />
                <node concept="3uibUv" id="4lEPRiTCdG3" role="1tU5fm">
                  <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                </node>
                <node concept="10QFUN" id="4lEPRiTCdG4" role="33vP2m">
                  <node concept="37vLTw" id="4lEPRiTCdG5" role="10QFUP">
                    <ref role="3cqZAo" node="4lEPRiTCdFO" resolve="component" />
                  </node>
                  <node concept="3uibUv" id="4lEPRiTCdG6" role="10QFUM">
                    <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4lEPRiTCdG8" role="3cqZAp">
              <node concept="3cpWsn" id="4lEPRiTCdG7" role="3cpWs9">
                <property role="TrG5h" value="tabState" />
                <node concept="3uibUv" id="4lEPRiTCdG9" role="1tU5fm">
                  <ref role="3uigEE" to="oh9p:2$nlLZbWgc5" resolve="TabState" />
                </node>
                <node concept="2ShNRf" id="4lEPRiTCeiz" role="33vP2m">
                  <node concept="HV5vD" id="4lEPRiTCei_" role="2ShVmc">
                    <ref role="HV5vE" to="oh9p:2$nlLZbWgc5" resolve="TabState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4lEPRiTCdGb" role="3cqZAp">
              <node concept="37vLTI" id="4lEPRiTCdGc" role="3clFbG">
                <node concept="2OqwBi" id="4lEPRiTCeiB" role="37vLTJ">
                  <node concept="37vLTw" id="4lEPRiTCeiA" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG7" resolve="tabState" />
                  </node>
                  <node concept="2OwXpG" id="4lEPRiTCeiC" role="2OqNvi">
                    <ref role="2Oxat5" to="oh9p:5VzHAnc9T5v" resolve="title" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4lEPRiTCeoa" role="37vLTx">
                  <node concept="37vLTw" id="4lEPRiTCeiD" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG1" resolve="tab" />
                  </node>
                  <node concept="liA8E" id="4lEPRiTCeob" role="2OqNvi">
                    <ref role="37wK5l" to="qgo0:7GtYJ30IPuy" resolve="getTitle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4lEPRiTCdGf" role="3cqZAp">
              <node concept="3clFbC" id="4lEPRiTCdGg" role="3clFbw">
                <node concept="2OqwBi" id="4lEPRiTCeiG" role="3uHU7B">
                  <node concept="37vLTw" id="4lEPRiTCeiF" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG7" resolve="tabState" />
                  </node>
                  <node concept="2OwXpG" id="4lEPRiTCeiH" role="2OqNvi">
                    <ref role="2Oxat5" to="oh9p:5VzHAnc9T5v" resolve="title" />
                  </node>
                </node>
                <node concept="10Nm6u" id="4lEPRiTCdGi" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="4lEPRiTCdGk" role="3clFbx">
                <node concept="3N13vt" id="4lEPRiTCdGl" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="4lEPRiTCdGn" role="3cqZAp">
              <node concept="3cpWsn" id="4lEPRiTCdGm" role="3cpWs9">
                <property role="TrG5h" value="tabHistory" />
                <node concept="3uibUv" id="4lEPRiTCdGo" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="4lEPRiTCesu" role="33vP2m">
                  <node concept="37vLTw" id="4lEPRiTCeiI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG1" resolve="tab" />
                  </node>
                  <node concept="liA8E" id="4lEPRiTCesv" role="2OqNvi">
                    <ref role="37wK5l" to="qgo0:6ysF3v1G98E" resolve="saveHistory" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4lEPRiTCdGq" role="3cqZAp">
              <node concept="3clFbC" id="4lEPRiTCdGr" role="3clFbw">
                <node concept="37vLTw" id="4lEPRiTCdGs" role="3uHU7B">
                  <ref role="3cqZAo" node="4lEPRiTCdGm" resolve="tabHistory" />
                </node>
                <node concept="10Nm6u" id="4lEPRiTCdGt" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="4lEPRiTCdGv" role="3clFbx">
                <node concept="3N13vt" id="4lEPRiTCdGw" role="3cqZAp" />
              </node>
            </node>
            <node concept="3clFbF" id="4lEPRiTCdGx" role="3cqZAp">
              <node concept="37vLTI" id="4lEPRiTCdGy" role="3clFbG">
                <node concept="2OqwBi" id="4lEPRiTCeiL" role="37vLTJ">
                  <node concept="37vLTw" id="4lEPRiTCeiK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG7" resolve="tabState" />
                  </node>
                  <node concept="2OwXpG" id="4lEPRiTCeiM" role="2OqNvi">
                    <ref role="2Oxat5" to="oh9p:4$5fOk0GUTg" resolve="historyXml" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4lEPRiTCesG" role="37vLTx">
                  <node concept="2ShNRf" id="4lEPRiTCeiV" role="2Oq$k0">
                    <node concept="1pGfFk" id="4lEPRiTCejn" role="2ShVmc">
                      <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                      <node concept="Xl_RD" id="4lEPRiTCejo" role="37wK5m">
                        <property role="Xl_RC" value="tab" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4lEPRiTCesH" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                    <node concept="37vLTw" id="4lEPRiTCesI" role="37wK5m">
                      <ref role="3cqZAo" node="4lEPRiTCdGm" resolve="tabHistory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4lEPRiTCdGC" role="3cqZAp">
              <node concept="37vLTI" id="4lEPRiTCdGD" role="3clFbG">
                <node concept="2OqwBi" id="4lEPRiTCejq" role="37vLTJ">
                  <node concept="37vLTw" id="4lEPRiTCejp" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdG7" resolve="tabState" />
                  </node>
                  <node concept="2OwXpG" id="4lEPRiTCejr" role="2OqNvi">
                    <ref role="2Oxat5" to="oh9p:5VzHAnc9Nn9" resolve="isHistoryTab" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="4lEPRiTCdGF" role="37vLTx">
                  <node concept="1eOMI4" id="4lEPRiTCdGJ" role="3fr31v">
                    <node concept="2ZW3vV" id="4lEPRiTCdGI" role="1eOMHV">
                      <node concept="37vLTw" id="4lEPRiTCdGG" role="2ZW6bz">
                        <ref role="3cqZAo" node="4lEPRiTCdG1" resolve="tab" />
                      </node>
                      <node concept="3uibUv" id="4lEPRiTCdGH" role="2ZW6by">
                        <ref role="3uigEE" to="qgo0:6ysF3v1jo8G" resolve="DialogConsoleTab" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4lEPRiTCdGK" role="3cqZAp">
              <node concept="2OqwBi" id="4lEPRiTCew8" role="3clFbG">
                <node concept="2OqwBi" id="4lEPRiTCejt" role="2Oq$k0">
                  <node concept="37vLTw" id="4lEPRiTCejs" role="2Oq$k0">
                    <ref role="3cqZAo" node="4lEPRiTCdFA" resolve="result" />
                  </node>
                  <node concept="2OwXpG" id="4lEPRiTCeju" role="2OqNvi">
                    <ref role="2Oxat5" to="oh9p:5VzHAncafkW" resolve="tabs" />
                  </node>
                </node>
                <node concept="liA8E" id="4lEPRiTCew9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="4lEPRiTCewa" role="37wK5m">
                    <ref role="3cqZAo" node="4lEPRiTCdG7" resolve="tabState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4lEPRiTCdGR" role="3cqZAp">
          <node concept="37vLTw" id="4lEPRiTCdGS" role="3cqZAk">
            <ref role="3cqZAo" node="4lEPRiTCdFA" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5lgJV$ofyKE" role="3clF45">
        <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
      </node>
      <node concept="2AHcQZ" id="5lgJV$ofyKB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="1136W4Asm1R" role="1B3o_S" />
    </node>
    <node concept="2BZ0e9" id="2$nlLZbWs$f" role="2XNbBz">
      <property role="TrG5h" value="myTabs" />
      <node concept="3Tm6S6" id="2$nlLZbWs$g" role="1B3o_S" />
      <node concept="_YKpA" id="2$nlLZbY8hD" role="1tU5fm">
        <node concept="3uibUv" id="2$nlLZbY8DB" role="_ZDj9">
          <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
        </node>
      </node>
      <node concept="2ShNRf" id="2$nlLZbY9Qn" role="33vP2m">
        <node concept="Tc6Ow" id="2$nlLZbY9Pd" role="2ShVmc">
          <node concept="3uibUv" id="2$nlLZbY9Pe" role="HW$YZ">
            <ref role="3uigEE" to="qgo0:4gO8Gruz$1J" resolve="BaseConsoleTab" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="2$nlLZbYb9h" role="2XNbBz">
      <property role="TrG5h" value="myMPSProject" />
      <node concept="3Tm6S6" id="2$nlLZbYb9i" role="1B3o_S" />
      <node concept="3uibUv" id="2$nlLZbYdXI" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2BZ0e9" id="2$nlLZc8dHG" role="2XNbBz">
      <property role="TrG5h" value="myIdeaProject" />
      <node concept="3Tm6S6" id="2$nlLZc8dHH" role="1B3o_S" />
      <node concept="3uibUv" id="2$nlLZc8dHI" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2BZ0e9" id="4GSEy3uM01_" role="2XNbBz">
      <property role="TrG5h" value="myself" />
      <node concept="3Tm6S6" id="4GSEy3uM01A" role="1B3o_S" />
      <node concept="3uibUv" id="4GSEy3uM4e2" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2WthIp" id="4GSEy3uM4jR" role="33vP2m" />
    </node>
    <node concept="15feLH" id="2$nlLZbW0F7" role="15cTzA">
      <node concept="15fezS" id="2$nlLZbW0F5" role="15fezK">
        <node concept="pLAjd" id="2$nlLZbW0F6" role="15feLI">
          <property role="pLAjc" value="alt" />
          <property role="pLAjf" value="VK_F11" />
        </node>
      </node>
    </node>
    <node concept="1GtWCo" id="2$nlLZbW9FE" role="1nVCmq">
      <node concept="10M0yZ" id="1W7CC7pNScP" role="1GtWoa">
        <ref role="3cqZAo" to="l7us:~MPSIcons$ToolWindows.Console" resolve="Console" />
        <ref role="1PxDUh" to="l7us:~MPSIcons$ToolWindows" resolve="MPSIcons.ToolWindows" />
      </node>
    </node>
    <node concept="2xpIHi" id="2$nlLZbYkg9" role="uR5cp">
      <node concept="3clFbS" id="2$nlLZbYkga" role="2VODD2">
        <node concept="3clFbF" id="2$nlLZc8gRH" role="3cqZAp">
          <node concept="37vLTI" id="2$nlLZc8hWv" role="3clFbG">
            <node concept="2xqhHp" id="2$nlLZc8hYu" role="37vLTx" />
            <node concept="2OqwBi" id="2$nlLZc8h2T" role="37vLTJ">
              <node concept="2WthIp" id="2$nlLZc8gRF" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZc8hjc" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZc8dHG" resolve="myIdeaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="758rrhN5fyP" role="3cqZAp">
          <node concept="37vLTI" id="758rrhN5fRP" role="3clFbG">
            <node concept="2OqwBi" id="2$nlLZbYkvf" role="37vLTJ">
              <node concept="2WthIp" id="2$nlLZbYkvi" role="2Oq$k0" />
              <node concept="2BZ7hE" id="2$nlLZbYkvk" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZbYb9h" resolve="myMPSProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="2lLB0zmTTVY" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProjectOrFail(com.intellij.openapi.project.Project)" resolve="fromIdeaProjectOrFail" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="2$nlLZbYkzy" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="2fyEhAmKdxL" role="2XNbBz">
      <property role="TrG5h" value="myTabsInitialized" />
      <node concept="10P_77" id="2fyEhAmKdxO" role="1tU5fm" />
      <node concept="3clFbT" id="2fyEhAmKdxP" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
      <node concept="3Tm6S6" id="2fyEhAmKdxQ" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="6_l8R4fErqk">
    <property role="3GE5qa" value="tool" />
    <property role="TrG5h" value="ConsoleToolPersistence" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="6_l8R4fEA3R" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6_l8R4fEA3S" role="1B3o_S" />
      <node concept="3uibUv" id="6_l8R4fEA3U" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="5_3XmOPfv9_" role="jymVt">
      <property role="TrG5h" value="loadedState" />
      <node concept="3Tm6S6" id="5_3XmOPfrbF" role="1B3o_S" />
      <node concept="3uibUv" id="5_3XmOPfv2q" role="1tU5fm">
        <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
      </node>
      <node concept="10Nm6u" id="5_3XmOPfvoj" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="5_3XmOPflJG" role="jymVt" />
    <node concept="3clFbW" id="6_l8R4fE_7$" role="jymVt">
      <node concept="37vLTG" id="6_l8R4fE_d6" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6_l8R4fE_XJ" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="6_l8R4fE_7A" role="3clF45" />
      <node concept="3Tm1VV" id="6_l8R4fE_7B" role="1B3o_S" />
      <node concept="3clFbS" id="6_l8R4fE_7C" role="3clF47">
        <node concept="3clFbF" id="6_l8R4fEA3V" role="3cqZAp">
          <node concept="37vLTI" id="6_l8R4fEA3X" role="3clFbG">
            <node concept="37vLTw" id="6_l8R4fEA40" role="37vLTJ">
              <ref role="3cqZAo" node="6_l8R4fEA3R" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="6_l8R4fEA41" role="37vLTx">
              <ref role="3cqZAo" node="6_l8R4fE_d6" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6_l8R4fErql" role="1B3o_S" />
    <node concept="2AHcQZ" id="6_l8R4fEWyz" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~Service" resolve="Service" />
      <node concept="1SXeKx" id="IsHpIkol43" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~Service.value()" resolve="value" />
        <node concept="Rm8GO" id="IsHpIkolkA" role="2B70Vg">
          <ref role="Rm8GQ" to="1m72:~Service$Level.PROJECT" resolve="PROJECT" />
          <ref role="1Px2BO" to="1m72:~Service$Level" resolve="Service.Level" />
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="2es7MPSU1c_" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="2es7MPSUO1U" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="2es7MPSVbzn" role="2B70Vg">
          <property role="Xl_RC" value="ConsoleHistory" />
        </node>
      </node>
      <node concept="2B6LJw" id="2es7MPSVbCS" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="2es7MPSW6fs" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="4PleL4ON3Jo" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="10M0yZ" id="ftM8OcNcf3" role="2B70Vg">
              <ref role="3cqZAo" to="1m72:~StoragePathMacros.WORKSPACE_FILE" resolve="WORKSPACE_FILE" />
              <ref role="1PxDUh" to="1m72:~StoragePathMacros" resolve="StoragePathMacros" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="6_l8R4fEsxH" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="6_l8R4fEsYu" role="11_B2D">
        <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
      </node>
    </node>
    <node concept="3clFb_" id="6_l8R4fEt3y" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="6_l8R4fEt3z" role="1B3o_S" />
      <node concept="2AHcQZ" id="6_l8R4fEt3_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6_l8R4fEt3B" role="3clF45">
        <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
      </node>
      <node concept="3clFbS" id="6_l8R4fEt3C" role="3clF47">
        <node concept="3cpWs8" id="2fyEhAmImch" role="3cqZAp">
          <node concept="3cpWsn" id="2fyEhAmImck" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="1xUVSX" id="2fyEhAmImcm" role="1tU5fm">
              <ref role="1xYkEM" node="2$nlLZbVXWa" resolve="ConsoleTool" />
            </node>
            <node concept="2OqwBi" id="2fyEhAmImcn" role="33vP2m">
              <node concept="37vLTw" id="2fyEhAmImcq" role="2Oq$k0">
                <ref role="3cqZAo" node="6_l8R4fEA3R" resolve="myProject" />
              </node>
              <node concept="LR4U6" id="2fyEhAmImcr" role="2OqNvi">
                <ref role="LR4U5" node="2$nlLZbVXWa" resolve="ConsoleTool" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2fyEhAmIqTP" role="3cqZAp">
          <node concept="3clFbC" id="2fyEhAmIqTS" role="3clFbw">
            <node concept="37vLTw" id="2fyEhAmIqTV" role="3uHU7B">
              <ref role="3cqZAo" node="2fyEhAmImck" resolve="tool" />
            </node>
            <node concept="10Nm6u" id="2fyEhAmIqTW" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2fyEhAmIqTX" role="3clFbx">
            <node concept="3cpWs6" id="2fyEhAmIqTY" role="3cqZAp">
              <node concept="37vLTw" id="2fyEhAmIqTZ" role="3cqZAk">
                <ref role="3cqZAo" node="5_3XmOPfv9_" resolve="loadedState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2fyEhAmHAhJ" role="3cqZAp">
          <node concept="3cpWsn" id="2fyEhAmHAhM" role="3cpWs9">
            <property role="TrG5h" value="toolState" />
            <property role="2Lvdk3" value="toolState" />
            <node concept="3uibUv" id="2fyEhAmHAhO" role="1tU5fm">
              <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
            </node>
            <node concept="2OqwBi" id="2fyEhAmHAhP" role="33vP2m">
              <node concept="37vLTw" id="2fyEhAmIuYA" role="2Oq$k0">
                <ref role="3cqZAo" node="2fyEhAmImck" resolve="tool" />
              </node>
              <node concept="2XshWL" id="2fyEhAmHAhX" role="2OqNvi">
                <ref role="2WH_rO" node="2$nlLZc0xgg" resolve="getState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2fyEhAmHJJA" role="3cqZAp">
          <node concept="3y3z36" id="2fyEhAmHJJD" role="3clFbw">
            <node concept="37vLTw" id="2fyEhAmHJJG" role="3uHU7B">
              <ref role="3cqZAo" node="2fyEhAmHAhM" resolve="toolState" />
            </node>
            <node concept="10Nm6u" id="2fyEhAmHJJH" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2fyEhAmHJJI" role="3clFbx">
            <node concept="3clFbF" id="2fyEhAmHJJJ" role="3cqZAp">
              <node concept="1rXfSq" id="2fyEhAmHJJL" role="3clFbG">
                <ref role="37wK5l" node="5_3XmOPgqL9" resolve="storeLoadedState" />
                <node concept="37vLTw" id="2fyEhAmHJJM" role="37wK5m">
                  <ref role="3cqZAo" node="2fyEhAmHAhM" resolve="toolState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6_l8R4fEUL8" role="3cqZAp">
          <node concept="37vLTw" id="5_3XmOPh3w0" role="3cqZAk">
            <ref role="3cqZAo" node="5_3XmOPfv9_" resolve="loadedState" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6_l8R4fEt3D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6_l8R4fEt3E" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3Tm1VV" id="6_l8R4fEt3F" role="1B3o_S" />
      <node concept="3cqZAl" id="6_l8R4fEt3H" role="3clF45" />
      <node concept="37vLTG" id="6_l8R4fEt3I" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="6_l8R4fEt3L" role="1tU5fm">
          <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
        </node>
        <node concept="2AHcQZ" id="6_l8R4fEt3K" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6_l8R4fEt3M" role="3clF47">
        <node concept="3clFbJ" id="1mHIza_7xJU" role="3cqZAp">
          <node concept="3clFbS" id="1mHIza_7xJX" role="3clFbx">
            <node concept="3clFbF" id="2LKZD1vHS6w" role="3cqZAp">
              <node concept="37vLTI" id="2LKZD1vHUVe" role="3clFbG">
                <node concept="37vLTw" id="2LKZD1vHXvw" role="37vLTx">
                  <ref role="3cqZAo" node="6_l8R4fEt3I" resolve="state" />
                </node>
                <node concept="2OqwBi" id="2$nlLZc0BXI" role="37vLTJ">
                  <node concept="Xjq3P" id="5_3XmOPfngW" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5_3XmOPfpnq" role="2OqNvi">
                    <ref role="2Oxat5" node="5_3XmOPfv9_" resolve="loadedState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="1mHIza_7H$H" role="3clFbw">
            <node concept="2OqwBi" id="1mHIza_7y6t" role="3uHU7B">
              <node concept="37vLTw" id="1mHIza_7xLa" role="2Oq$k0">
                <ref role="3cqZAo" node="6_l8R4fEt3I" resolve="state" />
              </node>
              <node concept="2OwXpG" id="1mHIza_7yh7" role="2OqNvi">
                <ref role="2Oxat5" to="oh9p:1mHIza_70lV" resolve="version" />
              </node>
            </node>
            <node concept="10M0yZ" id="1mHIza_7Hpu" role="3uHU7w">
              <ref role="1PxDUh" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
              <ref role="3cqZAo" to="oh9p:1mHIza_7E0h" resolve="VERSION" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6_l8R4fEt3N" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5_3XmOPgpKU" role="jymVt" />
    <node concept="3clFb_" id="1136W4AspLp" role="jymVt">
      <property role="TrG5h" value="retrieveLoadedState" />
      <node concept="3Tm1VV" id="1136W4AspLq" role="1B3o_S" />
      <node concept="3uibUv" id="1136W4AspLs" role="3clF45">
        <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
      </node>
      <node concept="3clFbS" id="1136W4AspLt" role="3clF47">
        <node concept="3cpWs6" id="1136W4AspL_" role="3cqZAp">
          <node concept="37vLTw" id="1136W4AspLA" role="3cqZAk">
            <ref role="3cqZAo" node="5_3XmOPfv9_" resolve="loadedState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1136W4Asp$I" role="jymVt" />
    <node concept="3clFb_" id="5_3XmOPgqL9" role="jymVt">
      <property role="TrG5h" value="storeLoadedState" />
      <node concept="3clFbS" id="5_3XmOPgqLc" role="3clF47">
        <node concept="3clFbF" id="5_3XmOPgs01" role="3cqZAp">
          <node concept="37vLTI" id="5_3XmOPgtHG" role="3clFbG">
            <node concept="37vLTw" id="5_3XmOPgtSl" role="37vLTx">
              <ref role="3cqZAo" node="5_3XmOPgrrK" resolve="state" />
            </node>
            <node concept="2OqwBi" id="5_3XmOPgspZ" role="37vLTJ">
              <node concept="Xjq3P" id="5_3XmOPgs00" role="2Oq$k0" />
              <node concept="2OwXpG" id="5_3XmOPgtbw" role="2OqNvi">
                <ref role="2Oxat5" node="5_3XmOPfv9_" resolve="loadedState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5_3XmOPgqf8" role="1B3o_S" />
      <node concept="3cqZAl" id="5_3XmOPgqFG" role="3clF45" />
      <node concept="37vLTG" id="5_3XmOPgrrK" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5_3XmOPgrrJ" role="1tU5fm">
          <ref role="3uigEE" to="oh9p:2$nlLZbWeZc" resolve="MyState" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="4kiGDBtsFPt">
    <property role="3_H9TB" value="true" />
  </node>
</model>

