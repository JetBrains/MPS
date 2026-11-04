<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:85354f47-14fd-40e6-a7cc-2d1aa842c4cd(jetbrains.mps.lang.text.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="3" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="zqge" ref="r:59e90602-6655-4552-86eb-441a42a9a0e4(jetbrains.mps.lang.text.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1225271546410" name="jetbrains.mps.baseLanguage.structure.TrimOperation" flags="nn" index="17S1cR" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="7776141288922801652" name="jetbrains.mps.lang.actions.structure.NF_Concept_NewInstance" flags="nn" index="q_SaT" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1143224127713" name="jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation" flags="nn" index="HtX7F">
        <child id="1143224127716" name="insertedNode" index="HtX7I" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1145570846907" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingsOperation" flags="nn" index="2TlYAL" />
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1143511969223" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" flags="nn" index="YBYNd" />
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
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
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3cya7Sw$5PT">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="zqge:8D0iRqSPW4" resolve="Word" />
    <node concept="13i0hz" id="3yV2h2COV$s" role="13h7CS">
      <property role="TrG5h" value="normalize" />
      <node concept="3Tm1VV" id="3yV2h2COV$t" role="1B3o_S" />
      <node concept="3Tqbb2" id="1vgy43xxt0" role="3clF45">
        <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
      </node>
      <node concept="3clFbS" id="3yV2h2COV$v" role="3clF47">
        <node concept="3clFbJ" id="3yV2h2COVY1" role="3cqZAp">
          <node concept="1Wc70l" id="1tcSyRz1ta0" role="3clFbw">
            <node concept="2OqwBi" id="1tcSyRz1ywE" role="3uHU7B">
              <node concept="2OqwBi" id="1tcSyRz1vcd" role="2Oq$k0">
                <node concept="13iPFW" id="1tcSyRz1uWB" role="2Oq$k0" />
                <node concept="3TrcHB" id="1tcSyRz1xao" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                </node>
              </node>
              <node concept="17RvpY" id="1tcSyRz1_5b" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3yV2h2COWJp" role="3uHU7w">
              <node concept="2OqwBi" id="3yV2h2COW8Z" role="2Oq$k0">
                <node concept="13iPFW" id="3yV2h2COVYK" role="2Oq$k0" />
                <node concept="3TrcHB" id="3yV2h2COWmC" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="3yV2h2COXrB" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="3yV2h2COXuw" role="37wK5m">
                  <property role="Xl_RC" value=" " />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3yV2h2COVY3" role="3clFbx">
            <node concept="3cpWs8" id="3yV2h2COZ25" role="3cqZAp">
              <node concept="3cpWsn" id="3yV2h2COZ26" role="3cpWs9">
                <property role="TrG5h" value="chunks" />
                <node concept="10Q1$e" id="3yV2h2COZ1k" role="1tU5fm">
                  <node concept="3uibUv" id="3yV2h2COZ1n" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3yV2h2COZ27" role="33vP2m">
                  <node concept="2OqwBi" id="3yV2h2COZ28" role="2Oq$k0">
                    <node concept="13iPFW" id="3yV2h2COZ29" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3yV2h2COZ2a" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3yV2h2COZ2b" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                    <node concept="Xl_RD" id="3yV2h2COZ2c" role="37wK5m">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1w9Vmqdq70S" role="3cqZAp">
              <node concept="3clFbS" id="1w9Vmqdq70U" role="3clFbx">
                <node concept="3cpWs6" id="1w9Vmqdq9wo" role="3cqZAp">
                  <node concept="13iPFW" id="1vgy43x_vj" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="1w9Vmqdq8Qx" role="3clFbw">
                <node concept="3cmrfG" id="1w9Vmqdq9vw" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="1w9Vmqdq7cW" role="3uHU7B">
                  <node concept="37vLTw" id="1w9Vmqdq72f" role="2Oq$k0">
                    <ref role="3cqZAo" node="3yV2h2COZ26" resolve="chunks" />
                  </node>
                  <node concept="1Rwk04" id="1w9Vmqdq7lK" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3yV2h2COZfN" role="3cqZAp">
              <node concept="37vLTI" id="3yV2h2CP0gQ" role="3clFbG">
                <node concept="2OqwBi" id="3yV2h2COZoW" role="37vLTJ">
                  <node concept="13iPFW" id="3yV2h2COZfL" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3yV2h2COZA9" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                  </node>
                </node>
                <node concept="AH0OO" id="3yV2h2CP0pc" role="37vLTx">
                  <node concept="3cmrfG" id="3yV2h2CP0vz" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3yV2h2CP0hF" role="AHHXb">
                    <ref role="3cqZAo" node="3yV2h2COZ26" resolve="chunks" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1w9VmqdqaCf" role="3cqZAp">
              <node concept="3cpWsn" id="1w9VmqdqaCi" role="3cpWs9">
                <property role="TrG5h" value="latestWordAdded" />
                <node concept="3Tqbb2" id="1w9VmqdqaCd" role="1tU5fm">
                  <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                </node>
                <node concept="13iPFW" id="1w9VmqdqaLu" role="33vP2m" />
              </node>
            </node>
            <node concept="1Dw8fO" id="3yV2h2CPfV3" role="3cqZAp">
              <node concept="3clFbS" id="3yV2h2CPfV5" role="2LFqv$">
                <node concept="3cpWs8" id="3yV2h2CPk4G" role="3cqZAp">
                  <node concept="3cpWsn" id="3yV2h2CPk4H" role="3cpWs9">
                    <property role="TrG5h" value="w" />
                    <node concept="3Tqbb2" id="3yV2h2CPk48" role="1tU5fm">
                      <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                    </node>
                    <node concept="2ShNRf" id="3yV2h2CPk4I" role="33vP2m">
                      <node concept="3zrR0B" id="3yV2h2CPk4J" role="2ShVmc">
                        <node concept="3Tqbb2" id="3yV2h2CPk4K" role="3zrR0E">
                          <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3yV2h2CPiRE" role="3cqZAp">
                  <node concept="37vLTI" id="3yV2h2CPkJ_" role="3clFbG">
                    <node concept="AH0OO" id="3yV2h2CPkRR" role="37vLTx">
                      <node concept="37vLTw" id="3yV2h2CPkYA" role="AHEQo">
                        <ref role="3cqZAo" node="3yV2h2CPfV6" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="3yV2h2CPkKp" role="AHHXb">
                        <ref role="3cqZAo" node="3yV2h2COZ26" resolve="chunks" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3yV2h2CPke2" role="37vLTJ">
                      <node concept="37vLTw" id="3yV2h2CPk4L" role="2Oq$k0">
                        <ref role="3cqZAo" node="3yV2h2CPk4H" resolve="w" />
                      </node>
                      <node concept="3TrcHB" id="3yV2h2CPkqF" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3yV2h2CPl3f" role="3cqZAp">
                  <node concept="37vLTI" id="1w9Vmqdqb3y" role="3clFbG">
                    <node concept="37vLTw" id="1w9Vmqdqb4H" role="37vLTJ">
                      <ref role="3cqZAo" node="1w9VmqdqaCi" resolve="latestWordAdded" />
                    </node>
                    <node concept="2OqwBi" id="3yV2h2CPlbl" role="37vLTx">
                      <node concept="37vLTw" id="1w9VmqdqaOT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1w9VmqdqaCi" resolve="latestWordAdded" />
                      </node>
                      <node concept="HtI8k" id="3yV2h2CPloR" role="2OqNvi">
                        <node concept="37vLTw" id="3yV2h2CPlrn" role="HtI8F">
                          <ref role="3cqZAo" node="3yV2h2CPk4H" resolve="w" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3yV2h2CPfV6" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="3yV2h2CPgCI" role="1tU5fm" />
                <node concept="3cmrfG" id="3yV2h2CPgEr" role="33vP2m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3eOVzh" id="3yV2h2CPiHy" role="1Dwp0S">
                <node concept="37vLTw" id="3yV2h2CPiQ$" role="3uHU7B">
                  <ref role="3cqZAo" node="3yV2h2CPfV6" resolve="i" />
                </node>
                <node concept="2OqwBi" id="3yV2h2CPgKX" role="3uHU7w">
                  <node concept="37vLTw" id="3yV2h2CPgF7" role="2Oq$k0">
                    <ref role="3cqZAo" node="3yV2h2COZ26" resolve="chunks" />
                  </node>
                  <node concept="1Rwk04" id="3yV2h2CPgTL" role="2OqNvi" />
                </node>
              </node>
              <node concept="3uNrnE" id="3yV2h2CPiFE" role="1Dwrff">
                <node concept="37vLTw" id="3yV2h2CPiFG" role="2$L3a6">
                  <ref role="3cqZAo" node="3yV2h2CPfV6" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1vgy43xvzh" role="3cqZAp">
              <node concept="37vLTw" id="1vgy43xwyn" role="3cqZAk">
                <ref role="3cqZAo" node="1w9VmqdqaCi" resolve="latestWordAdded" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1vgy43xzrx" role="3cqZAp">
          <node concept="13iPFW" id="1vgy43x$t4" role="3cqZAk" />
        </node>
      </node>
      <node concept="P$JXv" id="3yV2h2COVDV" role="lGtFl">
        <node concept="1PaTwC" id="1E1X3WHswx5" role="1Vez_I">
          <node concept="3oM_SD" id="1E1X3WHswx6" role="1PaTwD">
            <property role="3oM_SC" value="Remove" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswx7" role="1PaTwD">
            <property role="3oM_SC" value="spaces" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswx8" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswx9" role="1PaTwD">
            <property role="3oM_SC" value="within" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxa" role="1PaTwD">
            <property role="3oM_SC" value="the" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxb" role="1PaTwD">
            <property role="3oM_SC" value="word," />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxc" role="1PaTwD">
            <property role="3oM_SC" value="create" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxd" role="1PaTwD">
            <property role="3oM_SC" value="separate" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxe" role="1PaTwD">
            <property role="3oM_SC" value="words" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxf" role="1PaTwD">
            <property role="3oM_SC" value="for" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxg" role="1PaTwD">
            <property role="3oM_SC" value="each" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxh" role="1PaTwD">
            <property role="3oM_SC" value="chunk" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxi" role="1PaTwD">
            <property role="3oM_SC" value="of" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxj" role="1PaTwD">
            <property role="3oM_SC" value="no-space" />
          </node>
          <node concept="3oM_SD" id="1E1X3WHswxk" role="1PaTwD">
            <property role="3oM_SC" value="characters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3cya7Sw$5PU" role="13h7CW">
      <node concept="3clFbS" id="3cya7Sw$5PV" role="2VODD2">
        <node concept="3clFbF" id="3cya7Sw$5Q5" role="3cqZAp">
          <node concept="37vLTI" id="3cya7Sw$6Tc" role="3clFbG">
            <node concept="Xl_RD" id="3cya7Sw$6Tu" role="37vLTx">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="3cya7Sw$5XN" role="37vLTJ">
              <node concept="13iPFW" id="3cya7Sw$5Q4" role="2Oq$k0" />
              <node concept="3TrcHB" id="3cya7Sw$697" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="fB3l81myzL" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="fB3l81it7u" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="fB3l81myzM" role="1B3o_S" />
      <node concept="3clFbS" id="fB3l81myzP" role="3clF47">
        <node concept="3clFbF" id="fB3l81n$BI" role="3cqZAp">
          <node concept="3K4zz7" id="5qXHvLzzfpz" role="3clFbG">
            <node concept="2OqwBi" id="5qXHvLz$gGC" role="3K4E3e">
              <node concept="13iPFW" id="5qXHvLz$g$J" role="2Oq$k0" />
              <node concept="3TrcHB" id="5qXHvLz$gIc" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
              </node>
            </node>
            <node concept="Xl_RD" id="5qXHvLz$gKW" role="3K4GZi">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="5qXHvLzzevW" role="3K4Cdx">
              <node concept="2OqwBi" id="fB3l81n$Ly" role="2Oq$k0">
                <node concept="13iPFW" id="fB3l81n$BH" role="2Oq$k0" />
                <node concept="3TrcHB" id="fB3l81oA63" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                </node>
              </node>
              <node concept="17RvpY" id="5qXHvLzzeUw" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="fB3l81myzQ" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6GJhO0n1Xyh">
    <ref role="13h7C2" to="zqge:6GJhO0n1XxQ" resolve="IHoldLines" />
    <node concept="13i0hz" id="pB77MxqCkE" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="canBeEmpty" />
      <node concept="3Tm1VV" id="pB77MxqCkF" role="1B3o_S" />
      <node concept="10P_77" id="pB77MxqCmQ" role="3clF45" />
      <node concept="3clFbS" id="pB77MxqCkH" role="3clF47">
        <node concept="3clFbF" id="pB77MxqCu4" role="3cqZAp">
          <node concept="3clFbT" id="pB77MxqCu3" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4qjHlOWQ7Jg" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="enforceExternalIndentation" />
      <node concept="3Tm1VV" id="4qjHlOWQ7Jh" role="1B3o_S" />
      <node concept="10P_77" id="4qjHlOWQ7J$" role="3clF45" />
      <node concept="3clFbS" id="4qjHlOWQ7Jj" role="3clF47">
        <node concept="3clFbF" id="4qjHlOWQ7L7" role="3cqZAp">
          <node concept="3clFbT" id="4qjHlOWQ7L6" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6GJhO0n1Xys" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getLines" />
      <node concept="3Tm1VV" id="6GJhO0n1Xyt" role="1B3o_S" />
      <node concept="2I9FWS" id="6GJhO0n1XyG" role="3clF45">
        <ref role="2I9WkF" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
      <node concept="3clFbS" id="6GJhO0n1Xyv" role="3clF47" />
    </node>
    <node concept="13i0hz" id="7q4YwcerggR" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="addLine" />
      <node concept="3Tm1VV" id="7q4YwcerggS" role="1B3o_S" />
      <node concept="3cqZAl" id="7q4Ywcew2An" role="3clF45" />
      <node concept="3clFbS" id="7q4YwcerggU" role="3clF47" />
      <node concept="37vLTG" id="7q4Ywcew2D2" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="7q4Ywcew2D1" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6GJhO0n1Xyi" role="13h7CW">
      <node concept="3clFbS" id="6GJhO0n1Xyj" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6GJhO0n9ZLZ">
    <ref role="13h7C2" to="zqge:2cLqkTm6vgh" resolve="Text" />
    <node concept="13hLZK" id="6GJhO0n9ZM0" role="13h7CW">
      <node concept="3clFbS" id="6GJhO0n9ZM1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6GJhO0n9ZM_" role="13h7CS">
      <property role="TrG5h" value="getLines" />
      <ref role="13i0hy" node="6GJhO0n1Xys" resolve="getLines" />
      <node concept="3Tm1VV" id="6GJhO0n9ZMA" role="1B3o_S" />
      <node concept="3clFbS" id="6GJhO0n9ZMD" role="3clF47">
        <node concept="3clFbF" id="6GJhO0n9ZNj" role="3cqZAp">
          <node concept="2OqwBi" id="6GJhO0n9ZXL" role="3clFbG">
            <node concept="13iPFW" id="6GJhO0n9ZNi" role="2Oq$k0" />
            <node concept="3Tsc0h" id="6GJhO0na0bP" role="2OqNvi">
              <ref role="3TtcxE" to="zqge:2cLqkTm6weS" resolve="lines" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="6GJhO0n9ZME" role="3clF45">
        <ref role="2I9WkF" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
    </node>
    <node concept="13i0hz" id="5zXPvI9y58n" role="13h7CS">
      <property role="TrG5h" value="addLine" />
      <ref role="13i0hy" node="7q4YwcerggR" resolve="addLine" />
      <node concept="3Tm1VV" id="5zXPvI9y58o" role="1B3o_S" />
      <node concept="3clFbS" id="5zXPvI9y58t" role="3clF47">
        <node concept="3clFbF" id="5zXPvI9yc1w" role="3cqZAp">
          <node concept="2OqwBi" id="5zXPvI9ydLA" role="3clFbG">
            <node concept="2OqwBi" id="5zXPvI9ycbf" role="2Oq$k0">
              <node concept="13iPFW" id="5zXPvI9yc1v" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5zXPvI9ycrN" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6weS" resolve="lines" />
              </node>
            </node>
            <node concept="TSZUe" id="5zXPvI9yg6y" role="2OqNvi">
              <node concept="37vLTw" id="5zXPvI9yggA" role="25WWJ7">
                <ref role="3cqZAo" node="5zXPvI9y58u" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zXPvI9y58u" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="5zXPvI9y58v" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zXPvI9y58w" role="3clF45" />
    </node>
    <node concept="13i0hz" id="69wk_bF4WAs" role="13h7CS">
      <property role="TrG5h" value="getParagraphs" />
      <ref role="13i0hy" node="2MpFNjy3tMn" resolve="getParagraphs" />
      <node concept="3Tm1VV" id="69wk_bF4WAt" role="1B3o_S" />
      <node concept="3clFbS" id="69wk_bF4WAw" role="3clF47">
        <node concept="3clFbF" id="69wk_bF4WD8" role="3cqZAp">
          <node concept="2OqwBi" id="69wk_bF4WPw" role="3clFbG">
            <node concept="13iPFW" id="69wk_bF4WD7" role="2Oq$k0" />
            <node concept="3Tsc0h" id="69wk_bF4Xnq" role="2OqNvi">
              <ref role="3TtcxE" to="zqge:7Vz6ZmoXHtS" resolve="paragraphs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="69wk_bF4WAx" role="3clF45">
        <ref role="2I9WkF" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
    </node>
    <node concept="13i0hz" id="5zXPvI9y58d" role="13h7CS">
      <property role="TrG5h" value="addParagraph" />
      <ref role="13i0hy" node="fxHsktC$hi" resolve="addParagraph" />
      <node concept="3Tm1VV" id="5zXPvI9y58e" role="1B3o_S" />
      <node concept="3clFbS" id="5zXPvI9y58j" role="3clF47">
        <node concept="3clFbF" id="5zXPvI9y5af" role="3cqZAp">
          <node concept="2OqwBi" id="5zXPvI9y7cw" role="3clFbG">
            <node concept="2OqwBi" id="5zXPvI9y5jY" role="2Oq$k0">
              <node concept="13iPFW" id="5zXPvI9y5ae" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5zXPvI9y5_f" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXHtS" resolve="paragraphs" />
              </node>
            </node>
            <node concept="TSZUe" id="5zXPvI9ybFg" role="2OqNvi">
              <node concept="37vLTw" id="5zXPvI9ybTa" role="25WWJ7">
                <ref role="3cqZAo" node="5zXPvI9y58k" resolve="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zXPvI9y58k" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="5zXPvI9y58l" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zXPvI9y58m" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1YnOZxALrKS">
    <ref role="13h7C2" to="zqge:2cLqkTm6J5A" resolve="Line" />
    <node concept="13i0hz" id="2iG$EWuZbnH" role="13h7CS">
      <property role="TrG5h" value="initializeFromParagraphs" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="2iG$EWuZbnI" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="2iG$EWuZbnJ" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2iG$EWuZbnK" role="1B3o_S" />
      <node concept="3cqZAl" id="2iG$EWuZbnL" role="3clF45" />
      <node concept="3clFbS" id="2iG$EWuZbnM" role="3clF47">
        <node concept="3cpWs8" id="2iG$EWv1N9_" role="3cqZAp">
          <node concept="3cpWsn" id="2iG$EWv1N9C" role="3cpWs9">
            <property role="TrG5h" value="currentWord" />
            <node concept="3Tqbb2" id="2iG$EWv1N9z" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
            </node>
            <node concept="10Nm6u" id="2iG$EWv1Npi" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="2iG$EWuZbnR" role="3cqZAp">
          <node concept="2OqwBi" id="2iG$EWuZbnS" role="3clFbG">
            <node concept="2OqwBi" id="2iG$EWuZbnT" role="2Oq$k0">
              <node concept="37vLTw" id="2iG$EWuZbnU" role="2Oq$k0">
                <ref role="3cqZAo" node="2iG$EWuZbnI" resolve="l" />
              </node>
              <node concept="3Tsc0h" id="2iG$EWuZgu_" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="2es0OD" id="2iG$EWuZbnW" role="2OqNvi">
              <node concept="1bVj0M" id="2iG$EWuZbnX" role="23t8la">
                <node concept="3clFbS" id="2iG$EWuZbnY" role="1bW5cS">
                  <node concept="3clFbJ" id="2iG$EWuZbnZ" role="3cqZAp">
                    <node concept="2OqwBi" id="2iG$EWuZbo0" role="3clFbw">
                      <node concept="37vLTw" id="2iG$EWuZbo1" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="2iG$EWuZbo2" role="2OqNvi">
                        <node concept="chp4Y" id="2iG$EWuZi52" role="cj9EA">
                          <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2iG$EWuZbo4" role="3clFbx">
                      <node concept="3cpWs8" id="2iG$EWv0uuN" role="3cqZAp">
                        <node concept="3cpWsn" id="2iG$EWv0uuO" role="3cpWs9">
                          <property role="TrG5h" value="letter" />
                          <node concept="3Tqbb2" id="2iG$EWv0usp" role="1tU5fm">
                            <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                          </node>
                          <node concept="1PxgMI" id="2iG$EWv0uuP" role="33vP2m">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2iG$EWv0uuQ" role="3oSUPX">
                              <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                            </node>
                            <node concept="37vLTw" id="2iG$EWv0uuR" role="1m5AlR">
                              <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2iG$EWuZya8" role="3cqZAp">
                        <node concept="3cpWsn" id="2iG$EWuZya9" role="3cpWs9">
                          <property role="TrG5h" value="value" />
                          <node concept="17QB3L" id="2iG$EWuZwh$" role="1tU5fm" />
                          <node concept="2OqwBi" id="2iG$EWuZyaa" role="33vP2m">
                            <node concept="37vLTw" id="2iG$EWv0uuS" role="2Oq$k0">
                              <ref role="3cqZAo" node="2iG$EWv0uuO" resolve="letter" />
                            </node>
                            <node concept="3TrcHB" id="2iG$EWuZyae" role="2OqNvi">
                              <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2iG$EWuZk0i" role="3cqZAp">
                        <node concept="3clFbS" id="2iG$EWuZk0k" role="3clFbx">
                          <node concept="3clFbJ" id="2iG$EWv28ZJ" role="3cqZAp">
                            <node concept="3clFbS" id="2iG$EWv28ZL" role="3clFbx">
                              <node concept="3clFbF" id="2iG$EWv25W0" role="3cqZAp">
                                <node concept="2OqwBi" id="2iG$EWv26av" role="3clFbG">
                                  <node concept="13iPFW" id="2iG$EWv25VY" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="70OdufORcnq" role="2OqNvi">
                                    <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                                    <node concept="37vLTw" id="70OdufORcns" role="37wK5m">
                                      <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2iG$EWv27Dw" role="3cqZAp">
                                <node concept="37vLTI" id="2iG$EWv27Ny" role="3clFbG">
                                  <node concept="10Nm6u" id="2iG$EWv28pL" role="37vLTx" />
                                  <node concept="37vLTw" id="2iG$EWv27Du" role="37vLTJ">
                                    <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="2iG$EWv29Ly" role="3clFbw">
                              <node concept="10Nm6u" id="2iG$EWv29Za" role="3uHU7w" />
                              <node concept="37vLTw" id="2iG$EWv29_N" role="3uHU7B">
                                <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2iG$EWv00Rw" role="3cqZAp" />
                        </node>
                        <node concept="17R0WA" id="2iG$EWuZmgG" role="3clFbw">
                          <node concept="Xl_RD" id="2iG$EWuZmG2" role="3uHU7w">
                            <property role="Xl_RC" value=" " />
                          </node>
                          <node concept="37vLTw" id="2iG$EWuZyaf" role="3uHU7B">
                            <ref role="3cqZAo" node="2iG$EWuZya9" resolve="value" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="2iG$EWuZwcO" role="9aQIa">
                          <node concept="3clFbS" id="2iG$EWuZwcP" role="9aQI4">
                            <node concept="3clFbJ" id="2iG$EWv1Oi7" role="3cqZAp">
                              <node concept="3clFbS" id="2iG$EWv1Oi9" role="3clFbx">
                                <node concept="3clFbF" id="2iG$EWv1PnT" role="3cqZAp">
                                  <node concept="37vLTI" id="2iG$EWv1Qls" role="3clFbG">
                                    <node concept="2ShNRf" id="2iG$EWv1QM8" role="37vLTx">
                                      <node concept="3zrR0B" id="2iG$EWv1R02" role="2ShVmc">
                                        <node concept="3Tqbb2" id="2iG$EWv1R04" role="3zrR0E">
                                          <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="2iG$EWv1PnR" role="37vLTJ">
                                      <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2iG$EWv1S5t" role="3cqZAp">
                                  <node concept="37vLTI" id="2iG$EWv1TVm" role="3clFbG">
                                    <node concept="2OqwBi" id="2iG$EWv1Vrq" role="37vLTx">
                                      <node concept="37vLTw" id="2iG$EWv1Uua" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv0uuO" resolve="letter" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1W3$" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:7Y6hwefsRt0" resolve="bold" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2iG$EWv1SnK" role="37vLTJ">
                                      <node concept="37vLTw" id="2iG$EWv1S5r" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1ToD" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:5vhYBWEWthY" resolve="bold" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2iG$EWv1Wct" role="3cqZAp">
                                  <node concept="37vLTI" id="2iG$EWv1Wcu" role="3clFbG">
                                    <node concept="2OqwBi" id="2iG$EWv1Wcv" role="37vLTx">
                                      <node concept="37vLTw" id="2iG$EWv1Wcw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv0uuO" resolve="letter" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1XKK" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:7Y6hwefsRt1" resolve="italic" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2iG$EWv1Wcy" role="37vLTJ">
                                      <node concept="37vLTw" id="2iG$EWv1Wcz" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1WFv" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:5vhYBWEWti1" resolve="italic" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2iG$EWv1WcV" role="3cqZAp">
                                  <node concept="37vLTI" id="2iG$EWv1WcW" role="3clFbG">
                                    <node concept="2OqwBi" id="2iG$EWv1WcX" role="37vLTx">
                                      <node concept="37vLTw" id="2iG$EWv1WcY" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv0uuO" resolve="letter" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1Yjg" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:7Y6hwefsRt2" resolve="underlined" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2iG$EWv1Wd0" role="37vLTJ">
                                      <node concept="37vLTw" id="2iG$EWv1Wd1" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                      </node>
                                      <node concept="3TrcHB" id="2iG$EWv1Y2a" role="2OqNvi">
                                        <ref role="3TsBF5" to="zqge:5vhYBWEWtik" resolve="underlined" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="2iG$EWv1P24" role="3clFbw">
                                <node concept="10Nm6u" id="2iG$EWv1Pf7" role="3uHU7w" />
                                <node concept="37vLTw" id="2iG$EWv1OJS" role="3uHU7B">
                                  <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWv1ZkO" role="3cqZAp">
                              <node concept="d57v9" id="2iG$EWv20cH" role="3clFbG">
                                <node concept="2OqwBi" id="2iG$EWv21m7" role="37vLTx">
                                  <node concept="37vLTw" id="2iG$EWv210V" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iG$EWv0uuO" resolve="letter" />
                                  </node>
                                  <node concept="3TrcHB" id="2iG$EWv21wf" role="2OqNvi">
                                    <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2iG$EWv1ZBY" role="37vLTJ">
                                  <node concept="37vLTw" id="2iG$EWv1ZkM" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                  </node>
                                  <node concept="3TrcHB" id="2iG$EWv1ZLB" role="2OqNvi">
                                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2iG$EWv23N1" role="3cqZAp" />
                    </node>
                    <node concept="9aQIb" id="2iG$EWuZG9e" role="9aQIa">
                      <node concept="3clFbS" id="2iG$EWuZG9f" role="9aQI4">
                        <node concept="3clFbJ" id="2iG$EWv2bQE" role="3cqZAp">
                          <node concept="3clFbS" id="2iG$EWv2bQF" role="3clFbx">
                            <node concept="3clFbF" id="2iG$EWv2bQG" role="3cqZAp">
                              <node concept="2OqwBi" id="2iG$EWv2bQH" role="3clFbG">
                                <node concept="13iPFW" id="2iG$EWv2bQI" role="2Oq$k0" />
                                <node concept="3zqWPK" id="70OdufORcnt" role="2OqNvi">
                                  <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                                  <node concept="37vLTw" id="70OdufORcnv" role="37wK5m">
                                    <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWv2cBT" role="3cqZAp">
                              <node concept="37vLTI" id="2iG$EWv2cMb" role="3clFbG">
                                <node concept="10Nm6u" id="2iG$EWv2doF" role="37vLTx" />
                                <node concept="37vLTw" id="2iG$EWv2cBR" role="37vLTJ">
                                  <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="2iG$EWv2bQL" role="3clFbw">
                            <node concept="10Nm6u" id="2iG$EWv2bQM" role="3uHU7w" />
                            <node concept="37vLTw" id="2iG$EWv2bQN" role="3uHU7B">
                              <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="2iG$EWv2bOS" role="3cqZAp" />
                        <node concept="3clFbJ" id="2iG$EWuZDjJ" role="3cqZAp">
                          <node concept="3clFbS" id="2iG$EWuZDjL" role="3clFbx">
                            <node concept="3cpWs8" id="2iG$EWuZbpp" role="3cqZAp">
                              <node concept="3cpWsn" id="2iG$EWuZbpq" role="3cpWs9">
                                <property role="TrG5h" value="w" />
                                <node concept="3Tqbb2" id="2iG$EWuZbpr" role="1tU5fm">
                                  <ref role="ehGHo" to="zqge:2HViukQ0LZD" resolve="NodeWrapperElement" />
                                </node>
                                <node concept="2ShNRf" id="2iG$EWuZbps" role="33vP2m">
                                  <node concept="3zrR0B" id="2iG$EWuZbpt" role="2ShVmc">
                                    <node concept="3Tqbb2" id="2iG$EWuZbpu" role="3zrR0E">
                                      <ref role="ehGHo" to="zqge:2HViukQ0LZD" resolve="NodeWrapperElement" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWuZbpv" role="3cqZAp">
                              <node concept="37vLTI" id="2iG$EWuZbpw" role="3clFbG">
                                <node concept="2OqwBi" id="2iG$EWuZbpx" role="37vLTx">
                                  <node concept="1PxgMI" id="2iG$EWuZbpy" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="2iG$EWuZjkS" role="3oSUPX">
                                      <ref role="cht4Q" to="zqge:2MpFNjy3sHf" resolve="NodeWrapperTextualElement" />
                                    </node>
                                    <node concept="37vLTw" id="2iG$EWuZbp$" role="1m5AlR">
                                      <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="2iG$EWv03Ef" role="2OqNvi">
                                    <ref role="3Tt5mk" to="zqge:2MpFNjy3sHg" resolve="node" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2iG$EWuZbpA" role="37vLTJ">
                                  <node concept="37vLTw" id="2iG$EWuZbpB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iG$EWuZbpq" resolve="w" />
                                  </node>
                                  <node concept="3TrEf2" id="2iG$EWv02sy" role="2OqNvi">
                                    <ref role="3Tt5mk" to="zqge:2HViukQ0LZE" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWuZbpD" role="3cqZAp">
                              <node concept="2OqwBi" id="2iG$EWuZbpE" role="3clFbG">
                                <node concept="13iPFW" id="2iG$EWuZbpF" role="2Oq$k0" />
                                <node concept="3zqWPK" id="70OdufORcnw" role="2OqNvi">
                                  <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                                  <node concept="37vLTw" id="70OdufORcny" role="37wK5m">
                                    <ref role="3cqZAo" node="2iG$EWuZbpq" resolve="w" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2iG$EWuZDJm" role="3clFbw">
                            <node concept="37vLTw" id="2iG$EWuZDtT" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="2iG$EWuZEG6" role="2OqNvi">
                              <node concept="chp4Y" id="2iG$EWuZEPy" role="cj9EA">
                                <ref role="cht4Q" to="zqge:2MpFNjy3sHf" resolve="NodeWrapperTextualElement" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2iG$EWuZzGF" role="3cqZAp">
                          <node concept="3clFbS" id="2iG$EWuZzGH" role="3clFbx">
                            <node concept="3clFbF" id="IDeUJLm8uJ" role="3cqZAp">
                              <node concept="2OqwBi" id="IDeUJLm93s" role="3clFbG">
                                <node concept="13iPFW" id="IDeUJLm8uH" role="2Oq$k0" />
                                <node concept="3zqWPK" id="70OdufORcnz" role="2OqNvi">
                                  <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                                  <node concept="2ShNRf" id="70OdufORcn_" role="37wK5m">
                                    <node concept="3zrR0B" id="70OdufORcnA" role="2ShVmc">
                                      <node concept="3Tqbb2" id="70OdufORcnB" role="3zrR0E">
                                        <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="2iG$EWuZ_lK" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="2iG$EWuZ$Aq" role="3clFbw">
                            <node concept="37vLTw" id="2iG$EWuZzOc" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="2iG$EWuZ_3M" role="2OqNvi">
                              <node concept="chp4Y" id="2iG$EWuZ_b9" role="cj9EA">
                                <ref role="cht4Q" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2iG$EWuZA1p" role="3cqZAp">
                          <node concept="3clFbS" id="2iG$EWuZA1q" role="3clFbx">
                            <node concept="3cpWs8" id="2iG$EWv078m" role="3cqZAp">
                              <node concept="3cpWsn" id="2iG$EWv078n" role="3cpWs9">
                                <property role="TrG5h" value="address" />
                                <node concept="17QB3L" id="2iG$EWv0745" role="1tU5fm" />
                                <node concept="2OqwBi" id="2iG$EWv078o" role="33vP2m">
                                  <node concept="1PxgMI" id="2iG$EWv078p" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="2iG$EWv078q" role="3oSUPX">
                                      <ref role="cht4Q" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
                                    </node>
                                    <node concept="37vLTw" id="2iG$EWv078r" role="1m5AlR">
                                      <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="2iG$EWv078s" role="2OqNvi">
                                    <ref role="3TsBF5" to="zqge:7evo$BZb0Rm" resolve="address" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2iG$EWv08cL" role="3cqZAp">
                              <node concept="3cpWsn" id="2iG$EWv08cM" role="3cpWs9">
                                <property role="TrG5h" value="p" />
                                <node concept="2OqwBi" id="2iG$EWv08cO" role="33vP2m">
                                  <node concept="1PxgMI" id="2iG$EWv08cP" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="2iG$EWv08cQ" role="3oSUPX">
                                      <ref role="cht4Q" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
                                    </node>
                                    <node concept="37vLTw" id="2iG$EWv08cR" role="1m5AlR">
                                      <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="2iG$EWv08Br" role="2OqNvi">
                                    <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
                                  </node>
                                </node>
                                <node concept="3Tqbb2" id="2iG$EWv090J" role="1tU5fm">
                                  <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2iG$EWv0GPn" role="3cqZAp">
                              <node concept="3cpWsn" id="2iG$EWv0GPo" role="3cpWs9">
                                <property role="TrG5h" value="text" />
                                <node concept="17QB3L" id="2iG$EWv0Gmf" role="1tU5fm" />
                                <node concept="2OqwBi" id="142M7yrsnZE" role="33vP2m">
                                  <node concept="2OqwBi" id="2iG$EWv0GPp" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2iG$EWv0GPq" role="2Oq$k0">
                                      <node concept="2OqwBi" id="2iG$EWv0GPr" role="2Oq$k0">
                                        <node concept="2OqwBi" id="2iG$EWv0GPs" role="2Oq$k0">
                                          <node concept="2OqwBi" id="2iG$EWv0GPt" role="2Oq$k0">
                                            <node concept="37vLTw" id="2iG$EWv0GPu" role="2Oq$k0">
                                              <ref role="3cqZAo" node="2iG$EWv08cM" resolve="p" />
                                            </node>
                                            <node concept="3Tsc0h" id="2iG$EWv0GPv" role="2OqNvi">
                                              <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                                            </node>
                                          </node>
                                          <node concept="v3k3i" id="2iG$EWv0GPw" role="2OqNvi">
                                            <node concept="chp4Y" id="2iG$EWv0GPx" role="v3oSu">
                                              <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3zZkjj" id="2iG$EWv0GPy" role="2OqNvi">
                                          <node concept="1bVj0M" id="2iG$EWv0GPz" role="23t8la">
                                            <node concept="3clFbS" id="2iG$EWv0GP$" role="1bW5cS">
                                              <node concept="3clFbF" id="2iG$EWv0GP_" role="3cqZAp">
                                                <node concept="17QLQc" id="2iG$EWv0GPA" role="3clFbG">
                                                  <node concept="Xl_RD" id="2iG$EWv0GPB" role="3uHU7w">
                                                    <property role="Xl_RC" value=" " />
                                                  </node>
                                                  <node concept="2OqwBi" id="2iG$EWv0GPC" role="3uHU7B">
                                                    <node concept="37vLTw" id="2iG$EWv0GPD" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="5W7E4fV0WzN" resolve="it" />
                                                    </node>
                                                    <node concept="3TrcHB" id="2iG$EWv0GPE" role="2OqNvi">
                                                      <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="5W7E4fV0WzN" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="5W7E4fV0WzO" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3$u5V9" id="2iG$EWv0GPH" role="2OqNvi">
                                        <node concept="1bVj0M" id="2iG$EWv0GPI" role="23t8la">
                                          <node concept="3clFbS" id="2iG$EWv0GPJ" role="1bW5cS">
                                            <node concept="3clFbF" id="2iG$EWv0GPK" role="3cqZAp">
                                              <node concept="2OqwBi" id="2iG$EWv0GPL" role="3clFbG">
                                                <node concept="37vLTw" id="2iG$EWv0GPM" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5W7E4fV0WzP" resolve="it" />
                                                </node>
                                                <node concept="3TrcHB" id="2iG$EWv0GPN" role="2OqNvi">
                                                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="5W7E4fV0WzP" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5W7E4fV0WzQ" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uJxvA" id="2iG$EWv0GPQ" role="2OqNvi" />
                                  </node>
                                  <node concept="liA8E" id="142M7yrsoWC" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                                    <node concept="Xl_RD" id="142M7yrspdw" role="37wK5m">
                                      <property role="Xl_RC" value=" " />
                                    </node>
                                    <node concept="Xl_RD" id="142M7yrsq9m" role="37wK5m">
                                      <property role="Xl_RC" value="" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="2iG$EWv0KVZ" role="3cqZAp">
                              <node concept="3cpWsn" id="2iG$EWv0KW0" role="3cpWs9">
                                <property role="TrG5h" value="w" />
                                <node concept="3Tqbb2" id="2iG$EWv0Kwq" role="1tU5fm">
                                  <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                                </node>
                                <node concept="2ShNRf" id="2iG$EWv0KW1" role="33vP2m">
                                  <node concept="3zrR0B" id="2iG$EWv0KW2" role="2ShVmc">
                                    <node concept="3Tqbb2" id="2iG$EWv0KW3" role="3zrR0E">
                                      <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWv0LnX" role="3cqZAp">
                              <node concept="37vLTI" id="2iG$EWv0N4Q" role="3clFbG">
                                <node concept="37vLTw" id="2iG$EWv0NrM" role="37vLTx">
                                  <ref role="3cqZAo" node="2iG$EWv0GPo" resolve="text" />
                                </node>
                                <node concept="2OqwBi" id="2iG$EWv0LO6" role="37vLTJ">
                                  <node concept="37vLTw" id="2iG$EWv0LnV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iG$EWv0KW0" resolve="w" />
                                  </node>
                                  <node concept="3TrcHB" id="2iG$EWv0M_h" role="2OqNvi">
                                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWv0Op1" role="3cqZAp">
                              <node concept="37vLTI" id="2iG$EWv0PWn" role="3clFbG">
                                <node concept="37vLTw" id="2iG$EWv0Qk9" role="37vLTx">
                                  <ref role="3cqZAo" node="2iG$EWv078n" resolve="address" />
                                </node>
                                <node concept="2OqwBi" id="2iG$EWv0OJz" role="37vLTJ">
                                  <node concept="37vLTw" id="2iG$EWv0OoZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2iG$EWv0KW0" resolve="w" />
                                  </node>
                                  <node concept="3TrcHB" id="2iG$EWv0OUJ" role="2OqNvi">
                                    <ref role="3TsBF5" to="zqge:5vhYBWEWti5" resolve="url" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2iG$EWv0IhD" role="3cqZAp">
                              <node concept="2OqwBi" id="2iG$EWv0Ixa" role="3clFbG">
                                <node concept="13iPFW" id="2iG$EWv0IhB" role="2Oq$k0" />
                                <node concept="3zqWPK" id="70OdufORcnC" role="2OqNvi">
                                  <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                                  <node concept="37vLTw" id="70OdufORcnE" role="37wK5m">
                                    <ref role="3cqZAo" node="2iG$EWv0KW0" resolve="w" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2iG$EWuZA1s" role="3clFbw">
                            <node concept="37vLTw" id="2iG$EWuZA1t" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0WzR" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="2iG$EWuZA1u" role="2OqNvi">
                              <node concept="chp4Y" id="2iG$EWuZAeD" role="cj9EA">
                                <ref role="cht4Q" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WzR" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WzS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2iG$EWv2b2E" role="3cqZAp">
          <node concept="3clFbS" id="2iG$EWv2b2F" role="3clFbx">
            <node concept="3clFbF" id="2iG$EWv2b2G" role="3cqZAp">
              <node concept="2OqwBi" id="2iG$EWv2b2H" role="3clFbG">
                <node concept="13iPFW" id="2iG$EWv2b2I" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcnF" role="2OqNvi">
                  <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
                  <node concept="37vLTw" id="70OdufORcnH" role="37wK5m">
                    <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2iG$EWv2b2P" role="3clFbw">
            <node concept="10Nm6u" id="2iG$EWv2b2Q" role="3uHU7w" />
            <node concept="37vLTw" id="2iG$EWv2b2R" role="3uHU7B">
              <ref role="3cqZAo" node="2iG$EWv1N9C" resolve="currentWord" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1YnOZxALrLu" role="13h7CS">
      <property role="TrG5h" value="merge" />
      <node concept="3Tm1VV" id="1YnOZxALrLv" role="1B3o_S" />
      <node concept="3cqZAl" id="1YnOZxALrM9" role="3clF45" />
      <node concept="3clFbS" id="1YnOZxALrLx" role="3clF47">
        <node concept="3clFbF" id="1YnOZxAMIxy" role="3cqZAp">
          <node concept="2OqwBi" id="1YnOZxAMIKA" role="3clFbG">
            <node concept="13iPFW" id="1YnOZxAMIxw" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcnI" role="2OqNvi">
              <ref role="37wK5l" node="1YnOZxAMHtO" resolve="merge" />
              <node concept="37vLTw" id="70OdufORcnK" role="37wK5m">
                <ref role="3cqZAo" node="1YnOZxALrNI" resolve="other" />
              </node>
              <node concept="2OqwBi" id="70OdufORcnL" role="37wK5m">
                <node concept="2OqwBi" id="70OdufORcnM" role="2Oq$k0">
                  <node concept="13iPFW" id="70OdufORcnN" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="70OdufORcnO" role="2OqNvi">
                    <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                  </node>
                </node>
                <node concept="1yVyf7" id="70OdufORcnP" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YnOZxALrNI" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="1YnOZxALrNH" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1YnOZxAMHtO" role="13h7CS">
      <property role="TrG5h" value="merge" />
      <node concept="3Tm1VV" id="1YnOZxAMHtP" role="1B3o_S" />
      <node concept="3cqZAl" id="1YnOZxAMHtQ" role="3clF45" />
      <node concept="3clFbS" id="1YnOZxAMHtR" role="3clF47">
        <node concept="3clFbJ" id="1YnOZxANB2h" role="3cqZAp">
          <node concept="3clFbS" id="1YnOZxANB2i" role="3clFbx">
            <node concept="3cpWs6" id="1YnOZxANB2p" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1YnOZxANB2r" role="3clFbw">
            <node concept="2OqwBi" id="1YnOZxANB2s" role="3fr31v">
              <node concept="2OqwBi" id="1YnOZxANB2t" role="2Oq$k0">
                <node concept="13iPFW" id="1YnOZxANB2u" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1YnOZxANB2v" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                </node>
              </node>
              <node concept="3JPx81" id="1YnOZxANB2w" role="2OqNvi">
                <node concept="37vLTw" id="1YnOZxANBpO" role="25WWJ7">
                  <ref role="3cqZAo" node="1YnOZxAMHuC" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1YnOZxANB1k" role="3cqZAp" />
        <node concept="3cpWs8" id="1YnOZxAMOrm" role="3cqZAp">
          <node concept="3cpWsn" id="1YnOZxAMOrp" role="3cpWs9">
            <property role="TrG5h" value="currentPosition" />
            <node concept="3Tqbb2" id="1YnOZxAMOrk" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
            </node>
            <node concept="37vLTw" id="1YnOZxAMOyw" role="33vP2m">
              <ref role="3cqZAo" node="1YnOZxAMHuC" resolve="position" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1YnOZxAMHul" role="3cqZAp">
          <node concept="2OqwBi" id="1YnOZxAMHum" role="3clFbG">
            <node concept="2OqwBi" id="1YnOZxAMHun" role="2Oq$k0">
              <node concept="37vLTw" id="1YnOZxAMHuo" role="2Oq$k0">
                <ref role="3cqZAo" node="1YnOZxAMHuA" resolve="other" />
              </node>
              <node concept="3Tsc0h" id="1YnOZxAMHup" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="2es0OD" id="1YnOZxAMHuq" role="2OqNvi">
              <node concept="1bVj0M" id="1YnOZxAMHur" role="23t8la">
                <node concept="3clFbS" id="1YnOZxAMHus" role="1bW5cS">
                  <node concept="3clFbF" id="1YnOZxAMHut" role="3cqZAp">
                    <node concept="37vLTI" id="1YnOZxAMObL" role="3clFbG">
                      <node concept="37vLTw" id="1YnOZxAMO__" role="37vLTJ">
                        <ref role="3cqZAo" node="1YnOZxAMOrp" resolve="currentPosition" />
                      </node>
                      <node concept="2OqwBi" id="1YnOZxAMNrp" role="37vLTx">
                        <node concept="37vLTw" id="1YnOZxAMOGo" role="2Oq$k0">
                          <ref role="3cqZAo" node="1YnOZxAMOrp" resolve="currentPosition" />
                        </node>
                        <node concept="HtI8k" id="1YnOZxAMNMG" role="2OqNvi">
                          <node concept="37vLTw" id="1YnOZxAMNTb" role="HtI8F">
                            <ref role="3cqZAo" node="5W7E4fV0WzT" resolve="element" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WzT" role="1bW2Oz">
                  <property role="TrG5h" value="element" />
                  <node concept="2jxLKc" id="5W7E4fV0WzU" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1YnOZxAMHtS" role="3cqZAp">
          <node concept="3clFbS" id="1YnOZxAMHtT" role="3clFbx">
            <node concept="3clFbF" id="1YnOZxAMHtU" role="3cqZAp">
              <node concept="2OqwBi" id="1YnOZxAMHtV" role="3clFbG">
                <node concept="37vLTw" id="1YnOZxAMN7e" role="2Oq$k0">
                  <ref role="3cqZAo" node="1YnOZxAMHuC" resolve="position" />
                </node>
                <node concept="3YRAZt" id="1YnOZxAMHu1" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1YnOZxAMHu2" role="3clFbw">
            <node concept="2OqwBi" id="1YnOZxAMHu3" role="3uHU7w">
              <node concept="2OqwBi" id="1YnOZxAMHu4" role="2Oq$k0">
                <node concept="2OqwBi" id="1YnOZxAMHu5" role="2Oq$k0">
                  <node concept="1PxgMI" id="1YnOZxAMHu6" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="1YnOZxAMHu7" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                    </node>
                    <node concept="37vLTw" id="1YnOZxAMMY_" role="1m5AlR">
                      <ref role="3cqZAo" node="1YnOZxAMHuC" resolve="position" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1YnOZxAMHud" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                  </node>
                </node>
                <node concept="17S1cR" id="1YnOZxAMHue" role="2OqNvi" />
              </node>
              <node concept="17RlXB" id="1YnOZxAMHuf" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1YnOZxAMHug" role="3uHU7B">
              <node concept="2OqwBi" id="1YnOZxAMHuh" role="2Oq$k0">
                <node concept="37vLTw" id="1YnOZxAMHui" role="2Oq$k0">
                  <ref role="3cqZAo" node="1YnOZxAMHuA" resolve="other" />
                </node>
                <node concept="3Tsc0h" id="1YnOZxAMHuj" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                </node>
              </node>
              <node concept="3GX2aA" id="1YnOZxAMHuk" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YnOZxAMHuA" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="1YnOZxAMHuB" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
      <node concept="37vLTG" id="1YnOZxAMHuC" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3Tqbb2" id="1YnOZxAMHuD" role="1tU5fm">
          <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1YnOZxANc9P" role="13h7CS">
      <property role="TrG5h" value="split" />
      <node concept="3Tm1VV" id="1YnOZxANc9Q" role="1B3o_S" />
      <node concept="3Tqbb2" id="1YnOZxANcgu" role="3clF45">
        <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
      <node concept="3clFbS" id="1YnOZxANc9S" role="3clF47">
        <node concept="3cpWs8" id="1YnOZxANk42" role="3cqZAp">
          <node concept="3cpWsn" id="1YnOZxANk43" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="1YnOZxANk2N" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
            </node>
            <node concept="2ShNRf" id="1YnOZxANk44" role="33vP2m">
              <node concept="3zrR0B" id="1YnOZxANk45" role="2ShVmc">
                <node concept="3Tqbb2" id="1YnOZxANk46" role="3zrR0E">
                  <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1YnOZxANd4t" role="3cqZAp">
          <node concept="3clFbS" id="1YnOZxANd4v" role="3clFbx">
            <node concept="3clFbF" id="1YnOZxANkA9" role="3cqZAp">
              <node concept="2OqwBi" id="1YnOZxANmJx" role="3clFbG">
                <node concept="2OqwBi" id="1YnOZxANkSZ" role="2Oq$k0">
                  <node concept="37vLTw" id="1YnOZxANkA7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1YnOZxANk43" resolve="result" />
                  </node>
                  <node concept="3Tsc0h" id="1YnOZxANl4H" role="2OqNvi">
                    <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                  </node>
                </node>
                <node concept="WFELt" id="1YnOZxANp6L" role="2OqNvi">
                  <ref role="1A0vxQ" to="zqge:8D0iRqSPW4" resolve="Word" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1YnOZxANikN" role="3cqZAp">
              <node concept="37vLTw" id="1YnOZxANk47" role="3cqZAk">
                <ref role="3cqZAo" node="1YnOZxANk43" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1YnOZxANi8B" role="3clFbw">
            <node concept="2OqwBi" id="1YnOZxANi8D" role="3fr31v">
              <node concept="2OqwBi" id="1YnOZxANi8E" role="2Oq$k0">
                <node concept="13iPFW" id="1YnOZxANi8F" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1YnOZxANi8G" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                </node>
              </node>
              <node concept="3JPx81" id="1YnOZxANi8H" role="2OqNvi">
                <node concept="37vLTw" id="1YnOZxANi8I" role="25WWJ7">
                  <ref role="3cqZAo" node="1YnOZxANcj1" resolve="afterPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1YnOZxANquO" role="3cqZAp" />
        <node concept="3clFbF" id="1YnOZxANtf9" role="3cqZAp">
          <node concept="2OqwBi" id="1YnOZxANvo7" role="3clFbG">
            <node concept="2OqwBi" id="1YnOZxANtrB" role="2Oq$k0">
              <node concept="37vLTw" id="1YnOZxANtf7" role="2Oq$k0">
                <ref role="3cqZAo" node="1YnOZxANk43" resolve="result" />
              </node>
              <node concept="3Tsc0h" id="1YnOZxANtB0" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="X8dFx" id="1YnOZxANxzR" role="2OqNvi">
              <node concept="2OqwBi" id="1YnOZxANrz_" role="25WWJ7">
                <node concept="2OqwBi" id="1YnOZxANcxX" role="2Oq$k0">
                  <node concept="37vLTw" id="1YnOZxANcmO" role="2Oq$k0">
                    <ref role="3cqZAo" node="1YnOZxANcj1" resolve="afterPosition" />
                  </node>
                  <node concept="2TlYAL" id="1YnOZxANcHe" role="2OqNvi" />
                </node>
                <node concept="v3k3i" id="1YnOZxANt46" role="2OqNvi">
                  <node concept="chp4Y" id="1YnOZxANt5t" role="v3oSu">
                    <ref role="cht4Q" to="zqge:8D0iRqSPVB" resolve="TextElement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1YnOZxANzUc" role="3cqZAp">
          <node concept="37vLTw" id="1YnOZxANAjk" role="3cqZAk">
            <ref role="3cqZAo" node="1YnOZxANk43" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1YnOZxANcj1" role="3clF46">
        <property role="TrG5h" value="afterPosition" />
        <node concept="3Tqbb2" id="1YnOZxANcj0" role="1tU5fm">
          <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce6rMl" role="13h7CS">
      <property role="TrG5h" value="createParagraphInstance" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7q4Ywce6rMm" role="1B3o_S" />
      <node concept="3Tqbb2" id="7q4Ywce6tMG" role="3clF45">
        <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
      <node concept="3clFbS" id="7q4Ywce6rMo" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6uoU" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6uoS" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6uuI" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6uuK" role="3zrR0E">
                <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="WJz9iAYdP6" role="13h7CS">
      <property role="TrG5h" value="addTextElement" />
      <node concept="3Tm1VV" id="WJz9iAYdP7" role="1B3o_S" />
      <node concept="3cqZAl" id="WJz9iAYdP8" role="3clF45" />
      <node concept="3clFbS" id="WJz9iAYdP9" role="3clF47">
        <node concept="3clFbF" id="WJz9iAYdPc" role="3cqZAp">
          <node concept="2OqwBi" id="WJz9iAYdPd" role="3clFbG">
            <node concept="2OqwBi" id="WJz9iAYdPe" role="2Oq$k0">
              <node concept="13iPFW" id="WJz9iAYdPf" role="2Oq$k0" />
              <node concept="3Tsc0h" id="WJz9iAYeUV" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="TSZUe" id="WJz9iAYdPh" role="2OqNvi">
              <node concept="37vLTw" id="WJz9iAYdPi" role="25WWJ7">
                <ref role="3cqZAo" node="WJz9iAYdPj" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WJz9iAYdPj" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="WJz9iAYdPk" role="1tU5fm">
          <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="WJz9iAYdPl" role="13h7CS">
      <property role="TrG5h" value="addAllTextElements" />
      <node concept="3Tm1VV" id="WJz9iAYdPm" role="1B3o_S" />
      <node concept="3cqZAl" id="WJz9iAYdPn" role="3clF45" />
      <node concept="3clFbS" id="WJz9iAYdPo" role="3clF47">
        <node concept="3clFbF" id="WJz9iAYdPr" role="3cqZAp">
          <node concept="2OqwBi" id="WJz9iAYdPs" role="3clFbG">
            <node concept="2OqwBi" id="WJz9iAYdPt" role="2Oq$k0">
              <node concept="13iPFW" id="WJz9iAYdPu" role="2Oq$k0" />
              <node concept="3Tsc0h" id="WJz9iAYhfF" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="X8dFx" id="WJz9iAYdPw" role="2OqNvi">
              <node concept="37vLTw" id="WJz9iAYdPx" role="25WWJ7">
                <ref role="3cqZAo" node="WJz9iAYdPy" resolve="elements" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WJz9iAYdPy" role="3clF46">
        <property role="TrG5h" value="elements" />
        <node concept="A3Dl8" id="WJz9iAYdPz" role="1tU5fm">
          <node concept="3Tqbb2" id="WJz9iAYdP$" role="A3Ik2">
            <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1YnOZxAO76B" role="13h7CS">
      <property role="TrG5h" value="isEmptyLine" />
      <node concept="3Tm1VV" id="1YnOZxAO76C" role="1B3o_S" />
      <node concept="10P_77" id="1YnOZxAO7d4" role="3clF45" />
      <node concept="3clFbS" id="1YnOZxAO76E" role="3clF47">
        <node concept="3clFbF" id="1YnOZxAO7g_" role="3cqZAp">
          <node concept="22lmx$" id="1YnOZxAOdwq" role="3clFbG">
            <node concept="2OqwBi" id="1YnOZxAOfo5" role="3uHU7w">
              <node concept="2OqwBi" id="1YnOZxAOdCN" role="2Oq$k0">
                <node concept="13iPFW" id="1YnOZxAOdzU" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1YnOZxAOdGL" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                </node>
              </node>
              <node concept="2HxqBE" id="1YnOZxAOhjk" role="2OqNvi">
                <node concept="1bVj0M" id="1YnOZxAOhjm" role="23t8la">
                  <node concept="3clFbS" id="1YnOZxAOhjn" role="1bW5cS">
                    <node concept="3clFbF" id="1YnOZxAOhrT" role="3cqZAp">
                      <node concept="1Wc70l" id="1YnOZxAOk0v" role="3clFbG">
                        <node concept="2OqwBi" id="1YnOZxAOkri" role="3uHU7B">
                          <node concept="37vLTw" id="1YnOZxAOk9T" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WzV" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="1YnOZxAOkFA" role="2OqNvi">
                            <node concept="chp4Y" id="1YnOZxAOkLL" role="cj9EA">
                              <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1YnOZxAOjnK" role="3uHU7w">
                          <node concept="2OqwBi" id="1YnOZxAOiFm" role="2Oq$k0">
                            <node concept="1PxgMI" id="1YnOZxAOiot" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="1YnOZxAOitE" role="3oSUPX">
                                <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                              </node>
                              <node concept="37vLTw" id="1YnOZxAOhrS" role="1m5AlR">
                                <ref role="3cqZAo" node="5W7E4fV0WzV" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="1YnOZxAOiTY" role="2OqNvi">
                              <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                            </node>
                          </node>
                          <node concept="17RlXB" id="1YnOZxAOjS4" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0WzV" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0WzW" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1YnOZxAO94d" role="3uHU7B">
              <node concept="2OqwBi" id="1YnOZxAO7pr" role="2Oq$k0">
                <node concept="13iPFW" id="1YnOZxAO7g$" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1YnOZxAO7ru" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
                </node>
              </node>
              <node concept="1v1jN8" id="1YnOZxAObfY" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="WJz9iATjyN" role="13h7CS">
      <property role="TrG5h" value="getTextElements" />
      <node concept="3Tm1VV" id="WJz9iATjyO" role="1B3o_S" />
      <node concept="A3Dl8" id="WJz9iATjyP" role="3clF45">
        <node concept="3Tqbb2" id="WJz9iATjyQ" role="A3Ik2">
          <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
        </node>
      </node>
      <node concept="3clFbS" id="WJz9iATjyR" role="3clF47">
        <node concept="3clFbF" id="WJz9iATjyS" role="3cqZAp">
          <node concept="2OqwBi" id="WJz9iATjyT" role="3clFbG">
            <node concept="13iPFW" id="WJz9iATjyU" role="2Oq$k0" />
            <node concept="3Tsc0h" id="WJz9iATjTK" role="2OqNvi">
              <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="WJz9iAXbMU" role="13h7CS">
      <property role="TrG5h" value="removeTextElementAt" />
      <node concept="3Tm1VV" id="WJz9iAXbMV" role="1B3o_S" />
      <node concept="3cqZAl" id="WJz9iAXbMW" role="3clF45" />
      <node concept="3clFbS" id="WJz9iAXbMX" role="3clF47">
        <node concept="3clFbF" id="WJz9iAXbMY" role="3cqZAp">
          <node concept="2OqwBi" id="WJz9iAXbMZ" role="3clFbG">
            <node concept="2OqwBi" id="WJz9iAXbN0" role="2Oq$k0">
              <node concept="13iPFW" id="WJz9iAXbN1" role="2Oq$k0" />
              <node concept="3Tsc0h" id="WJz9iAXc7e" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="liA8E" id="WJz9iAXbN3" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
              <node concept="37vLTw" id="WJz9iAXbN4" role="37wK5m">
                <ref role="3cqZAo" node="WJz9iAXbN9" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WJz9iAXbN9" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="WJz9iAXbNa" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2iG$EWuTXuU" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2iG$EWuTXuV" role="1B3o_S" />
      <node concept="17QB3L" id="2iG$EWuTXuW" role="3clF45" />
      <node concept="3clFbS" id="2iG$EWuTXuX" role="3clF47">
        <node concept="3clFbF" id="2iG$EWuTXuY" role="3cqZAp">
          <node concept="37vLTw" id="2iG$EWuTXuZ" role="3clFbG">
            <ref role="3cqZAo" node="2iG$EWuTXv0" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2iG$EWuTXv0" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2iG$EWuTXv1" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2iG$EWuTXv2" role="13h7CS">
      <property role="TrG5h" value="representAsText" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2iG$EWuTXv3" role="1B3o_S" />
      <node concept="17QB3L" id="2iG$EWuTXv4" role="3clF45" />
      <node concept="3clFbS" id="2iG$EWuTXv5" role="3clF47">
        <node concept="3cpWs8" id="2iG$EWuTXv6" role="3cqZAp">
          <node concept="3cpWsn" id="2iG$EWuTXv7" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="2iG$EWuTXv8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2iG$EWuTXv9" role="33vP2m">
              <node concept="1pGfFk" id="2iG$EWuTXva" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="142M7yoHx4H" role="3cqZAp">
          <node concept="3cpWsn" id="142M7yoHx4K" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="10P_77" id="142M7yoHx4F" role="1tU5fm" />
            <node concept="3clFbT" id="142M7yoHx_a" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2iG$EWuTXvb" role="3cqZAp">
          <node concept="3clFbS" id="2iG$EWuTXvc" role="2LFqv$">
            <node concept="3cpWs8" id="142M7yjnVAu" role="3cqZAp">
              <node concept="3cpWsn" id="142M7yjnVAv" role="3cpWs9">
                <property role="TrG5h" value="textualRepresentation" />
                <node concept="17QB3L" id="142M7yjnUHW" role="1tU5fm" />
                <node concept="2OqwBi" id="142M7yjnVAw" role="33vP2m">
                  <node concept="37vLTw" id="142M7yjnVAx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2iG$EWuTXvk" resolve="w" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcnQ" role="2OqNvi">
                    <ref role="37wK5l" node="fB3l81it7u" resolve="getTextualRepresentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="142M7yoHykq" role="3cqZAp">
              <node concept="3clFbS" id="142M7yoHyks" role="3clFbx">
                <node concept="3clFbF" id="142M7yoHyEZ" role="3cqZAp">
                  <node concept="37vLTI" id="142M7yoHyXz" role="3clFbG">
                    <node concept="3clFbT" id="142M7yoHyXX" role="37vLTx" />
                    <node concept="37vLTw" id="142M7yoHyEX" role="37vLTJ">
                      <ref role="3cqZAo" node="142M7yoHx4K" resolve="first" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="142M7yoHyEf" role="3clFbw">
                <ref role="3cqZAo" node="142M7yoHx4K" resolve="first" />
              </node>
              <node concept="9aQIb" id="142M7yoHz3c" role="9aQIa">
                <node concept="3clFbS" id="142M7yoHz3d" role="9aQI4">
                  <node concept="3clFbF" id="7q4YwcdUZ_l" role="3cqZAp">
                    <node concept="2OqwBi" id="7q4YwcdUZXN" role="3clFbG">
                      <node concept="37vLTw" id="7q4YwcdUZ_j" role="2Oq$k0">
                        <ref role="3cqZAo" node="2iG$EWuTXv7" resolve="builder" />
                      </node>
                      <node concept="liA8E" id="7q4YwcdV0yz" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="Xl_RD" id="7q4YwcdV0JJ" role="37wK5m">
                          <property role="Xl_RC" value=" " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="142M7yjnVVN" role="3cqZAp">
              <node concept="3clFbS" id="142M7yjnVVP" role="3clFbx">
                <node concept="3clFbF" id="2iG$EWuTXvd" role="3cqZAp">
                  <node concept="2OqwBi" id="2iG$EWuTXve" role="3clFbG">
                    <node concept="37vLTw" id="2iG$EWuTXvf" role="2Oq$k0">
                      <ref role="3cqZAo" node="2iG$EWuTXv7" resolve="builder" />
                    </node>
                    <node concept="liA8E" id="2iG$EWuTXvg" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="37vLTw" id="142M7yjnVAz" role="37wK5m">
                        <ref role="3cqZAo" node="142M7yjnVAv" resolve="textualRepresentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="142M7yjnW_g" role="3clFbw">
                <node concept="37vLTw" id="142M7yjnWeA" role="2Oq$k0">
                  <ref role="3cqZAo" node="142M7yjnVAv" resolve="textualRepresentation" />
                </node>
                <node concept="17RvpY" id="142M7yjnWYG" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2iG$EWuTXvk" role="1Duv9x">
            <property role="TrG5h" value="w" />
            <node concept="3Tqbb2" id="2iG$EWuTXvl" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPVB" resolve="TextElement" />
            </node>
          </node>
          <node concept="2OqwBi" id="2iG$EWuTXvm" role="1DdaDG">
            <node concept="13iPFW" id="2iG$EWuTXvn" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcnS" role="2OqNvi">
              <ref role="37wK5l" node="WJz9iATjyN" resolve="getTextElements" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2iG$EWuTXvp" role="3cqZAp">
          <node concept="BsUDl" id="2iG$EWuTXvq" role="3clFbG">
            <ref role="37wK5l" node="2iG$EWuTXuU" resolve="wrapTextForClipboard" />
            <node concept="2OqwBi" id="2iG$EWuTXvr" role="37wK5m">
              <node concept="37vLTw" id="2iG$EWuTXvs" role="2Oq$k0">
                <ref role="3cqZAo" node="2iG$EWuTXv7" resolve="builder" />
              </node>
              <node concept="liA8E" id="2iG$EWuTXvt" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="647WjQal7cZ" role="13h7CS">
      <property role="TrG5h" value="isFirstLine" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="647WjQal7d0" role="1B3o_S" />
      <node concept="10P_77" id="647WjQalaiv" role="3clF45" />
      <node concept="3clFbS" id="647WjQal7d2" role="3clF47">
        <node concept="3clFbJ" id="647WjQalazb" role="3cqZAp">
          <node concept="2OqwBi" id="647WjQalcJl" role="3clFbw">
            <node concept="2OqwBi" id="647WjQalaIj" role="2Oq$k0">
              <node concept="13iPFW" id="647WjQala_f" role="2Oq$k0" />
              <node concept="YBYNd" id="647WjQalczH" role="2OqNvi" />
            </node>
            <node concept="3w_OXm" id="647WjQald9k" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="647WjQalazd" role="3clFbx">
            <node concept="3cpWs6" id="647WjQaldf4" role="3cqZAp">
              <node concept="3clFbT" id="647WjQaldgc" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="647WjQaldmC" role="3eNLev">
            <node concept="3fqX7Q" id="647WjQale60" role="3eO9$A">
              <node concept="2OqwBi" id="647WjQalf4W" role="3fr31v">
                <node concept="2OqwBi" id="647WjQale62" role="2Oq$k0">
                  <node concept="2OqwBi" id="647WjQale63" role="2Oq$k0">
                    <node concept="13iPFW" id="647WjQale64" role="2Oq$k0" />
                    <node concept="YBYNd" id="647WjQale65" role="2OqNvi" />
                  </node>
                  <node concept="2yIwOk" id="647WjQalezh" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="647WjQalgkI" role="2OqNvi">
                  <node concept="25Kdxt" id="647WjQatd1g" role="3QVz_e">
                    <node concept="2OqwBi" id="647WjQatdf9" role="25KhWn">
                      <node concept="13iPFW" id="647WjQatd3D" role="2Oq$k0" />
                      <node concept="2yIwOk" id="647WjQatdC0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="647WjQaldmE" role="3eOfB_">
              <node concept="3cpWs6" id="647WjQalgYN" role="3cqZAp">
                <node concept="3clFbT" id="647WjQalgwZ" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="647WjQalA4n" role="3eNLev">
            <node concept="2OqwBi" id="647WjQalBpM" role="3eO9$A">
              <node concept="1PxgMI" id="647WjQalB6n" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="647WjQalBlv" role="3oSUPX">
                  <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                </node>
                <node concept="2OqwBi" id="647WjQalAj$" role="1m5AlR">
                  <node concept="13iPFW" id="647WjQalA8D" role="2Oq$k0" />
                  <node concept="YBYNd" id="647WjQalAPD" role="2OqNvi" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORcnU" role="2OqNvi">
                <ref role="37wK5l" node="1YnOZxAO76B" resolve="isEmptyLine" />
              </node>
            </node>
            <node concept="3clFbS" id="647WjQalA4p" role="3eOfB_">
              <node concept="3cpWs6" id="647WjQalO87" role="3cqZAp">
                <node concept="3clFbT" id="647WjQalObC" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="647WjQalgUV" role="3cqZAp">
          <node concept="3clFbT" id="647WjQalgX1" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="647WjQalOgm" role="13h7CS">
      <property role="TrG5h" value="isLastLine" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="647WjQalOgn" role="1B3o_S" />
      <node concept="10P_77" id="647WjQalOgo" role="3clF45" />
      <node concept="3clFbS" id="647WjQalOgp" role="3clF47">
        <node concept="3clFbJ" id="647WjQalOgq" role="3cqZAp">
          <node concept="2OqwBi" id="647WjQalOgr" role="3clFbw">
            <node concept="2OqwBi" id="647WjQalOgs" role="2Oq$k0">
              <node concept="13iPFW" id="647WjQalOgt" role="2Oq$k0" />
              <node concept="YCak7" id="647WjQalTw4" role="2OqNvi" />
            </node>
            <node concept="3w_OXm" id="647WjQalOgv" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="647WjQalOgw" role="3clFbx">
            <node concept="3cpWs6" id="647WjQalOgx" role="3cqZAp">
              <node concept="3clFbT" id="647WjQalOgy" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="647WjQalOgz" role="3eNLev">
            <node concept="3fqX7Q" id="647WjQalOg$" role="3eO9$A">
              <node concept="2OqwBi" id="647WjQalOg_" role="3fr31v">
                <node concept="2OqwBi" id="647WjQalOgA" role="2Oq$k0">
                  <node concept="2OqwBi" id="647WjQalOgB" role="2Oq$k0">
                    <node concept="13iPFW" id="647WjQalOgC" role="2Oq$k0" />
                    <node concept="YCak7" id="647WjQalT$s" role="2OqNvi" />
                  </node>
                  <node concept="2yIwOk" id="647WjQalOgE" role="2OqNvi" />
                </node>
                <node concept="3O6GUB" id="647WjQalOgF" role="2OqNvi">
                  <node concept="25Kdxt" id="647WjQatdVT" role="3QVz_e">
                    <node concept="2OqwBi" id="647WjQate9Z" role="25KhWn">
                      <node concept="13iPFW" id="647WjQatdYG" role="2Oq$k0" />
                      <node concept="2yIwOk" id="647WjQatezE" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="647WjQalOgH" role="3eOfB_">
              <node concept="3cpWs6" id="647WjQalOgI" role="3cqZAp">
                <node concept="3clFbT" id="647WjQalOgJ" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="647WjQalOgK" role="3eNLev">
            <node concept="2OqwBi" id="647WjQalOgO" role="3eO9$A">
              <node concept="1PxgMI" id="647WjQalOgP" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="647WjQalOgQ" role="3oSUPX">
                  <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                </node>
                <node concept="2OqwBi" id="647WjQalOgR" role="1m5AlR">
                  <node concept="13iPFW" id="647WjQalOgS" role="2Oq$k0" />
                  <node concept="YCak7" id="647WjQalTCO" role="2OqNvi" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORcnW" role="2OqNvi">
                <ref role="37wK5l" node="1YnOZxAO76B" resolve="isEmptyLine" />
              </node>
            </node>
            <node concept="3clFbS" id="647WjQalOgW" role="3eOfB_">
              <node concept="3cpWs6" id="647WjQalOgX" role="3cqZAp">
                <node concept="3clFbT" id="647WjQalOgY" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="647WjQalOgZ" role="3cqZAp">
          <node concept="3clFbT" id="647WjQalOh0" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="68pBJP34v1v" role="13h7CS">
      <property role="TrG5h" value="parseAndAppendText" />
      <node concept="3Tm1VV" id="68pBJP34v1w" role="1B3o_S" />
      <node concept="3cqZAl" id="68pBJP34ynM" role="3clF45" />
      <node concept="3clFbS" id="68pBJP34v1y" role="3clF47">
        <node concept="3cpWs8" id="68pBJP3319W" role="3cqZAp">
          <node concept="3cpWsn" id="68pBJP3319X" role="3cpWs9">
            <property role="TrG5h" value="word" />
            <node concept="3Tqbb2" id="68pBJP32ZhB" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
            </node>
            <node concept="2ShNRf" id="68pBJP3319Y" role="33vP2m">
              <node concept="3zrR0B" id="68pBJP3319Z" role="2ShVmc">
                <node concept="3Tqbb2" id="68pBJP331a0" role="3zrR0E">
                  <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68pBJP32CrE" role="3cqZAp">
          <node concept="37vLTI" id="68pBJP33eDs" role="3clFbG">
            <node concept="37vLTw" id="68pBJP34_TT" role="37vLTx">
              <ref role="3cqZAo" node="68pBJP34yuw" resolve="text" />
            </node>
            <node concept="2OqwBi" id="68pBJP338H6" role="37vLTJ">
              <node concept="37vLTw" id="68pBJP331a1" role="2Oq$k0">
                <ref role="3cqZAo" node="68pBJP3319X" resolve="word" />
              </node>
              <node concept="3TrcHB" id="68pBJP33c5Q" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68pBJP33pGl" role="3cqZAp">
          <node concept="2OqwBi" id="68pBJP33vBY" role="3clFbG">
            <node concept="13iPFW" id="68pBJP34Aa6" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcnY" role="2OqNvi">
              <ref role="37wK5l" node="WJz9iAYdP6" resolve="addTextElement" />
              <node concept="37vLTw" id="70OdufORco0" role="37wK5m">
                <ref role="3cqZAo" node="68pBJP3319X" resolve="word" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68pBJP33GLz" role="3cqZAp">
          <node concept="2OqwBi" id="68pBJP33QWX" role="3clFbG">
            <node concept="37vLTw" id="68pBJP33GLx" role="2Oq$k0">
              <ref role="3cqZAo" node="68pBJP3319X" resolve="word" />
            </node>
            <node concept="3zqWPK" id="70OdufORco1" role="2OqNvi">
              <ref role="37wK5l" node="3yV2h2COV$s" resolve="normalize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="68pBJP34yuw" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="68pBJP34yuv" role="1tU5fm" />
      </node>
    </node>
    <node concept="13hLZK" id="1YnOZxALrKT" role="13h7CW">
      <node concept="3clFbS" id="1YnOZxALrKU" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="fB3l81it7j">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="zqge:8D0iRqSPVB" resolve="TextElement" />
    <node concept="13i0hz" id="fB3l81it7u" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="fB3l81it7v" role="1B3o_S" />
      <node concept="17QB3L" id="fB3l81it7I" role="3clF45" />
      <node concept="3clFbS" id="fB3l81it7x" role="3clF47" />
    </node>
    <node concept="13hLZK" id="fB3l81it7k" role="13h7CW">
      <node concept="3clFbS" id="fB3l81it7l" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="fB3l81qCtr">
    <ref role="13h7C2" to="zqge:2HViukQ0LZD" resolve="NodeWrapperElement" />
    <node concept="13hLZK" id="fB3l81qCts" role="13h7CW">
      <node concept="3clFbS" id="fB3l81qCtt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="fB3l81qCtA" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="fB3l81it7u" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="fB3l81qCtB" role="1B3o_S" />
      <node concept="3clFbS" id="fB3l81qCtE" role="3clF47">
        <node concept="3cpWs8" id="6c4fgQOdGyw" role="3cqZAp">
          <node concept="3cpWsn" id="6c4fgQOdGyu" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="result" />
            <node concept="10Q1$e" id="6c4fgQOdH7n" role="1tU5fm">
              <node concept="17QB3L" id="6c4fgQOdGKp" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="6c4fgQOdHyo" role="33vP2m">
              <node concept="3g6Rrh" id="6c4fgQOglWK" role="2ShVmc">
                <node concept="17QB3L" id="6c4fgQOdILb" role="3g7fb8" />
                <node concept="3cpWs3" id="6c4fgQQi7qW" role="3g7hyw">
                  <node concept="Xl_RD" id="6c4fgQQi7qZ" role="3uHU7w">
                    <property role="Xl_RC" value="'''" />
                  </node>
                  <node concept="3cpWs3" id="6c4fgQQi66k" role="3uHU7B">
                    <node concept="Xl_RD" id="6c4fgQQi6Ib" role="3uHU7B">
                      <property role="Xl_RC" value="'''" />
                    </node>
                    <node concept="2OqwBi" id="6c4fgQQpqnD" role="3uHU7w">
                      <node concept="2OqwBi" id="6c4fgQOi0aU" role="2Oq$k0">
                        <node concept="2OqwBi" id="6c4fgQOjhDw" role="2Oq$k0">
                          <node concept="13iPFW" id="6c4fgQOhZu$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6c4fgQOjiS0" role="2OqNvi">
                            <ref role="3Tt5mk" to="zqge:2HViukQ0LZE" resolve="node" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORco3" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                      <node concept="17S1cR" id="6c4fgQQprHL" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6c4fgQOdJ4$" role="3cqZAp" />
        <node concept="3clFbJ" id="3iNrHVgPAsm" role="3cqZAp">
          <node concept="3clFbC" id="3iNrHVgPAsn" role="3clFbw">
            <node concept="2OqwBi" id="3iNrHVgPAso" role="3uHU7B">
              <node concept="13iPFW" id="3iNrHVgPAsp" role="2Oq$k0" />
              <node concept="I4A8Y" id="3iNrHVgPAsq" role="2OqNvi" />
            </node>
            <node concept="10Nm6u" id="3iNrHVgPAsr" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3iNrHVgPAss" role="3clFbx">
            <node concept="3cpWs6" id="3iNrHVgPAst" role="3cqZAp">
              <node concept="AH0OO" id="3iNrHVgPAsu" role="3cqZAk">
                <node concept="37vLTw" id="3iNrHVgPAsv" role="AHHXb">
                  <ref role="3cqZAo" node="6c4fgQOdGyu" resolve="result" />
                </node>
                <node concept="3cmrfG" id="3iNrHVgPAsw" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6c4fgQOhs0K" role="3cqZAp">
          <node concept="3cpWsn" id="6c4fgQOhs0L" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6c4fgQOhj7h" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="6c4fgQOhs0M" role="33vP2m">
              <node concept="2JrnkZ" id="6c4fgQOhs0N" role="2Oq$k0">
                <node concept="2OqwBi" id="6c4fgQOhs0O" role="2JrQYb">
                  <node concept="13iPFW" id="6c4fgQOhs0P" role="2Oq$k0" />
                  <node concept="I4A8Y" id="6c4fgQOhs0Q" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="6c4fgQOhs0R" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3iNrHVgPCUA" role="3cqZAp">
          <node concept="3clFbC" id="3iNrHVgPCUB" role="3clFbw">
            <node concept="37vLTw" id="3iNrHVgPCUC" role="3uHU7B">
              <ref role="3cqZAo" node="6c4fgQOhs0L" resolve="repository" />
            </node>
            <node concept="10Nm6u" id="3iNrHVgPCUD" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3iNrHVgPCUF" role="3clFbx">
            <node concept="3cpWs6" id="3iNrHVgPCUG" role="3cqZAp">
              <node concept="AH0OO" id="3iNrHVgPCUH" role="3cqZAk">
                <node concept="37vLTw" id="3iNrHVgPCUI" role="AHHXb">
                  <ref role="3cqZAo" node="6c4fgQOdGyu" resolve="result" />
                </node>
                <node concept="3cmrfG" id="3iNrHVgPCUJ" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6c4fgQOhtmK" role="3cqZAp">
          <node concept="2OqwBi" id="6c4fgQOhuHc" role="3clFbG">
            <node concept="2OqwBi" id="6c4fgQOhtQv" role="2Oq$k0">
              <node concept="37vLTw" id="6c4fgQOhtmI" role="2Oq$k0">
                <ref role="3cqZAo" node="6c4fgQOhs0L" resolve="repository" />
              </node>
              <node concept="liA8E" id="6c4fgQOhuoX" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6c4fgQOhvr5" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="2ShNRf" id="6c4fgQOhvYm" role="37wK5m">
                <node concept="YeOm9" id="6c4fgQOhzZD" role="2ShVmc">
                  <node concept="1Y3b0j" id="6c4fgQOhzZG" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="6c4fgQOhzZH" role="1B3o_S" />
                    <node concept="3clFb_" id="6c4fgQOhzZV" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="6c4fgQOhzZW" role="1B3o_S" />
                      <node concept="3cqZAl" id="6c4fgQOhzZY" role="3clF45" />
                      <node concept="3clFbS" id="6c4fgQOhzZZ" role="3clF47">
                        <node concept="3J1_TO" id="3iNrHVgPPB5" role="3cqZAp">
                          <node concept="3uVAMA" id="3iNrHVgPPB6" role="1zxBo5">
                            <node concept="3clFbS" id="3iNrHVgPPB4" role="1zc67A">
                              <node concept="RRSsy" id="3iNrHVgQ0VH" role="3cqZAp">
                                <property role="RRSoG" value="gZ5fksE/warn" />
                                <node concept="Xl_RD" id="3iNrHVgQ0VI" role="RRSoy">
                                  <property role="Xl_RC" value="Failed to render the wrapped node in a headless editor, falling back to its presentation" />
                                </node>
                                <node concept="37vLTw" id="3iNrHVgQ0VJ" role="RRSow">
                                  <ref role="3cqZAo" node="3iNrHVgPPB0" resolve="e" />
                                </node>
                              </node>
                            </node>
                            <node concept="XOnhg" id="3iNrHVgPPB0" role="1zc67B">
                              <property role="TrG5h" value="e" />
                              <node concept="nSUau" id="3iNrHVgPPB2" role="1tU5fm">
                                <node concept="3uibUv" id="3iNrHVgPPB1" role="nSUat">
                                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3iNrHVgPPAV" role="1zxBo7">
                            <node concept="3cpWs8" id="6c4fgQOgXkX" role="3cqZAp">
                              <node concept="3cpWsn" id="6c4fgQOgXkY" role="3cpWs9">
                                <property role="TrG5h" value="editorComponent" />
                                <node concept="3uibUv" id="6c4fgQOgXkZ" role="1tU5fm">
                                  <ref role="3uigEE" to="7a0s:6qGpHl7IHpK" resolve="HeadlessEditorComponent" />
                                </node>
                                <node concept="2ShNRf" id="3iNrHVgU6J9" role="33vP2m">
                                  <node concept="1pGfFk" id="3iNrHVgU6KQ" role="2ShVmc">
                                    <ref role="37wK5l" to="7a0s:2iNJDZP2RE6" resolve="HeadlessEditorComponent" />
                                    <node concept="37vLTw" id="3iNrHVgU6KR" role="37wK5m">
                                      <ref role="3cqZAo" node="6c4fgQOhs0L" resolve="repository" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6c4fgQOgXl8" role="3cqZAp">
                              <node concept="2OqwBi" id="6c4fgQOgXl9" role="3clFbG">
                                <node concept="37vLTw" id="6c4fgQOgXla" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6c4fgQOgXkY" resolve="editorComponent" />
                                </node>
                                <node concept="liA8E" id="6c4fgQOgXlb" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.editNode(org.jetbrains.mps.openapi.model.SNode)" resolve="editNode" />
                                  <node concept="13iPFW" id="6c4fgQOgXlc" role="37wK5m" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6c4fgQOgXld" role="3cqZAp">
                              <node concept="3cpWsn" id="6c4fgQOgXle" role="3cpWs9">
                                <property role="TrG5h" value="cell" />
                                <node concept="3uibUv" id="6c4fgQOgXlf" role="1tU5fm">
                                  <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                                </node>
                                <node concept="2OqwBi" id="6c4fgQOgXlg" role="33vP2m">
                                  <node concept="37vLTw" id="6c4fgQOgXlh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6c4fgQOgXkY" resolve="editorComponent" />
                                  </node>
                                  <node concept="liA8E" id="6c4fgQOiylC" role="2OqNvi">
                                    <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="6c4fgQOgXlk" role="3cqZAp">
                              <node concept="3clFbS" id="6c4fgQOgXll" role="3clFbx">
                                <node concept="3cpWs8" id="6c4fgQOgXlm" role="3cqZAp">
                                  <node concept="3cpWsn" id="6c4fgQOgXln" role="3cpWs9">
                                    <property role="TrG5h" value="text" />
                                    <node concept="3uibUv" id="6c4fgQOgXlo" role="1tU5fm">
                                      <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
                                    </node>
                                    <node concept="2OqwBi" id="6c4fgQOgXlp" role="33vP2m">
                                      <node concept="37vLTw" id="6c4fgQOgXlq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6c4fgQOgXle" resolve="cell" />
                                      </node>
                                      <node concept="liA8E" id="6c4fgQOgXlr" role="2OqNvi">
                                        <ref role="37wK5l" to="f4zo:~EditorCell.renderText()" resolve="renderText" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6c4fgQOgXls" role="3cqZAp">
                                  <node concept="37vLTI" id="6c4fgQOgXlt" role="3clFbG">
                                    <node concept="AH0OO" id="6c4fgQOgXlu" role="37vLTJ">
                                      <node concept="3cmrfG" id="6c4fgQOgXlv" role="AHEQo">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                      <node concept="37vLTw" id="6c4fgQOgXlw" role="AHHXb">
                                        <ref role="3cqZAo" node="6c4fgQOdGyu" resolve="result" />
                                      </node>
                                    </node>
                                    <node concept="3cpWs3" id="6c4fgQQi4$P" role="37vLTx">
                                      <node concept="Xl_RD" id="6c4fgQQi54j" role="3uHU7w">
                                        <property role="Xl_RC" value="'''" />
                                      </node>
                                      <node concept="3cpWs3" id="6c4fgQQi1O6" role="3uHU7B">
                                        <node concept="Xl_RD" id="6c4fgQQi2sG" role="3uHU7B">
                                          <property role="Xl_RC" value="'''" />
                                        </node>
                                        <node concept="2OqwBi" id="6c4fgQQptgR" role="3uHU7w">
                                          <node concept="2OqwBi" id="6c4fgQOgXlx" role="2Oq$k0">
                                            <node concept="37vLTw" id="6c4fgQOgXly" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6c4fgQOgXln" resolve="text" />
                                            </node>
                                            <node concept="liA8E" id="6c4fgQOgXlz" role="2OqNvi">
                                              <ref role="37wK5l" to="cj4x:~TextBuilder.getText()" resolve="getText" />
                                            </node>
                                          </node>
                                          <node concept="17S1cR" id="6c4fgQQpuMj" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="6c4fgQOgXl$" role="3clFbw">
                                <node concept="10Nm6u" id="6c4fgQOgXl_" role="3uHU7w" />
                                <node concept="37vLTw" id="6c4fgQOgXlA" role="3uHU7B">
                                  <ref role="3cqZAo" node="6c4fgQOgXle" resolve="cell" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="6c4fgQOh$01" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6c4fgQOdOix" role="3cqZAp">
          <node concept="AH0OO" id="6c4fgQOdOT3" role="3cqZAk">
            <node concept="3cmrfG" id="6c4fgQOdP3m" role="AHEQo">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6c4fgQOdOD6" role="AHHXb">
              <ref role="3cqZAo" node="6c4fgQOdGyu" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="fB3l81qCtF" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="3VJiP1sDlYF">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
    <node concept="13i0hz" id="69wk_bF5sg9" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="69wk_bF5sga" role="1B3o_S" />
      <node concept="17QB3L" id="69wk_bF5sgb" role="3clF45" />
      <node concept="3clFbS" id="69wk_bF5sgc" role="3clF47" />
    </node>
    <node concept="13i0hz" id="3VJiP1sDlYQ" role="13h7CS">
      <property role="TrG5h" value="findPreviousWordStart" />
      <node concept="3Tm1VV" id="3VJiP1sDlYR" role="1B3o_S" />
      <node concept="3Tqbb2" id="3VJiP1sDlZ6" role="3clF45">
        <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
      </node>
      <node concept="3clFbS" id="3VJiP1sDlYT" role="3clF47">
        <node concept="3cpWs8" id="3VJiP1sDtgm" role="3cqZAp">
          <node concept="3cpWsn" id="3VJiP1sDtgn" role="3cpWs9">
            <property role="TrG5h" value="closest" />
            <node concept="3Tqbb2" id="3VJiP1sDtdT" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
            </node>
            <node concept="2OqwBi" id="3VJiP1sDtgo" role="33vP2m">
              <node concept="2OqwBi" id="3VJiP1sDtgp" role="2Oq$k0">
                <node concept="2OqwBi" id="3VJiP1sDtgq" role="2Oq$k0">
                  <node concept="2OqwBi" id="3VJiP1sDtgr" role="2Oq$k0">
                    <node concept="13iPFW" id="3VJiP1sDtgs" role="2Oq$k0" />
                    <node concept="2Ttrtt" id="3VJiP1sDtgt" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="3VJiP1sDtgv" role="2OqNvi">
                    <node concept="chp4Y" id="42Hi6rkFJj4" role="v3oSu">
                      <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="3VJiP1sDtgx" role="2OqNvi">
                  <node concept="1bVj0M" id="3VJiP1sDtgy" role="23t8la">
                    <node concept="3clFbS" id="3VJiP1sDtgz" role="1bW5cS">
                      <node concept="3clFbF" id="3VJiP1sDtg$" role="3cqZAp">
                        <node concept="22lmx$" id="42Hi6rkFJmP" role="3clFbG">
                          <node concept="3fqX7Q" id="42Hi6rkFJmQ" role="3uHU7B">
                            <node concept="2OqwBi" id="42Hi6rkFJmR" role="3fr31v">
                              <node concept="37vLTw" id="42Hi6rkFJmS" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WzX" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="42Hi6rkFJmT" role="2OqNvi">
                                <node concept="chp4Y" id="42Hi6rkFJmU" role="cj9EA">
                                  <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="17R0WA" id="42Hi6rkFJmV" role="3uHU7w">
                            <node concept="Xl_RD" id="42Hi6rkFJmW" role="3uHU7w">
                              <property role="Xl_RC" value=" " />
                            </node>
                            <node concept="2OqwBi" id="42Hi6rkFJmX" role="3uHU7B">
                              <node concept="1PxgMI" id="42Hi6rkFJmY" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="42Hi6rkFJmZ" role="3oSUPX">
                                  <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                </node>
                                <node concept="37vLTw" id="42Hi6rkFJn0" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0WzX" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="42Hi6rkFJn1" role="2OqNvi">
                                <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0WzX" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0WzY" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1yVyf7" id="42Hi6rkHmHD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VJiP1sDtDH" role="3cqZAp">
          <node concept="3clFbS" id="3VJiP1sDtDJ" role="3clFbx">
            <node concept="3cpWs6" id="3VJiP1sDu6C" role="3cqZAp">
              <node concept="1PxgMI" id="3VJiP1sDxOo" role="3cqZAk">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="3VJiP1sDxTo" role="3oSUPX">
                  <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                </node>
                <node concept="2OqwBi" id="3VJiP1sDvNq" role="1m5AlR">
                  <node concept="2OqwBi" id="3VJiP1sDulQ" role="2Oq$k0">
                    <node concept="13iPFW" id="3VJiP1sDuaL" role="2Oq$k0" />
                    <node concept="2Ttrtt" id="3VJiP1sDuFG" role="2OqNvi">
                      <node concept="1xIGOp" id="4zM$XGYVUNx" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="1uHKPH" id="3VJiP1sDx6j" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3VJiP1sDtS0" role="3clFbw">
            <node concept="37vLTw" id="3VJiP1sDtI3" role="2Oq$k0">
              <ref role="3cqZAo" node="3VJiP1sDtgn" resolve="closest" />
            </node>
            <node concept="3w_OXm" id="3VJiP1sDu4$" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="3VJiP1sDxY9" role="9aQIa">
            <node concept="3clFbS" id="3VJiP1sDxYa" role="9aQI4">
              <node concept="3cpWs6" id="3VJiP1sDy2Q" role="3cqZAp">
                <node concept="1PxgMI" id="3VJiP1sDyV2" role="3cqZAk">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="3VJiP1sDz0c" role="3oSUPX">
                    <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                  </node>
                  <node concept="2OqwBi" id="3VJiP1sDyt0" role="1m5AlR">
                    <node concept="37vLTw" id="3VJiP1sDybA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VJiP1sDtgn" resolve="closest" />
                    </node>
                    <node concept="YCak7" id="3VJiP1sDyIc" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3VJiP1sDz5g" role="13h7CS">
      <property role="TrG5h" value="findNextWordEnd" />
      <node concept="3Tm1VV" id="3VJiP1sDz5h" role="1B3o_S" />
      <node concept="3Tqbb2" id="3VJiP1sDz5i" role="3clF45">
        <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
      </node>
      <node concept="3clFbS" id="3VJiP1sDz5j" role="3clF47">
        <node concept="3clFbJ" id="3VJiP1sDz5k" role="3cqZAp">
          <node concept="3clFbS" id="3VJiP1sDz5l" role="3clFbx">
            <node concept="3cpWs6" id="3VJiP1sDz5m" role="3cqZAp">
              <node concept="13iPFW" id="3VJiP1sDz5n" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="3VJiP1sDz5o" role="3clFbw">
            <node concept="2OqwBi" id="3VJiP1sDz5p" role="2Oq$k0">
              <node concept="13iPFW" id="3VJiP1sDz5q" role="2Oq$k0" />
              <node concept="YCak7" id="3VJiP1sDztd" role="2OqNvi" />
            </node>
            <node concept="3w_OXm" id="3VJiP1sDz5s" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="3VJiP1sDz5t" role="3cqZAp">
          <node concept="3cpWsn" id="3VJiP1sDz5u" role="3cpWs9">
            <property role="TrG5h" value="closest" />
            <node concept="3Tqbb2" id="3VJiP1sDz5v" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
            </node>
            <node concept="2OqwBi" id="3VJiP1sDz5w" role="33vP2m">
              <node concept="2OqwBi" id="3VJiP1sDz5x" role="2Oq$k0">
                <node concept="2OqwBi" id="3VJiP1sDz5y" role="2Oq$k0">
                  <node concept="2OqwBi" id="3VJiP1sDz5z" role="2Oq$k0">
                    <node concept="13iPFW" id="3VJiP1sDz5$" role="2Oq$k0" />
                    <node concept="2TlYAL" id="3VJiP1sDzCH" role="2OqNvi" />
                  </node>
                  <node concept="v3k3i" id="3VJiP1sDz5A" role="2OqNvi">
                    <node concept="chp4Y" id="42Hi6rkFGUL" role="v3oSu">
                      <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="3VJiP1sDz5C" role="2OqNvi">
                  <node concept="1bVj0M" id="3VJiP1sDz5D" role="23t8la">
                    <node concept="3clFbS" id="3VJiP1sDz5E" role="1bW5cS">
                      <node concept="3clFbF" id="3VJiP1sDz5F" role="3cqZAp">
                        <node concept="22lmx$" id="42Hi6rkFH5t" role="3clFbG">
                          <node concept="3fqX7Q" id="42Hi6rkFI9N" role="3uHU7B">
                            <node concept="2OqwBi" id="42Hi6rkFI9P" role="3fr31v">
                              <node concept="37vLTw" id="42Hi6rkFI9Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WzZ" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="42Hi6rkFI9R" role="2OqNvi">
                                <node concept="chp4Y" id="42Hi6rkFI9S" role="cj9EA">
                                  <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="17R0WA" id="3VJiP1sDz5G" role="3uHU7w">
                            <node concept="Xl_RD" id="3VJiP1sDz5H" role="3uHU7w">
                              <property role="Xl_RC" value=" " />
                            </node>
                            <node concept="2OqwBi" id="3VJiP1sDz5I" role="3uHU7B">
                              <node concept="1PxgMI" id="42Hi6rkFIxA" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="42Hi6rkFIBn" role="3oSUPX">
                                  <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                </node>
                                <node concept="37vLTw" id="3VJiP1sDz5J" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0WzZ" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="42Hi6rkFJ9H" role="2OqNvi">
                                <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0WzZ" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0W$0" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="3VJiP1sDz5N" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VJiP1sDz5O" role="3cqZAp">
          <node concept="3clFbS" id="3VJiP1sDz5P" role="3clFbx">
            <node concept="3cpWs6" id="3VJiP1sDz5Q" role="3cqZAp">
              <node concept="1PxgMI" id="3VJiP1sDz5R" role="3cqZAk">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="3VJiP1sDz5S" role="3oSUPX">
                  <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                </node>
                <node concept="2OqwBi" id="3VJiP1sDz5T" role="1m5AlR">
                  <node concept="2OqwBi" id="3VJiP1sDz5U" role="2Oq$k0">
                    <node concept="13iPFW" id="3VJiP1sDz5V" role="2Oq$k0" />
                    <node concept="2TlYAL" id="3VJiP1sDzLO" role="2OqNvi" />
                  </node>
                  <node concept="1yVyf7" id="3VJiP1sD_lT" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3VJiP1sDz5Y" role="3clFbw">
            <node concept="37vLTw" id="3VJiP1sDz5Z" role="2Oq$k0">
              <ref role="3cqZAo" node="3VJiP1sDz5u" resolve="closest" />
            </node>
            <node concept="3w_OXm" id="3VJiP1sDz60" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="3VJiP1sDz61" role="9aQIa">
            <node concept="3clFbS" id="3VJiP1sDz62" role="9aQI4">
              <node concept="3cpWs6" id="3VJiP1sDz63" role="3cqZAp">
                <node concept="1PxgMI" id="3VJiP1sDz64" role="3cqZAk">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="3VJiP1sDz65" role="3oSUPX">
                    <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                  </node>
                  <node concept="2OqwBi" id="3VJiP1sDz66" role="1m5AlR">
                    <node concept="37vLTw" id="3VJiP1sDz67" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VJiP1sDz5u" resolve="closest" />
                    </node>
                    <node concept="YBYNd" id="3VJiP1sD_nO" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3VJiP1sDlYG" role="13h7CW">
      <node concept="3clFbS" id="3VJiP1sDlYH" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4HqBHuNzqyl">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
    <node concept="13i0hz" id="1v077Wg2A59" role="13h7CS">
      <property role="TrG5h" value="initialize" />
      <node concept="3Tm1VV" id="1v077Wg2A5a" role="1B3o_S" />
      <node concept="3cqZAl" id="1v077Wg2Ah5" role="3clF45" />
      <node concept="3clFbS" id="1v077Wg2A5c" role="3clF47">
        <node concept="3clFbJ" id="1v077Wg2Akw" role="3cqZAp">
          <node concept="2OqwBi" id="1v077Wg2CiE" role="3clFbw">
            <node concept="2OqwBi" id="1v077Wg2AuC" role="2Oq$k0">
              <node concept="13iPFW" id="1v077Wg2AkA" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1v077Wg2AEx" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="1v1jN8" id="1v077Wg2Eth" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="1v077Wg2Aky" role="3clFbx">
            <node concept="3clFbF" id="1v077Wg3FZQ" role="3cqZAp">
              <node concept="2OqwBi" id="1v077Wg2FE4" role="3clFbG">
                <node concept="2OqwBi" id="1v077Wg2FE5" role="2Oq$k0">
                  <node concept="13iPFW" id="1v077Wg2FE6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1v077Wg2FE7" role="2OqNvi">
                    <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                  </node>
                </node>
                <node concept="WFELt" id="1v077Wg2FE8" role="2OqNvi">
                  <ref role="1A0vxQ" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1uSfHaoOxlA" role="13h7CS">
      <property role="TrG5h" value="clearTextualElements" />
      <node concept="3Tm1VV" id="1uSfHaoOxlB" role="1B3o_S" />
      <node concept="3cqZAl" id="1uSfHaoO$Dx" role="3clF45" />
      <node concept="3clFbS" id="1uSfHaoOxlD" role="3clF47">
        <node concept="3clFbF" id="1uSfHaoO$FD" role="3cqZAp">
          <node concept="2OqwBi" id="1uSfHaoOAbu" role="3clFbG">
            <node concept="2OqwBi" id="1uSfHaoO$MF" role="2Oq$k0">
              <node concept="13iPFW" id="1uSfHaoO$FC" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1uSfHaoO$O2" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="2Kehj3" id="1uSfHaoODLG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="1uSfHaoOI6h" role="3cqZAp">
          <node concept="BsUDl" id="1uSfHaoOI6f" role="3clFbG">
            <ref role="37wK5l" node="1v077Wg2A59" resolve="initialize" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="10ljsgpnzm5" role="13h7CS">
      <property role="TrG5h" value="clearFromEmptyLetters" />
      <node concept="3Tm6S6" id="10ljsgpnJwq" role="1B3o_S" />
      <node concept="3cqZAl" id="10ljsgpnF7Y" role="3clF45" />
      <node concept="3clFbS" id="10ljsgpnzm8" role="3clF47">
        <node concept="3clFbJ" id="10ljsgpmjX7" role="3cqZAp">
          <node concept="3clFbS" id="10ljsgpmjX9" role="3clFbx">
            <node concept="3clFbF" id="10ljsgpmknk" role="3cqZAp">
              <node concept="2OqwBi" id="10ljsgpmlI7" role="3clFbG">
                <node concept="2OqwBi" id="10ljsgpmknE" role="2Oq$k0">
                  <node concept="13iPFW" id="10ljsgpmkni" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="10ljsgpmkoq" role="2OqNvi">
                    <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                  </node>
                </node>
                <node concept="2Kehj3" id="10ljsgpmnRG" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="10ljsgpmkjf" role="3clFbw">
            <node concept="13iPFW" id="10ljsgpmk9G" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORco5" role="2OqNvi">
              <ref role="37wK5l" node="7r4EKYUymRW" resolve="isEmptyParagraph" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="250QDwq2ueg" role="13h7CS">
      <property role="TrG5h" value="getTextualElements" />
      <node concept="3Tm1VV" id="250QDwq2ueh" role="1B3o_S" />
      <node concept="A3Dl8" id="250QDwq2CaF" role="3clF45">
        <node concept="3Tqbb2" id="250QDwq2CaS" role="A3Ik2">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
      <node concept="3clFbS" id="250QDwq2uej" role="3clF47">
        <node concept="3clFbF" id="250QDwq53RT" role="3cqZAp">
          <node concept="2OqwBi" id="250QDwq53RU" role="3clFbG">
            <node concept="13iPFW" id="250QDwq53RV" role="2Oq$k0" />
            <node concept="3Tsc0h" id="250QDwq53RW" role="2OqNvi">
              <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="250QDwq53RO" role="13h7CS">
      <property role="TrG5h" value="getNonEmptyTextualElements" />
      <node concept="3Tm1VV" id="250QDwq53RP" role="1B3o_S" />
      <node concept="A3Dl8" id="250QDwq53RQ" role="3clF45">
        <node concept="3Tqbb2" id="250QDwq53RR" role="A3Ik2">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
      <node concept="3clFbS" id="250QDwq53RS" role="3clF47">
        <node concept="3clFbF" id="250QDwq5ePK" role="3cqZAp">
          <node concept="2OqwBi" id="250QDwq5ePL" role="3clFbG">
            <node concept="2OqwBi" id="250QDwq5ePM" role="2Oq$k0">
              <node concept="13iPFW" id="250QDwq5ePN" role="2Oq$k0" />
              <node concept="3Tsc0h" id="250QDwq5ePO" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="3zZkjj" id="250QDwq5ePP" role="2OqNvi">
              <node concept="1bVj0M" id="250QDwq5ePQ" role="23t8la">
                <node concept="3clFbS" id="250QDwq5ePR" role="1bW5cS">
                  <node concept="3clFbF" id="250QDwq5ePS" role="3cqZAp">
                    <node concept="3fqX7Q" id="250QDwq5ePT" role="3clFbG">
                      <node concept="2OqwBi" id="250QDwq5ePU" role="3fr31v">
                        <node concept="37vLTw" id="250QDwq5ePV" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0W$1" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="250QDwq5ePW" role="2OqNvi">
                          <node concept="chp4Y" id="250QDwq5ePX" role="cj9EA">
                            <ref role="cht4Q" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0W$1" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0W$2" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="250QDwq5eNo" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="250QDwq2Yav" role="13h7CS">
      <property role="TrG5h" value="removeTextualElementAt" />
      <node concept="3Tm1VV" id="250QDwq2Yaw" role="1B3o_S" />
      <node concept="3cqZAl" id="250QDwq39DY" role="3clF45" />
      <node concept="3clFbS" id="250QDwq2Yay" role="3clF47">
        <node concept="3clFbF" id="250QDwq39FF" role="3cqZAp">
          <node concept="2OqwBi" id="250QDwq3bw1" role="3clFbG">
            <node concept="2OqwBi" id="250QDwq39NF" role="2Oq$k0">
              <node concept="13iPFW" id="250QDwq39FE" role="2Oq$k0" />
              <node concept="3Tsc0h" id="250QDwq3a0n" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="liA8E" id="250QDwq3D_l" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
              <node concept="37vLTw" id="250QDwq3DGK" role="37wK5m">
                <ref role="3cqZAo" node="250QDwq39F8" resolve="index" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="250QDwq3DW7" role="3cqZAp">
          <node concept="2OqwBi" id="250QDwq3E0N" role="3clFbG">
            <node concept="13iPFW" id="250QDwq3DW5" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORco7" role="2OqNvi">
              <ref role="37wK5l" node="1v077Wg2A59" resolve="initialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="250QDwq39F8" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="250QDwq39F7" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="1uSfHaoOOLl" role="13h7CS">
      <property role="TrG5h" value="addTextualElement" />
      <node concept="3Tm1VV" id="1uSfHaoOOLm" role="1B3o_S" />
      <node concept="3cqZAl" id="1uSfHaoOOLn" role="3clF45" />
      <node concept="3clFbS" id="1uSfHaoOOLo" role="3clF47">
        <node concept="3clFbF" id="10ljsgpnLKX" role="3cqZAp">
          <node concept="BsUDl" id="10ljsgpnLKV" role="3clFbG">
            <ref role="37wK5l" node="10ljsgpnzm5" resolve="clearFromEmptyLetters" />
          </node>
        </node>
        <node concept="3clFbF" id="1uSfHaoP8Aq" role="3cqZAp">
          <node concept="2OqwBi" id="1uSfHaoPa4b" role="3clFbG">
            <node concept="2OqwBi" id="1uSfHaoP8EZ" role="2Oq$k0">
              <node concept="13iPFW" id="1uSfHaoP8An" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1uSfHaoP8GJ" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="TSZUe" id="1uSfHaoPcaq" role="2OqNvi">
              <node concept="37vLTw" id="1uSfHaoPckH" role="25WWJ7">
                <ref role="3cqZAo" node="1uSfHaoP6tk" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1uSfHaoP6tk" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="1uSfHaoP6tj" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1uSfHaoPgT1" role="13h7CS">
      <property role="TrG5h" value="addAllTextualElements" />
      <node concept="3Tm1VV" id="1uSfHaoPgT2" role="1B3o_S" />
      <node concept="3cqZAl" id="1uSfHaoPgT3" role="3clF45" />
      <node concept="3clFbS" id="1uSfHaoPgT4" role="3clF47">
        <node concept="3clFbF" id="10ljsgpnMz2" role="3cqZAp">
          <node concept="BsUDl" id="10ljsgpnMz3" role="3clFbG">
            <ref role="37wK5l" node="10ljsgpnzm5" resolve="clearFromEmptyLetters" />
          </node>
        </node>
        <node concept="3clFbF" id="1uSfHaoPgT5" role="3cqZAp">
          <node concept="2OqwBi" id="1uSfHaoPgT6" role="3clFbG">
            <node concept="2OqwBi" id="1uSfHaoPgT7" role="2Oq$k0">
              <node concept="13iPFW" id="1uSfHaoPgT8" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1uSfHaoPgT9" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
              </node>
            </node>
            <node concept="X8dFx" id="1uSfHaoPpPh" role="2OqNvi">
              <node concept="37vLTw" id="1uSfHaoPpPj" role="25WWJ7">
                <ref role="3cqZAo" node="1uSfHaoPgTc" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1uSfHaoPgTc" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="A3Dl8" id="1uSfHaoPnmy" role="1tU5fm">
          <node concept="3Tqbb2" id="1uSfHaoPgTd" role="A3Ik2">
            <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7r4EKYUymRW" role="13h7CS">
      <property role="TrG5h" value="isEmptyParagraph" />
      <node concept="3Tm1VV" id="7r4EKYUymRX" role="1B3o_S" />
      <node concept="10P_77" id="7r4EKYUyn5z" role="3clF45" />
      <node concept="3clFbS" id="7r4EKYUymRZ" role="3clF47">
        <node concept="3clFbF" id="7r4EKYUynai" role="3cqZAp">
          <node concept="22lmx$" id="4HqBHuN_RTp" role="3clFbG">
            <node concept="2OqwBi" id="4HqBHuN_RTq" role="3uHU7w">
              <node concept="2OqwBi" id="4HqBHuN_RTr" role="2Oq$k0">
                <node concept="13iPFW" id="4HqBHuN_RTs" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4HqBHuNA26w" role="2OqNvi">
                  <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                </node>
              </node>
              <node concept="2HxqBE" id="4HqBHuN_RTu" role="2OqNvi">
                <node concept="1bVj0M" id="4HqBHuN_RTv" role="23t8la">
                  <node concept="3clFbS" id="4HqBHuN_RTw" role="1bW5cS">
                    <node concept="3clFbF" id="4HqBHuN_RTx" role="3cqZAp">
                      <node concept="1Wc70l" id="4HqBHuN_RTy" role="3clFbG">
                        <node concept="2OqwBi" id="4HqBHuN_RTz" role="3uHU7B">
                          <node concept="37vLTw" id="4HqBHuN_RT$" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0W$3" resolve="it" />
                          </node>
                          <node concept="1mIQ4w" id="4HqBHuN_RT_" role="2OqNvi">
                            <node concept="chp4Y" id="4HqBHuNA2nq" role="cj9EA">
                              <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4HqBHuN_RTB" role="3uHU7w">
                          <node concept="2OqwBi" id="4HqBHuN_RTC" role="2Oq$k0">
                            <node concept="1PxgMI" id="4HqBHuN_RTD" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="4HqBHuNA2BD" role="3oSUPX">
                                <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                              </node>
                              <node concept="37vLTw" id="4HqBHuN_RTF" role="1m5AlR">
                                <ref role="3cqZAo" node="5W7E4fV0W$3" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="1v077Wg0tkP" role="2OqNvi">
                              <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                            </node>
                          </node>
                          <node concept="17RlXB" id="4HqBHuN_RTH" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0W$3" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0W$4" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="7r4EKYUywWQ" role="3uHU7B">
              <node concept="3fqX7Q" id="7r4EKYUypQY" role="3uHU7w">
                <node concept="2OqwBi" id="7r4EKYUypR0" role="3fr31v">
                  <node concept="2OqwBi" id="7r4EKYUypR1" role="2Oq$k0">
                    <node concept="13iPFW" id="7r4EKYUypR2" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7r4EKYUypR3" role="2OqNvi">
                      <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                    </node>
                  </node>
                  <node concept="2HwmR7" id="7r4EKYUypR4" role="2OqNvi">
                    <node concept="1bVj0M" id="7r4EKYUypR5" role="23t8la">
                      <node concept="3clFbS" id="7r4EKYUypR6" role="1bW5cS">
                        <node concept="3clFbF" id="7r4EKYUypR7" role="3cqZAp">
                          <node concept="3fqX7Q" id="7r4EKYUyq4F" role="3clFbG">
                            <node concept="2OqwBi" id="7r4EKYUyq4H" role="3fr31v">
                              <node concept="37vLTw" id="7r4EKYUyq4I" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0W$5" resolve="it" />
                              </node>
                              <node concept="1mIQ4w" id="7r4EKYUyq4J" role="2OqNvi">
                                <node concept="chp4Y" id="7r4EKYUyq4K" role="cj9EA">
                                  <ref role="cht4Q" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0W$5" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0W$6" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4HqBHuN_RTK" role="3uHU7B">
                <node concept="2OqwBi" id="4HqBHuN_RTL" role="2Oq$k0">
                  <node concept="13iPFW" id="4HqBHuN_RTM" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="4HqBHuNA1M$" role="2OqNvi">
                    <ref role="3TtcxE" to="zqge:7Vz6ZmoXeRv" resolve="letters" />
                  </node>
                </node>
                <node concept="1v1jN8" id="4HqBHuN_RTO" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4HqBHuNzqyw" role="13h7CS">
      <property role="TrG5h" value="merge" />
      <node concept="3Tm1VV" id="4HqBHuNzqyx" role="1B3o_S" />
      <node concept="3cqZAl" id="4HqBHuNzqyy" role="3clF45" />
      <node concept="3clFbS" id="4HqBHuNzqyz" role="3clF47">
        <node concept="3clFbF" id="4HqBHuNzqy$" role="3cqZAp">
          <node concept="2OqwBi" id="4HqBHuNzqy_" role="3clFbG">
            <node concept="13iPFW" id="4HqBHuNzqyA" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORco9" role="2OqNvi">
              <ref role="37wK5l" node="4HqBHuNzqyK" resolve="merge" />
              <node concept="37vLTw" id="70OdufORcob" role="37wK5m">
                <ref role="3cqZAo" node="4HqBHuNzqyI" resolve="other" />
              </node>
              <node concept="2OqwBi" id="70OdufORcoc" role="37wK5m">
                <node concept="2OqwBi" id="70OdufORcod" role="2Oq$k0">
                  <node concept="13iPFW" id="70OdufORcoe" role="2Oq$k0" />
                  <node concept="2qgKlT" id="70OdufORcof" role="2OqNvi">
                    <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
                  </node>
                </node>
                <node concept="1yVyf7" id="70OdufORcog" role="2OqNvi" />
              </node>
              <node concept="3clFbT" id="70OdufORcoh" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4HqBHuNzqyI" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="4HqBHuNzqyJ" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4HqBHuNzqyK" role="13h7CS">
      <property role="TrG5h" value="merge" />
      <node concept="3Tm1VV" id="4HqBHuNzqyL" role="1B3o_S" />
      <node concept="3cqZAl" id="4HqBHuNzqyM" role="3clF45" />
      <node concept="3clFbS" id="4HqBHuNzqyN" role="3clF47">
        <node concept="3clFbJ" id="4HqBHuNzqyO" role="3cqZAp">
          <node concept="3clFbS" id="4HqBHuNzqyP" role="3clFbx">
            <node concept="3cpWs6" id="4HqBHuNzqyQ" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="4HqBHuNzqyR" role="3clFbw">
            <node concept="2OqwBi" id="4HqBHuNzqyS" role="3fr31v">
              <node concept="2OqwBi" id="4HqBHuNzqyT" role="2Oq$k0">
                <node concept="13iPFW" id="4HqBHuNzqyU" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcok" role="2OqNvi">
                  <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
                </node>
              </node>
              <node concept="3JPx81" id="4HqBHuNzqyW" role="2OqNvi">
                <node concept="37vLTw" id="4HqBHuNzqyX" role="25WWJ7">
                  <ref role="3cqZAo" node="4HqBHuNzqzF" resolve="position" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4HqBHuNzqyY" role="3cqZAp" />
        <node concept="3cpWs8" id="4HqBHuNzqyZ" role="3cqZAp">
          <node concept="3cpWsn" id="4HqBHuNzqz0" role="3cpWs9">
            <property role="TrG5h" value="currentPosition" />
            <node concept="3Tqbb2" id="4HqBHuNzqz1" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
            </node>
            <node concept="37vLTw" id="4HqBHuNzqz2" role="33vP2m">
              <ref role="3cqZAo" node="4HqBHuNzqzF" resolve="position" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HqBHuNzqz3" role="3cqZAp">
          <node concept="2OqwBi" id="4HqBHuNzqz4" role="3clFbG">
            <node concept="2es0OD" id="4HqBHuNzqz8" role="2OqNvi">
              <node concept="1bVj0M" id="4HqBHuNzqz9" role="23t8la">
                <node concept="3clFbS" id="4HqBHuNzqza" role="1bW5cS">
                  <node concept="3clFbJ" id="1v077Wg0s9x" role="3cqZAp">
                    <node concept="3clFbS" id="1v077Wg0s9z" role="3clFbx">
                      <node concept="3clFbF" id="1v077Wg0sha" role="3cqZAp">
                        <node concept="2OqwBi" id="1v077Wg0sqU" role="3clFbG">
                          <node concept="37vLTw" id="1v077Wg0sh8" role="2Oq$k0">
                            <ref role="3cqZAo" node="4HqBHuNzqz0" resolve="currentPosition" />
                          </node>
                          <node concept="HtX7F" id="1v077Wg0sCw" role="2OqNvi">
                            <node concept="37vLTw" id="1v077Wg0sIS" role="HtX7I">
                              <ref role="3cqZAo" node="5W7E4fV0W$7" resolve="element" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1v077Wg0s9L" role="3clFbw">
                      <ref role="3cqZAo" node="1v077Wg0rIi" resolve="inFrontOfPosition" />
                    </node>
                    <node concept="9aQIb" id="1v077Wg0sMD" role="9aQIa">
                      <node concept="3clFbS" id="1v077Wg0sME" role="9aQI4">
                        <node concept="3clFbF" id="4HqBHuNzqzb" role="3cqZAp">
                          <node concept="37vLTI" id="4HqBHuNzqzc" role="3clFbG">
                            <node concept="37vLTw" id="4HqBHuNzqzd" role="37vLTJ">
                              <ref role="3cqZAo" node="4HqBHuNzqz0" resolve="currentPosition" />
                            </node>
                            <node concept="2OqwBi" id="4HqBHuNzqze" role="37vLTx">
                              <node concept="37vLTw" id="4HqBHuNzqzf" role="2Oq$k0">
                                <ref role="3cqZAo" node="4HqBHuNzqz0" resolve="currentPosition" />
                              </node>
                              <node concept="HtI8k" id="4HqBHuNzqzg" role="2OqNvi">
                                <node concept="37vLTw" id="4HqBHuNzqzh" role="HtI8F">
                                  <ref role="3cqZAo" node="5W7E4fV0W$7" resolve="element" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0W$7" role="1bW2Oz">
                  <property role="TrG5h" value="element" />
                  <node concept="2jxLKc" id="5W7E4fV0W$8" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4HqBHuNzqz5" role="2Oq$k0">
              <node concept="37vLTw" id="4HqBHuNzqz6" role="2Oq$k0">
                <ref role="3cqZAo" node="4HqBHuNzqzD" resolve="other" />
              </node>
              <node concept="3zqWPK" id="70OdufORcom" role="2OqNvi">
                <ref role="37wK5l" node="250QDwq53RO" resolve="getNonEmptyTextualElements" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4HqBHuNzqzk" role="3cqZAp">
          <node concept="3clFbS" id="4HqBHuNzqzl" role="3clFbx">
            <node concept="3clFbF" id="4HqBHuNzqzm" role="3cqZAp">
              <node concept="2OqwBi" id="4HqBHuNzqzn" role="3clFbG">
                <node concept="37vLTw" id="4HqBHuNzqzo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HqBHuNzqzF" resolve="position" />
                </node>
                <node concept="3YRAZt" id="4HqBHuNzqzp" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="4HqBHuNzqzq" role="3clFbw">
            <node concept="2OqwBi" id="4HqBHuNzqzr" role="3uHU7w">
              <node concept="2OqwBi" id="4HqBHuNzqzs" role="2Oq$k0">
                <node concept="2OqwBi" id="4HqBHuNzqzt" role="2Oq$k0">
                  <node concept="1PxgMI" id="4HqBHuNzqzu" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="4HqBHuNzrwy" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                    </node>
                    <node concept="37vLTw" id="4HqBHuNzqzw" role="1m5AlR">
                      <ref role="3cqZAo" node="4HqBHuNzqzF" resolve="position" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1v077Wg0rF0" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                  </node>
                </node>
                <node concept="17S1cR" id="4HqBHuNzqzy" role="2OqNvi" />
              </node>
              <node concept="17RlXB" id="4HqBHuNzqzz" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="7r4EKYUyuaL" role="3uHU7B">
              <node concept="2OqwBi" id="7r4EKYUyuaN" role="3fr31v">
                <node concept="37vLTw" id="7r4EKYUyuaO" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HqBHuNzqzD" resolve="other" />
                </node>
                <node concept="3zqWPK" id="70OdufORcoo" role="2OqNvi">
                  <ref role="37wK5l" node="7r4EKYUymRW" resolve="isEmptyParagraph" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4HqBHuNzqzD" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3Tqbb2" id="4HqBHuNzqzE" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="37vLTG" id="4HqBHuNzqzF" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="3Tqbb2" id="4HqBHuNzqzG" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
      <node concept="37vLTG" id="1v077Wg0rIi" role="3clF46">
        <property role="TrG5h" value="inFrontOfPosition" />
        <node concept="10P_77" id="1v077Wg0rM6" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="4HqBHuN_RSC" role="13h7CS">
      <property role="TrG5h" value="split" />
      <node concept="3Tm1VV" id="4HqBHuN_RSD" role="1B3o_S" />
      <node concept="3Tqbb2" id="4HqBHuN_RSE" role="3clF45">
        <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
      <node concept="3clFbS" id="4HqBHuN_RSF" role="3clF47">
        <node concept="3cpWs8" id="4HqBHuN_RSG" role="3cqZAp">
          <node concept="3cpWsn" id="4HqBHuN_RSH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="4HqBHuN_RSI" role="1tU5fm">
              <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
            </node>
            <node concept="2OqwBi" id="2HIX00Nx1Jd" role="33vP2m">
              <node concept="2OqwBi" id="2HIX00NwYmj" role="2Oq$k0">
                <node concept="13iPFW" id="2HIX00NwWeI" role="2Oq$k0" />
                <node concept="2yIwOk" id="2HIX00NwYYk" role="2OqNvi" />
              </node>
              <node concept="q_SaT" id="2HIX00Nx3nK" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6k9EbaQVxXc" role="3cqZAp">
          <node concept="3cpWsn" id="6k9EbaQVxXd" role="3cpWs9">
            <property role="TrG5h" value="followingElements" />
            <node concept="A3Dl8" id="6k9EbaQVwjI" role="1tU5fm">
              <node concept="3Tqbb2" id="6k9EbaQVwjL" role="A3Ik2">
                <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
              </node>
            </node>
            <node concept="2OqwBi" id="6k9EbaQVxXe" role="33vP2m">
              <node concept="2OqwBi" id="6k9EbaQVxXf" role="2Oq$k0">
                <node concept="37vLTw" id="6k9EbaQVxXg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HqBHuN_RTi" resolve="afterPosition" />
                </node>
                <node concept="2TlYAL" id="6k9EbaQVxXh" role="2OqNvi" />
              </node>
              <node concept="v3k3i" id="6k9EbaQVxXi" role="2OqNvi">
                <node concept="chp4Y" id="6k9EbaQVxXj" role="v3oSu">
                  <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4HqBHuN_RSM" role="3cqZAp">
          <node concept="3clFbS" id="4HqBHuN_RSN" role="3clFbx">
            <node concept="3clFbF" id="250QDwq52Rw" role="3cqZAp">
              <node concept="2OqwBi" id="250QDwq53kO" role="3clFbG">
                <node concept="37vLTw" id="250QDwq52Ru" role="2Oq$k0">
                  <ref role="3cqZAo" node="4HqBHuN_RSH" resolve="result" />
                </node>
                <node concept="3zqWPK" id="70OdufORcoq" role="2OqNvi">
                  <ref role="37wK5l" node="1v077Wg2A59" resolve="initialize" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4HqBHuN_RSU" role="3cqZAp">
              <node concept="37vLTw" id="4HqBHuN_RSV" role="3cqZAk">
                <ref role="3cqZAo" node="4HqBHuN_RSH" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6k9EbaQVFHq" role="3clFbw">
            <node concept="2OqwBi" id="6k9EbaQVFYt" role="3uHU7w">
              <node concept="37vLTw" id="6k9EbaQVFJt" role="2Oq$k0">
                <ref role="3cqZAo" node="6k9EbaQVxXd" resolve="followingElements" />
              </node>
              <node concept="1v1jN8" id="6k9EbaQVGgI" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="4HqBHuN_RSW" role="3uHU7B">
              <node concept="2OqwBi" id="4HqBHuN_RSX" role="3fr31v">
                <node concept="2OqwBi" id="4HqBHuN_RSY" role="2Oq$k0">
                  <node concept="13iPFW" id="4HqBHuN_RSZ" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcos" role="2OqNvi">
                    <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
                  </node>
                </node>
                <node concept="3JPx81" id="4HqBHuN_RT1" role="2OqNvi">
                  <node concept="37vLTw" id="4HqBHuN_RT2" role="25WWJ7">
                    <ref role="3cqZAo" node="4HqBHuN_RTi" resolve="afterPosition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HqBHuN_RT4" role="3cqZAp">
          <node concept="2OqwBi" id="4HqBHuN_RT6" role="3clFbG">
            <node concept="37vLTw" id="4HqBHuN_RT7" role="2Oq$k0">
              <ref role="3cqZAo" node="4HqBHuN_RSH" resolve="result" />
            </node>
            <node concept="3zqWPK" id="70OdufORcou" role="2OqNvi">
              <ref role="37wK5l" node="1uSfHaoPgT1" resolve="addAllTextualElements" />
              <node concept="37vLTw" id="70OdufORcow" role="37wK5m">
                <ref role="3cqZAo" node="6k9EbaQVxXd" resolve="followingElements" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4HqBHuN_RTg" role="3cqZAp">
          <node concept="37vLTw" id="4HqBHuN_RTh" role="3cqZAk">
            <ref role="3cqZAo" node="4HqBHuN_RSH" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4HqBHuN_RTi" role="3clF46">
        <property role="TrG5h" value="afterPosition" />
        <node concept="3Tqbb2" id="4HqBHuN_RTj" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6n6K0Pj71DU" role="13h7CS">
      <property role="TrG5h" value="initializeFromLine" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="6n6K0Pj72pS" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="6n6K0Pj72q6" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6n6K0Pj71DV" role="1B3o_S" />
      <node concept="3cqZAl" id="6n6K0Pj72p_" role="3clF45" />
      <node concept="3clFbS" id="6n6K0Pj71DX" role="3clF47">
        <node concept="3clFbF" id="250QDwq3EUq" role="3cqZAp">
          <node concept="2OqwBi" id="250QDwq3FdT" role="3clFbG">
            <node concept="13iPFW" id="250QDwq3EUo" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcox" role="2OqNvi">
              <ref role="37wK5l" node="1v077Wg2A59" resolve="initialize" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6n6K0Pj72qC" role="3cqZAp">
          <node concept="2OqwBi" id="6n6K0Pj743R" role="3clFbG">
            <node concept="2OqwBi" id="6n6K0Pj72xN" role="2Oq$k0">
              <node concept="37vLTw" id="6n6K0Pj72qB" role="2Oq$k0">
                <ref role="3cqZAo" node="6n6K0Pj72pS" resolve="l" />
              </node>
              <node concept="3Tsc0h" id="6n6K0Pj72Gq" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
              </node>
            </node>
            <node concept="2es0OD" id="6n6K0Pj76dr" role="2OqNvi">
              <node concept="1bVj0M" id="6n6K0Pj76dt" role="23t8la">
                <node concept="3clFbS" id="6n6K0Pj76du" role="1bW5cS">
                  <node concept="3clFbJ" id="6n6K0Pj76h3" role="3cqZAp">
                    <node concept="2OqwBi" id="6n6K0Pj76us" role="3clFbw">
                      <node concept="37vLTw" id="6n6K0Pj76jp" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                      </node>
                      <node concept="1mIQ4w" id="6n6K0Pj76Ix" role="2OqNvi">
                        <node concept="chp4Y" id="6n6K0Pj76MP" role="cj9EA">
                          <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6n6K0Pj76h5" role="3clFbx">
                      <node concept="3cpWs8" id="4Q3cwBHG1y$" role="3cqZAp">
                        <node concept="3cpWsn" id="4Q3cwBHG1y_" role="3cpWs9">
                          <property role="TrG5h" value="url" />
                          <node concept="17QB3L" id="4Q3cwBHG1uo" role="1tU5fm" />
                          <node concept="2OqwBi" id="4Q3cwBHG1yA" role="33vP2m">
                            <node concept="1PxgMI" id="4Q3cwBHG1yB" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="4Q3cwBHG1yC" role="3oSUPX">
                                <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                              </node>
                              <node concept="37vLTw" id="4Q3cwBHG1yD" role="1m5AlR">
                                <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4Q3cwBHG1yE" role="2OqNvi">
                              <ref role="3TsBF5" to="zqge:5vhYBWEWti5" resolve="url" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4Q3cwBHFVch" role="3cqZAp">
                        <node concept="3clFbS" id="4Q3cwBHFVcj" role="3clFbx">
                          <node concept="3cpWs8" id="1iNeTGf7yQZ" role="3cqZAp">
                            <node concept="3cpWsn" id="1iNeTGf7yR0" role="3cpWs9">
                              <property role="TrG5h" value="u" />
                              <node concept="3Tqbb2" id="1iNeTGf7xYA" role="1tU5fm">
                                <ref role="ehGHo" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
                              </node>
                              <node concept="2ShNRf" id="1iNeTGf7yR1" role="33vP2m">
                                <node concept="3zrR0B" id="1iNeTGf7yR2" role="2ShVmc">
                                  <node concept="3Tqbb2" id="1iNeTGf7yR3" role="3zrR0E">
                                    <ref role="ehGHo" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iNeTGf7v1e" role="3cqZAp">
                            <node concept="37vLTI" id="1iNeTGf7_MC" role="3clFbG">
                              <node concept="37vLTw" id="1iNeTGf7B7j" role="37vLTx">
                                <ref role="3cqZAo" node="4Q3cwBHG1y_" resolve="url" />
                              </node>
                              <node concept="2OqwBi" id="1iNeTGf7zMx" role="37vLTJ">
                                <node concept="37vLTw" id="1iNeTGf7yR4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1iNeTGf7yR0" resolve="u" />
                                </node>
                                <node concept="3TrcHB" id="1iNeTGf7$X1" role="2OqNvi">
                                  <ref role="3TsBF5" to="zqge:7evo$BZb0Rm" resolve="address" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iNeTGf7DjZ" role="3cqZAp">
                            <node concept="37vLTI" id="1iNeTGf7FH7" role="3clFbG">
                              <node concept="2ShNRf" id="1iNeTGf7Hw6" role="37vLTx">
                                <node concept="3zrR0B" id="1iNeTGf7HXm" role="2ShVmc">
                                  <node concept="3Tqbb2" id="1iNeTGf7HXo" role="3zrR0E">
                                    <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1iNeTGf7DLS" role="37vLTJ">
                                <node concept="37vLTw" id="1iNeTGf7DjX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1iNeTGf7yR0" resolve="u" />
                                </node>
                                <node concept="3TrEf2" id="1iNeTGf7Epp" role="2OqNvi">
                                  <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iNeTGf8ve9" role="3cqZAp">
                            <node concept="2OqwBi" id="1iNeTGf8wMA" role="3clFbG">
                              <node concept="2OqwBi" id="1iNeTGf8vHW" role="2Oq$k0">
                                <node concept="37vLTw" id="1iNeTGf8ve7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1iNeTGf7yR0" resolve="u" />
                                </node>
                                <node concept="3TrEf2" id="1iNeTGf8wbh" role="2OqNvi">
                                  <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORcoz" role="2OqNvi">
                                <ref role="37wK5l" node="1iNeTGf7YHg" resolve="copyLettersFromWord" />
                                <node concept="1PxgMI" id="70OdufORco_" role="37wK5m">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="70OdufORcoA" role="3oSUPX">
                                    <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                                  </node>
                                  <node concept="37vLTw" id="70OdufORcoB" role="1m5AlR">
                                    <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iNeTGf7Kzm" role="3cqZAp">
                            <node concept="2OqwBi" id="1iNeTGf7L6r" role="3clFbG">
                              <node concept="13iPFW" id="1iNeTGf7Kzk" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORcoC" role="2OqNvi">
                                <ref role="37wK5l" node="1uSfHaoOOLl" resolve="addTextualElement" />
                                <node concept="37vLTw" id="70OdufORcoE" role="37wK5m">
                                  <ref role="3cqZAo" node="1iNeTGf7yR0" resolve="u" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4Q3cwBHG2aa" role="3clFbw">
                          <node concept="37vLTw" id="4Q3cwBHG1yF" role="2Oq$k0">
                            <ref role="3cqZAo" node="4Q3cwBHG1y_" resolve="url" />
                          </node>
                          <node concept="17RvpY" id="4Q3cwBHG2Qa" role="2OqNvi" />
                        </node>
                        <node concept="9aQIb" id="1iNeTGf8$oH" role="9aQIa">
                          <node concept="3clFbS" id="1iNeTGf8$oI" role="9aQI4">
                            <node concept="3clFbF" id="1iNeTGf7YHq" role="3cqZAp">
                              <node concept="BsUDl" id="1iNeTGf7YHp" role="3clFbG">
                                <ref role="37wK5l" node="1iNeTGf7YHg" resolve="copyLettersFromWord" />
                                <node concept="1PxgMI" id="1iNeTGf8cP_" role="37wK5m">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="1iNeTGf8d4u" role="3oSUPX">
                                    <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
                                  </node>
                                  <node concept="37vLTw" id="1iNeTGf7YHo" role="1m5AlR">
                                    <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6k9EbaQS0I_" role="3cqZAp">
                        <node concept="3clFbS" id="6k9EbaQS0IB" role="3clFbx">
                          <node concept="3cpWs8" id="6n6K0Pj7$PW" role="3cqZAp">
                            <node concept="3cpWsn" id="6n6K0Pj7$PX" role="3cpWs9">
                              <property role="TrG5h" value="l" />
                              <node concept="3Tqbb2" id="6n6K0Pj7$Eb" role="1tU5fm">
                                <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                              </node>
                              <node concept="2ShNRf" id="1iNeTGf7QzB" role="33vP2m">
                                <node concept="3zrR0B" id="1iNeTGf7QTb" role="2ShVmc">
                                  <node concept="3Tqbb2" id="1iNeTGf7QTd" role="3zrR0E">
                                    <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6n6K0Pj7tXf" role="3cqZAp">
                            <node concept="37vLTI" id="6n6K0Pj7AGq" role="3clFbG">
                              <node concept="Xl_RD" id="6n6K0Pj7BjO" role="37vLTx">
                                <property role="Xl_RC" value=" " />
                              </node>
                              <node concept="2OqwBi" id="6n6K0Pj7_Wf" role="37vLTJ">
                                <node concept="37vLTw" id="6n6K0Pj7$Q3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6n6K0Pj7$PX" resolve="l" />
                                </node>
                                <node concept="3TrcHB" id="6n6K0Pj7A90" role="2OqNvi">
                                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1iNeTGf7SLa" role="3cqZAp">
                            <node concept="2OqwBi" id="1iNeTGf7T8Z" role="3clFbG">
                              <node concept="13iPFW" id="1iNeTGf7SL8" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORcoF" role="2OqNvi">
                                <ref role="37wK5l" node="1uSfHaoOOLl" resolve="addTextualElement" />
                                <node concept="37vLTw" id="70OdufORcoH" role="37wK5m">
                                  <ref role="3cqZAo" node="6n6K0Pj7$PX" resolve="l" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6k9EbaQS7Tm" role="3clFbw">
                          <node concept="2OqwBi" id="6k9EbaQS49V" role="2Oq$k0">
                            <node concept="37vLTw" id="6k9EbaQS2ov" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                            </node>
                            <node concept="YCak7" id="6k9EbaQS68A" role="2OqNvi" />
                          </node>
                          <node concept="3x8VRR" id="6k9EbaQS9F6" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="6n6K0Pj7Cj9" role="3eNLev">
                      <node concept="2OqwBi" id="6n6K0Pj7E13" role="3eO9$A">
                        <node concept="37vLTw" id="6n6K0Pj7D6m" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="6n6K0Pj7Ep0" role="2OqNvi">
                          <node concept="chp4Y" id="6n6K0Pj7EDz" role="cj9EA">
                            <ref role="cht4Q" to="zqge:2HViukQ0LZD" resolve="NodeWrapperElement" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6n6K0Pj7Cjb" role="3eOfB_">
                        <node concept="3cpWs8" id="6n6K0Pj7GMT" role="3cqZAp">
                          <node concept="3cpWsn" id="6n6K0Pj7GMU" role="3cpWs9">
                            <property role="TrG5h" value="w" />
                            <node concept="3Tqbb2" id="6n6K0Pj7GJx" role="1tU5fm">
                              <ref role="ehGHo" to="zqge:2MpFNjy3sHf" resolve="NodeWrapperTextualElement" />
                            </node>
                            <node concept="2ShNRf" id="6n6K0Pj7GMV" role="33vP2m">
                              <node concept="3zrR0B" id="6n6K0Pj7GMW" role="2ShVmc">
                                <node concept="3Tqbb2" id="6n6K0Pj7GMX" role="3zrR0E">
                                  <ref role="ehGHo" to="zqge:2MpFNjy3sHf" resolve="NodeWrapperTextualElement" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6n6K0Pj7FvC" role="3cqZAp">
                          <node concept="37vLTI" id="6n6K0Pj7JqU" role="3clFbG">
                            <node concept="2OqwBi" id="6n6K0Pj7Mnf" role="37vLTx">
                              <node concept="1PxgMI" id="6n6K0Pj7L9L" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6n6K0Pj7M1y" role="3oSUPX">
                                  <ref role="cht4Q" to="zqge:2HViukQ0LZD" resolve="NodeWrapperElement" />
                                </node>
                                <node concept="37vLTw" id="6n6K0Pj7Kke" role="1m5AlR">
                                  <ref role="3cqZAo" node="5W7E4fV0W$9" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="6n6K0Pj7NvP" role="2OqNvi">
                                <ref role="3Tt5mk" to="zqge:2HViukQ0LZE" resolve="node" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6n6K0Pj7HZ4" role="37vLTJ">
                              <node concept="37vLTw" id="6n6K0Pj7GMY" role="2Oq$k0">
                                <ref role="3cqZAo" node="6n6K0Pj7GMU" resolve="w" />
                              </node>
                              <node concept="3TrEf2" id="6n6K0Pj7J57" role="2OqNvi">
                                <ref role="3Tt5mk" to="zqge:2MpFNjy3sHg" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6n6K0Pj9G4T" role="3cqZAp">
                          <node concept="2OqwBi" id="6n6K0Pj9GSs" role="3clFbG">
                            <node concept="13iPFW" id="6n6K0Pj9G4R" role="2Oq$k0" />
                            <node concept="3zqWPK" id="70OdufORcoI" role="2OqNvi">
                              <ref role="37wK5l" node="1uSfHaoOOLl" resolve="addTextualElement" />
                              <node concept="37vLTw" id="70OdufORcoK" role="37wK5m">
                                <ref role="3cqZAo" node="6n6K0Pj7GMU" resolve="w" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0W$9" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0W$a" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce6bwW" role="13h7CS">
      <property role="TrG5h" value="createLineInstance" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="7q4Ywce6bwX" role="1B3o_S" />
      <node concept="3Tqbb2" id="7q4Ywce6i4A" role="3clF45">
        <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
      <node concept="3clFbS" id="7q4Ywce6bwZ" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6i9m" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6i9k" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6ifa" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6ifc" role="3zrR0E">
                <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="7evo$BZbvad" role="13h7CS">
      <property role="TrG5h" value="insertTextualElementAtCaret" />
      <node concept="37vLTG" id="7evo$BZbvae" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="7evo$BZbvaf" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7evo$BZbvag" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="7evo$BZbvah" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7evo$BZbvai" role="1B3o_S" />
      <node concept="3cqZAl" id="7evo$BZbvaj" role="3clF45" />
      <node concept="3clFbS" id="7evo$BZbvak" role="3clF47">
        <node concept="3cpWs8" id="7evo$BZbx3L" role="3cqZAp">
          <node concept="3cpWsn" id="7evo$BZbx3M" role="3cpWs9">
            <property role="TrG5h" value="selectedNode" />
            <node concept="3Tqbb2" id="7evo$BZbx8_" role="1tU5fm" />
            <node concept="2OqwBi" id="7evo$BZbx3N" role="33vP2m">
              <node concept="37vLTw" id="7evo$BZbx3O" role="2Oq$k0">
                <ref role="3cqZAo" node="7evo$BZbvae" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="7evo$BZbx3P" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedNode()" resolve="getSelectedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7evo$BZbxCH" role="3cqZAp">
          <node concept="3cpWsn" id="7evo$BZbxCI" role="3cpWs9">
            <property role="TrG5h" value="currentElement" />
            <node concept="3Tqbb2" id="7evo$BZbx_s" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
            </node>
            <node concept="2OqwBi" id="7evo$BZbxCJ" role="33vP2m">
              <node concept="37vLTw" id="7evo$BZbxCK" role="2Oq$k0">
                <ref role="3cqZAo" node="7evo$BZbx3M" resolve="selectedNode" />
              </node>
              <node concept="2Xjw5R" id="7evo$BZbxCL" role="2OqNvi">
                <node concept="1xMEDy" id="7evo$BZbxCM" role="1xVPHs">
                  <node concept="chp4Y" id="7evo$BZbxCN" role="ri$Ld">
                    <ref role="cht4Q" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
                  </node>
                </node>
                <node concept="1xIGOp" id="7og5IP9Bolz" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7evo$BZbxXI" role="3cqZAp">
          <node concept="3clFbS" id="7evo$BZbxXK" role="3clFbx">
            <node concept="3clFbF" id="7evo$BZbyAD" role="3cqZAp">
              <node concept="2OqwBi" id="7evo$BZbyIp" role="3clFbG">
                <node concept="37vLTw" id="7evo$BZbyAB" role="2Oq$k0">
                  <ref role="3cqZAo" node="7evo$BZbxCI" resolve="currentElement" />
                </node>
                <node concept="1P9Npp" id="7evo$BZbzfa" role="2OqNvi">
                  <node concept="37vLTw" id="7evo$BZbzjy" role="1P9ThW">
                    <ref role="3cqZAo" node="7evo$BZbvag" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7evo$BZbycc" role="3clFbw">
            <node concept="37vLTw" id="7evo$BZby2K" role="2Oq$k0">
              <ref role="3cqZAo" node="7evo$BZbxCI" resolve="currentElement" />
            </node>
            <node concept="1mIQ4w" id="7evo$BZbyov" role="2OqNvi">
              <node concept="chp4Y" id="7evo$BZbyv6" role="cj9EA">
                <ref role="cht4Q" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7evo$BZbznr" role="9aQIa">
            <node concept="3clFbS" id="7evo$BZbzns" role="9aQI4">
              <node concept="3cpWs8" id="7evo$BZbval" role="3cqZAp">
                <node concept="3cpWsn" id="7evo$BZbvam" role="3cpWs9">
                  <property role="TrG5h" value="pos" />
                  <node concept="10Oyi0" id="7evo$BZbvan" role="1tU5fm" />
                  <node concept="3K4zz7" id="7evo$BZb_8V" role="33vP2m">
                    <node concept="3cmrfG" id="7evo$BZb_dm" role="3K4GZi">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="7evo$BZb$n5" role="3K4Cdx">
                      <node concept="37vLTw" id="7evo$BZb$cm" role="2Oq$k0">
                        <ref role="3cqZAo" node="7evo$BZbxCI" resolve="currentElement" />
                      </node>
                      <node concept="1mIQ4w" id="7evo$BZb$B5" role="2OqNvi">
                        <node concept="chp4Y" id="7evo$BZb$Jx" role="cj9EA">
                          <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7evo$BZbvao" role="3K4E3e">
                      <node concept="1eOMI4" id="7evo$BZbvap" role="2Oq$k0">
                        <node concept="10QFUN" id="7evo$BZbvaq" role="1eOMHV">
                          <node concept="3uibUv" id="7evo$BZbvar" role="10QFUM">
                            <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                          </node>
                          <node concept="1eOMI4" id="7evo$BZbzyA" role="10QFUP">
                            <node concept="2OqwBi" id="7evo$BZbzyz" role="1eOMHV">
                              <node concept="37vLTw" id="7evo$BZbzy$" role="2Oq$k0">
                                <ref role="3cqZAo" node="7evo$BZbvae" resolve="editorContext" />
                              </node>
                              <node concept="liA8E" id="7evo$BZbzy_" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7evo$BZbvav" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell_Label.getCaretPosition()" resolve="getCaretPosition" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7evo$BZbvaw" role="3cqZAp">
                <node concept="3clFbS" id="7evo$BZbvax" role="3clFbx">
                  <node concept="3clFbF" id="7evo$BZbvay" role="3cqZAp">
                    <node concept="2OqwBi" id="7evo$BZbvaz" role="3clFbG">
                      <node concept="37vLTw" id="7evo$BZbzT$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7evo$BZbxCI" resolve="currentElement" />
                      </node>
                      <node concept="HtI8k" id="7evo$BZbva_" role="2OqNvi">
                        <node concept="37vLTw" id="7evo$BZbvaA" role="HtI8F">
                          <ref role="3cqZAo" node="7evo$BZbvag" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="7evo$BZbvaB" role="3clFbw">
                  <node concept="3cmrfG" id="7evo$BZbvaC" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="7evo$BZbvaD" role="3uHU7B">
                    <ref role="3cqZAo" node="7evo$BZbvam" resolve="pos" />
                  </node>
                </node>
                <node concept="9aQIb" id="7evo$BZbvaE" role="9aQIa">
                  <node concept="3clFbS" id="7evo$BZbvaF" role="9aQI4">
                    <node concept="3clFbF" id="7evo$BZbvaG" role="3cqZAp">
                      <node concept="2OqwBi" id="7evo$BZbvaH" role="3clFbG">
                        <node concept="37vLTw" id="7evo$BZbzZK" role="2Oq$k0">
                          <ref role="3cqZAo" node="7evo$BZbxCI" resolve="currentElement" />
                        </node>
                        <node concept="HtX7F" id="7evo$BZbvaJ" role="2OqNvi">
                          <node concept="37vLTw" id="7evo$BZbvaK" role="HtX7I">
                            <ref role="3cqZAo" node="7evo$BZbvag" resolve="element" />
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
    <node concept="13i0hz" id="fcFkhVLuVF" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="fcFkhVLuVG" role="1B3o_S" />
      <node concept="17QB3L" id="fcFkhVLuVH" role="3clF45" />
      <node concept="3clFbS" id="fcFkhVLuVI" role="3clF47">
        <node concept="3clFbF" id="fcFkhVLvlV" role="3cqZAp">
          <node concept="37vLTw" id="fcFkhVLvlU" role="3clFbG">
            <ref role="3cqZAo" node="fcFkhVLvlg" resolve="text" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="fcFkhVLvlg" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="fcFkhVLvlf" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="1iNeTGeVhLf" role="13h7CS">
      <property role="TrG5h" value="representAsText" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="1iNeTGeVhLg" role="1B3o_S" />
      <node concept="17QB3L" id="1iNeTGeVqjC" role="3clF45" />
      <node concept="3clFbS" id="1iNeTGeVhLi" role="3clF47">
        <node concept="3cpWs8" id="1iNeTGeVwUX" role="3cqZAp">
          <node concept="3cpWsn" id="1iNeTGeVwUY" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="1iNeTGeVwUM" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="1iNeTGeVwUZ" role="33vP2m">
              <node concept="1pGfFk" id="1iNeTGeVwV0" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1iNeTGeVwWo" role="3cqZAp">
          <node concept="3clFbS" id="1iNeTGeVwWq" role="2LFqv$">
            <node concept="3clFbF" id="1iNeTGeVAkM" role="3cqZAp">
              <node concept="2OqwBi" id="1iNeTGeVAGa" role="3clFbG">
                <node concept="37vLTw" id="1iNeTGeVAkK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iNeTGeVwUY" resolve="builder" />
                </node>
                <node concept="liA8E" id="1iNeTGeVBge" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="2OqwBi" id="1iNeTGeVBwE" role="37wK5m">
                    <node concept="37vLTw" id="1iNeTGeVBgO" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iNeTGeVwWr" resolve="l" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORcoL" role="2OqNvi">
                      <ref role="37wK5l" node="69wk_bF5sg9" resolve="getTextualRepresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1iNeTGeVwWr" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3Tqbb2" id="1iNeTGeVyV$" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
            </node>
          </node>
          <node concept="2OqwBi" id="1iNeTGeVxpj" role="1DdaDG">
            <node concept="13iPFW" id="1iNeTGeVx5t" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcoN" role="2OqNvi">
              <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iNeTGeVvGB" role="3cqZAp">
          <node concept="BsUDl" id="1iNeTGeVvGA" role="3clFbG">
            <ref role="37wK5l" node="fcFkhVLuVF" resolve="wrapTextForClipboard" />
            <node concept="2OqwBi" id="1iNeTGeVDCR" role="37wK5m">
              <node concept="37vLTw" id="1iNeTGeVDcw" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGeVwUY" resolve="builder" />
              </node>
              <node concept="liA8E" id="1iNeTGeVE7r" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4HqBHuNzqym" role="13h7CW">
      <node concept="3clFbS" id="4HqBHuNzqyn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1iNeTGf7YHg" role="13h7CS">
      <property role="TrG5h" value="copyLettersFromWord" />
      <node concept="3Tm6S6" id="1iNeTGf7YHh" role="1B3o_S" />
      <node concept="3cqZAl" id="1iNeTGf7YHi" role="3clF45" />
      <node concept="37vLTG" id="1iNeTGf7YH9" role="3clF46">
        <property role="TrG5h" value="word" />
        <node concept="3Tqbb2" id="1iNeTGf88bJ" role="1tU5fm">
          <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
        </node>
      </node>
      <node concept="3clFbS" id="1iNeTGf7YG8" role="3clF47">
        <node concept="3clFbF" id="1iNeTGf8sjI" role="3cqZAp">
          <node concept="BsUDl" id="1iNeTGf8sjG" role="3clFbG">
            <ref role="37wK5l" node="1iNeTGf8gbV" resolve="copyLettersFromString" />
            <node concept="2OqwBi" id="1iNeTGf8svC" role="37wK5m">
              <node concept="37vLTw" id="1iNeTGf8snF" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGf7YH9" resolve="word" />
              </node>
              <node concept="3TrcHB" id="1iNeTGf8sGu" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iNeTGf8sVX" role="37wK5m">
              <node concept="37vLTw" id="1iNeTGf8sLU" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGf7YH9" resolve="word" />
              </node>
              <node concept="3TrcHB" id="1iNeTGf8t9O" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:5vhYBWEWthY" resolve="bold" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iNeTGf8tlR" role="37wK5m">
              <node concept="37vLTw" id="1iNeTGf8tbP" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGf7YH9" resolve="word" />
              </node>
              <node concept="3TrcHB" id="1iNeTGf8t_d" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:5vhYBWEWti1" resolve="italic" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iNeTGf8tG2" role="37wK5m">
              <node concept="37vLTw" id="1iNeTGf8tCS" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGf7YH9" resolve="word" />
              </node>
              <node concept="3TrcHB" id="1iNeTGf8tVQ" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:5vhYBWEWtik" resolve="underlined" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1iNeTGf8gbV" role="13h7CS">
      <property role="TrG5h" value="copyLettersFromString" />
      <node concept="3Tm6S6" id="1iNeTGf8gbW" role="1B3o_S" />
      <node concept="3cqZAl" id="1iNeTGf8gbX" role="3clF45" />
      <node concept="37vLTG" id="1iNeTGf8gbY" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1iNeTGf8qVZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iNeTGf8rjs" role="3clF46">
        <property role="TrG5h" value="bold" />
        <node concept="10P_77" id="1iNeTGf8r_x" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iNeTGf8rAI" role="3clF46">
        <property role="TrG5h" value="italic" />
        <node concept="10P_77" id="1iNeTGf8rDv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1iNeTGf8rFy" role="3clF46">
        <property role="TrG5h" value="underlined" />
        <node concept="10P_77" id="1iNeTGf8rHU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1iNeTGf8gc0" role="3clF47">
        <node concept="3clFbJ" id="1iNeTGf8gc7" role="3cqZAp">
          <node concept="3clFbS" id="1iNeTGf8gc8" role="3clFbx">
            <node concept="3clFbF" id="1iNeTGf8gc9" role="3cqZAp">
              <node concept="2OqwBi" id="1iNeTGf8gca" role="3clFbG">
                <node concept="13iPFW" id="1iNeTGf8gcb" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcoP" role="2OqNvi">
                  <ref role="37wK5l" node="1v077Wg2A59" resolve="initialize" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1iNeTGf8gcd" role="3clFbw">
            <node concept="37vLTw" id="1iNeTGf8rbn" role="2Oq$k0">
              <ref role="3cqZAo" node="1iNeTGf8gbY" resolve="value" />
            </node>
            <node concept="17RlXB" id="1iNeTGf8gcf" role="2OqNvi" />
          </node>
        </node>
        <node concept="1Dw8fO" id="1iNeTGf8gcg" role="3cqZAp">
          <node concept="3clFbS" id="1iNeTGf8gch" role="2LFqv$">
            <node concept="3cpWs8" id="1iNeTGf8gci" role="3cqZAp">
              <node concept="3cpWsn" id="1iNeTGf8gcj" role="3cpWs9">
                <property role="TrG5h" value="letter" />
                <node concept="3Tqbb2" id="1iNeTGf8gck" role="1tU5fm">
                  <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                </node>
                <node concept="2ShNRf" id="1iNeTGf8gcl" role="33vP2m">
                  <node concept="3zrR0B" id="1iNeTGf8gcm" role="2ShVmc">
                    <node concept="3Tqbb2" id="1iNeTGf8gcn" role="3zrR0E">
                      <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iNeTGf8gco" role="3cqZAp">
              <node concept="37vLTI" id="1iNeTGf8gcp" role="3clFbG">
                <node concept="3cpWs3" id="1iNeTGf8gcq" role="37vLTx">
                  <node concept="Xl_RD" id="1iNeTGf8gcr" role="3uHU7B">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="2OqwBi" id="1iNeTGf8gcs" role="3uHU7w">
                    <node concept="liA8E" id="1iNeTGf8gct" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.charAt(int)" resolve="charAt" />
                      <node concept="37vLTw" id="1iNeTGf8gcu" role="37wK5m">
                        <ref role="3cqZAo" node="1iNeTGf8gd0" resolve="i" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1iNeTGf8rbm" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iNeTGf8gbY" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1iNeTGf8gcw" role="37vLTJ">
                  <node concept="37vLTw" id="1iNeTGf8gcx" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iNeTGf8gcj" resolve="letter" />
                  </node>
                  <node concept="3TrcHB" id="1iNeTGf8gcy" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iNeTGf8gcz" role="3cqZAp">
              <node concept="37vLTI" id="1iNeTGf8gc$" role="3clFbG">
                <node concept="37vLTw" id="1iNeTGf8rLl" role="37vLTx">
                  <ref role="3cqZAo" node="1iNeTGf8rjs" resolve="bold" />
                </node>
                <node concept="2OqwBi" id="1iNeTGf8gcC" role="37vLTJ">
                  <node concept="37vLTw" id="1iNeTGf8gcD" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iNeTGf8gcj" resolve="letter" />
                  </node>
                  <node concept="3TrcHB" id="1iNeTGf8gcE" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:7Y6hwefsRt0" resolve="bold" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iNeTGf8gcF" role="3cqZAp">
              <node concept="37vLTI" id="1iNeTGf8gcG" role="3clFbG">
                <node concept="37vLTw" id="1iNeTGf8rSR" role="37vLTx">
                  <ref role="3cqZAo" node="1iNeTGf8rAI" resolve="italic" />
                </node>
                <node concept="2OqwBi" id="1iNeTGf8gcK" role="37vLTJ">
                  <node concept="37vLTw" id="1iNeTGf8gcL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iNeTGf8gcj" resolve="letter" />
                  </node>
                  <node concept="3TrcHB" id="1iNeTGf8gcM" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:7Y6hwefsRt1" resolve="italic" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iNeTGf8gcN" role="3cqZAp">
              <node concept="37vLTI" id="1iNeTGf8gcO" role="3clFbG">
                <node concept="37vLTw" id="1iNeTGf8rY5" role="37vLTx">
                  <ref role="3cqZAo" node="1iNeTGf8rFy" resolve="underlined" />
                </node>
                <node concept="2OqwBi" id="1iNeTGf8gcS" role="37vLTJ">
                  <node concept="37vLTw" id="1iNeTGf8gcT" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iNeTGf8gcj" resolve="letter" />
                  </node>
                  <node concept="3TrcHB" id="1iNeTGf8gcU" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:7Y6hwefsRt2" resolve="underlined" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1iNeTGf8gcV" role="3cqZAp">
              <node concept="2OqwBi" id="1iNeTGf8gcW" role="3clFbG">
                <node concept="13iPFW" id="1iNeTGf8gcX" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcoR" role="2OqNvi">
                  <ref role="37wK5l" node="1uSfHaoOOLl" resolve="addTextualElement" />
                  <node concept="37vLTw" id="70OdufORcoT" role="37wK5m">
                    <ref role="3cqZAo" node="1iNeTGf8gcj" resolve="letter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1iNeTGf8gd0" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="1iNeTGf8gd1" role="1tU5fm" />
            <node concept="3cmrfG" id="1iNeTGf8gd2" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="1iNeTGf8gd3" role="1Dwp0S">
            <node concept="2OqwBi" id="1iNeTGf8gd4" role="3uHU7w">
              <node concept="liA8E" id="1iNeTGf8gd5" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
              <node concept="37vLTw" id="1iNeTGf8rbl" role="2Oq$k0">
                <ref role="3cqZAo" node="1iNeTGf8gbY" resolve="value" />
              </node>
            </node>
            <node concept="37vLTw" id="1iNeTGf8gd7" role="3uHU7B">
              <ref role="3cqZAo" node="1iNeTGf8gd0" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="1iNeTGf8gd8" role="1Dwrff">
            <node concept="37vLTw" id="1iNeTGf8gd9" role="2$L3a6">
              <ref role="3cqZAo" node="1iNeTGf8gd0" resolve="i" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2MpFNjy4v5B">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
    <node concept="13i0hz" id="2MpFNjy4v6O" role="13h7CS">
      <property role="TrG5h" value="insertTextualElementAtCaret" />
      <node concept="37vLTG" id="2MpFNjy4xQ9" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2MpFNjy4ygs" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2MpFNjy4vVI" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="2MpFNjy4w2M" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2MpFNjy3pNV" resolve="TextualElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2MpFNjy4v6P" role="1B3o_S" />
      <node concept="3cqZAl" id="2MpFNjy4v84" role="3clF45" />
      <node concept="3clFbS" id="2MpFNjy4v6R" role="3clF47">
        <node concept="3cpWs8" id="7Y6hwefmsjL" role="3cqZAp">
          <node concept="3cpWsn" id="7Y6hwefmsjM" role="3cpWs9">
            <property role="TrG5h" value="pos" />
            <node concept="10Oyi0" id="7Y6hwefrTQG" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y6hwefrOaE" role="33vP2m">
              <node concept="1eOMI4" id="7Y6hwefrMKa" role="2Oq$k0">
                <node concept="10QFUN" id="7Y6hwefrjlK" role="1eOMHV">
                  <node concept="3uibUv" id="7Y6hwefrJpz" role="10QFUM">
                    <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="2OqwBi" id="7Y6hwefmsjO" role="10QFUP">
                    <node concept="37vLTw" id="2MpFNjy4yla" role="2Oq$k0">
                      <ref role="3cqZAo" node="2MpFNjy4xQ9" resolve="editorContext" />
                    </node>
                    <node concept="liA8E" id="7Y6hwefrixs" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getSelectedCell()" resolve="getSelectedCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Y6hwefrQKC" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell_Label.getCaretPosition()" resolve="getCaretPosition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2MpFNjy42u6" role="3cqZAp">
          <node concept="3clFbS" id="2MpFNjy42u8" role="3clFbx">
            <node concept="3clFbF" id="2MpFNjy3T7V" role="3cqZAp">
              <node concept="2OqwBi" id="2MpFNjy3TfN" role="3clFbG">
                <node concept="13iPFW" id="2MpFNjy4vvm" role="2Oq$k0" />
                <node concept="HtI8k" id="2MpFNjy3T$w" role="2OqNvi">
                  <node concept="37vLTw" id="2MpFNjy4yu3" role="HtI8F">
                    <ref role="3cqZAo" node="2MpFNjy4vVI" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="2MpFNjy43XT" role="3clFbw">
            <node concept="3cmrfG" id="2MpFNjy43XX" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="2MpFNjy42vA" role="3uHU7B">
              <ref role="3cqZAo" node="7Y6hwefmsjM" resolve="pos" />
            </node>
          </node>
          <node concept="9aQIb" id="2MpFNjy449m" role="9aQIa">
            <node concept="3clFbS" id="2MpFNjy449n" role="9aQI4">
              <node concept="3clFbF" id="2MpFNjy44hr" role="3cqZAp">
                <node concept="2OqwBi" id="2MpFNjy44hs" role="3clFbG">
                  <node concept="13iPFW" id="2MpFNjy4vyT" role="2Oq$k0" />
                  <node concept="HtX7F" id="2MpFNjy44wH" role="2OqNvi">
                    <node concept="37vLTw" id="2MpFNjy4yx3" role="HtX7I">
                      <ref role="3cqZAo" node="2MpFNjy4vVI" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2MpFNjy4v5C" role="13h7CW">
      <node concept="3clFbS" id="2MpFNjy4v5D" role="2VODD2">
        <node concept="3clFbF" id="mvtCs7Mx52" role="3cqZAp">
          <node concept="37vLTI" id="mvtCs7MxI1" role="3clFbG">
            <node concept="Xl_RD" id="mvtCs7MxIj" role="37vLTx">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="mvtCs7MxcU" role="37vLTJ">
              <node concept="13iPFW" id="mvtCs7Mx51" role="2Oq$k0" />
              <node concept="3TrcHB" id="mvtCs7Mxp$" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="69wk_bF5sGx" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="69wk_bF5sg9" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="69wk_bF5sGy" role="1B3o_S" />
      <node concept="3clFbS" id="69wk_bF5sG_" role="3clF47">
        <node concept="3clFbF" id="69wk_bF5sP9" role="3cqZAp">
          <node concept="2OqwBi" id="69wk_bF5sYS" role="3clFbG">
            <node concept="13iPFW" id="69wk_bF5sP8" role="2Oq$k0" />
            <node concept="3TrcHB" id="69wk_bF5tbV" role="2OqNvi">
              <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="69wk_bF5sGA" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2MpFNjy3tEW">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:2MpFNjy3tyx" resolve="IHoldParagraphs" />
    <node concept="13i0hz" id="2MpFNjy3tMn" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getParagraphs" />
      <node concept="3Tm1VV" id="2MpFNjy3tMo" role="1B3o_S" />
      <node concept="2I9FWS" id="2MpFNjy3tOB" role="3clF45">
        <ref role="2I9WkF" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
      <node concept="3clFbS" id="2MpFNjy3tMq" role="3clF47" />
    </node>
    <node concept="13i0hz" id="fxHsktC$hi" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="addParagraph" />
      <node concept="3Tm1VV" id="fxHsktC$hj" role="1B3o_S" />
      <node concept="3cqZAl" id="fxHsktCEVn" role="3clF45" />
      <node concept="3clFbS" id="fxHsktC$hl" role="3clF47" />
      <node concept="37vLTG" id="fxHsktCF23" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="fxHsktCF22" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2MpFNjy3tEX" role="13h7CW">
      <node concept="3clFbS" id="2MpFNjy3tEY" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="69wk_bF5ttQ">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:1v077Wg3Chb" resolve="EmptyParagraphLetter" />
    <node concept="13hLZK" id="69wk_bF5ttR" role="13h7CW">
      <node concept="3clFbS" id="69wk_bF5ttS" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="69wk_bF5tw1" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="69wk_bF5sg9" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="69wk_bF5tw2" role="1B3o_S" />
      <node concept="3clFbS" id="69wk_bF5tw5" role="3clF47">
        <node concept="3clFbF" id="69wk_bF5tyk" role="3cqZAp">
          <node concept="Xl_RD" id="69wk_bF5tyj" role="3clFbG">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="69wk_bF5tw6" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="69wk_bF5tPt">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:2MpFNjy3sHf" resolve="NodeWrapperTextualElement" />
    <node concept="13hLZK" id="69wk_bF5tPu" role="13h7CW">
      <node concept="3clFbS" id="69wk_bF5tPv" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="69wk_bF5tPC" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="69wk_bF5sg9" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="69wk_bF5tPD" role="1B3o_S" />
      <node concept="3clFbS" id="69wk_bF5tPG" role="3clF47">
        <node concept="3SKdUt" id="69wk_bF5u7M" role="3cqZAp">
          <node concept="1PaTwC" id="69wk_bF5u7N" role="1aUNEU">
            <node concept="3oM_SD" id="69wk_bF5u7O" role="1PaTwD">
              <property role="3oM_SC" value="todo" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7P" role="1PaTwD">
              <property role="3oM_SC" value="maybe" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7Q" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7R" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7S" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7T" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7U" role="1PaTwD">
              <property role="3oM_SC" value="visualize" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7V" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7W" role="1PaTwD">
              <property role="3oM_SC" value="wrapped" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7X" role="1PaTwD">
              <property role="3oM_SC" value="node" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7Y" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u7Z" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="69wk_bF5u80" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="69wk_bF5u81" role="3cqZAp">
          <node concept="2OqwBi" id="69wk_bF5u82" role="3clFbG">
            <node concept="2OqwBi" id="69wk_bF5u83" role="2Oq$k0">
              <node concept="13iPFW" id="69wk_bF5u84" role="2Oq$k0" />
              <node concept="3TrEf2" id="69wk_bF5u85" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:2MpFNjy3sHg" resolve="node" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORcoU" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="69wk_bF5tPH" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4J8Jau$Oz0y">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:7evo$BZb0qh" resolve="UrlTextualElement" />
    <node concept="13hLZK" id="4J8Jau$Oz0z" role="13h7CW">
      <node concept="3clFbS" id="4J8Jau$Oz0$" role="2VODD2">
        <node concept="3clFbF" id="1iNeTGf0VZq" role="3cqZAp">
          <node concept="37vLTI" id="1iNeTGf0WA5" role="3clFbG">
            <node concept="2ShNRf" id="1iNeTGf0WCU" role="37vLTx">
              <node concept="3zrR0B" id="1iNeTGf0WIV" role="2ShVmc">
                <node concept="3Tqbb2" id="1iNeTGf0WIX" role="3zrR0E">
                  <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1iNeTGf0W9Y" role="37vLTJ">
              <node concept="13iPFW" id="1iNeTGf0VZp" role="2Oq$k0" />
              <node concept="3TrEf2" id="1iNeTGf0Wo_" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4J8Jau$Oz18" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="69wk_bF5sg9" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="4J8Jau$Oz19" role="1B3o_S" />
      <node concept="3clFbS" id="4J8Jau$Oz1c" role="3clF47">
        <node concept="3clFbF" id="4J8Jau$Oz5Q" role="3cqZAp">
          <node concept="3cpWs3" id="1iNeTGf03VY" role="3clFbG">
            <node concept="Xl_RD" id="1iNeTGf03W1" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="1iNeTGf01FP" role="3uHU7B">
              <node concept="3cpWs3" id="1iNeTGf03dg" role="3uHU7B">
                <node concept="Xl_RD" id="1iNeTGf03e_" role="3uHU7w">
                  <property role="Xl_RC" value="[" />
                </node>
                <node concept="2OqwBi" id="1iNeTGf02zo" role="3uHU7B">
                  <node concept="2OqwBi" id="1iNeTGf020D" role="2Oq$k0">
                    <node concept="13iPFW" id="1iNeTGf01Ji" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1iNeTGf02gt" role="2OqNvi">
                      <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORcoW" role="2OqNvi">
                    <ref role="37wK5l" node="1iNeTGeVhLf" resolve="representAsText" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4J8Jau$Ozf4" role="3uHU7w">
                <node concept="13iPFW" id="4J8Jau$Oz5P" role="2Oq$k0" />
                <node concept="3TrcHB" id="4J8Jau$OzvV" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:7evo$BZb0Rm" resolve="address" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4J8Jau$Oz1d" role="3clF45" />
    </node>
    <node concept="13i0hz" id="1iNeTGeZV7N" role="13h7CS">
      <property role="TrG5h" value="getParagraphs" />
      <ref role="13i0hy" node="2MpFNjy3tMn" resolve="getParagraphs" />
      <node concept="3Tm1VV" id="1iNeTGeZV7O" role="1B3o_S" />
      <node concept="3clFbS" id="1iNeTGeZV7R" role="3clF47">
        <node concept="3cpWs8" id="1iNeTGeZW0P" role="3cqZAp">
          <node concept="3cpWsn" id="1iNeTGeZW0Q" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="2I9FWS" id="1iNeTGeZVSw" role="1tU5fm">
              <ref role="2I9WkF" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
            </node>
            <node concept="2ShNRf" id="1iNeTGeZW0R" role="33vP2m">
              <node concept="2T8Vx0" id="1iNeTGeZW0S" role="2ShVmc">
                <node concept="2I9FWS" id="1iNeTGeZW0T" role="2T96Bj">
                  <ref role="2I9WkF" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iNeTGeZVBJ" role="3cqZAp">
          <node concept="2OqwBi" id="1iNeTGeZX_B" role="3clFbG">
            <node concept="37vLTw" id="1iNeTGeZW0U" role="2Oq$k0">
              <ref role="3cqZAo" node="1iNeTGeZW0Q" resolve="nodes" />
            </node>
            <node concept="TSZUe" id="1iNeTGf004D" role="2OqNvi">
              <node concept="2OqwBi" id="1iNeTGf00yn" role="25WWJ7">
                <node concept="13iPFW" id="1iNeTGf00eG" role="2Oq$k0" />
                <node concept="3TrEf2" id="1iNeTGf00SY" role="2OqNvi">
                  <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1iNeTGf01hg" role="3cqZAp">
          <node concept="37vLTw" id="1iNeTGf01q5" role="3cqZAk">
            <ref role="3cqZAo" node="1iNeTGeZW0Q" resolve="nodes" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="1iNeTGeZV7S" role="3clF45">
        <ref role="2I9WkF" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
    </node>
    <node concept="13i0hz" id="5zXPvI9y3hL" role="13h7CS">
      <property role="TrG5h" value="addParagraph" />
      <ref role="13i0hy" node="fxHsktC$hi" resolve="addParagraph" />
      <node concept="3Tm1VV" id="5zXPvI9y3hM" role="1B3o_S" />
      <node concept="3clFbS" id="5zXPvI9y3hR" role="3clF47">
        <node concept="3clFbF" id="5zXPvI9y408" role="3cqZAp">
          <node concept="2OqwBi" id="5zXPvI9ykvQ" role="3clFbG">
            <node concept="2OqwBi" id="5zXPvI9y48E" role="2Oq$k0">
              <node concept="13iPFW" id="5zXPvI9y407" role="2Oq$k0" />
              <node concept="3TrEf2" id="5zXPvI9y4mY" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:1iNeTGeZUYt" resolve="text" />
              </node>
            </node>
            <node concept="2oxUTD" id="5zXPvI9ykJb" role="2OqNvi">
              <node concept="37vLTw" id="5zXPvI9ykMd" role="2oxUTC">
                <ref role="3cqZAo" node="5zXPvI9y3hS" resolve="p" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5zXPvI9y3hS" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="5zXPvI9y3hT" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="3cqZAl" id="5zXPvI9y3hU" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4ruP0NLgI8g">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:2HIX00NsA33" resolve="BulletPoint" />
    <node concept="13i0hz" id="4ruP0NLgI8Q" role="13h7CS">
      <property role="TrG5h" value="canBeTurnedToBullet" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="4ruP0NLgI8R" role="1B3o_S" />
      <node concept="10P_77" id="4ruP0NLgI9x" role="3clF45" />
      <node concept="3clFbS" id="4ruP0NLgI8T" role="3clF47">
        <node concept="3clFbJ" id="4ruP0NLgIfo" role="3cqZAp">
          <node concept="2OqwBi" id="4ruP0NLgIX1" role="3clFbw">
            <node concept="2OqwBi" id="4ruP0NLgIoZ" role="2Oq$k0">
              <node concept="37vLTw" id="4ruP0NLgIg7" role="2Oq$k0">
                <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
              </node>
              <node concept="2yIwOk" id="4ruP0NLgIEQ" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="4ruP0NLgJlj" role="2OqNvi">
              <node concept="chp4Y" id="4ruP0NLgJpH" role="3QVz_e">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4ruP0NLgIfq" role="3clFbx">
            <node concept="3cpWs6" id="4ruP0NLgLmC" role="3cqZAp">
              <node concept="1Wc70l" id="4ruP0NLgLFY" role="3cqZAk">
                <node concept="1eOMI4" id="4ruP0NLgN5z" role="3uHU7w">
                  <node concept="22lmx$" id="4ruP0NLgN7m" role="1eOMHV">
                    <node concept="1Wc70l" id="4ruP0NLgP2G" role="3uHU7w">
                      <node concept="BsUDl" id="4ruP0NLgPbx" role="3uHU7w">
                        <ref role="37wK5l" node="4ruP0NLgL0C" resolve="startsWithBulletSpace" />
                        <node concept="1PxgMI" id="4ruP0NLgPpu" role="37wK5m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="4ruP0NLgPyl" role="3oSUPX">
                            <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                          </node>
                          <node concept="2OqwBi" id="4ruP0NLgPdM" role="1m5AlR">
                            <node concept="37vLTw" id="4ruP0NLgPdN" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
                            </node>
                            <node concept="YCak7" id="4ruP0NLhv10" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4ruP0NLgOli" role="3uHU7B">
                        <node concept="2OqwBi" id="4ruP0NLgNII" role="2Oq$k0">
                          <node concept="2OqwBi" id="4ruP0NLgNkR" role="2Oq$k0">
                            <node concept="37vLTw" id="4ruP0NLgN9f" role="2Oq$k0">
                              <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
                            </node>
                            <node concept="YCak7" id="4ruP0NLhuRR" role="2OqNvi" />
                          </node>
                          <node concept="2yIwOk" id="4ruP0NLgO1L" role="2OqNvi" />
                        </node>
                        <node concept="3O6GUB" id="4ruP0NLgODO" role="2OqNvi">
                          <node concept="chp4Y" id="4ruP0NLgOIE" role="3QVz_e">
                            <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="4ruP0NLirUn" role="3uHU7B">
                      <node concept="2OqwBi" id="4ruP0NLgMtR" role="3uHU7B">
                        <node concept="2OqwBi" id="4ruP0NLgLQC" role="2Oq$k0">
                          <node concept="37vLTw" id="4ruP0NLgLHk" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
                          </node>
                          <node concept="YBYNd" id="4ruP0NLgM2n" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="4ruP0NLgMC8" role="2OqNvi">
                          <node concept="chp4Y" id="4ruP0NLgMF6" role="cj9EA">
                            <ref role="cht4Q" to="zqge:2HIX00NsA33" resolve="BulletPoint" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4ruP0NLis4A" role="3uHU7w">
                        <node concept="2OqwBi" id="4ruP0NLis4B" role="2Oq$k0">
                          <node concept="37vLTw" id="4ruP0NLis4C" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
                          </node>
                          <node concept="YCak7" id="4ruP0NLis7O" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="4ruP0NLis4E" role="2OqNvi">
                          <node concept="chp4Y" id="4ruP0NLis4F" role="cj9EA">
                            <ref role="cht4Q" to="zqge:2HIX00NsA33" resolve="BulletPoint" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="BsUDl" id="4ruP0NLgLoa" role="3uHU7B">
                  <ref role="37wK5l" node="4ruP0NLgL0C" resolve="startsWithBulletSpace" />
                  <node concept="37vLTw" id="4ruP0NLgLpa" role="37wK5m">
                    <ref role="3cqZAo" node="4ruP0NLgId_" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4ruP0NLgJvx" role="3cqZAp">
          <node concept="3clFbT" id="4ruP0NLgJwf" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="4ruP0NLgId_" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="4ruP0NLgId$" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4ruP0NLgL0C" role="13h7CS">
      <property role="TrG5h" value="startsWithBulletSpace" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm6S6" id="WJz9iAXcKi" role="1B3o_S" />
      <node concept="10P_77" id="4ruP0NLgL1z" role="3clF45" />
      <node concept="3clFbS" id="4ruP0NLgL0F" role="3clF47">
        <node concept="3cpWs8" id="4ruP0NLgDFb" role="3cqZAp">
          <node concept="3cpWsn" id="4ruP0NLgDFc" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3Tqbb2" id="4ruP0NLgDEg" role="1tU5fm">
              <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
            </node>
            <node concept="1PxgMI" id="4ruP0NLgG7p" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="4ruP0NLgGdG" role="3oSUPX">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
              </node>
              <node concept="2OqwBi" id="4ruP0NLgDFd" role="1m5AlR">
                <node concept="2OqwBi" id="4ruP0NLgDFe" role="2Oq$k0">
                  <node concept="37vLTw" id="4ruP0NLgJE1" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ruP0NLgL7j" resolve="p" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcoY" role="2OqNvi">
                    <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
                  </node>
                </node>
                <node concept="1uHKPH" id="4ruP0NLgDFh" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4ruP0NLgDJi" role="3cqZAp">
          <node concept="3cpWsn" id="4ruP0NLgDJj" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3Tqbb2" id="4ruP0NLgDJk" role="1tU5fm">
              <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
            </node>
            <node concept="1PxgMI" id="4ruP0NLgEie" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="4ruP0NLgEjh" role="3oSUPX">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
              </node>
              <node concept="2OqwBi" id="4ruP0NLgDWW" role="1m5AlR">
                <node concept="YCak7" id="4ruP0NLgE4O" role="2OqNvi" />
                <node concept="37vLTw" id="4ruP0NLgE8d" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ruP0NLgDFc" resolve="f" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WR7QflISdH" role="3cqZAp">
          <node concept="3clFbS" id="6WR7QflISdJ" role="3clFbx">
            <node concept="3cpWs6" id="6WR7QflIU4F" role="3cqZAp">
              <node concept="3clFbT" id="6WR7QflIU89" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="6WR7QflISvT" role="3clFbw">
            <node concept="37vLTw" id="6WR7QflIShx" role="2Oq$k0">
              <ref role="3cqZAo" node="4ruP0NLgDFc" resolve="f" />
            </node>
            <node concept="3w_OXm" id="6WR7QflISPQ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4ruP0NLgLij" role="3cqZAp">
          <node concept="1Wc70l" id="4ruP0NLgHgG" role="3cqZAk">
            <node concept="17R0WA" id="4ruP0NLgI1T" role="3uHU7w">
              <node concept="Xl_RD" id="4ruP0NLgI4W" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
              <node concept="2OqwBi" id="4ruP0NLgHxu" role="3uHU7B">
                <node concept="37vLTw" id="4ruP0NLgHnx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ruP0NLgDJj" resolve="s" />
                </node>
                <node concept="3TrcHB" id="4ruP0NLgHEq" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="10ljsgmJ72J" role="3uHU7B">
              <node concept="2OqwBi" id="4ruP0NLgGrt" role="2Oq$k0">
                <node concept="37vLTw" id="4ruP0NLgDFi" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ruP0NLgDFc" resolve="f" />
                </node>
                <node concept="3TrcHB" id="4ruP0NLgGBq" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="10ljsgmJ7Bo" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="4ruP0NLgHfe" role="37wK5m">
                  <property role="Xl_RC" value="[*|-]" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4ruP0NLgL7j" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="4ruP0NLgL7i" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4ruP0NLgI8h" role="13h7CW">
      <node concept="3clFbS" id="4ruP0NLgI8i" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="fcFkhVPSYo" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <ref role="13i0hy" node="fcFkhVLuVF" resolve="wrapTextForClipboard" />
      <node concept="3Tm1VV" id="fcFkhVPSYp" role="1B3o_S" />
      <node concept="3clFbS" id="fcFkhVPSYw" role="3clF47">
        <node concept="3clFbF" id="fcFkhVPT5J" role="3cqZAp">
          <node concept="3cpWs3" id="fcFkhVPTsi" role="3clFbG">
            <node concept="37vLTw" id="fcFkhVPTsE" role="3uHU7w">
              <ref role="3cqZAo" node="fcFkhVPSYx" resolve="text" />
            </node>
            <node concept="3cpWs3" id="fcFkhVQ4TC" role="3uHU7B">
              <node concept="2OqwBi" id="fcFkhVQ57K" role="3uHU7B">
                <node concept="13iPFW" id="fcFkhVQ4U4" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcp0" role="2OqNvi">
                  <ref role="37wK5l" node="fcFkhVQ0er" resolve="getIndentString" />
                </node>
              </node>
              <node concept="Xl_RD" id="fcFkhVPT5I" role="3uHU7w">
                <property role="Xl_RC" value="* " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="fcFkhVPSYx" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="fcFkhVPSYy" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="fcFkhVPSYz" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7q4Ywce6iRK" role="13h7CS">
      <property role="TrG5h" value="createLineInstance" />
      <ref role="13i0hy" node="7q4Ywce6bwW" resolve="createLineInstance" />
      <node concept="3Tm1VV" id="7q4Ywce6iRL" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce6iRS" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6j55" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6j4V" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6jaT" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6jaV" role="3zrR0E">
                <ref role="ehGHo" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7q4Ywce6iRT" role="3clF45">
        <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce9M5g" role="13h7CS">
      <property role="TrG5h" value="initializeFromLine" />
      <ref role="13i0hy" node="6n6K0Pj71DU" resolve="initializeFromLine" />
      <node concept="3Tm1VV" id="7q4Ywce9M5j" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce9M7j" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce9M7r" role="3cqZAp">
          <node concept="2OqwBi" id="7q4Ywce9M7o" role="3clFbG">
            <node concept="13iAh5" id="7q4Ywce9M7p" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcp2" role="2OqNvi">
              <ref role="37wK5l" node="6n6K0Pj71DU" resolve="initializeFromLine" />
              <node concept="37vLTw" id="70OdufORcp4" role="37wK5m">
                <ref role="3cqZAo" node="7q4Ywce9M7k" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7q4Ywce9MiU" role="3cqZAp">
          <node concept="3clFbS" id="7q4Ywce9MiV" role="3clFbx">
            <node concept="3clFbF" id="7q4Ywce9MiW" role="3cqZAp">
              <node concept="37vLTI" id="7q4Ywce9MiX" role="3clFbG">
                <node concept="2OqwBi" id="7q4Ywce9MiY" role="37vLTx">
                  <node concept="1PxgMI" id="7q4Ywce9MiZ" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7q4Ywce9Mj0" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="7q4Ywce9Mj1" role="1m5AlR">
                      <ref role="3cqZAo" node="7q4Ywce9M7k" resolve="l" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7q4Ywce9Mj2" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7q4Ywce9Mj3" role="37vLTJ">
                  <node concept="13iPFW" id="7q4Ywce9Mj4" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7q4Ywce9Mj5" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7q4Ywce9Mj6" role="3clFbw">
            <node concept="37vLTw" id="7q4Ywce9Mj7" role="2Oq$k0">
              <ref role="3cqZAo" node="7q4Ywce9M7k" resolve="l" />
            </node>
            <node concept="1mIQ4w" id="7q4Ywce9Mj8" role="2OqNvi">
              <node concept="chp4Y" id="7q4Ywce9Mj9" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7q4Ywce9M7k" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="7q4Ywce9M7l" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
      <node concept="3cqZAl" id="7q4Ywce9M7m" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5QuCpoxy5xc">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
    <node concept="13i0hz" id="5QuCpoxy5xM" role="13h7CS">
      <property role="TrG5h" value="calculatePosition" />
      <node concept="3Tm1VV" id="5QuCpoxy5xN" role="1B3o_S" />
      <node concept="10Oyi0" id="5QuCpoxy5z3" role="3clF45" />
      <node concept="3clFbS" id="5QuCpoxy5xP" role="3clF47">
        <node concept="1DcWWT" id="5QuCpoxyptu" role="3cqZAp">
          <node concept="3clFbS" id="5QuCpoxyptw" role="2LFqv$">
            <node concept="3clFbJ" id="5QuCpoxyt5J" role="3cqZAp">
              <node concept="3clFbS" id="5QuCpoxyt5L" role="3clFbx">
                <node concept="3clFbJ" id="5QuCpoxytzH" role="3cqZAp">
                  <node concept="3clFbS" id="5QuCpoxytzJ" role="3clFbx">
                    <node concept="3N13vt" id="5QuCpoxAkoH" role="3cqZAp" />
                  </node>
                  <node concept="3eOSWO" id="5QuCpoxAhz6" role="3clFbw">
                    <node concept="2OqwBi" id="5QuCpoxyu8g" role="3uHU7B">
                      <node concept="1PxgMI" id="5QuCpoxytNJ" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="5QuCpoxytZf" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="5QuCpoxyt$z" role="1m5AlR">
                          <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5QuCpoxyuyQ" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5QuCpoxywbb" role="3uHU7w">
                      <node concept="13iPFW" id="5QuCpoxyvDt" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5QuCpoxywpl" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5QuCpoxAf_n" role="3cqZAp">
                  <node concept="3clFbS" id="5QuCpoxAf_o" role="3clFbx">
                    <node concept="3cpWs6" id="5QuCpoxAf_p" role="3cqZAp">
                      <node concept="3cmrfG" id="5QuCpoxAf_q" role="3cqZAk">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="5QuCpoxAf_r" role="3clFbw">
                    <node concept="2OqwBi" id="5QuCpoxAf_s" role="3uHU7w">
                      <node concept="13iPFW" id="5QuCpoxAf_t" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5QuCpoxAf_u" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5QuCpoxAf_v" role="3uHU7B">
                      <node concept="1PxgMI" id="5QuCpoxAf_w" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="5QuCpoxAf_x" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="5QuCpoxAf_y" role="1m5AlR">
                          <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5QuCpoxAf_z" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5QuCpoxyz5p" role="3cqZAp">
                  <node concept="3clFbS" id="5QuCpoxyz5q" role="3clFbx">
                    <node concept="3clFbJ" id="5QuCpoxyAGI" role="3cqZAp">
                      <node concept="3clFbS" id="5QuCpoxyAGK" role="3clFbx">
                        <node concept="3cpWs6" id="5QuCpoxyC4J" role="3cqZAp">
                          <node concept="3cpWs3" id="5QuCpoxyL_x" role="3cqZAk">
                            <node concept="3cmrfG" id="5QuCpoxyL_$" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="5QuCpoxyHDU" role="3uHU7B">
                              <node concept="1PxgMI" id="5QuCpoxyFDL" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="5QuCpoxyG$T" role="3oSUPX">
                                  <ref role="cht4Q" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
                                </node>
                                <node concept="37vLTw" id="5QuCpoxyDLg" role="1m5AlR">
                                  <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORcp5" role="2OqNvi">
                                <ref role="37wK5l" node="5QuCpoxy5xM" resolve="calculatePosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5QuCpoxyBK2" role="3clFbw">
                        <node concept="37vLTw" id="5QuCpoxyBBO" role="2Oq$k0">
                          <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                        </node>
                        <node concept="1mIQ4w" id="5QuCpoxyBYv" role="2OqNvi">
                          <node concept="chp4Y" id="5QuCpoxyC11" role="cj9EA">
                            <ref role="cht4Q" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="5QuCpoxyMxD" role="9aQIa">
                        <node concept="3clFbS" id="5QuCpoxyMxE" role="9aQI4">
                          <node concept="3cpWs6" id="5QuCpoxyz5r" role="3cqZAp">
                            <node concept="3cmrfG" id="5QuCpoxyz5s" role="3cqZAk">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="5QuCpoxy$14" role="3clFbw">
                    <node concept="2OqwBi" id="5QuCpoxyz5x" role="3uHU7B">
                      <node concept="1PxgMI" id="5QuCpoxyz5y" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="5QuCpoxyz5z" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="5QuCpoxyz5$" role="1m5AlR">
                          <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5QuCpoxyz5_" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5QuCpoxyz5u" role="3uHU7w">
                      <node concept="13iPFW" id="5QuCpoxyz5v" role="2Oq$k0" />
                      <node concept="3TrcHB" id="5QuCpoxyz5w" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5QuCpoxyteJ" role="3clFbw">
                <node concept="37vLTw" id="5QuCpoxyt6_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5QuCpoxyptx" resolve="p" />
                </node>
                <node concept="1mIQ4w" id="5QuCpoxytu2" role="2OqNvi">
                  <node concept="chp4Y" id="5QuCpoxytww" role="cj9EA">
                    <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5QuCpoxyPfB" role="9aQIa">
                <node concept="3clFbS" id="5QuCpoxyPfC" role="9aQI4">
                  <node concept="3cpWs6" id="5QuCpoxyR1j" role="3cqZAp">
                    <node concept="3cmrfG" id="5QuCpoxyR26" role="3cqZAk">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5QuCpoxyptx" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3Tqbb2" id="5QuCpoxyro0" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="1uSfHaoNKa0" role="1DdaDG">
            <node concept="2OqwBi" id="5QuCpoxyo0V" role="2Oq$k0">
              <node concept="13iPFW" id="5QuCpoxynM7" role="2Oq$k0" />
              <node concept="2Ttrtt" id="5QuCpoxyoiM" role="2OqNvi" />
            </node>
            <node concept="35Qw8J" id="1uSfHaoNMJJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="5QuCpoxySMQ" role="3cqZAp">
          <node concept="3cmrfG" id="5QuCpoxyTKa" role="3cqZAk">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="10ljsgmITo7" role="13h7CS">
      <property role="TrG5h" value="canBeTurnedToNumberedPoint" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="10ljsgmITo8" role="1B3o_S" />
      <node concept="10P_77" id="10ljsgmITo9" role="3clF45" />
      <node concept="3clFbS" id="10ljsgmIToa" role="3clF47">
        <node concept="3clFbJ" id="10ljsgmITob" role="3cqZAp">
          <node concept="2OqwBi" id="10ljsgmIToc" role="3clFbw">
            <node concept="2OqwBi" id="10ljsgmITod" role="2Oq$k0">
              <node concept="37vLTw" id="10ljsgmIToe" role="2Oq$k0">
                <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
              </node>
              <node concept="2yIwOk" id="10ljsgmITof" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="10ljsgmITog" role="2OqNvi">
              <node concept="chp4Y" id="10ljsgmIToh" role="3QVz_e">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="10ljsgmIToi" role="3clFbx">
            <node concept="3cpWs6" id="10ljsgmIToj" role="3cqZAp">
              <node concept="1Wc70l" id="10ljsgmITok" role="3cqZAk">
                <node concept="1eOMI4" id="10ljsgmITol" role="3uHU7w">
                  <node concept="22lmx$" id="10ljsgmITom" role="1eOMHV">
                    <node concept="1Wc70l" id="10ljsgmITon" role="3uHU7w">
                      <node concept="BsUDl" id="10ljsgmIToo" role="3uHU7w">
                        <ref role="37wK5l" node="10ljsgmJ2Al" resolve="startsWithNumberSpace" />
                        <node concept="1PxgMI" id="10ljsgmITop" role="37wK5m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="10ljsgmIToq" role="3oSUPX">
                            <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                          </node>
                          <node concept="2OqwBi" id="10ljsgmITor" role="1m5AlR">
                            <node concept="37vLTw" id="10ljsgmITos" role="2Oq$k0">
                              <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
                            </node>
                            <node concept="YCak7" id="10ljsgmITot" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="10ljsgmITou" role="3uHU7B">
                        <node concept="2OqwBi" id="10ljsgmITov" role="2Oq$k0">
                          <node concept="2OqwBi" id="10ljsgmITow" role="2Oq$k0">
                            <node concept="37vLTw" id="10ljsgmITox" role="2Oq$k0">
                              <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
                            </node>
                            <node concept="YCak7" id="10ljsgmIToy" role="2OqNvi" />
                          </node>
                          <node concept="2yIwOk" id="10ljsgmIToz" role="2OqNvi" />
                        </node>
                        <node concept="3O6GUB" id="10ljsgmITo$" role="2OqNvi">
                          <node concept="chp4Y" id="10ljsgmITo_" role="3QVz_e">
                            <ref role="cht4Q" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="10ljsgmIToA" role="3uHU7B">
                      <node concept="2OqwBi" id="10ljsgmIToB" role="3uHU7B">
                        <node concept="2OqwBi" id="10ljsgmIToC" role="2Oq$k0">
                          <node concept="37vLTw" id="10ljsgmIToD" role="2Oq$k0">
                            <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
                          </node>
                          <node concept="YBYNd" id="10ljsgmIToE" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="10ljsgmIToF" role="2OqNvi">
                          <node concept="chp4Y" id="10ljsgmJ4CE" role="cj9EA">
                            <ref role="cht4Q" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="10ljsgmIToH" role="3uHU7w">
                        <node concept="2OqwBi" id="10ljsgmIToI" role="2Oq$k0">
                          <node concept="37vLTw" id="10ljsgmIToJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
                          </node>
                          <node concept="YCak7" id="10ljsgmIToK" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="10ljsgmIToL" role="2OqNvi">
                          <node concept="chp4Y" id="10ljsgmJ4OP" role="cj9EA">
                            <ref role="cht4Q" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="BsUDl" id="10ljsgmIToN" role="3uHU7B">
                  <ref role="37wK5l" node="10ljsgmJ2Al" resolve="startsWithNumberSpace" />
                  <node concept="37vLTw" id="10ljsgmIToO" role="37wK5m">
                    <ref role="3cqZAo" node="10ljsgmIToR" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="10ljsgmIToP" role="3cqZAp">
          <node concept="3clFbT" id="10ljsgmIToQ" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="10ljsgmIToR" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="10ljsgmIToS" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="10ljsgmJ2Al" role="13h7CS">
      <property role="TrG5h" value="startsWithNumberSpace" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm6S6" id="60UJ0IsnWeO" role="1B3o_S" />
      <node concept="10P_77" id="10ljsgmJ2An" role="3clF45" />
      <node concept="3clFbS" id="10ljsgmJ2Ao" role="3clF47">
        <node concept="3cpWs8" id="10ljsgmJ2Ap" role="3cqZAp">
          <node concept="3cpWsn" id="10ljsgmJ2Aq" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3Tqbb2" id="10ljsgmJ2Ar" role="1tU5fm">
              <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
            </node>
            <node concept="1PxgMI" id="10ljsgmJ2As" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="10ljsgmJ2At" role="3oSUPX">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
              </node>
              <node concept="2OqwBi" id="10ljsgmJ2Au" role="1m5AlR">
                <node concept="2OqwBi" id="10ljsgmJ2Av" role="2Oq$k0">
                  <node concept="37vLTw" id="10ljsgmJ2Aw" role="2Oq$k0">
                    <ref role="3cqZAo" node="10ljsgmJ2AR" resolve="p" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcp7" role="2OqNvi">
                    <ref role="37wK5l" node="250QDwq2ueg" resolve="getTextualElements" />
                  </node>
                </node>
                <node concept="1uHKPH" id="10ljsgmJ2Ay" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="10ljsgmJ2Az" role="3cqZAp">
          <node concept="3cpWsn" id="10ljsgmJ2A$" role="3cpWs9">
            <property role="TrG5h" value="s" />
            <node concept="3Tqbb2" id="10ljsgmJ2A_" role="1tU5fm">
              <ref role="ehGHo" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
            </node>
            <node concept="1PxgMI" id="10ljsgmJ2AA" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="10ljsgmJ2AB" role="3oSUPX">
                <ref role="cht4Q" to="zqge:7Vz6ZmoXaKt" resolve="Letter" />
              </node>
              <node concept="2OqwBi" id="10ljsgmJ2AC" role="1m5AlR">
                <node concept="YCak7" id="10ljsgmJ2AD" role="2OqNvi" />
                <node concept="37vLTw" id="10ljsgmJ2AE" role="2Oq$k0">
                  <ref role="3cqZAo" node="10ljsgmJ2Aq" resolve="f" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6WR7QflIWkD" role="3cqZAp">
          <node concept="3clFbS" id="6WR7QflIWkE" role="3clFbx">
            <node concept="3cpWs6" id="6WR7QflIWkF" role="3cqZAp">
              <node concept="3clFbT" id="6WR7QflIWkG" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="6WR7QflIWkH" role="3clFbw">
            <node concept="37vLTw" id="6WR7QflIWkI" role="2Oq$k0">
              <ref role="3cqZAo" node="10ljsgmJ2Aq" resolve="f" />
            </node>
            <node concept="3w_OXm" id="6WR7QflIWkJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="10ljsgmJ2AF" role="3cqZAp">
          <node concept="1Wc70l" id="10ljsgmJ2AG" role="3cqZAk">
            <node concept="17R0WA" id="10ljsgmJ2AH" role="3uHU7w">
              <node concept="Xl_RD" id="10ljsgmJ2AI" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="2OqwBi" id="10ljsgmJ2AJ" role="3uHU7B">
                <node concept="37vLTw" id="10ljsgmJ2AK" role="2Oq$k0">
                  <ref role="3cqZAo" node="10ljsgmJ2A$" resolve="s" />
                </node>
                <node concept="3TrcHB" id="10ljsgmJ2AL" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="10ljsgmJ5sR" role="3uHU7B">
              <node concept="2OqwBi" id="10ljsgmJ2AN" role="2Oq$k0">
                <node concept="37vLTw" id="10ljsgmJ2AO" role="2Oq$k0">
                  <ref role="3cqZAo" node="10ljsgmJ2Aq" resolve="f" />
                </node>
                <node concept="3TrcHB" id="10ljsgmJ2AP" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:7Vz6ZmoXaQu" resolve="value" />
                </node>
              </node>
              <node concept="liA8E" id="10ljsgmJ5TU" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="10ljsgmJ65v" role="37wK5m">
                  <property role="Xl_RC" value="[0-9]" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="10ljsgmJ2AR" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3Tqbb2" id="10ljsgmJ2AS" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="5QuCpoxy5xd" role="13h7CW">
      <node concept="3clFbS" id="5QuCpoxy5xe" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="fcFkhVPW5K" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <ref role="13i0hy" node="fcFkhVLuVF" resolve="wrapTextForClipboard" />
      <node concept="3Tm1VV" id="fcFkhVPW5L" role="1B3o_S" />
      <node concept="3clFbS" id="fcFkhVPW5S" role="3clF47">
        <node concept="3clFbF" id="fcFkhVPX6H" role="3cqZAp">
          <node concept="3cpWs3" id="fcFkhVPYvP" role="3clFbG">
            <node concept="37vLTw" id="fcFkhVPYwA" role="3uHU7w">
              <ref role="3cqZAo" node="fcFkhVPW5T" resolve="text" />
            </node>
            <node concept="3cpWs3" id="fcFkhVQ6H$" role="3uHU7B">
              <node concept="Xl_RD" id="fcFkhVQ6HB" role="3uHU7w">
                <property role="Xl_RC" value=". " />
              </node>
              <node concept="3cpWs3" id="fcFkhVPXsQ" role="3uHU7B">
                <node concept="2OqwBi" id="fcFkhVQ5Ap" role="3uHU7B">
                  <node concept="13iPFW" id="fcFkhVQ5Aq" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcp9" role="2OqNvi">
                    <ref role="37wK5l" node="fcFkhVQ0er" resolve="getIndentString" />
                  </node>
                </node>
                <node concept="BsUDl" id="fcFkhVPXte" role="3uHU7w">
                  <ref role="37wK5l" node="5QuCpoxy5xM" resolve="calculatePosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="fcFkhVPW5T" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="fcFkhVPW5U" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="fcFkhVPW5V" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7q4Ywce6lLS" role="13h7CS">
      <property role="TrG5h" value="createLineInstance" />
      <ref role="13i0hy" node="7q4Ywce6bwW" resolve="createLineInstance" />
      <node concept="3Tm1VV" id="7q4Ywce6lLT" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce6lM0" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6mK7" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6mJX" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6mPV" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6mPX" role="3zrR0E">
                <ref role="ehGHo" to="zqge:60UJ0Isn_12" resolve="NumberedLine" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7q4Ywce6lM1" role="3clF45">
        <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce9OCr" role="13h7CS">
      <property role="TrG5h" value="initializeFromLine" />
      <ref role="13i0hy" node="6n6K0Pj71DU" resolve="initializeFromLine" />
      <node concept="3Tm1VV" id="7q4Ywce9OCu" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce9OEu" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce9OEA" role="3cqZAp">
          <node concept="2OqwBi" id="7q4Ywce9OEz" role="3clFbG">
            <node concept="13iAh5" id="7q4Ywce9OE$" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcpb" role="2OqNvi">
              <ref role="37wK5l" node="6n6K0Pj71DU" resolve="initializeFromLine" />
              <node concept="37vLTw" id="70OdufORcpd" role="37wK5m">
                <ref role="3cqZAo" node="7q4Ywce9OEv" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7q4Ywce9Qst" role="3cqZAp">
          <node concept="3clFbS" id="7q4Ywce9Qsu" role="3clFbx">
            <node concept="3clFbF" id="7q4Ywce9Qsv" role="3cqZAp">
              <node concept="37vLTI" id="7q4Ywce9Qsw" role="3clFbG">
                <node concept="2OqwBi" id="7q4Ywce9Qsx" role="37vLTx">
                  <node concept="1PxgMI" id="7q4Ywce9Qsy" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7q4Ywce9Qsz" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="7q4Ywce9Qs$" role="1m5AlR">
                      <ref role="3cqZAo" node="7q4Ywce9OEv" resolve="l" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7q4Ywce9Qs_" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7q4Ywce9QsA" role="37vLTJ">
                  <node concept="13iPFW" id="7q4Ywce9QsB" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7q4Ywce9QsC" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7q4Ywce9QsD" role="3clFbw">
            <node concept="37vLTw" id="7q4Ywce9QsE" role="2Oq$k0">
              <ref role="3cqZAo" node="7q4Ywce9OEv" resolve="l" />
            </node>
            <node concept="1mIQ4w" id="7q4Ywce9QsF" role="2OqNvi">
              <node concept="chp4Y" id="7q4Ywce9QsG" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7q4Ywce9OEv" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="7q4Ywce9OEw" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
      <node concept="3cqZAl" id="7q4Ywce9OEx" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1uSfHaoP$Ww">
    <property role="3GE5qa" value="textual" />
    <ref role="13h7C2" to="zqge:1uSfHaoP$Vf" resolve="IParagraph" />
    <node concept="13hLZK" id="1uSfHaoP$Wx" role="13h7CW">
      <node concept="3clFbS" id="1uSfHaoP$Wy" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="fcFkhVQ0eg">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
    <node concept="13i0hz" id="fcFkhVQ0er" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getIndentString" />
      <node concept="3Tm1VV" id="fcFkhVQ0es" role="1B3o_S" />
      <node concept="17QB3L" id="fcFkhVQ0eF" role="3clF45" />
      <node concept="3clFbS" id="fcFkhVQ0eu" role="3clF47">
        <node concept="3cpWs8" id="4ruP0NLfiBm" role="3cqZAp">
          <node concept="3cpWsn" id="4ruP0NLfiBn" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4ruP0NLfiBl" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4ruP0NLfiBo" role="33vP2m">
              <node concept="1pGfFk" id="4ruP0NLfiBp" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="4ruP0NLeK56" role="3cqZAp">
          <node concept="3cpWsn" id="4ruP0NLeK57" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="4ruP0NLeKaa" role="1tU5fm" />
            <node concept="3cmrfG" id="4ruP0NLeKgJ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4ruP0NLeK58" role="2LFqv$">
            <node concept="3clFbF" id="4ruP0NLfj2W" role="3cqZAp">
              <node concept="2OqwBi" id="4ruP0NLfj$N" role="3clFbG">
                <node concept="37vLTw" id="4ruP0NLfj2V" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ruP0NLfiBn" resolve="builder" />
                </node>
                <node concept="liA8E" id="4ruP0NLfkHW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="Xl_RD" id="7zyfnazHsy_" role="37wK5m">
                    <property role="Xl_RC" value="    " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="4ruP0NLeM6F" role="1Dwp0S">
            <node concept="2OqwBi" id="4ruP0NLeMFH" role="3uHU7w">
              <node concept="13iPFW" id="fcFkhVQ15z" role="2Oq$k0" />
              <node concept="3TrcHB" id="4ruP0NLeMYO" role="2OqNvi">
                <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
              </node>
            </node>
            <node concept="37vLTw" id="4ruP0NLeKhA" role="3uHU7B">
              <ref role="3cqZAo" node="4ruP0NLeK57" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="4ruP0NLeOkP" role="1Dwrff">
            <node concept="37vLTw" id="4ruP0NLeOkR" role="2$L3a6">
              <ref role="3cqZAo" node="4ruP0NLeK57" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4ruP0NLfnGo" role="3cqZAp">
          <node concept="2OqwBi" id="4ruP0NLfp4G" role="3cqZAk">
            <node concept="37vLTw" id="4ruP0NLfoyN" role="2Oq$k0">
              <ref role="3cqZAo" node="4ruP0NLfiBn" resolve="builder" />
            </node>
            <node concept="liA8E" id="4ruP0NLfpOJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="6pDt4TBBQHh" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="calculatePosition" />
      <node concept="3Tm1VV" id="6pDt4TBBQHi" role="1B3o_S" />
      <node concept="10Oyi0" id="6pDt4TBBQHj" role="3clF45" />
      <node concept="3clFbS" id="6pDt4TBBQHk" role="3clF47">
        <node concept="1DcWWT" id="6pDt4TBBQHl" role="3cqZAp">
          <node concept="3clFbS" id="6pDt4TBBQHm" role="2LFqv$">
            <node concept="3clFbJ" id="6pDt4TBBQHn" role="3cqZAp">
              <node concept="3clFbS" id="6pDt4TBBQHo" role="3clFbx">
                <node concept="3clFbJ" id="6pDt4TBBQHp" role="3cqZAp">
                  <node concept="3clFbS" id="6pDt4TBBQHq" role="3clFbx">
                    <node concept="3N13vt" id="6pDt4TBBQHr" role="3cqZAp" />
                  </node>
                  <node concept="3eOSWO" id="6pDt4TBBQHs" role="3clFbw">
                    <node concept="2OqwBi" id="6pDt4TBBQHt" role="3uHU7B">
                      <node concept="1PxgMI" id="6pDt4TBBQHu" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="6pDt4TBBQHv" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="6pDt4TBBQHw" role="1m5AlR">
                          <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6pDt4TBBQHx" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6pDt4TBBQHy" role="3uHU7w">
                      <node concept="13iPFW" id="6pDt4TBBQHz" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6pDt4TBBQH$" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6pDt4TBBQH_" role="3cqZAp">
                  <node concept="3clFbS" id="6pDt4TBBQHA" role="3clFbx">
                    <node concept="3cpWs6" id="6pDt4TBBQHB" role="3cqZAp">
                      <node concept="3cmrfG" id="6pDt4TBBQHC" role="3cqZAk">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="6pDt4TBBQHD" role="3clFbw">
                    <node concept="2OqwBi" id="6pDt4TBBQHE" role="3uHU7w">
                      <node concept="13iPFW" id="6pDt4TBBQHF" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6pDt4TBBQHG" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6pDt4TBBQHH" role="3uHU7B">
                      <node concept="1PxgMI" id="6pDt4TBBQHI" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="6pDt4TBBQHJ" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="6pDt4TBBQHK" role="1m5AlR">
                          <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6pDt4TBBQHL" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6pDt4TBBQHM" role="3cqZAp">
                  <node concept="3clFbS" id="6pDt4TBBQHN" role="3clFbx">
                    <node concept="3clFbJ" id="6pDt4TBBQHO" role="3cqZAp">
                      <node concept="3clFbS" id="6pDt4TBBQHP" role="3clFbx">
                        <node concept="3cpWs6" id="6pDt4TBBQHQ" role="3cqZAp">
                          <node concept="3cpWs3" id="6pDt4TBBQHR" role="3cqZAk">
                            <node concept="3cmrfG" id="6pDt4TBBQHS" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="6pDt4TBBQHT" role="3uHU7B">
                              <node concept="1PxgMI" id="6pDt4TBBQHU" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="37vLTw" id="6pDt4TBBQHV" role="1m5AlR">
                                  <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                                </node>
                                <node concept="chp4Y" id="6pDt4TBBQHW" role="3oSUPX">
                                  <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORcpe" role="2OqNvi">
                                <ref role="37wK5l" node="6pDt4TBBQHh" resolve="calculatePosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6pDt4TBBQHY" role="3clFbw">
                        <node concept="37vLTw" id="6pDt4TBBQHZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                        </node>
                        <node concept="1mIQ4w" id="6pDt4TBBQI0" role="2OqNvi">
                          <node concept="25Kdxt" id="6pDt4TBBQI1" role="cj9EA">
                            <node concept="2OqwBi" id="6pDt4TBBQI2" role="25KhWn">
                              <node concept="13iPFW" id="6pDt4TBBQI3" role="2Oq$k0" />
                              <node concept="2yIwOk" id="6pDt4TBBQI4" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="6pDt4TBBQI5" role="9aQIa">
                        <node concept="3clFbS" id="6pDt4TBBQI6" role="9aQI4">
                          <node concept="3cpWs6" id="6pDt4TBBQI7" role="3cqZAp">
                            <node concept="3cmrfG" id="6pDt4TBBQI8" role="3cqZAk">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="6pDt4TBBQI9" role="3clFbw">
                    <node concept="2OqwBi" id="6pDt4TBBQIa" role="3uHU7B">
                      <node concept="1PxgMI" id="6pDt4TBBQIb" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="6pDt4TBBQIc" role="3oSUPX">
                          <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                        </node>
                        <node concept="37vLTw" id="6pDt4TBBQId" role="1m5AlR">
                          <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="6pDt4TBBQIe" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6pDt4TBBQIf" role="3uHU7w">
                      <node concept="13iPFW" id="6pDt4TBBQIg" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6pDt4TBBQIh" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6pDt4TBBQIi" role="3clFbw">
                <node concept="37vLTw" id="6pDt4TBBQIj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6pDt4TBBQIq" resolve="p" />
                </node>
                <node concept="1mIQ4w" id="6pDt4TBBQIk" role="2OqNvi">
                  <node concept="chp4Y" id="6pDt4TBBQIl" role="cj9EA">
                    <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="6pDt4TBBQIm" role="9aQIa">
                <node concept="3clFbS" id="6pDt4TBBQIn" role="9aQI4">
                  <node concept="3cpWs6" id="6pDt4TBBQIo" role="3cqZAp">
                    <node concept="3cmrfG" id="6pDt4TBBQIp" role="3cqZAk">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6pDt4TBBQIq" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3Tqbb2" id="6pDt4TBBQIr" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="6pDt4TBBQIs" role="1DdaDG">
            <node concept="2OqwBi" id="6pDt4TBBQIt" role="2Oq$k0">
              <node concept="13iPFW" id="6pDt4TBBQIu" role="2Oq$k0" />
              <node concept="2Ttrtt" id="6pDt4TBBQIv" role="2OqNvi" />
            </node>
            <node concept="35Qw8J" id="6pDt4TBBQIw" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="6pDt4TBBQIx" role="3cqZAp">
          <node concept="3cmrfG" id="6pDt4TBBQIy" role="3cqZAk">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="fcFkhVQ0eh" role="13h7CW">
      <node concept="3clFbS" id="fcFkhVQ0ei" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="WJz9iAWPfv">
    <ref role="13h7C2" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
    <node concept="13i0hz" id="WJz9iAWPfE" role="13h7CS">
      <property role="TrG5h" value="canBeTurnedToBullet" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="WJz9iAWPfF" role="1B3o_S" />
      <node concept="10P_77" id="WJz9iAWPfG" role="3clF45" />
      <node concept="3clFbS" id="WJz9iAWPfH" role="3clF47">
        <node concept="3clFbJ" id="WJz9iAWPfI" role="3cqZAp">
          <node concept="2OqwBi" id="WJz9iAWPfJ" role="3clFbw">
            <node concept="2OqwBi" id="WJz9iAWPfK" role="2Oq$k0">
              <node concept="37vLTw" id="WJz9iAWPfL" role="2Oq$k0">
                <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
              </node>
              <node concept="2yIwOk" id="WJz9iAWPfM" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="WJz9iAWPfN" role="2OqNvi">
              <node concept="chp4Y" id="WJz9iAWQ2e" role="3QVz_e">
                <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="WJz9iAWPfP" role="3clFbx">
            <node concept="3cpWs6" id="WJz9iAWPfQ" role="3cqZAp">
              <node concept="1Wc70l" id="WJz9iAWPfR" role="3cqZAk">
                <node concept="1eOMI4" id="WJz9iAWPfS" role="3uHU7w">
                  <node concept="22lmx$" id="WJz9iAWPfT" role="1eOMHV">
                    <node concept="1Wc70l" id="WJz9iAWPfU" role="3uHU7w">
                      <node concept="BsUDl" id="WJz9iAWPfV" role="3uHU7w">
                        <ref role="37wK5l" node="WJz9iAWPgX" resolve="startsWithBulletSpace" />
                        <node concept="1PxgMI" id="WJz9iAWPfW" role="37wK5m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="WJz9iAWTpM" role="3oSUPX">
                            <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                          </node>
                          <node concept="2OqwBi" id="WJz9iAWPfY" role="1m5AlR">
                            <node concept="37vLTw" id="WJz9iAWPfZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
                            </node>
                            <node concept="YCak7" id="WJz9iAWPg0" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="WJz9iAWPg1" role="3uHU7B">
                        <node concept="2OqwBi" id="WJz9iAWPg2" role="2Oq$k0">
                          <node concept="2OqwBi" id="WJz9iAWPg3" role="2Oq$k0">
                            <node concept="37vLTw" id="WJz9iAWPg4" role="2Oq$k0">
                              <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
                            </node>
                            <node concept="YCak7" id="WJz9iAWPg5" role="2OqNvi" />
                          </node>
                          <node concept="2yIwOk" id="WJz9iAWPg6" role="2OqNvi" />
                        </node>
                        <node concept="3O6GUB" id="WJz9iAWPg7" role="2OqNvi">
                          <node concept="chp4Y" id="WJz9iAWTeE" role="3QVz_e">
                            <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="WJz9iAWPg9" role="3uHU7B">
                      <node concept="2OqwBi" id="WJz9iAWPga" role="3uHU7B">
                        <node concept="2OqwBi" id="WJz9iAWPgb" role="2Oq$k0">
                          <node concept="37vLTw" id="WJz9iAWPgc" role="2Oq$k0">
                            <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
                          </node>
                          <node concept="YBYNd" id="WJz9iAWPgd" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="WJz9iAWPge" role="2OqNvi">
                          <node concept="chp4Y" id="WJz9iAWT17" role="cj9EA">
                            <ref role="cht4Q" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="WJz9iAWPgg" role="3uHU7w">
                        <node concept="2OqwBi" id="WJz9iAWPgh" role="2Oq$k0">
                          <node concept="37vLTw" id="WJz9iAWPgi" role="2Oq$k0">
                            <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
                          </node>
                          <node concept="YCak7" id="WJz9iAWPgj" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="WJz9iAWPgk" role="2OqNvi">
                          <node concept="chp4Y" id="WJz9iAWTcw" role="cj9EA">
                            <ref role="cht4Q" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="BsUDl" id="WJz9iAWPgm" role="3uHU7B">
                  <ref role="37wK5l" node="WJz9iAWPgX" resolve="startsWithBulletSpace" />
                  <node concept="37vLTw" id="WJz9iAWPgn" role="37wK5m">
                    <ref role="3cqZAo" node="WJz9iAWPgq" resolve="l" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="WJz9iAWPgo" role="3cqZAp">
          <node concept="3clFbT" id="WJz9iAWPgp" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="WJz9iAWPgq" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="WJz9iAWPgr" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="WJz9iAWPgX" role="13h7CS">
      <property role="TrG5h" value="startsWithBulletSpace" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm6S6" id="WJz9iAXdgC" role="1B3o_S" />
      <node concept="10P_77" id="WJz9iAWPgZ" role="3clF45" />
      <node concept="3clFbS" id="WJz9iAWPh0" role="3clF47">
        <node concept="3cpWs8" id="WJz9iAWPh1" role="3cqZAp">
          <node concept="3cpWsn" id="WJz9iAWPh2" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3Tqbb2" id="WJz9iAWPh3" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
            </node>
            <node concept="1PxgMI" id="WJz9iAWPh4" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="WJz9iAWQFZ" role="3oSUPX">
                <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
              </node>
              <node concept="2OqwBi" id="WJz9iAWPh6" role="1m5AlR">
                <node concept="2OqwBi" id="WJz9iAWPh7" role="2Oq$k0">
                  <node concept="37vLTw" id="WJz9iAWPh8" role="2Oq$k0">
                    <ref role="3cqZAo" node="WJz9iAWPhB" resolve="l" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcpg" role="2OqNvi">
                    <ref role="37wK5l" node="WJz9iATjyN" resolve="getTextElements" />
                  </node>
                </node>
                <node concept="1uHKPH" id="WJz9iAWPha" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="WJz9iAWPhj" role="3cqZAp">
          <node concept="3clFbS" id="WJz9iAWPhk" role="3clFbx">
            <node concept="3cpWs6" id="WJz9iAWPhl" role="3cqZAp">
              <node concept="3clFbT" id="WJz9iAWPhm" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="WJz9iAWPhn" role="3clFbw">
            <node concept="37vLTw" id="WJz9iAWPho" role="2Oq$k0">
              <ref role="3cqZAo" node="WJz9iAWPh2" resolve="f" />
            </node>
            <node concept="3w_OXm" id="WJz9iAWPhp" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="WJz9iAWPhq" role="3cqZAp">
          <node concept="1Wc70l" id="WJz9iAWPhr" role="3cqZAk">
            <node concept="2OqwBi" id="WJz9iAWSpt" role="3uHU7w">
              <node concept="2OqwBi" id="WJz9iAWRIW" role="2Oq$k0">
                <node concept="37vLTw" id="WJz9iAWRt5" role="2Oq$k0">
                  <ref role="3cqZAo" node="WJz9iAWPh2" resolve="f" />
                </node>
                <node concept="YCak7" id="WJz9iAWS0D" role="2OqNvi" />
              </node>
              <node concept="3x8VRR" id="WJz9iAWSB3" role="2OqNvi" />
            </node>
            <node concept="1Wc70l" id="7q4YwcdKvOZ" role="3uHU7B">
              <node concept="3y3z36" id="7q4YwcdKwSQ" role="3uHU7B">
                <node concept="10Nm6u" id="7q4YwcdKxa0" role="3uHU7w" />
                <node concept="2OqwBi" id="7q4YwcdKwp3" role="3uHU7B">
                  <node concept="37vLTw" id="7q4YwcdKw85" role="2Oq$k0">
                    <ref role="3cqZAo" node="WJz9iAWPh2" resolve="f" />
                  </node>
                  <node concept="3TrcHB" id="7q4YwcdKwue" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="WJz9iAWPhx" role="3uHU7w">
                <node concept="2OqwBi" id="WJz9iAWPhy" role="2Oq$k0">
                  <node concept="37vLTw" id="WJz9iAWPhz" role="2Oq$k0">
                    <ref role="3cqZAo" node="WJz9iAWPh2" resolve="f" />
                  </node>
                  <node concept="3TrcHB" id="WJz9iAX8rM" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                  </node>
                </node>
                <node concept="liA8E" id="WJz9iAWPh_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="WJz9iAWPhA" role="37wK5m">
                    <property role="Xl_RC" value="[*|-]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WJz9iAWPhB" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="WJz9iAWPhC" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="WJz9iAWPfw" role="13h7CW">
      <node concept="3clFbS" id="WJz9iAWPfx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2iG$EWuUhqD" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <ref role="13i0hy" node="2iG$EWuTXuU" resolve="wrapTextForClipboard" />
      <node concept="3Tm1VV" id="2iG$EWuUhqE" role="1B3o_S" />
      <node concept="3clFbS" id="2iG$EWuUhqL" role="3clF47">
        <node concept="3clFbF" id="2iG$EWuUhxJ" role="3cqZAp">
          <node concept="3cpWs3" id="2iG$EWuUhxK" role="3clFbG">
            <node concept="37vLTw" id="2iG$EWuUhxL" role="3uHU7w">
              <ref role="3cqZAo" node="2iG$EWuUhqM" resolve="text" />
            </node>
            <node concept="3cpWs3" id="2iG$EWuUhxM" role="3uHU7B">
              <node concept="2OqwBi" id="2iG$EWuUhxN" role="3uHU7B">
                <node concept="13iPFW" id="2iG$EWuUhxO" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORcpi" role="2OqNvi">
                  <ref role="37wK5l" node="fcFkhVQ0er" resolve="getIndentString" />
                </node>
              </node>
              <node concept="Xl_RD" id="2iG$EWuUhxQ" role="3uHU7w">
                <property role="Xl_RC" value="* " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2iG$EWuUhqM" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2iG$EWuUhqN" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="2iG$EWuUhqO" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7q4Ywce6DdQ" role="13h7CS">
      <property role="TrG5h" value="createParagraphInstance" />
      <ref role="13i0hy" node="7q4Ywce6rMl" resolve="createParagraphInstance" />
      <node concept="3Tm1VV" id="7q4Ywce6DdR" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce6DdY" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6DjO" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6DjE" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6DpC" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6DpE" role="3zrR0E">
                <ref role="ehGHo" to="zqge:2HIX00NsA33" resolve="BulletPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7q4Ywce6DdZ" role="3clF45">
        <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce9iqz" role="13h7CS">
      <property role="TrG5h" value="initializeFromParagraps" />
      <ref role="13i0hy" node="2iG$EWuZbnH" resolve="initializeFromParagraphs" />
      <node concept="3Tm1VV" id="7q4Ywce9iqA" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce9iun" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce9iuv" role="3cqZAp">
          <node concept="2OqwBi" id="7q4Ywce9ius" role="3clFbG">
            <node concept="13iAh5" id="7q4Ywce9iut" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcpk" role="2OqNvi">
              <ref role="37wK5l" node="2iG$EWuZbnH" resolve="initializeFromParagraphs" />
              <node concept="37vLTw" id="70OdufORcpm" role="37wK5m">
                <ref role="3cqZAo" node="7q4Ywce9iuo" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7q4Ywce9iUw" role="3cqZAp">
          <node concept="3clFbS" id="7q4Ywce9iUy" role="3clFbx">
            <node concept="3clFbF" id="7q4Ywce9jgw" role="3cqZAp">
              <node concept="37vLTI" id="7q4Ywce9kVX" role="3clFbG">
                <node concept="2OqwBi" id="7q4Ywce9m0I" role="37vLTx">
                  <node concept="1PxgMI" id="7q4Ywce9lNH" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7q4Ywce9lR0" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="7q4Ywce9kWf" role="1m5AlR">
                      <ref role="3cqZAo" node="7q4Ywce9iuo" resolve="l" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7q4Ywce9mr6" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7q4Ywce9jpa" role="37vLTJ">
                  <node concept="13iPFW" id="7q4Ywce9jgv" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7q4Ywce9jD1" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7q4Ywce9iZC" role="3clFbw">
            <node concept="37vLTw" id="7q4Ywce9iVC" role="2Oq$k0">
              <ref role="3cqZAo" node="7q4Ywce9iuo" resolve="l" />
            </node>
            <node concept="1mIQ4w" id="7q4Ywce9j29" role="2OqNvi">
              <node concept="chp4Y" id="7q4Ywce9mFo" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7q4Ywce9iuo" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="7q4Ywce9iup" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="3cqZAl" id="7q4Ywce9iuq" role="3clF45" />
    </node>
    <node concept="13i0hz" id="647WjQavO14" role="13h7CS">
      <property role="TrG5h" value="isFirstLine" />
      <ref role="13i0hy" node="647WjQal7cZ" resolve="isFirstLine" />
      <node concept="3clFbS" id="647WjQavO15" role="3clF47">
        <node concept="3cpWs6" id="647WjQavO16" role="3cqZAp">
          <node concept="3clFbC" id="647WjQavO17" role="3cqZAk">
            <node concept="3cmrfG" id="647WjQavO18" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="647WjQavO19" role="3uHU7B">
              <node concept="13iPFW" id="647WjQavO1a" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORcpn" role="2OqNvi">
                <ref role="37wK5l" node="6pDt4TBBQHh" resolve="calculatePosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="647WjQavO1c" role="3clF45" />
      <node concept="3Tm1VV" id="647WjQavO1d" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="647WjQavO1e" role="13h7CS">
      <property role="TrG5h" value="isLastLine" />
      <ref role="13i0hy" node="647WjQalOgm" resolve="isLastLine" />
      <node concept="3clFbS" id="647WjQavO1f" role="3clF47">
        <node concept="3cpWs8" id="6pDt4TAzWWQ" role="3cqZAp">
          <node concept="3cpWsn" id="6pDt4TAzWWT" role="3cpWs9">
            <property role="TrG5h" value="nextSibling" />
            <node concept="3Tqbb2" id="6pDt4TAzWWO" role="1tU5fm" />
            <node concept="2OqwBi" id="6pDt4TA$77g" role="33vP2m">
              <node concept="13iPFW" id="6pDt4TA$5z$" role="2Oq$k0" />
              <node concept="YCak7" id="6pDt4TA$cbd" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6pDt4TA$euB" role="3cqZAp">
          <node concept="3clFbS" id="6pDt4TA$euD" role="3clFbx">
            <node concept="3clFbJ" id="6pDt4TA$q52" role="3cqZAp">
              <node concept="3clFbS" id="6pDt4TA$q54" role="3clFbx">
                <node concept="3clFbJ" id="6pDt4TA$KBt" role="3cqZAp">
                  <node concept="3clFbS" id="6pDt4TA$KBv" role="3clFbx">
                    <node concept="3cpWs6" id="6pDt4TA$SN1" role="3cqZAp">
                      <node concept="3clFbT" id="6pDt4TA$TXi" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6pDt4TA$Neb" role="3clFbw">
                    <node concept="37vLTw" id="6pDt4TA$LLP" role="2Oq$k0">
                      <ref role="3cqZAo" node="6pDt4TAzWWT" resolve="nextSibling" />
                    </node>
                    <node concept="1mIQ4w" id="6pDt4TA$OFI" role="2OqNvi">
                      <node concept="chp4Y" id="6pDt4TA$PR3" role="cj9EA">
                        <ref role="cht4Q" to="zqge:WJz9iAWEzU" resolve="BulletLine" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="6pDt4TA$V8o" role="9aQIa">
                    <node concept="3clFbS" id="6pDt4TA$V8p" role="9aQI4">
                      <node concept="3cpWs6" id="6pDt4TA$Wim" role="3cqZAp">
                        <node concept="3clFbT" id="6pDt4TA$Wiu" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6pDt4TA$Cwf" role="3clFbw">
                <node concept="2OqwBi" id="6pDt4TA$G6d" role="3uHU7w">
                  <node concept="13iPFW" id="6pDt4TA$E94" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6pDt4TA$HFL" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6pDt4TA$yQE" role="3uHU7B">
                  <node concept="1PxgMI" id="6pDt4TA$urQ" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="6pDt4TA$vMG" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="6pDt4TA$t3R" role="1m5AlR">
                      <ref role="3cqZAo" node="6pDt4TAzWWT" resolve="nextSibling" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6pDt4TA$$p_" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6pDt4TA_0rw" role="3cqZAp">
              <node concept="3clFbS" id="6pDt4TA_0ry" role="3clFbx">
                <node concept="3cpWs6" id="6pDt4TA_lzV" role="3cqZAp">
                  <node concept="3clFbT" id="6pDt4TA_l$4" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="6pDt4TA_dc7" role="3clFbw">
                <node concept="2OqwBi" id="6pDt4TA_iwk" role="3uHU7w">
                  <node concept="13iPFW" id="6pDt4TA_eQx" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6pDt4TA_koO" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6pDt4TA_7w9" role="3uHU7B">
                  <node concept="1PxgMI" id="6pDt4TA_32X" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="6pDt4TA_6dI" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="6pDt4TA_1BF" role="1m5AlR">
                      <ref role="3cqZAo" node="6pDt4TAzWWT" resolve="nextSibling" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6pDt4TA_94A" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6pDt4TA$mAU" role="3clFbw">
            <node concept="37vLTw" id="6pDt4TA$fDn" role="2Oq$k0">
              <ref role="3cqZAo" node="6pDt4TAzWWT" resolve="nextSibling" />
            </node>
            <node concept="1mIQ4w" id="6pDt4TA$nLW" role="2OqNvi">
              <node concept="chp4Y" id="6pDt4TA$oVu" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6pDt4TA_mK6" role="9aQIa">
            <node concept="3clFbS" id="6pDt4TA_mK7" role="9aQI4">
              <node concept="3cpWs6" id="6pDt4TA_pIc" role="3cqZAp">
                <node concept="3clFbT" id="6pDt4TA_qT6" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6pDt4TBCy_b" role="3cqZAp">
          <node concept="3clFbT" id="6pDt4TBCyAz" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="647WjQavO27" role="3clF45" />
      <node concept="3Tm1VV" id="647WjQavO28" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="60UJ0IsnDCD">
    <ref role="13h7C2" to="zqge:60UJ0Isn_12" resolve="NumberedLine" />
    <node concept="13i0hz" id="60UJ0Iso0yR" role="13h7CS">
      <property role="TrG5h" value="canBeTurnedToNumberedLine" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="60UJ0Iso0yS" role="1B3o_S" />
      <node concept="10P_77" id="60UJ0Iso0yT" role="3clF45" />
      <node concept="3clFbS" id="60UJ0Iso0yU" role="3clF47">
        <node concept="3clFbJ" id="60UJ0Iso0yV" role="3cqZAp">
          <node concept="2OqwBi" id="60UJ0Iso0yW" role="3clFbw">
            <node concept="2OqwBi" id="60UJ0Iso0yX" role="2Oq$k0">
              <node concept="37vLTw" id="60UJ0Iso0yY" role="2Oq$k0">
                <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
              </node>
              <node concept="2yIwOk" id="60UJ0Iso0yZ" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="60UJ0Iso0z0" role="2OqNvi">
              <node concept="chp4Y" id="60UJ0Iso0z1" role="3QVz_e">
                <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="60UJ0Iso0z2" role="3clFbx">
            <node concept="3cpWs6" id="60UJ0Iso0z3" role="3cqZAp">
              <node concept="1Wc70l" id="60UJ0Iso0z4" role="3cqZAk">
                <node concept="1eOMI4" id="60UJ0Iso0z5" role="3uHU7w">
                  <node concept="22lmx$" id="60UJ0Iso0z6" role="1eOMHV">
                    <node concept="1Wc70l" id="60UJ0Iso0z7" role="3uHU7w">
                      <node concept="BsUDl" id="60UJ0Iso0z8" role="3uHU7w">
                        <ref role="37wK5l" node="60UJ0IsnXdF" resolve="startsWithNumberSpace" />
                        <node concept="1PxgMI" id="60UJ0Iso0z9" role="37wK5m">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="60UJ0Iso0za" role="3oSUPX">
                            <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                          </node>
                          <node concept="2OqwBi" id="60UJ0Iso0zb" role="1m5AlR">
                            <node concept="37vLTw" id="60UJ0Iso0zc" role="2Oq$k0">
                              <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
                            </node>
                            <node concept="YCak7" id="60UJ0Iso0zd" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="60UJ0Iso0ze" role="3uHU7B">
                        <node concept="2OqwBi" id="60UJ0Iso0zf" role="2Oq$k0">
                          <node concept="2OqwBi" id="60UJ0Iso0zg" role="2Oq$k0">
                            <node concept="37vLTw" id="60UJ0Iso0zh" role="2Oq$k0">
                              <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
                            </node>
                            <node concept="YCak7" id="60UJ0Iso0zi" role="2OqNvi" />
                          </node>
                          <node concept="2yIwOk" id="60UJ0Iso0zj" role="2OqNvi" />
                        </node>
                        <node concept="3O6GUB" id="60UJ0Iso0zk" role="2OqNvi">
                          <node concept="chp4Y" id="60UJ0Iso0zl" role="3QVz_e">
                            <ref role="cht4Q" to="zqge:2cLqkTm6J5A" resolve="Line" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="60UJ0Iso0zm" role="3uHU7B">
                      <node concept="2OqwBi" id="60UJ0Iso0zn" role="3uHU7B">
                        <node concept="2OqwBi" id="60UJ0Iso0zo" role="2Oq$k0">
                          <node concept="37vLTw" id="60UJ0Iso0zp" role="2Oq$k0">
                            <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
                          </node>
                          <node concept="YBYNd" id="60UJ0Iso0zq" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="60UJ0Iso0zr" role="2OqNvi">
                          <node concept="chp4Y" id="60UJ0Iso5c7" role="cj9EA">
                            <ref role="cht4Q" to="zqge:60UJ0Isn_12" resolve="NumberedLine" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="60UJ0Iso0zt" role="3uHU7w">
                        <node concept="2OqwBi" id="60UJ0Iso0zu" role="2Oq$k0">
                          <node concept="37vLTw" id="60UJ0Iso0zv" role="2Oq$k0">
                            <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
                          </node>
                          <node concept="YCak7" id="60UJ0Iso0zw" role="2OqNvi" />
                        </node>
                        <node concept="1mIQ4w" id="60UJ0Iso0zx" role="2OqNvi">
                          <node concept="chp4Y" id="60UJ0Iso5jm" role="cj9EA">
                            <ref role="cht4Q" to="zqge:60UJ0Isn_12" resolve="NumberedLine" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="BsUDl" id="60UJ0Iso0zz" role="3uHU7B">
                  <ref role="37wK5l" node="60UJ0IsnXdF" resolve="startsWithNumberSpace" />
                  <node concept="37vLTw" id="60UJ0Iso0z$" role="37wK5m">
                    <ref role="3cqZAo" node="60UJ0Iso0zB" resolve="l" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="60UJ0Iso0z_" role="3cqZAp">
          <node concept="3clFbT" id="60UJ0Iso0zA" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="60UJ0Iso0zB" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="60UJ0Iso0zC" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="60UJ0IsnXdF" role="13h7CS">
      <property role="TrG5h" value="startsWithNumberSpace" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm6S6" id="60UJ0IsnXdG" role="1B3o_S" />
      <node concept="10P_77" id="60UJ0IsnXdH" role="3clF45" />
      <node concept="3clFbS" id="60UJ0IsnXdI" role="3clF47">
        <node concept="3cpWs8" id="60UJ0IsnXdJ" role="3cqZAp">
          <node concept="3cpWsn" id="60UJ0IsnXdK" role="3cpWs9">
            <property role="TrG5h" value="f" />
            <node concept="3Tqbb2" id="60UJ0IsnXdL" role="1tU5fm">
              <ref role="ehGHo" to="zqge:8D0iRqSPW4" resolve="Word" />
            </node>
            <node concept="1PxgMI" id="60UJ0IsnXdM" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="60UJ0IsnYmn" role="3oSUPX">
                <ref role="cht4Q" to="zqge:8D0iRqSPW4" resolve="Word" />
              </node>
              <node concept="2OqwBi" id="60UJ0IsnXdO" role="1m5AlR">
                <node concept="2OqwBi" id="60UJ0IsnXdP" role="2Oq$k0">
                  <node concept="37vLTw" id="60UJ0IsnXdQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="60UJ0IsnXel" resolve="l" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcpp" role="2OqNvi">
                    <ref role="37wK5l" node="WJz9iATjyN" resolve="getTextElements" />
                  </node>
                </node>
                <node concept="1uHKPH" id="60UJ0IsnXdS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="60UJ0IsnXe1" role="3cqZAp">
          <node concept="3clFbS" id="60UJ0IsnXe2" role="3clFbx">
            <node concept="3cpWs6" id="60UJ0IsnXe3" role="3cqZAp">
              <node concept="3clFbT" id="60UJ0IsnXe4" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="60UJ0IsnXe5" role="3clFbw">
            <node concept="37vLTw" id="60UJ0IsnXe6" role="2Oq$k0">
              <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
            </node>
            <node concept="3w_OXm" id="60UJ0IsnXe7" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="60UJ0Issp8V" role="3cqZAp">
          <node concept="3cpWsn" id="60UJ0Issp8W" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="10P_77" id="60UJ0IssnVH" role="1tU5fm" />
            <node concept="1Wc70l" id="60UJ0Issp8X" role="33vP2m">
              <node concept="2OqwBi" id="60UJ0Issp8Y" role="3uHU7w">
                <node concept="2OqwBi" id="60UJ0Issp8Z" role="2Oq$k0">
                  <node concept="37vLTw" id="60UJ0Issp90" role="2Oq$k0">
                    <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
                  </node>
                  <node concept="YCak7" id="60UJ0Issp91" role="2OqNvi" />
                </node>
                <node concept="3x8VRR" id="60UJ0Issp92" role="2OqNvi" />
              </node>
              <node concept="1Wc70l" id="60UJ0Issp93" role="3uHU7B">
                <node concept="2OqwBi" id="60UJ0Issp94" role="3uHU7w">
                  <node concept="2OqwBi" id="60UJ0Issp95" role="2Oq$k0">
                    <node concept="2OqwBi" id="60UJ0Issp96" role="2Oq$k0">
                      <node concept="37vLTw" id="60UJ0Issp97" role="2Oq$k0">
                        <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
                      </node>
                      <node concept="3TrcHB" id="60UJ0Issp98" role="2OqNvi">
                        <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                      </node>
                    </node>
                    <node concept="liA8E" id="60UJ0Issp99" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                      <node concept="3cmrfG" id="60UJ0Issp9a" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3cmrfG" id="60UJ0Issp9b" role="37wK5m">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="60UJ0Issp9c" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="60UJ0Issp9d" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="60UJ0Issp9e" role="3uHU7B">
                  <node concept="1Wc70l" id="7q4YwcdKRSP" role="3uHU7B">
                    <node concept="3y3z36" id="7q4YwcdKTXe" role="3uHU7B">
                      <node concept="10Nm6u" id="7q4YwcdKV0W" role="3uHU7w" />
                      <node concept="2OqwBi" id="7q4YwcdKTd5" role="3uHU7B">
                        <node concept="37vLTw" id="7q4YwcdKSSg" role="2Oq$k0">
                          <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
                        </node>
                        <node concept="3TrcHB" id="7q4YwcdKTw7" role="2OqNvi">
                          <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="60UJ0Issp9f" role="3uHU7w">
                      <node concept="3cmrfG" id="60UJ0Issp9g" role="3uHU7w">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="2OqwBi" id="60UJ0Issp9h" role="3uHU7B">
                        <node concept="2OqwBi" id="60UJ0Issp9i" role="2Oq$k0">
                          <node concept="37vLTw" id="60UJ0Issp9j" role="2Oq$k0">
                            <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
                          </node>
                          <node concept="3TrcHB" id="60UJ0Issp9k" role="2OqNvi">
                            <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                          </node>
                        </node>
                        <node concept="liA8E" id="60UJ0Issp9l" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="60UJ0Issp9m" role="3uHU7w">
                    <node concept="2OqwBi" id="60UJ0Issp9n" role="2Oq$k0">
                      <node concept="2OqwBi" id="60UJ0Issp9o" role="2Oq$k0">
                        <node concept="37vLTw" id="60UJ0Issp9p" role="2Oq$k0">
                          <ref role="3cqZAo" node="60UJ0IsnXdK" resolve="f" />
                        </node>
                        <node concept="3TrcHB" id="60UJ0Issp9q" role="2OqNvi">
                          <ref role="3TsBF5" to="zqge:8D0iRqSPW5" resolve="value" />
                        </node>
                      </node>
                      <node concept="liA8E" id="60UJ0Issp9r" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cmrfG" id="60UJ0Issp9s" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cmrfG" id="60UJ0Issp9t" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="60UJ0Issp9u" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                      <node concept="Xl_RD" id="60UJ0Issp9v" role="37wK5m">
                        <property role="Xl_RC" value="[0-9]" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="60UJ0IsnXe8" role="3cqZAp">
          <node concept="37vLTw" id="60UJ0Issp9w" role="3cqZAk">
            <ref role="3cqZAo" node="60UJ0Issp8W" resolve="b" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="60UJ0IsnXel" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="60UJ0IsnXem" role="1tU5fm">
          <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="60UJ0IsnDCE" role="13h7CW">
      <node concept="3clFbS" id="60UJ0IsnDCF" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2iG$EWuUo9$" role="13h7CS">
      <property role="TrG5h" value="wrapTextForClipboard" />
      <ref role="13i0hy" node="2iG$EWuTXuU" resolve="wrapTextForClipboard" />
      <node concept="3Tm1VV" id="2iG$EWuUo9_" role="1B3o_S" />
      <node concept="3clFbS" id="2iG$EWuUo9G" role="3clF47">
        <node concept="3clFbF" id="2iG$EWuUpcI" role="3cqZAp">
          <node concept="3cpWs3" id="2iG$EWuUpcJ" role="3clFbG">
            <node concept="37vLTw" id="2iG$EWuUpcK" role="3uHU7w">
              <ref role="3cqZAo" node="2iG$EWuUo9H" resolve="text" />
            </node>
            <node concept="3cpWs3" id="2iG$EWuUpcL" role="3uHU7B">
              <node concept="Xl_RD" id="2iG$EWuUpcM" role="3uHU7w">
                <property role="Xl_RC" value=". " />
              </node>
              <node concept="3cpWs3" id="2iG$EWuUpcN" role="3uHU7B">
                <node concept="2OqwBi" id="2iG$EWuUpcO" role="3uHU7B">
                  <node concept="13iPFW" id="2iG$EWuUpcP" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcpr" role="2OqNvi">
                    <ref role="37wK5l" node="fcFkhVQ0er" resolve="getIndentString" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6N0oV4SLI$Q" role="3uHU7w">
                  <node concept="13iPFW" id="6N0oV4SLIcm" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORcpt" role="2OqNvi">
                    <ref role="37wK5l" node="6pDt4TBBQHh" resolve="calculatePosition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2iG$EWuUo9H" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="2iG$EWuUo9I" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="2iG$EWuUo9J" role="3clF45" />
    </node>
    <node concept="13i0hz" id="7q4Ywce6ADq" role="13h7CS">
      <property role="TrG5h" value="createParagraphInstance" />
      <ref role="13i0hy" node="7q4Ywce6rMl" resolve="createParagraphInstance" />
      <node concept="3Tm1VV" id="7q4Ywce6ADr" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce6ADy" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce6Cu_" role="3cqZAp">
          <node concept="2ShNRf" id="7q4Ywce6Cur" role="3clFbG">
            <node concept="3zrR0B" id="7q4Ywce6C$p" role="2ShVmc">
              <node concept="3Tqbb2" id="7q4Ywce6C$r" role="3zrR0E">
                <ref role="ehGHo" to="zqge:5QuCpoxy2bF" resolve="NumberedPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="7q4Ywce6ADz" role="3clF45">
        <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
      </node>
    </node>
    <node concept="13i0hz" id="7q4Ywce9pg4" role="13h7CS">
      <property role="TrG5h" value="initializeFromParagraps" />
      <ref role="13i0hy" node="2iG$EWuZbnH" resolve="initializeFromParagraphs" />
      <node concept="3Tm1VV" id="7q4Ywce9pg7" role="1B3o_S" />
      <node concept="3clFbS" id="7q4Ywce9pjS" role="3clF47">
        <node concept="3clFbF" id="7q4Ywce9pk0" role="3cqZAp">
          <node concept="2OqwBi" id="7q4Ywce9pjX" role="3clFbG">
            <node concept="13iAh5" id="7q4Ywce9pjY" role="2Oq$k0" />
            <node concept="3zqWPK" id="70OdufORcpv" role="2OqNvi">
              <ref role="37wK5l" node="2iG$EWuZbnH" resolve="initializeFromParagraphs" />
              <node concept="37vLTw" id="70OdufORcpx" role="37wK5m">
                <ref role="3cqZAo" node="7q4Ywce9pjT" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7q4Ywce9qiZ" role="3cqZAp">
          <node concept="3clFbS" id="7q4Ywce9qj0" role="3clFbx">
            <node concept="3clFbF" id="7q4Ywce9qj1" role="3cqZAp">
              <node concept="37vLTI" id="7q4Ywce9qj2" role="3clFbG">
                <node concept="2OqwBi" id="7q4Ywce9qj3" role="37vLTx">
                  <node concept="1PxgMI" id="7q4Ywce9qj4" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7q4Ywce9qj5" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="7q4Ywce9qj6" role="1m5AlR">
                      <ref role="3cqZAo" node="7q4Ywce9pjT" resolve="l" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7q4Ywce9qj7" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7q4Ywce9qj8" role="37vLTJ">
                  <node concept="13iPFW" id="7q4Ywce9qj9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7q4Ywce9qja" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7q4Ywce9qjb" role="3clFbw">
            <node concept="37vLTw" id="7q4Ywce9qjc" role="2Oq$k0">
              <ref role="3cqZAo" node="7q4Ywce9pjT" resolve="l" />
            </node>
            <node concept="1mIQ4w" id="7q4Ywce9qjd" role="2OqNvi">
              <node concept="chp4Y" id="7q4Ywce9qje" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7q4Ywce9pjT" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3Tqbb2" id="7q4Ywce9pjU" role="1tU5fm">
          <ref role="ehGHo" to="zqge:7Vz6ZmoXeMu" resolve="Paragraph" />
        </node>
      </node>
      <node concept="3cqZAl" id="7q4Ywce9pjV" role="3clF45" />
    </node>
    <node concept="13i0hz" id="647WjQavuAK" role="13h7CS">
      <property role="TrG5h" value="isFirstLine" />
      <ref role="13i0hy" node="647WjQal7cZ" resolve="isFirstLine" />
      <node concept="3clFbS" id="647WjQavuAN" role="3clF47">
        <node concept="3cpWs6" id="647WjQav$Bx" role="3cqZAp">
          <node concept="3clFbC" id="647WjQav$By" role="3cqZAk">
            <node concept="3cmrfG" id="647WjQav$Bz" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="647WjQav$B$" role="3uHU7B">
              <node concept="13iPFW" id="647WjQav$B_" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORcpy" role="2OqNvi">
                <ref role="37wK5l" node="6pDt4TBBQHh" resolve="calculatePosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="647WjQavuQ3" role="3clF45" />
      <node concept="3Tm1VV" id="647WjQavuQ4" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="6pDt4TARHaG" role="13h7CS">
      <property role="TrG5h" value="isLastLine" />
      <ref role="13i0hy" node="647WjQalOgm" resolve="isLastLine" />
      <node concept="3clFbS" id="6pDt4TARHaH" role="3clF47">
        <node concept="3cpWs8" id="6pDt4TARHaI" role="3cqZAp">
          <node concept="3cpWsn" id="6pDt4TARHaJ" role="3cpWs9">
            <property role="TrG5h" value="nextSibling" />
            <node concept="3Tqbb2" id="6pDt4TARHaK" role="1tU5fm" />
            <node concept="2OqwBi" id="6pDt4TARHaL" role="33vP2m">
              <node concept="13iPFW" id="6pDt4TARHaM" role="2Oq$k0" />
              <node concept="YCak7" id="6pDt4TARHaN" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6pDt4TARHaO" role="3cqZAp">
          <node concept="3clFbS" id="6pDt4TARHaP" role="3clFbx">
            <node concept="3clFbJ" id="6pDt4TARHaQ" role="3cqZAp">
              <node concept="3clFbS" id="6pDt4TARHaR" role="3clFbx">
                <node concept="3clFbJ" id="6pDt4TARHaS" role="3cqZAp">
                  <node concept="3clFbS" id="6pDt4TARHaT" role="3clFbx">
                    <node concept="3cpWs6" id="6pDt4TARHaU" role="3cqZAp">
                      <node concept="3clFbT" id="6pDt4TARHaV" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6pDt4TARHaW" role="3clFbw">
                    <node concept="37vLTw" id="6pDt4TARHaX" role="2Oq$k0">
                      <ref role="3cqZAo" node="6pDt4TARHaJ" resolve="nextSibling" />
                    </node>
                    <node concept="1mIQ4w" id="6pDt4TARHaY" role="2OqNvi">
                      <node concept="chp4Y" id="6pDt4TARHaZ" role="cj9EA">
                        <ref role="cht4Q" to="zqge:60UJ0Isn_12" resolve="NumberedLine" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="6pDt4TARHb0" role="9aQIa">
                    <node concept="3clFbS" id="6pDt4TARHb1" role="9aQI4">
                      <node concept="3cpWs6" id="6pDt4TARHb2" role="3cqZAp">
                        <node concept="3clFbT" id="6pDt4TARHb3" role="3cqZAk">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6pDt4TARHb4" role="3clFbw">
                <node concept="2OqwBi" id="6pDt4TARHb5" role="3uHU7w">
                  <node concept="13iPFW" id="6pDt4TARHb6" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6pDt4TARHb7" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6pDt4TARHb8" role="3uHU7B">
                  <node concept="1PxgMI" id="6pDt4TARHb9" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="6pDt4TARHba" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="6pDt4TARHbb" role="1m5AlR">
                      <ref role="3cqZAo" node="6pDt4TARHaJ" resolve="nextSibling" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6pDt4TARHbc" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6pDt4TARHbd" role="3cqZAp">
              <node concept="3clFbS" id="6pDt4TARHbe" role="3clFbx">
                <node concept="3cpWs6" id="6pDt4TARHbf" role="3cqZAp">
                  <node concept="3clFbT" id="6pDt4TARHbg" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="6pDt4TARHbh" role="3clFbw">
                <node concept="2OqwBi" id="6pDt4TARHbi" role="3uHU7w">
                  <node concept="13iPFW" id="6pDt4TARHbj" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6pDt4TARHbk" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6pDt4TARHbl" role="3uHU7B">
                  <node concept="1PxgMI" id="6pDt4TARHbm" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="6pDt4TARHbn" role="3oSUPX">
                      <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
                    </node>
                    <node concept="37vLTw" id="6pDt4TARHbo" role="1m5AlR">
                      <ref role="3cqZAo" node="6pDt4TARHaJ" resolve="nextSibling" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="6pDt4TARHbp" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:4ruP0NLeIrV" resolve="indentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6pDt4TARHbq" role="3clFbw">
            <node concept="37vLTw" id="6pDt4TARHbr" role="2Oq$k0">
              <ref role="3cqZAo" node="6pDt4TARHaJ" resolve="nextSibling" />
            </node>
            <node concept="1mIQ4w" id="6pDt4TARHbs" role="2OqNvi">
              <node concept="chp4Y" id="6pDt4TARHbt" role="cj9EA">
                <ref role="cht4Q" to="zqge:4ruP0NLeIr4" resolve="IndentedPoint" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6pDt4TARHbu" role="9aQIa">
            <node concept="3clFbS" id="6pDt4TARHbv" role="9aQI4">
              <node concept="3cpWs6" id="6pDt4TARHbw" role="3cqZAp">
                <node concept="3clFbT" id="6pDt4TARHbx" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6pDt4TBB9LZ" role="3cqZAp">
          <node concept="3clFbT" id="6pDt4TBB9Q3" role="3cqZAk" />
        </node>
      </node>
      <node concept="10P_77" id="6pDt4TARHdm" role="3clF45" />
      <node concept="3Tm1VV" id="6pDt4TARHdn" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="6N0oV4ThUeH">
    <property role="3GE5qa" value="doc" />
    <ref role="13h7C2" to="zqge:6N0oV4ThMNB" resolve="TextNodeReference" />
    <node concept="13i0hz" id="6N0oV4ThUhC" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="fB3l81it7u" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="6N0oV4ThUhD" role="1B3o_S" />
      <node concept="3clFbS" id="6N0oV4ThUhE" role="3clF47">
        <node concept="3clFbF" id="6N0oV4ThUhF" role="3cqZAp">
          <node concept="2OqwBi" id="2jcE11Zzsrw" role="3clFbG">
            <node concept="2OqwBi" id="2jcE11Zzqat" role="2Oq$k0">
              <node concept="13iPFW" id="2jcE11ZzpYr" role="2Oq$k0" />
              <node concept="3TrEf2" id="2jcE11Zzs1e" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:rh3Y2YeW$V" resolve="reference" />
              </node>
            </node>
            <node concept="3TrcHB" id="2jcE11ZzsEW" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="6N0oV4ThUhQ" role="3clF45" />
    </node>
    <node concept="13hLZK" id="6N0oV4ThUeI" role="13h7CW">
      <node concept="3clFbS" id="6N0oV4ThUeJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="GWtNbsAu6D">
    <property role="3GE5qa" value="doc" />
    <ref role="13h7C2" to="zqge:GWtNbsAtfA" resolve="SingleLineHtmlTag" />
    <node concept="13hLZK" id="GWtNbsAu6E" role="13h7CW">
      <node concept="3clFbS" id="GWtNbsAu6F" role="2VODD2">
        <node concept="3cpWs8" id="3srVMGUGeJO" role="3cqZAp">
          <node concept="3cpWsn" id="3srVMGUGeJP" role="3cpWs9">
            <property role="TrG5h" value="l" />
            <node concept="3Tqbb2" id="3srVMGUGeJz" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
            </node>
            <node concept="2ShNRf" id="3srVMGUGeJQ" role="33vP2m">
              <node concept="3zrR0B" id="3srVMGUGeJR" role="2ShVmc">
                <node concept="3Tqbb2" id="3srVMGUGeJS" role="3zrR0E">
                  <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3srVMGUHF8h" role="3cqZAp">
          <node concept="37vLTI" id="3srVMGUHFI8" role="3clFbG">
            <node concept="37vLTw" id="3srVMGUHFIs" role="37vLTx">
              <ref role="3cqZAo" node="3srVMGUGeJP" resolve="l" />
            </node>
            <node concept="2OqwBi" id="3srVMGUHFiH" role="37vLTJ">
              <node concept="13iPFW" id="3srVMGUHF8f" role="2Oq$k0" />
              <node concept="3TrEf2" id="3srVMGUHFxD" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:1q3yNZeA$$y" resolve="content" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="GWtNbsAu6W" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="fB3l81it7u" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="GWtNbsAu6X" role="1B3o_S" />
      <node concept="3clFbS" id="GWtNbsAu70" role="3clF47">
        <node concept="3cpWs8" id="GWtNbsABoI" role="3cqZAp">
          <node concept="3cpWsn" id="GWtNbsABoL" role="3cpWs9">
            <property role="TrG5h" value="returnString" />
            <node concept="17QB3L" id="GWtNbsABoH" role="1tU5fm" />
            <node concept="3cpWs3" id="GWtNbsAKtw" role="33vP2m">
              <node concept="Xl_RD" id="GWtNbsAKJZ" role="3uHU7w">
                <property role="Xl_RC" value="&gt;" />
              </node>
              <node concept="3cpWs3" id="GWtNbsAEp6" role="3uHU7B">
                <node concept="Xl_RD" id="GWtNbsABpI" role="3uHU7B">
                  <property role="Xl_RC" value="&lt;" />
                </node>
                <node concept="2OqwBi" id="GWtNbsAF1u" role="3uHU7w">
                  <node concept="13iPFW" id="GWtNbsAEDh" role="2Oq$k0" />
                  <node concept="3TrcHB" id="GWtNbsAFf_" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:5M4a$b5iL2Q" resolve="tagName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="GWtNbsAL4h" role="3cqZAp">
          <node concept="2GrKxI" id="GWtNbsAL4j" role="2Gsz3X">
            <property role="TrG5h" value="content" />
          </node>
          <node concept="2OqwBi" id="GWtNbsAWly" role="2GsD0m">
            <node concept="2OqwBi" id="GWtNbsAON3" role="2Oq$k0">
              <node concept="13iPFW" id="GWtNbsAOot" role="2Oq$k0" />
              <node concept="3TrEf2" id="45v$Upa8q$$" role="2OqNvi">
                <ref role="3Tt5mk" to="zqge:1q3yNZeA$$y" resolve="content" />
              </node>
            </node>
            <node concept="3Tsc0h" id="45v$Upa8qOr" role="2OqNvi">
              <ref role="3TtcxE" to="zqge:2cLqkTm6J5B" resolve="elements" />
            </node>
          </node>
          <node concept="3clFbS" id="GWtNbsAL4n" role="2LFqv$">
            <node concept="3clFbF" id="GWtNbsAPBW" role="3cqZAp">
              <node concept="d57v9" id="GWtNbsASqL" role="3clFbG">
                <node concept="2OqwBi" id="GWtNbsATFT" role="37vLTx">
                  <node concept="2GrUjf" id="GWtNbsASYW" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="GWtNbsAL4j" resolve="content" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORcp$" role="2OqNvi">
                    <ref role="37wK5l" node="fB3l81it7u" resolve="getTextualRepresentation" />
                  </node>
                </node>
                <node concept="37vLTw" id="GWtNbsAPBV" role="37vLTJ">
                  <ref role="3cqZAo" node="GWtNbsABoL" resolve="returnString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GWtNbsB0sk" role="3cqZAp">
          <node concept="d57v9" id="GWtNbsB3md" role="3clFbG">
            <node concept="37vLTw" id="GWtNbsB0si" role="37vLTJ">
              <ref role="3cqZAo" node="GWtNbsABoL" resolve="returnString" />
            </node>
            <node concept="3cpWs3" id="GWtNbsB3Y1" role="37vLTx">
              <node concept="Xl_RD" id="GWtNbsB3Y2" role="3uHU7w">
                <property role="Xl_RC" value="&gt;" />
              </node>
              <node concept="3cpWs3" id="GWtNbsB3Y3" role="3uHU7B">
                <node concept="Xl_RD" id="GWtNbsB3Y4" role="3uHU7B">
                  <property role="Xl_RC" value="&lt;/" />
                </node>
                <node concept="2OqwBi" id="GWtNbsB3Y5" role="3uHU7w">
                  <node concept="13iPFW" id="GWtNbsB3Y6" role="2Oq$k0" />
                  <node concept="3TrcHB" id="GWtNbsB3Y7" role="2OqNvi">
                    <ref role="3TsBF5" to="zqge:5M4a$b5iL2Q" resolve="tagName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="GWtNbsB52i" role="3cqZAp">
          <node concept="37vLTw" id="GWtNbsB5Rf" role="3cqZAk">
            <ref role="3cqZAo" node="GWtNbsABoL" resolve="returnString" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="GWtNbsAu71" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4qjHlOWQ7IX">
    <ref role="13h7C2" to="zqge:1zevWKa0GFG" resolve="IHoldComment" />
    <node concept="13hLZK" id="4qjHlOWQ7IY" role="13h7CW">
      <node concept="3clFbS" id="4qjHlOWQ7IZ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4qjHlOYe5Wx">
    <property role="3GE5qa" value="doc" />
    <ref role="13h7C2" to="zqge:6MMfM8JH7Fc" resolve="Header" />
    <node concept="13hLZK" id="4qjHlOYe5Wy" role="13h7CW">
      <node concept="3clFbS" id="4qjHlOYe5Wz" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="1fIPsahQttN">
    <property role="3GE5qa" value="doc" />
    <ref role="13h7C2" to="zqge:1fIPsahQswt" resolve="UniversalHtmlTag" />
    <node concept="13hLZK" id="1fIPsahQttO" role="13h7CW">
      <node concept="3clFbS" id="1fIPsahQttP" role="2VODD2">
        <node concept="3cpWs8" id="4qjHlOXHsAX" role="3cqZAp">
          <node concept="3cpWsn" id="4qjHlOXHsAY" role="3cpWs9">
            <property role="TrG5h" value="l" />
            <node concept="3Tqbb2" id="4qjHlOXHs$U" role="1tU5fm">
              <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
            </node>
            <node concept="2ShNRf" id="4qjHlOXHsAZ" role="33vP2m">
              <node concept="3zrR0B" id="4qjHlOXHsB0" role="2ShVmc">
                <node concept="3Tqbb2" id="4qjHlOXHsB1" role="3zrR0E">
                  <ref role="ehGHo" to="zqge:2cLqkTm6J5A" resolve="Line" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qjHlOXHk9D" role="3cqZAp">
          <node concept="2OqwBi" id="4qjHlOXHnKb" role="3clFbG">
            <node concept="2OqwBi" id="4qjHlOXHkOB" role="2Oq$k0">
              <node concept="13iPFW" id="4qjHlOXHk9B" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1fIPsahSf$t" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:1fIPsahQsSN" resolve="body" />
              </node>
            </node>
            <node concept="TSZUe" id="4qjHlOXHvyv" role="2OqNvi">
              <node concept="37vLTw" id="4qjHlOXHvAm" role="25WWJ7">
                <ref role="3cqZAo" node="4qjHlOXHsAY" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1fIPsahQtu6" role="13h7CS">
      <property role="TrG5h" value="getTextualRepresentation" />
      <ref role="13i0hy" node="fB3l81it7u" resolve="getTextualRepresentation" />
      <node concept="3Tm1VV" id="1fIPsahQtu7" role="1B3o_S" />
      <node concept="3clFbS" id="1fIPsahQtua" role="3clF47">
        <node concept="3clFbJ" id="4qjHlOXIplx" role="3cqZAp">
          <node concept="3clFbS" id="4qjHlOXIplz" role="3clFbx">
            <node concept="3cpWs6" id="4qjHlOXIy3P" role="3cqZAp">
              <node concept="3cpWs3" id="4qjHlOXIpib" role="3cqZAk">
                <node concept="Xl_RD" id="4qjHlOXIpie" role="3uHU7w">
                  <property role="Xl_RC" value="/&gt;" />
                </node>
                <node concept="3cpWs3" id="4qjHlOXIoHN" role="3uHU7B">
                  <node concept="Xl_RD" id="4qjHlOXImCQ" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;" />
                  </node>
                  <node concept="2OqwBi" id="4qjHlOXIoYO" role="3uHU7w">
                    <node concept="13iPFW" id="4qjHlOXIoIf" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4qjHlOXIpel" role="2OqNvi">
                      <ref role="3TsBF5" to="zqge:1fIPsahQswu" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4qjHlOXIr$g" role="3clFbw">
            <node concept="2OqwBi" id="4qjHlOXIppN" role="2Oq$k0">
              <node concept="13iPFW" id="4qjHlOXIpmw" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1fIPsahQwwh" role="2OqNvi">
                <ref role="3TtcxE" to="zqge:1fIPsahQsSN" resolve="body" />
              </node>
            </node>
            <node concept="1v1jN8" id="4qjHlOXIxk9" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4qjHlOXIy73" role="3cqZAp">
          <node concept="3cpWs3" id="4qjHlOXIL4h" role="3cqZAk">
            <node concept="Xl_RD" id="4qjHlOXIL4k" role="3uHU7w">
              <property role="Xl_RC" value="&gt;" />
            </node>
            <node concept="3cpWs3" id="4qjHlOXIKpe" role="3uHU7B">
              <node concept="3cpWs3" id="4qjHlOXIK3a" role="3uHU7B">
                <node concept="3cpWs3" id="4qjHlOXIyEW" role="3uHU7B">
                  <node concept="3cpWs3" id="4qjHlOXIy74" role="3uHU7B">
                    <node concept="3cpWs3" id="4qjHlOXIy76" role="3uHU7B">
                      <node concept="Xl_RD" id="4qjHlOXIy77" role="3uHU7B">
                        <property role="Xl_RC" value="&lt;" />
                      </node>
                      <node concept="2OqwBi" id="4qjHlOXIy78" role="3uHU7w">
                        <node concept="13iPFW" id="4qjHlOXIy79" role="2Oq$k0" />
                        <node concept="3TrcHB" id="4qjHlOXIy7a" role="2OqNvi">
                          <ref role="3TsBF5" to="zqge:1fIPsahQswu" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4qjHlOXIy75" role="3uHU7w">
                      <property role="Xl_RC" value="&gt;" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4qjHlOXI_hB" role="3uHU7w">
                    <node concept="2OqwBi" id="4qjHlOXIyTC" role="2Oq$k0">
                      <node concept="13iPFW" id="4qjHlOXIyHa" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="4qjHlOXIzvv" role="2OqNvi">
                        <ref role="3TtcxE" to="zqge:1fIPsahQsSN" resolve="body" />
                      </node>
                    </node>
                    <node concept="1MD8d$" id="4qjHlOXIC5f" role="2OqNvi">
                      <node concept="1bVj0M" id="4qjHlOXIC5h" role="23t8la">
                        <node concept="3clFbS" id="4qjHlOXIC5i" role="1bW5cS">
                          <node concept="3clFbF" id="4qjHlOXICfO" role="3cqZAp">
                            <node concept="3cpWs3" id="4qjHlOXICCK" role="3clFbG">
                              <node concept="2OqwBi" id="4qjHlOXICVf" role="3uHU7w">
                                <node concept="37vLTw" id="4qjHlOXICCN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4qjHlOXIC5l" resolve="it" />
                                </node>
                                <node concept="3zqWPK" id="70OdufORcpA" role="2OqNvi">
                                  <ref role="37wK5l" node="2iG$EWuTXv2" resolve="representAsText" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="4qjHlOXIJHM" role="3uHU7B">
                                <node concept="37vLTw" id="4qjHlOXICfN" role="3uHU7B">
                                  <ref role="3cqZAo" node="4qjHlOXIC5j" resolve="s" />
                                </node>
                                <node concept="1eOMI4" id="1fIPsahZIOP" role="3uHU7w">
                                  <node concept="3K4zz7" id="1fIPsahZDtj" role="1eOMHV">
                                    <node concept="Xl_RD" id="4qjHlOXIJMZ" role="3K4E3e">
                                      <property role="Xl_RC" value="\n" />
                                    </node>
                                    <node concept="Xl_RD" id="1fIPsahZI9V" role="3K4GZi">
                                      <property role="Xl_RC" value="" />
                                    </node>
                                    <node concept="2OqwBi" id="1fIPsahZEdS" role="3K4Cdx">
                                      <node concept="37vLTw" id="1fIPsahZDz9" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4qjHlOXIC5j" resolve="s" />
                                      </node>
                                      <node concept="17RvpY" id="1fIPsahZHJV" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4qjHlOXIC5j" role="1bW2Oz">
                          <property role="TrG5h" value="s" />
                          <node concept="2jxLKc" id="4qjHlOXIC5k" role="1tU5fm" />
                        </node>
                        <node concept="gl6BB" id="4qjHlOXIC5l" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4qjHlOXIC5m" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4qjHlOXIC9I" role="1MDeny">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="4qjHlOXIK8A" role="3uHU7w">
                  <property role="Xl_RC" value="&lt;/" />
                </node>
              </node>
              <node concept="2OqwBi" id="4qjHlOXIKD7" role="3uHU7w">
                <node concept="13iPFW" id="4qjHlOXIKph" role="2Oq$k0" />
                <node concept="3TrcHB" id="4qjHlOXIKXL" role="2OqNvi">
                  <ref role="3TsBF5" to="zqge:1fIPsahQswu" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="1fIPsahQtub" role="3clF45" />
    </node>
  </node>
</model>

