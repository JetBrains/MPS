<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fbc3a19(checkpoints/jetbrains.mps.console.base.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="yidq" ref="r:a35e9456-af18-4589-b3c4-ed9896a657c9(jetbrains.mps.console.base.constraints)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.lang.smodel.query.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="eynw" ref="r:359b1d2b-77c4-46df-9bf2-b25cbea32254(jetbrains.mps.console.base.structure)" />
    <import index="t8pl" ref="r:7c6b6a5a-7faa-4582-9cf9-57f779b50a76(jetbrains.mps.console.base.util)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="fq2o" ref="r:11d950c0-cabb-4b20-860f-4f2898171c08(jetbrains.mps.lang.smodel.query.behavior)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="8353134822275456723" name="jetbrains.mps.baseLanguage.structure.HexLongLiteral" flags="ng" index="11gdke">
        <property id="8353134822275456796" name="hexValue" index="11gdj1" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1238251434034" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToConstantExpression" flags="ng" index="1dyn4i">
        <property id="1238251449050" name="fieldName" index="1dyqJU" />
        <child id="1238251454130" name="expression" index="1dyrYi" />
      </concept>
      <concept id="4927083583736784422" name="jetbrains.mps.baseLanguageInternal.structure.ExtractToSingleConstantExpression" flags="ng" index="1BaE9c">
        <property id="3566113306135792467" name="baseContainerName" index="1ouuDV" />
        <property id="4927083583736815155" name="uniqueFieldName" index="1BaxDp" />
        <child id="4927083583736819744" name="expression" index="1Bazha" />
      </concept>
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="334628810661441841" name="jetbrains.mps.lang.smodel.structure.AsSConcept" flags="nn" index="1rGIog" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="expression.print" />
    <property role="TrG5h" value="AbstractPrintExpression_Constraints" />
    <uo k="s:originTrace" v="n:5286186381820932750" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:5286186381820932750" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5286186381820932750" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:5286186381820932750" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:5286186381820932750" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="AbstractPrintExpression$Qx" />
            <uo k="s:originTrace" v="n:5286186381820932750" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5286186381820932750" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="de1ad86d6e504a02L" />
                <uo k="s:originTrace" v="n:5286186381820932750" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="b306d4d17f64c375L" />
                <uo k="s:originTrace" v="n:5286186381820932750" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="6c8954f469a7c420L" />
                <uo k="s:originTrace" v="n:5286186381820932750" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.console.base.structure.AbstractPrintExpression" />
                <uo k="s:originTrace" v="n:5286186381820932750" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:5286186381820932750" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:5286186381820932750" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:5286186381820932750" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:5286186381820932750" />
              <node concept="YeOm9" id="l" role="2ShVmc">
                <uo k="s:originTrace" v="n:5286186381820932750" />
                <node concept="1Y3b0j" id="m" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:5286186381820932750" />
                  <node concept="3Tm1VV" id="n" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5286186381820932750" />
                  </node>
                  <node concept="3clFb_" id="o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:5286186381820932750" />
                    <node concept="3Tm1VV" id="r" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                    </node>
                    <node concept="2AHcQZ" id="s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                    </node>
                    <node concept="3uibUv" id="t" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                    </node>
                    <node concept="37vLTG" id="u" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                      <node concept="3uibUv" id="x" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                      <node concept="2AHcQZ" id="y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="v" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                      <node concept="3uibUv" id="z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                      <node concept="2AHcQZ" id="$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="w" role="3clF47">
                      <uo k="s:originTrace" v="n:5286186381820932750" />
                      <node concept="3cpWs8" id="_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                        <node concept="3cpWsn" id="E" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:5286186381820932750" />
                          <node concept="10P_77" id="F" role="1tU5fm">
                            <uo k="s:originTrace" v="n:5286186381820932750" />
                          </node>
                          <node concept="1rXfSq" id="G" role="33vP2m">
                            <ref role="37wK5l" node="5" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:5286186381820932750" />
                            <node concept="2OqwBi" id="H" role="37wK5m">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                              <node concept="37vLTw" id="L" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                              <node concept="liA8E" id="M" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="I" role="37wK5m">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                              <node concept="37vLTw" id="N" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                              <node concept="liA8E" id="O" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="J" role="37wK5m">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                              <node concept="37vLTw" id="P" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                              <node concept="liA8E" id="Q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="K" role="37wK5m">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                              <node concept="37vLTw" id="R" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                              <node concept="liA8E" id="S" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="A" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                      <node concept="3clFbJ" id="B" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                        <node concept="3clFbS" id="T" role="3clFbx">
                          <uo k="s:originTrace" v="n:5286186381820932750" />
                          <node concept="3clFbF" id="V" role="3cqZAp">
                            <uo k="s:originTrace" v="n:5286186381820932750" />
                            <node concept="2OqwBi" id="W" role="3clFbG">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                              <node concept="37vLTw" id="X" role="2Oq$k0">
                                <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                              </node>
                              <node concept="liA8E" id="Y" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:5286186381820932750" />
                                <node concept="1dyn4i" id="Z" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:5286186381820932750" />
                                  <node concept="2ShNRf" id="10" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:5286186381820932750" />
                                    <node concept="1pGfFk" id="11" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:5286186381820932750" />
                                      <node concept="Xl_RD" id="12" role="37wK5m">
                                        <property role="Xl_RC" value="r:a35e9456-af18-4589-b3c4-ed9896a657c9(jetbrains.mps.console.base.constraints)" />
                                        <uo k="s:originTrace" v="n:5286186381820932750" />
                                      </node>
                                      <node concept="Xl_RD" id="13" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536564502" />
                                        <uo k="s:originTrace" v="n:5286186381820932750" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="U" role="3clFbw">
                          <uo k="s:originTrace" v="n:5286186381820932750" />
                          <node concept="3y3z36" id="14" role="3uHU7w">
                            <uo k="s:originTrace" v="n:5286186381820932750" />
                            <node concept="10Nm6u" id="16" role="3uHU7w">
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                            </node>
                            <node concept="37vLTw" id="17" role="3uHU7B">
                              <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="15" role="3uHU7B">
                            <uo k="s:originTrace" v="n:5286186381820932750" />
                            <node concept="37vLTw" id="18" role="3fr31v">
                              <ref role="3cqZAo" node="E" resolve="result" />
                              <uo k="s:originTrace" v="n:5286186381820932750" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="C" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                      </node>
                      <node concept="3clFbF" id="D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5286186381820932750" />
                        <node concept="37vLTw" id="19" role="3clFbG">
                          <ref role="3cqZAo" node="E" resolve="result" />
                          <uo k="s:originTrace" v="n:5286186381820932750" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="p" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:5286186381820932750" />
                  </node>
                  <node concept="3uibUv" id="q" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:5286186381820932750" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:5286186381820932750" />
    </node>
    <node concept="2YIFZL" id="5" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:5286186381820932750" />
      <node concept="10P_77" id="1a" role="3clF45">
        <uo k="s:originTrace" v="n:5286186381820932750" />
      </node>
      <node concept="3Tm6S6" id="1b" role="1B3o_S">
        <uo k="s:originTrace" v="n:5286186381820932750" />
      </node>
      <node concept="3clFbS" id="1c" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536564503" />
        <node concept="3clFbJ" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536564504" />
          <node concept="2OqwBi" id="1i" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536564505" />
            <node concept="2OqwBi" id="1m" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536564506" />
              <node concept="37vLTw" id="1o" role="2Oq$k0">
                <ref role="3cqZAo" node="1e" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536564507" />
              </node>
              <node concept="2Xjw5R" id="1p" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536564508" />
                <node concept="1xMEDy" id="1q" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536564509" />
                  <node concept="chp4Y" id="1s" role="ri$Ld">
                    <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
                    <uo k="s:originTrace" v="n:1227128029536564510" />
                  </node>
                </node>
                <node concept="1xIGOp" id="1r" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536564511" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="1n" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536564512" />
            </node>
          </node>
          <node concept="3clFbS" id="1j" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536564513" />
            <node concept="3cpWs6" id="1t" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536564514" />
              <node concept="22lmx$" id="1u" role="3cqZAk">
                <uo k="s:originTrace" v="n:4347703695025348809" />
                <node concept="1eOMI4" id="1v" role="3uHU7w">
                  <uo k="s:originTrace" v="n:4347703695025383422" />
                  <node concept="1Wc70l" id="1x" role="1eOMHV">
                    <uo k="s:originTrace" v="n:4347703695025379230" />
                    <node concept="2OqwBi" id="1y" role="3uHU7w">
                      <uo k="s:originTrace" v="n:4347703695025381242" />
                      <node concept="37vLTw" id="1$" role="2Oq$k0">
                        <ref role="3cqZAo" node="1e" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:4347703695025380507" />
                      </node>
                      <node concept="1mIQ4w" id="1_" role="2OqNvi">
                        <uo k="s:originTrace" v="n:4347703695025382476" />
                        <node concept="chp4Y" id="1A" role="cj9EA">
                          <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                          <uo k="s:originTrace" v="n:4347703695025382754" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1z" role="3uHU7B">
                      <uo k="s:originTrace" v="n:4347703695025350372" />
                      <node concept="37vLTw" id="1B" role="2Oq$k0">
                        <ref role="3cqZAo" node="1d" resolve="node" />
                        <uo k="s:originTrace" v="n:4347703695025348986" />
                      </node>
                      <node concept="3w_OXm" id="1C" role="2OqNvi">
                        <uo k="s:originTrace" v="n:4347703695025352070" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1w" role="3uHU7B">
                  <uo k="s:originTrace" v="n:1227128029536564515" />
                  <node concept="37vLTw" id="1D" role="2Oq$k0">
                    <ref role="3cqZAo" node="1e" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:1227128029536564516" />
                  </node>
                  <node concept="1mIQ4w" id="1E" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1227128029536564517" />
                    <node concept="chp4Y" id="1F" role="cj9EA">
                      <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                      <uo k="s:originTrace" v="n:1227128029536564518" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="1k" role="3eNLev">
            <uo k="s:originTrace" v="n:1227128029536564519" />
            <node concept="3clFbS" id="1G" role="3eOfB_">
              <uo k="s:originTrace" v="n:1227128029536564520" />
              <node concept="3cpWs6" id="1I" role="3cqZAp">
                <uo k="s:originTrace" v="n:1227128029536564521" />
                <node concept="22lmx$" id="1J" role="3cqZAk">
                  <uo k="s:originTrace" v="n:4347703695025398709" />
                  <node concept="2OqwBi" id="1K" role="3uHU7B">
                    <uo k="s:originTrace" v="n:1227128029536564522" />
                    <node concept="37vLTw" id="1M" role="2Oq$k0">
                      <ref role="3cqZAo" node="1e" resolve="parentNode" />
                      <uo k="s:originTrace" v="n:1227128029536564523" />
                    </node>
                    <node concept="1mIQ4w" id="1N" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1227128029536564524" />
                      <node concept="chp4Y" id="1O" role="cj9EA">
                        <ref role="cht4Q" to="eynw:6D0CP__oaBp" resolve="BLExpression" />
                        <uo k="s:originTrace" v="n:1227128029536564525" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="1L" role="3uHU7w">
                    <uo k="s:originTrace" v="n:4347703695025400113" />
                    <node concept="1Wc70l" id="1P" role="1eOMHV">
                      <uo k="s:originTrace" v="n:4347703695025400114" />
                      <node concept="2OqwBi" id="1Q" role="3uHU7w">
                        <uo k="s:originTrace" v="n:4347703695025400115" />
                        <node concept="37vLTw" id="1S" role="2Oq$k0">
                          <ref role="3cqZAo" node="1e" resolve="parentNode" />
                          <uo k="s:originTrace" v="n:4347703695025400116" />
                        </node>
                        <node concept="1mIQ4w" id="1T" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4347703695025400117" />
                          <node concept="chp4Y" id="1U" role="cj9EA">
                            <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                            <uo k="s:originTrace" v="n:4347703695025400118" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1R" role="3uHU7B">
                        <uo k="s:originTrace" v="n:4347703695025400119" />
                        <node concept="37vLTw" id="1V" role="2Oq$k0">
                          <ref role="3cqZAo" node="1d" resolve="node" />
                          <uo k="s:originTrace" v="n:4347703695025400120" />
                        </node>
                        <node concept="3w_OXm" id="1W" role="2OqNvi">
                          <uo k="s:originTrace" v="n:4347703695025400121" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1H" role="3eO9$A">
              <uo k="s:originTrace" v="n:1227128029536564526" />
              <node concept="2OqwBi" id="1X" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1227128029536564527" />
                <node concept="37vLTw" id="1Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1e" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536564528" />
                </node>
                <node concept="2Xjw5R" id="20" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536564529" />
                  <node concept="1xMEDy" id="21" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1227128029536564530" />
                    <node concept="chp4Y" id="23" role="ri$Ld">
                      <ref role="cht4Q" to="eynw:6D0CP__oaBp" resolve="BLExpression" />
                      <uo k="s:originTrace" v="n:1227128029536564531" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="22" role="1xVPHs">
                    <uo k="s:originTrace" v="n:1227128029536564532" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="1Y" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536564533" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1l" role="9aQIa">
            <uo k="s:originTrace" v="n:1227128029536564534" />
            <node concept="3clFbS" id="24" role="9aQI4">
              <uo k="s:originTrace" v="n:1227128029536564535" />
              <node concept="3cpWs6" id="25" role="3cqZAp">
                <uo k="s:originTrace" v="n:1227128029536564536" />
                <node concept="3clFbT" id="26" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                  <uo k="s:originTrace" v="n:1227128029536564537" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1d" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="3uibUv" id="27" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
        </node>
      </node>
      <node concept="37vLTG" id="1e" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="3uibUv" id="28" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
        </node>
      </node>
      <node concept="37vLTG" id="1f" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="3uibUv" id="29" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
        </node>
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:5286186381820932750" />
        <node concept="3uibUv" id="2a" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:5286186381820932750" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2b">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="CommandHolder_Constraints" />
    <uo k="s:originTrace" v="n:7820875636624865058" />
    <node concept="3Tm1VV" id="2c" role="1B3o_S">
      <uo k="s:originTrace" v="n:7820875636624865058" />
    </node>
    <node concept="3uibUv" id="2d" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7820875636624865058" />
    </node>
    <node concept="3clFbW" id="2e" role="jymVt">
      <uo k="s:originTrace" v="n:7820875636624865058" />
      <node concept="37vLTG" id="2i" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="2l" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="3cqZAl" id="2j" role="3clF45">
        <uo k="s:originTrace" v="n:7820875636624865058" />
      </node>
      <node concept="3clFbS" id="2k" role="3clF47">
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="XkiVB" id="2m" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="1BaE9c" id="2p" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="CommandHolder$K4" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
            <node concept="2YIFZM" id="2r" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7820875636624865058" />
              <node concept="11gdke" id="2s" role="37wK5m">
                <property role="11gdj1" value="de1ad86d6e504a02L" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
              </node>
              <node concept="11gdke" id="2t" role="37wK5m">
                <property role="11gdj1" value="b306d4d17f64c375L" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
              </node>
              <node concept="11gdke" id="2u" role="37wK5m">
                <property role="11gdj1" value="4e27160acb4484bL" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
              </node>
              <node concept="Xl_RD" id="2v" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.console.base.structure.CommandHolder" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2q" role="37wK5m">
            <ref role="3cqZAo" node="2i" resolve="initContext" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
          </node>
        </node>
        <node concept="3clFbF" id="2n" role="3cqZAp">
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="1rXfSq" id="2w" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
            <node concept="2ShNRf" id="2x" role="37wK5m">
              <uo k="s:originTrace" v="n:7820875636624865058" />
              <node concept="1pGfFk" id="2y" role="2ShVmc">
                <ref role="37wK5l" node="3u" resolve="CommandHolder_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
                <node concept="Xjq3P" id="2z" role="37wK5m">
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2o" role="3cqZAp">
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="1rXfSq" id="2$" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeAncestor(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeAncestor" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
            <node concept="2ShNRf" id="2_" role="37wK5m">
              <uo k="s:originTrace" v="n:7820875636624865058" />
              <node concept="YeOm9" id="2A" role="2ShVmc">
                <uo k="s:originTrace" v="n:7820875636624865058" />
                <node concept="1Y3b0j" id="2B" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                  <node concept="3Tm1VV" id="2C" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7820875636624865058" />
                  </node>
                  <node concept="3clFb_" id="2D" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7820875636624865058" />
                    <node concept="3Tm1VV" id="2G" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                    </node>
                    <node concept="2AHcQZ" id="2H" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                    </node>
                    <node concept="3uibUv" id="2I" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                    </node>
                    <node concept="37vLTG" id="2J" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                      <node concept="3uibUv" id="2M" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeAncestor" resolve="ConstraintContext_CanBeAncestor" />
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                      <node concept="2AHcQZ" id="2N" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="2K" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                      <node concept="3uibUv" id="2O" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                      <node concept="2AHcQZ" id="2P" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2L" role="3clF47">
                      <uo k="s:originTrace" v="n:7820875636624865058" />
                      <node concept="3cpWs8" id="2Q" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                        <node concept="3cpWsn" id="2V" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7820875636624865058" />
                          <node concept="10P_77" id="2W" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7820875636624865058" />
                          </node>
                          <node concept="1rXfSq" id="2X" role="33vP2m">
                            <ref role="37wK5l" node="2h" resolve="staticCanBeAnAncestor" />
                            <uo k="s:originTrace" v="n:7820875636624865058" />
                            <node concept="2OqwBi" id="2Y" role="37wK5m">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="33" role="2Oq$k0">
                                <ref role="3cqZAo" node="2J" resolve="context" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="34" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2Z" role="37wK5m">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="35" role="2Oq$k0">
                                <ref role="3cqZAo" node="2J" resolve="context" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="36" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getChildNode()" resolve="getChildNode" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="30" role="37wK5m">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="37" role="2Oq$k0">
                                <ref role="3cqZAo" node="2J" resolve="context" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="38" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getChildConcept()" resolve="getChildConcept" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="31" role="37wK5m">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="39" role="2Oq$k0">
                                <ref role="3cqZAo" node="2J" resolve="context" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="3a" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="32" role="37wK5m">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="3b" role="2Oq$k0">
                                <ref role="3cqZAo" node="2J" resolve="context" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="3c" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2R" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                      <node concept="3clFbJ" id="2S" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                        <node concept="3clFbS" id="3d" role="3clFbx">
                          <uo k="s:originTrace" v="n:7820875636624865058" />
                          <node concept="3clFbF" id="3f" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7820875636624865058" />
                            <node concept="2OqwBi" id="3g" role="3clFbG">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                              <node concept="37vLTw" id="3h" role="2Oq$k0">
                                <ref role="3cqZAo" node="2K" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                              </node>
                              <node concept="liA8E" id="3i" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7820875636624865058" />
                                <node concept="1dyn4i" id="3j" role="37wK5m">
                                  <property role="1dyqJU" value="canBeAncestorBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7820875636624865058" />
                                  <node concept="2ShNRf" id="3k" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7820875636624865058" />
                                    <node concept="1pGfFk" id="3l" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7820875636624865058" />
                                      <node concept="Xl_RD" id="3m" role="37wK5m">
                                        <property role="Xl_RC" value="r:a35e9456-af18-4589-b3c4-ed9896a657c9(jetbrains.mps.console.base.constraints)" />
                                        <uo k="s:originTrace" v="n:7820875636624865058" />
                                      </node>
                                      <node concept="Xl_RD" id="3n" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536564538" />
                                        <uo k="s:originTrace" v="n:7820875636624865058" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="3e" role="3clFbw">
                          <uo k="s:originTrace" v="n:7820875636624865058" />
                          <node concept="3y3z36" id="3o" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7820875636624865058" />
                            <node concept="10Nm6u" id="3q" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                            </node>
                            <node concept="37vLTw" id="3r" role="3uHU7B">
                              <ref role="3cqZAo" node="2K" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="3p" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7820875636624865058" />
                            <node concept="37vLTw" id="3s" role="3fr31v">
                              <ref role="3cqZAo" node="2V" resolve="result" />
                              <uo k="s:originTrace" v="n:7820875636624865058" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2T" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                      </node>
                      <node concept="3clFbF" id="2U" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7820875636624865058" />
                        <node concept="37vLTw" id="3t" role="3clFbG">
                          <ref role="3cqZAo" node="2V" resolve="result" />
                          <uo k="s:originTrace" v="n:7820875636624865058" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="2E" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeAncestor" resolve="ConstraintContext_CanBeAncestor" />
                    <uo k="s:originTrace" v="n:7820875636624865058" />
                  </node>
                  <node concept="3uibUv" id="2F" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7820875636624865058" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2f" role="jymVt">
      <uo k="s:originTrace" v="n:7820875636624865058" />
    </node>
    <node concept="312cEu" id="2g" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:7820875636624865058" />
      <node concept="3clFbW" id="3u" role="jymVt">
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3cqZAl" id="3x" role="3clF45">
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
        <node concept="3Tm1VV" id="3y" role="1B3o_S">
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
        <node concept="3clFbS" id="3z" role="3clF47">
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="XkiVB" id="3_" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
            <node concept="1BaE9c" id="3A" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:7820875636624865058" />
              <node concept="2YIFZM" id="3F" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7820875636624865058" />
                <node concept="11gdke" id="3G" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
                <node concept="11gdke" id="3H" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
                <node concept="11gdke" id="3I" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
                <node concept="11gdke" id="3J" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
                <node concept="Xl_RD" id="3K" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:7820875636624865058" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3B" role="37wK5m">
              <ref role="3cqZAo" node="3$" resolve="container" />
              <uo k="s:originTrace" v="n:7820875636624865058" />
            </node>
            <node concept="3clFbT" id="3C" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7820875636624865058" />
            </node>
            <node concept="3clFbT" id="3D" role="37wK5m">
              <uo k="s:originTrace" v="n:7820875636624865058" />
            </node>
            <node concept="3clFbT" id="3E" role="37wK5m">
              <uo k="s:originTrace" v="n:7820875636624865058" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3$" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="3uibUv" id="3L" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7820875636624865058" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3v" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3Tm1VV" id="3M" role="1B3o_S">
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
        <node concept="3uibUv" id="3N" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
        <node concept="37vLTG" id="3O" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
          <node concept="3Tqbb2" id="3R" role="1tU5fm">
            <uo k="s:originTrace" v="n:7820875636624865058" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3P" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
        <node concept="3clFbS" id="3Q" role="3clF47">
          <uo k="s:originTrace" v="n:8088264230303568956" />
          <node concept="3clFbF" id="3S" role="3cqZAp">
            <uo k="s:originTrace" v="n:8088264230303573643" />
            <node concept="2OqwBi" id="3T" role="3clFbG">
              <uo k="s:originTrace" v="n:8088264230303577901" />
              <node concept="2OqwBi" id="3U" role="2Oq$k0">
                <uo k="s:originTrace" v="n:8088264230303574580" />
                <node concept="37vLTw" id="3W" role="2Oq$k0">
                  <ref role="3cqZAo" node="3O" resolve="node" />
                  <uo k="s:originTrace" v="n:8088264230303573642" />
                </node>
                <node concept="2yIwOk" id="3X" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8088264230303575764" />
                </node>
              </node>
              <node concept="liA8E" id="3V" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                <uo k="s:originTrace" v="n:8088264230303579415" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3w" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
      </node>
    </node>
    <node concept="2YIFZL" id="2h" role="jymVt">
      <property role="TrG5h" value="staticCanBeAnAncestor" />
      <uo k="s:originTrace" v="n:7820875636624865058" />
      <node concept="37vLTG" id="3Y" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="46" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="37vLTG" id="3Z" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="47" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="37vLTG" id="40" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="48" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="37vLTG" id="41" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="49" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="37vLTG" id="42" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7820875636624865058" />
        <node concept="3uibUv" id="4a" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7820875636624865058" />
        </node>
      </node>
      <node concept="10P_77" id="43" role="3clF45">
        <uo k="s:originTrace" v="n:7820875636624865058" />
      </node>
      <node concept="3Tm6S6" id="44" role="1B3o_S">
        <uo k="s:originTrace" v="n:7820875636624865058" />
      </node>
      <node concept="3clFbS" id="45" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536564539" />
        <node concept="3clFbF" id="4b" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536564540" />
          <node concept="3fqX7Q" id="4c" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536564541" />
            <node concept="2OqwBi" id="4d" role="3fr31v">
              <uo k="s:originTrace" v="n:1227128029536564542" />
              <node concept="2OqwBi" id="4e" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1227128029536564543" />
                <node concept="37vLTw" id="4g" role="2Oq$k0">
                  <ref role="3cqZAo" node="40" resolve="childConcept" />
                  <uo k="s:originTrace" v="n:1227128029536564551" />
                </node>
                <node concept="liA8E" id="4h" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                  <uo k="s:originTrace" v="n:1227128029536564547" />
                </node>
              </node>
              <node concept="liA8E" id="4f" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <uo k="s:originTrace" v="n:1227128029536564548" />
                <node concept="pHN19" id="4i" role="37wK5m">
                  <uo k="s:originTrace" v="n:1227128029536564549" />
                  <node concept="2V$Bhx" id="4j" role="2V$M_3">
                    <property role="2V$B1T" value="760a0a8c-eabb-4521-8bfd-65db761a9ba3" />
                    <property role="2V$B1Q" value="jetbrains.mps.baseLanguage.logging" />
                    <uo k="s:originTrace" v="n:1227128029536564550" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4k">
    <property role="3GE5qa" value="command" />
    <property role="TrG5h" value="Command_Constraints" />
    <uo k="s:originTrace" v="n:4144226654069499358" />
    <node concept="3Tm1VV" id="4l" role="1B3o_S">
      <uo k="s:originTrace" v="n:4144226654069499358" />
    </node>
    <node concept="3uibUv" id="4m" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4144226654069499358" />
    </node>
    <node concept="3clFbW" id="4n" role="jymVt">
      <uo k="s:originTrace" v="n:4144226654069499358" />
      <node concept="37vLTG" id="4p" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4144226654069499358" />
        <node concept="3uibUv" id="4s" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4144226654069499358" />
        </node>
      </node>
      <node concept="3cqZAl" id="4q" role="3clF45">
        <uo k="s:originTrace" v="n:4144226654069499358" />
      </node>
      <node concept="3clFbS" id="4r" role="3clF47">
        <uo k="s:originTrace" v="n:4144226654069499358" />
        <node concept="XkiVB" id="4t" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4144226654069499358" />
          <node concept="1BaE9c" id="4u" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Command$6M" />
            <uo k="s:originTrace" v="n:4144226654069499358" />
            <node concept="2YIFZM" id="4w" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4144226654069499358" />
              <node concept="11gdke" id="4x" role="37wK5m">
                <property role="11gdj1" value="de1ad86d6e504a02L" />
                <uo k="s:originTrace" v="n:4144226654069499358" />
              </node>
              <node concept="11gdke" id="4y" role="37wK5m">
                <property role="11gdj1" value="b306d4d17f64c375L" />
                <uo k="s:originTrace" v="n:4144226654069499358" />
              </node>
              <node concept="11gdke" id="4z" role="37wK5m">
                <property role="11gdj1" value="5f1fb64db424879fL" />
                <uo k="s:originTrace" v="n:4144226654069499358" />
              </node>
              <node concept="Xl_RD" id="4$" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.console.base.structure.Command" />
                <uo k="s:originTrace" v="n:4144226654069499358" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4v" role="37wK5m">
            <ref role="3cqZAo" node="4p" resolve="initContext" />
            <uo k="s:originTrace" v="n:4144226654069499358" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4o" role="jymVt">
      <uo k="s:originTrace" v="n:4144226654069499358" />
    </node>
  </node>
  <node concept="312cEu" id="4_">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="4A" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="4B" role="1B3o_S" />
    <node concept="3clFbW" id="4C" role="jymVt">
      <node concept="3cqZAl" id="4F" role="3clF45" />
      <node concept="3Tm1VV" id="4G" role="1B3o_S" />
      <node concept="3clFbS" id="4H" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4D" role="jymVt" />
    <node concept="3clFb_" id="4E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="4I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="4J" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="4K" role="1B3o_S" />
      <node concept="3uibUv" id="4L" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="4M" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="4P" role="1tU5fm" />
        <node concept="2AHcQZ" id="4Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4N" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4R" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="4S" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O" role="3clF47">
        <node concept="1_3QMa" id="4T" role="3cqZAp">
          <node concept="37vLTw" id="4V" role="1_3QMn">
            <ref role="3cqZAo" node="4M" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="4W" role="1_3QMm">
            <node concept="3clFbS" id="51" role="1pnPq1">
              <node concept="3cpWs6" id="53" role="3cqZAp">
                <node concept="2ShNRf" id="54" role="3cqZAk">
                  <node concept="1pGfFk" id="55" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="2e" resolve="CommandHolder_Constraints" />
                    <node concept="37vLTw" id="56" role="37wK5m">
                      <ref role="3cqZAo" node="4N" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="52" role="1pnPq6">
              <ref role="3gnhBz" to="eynw:jysm2GH4xb" resolve="CommandHolder" />
            </node>
          </node>
          <node concept="1pnPoh" id="4X" role="1_3QMm">
            <node concept="3clFbS" id="57" role="1pnPq1">
              <node concept="3cpWs6" id="59" role="3cqZAp">
                <node concept="2ShNRf" id="5a" role="3cqZAk">
                  <node concept="1pGfFk" id="5b" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="63" resolve="HelpConceptReference_Constraints" />
                    <node concept="37vLTw" id="5c" role="37wK5m">
                      <ref role="3cqZAo" node="4N" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="58" role="1pnPq6">
              <ref role="3gnhBz" to="eynw:60B$832WV89" resolve="HelpConceptReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="4Y" role="1_3QMm">
            <node concept="3clFbS" id="5d" role="1pnPq1">
              <node concept="3cpWs6" id="5f" role="3cqZAp">
                <node concept="2ShNRf" id="5g" role="3cqZAk">
                  <node concept="1pGfFk" id="5h" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="AbstractPrintExpression_Constraints" />
                    <node concept="37vLTw" id="5i" role="37wK5m">
                      <ref role="3cqZAo" node="4N" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5e" role="1pnPq6">
              <ref role="3gnhBz" to="eynw:6M9lfhDDWgw" resolve="AbstractPrintExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="4Z" role="1_3QMm">
            <node concept="3clFbS" id="5j" role="1pnPq1">
              <node concept="3cpWs6" id="5l" role="3cqZAp">
                <node concept="2ShNRf" id="5m" role="3cqZAk">
                  <node concept="1pGfFk" id="5n" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4n" resolve="Command_Constraints" />
                    <node concept="37vLTw" id="5o" role="37wK5m">
                      <ref role="3cqZAo" node="4N" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5k" role="1pnPq6">
              <ref role="3gnhBz" to="eynw:5WvH$QO98uv" resolve="Command" />
            </node>
          </node>
          <node concept="3clFbS" id="50" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="4U" role="3cqZAp">
          <node concept="10Nm6u" id="5p" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="5q">
    <node concept="39e2AJ" id="5r" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="5u" role="39e3Y0">
        <ref role="39e2AK" to="yidq:4_sjC70Wrae" resolve="AbstractPrintExpression_Constraints" />
        <node concept="385nmt" id="5y" role="385vvn">
          <property role="385vuF" value="AbstractPrintExpression_Constraints" />
          <node concept="3u3nmq" id="5$" role="385v07">
            <property role="3u3nmv" value="5286186381820932750" />
          </node>
        </node>
        <node concept="39e2AT" id="5z" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="AbstractPrintExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5v" role="39e3Y0">
        <ref role="39e2AK" to="yidq:6M9lfhDy3sy" resolve="CommandHolder_Constraints" />
        <node concept="385nmt" id="5_" role="385vvn">
          <property role="385vuF" value="CommandHolder_Constraints" />
          <node concept="3u3nmq" id="5B" role="385v07">
            <property role="3u3nmv" value="7820875636624865058" />
          </node>
        </node>
        <node concept="39e2AT" id="5A" role="39e2AY">
          <ref role="39e2AS" node="2b" resolve="CommandHolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5w" role="39e3Y0">
        <ref role="39e2AK" to="yidq:3A3g2Xgxanu" resolve="Command_Constraints" />
        <node concept="385nmt" id="5C" role="385vvn">
          <property role="385vuF" value="Command_Constraints" />
          <node concept="3u3nmq" id="5E" role="385v07">
            <property role="3u3nmv" value="4144226654069499358" />
          </node>
        </node>
        <node concept="39e2AT" id="5D" role="39e2AY">
          <ref role="39e2AS" node="4k" resolve="Command_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5x" role="39e3Y0">
        <ref role="39e2AK" to="yidq:60B$832XznG" resolve="HelpConceptReference_Constraints" />
        <node concept="385nmt" id="5F" role="385vvn">
          <property role="385vuF" value="HelpConceptReference_Constraints" />
          <node concept="3u3nmq" id="5H" role="385v07">
            <property role="3u3nmv" value="6928665434433926636" />
          </node>
        </node>
        <node concept="39e2AT" id="5G" role="39e2AY">
          <ref role="39e2AS" node="60" resolve="HelpConceptReference_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="5s" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="5I" role="39e3Y0">
        <ref role="39e2AK" to="yidq:4_sjC70Wrae" resolve="AbstractPrintExpression_Constraints" />
        <node concept="385nmt" id="5M" role="385vvn">
          <property role="385vuF" value="AbstractPrintExpression_Constraints" />
          <node concept="3u3nmq" id="5O" role="385v07">
            <property role="3u3nmv" value="5286186381820932750" />
          </node>
        </node>
        <node concept="39e2AT" id="5N" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="AbstractPrintExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5J" role="39e3Y0">
        <ref role="39e2AK" to="yidq:6M9lfhDy3sy" resolve="CommandHolder_Constraints" />
        <node concept="385nmt" id="5P" role="385vvn">
          <property role="385vuF" value="CommandHolder_Constraints" />
          <node concept="3u3nmq" id="5R" role="385v07">
            <property role="3u3nmv" value="7820875636624865058" />
          </node>
        </node>
        <node concept="39e2AT" id="5Q" role="39e2AY">
          <ref role="39e2AS" node="2e" resolve="CommandHolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5K" role="39e3Y0">
        <ref role="39e2AK" to="yidq:3A3g2Xgxanu" resolve="Command_Constraints" />
        <node concept="385nmt" id="5S" role="385vvn">
          <property role="385vuF" value="Command_Constraints" />
          <node concept="3u3nmq" id="5U" role="385v07">
            <property role="3u3nmv" value="4144226654069499358" />
          </node>
        </node>
        <node concept="39e2AT" id="5T" role="39e2AY">
          <ref role="39e2AS" node="4n" resolve="Command_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="5L" role="39e3Y0">
        <ref role="39e2AK" to="yidq:60B$832XznG" resolve="HelpConceptReference_Constraints" />
        <node concept="385nmt" id="5V" role="385vvn">
          <property role="385vuF" value="HelpConceptReference_Constraints" />
          <node concept="3u3nmq" id="5X" role="385v07">
            <property role="3u3nmv" value="6928665434433926636" />
          </node>
        </node>
        <node concept="39e2AT" id="5W" role="39e2AY">
          <ref role="39e2AS" node="63" resolve="HelpConceptReference_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="5t" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="5Y" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="5Z" role="39e2AY">
          <ref role="39e2AS" node="4_" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="60">
    <property role="3GE5qa" value="help" />
    <property role="TrG5h" value="HelpConceptReference_Constraints" />
    <uo k="s:originTrace" v="n:6928665434433926636" />
    <node concept="3Tm1VV" id="61" role="1B3o_S">
      <uo k="s:originTrace" v="n:6928665434433926636" />
    </node>
    <node concept="3uibUv" id="62" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6928665434433926636" />
    </node>
    <node concept="3clFbW" id="63" role="jymVt">
      <uo k="s:originTrace" v="n:6928665434433926636" />
      <node concept="37vLTG" id="66" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6928665434433926636" />
        <node concept="3uibUv" id="69" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
      </node>
      <node concept="3cqZAl" id="67" role="3clF45">
        <uo k="s:originTrace" v="n:6928665434433926636" />
      </node>
      <node concept="3clFbS" id="68" role="3clF47">
        <uo k="s:originTrace" v="n:6928665434433926636" />
        <node concept="XkiVB" id="6a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
          <node concept="1BaE9c" id="6c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="HelpConceptReference$Y8" />
            <uo k="s:originTrace" v="n:6928665434433926636" />
            <node concept="2YIFZM" id="6e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6928665434433926636" />
              <node concept="11gdke" id="6f" role="37wK5m">
                <property role="11gdj1" value="de1ad86d6e504a02L" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
              </node>
              <node concept="11gdke" id="6g" role="37wK5m">
                <property role="11gdj1" value="b306d4d17f64c375L" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
              </node>
              <node concept="11gdke" id="6h" role="37wK5m">
                <property role="11gdj1" value="60279080c2f3b209L" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
              </node>
              <node concept="Xl_RD" id="6i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.console.base.structure.HelpConceptReference" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6d" role="37wK5m">
            <ref role="3cqZAo" node="66" resolve="initContext" />
            <uo k="s:originTrace" v="n:6928665434433926636" />
          </node>
        </node>
        <node concept="3clFbF" id="6b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6928665434433926636" />
          <node concept="1rXfSq" id="6j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6928665434433926636" />
            <node concept="2ShNRf" id="6k" role="37wK5m">
              <uo k="s:originTrace" v="n:6928665434433926636" />
              <node concept="1pGfFk" id="6l" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6n" resolve="HelpConceptReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
                <node concept="Xjq3P" id="6m" role="37wK5m">
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="64" role="jymVt">
      <uo k="s:originTrace" v="n:6928665434433926636" />
    </node>
    <node concept="312cEu" id="65" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6928665434433926636" />
      <node concept="3clFbW" id="6n" role="jymVt">
        <uo k="s:originTrace" v="n:6928665434433926636" />
        <node concept="37vLTG" id="6q" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
          <node concept="3uibUv" id="6t" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6928665434433926636" />
          </node>
        </node>
        <node concept="3cqZAl" id="6r" role="3clF45">
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
        <node concept="3clFbS" id="6s" role="3clF47">
          <uo k="s:originTrace" v="n:6928665434433926636" />
          <node concept="XkiVB" id="6u" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6928665434433926636" />
            <node concept="1BaE9c" id="6v" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="command$b3Jl" />
              <uo k="s:originTrace" v="n:6928665434433926636" />
              <node concept="2YIFZM" id="6z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6928665434433926636" />
                <node concept="11gdke" id="6$" role="37wK5m">
                  <property role="11gdj1" value="de1ad86d6e504a02L" />
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
                <node concept="11gdke" id="6_" role="37wK5m">
                  <property role="11gdj1" value="b306d4d17f64c375L" />
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
                <node concept="11gdke" id="6A" role="37wK5m">
                  <property role="11gdj1" value="60279080c2f3b209L" />
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
                <node concept="11gdke" id="6B" role="37wK5m">
                  <property role="11gdj1" value="60279080c2f3f8d6L" />
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
                <node concept="Xl_RD" id="6C" role="37wK5m">
                  <property role="Xl_RC" value="command" />
                  <uo k="s:originTrace" v="n:6928665434433926636" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6w" role="37wK5m">
              <ref role="3cqZAo" node="6q" resolve="container" />
              <uo k="s:originTrace" v="n:6928665434433926636" />
            </node>
            <node concept="3clFbT" id="6x" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6928665434433926636" />
            </node>
            <node concept="3clFbT" id="6y" role="37wK5m">
              <uo k="s:originTrace" v="n:6928665434433926636" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6928665434433926636" />
        <node concept="3Tm1VV" id="6D" role="1B3o_S">
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
        <node concept="3uibUv" id="6E" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
        <node concept="2AHcQZ" id="6F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
        <node concept="3clFbS" id="6G" role="3clF47">
          <uo k="s:originTrace" v="n:6928665434433926636" />
          <node concept="3cpWs6" id="6I" role="3cqZAp">
            <uo k="s:originTrace" v="n:6928665434433926636" />
            <node concept="2ShNRf" id="6J" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582820644" />
              <node concept="YeOm9" id="6K" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582820644" />
                <node concept="1Y3b0j" id="6L" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582820644" />
                  <node concept="3Tm1VV" id="6M" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582820644" />
                  </node>
                  <node concept="3clFb_" id="6N" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582820644" />
                    <node concept="3Tm1VV" id="6P" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                    <node concept="3uibUv" id="6Q" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                    <node concept="3clFbS" id="6R" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                      <node concept="3cpWs6" id="6T" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582820644" />
                        <node concept="2ShNRf" id="6U" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582820644" />
                          <node concept="1pGfFk" id="6V" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582820644" />
                            <node concept="Xl_RD" id="6W" role="37wK5m">
                              <property role="Xl_RC" value="r:a35e9456-af18-4589-b3c4-ed9896a657c9(jetbrains.mps.console.base.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582820644" />
                            </node>
                            <node concept="Xl_RD" id="6X" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582820644" />
                              <uo k="s:originTrace" v="n:6836281137582820644" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6S" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="6O" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582820644" />
                    <node concept="3Tm1VV" id="6Y" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                    <node concept="3uibUv" id="6Z" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                    <node concept="37vLTG" id="70" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                      <node concept="3uibUv" id="73" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582820644" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="71" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                      <node concept="3cpWs6" id="74" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582820646" />
                        <node concept="2ShNRf" id="75" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582820647" />
                          <node concept="YeOm9" id="76" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6836281137582820648" />
                            <node concept="1Y3b0j" id="77" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                              <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                              <uo k="s:originTrace" v="n:6836281137582820649" />
                              <node concept="3Tm1VV" id="78" role="1B3o_S">
                                <uo k="s:originTrace" v="n:6836281137582820650" />
                              </node>
                              <node concept="2ShNRf" id="79" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582820651" />
                                <node concept="YeOm9" id="7b" role="2ShVmc">
                                  <uo k="s:originTrace" v="n:6836281137582820652" />
                                  <node concept="1Y3b0j" id="7c" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <ref role="37wK5l" to="t8pl:60B$8334a3M" resolve="SubconceptsScope" />
                                    <ref role="1Y3XeK" to="t8pl:60B$832YBo4" resolve="SubconceptsScope" />
                                    <uo k="s:originTrace" v="n:6836281137582820653" />
                                    <node concept="3Tm1VV" id="7d" role="1B3o_S">
                                      <uo k="s:originTrace" v="n:6836281137582820654" />
                                    </node>
                                    <node concept="3clFb_" id="7e" role="jymVt">
                                      <property role="1EzhhJ" value="false" />
                                      <property role="TrG5h" value="getName" />
                                      <uo k="s:originTrace" v="n:6836281137582820655" />
                                      <node concept="3Tm1VV" id="7h" role="1B3o_S">
                                        <uo k="s:originTrace" v="n:6836281137582820656" />
                                      </node>
                                      <node concept="17QB3L" id="7i" role="3clF45">
                                        <uo k="s:originTrace" v="n:6836281137582820657" />
                                      </node>
                                      <node concept="37vLTG" id="7j" role="3clF46">
                                        <property role="TrG5h" value="child" />
                                        <uo k="s:originTrace" v="n:6836281137582820658" />
                                        <node concept="3Tqbb2" id="7l" role="1tU5fm">
                                          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                          <uo k="s:originTrace" v="n:6836281137582820659" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="7k" role="3clF47">
                                        <uo k="s:originTrace" v="n:6836281137582820660" />
                                        <node concept="3clFbF" id="7m" role="3cqZAp">
                                          <uo k="s:originTrace" v="n:6836281137582820661" />
                                          <node concept="2OqwBi" id="7n" role="3clFbG">
                                            <uo k="s:originTrace" v="n:6836281137582820662" />
                                            <node concept="1eOMI4" id="7o" role="2Oq$k0">
                                              <uo k="s:originTrace" v="n:6836281137582820663" />
                                              <node concept="10QFUN" id="7q" role="1eOMHV">
                                                <uo k="s:originTrace" v="n:6836281137582820664" />
                                                <node concept="2OqwBi" id="7r" role="10QFUP">
                                                  <uo k="s:originTrace" v="n:6836281137582820665" />
                                                  <node concept="37vLTw" id="7t" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7j" resolve="child" />
                                                    <uo k="s:originTrace" v="n:6836281137582820666" />
                                                  </node>
                                                  <node concept="1rGIog" id="7u" role="2OqNvi">
                                                    <uo k="s:originTrace" v="n:6836281137582820667" />
                                                  </node>
                                                </node>
                                                <node concept="3bZ5Sz" id="7s" role="10QFUM">
                                                  <ref role="3bZ5Sy" to="3xdn:qgIopN3HO7" resolve="HelpProvider" />
                                                  <uo k="s:originTrace" v="n:6836281137582820668" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3zqWPK" id="7p" role="2OqNvi">
                                              <ref role="37wK5l" to="fq2o:64VftqEenfn" resolve="getShortDisplayString" />
                                              <uo k="s:originTrace" v="n:8085146484218842484" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3B5_sB" id="7f" role="37wK5m">
                                      <ref role="3B5MYn" to="3xdn:qgIopN3HO7" resolve="HelpProvider" />
                                      <uo k="s:originTrace" v="n:5277512121479825947" />
                                    </node>
                                    <node concept="2OqwBi" id="7g" role="37wK5m">
                                      <uo k="s:originTrace" v="n:6836281137582820694" />
                                      <node concept="1DoJHT" id="7v" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getContextNode" />
                                        <uo k="s:originTrace" v="n:6836281137582820695" />
                                        <node concept="3uibUv" id="7x" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="7y" role="1EMhIo">
                                          <ref role="3cqZAo" node="70" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="I4A8Y" id="7w" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6836281137582820696" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="7a" role="jymVt">
                                <property role="TrG5h" value="isExcluded" />
                                <property role="1EzhhJ" value="false" />
                                <uo k="s:originTrace" v="n:6836281137582820672" />
                                <node concept="10P_77" id="7z" role="3clF45">
                                  <uo k="s:originTrace" v="n:6836281137582820673" />
                                </node>
                                <node concept="3Tm1VV" id="7$" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6836281137582820674" />
                                </node>
                                <node concept="37vLTG" id="7_" role="3clF46">
                                  <property role="TrG5h" value="node" />
                                  <uo k="s:originTrace" v="n:6836281137582820675" />
                                  <node concept="3Tqbb2" id="7C" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582820676" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="7A" role="3clF47">
                                  <uo k="s:originTrace" v="n:6836281137582820677" />
                                  <node concept="3clFbF" id="7D" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582820678" />
                                    <node concept="22lmx$" id="7F" role="3clFbG">
                                      <uo k="s:originTrace" v="n:642702404439296882" />
                                      <node concept="3y3z36" id="7G" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:642702404439316718" />
                                        <node concept="10Nm6u" id="7I" role="3uHU7w">
                                          <uo k="s:originTrace" v="n:642702404439318076" />
                                        </node>
                                        <node concept="2OqwBi" id="7J" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:642702404439310117" />
                                          <node concept="1PxgMI" id="7K" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:642702404439300381" />
                                            <node concept="chp4Y" id="7M" role="3oSUPX">
                                              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                              <uo k="s:originTrace" v="n:642702404439301618" />
                                            </node>
                                            <node concept="37vLTw" id="7N" role="1m5AlR">
                                              <ref role="3cqZAo" node="7_" resolve="node" />
                                              <uo k="s:originTrace" v="n:642702404439297813" />
                                            </node>
                                          </node>
                                          <node concept="3CFZ6_" id="7L" role="2OqNvi">
                                            <uo k="s:originTrace" v="n:642702404439312009" />
                                            <node concept="3CFYIy" id="7O" role="3CFYIz">
                                              <ref role="3CFYIx" to="tpce:hOasaTk" resolve="DeprecatedNodeAnnotation" />
                                              <uo k="s:originTrace" v="n:642702404439312918" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="22lmx$" id="7H" role="3uHU7B">
                                        <uo k="s:originTrace" v="n:6836281137582820679" />
                                        <node concept="3fqX7Q" id="7P" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:6836281137582820680" />
                                          <node concept="2OqwBi" id="7R" role="3fr31v">
                                            <uo k="s:originTrace" v="n:6836281137582820681" />
                                            <node concept="37vLTw" id="7S" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7_" resolve="node" />
                                              <uo k="s:originTrace" v="n:6836281137582820682" />
                                            </node>
                                            <node concept="1mIQ4w" id="7T" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:6836281137582820683" />
                                              <node concept="chp4Y" id="7U" role="cj9EA">
                                                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                                <uo k="s:originTrace" v="n:6836281137582820684" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="7Q" role="3uHU7w">
                                          <uo k="s:originTrace" v="n:642702404439288803" />
                                          <node concept="1PxgMI" id="7V" role="2Oq$k0">
                                            <uo k="s:originTrace" v="n:642702404439282809" />
                                            <node concept="chp4Y" id="7X" role="3oSUPX">
                                              <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                              <uo k="s:originTrace" v="n:642702404439285304" />
                                            </node>
                                            <node concept="37vLTw" id="7Y" role="1m5AlR">
                                              <ref role="3cqZAo" node="7_" resolve="node" />
                                              <uo k="s:originTrace" v="n:642702404439278117" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="7W" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                                            <uo k="s:originTrace" v="n:642702404439293253" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="7E" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582820692" />
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="7B" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:6836281137582820693" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="72" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582820644" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6928665434433926636" />
        </node>
      </node>
      <node concept="3uibUv" id="6p" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6928665434433926636" />
      </node>
    </node>
  </node>
</model>

