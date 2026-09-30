<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f9a7404(checkpoints/jetbrains.mps.build.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="a1zn" ref="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
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
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1222260469397" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpOperation" flags="nn" index="2kpEY9" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554238051" name="jetbrains.mps.baseLanguage.regexp.structure.NegativeSymbolClassRegexp" flags="ng" index="1SSPPM" />
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ngI" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="BuildAspect_Constraints" />
    <uo k="s:originTrace" v="n:3542413272732788550" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:3542413272732788550" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:3542413272732788550" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:3542413272732788550" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:3542413272732788550" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildAspect$nv" />
            <uo k="s:originTrace" v="n:3542413272732788550" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:3542413272732788550" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:3542413272732788550" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:3542413272732788550" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="31292e1a60dd541dL" />
                <uo k="s:originTrace" v="n:3542413272732788550" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildAspect" />
                <uo k="s:originTrace" v="n:3542413272732788550" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:3542413272732788550" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:3542413272732788550" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:3542413272732788550" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:3542413272732788550" />
              <node concept="YeOm9" id="l" role="2ShVmc">
                <uo k="s:originTrace" v="n:3542413272732788550" />
                <node concept="1Y3b0j" id="m" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:3542413272732788550" />
                  <node concept="3Tm1VV" id="n" role="1B3o_S">
                    <uo k="s:originTrace" v="n:3542413272732788550" />
                  </node>
                  <node concept="3clFb_" id="o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:3542413272732788550" />
                    <node concept="3Tm1VV" id="r" role="1B3o_S">
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                    </node>
                    <node concept="2AHcQZ" id="s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                    </node>
                    <node concept="3uibUv" id="t" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                    </node>
                    <node concept="37vLTG" id="u" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                      <node concept="3uibUv" id="x" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                      <node concept="2AHcQZ" id="y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="v" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                      <node concept="3uibUv" id="z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                      <node concept="2AHcQZ" id="$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="w" role="3clF47">
                      <uo k="s:originTrace" v="n:3542413272732788550" />
                      <node concept="3cpWs8" id="_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                        <node concept="3cpWsn" id="E" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:3542413272732788550" />
                          <node concept="10P_77" id="F" role="1tU5fm">
                            <uo k="s:originTrace" v="n:3542413272732788550" />
                          </node>
                          <node concept="1rXfSq" id="G" role="33vP2m">
                            <ref role="37wK5l" node="5" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:3542413272732788550" />
                            <node concept="2OqwBi" id="H" role="37wK5m">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                              <node concept="37vLTw" id="L" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                              <node concept="liA8E" id="M" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="I" role="37wK5m">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                              <node concept="37vLTw" id="N" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                              <node concept="liA8E" id="O" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="J" role="37wK5m">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                              <node concept="37vLTw" id="P" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                              <node concept="liA8E" id="Q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="K" role="37wK5m">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                              <node concept="37vLTw" id="R" role="2Oq$k0">
                                <ref role="3cqZAo" node="u" resolve="context" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                              <node concept="liA8E" id="S" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="A" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                      <node concept="3clFbJ" id="B" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                        <node concept="3clFbS" id="T" role="3clFbx">
                          <uo k="s:originTrace" v="n:3542413272732788550" />
                          <node concept="3clFbF" id="V" role="3cqZAp">
                            <uo k="s:originTrace" v="n:3542413272732788550" />
                            <node concept="2OqwBi" id="W" role="3clFbG">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                              <node concept="37vLTw" id="X" role="2Oq$k0">
                                <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                              </node>
                              <node concept="liA8E" id="Y" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:3542413272732788550" />
                                <node concept="1dyn4i" id="Z" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:3542413272732788550" />
                                  <node concept="2ShNRf" id="10" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:3542413272732788550" />
                                    <node concept="1pGfFk" id="11" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:3542413272732788550" />
                                      <node concept="Xl_RD" id="12" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:3542413272732788550" />
                                      </node>
                                      <node concept="Xl_RD" id="13" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580606" />
                                        <uo k="s:originTrace" v="n:3542413272732788550" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="U" role="3clFbw">
                          <uo k="s:originTrace" v="n:3542413272732788550" />
                          <node concept="3y3z36" id="14" role="3uHU7w">
                            <uo k="s:originTrace" v="n:3542413272732788550" />
                            <node concept="10Nm6u" id="16" role="3uHU7w">
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                            </node>
                            <node concept="37vLTw" id="17" role="3uHU7B">
                              <ref role="3cqZAo" node="v" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="15" role="3uHU7B">
                            <uo k="s:originTrace" v="n:3542413272732788550" />
                            <node concept="37vLTw" id="18" role="3fr31v">
                              <ref role="3cqZAo" node="E" resolve="result" />
                              <uo k="s:originTrace" v="n:3542413272732788550" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="C" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                      </node>
                      <node concept="3clFbF" id="D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:3542413272732788550" />
                        <node concept="37vLTw" id="19" role="3clFbG">
                          <ref role="3cqZAo" node="E" resolve="result" />
                          <uo k="s:originTrace" v="n:3542413272732788550" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="p" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:3542413272732788550" />
                  </node>
                  <node concept="3uibUv" id="q" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:3542413272732788550" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:3542413272732788550" />
    </node>
    <node concept="2YIFZL" id="5" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:3542413272732788550" />
      <node concept="10P_77" id="1a" role="3clF45">
        <uo k="s:originTrace" v="n:3542413272732788550" />
      </node>
      <node concept="3Tm6S6" id="1b" role="1B3o_S">
        <uo k="s:originTrace" v="n:3542413272732788550" />
      </node>
      <node concept="3clFbS" id="1c" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580607" />
        <node concept="3clFbF" id="1h" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580608" />
          <node concept="2OqwBi" id="1i" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580609" />
            <node concept="37vLTw" id="1j" role="2Oq$k0">
              <ref role="3cqZAo" node="1e" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580610" />
            </node>
            <node concept="1mIQ4w" id="1k" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580611" />
              <node concept="chp4Y" id="1l" role="cj9EA">
                <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                <uo k="s:originTrace" v="n:1227128029536580612" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1d" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="3uibUv" id="1m" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
        </node>
      </node>
      <node concept="37vLTG" id="1e" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="3uibUv" id="1n" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
        </node>
      </node>
      <node concept="37vLTG" id="1f" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="3uibUv" id="1o" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
        </node>
      </node>
      <node concept="37vLTG" id="1g" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:3542413272732788550" />
        <node concept="3uibUv" id="1p" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:3542413272732788550" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1q">
    <property role="3GE5qa" value="SourcePath" />
    <property role="TrG5h" value="BuildCompositePath_Constraints" />
    <uo k="s:originTrace" v="n:4005929891728734523" />
    <node concept="3Tm1VV" id="1r" role="1B3o_S">
      <uo k="s:originTrace" v="n:4005929891728734523" />
    </node>
    <node concept="3uibUv" id="1s" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4005929891728734523" />
    </node>
    <node concept="3clFbW" id="1t" role="jymVt">
      <uo k="s:originTrace" v="n:4005929891728734523" />
      <node concept="37vLTG" id="1w" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4005929891728734523" />
        <node concept="3uibUv" id="1z" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
      </node>
      <node concept="3cqZAl" id="1x" role="3clF45">
        <uo k="s:originTrace" v="n:4005929891728734523" />
      </node>
      <node concept="3clFbS" id="1y" role="3clF47">
        <uo k="s:originTrace" v="n:4005929891728734523" />
        <node concept="XkiVB" id="1$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
          <node concept="1BaE9c" id="1A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildCompositePath$Eh" />
            <uo k="s:originTrace" v="n:4005929891728734523" />
            <node concept="2YIFZM" id="1C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4005929891728734523" />
              <node concept="11gdke" id="1D" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
              </node>
              <node concept="11gdke" id="1E" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
              </node>
              <node concept="11gdke" id="1F" role="37wK5m">
                <property role="11gdj1" value="779c6e65c01467f1L" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
              </node>
              <node concept="Xl_RD" id="1G" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildCompositePath" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1B" role="37wK5m">
            <ref role="3cqZAo" node="1w" resolve="initContext" />
            <uo k="s:originTrace" v="n:4005929891728734523" />
          </node>
        </node>
        <node concept="3clFbF" id="1_" role="3cqZAp">
          <uo k="s:originTrace" v="n:4005929891728734523" />
          <node concept="1rXfSq" id="1H" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4005929891728734523" />
            <node concept="2ShNRf" id="1I" role="37wK5m">
              <uo k="s:originTrace" v="n:4005929891728734523" />
              <node concept="1pGfFk" id="1J" role="2ShVmc">
                <ref role="37wK5l" node="1L" resolve="BuildCompositePath_Constraints.Head_PD" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
                <node concept="Xjq3P" id="1K" role="37wK5m">
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u" role="jymVt">
      <uo k="s:originTrace" v="n:4005929891728734523" />
    </node>
    <node concept="312cEu" id="1v" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Head_PD" />
      <uo k="s:originTrace" v="n:4005929891728734523" />
      <node concept="3clFbW" id="1L" role="jymVt">
        <uo k="s:originTrace" v="n:4005929891728734523" />
        <node concept="3cqZAl" id="1O" role="3clF45">
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
        <node concept="3Tm1VV" id="1P" role="1B3o_S">
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
        <node concept="3clFbS" id="1Q" role="3clF47">
          <uo k="s:originTrace" v="n:4005929891728734523" />
          <node concept="XkiVB" id="1S" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4005929891728734523" />
            <node concept="1BaE9c" id="1T" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="head$$gC$" />
              <uo k="s:originTrace" v="n:4005929891728734523" />
              <node concept="2YIFZM" id="1Y" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4005929891728734523" />
                <node concept="11gdke" id="1Z" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
                <node concept="11gdke" id="20" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
                <node concept="11gdke" id="21" role="37wK5m">
                  <property role="11gdj1" value="779c6e65c01467f1L" />
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
                <node concept="11gdke" id="22" role="37wK5m">
                  <property role="11gdj1" value="779c6e65c01467f3L" />
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
                <node concept="Xl_RD" id="23" role="37wK5m">
                  <property role="Xl_RC" value="head" />
                  <uo k="s:originTrace" v="n:4005929891728734523" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1U" role="37wK5m">
              <ref role="3cqZAo" node="1R" resolve="container" />
              <uo k="s:originTrace" v="n:4005929891728734523" />
            </node>
            <node concept="3clFbT" id="1V" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4005929891728734523" />
            </node>
            <node concept="3clFbT" id="1W" role="37wK5m">
              <uo k="s:originTrace" v="n:4005929891728734523" />
            </node>
            <node concept="3clFbT" id="1X" role="37wK5m">
              <uo k="s:originTrace" v="n:4005929891728734523" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1R" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
          <node concept="3uibUv" id="24" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4005929891728734523" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1M" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4005929891728734523" />
        <node concept="3Tm1VV" id="25" role="1B3o_S">
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
        <node concept="3uibUv" id="26" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
        <node concept="37vLTG" id="27" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
          <node concept="3Tqbb2" id="2a" role="1tU5fm">
            <uo k="s:originTrace" v="n:4005929891728734523" />
          </node>
        </node>
        <node concept="2AHcQZ" id="28" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4005929891728734523" />
        </node>
        <node concept="3clFbS" id="29" role="3clF47">
          <uo k="s:originTrace" v="n:4005929891728734527" />
          <node concept="3SKdUt" id="2b" role="3cqZAp">
            <uo k="s:originTrace" v="n:4005929891729086529" />
            <node concept="1PaTwC" id="2f" role="1aUNEU">
              <uo k="s:originTrace" v="n:4005929891729086530" />
              <node concept="3oM_SD" id="2g" role="1PaTwD">
                <property role="3oM_SC" value="perhaps" />
                <uo k="s:originTrace" v="n:4005929891729086642" />
              </node>
              <node concept="3oM_SD" id="2h" role="1PaTwD">
                <property role="3oM_SC" value="could" />
                <uo k="s:originTrace" v="n:4005929891729086658" />
              </node>
              <node concept="3oM_SD" id="2i" role="1PaTwD">
                <property role="3oM_SC" value="drop" />
                <uo k="s:originTrace" v="n:4005929891729086662" />
              </node>
              <node concept="3oM_SD" id="2j" role="1PaTwD">
                <property role="3oM_SC" value="this" />
                <uo k="s:originTrace" v="n:4005929891729086679" />
              </node>
              <node concept="3oM_SD" id="2k" role="1PaTwD">
                <property role="3oM_SC" value="code" />
                <uo k="s:originTrace" v="n:4005929891729086733" />
              </node>
              <node concept="3oM_SD" id="2l" role="1PaTwD">
                <property role="3oM_SC" value="if" />
                <uo k="s:originTrace" v="n:4005929891729086740" />
              </node>
              <node concept="3oM_SD" id="2m" role="1PaTwD">
                <property role="3oM_SC" value="find" />
                <uo k="s:originTrace" v="n:4005929891729086748" />
              </node>
              <node concept="3oM_SD" id="2n" role="1PaTwD">
                <property role="3oM_SC" value="a" />
                <uo k="s:originTrace" v="n:4005929891729086781" />
              </node>
              <node concept="3oM_SD" id="2o" role="1PaTwD">
                <property role="3oM_SC" value="way" />
                <uo k="s:originTrace" v="n:4005929891729086791" />
              </node>
              <node concept="3oM_SD" id="2p" role="1PaTwD">
                <property role="3oM_SC" value="to" />
                <uo k="s:originTrace" v="n:4005929891729086802" />
              </node>
              <node concept="3oM_SD" id="2q" role="1PaTwD">
                <property role="3oM_SC" value="ensure" />
                <uo k="s:originTrace" v="n:4005929891729086826" />
              </node>
              <node concept="3oM_SD" id="2r" role="1PaTwD">
                <property role="3oM_SC" value="head" />
                <uo k="s:originTrace" v="n:4005929891729086851" />
              </node>
              <node concept="3oM_SD" id="2s" role="1PaTwD">
                <property role="3oM_SC" value="value" />
                <uo k="s:originTrace" v="n:4005929891729086889" />
              </node>
              <node concept="3oM_SD" id="2t" role="1PaTwD">
                <property role="3oM_SC" value="on" />
                <uo k="s:originTrace" v="n:4005929891729086904" />
              </node>
              <node concept="3oM_SD" id="2u" role="1PaTwD">
                <property role="3oM_SC" value="node" />
                <uo k="s:originTrace" v="n:4005929891729086932" />
              </node>
              <node concept="3oM_SD" id="2v" role="1PaTwD">
                <property role="3oM_SC" value="init" />
                <uo k="s:originTrace" v="n:4005929891729086949" />
              </node>
              <node concept="3oM_SD" id="2w" role="1PaTwD">
                <property role="3oM_SC" value="AND" />
                <uo k="s:originTrace" v="n:4005929891729086979" />
              </node>
              <node concept="3oM_SD" id="2x" role="1PaTwD">
                <uo k="s:originTrace" v="n:4005929891729087617" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2c" role="3cqZAp">
            <uo k="s:originTrace" v="n:4005929891729087509" />
            <node concept="1PaTwC" id="2y" role="1aUNEU">
              <uo k="s:originTrace" v="n:4005929891729087800" />
              <node concept="3oM_SD" id="2z" role="1PaTwD">
                <property role="3oM_SC" value="there's" />
                <uo k="s:originTrace" v="n:4005929891729087801" />
              </node>
              <node concept="3oM_SD" id="2$" role="1PaTwD">
                <property role="3oM_SC" value="a" />
                <uo k="s:originTrace" v="n:4005929891729088263" />
              </node>
              <node concept="3oM_SD" id="2_" role="1PaTwD">
                <property role="3oM_SC" value="mechanism" />
                <uo k="s:originTrace" v="n:4005929891729088279" />
              </node>
              <node concept="3oM_SD" id="2A" role="1PaTwD">
                <property role="3oM_SC" value="to" />
                <uo k="s:originTrace" v="n:4005929891729088284" />
              </node>
              <node concept="3oM_SD" id="2B" role="1PaTwD">
                <property role="3oM_SC" value="migrate" />
                <uo k="s:originTrace" v="n:4005929891729088290" />
              </node>
              <node concept="3oM_SD" id="2C" role="1PaTwD">
                <property role="3oM_SC" value="old" />
                <uo k="s:originTrace" v="n:4005929891729088309" />
              </node>
              <node concept="3oM_SD" id="2D" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
                <uo k="s:originTrace" v="n:4005929891729088317" />
              </node>
              <node concept="3oM_SD" id="2E" role="1PaTwD">
                <property role="3oM_SC" value="with" />
                <uo k="s:originTrace" v="n:4005929891729088350" />
              </node>
              <node concept="3oM_SD" id="2F" role="1PaTwD">
                <property role="3oM_SC" value="head" />
                <uo k="s:originTrace" v="n:4005929891729088360" />
              </node>
              <node concept="3oM_SD" id="2G" role="1PaTwD">
                <property role="3oM_SC" value="==" />
                <uo k="s:originTrace" v="n:4005929891729088383" />
              </node>
              <node concept="3oM_SD" id="2H" role="1PaTwD">
                <property role="3oM_SC" value="null" />
                <uo k="s:originTrace" v="n:4005929891729088395" />
              </node>
              <node concept="3oM_SD" id="2I" role="1PaTwD">
                <property role="3oM_SC" value="(rare" />
                <uo k="s:originTrace" v="n:4005929891729088432" />
              </node>
              <node concept="3oM_SD" id="2J" role="1PaTwD">
                <property role="3oM_SC" value="case" />
                <uo k="s:originTrace" v="n:4005929891729088470" />
              </node>
              <node concept="3oM_SD" id="2K" role="1PaTwD">
                <property role="3oM_SC" value="I'd" />
                <uo k="s:originTrace" v="n:4005929891729088521" />
              </node>
              <node concept="3oM_SD" id="2L" role="1PaTwD">
                <property role="3oM_SC" value="say)" />
                <uo k="s:originTrace" v="n:4005929891729088561" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2d" role="3cqZAp">
            <uo k="s:originTrace" v="n:4005929891728746639" />
            <node concept="3cpWsn" id="2M" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <uo k="s:originTrace" v="n:4005929891728746640" />
              <node concept="17QB3L" id="2N" role="1tU5fm">
                <uo k="s:originTrace" v="n:4005929891728746610" />
              </node>
              <node concept="2OqwBi" id="2O" role="33vP2m">
                <uo k="s:originTrace" v="n:4005929891728746641" />
                <node concept="37vLTw" id="2P" role="2Oq$k0">
                  <ref role="3cqZAo" node="27" resolve="node" />
                  <uo k="s:originTrace" v="n:4005929891728746642" />
                </node>
                <node concept="3TrcHB" id="2Q" role="2OqNvi">
                  <ref role="3TsBF5" to="3ior:7usrAn056vN" resolve="head" />
                  <uo k="s:originTrace" v="n:4005929891728746643" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2e" role="3cqZAp">
            <uo k="s:originTrace" v="n:4005929891728737732" />
            <node concept="3K4zz7" id="2R" role="3clFbG">
              <uo k="s:originTrace" v="n:4005929891728743521" />
              <node concept="Xl_RD" id="2S" role="3K4E3e">
                <property role="Xl_RC" value="" />
                <uo k="s:originTrace" v="n:4005929891728743585" />
              </node>
              <node concept="37vLTw" id="2T" role="3K4GZi">
                <ref role="3cqZAo" node="2M" resolve="value" />
                <uo k="s:originTrace" v="n:4005929891728746645" />
              </node>
              <node concept="2OqwBi" id="2U" role="3K4Cdx">
                <uo k="s:originTrace" v="n:4005929891728740840" />
                <node concept="37vLTw" id="2V" role="2Oq$k0">
                  <ref role="3cqZAo" node="2M" resolve="value" />
                  <uo k="s:originTrace" v="n:4005929891728746644" />
                </node>
                <node concept="17RlXB" id="2W" role="2OqNvi">
                  <uo k="s:originTrace" v="n:4005929891728741826" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1N" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4005929891728734523" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2X">
    <property role="3GE5qa" value="Layout.External" />
    <property role="TrG5h" value="BuildExternalLayoutDependency_Constraints" />
    <uo k="s:originTrace" v="n:7181125477683417258" />
    <node concept="3Tm1VV" id="2Y" role="1B3o_S">
      <uo k="s:originTrace" v="n:7181125477683417258" />
    </node>
    <node concept="3uibUv" id="2Z" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7181125477683417258" />
    </node>
    <node concept="3clFbW" id="30" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683417258" />
      <node concept="37vLTG" id="33" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7181125477683417258" />
        <node concept="3uibUv" id="36" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
      </node>
      <node concept="3cqZAl" id="34" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683417258" />
      </node>
      <node concept="3clFbS" id="35" role="3clF47">
        <uo k="s:originTrace" v="n:7181125477683417258" />
        <node concept="XkiVB" id="37" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
          <node concept="1BaE9c" id="39" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildExternalLayoutDependency$oL" />
            <uo k="s:originTrace" v="n:7181125477683417258" />
            <node concept="2YIFZM" id="3b" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7181125477683417258" />
              <node concept="11gdke" id="3c" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
              </node>
              <node concept="11gdke" id="3d" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
              </node>
              <node concept="11gdke" id="3e" role="37wK5m">
                <property role="11gdj1" value="63a87b9320d3d0a4L" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
              </node>
              <node concept="Xl_RD" id="3f" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildExternalLayoutDependency" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3a" role="37wK5m">
            <ref role="3cqZAo" node="33" resolve="initContext" />
            <uo k="s:originTrace" v="n:7181125477683417258" />
          </node>
        </node>
        <node concept="3clFbF" id="38" role="3cqZAp">
          <uo k="s:originTrace" v="n:7181125477683417258" />
          <node concept="1rXfSq" id="3g" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7181125477683417258" />
            <node concept="2ShNRf" id="3h" role="37wK5m">
              <uo k="s:originTrace" v="n:7181125477683417258" />
              <node concept="1pGfFk" id="3i" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="3k" resolve="BuildExternalLayoutDependency_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
                <node concept="Xjq3P" id="3j" role="37wK5m">
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683417258" />
    </node>
    <node concept="312cEu" id="32" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7181125477683417258" />
      <node concept="3clFbW" id="3k" role="jymVt">
        <uo k="s:originTrace" v="n:7181125477683417258" />
        <node concept="37vLTG" id="3n" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
          <node concept="3uibUv" id="3q" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7181125477683417258" />
          </node>
        </node>
        <node concept="3cqZAl" id="3o" role="3clF45">
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
        <node concept="3clFbS" id="3p" role="3clF47">
          <uo k="s:originTrace" v="n:7181125477683417258" />
          <node concept="XkiVB" id="3r" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7181125477683417258" />
            <node concept="1BaE9c" id="3s" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="layout$GC7_" />
              <uo k="s:originTrace" v="n:7181125477683417258" />
              <node concept="2YIFZM" id="3w" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7181125477683417258" />
                <node concept="11gdke" id="3x" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
                <node concept="11gdke" id="3y" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
                <node concept="11gdke" id="3z" role="37wK5m">
                  <property role="11gdj1" value="63a87b9320d3d0a4L" />
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
                <node concept="11gdke" id="3$" role="37wK5m">
                  <property role="11gdj1" value="63a87b9320d3d0a7L" />
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
                <node concept="Xl_RD" id="3_" role="37wK5m">
                  <property role="Xl_RC" value="layout" />
                  <uo k="s:originTrace" v="n:7181125477683417258" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3t" role="37wK5m">
              <ref role="3cqZAo" node="3n" resolve="container" />
              <uo k="s:originTrace" v="n:7181125477683417258" />
            </node>
            <node concept="3clFbT" id="3u" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7181125477683417258" />
            </node>
            <node concept="3clFbT" id="3v" role="37wK5m">
              <uo k="s:originTrace" v="n:7181125477683417258" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3l" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7181125477683417258" />
        <node concept="3Tm1VV" id="3A" role="1B3o_S">
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
        <node concept="3uibUv" id="3B" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
        <node concept="2AHcQZ" id="3C" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
        <node concept="3clFbS" id="3D" role="3clF47">
          <uo k="s:originTrace" v="n:7181125477683417258" />
          <node concept="3cpWs6" id="3F" role="3cqZAp">
            <uo k="s:originTrace" v="n:7181125477683417258" />
            <node concept="2YIFZM" id="3G" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:8258189873530172586" />
              <node concept="35c_gC" id="3H" role="37wK5m">
                <ref role="35c_gD" to="3ior:6eCuTcwObZ9" resolve="BuildExternalLayout" />
                <uo k="s:originTrace" v="n:8258189873530172586" />
              </node>
              <node concept="2ShNRf" id="3I" role="37wK5m">
                <uo k="s:originTrace" v="n:8258189873530172586" />
                <node concept="1pGfFk" id="3J" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:8258189873530172586" />
                  <node concept="Xl_RD" id="3K" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:8258189873530172586" />
                  </node>
                  <node concept="Xl_RD" id="3L" role="37wK5m">
                    <property role="Xl_RC" value="8258189873530172586" />
                    <uo k="s:originTrace" v="n:8258189873530172586" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7181125477683417258" />
        </node>
      </node>
      <node concept="3uibUv" id="3m" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7181125477683417258" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3M">
    <property role="3GE5qa" value="Layout.External" />
    <property role="TrG5h" value="BuildExternalLayout_Constraints" />
    <uo k="s:originTrace" v="n:7181125477683218680" />
    <node concept="3Tm1VV" id="3N" role="1B3o_S">
      <uo k="s:originTrace" v="n:7181125477683218680" />
    </node>
    <node concept="3uibUv" id="3O" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7181125477683218680" />
    </node>
    <node concept="3clFbW" id="3P" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683218680" />
      <node concept="37vLTG" id="3T" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="3W" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="3cqZAl" id="3U" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683218680" />
      </node>
      <node concept="3clFbS" id="3V" role="3clF47">
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="XkiVB" id="3X" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
          <node concept="1BaE9c" id="40" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildExternalLayout$8z" />
            <uo k="s:originTrace" v="n:7181125477683218680" />
            <node concept="2YIFZM" id="42" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7181125477683218680" />
              <node concept="11gdke" id="43" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7181125477683218680" />
              </node>
              <node concept="11gdke" id="44" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7181125477683218680" />
              </node>
              <node concept="11gdke" id="45" role="37wK5m">
                <property role="11gdj1" value="63a87b9320d0bfc9L" />
                <uo k="s:originTrace" v="n:7181125477683218680" />
              </node>
              <node concept="Xl_RD" id="46" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildExternalLayout" />
                <uo k="s:originTrace" v="n:7181125477683218680" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="41" role="37wK5m">
            <ref role="3cqZAo" node="3T" resolve="initContext" />
            <uo k="s:originTrace" v="n:7181125477683218680" />
          </node>
        </node>
        <node concept="3clFbF" id="3Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:7181125477683218680" />
          <node concept="1rXfSq" id="47" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7181125477683218680" />
            <node concept="2ShNRf" id="48" role="37wK5m">
              <uo k="s:originTrace" v="n:7181125477683218680" />
              <node concept="YeOm9" id="49" role="2ShVmc">
                <uo k="s:originTrace" v="n:7181125477683218680" />
                <node concept="1Y3b0j" id="4a" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7181125477683218680" />
                  <node concept="3Tm1VV" id="4b" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                  <node concept="3clFb_" id="4c" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                    <node concept="3Tm1VV" id="4f" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="2AHcQZ" id="4g" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="3uibUv" id="4h" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="37vLTG" id="4i" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3uibUv" id="4l" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="2AHcQZ" id="4m" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="4j" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3uibUv" id="4n" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="2AHcQZ" id="4o" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4k" role="3clF47">
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3cpWs8" id="4p" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="3cpWsn" id="4u" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="10P_77" id="4v" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                          </node>
                          <node concept="1rXfSq" id="4w" role="33vP2m">
                            <ref role="37wK5l" node="3R" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="2OqwBi" id="4x" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="4_" role="2Oq$k0">
                                <ref role="3cqZAo" node="4i" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="4A" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4y" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="4B" role="2Oq$k0">
                                <ref role="3cqZAo" node="4i" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="4C" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4z" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="4D" role="2Oq$k0">
                                <ref role="3cqZAo" node="4i" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="4E" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4$" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="4F" role="2Oq$k0">
                                <ref role="3cqZAo" node="4i" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="4G" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="4q" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="3clFbJ" id="4r" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="3clFbS" id="4H" role="3clFbx">
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="3clFbF" id="4J" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="2OqwBi" id="4K" role="3clFbG">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="4L" role="2Oq$k0">
                                <ref role="3cqZAo" node="4j" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="4M" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                                <node concept="1dyn4i" id="4N" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7181125477683218680" />
                                  <node concept="2ShNRf" id="4O" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7181125477683218680" />
                                    <node concept="1pGfFk" id="4P" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7181125477683218680" />
                                      <node concept="Xl_RD" id="4Q" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7181125477683218680" />
                                      </node>
                                      <node concept="Xl_RD" id="4R" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580554" />
                                        <uo k="s:originTrace" v="n:7181125477683218680" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="4I" role="3clFbw">
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="3y3z36" id="4S" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="10Nm6u" id="4U" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                            <node concept="37vLTw" id="4V" role="3uHU7B">
                              <ref role="3cqZAo" node="4j" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="4T" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="37vLTw" id="4W" role="3fr31v">
                              <ref role="3cqZAo" node="4u" resolve="result" />
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="4s" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="3clFbF" id="4t" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="37vLTw" id="4X" role="3clFbG">
                          <ref role="3cqZAo" node="4u" resolve="result" />
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="4d" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                  <node concept="3uibUv" id="4e" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:7181125477683218680" />
          <node concept="1rXfSq" id="4Y" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeAncestor(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeAncestor" />
            <uo k="s:originTrace" v="n:7181125477683218680" />
            <node concept="2ShNRf" id="4Z" role="37wK5m">
              <uo k="s:originTrace" v="n:7181125477683218680" />
              <node concept="YeOm9" id="50" role="2ShVmc">
                <uo k="s:originTrace" v="n:7181125477683218680" />
                <node concept="1Y3b0j" id="51" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7181125477683218680" />
                  <node concept="3Tm1VV" id="52" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                  <node concept="3clFb_" id="53" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                    <node concept="3Tm1VV" id="56" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="2AHcQZ" id="57" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="3uibUv" id="58" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                    </node>
                    <node concept="37vLTG" id="59" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3uibUv" id="5c" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeAncestor" resolve="ConstraintContext_CanBeAncestor" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="2AHcQZ" id="5d" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="5a" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3uibUv" id="5e" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="2AHcQZ" id="5f" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5b" role="3clF47">
                      <uo k="s:originTrace" v="n:7181125477683218680" />
                      <node concept="3cpWs8" id="5g" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="3cpWsn" id="5l" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="10P_77" id="5m" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                          </node>
                          <node concept="1rXfSq" id="5n" role="33vP2m">
                            <ref role="37wK5l" node="3S" resolve="staticCanBeAnAncestor" />
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="2OqwBi" id="5o" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5t" role="2Oq$k0">
                                <ref role="3cqZAo" node="59" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5u" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5p" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5v" role="2Oq$k0">
                                <ref role="3cqZAo" node="59" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5w" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getChildNode()" resolve="getChildNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5q" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5x" role="2Oq$k0">
                                <ref role="3cqZAo" node="59" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5y" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getChildConcept()" resolve="getChildConcept" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5r" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5z" role="2Oq$k0">
                                <ref role="3cqZAo" node="59" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5$" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5s" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5_" role="2Oq$k0">
                                <ref role="3cqZAo" node="59" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5A" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeAncestor.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5h" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="3clFbJ" id="5i" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="3clFbS" id="5B" role="3clFbx">
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="3clFbF" id="5D" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="2OqwBi" id="5E" role="3clFbG">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                              <node concept="37vLTw" id="5F" role="2Oq$k0">
                                <ref role="3cqZAo" node="5a" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                              </node>
                              <node concept="liA8E" id="5G" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7181125477683218680" />
                                <node concept="1dyn4i" id="5H" role="37wK5m">
                                  <property role="1dyqJU" value="canBeAncestorBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7181125477683218680" />
                                  <node concept="2ShNRf" id="5I" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7181125477683218680" />
                                    <node concept="1pGfFk" id="5J" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7181125477683218680" />
                                      <node concept="Xl_RD" id="5K" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7181125477683218680" />
                                      </node>
                                      <node concept="Xl_RD" id="5L" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580528" />
                                        <uo k="s:originTrace" v="n:7181125477683218680" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="5C" role="3clFbw">
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                          <node concept="3y3z36" id="5M" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="10Nm6u" id="5O" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                            <node concept="37vLTw" id="5P" role="3uHU7B">
                              <ref role="3cqZAo" node="5a" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="5N" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7181125477683218680" />
                            <node concept="37vLTw" id="5Q" role="3fr31v">
                              <ref role="3cqZAo" node="5l" resolve="result" />
                              <uo k="s:originTrace" v="n:7181125477683218680" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5j" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                      </node>
                      <node concept="3clFbF" id="5k" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683218680" />
                        <node concept="37vLTw" id="5R" role="3clFbG">
                          <ref role="3cqZAo" node="5l" resolve="result" />
                          <uo k="s:originTrace" v="n:7181125477683218680" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="54" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeAncestor" resolve="ConstraintContext_CanBeAncestor" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                  <node concept="3uibUv" id="55" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7181125477683218680" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Q" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683218680" />
    </node>
    <node concept="2YIFZL" id="3R" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7181125477683218680" />
      <node concept="10P_77" id="5S" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683218680" />
      </node>
      <node concept="3Tm6S6" id="5T" role="1B3o_S">
        <uo k="s:originTrace" v="n:7181125477683218680" />
      </node>
      <node concept="3clFbS" id="5U" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580555" />
        <node concept="3clFbF" id="5Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580556" />
          <node concept="3clFbT" id="60" role="3clFbG">
            <property role="3clFbU" value="false" />
            <uo k="s:originTrace" v="n:1227128029536580557" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5V" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="61" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="5W" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="62" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="5X" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="63" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="5Y" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="64" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3S" role="jymVt">
      <property role="TrG5h" value="staticCanBeAnAncestor" />
      <uo k="s:originTrace" v="n:7181125477683218680" />
      <node concept="37vLTG" id="65" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="6d" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="66" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="6e" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="67" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="6f" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="68" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="6g" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="37vLTG" id="69" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7181125477683218680" />
        <node concept="3uibUv" id="6h" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7181125477683218680" />
        </node>
      </node>
      <node concept="10P_77" id="6a" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683218680" />
      </node>
      <node concept="3Tm6S6" id="6b" role="1B3o_S">
        <uo k="s:originTrace" v="n:7181125477683218680" />
      </node>
      <node concept="3clFbS" id="6c" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580529" />
        <node concept="3clFbJ" id="6i" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580530" />
          <node concept="3clFbS" id="6l" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536580531" />
            <node concept="3cpWs6" id="6n" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536580532" />
              <node concept="2OqwBi" id="6o" role="3cqZAk">
                <uo k="s:originTrace" v="n:1227128029536580533" />
                <node concept="37vLTw" id="6p" role="2Oq$k0">
                  <ref role="3cqZAo" node="67" resolve="childConcept" />
                  <uo k="s:originTrace" v="n:1227128029536580551" />
                </node>
                <node concept="2Zo12i" id="6q" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580535" />
                  <node concept="chp4Y" id="6r" role="2Zo12j">
                    <ref role="cht4Q" to="3ior:6eCuTcwOczV" resolve="BuildLayout_PureNode" />
                    <uo k="s:originTrace" v="n:1227128029536580536" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6m" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536580537" />
            <node concept="37vLTw" id="6s" role="2Oq$k0">
              <ref role="3cqZAo" node="67" resolve="childConcept" />
              <uo k="s:originTrace" v="n:1227128029536580552" />
            </node>
            <node concept="2Zo12i" id="6t" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580539" />
              <node concept="chp4Y" id="6u" role="2Zo12j">
                <ref role="cht4Q" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                <uo k="s:originTrace" v="n:1227128029536580540" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6j" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <uo k="s:originTrace" v="n:1227128029536580541" />
          <node concept="3clFbS" id="6v" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536580542" />
            <node concept="3cpWs6" id="6x" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536580543" />
              <node concept="3clFbT" id="6y" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:1227128029536580544" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6w" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536580545" />
            <node concept="37vLTw" id="6z" role="2Oq$k0">
              <ref role="3cqZAo" node="67" resolve="childConcept" />
              <uo k="s:originTrace" v="n:1227128029536580553" />
            </node>
            <node concept="2Zo12i" id="6$" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580547" />
              <node concept="chp4Y" id="6_" role="2Zo12j">
                <ref role="cht4Q" to="3ior:4zlO3QT8mNE" resolve="BuildInputResourceSet" />
                <uo k="s:originTrace" v="n:1227128029536580548" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6k" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580549" />
          <node concept="3clFbT" id="6A" role="3clFbG">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:1227128029536580550" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6B">
    <property role="3GE5qa" value="Layout.Java" />
    <property role="TrG5h" value="BuildLayout_CompileOutputOf_Constraints" />
    <uo k="s:originTrace" v="n:2591537044435952571" />
    <node concept="3Tm1VV" id="6C" role="1B3o_S">
      <uo k="s:originTrace" v="n:2591537044435952571" />
    </node>
    <node concept="3uibUv" id="6D" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2591537044435952571" />
    </node>
    <node concept="3clFbW" id="6E" role="jymVt">
      <uo k="s:originTrace" v="n:2591537044435952571" />
      <node concept="37vLTG" id="6I" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3uibUv" id="6L" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
      <node concept="3cqZAl" id="6J" role="3clF45">
        <uo k="s:originTrace" v="n:2591537044435952571" />
      </node>
      <node concept="3clFbS" id="6K" role="3clF47">
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="XkiVB" id="6M" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="1BaE9c" id="6P" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_CompileOutputOf$1E" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
            <node concept="2YIFZM" id="6R" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2591537044435952571" />
              <node concept="11gdke" id="6S" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
              </node>
              <node concept="11gdke" id="6T" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
              </node>
              <node concept="11gdke" id="6U" role="37wK5m">
                <property role="11gdj1" value="23f6fd361bdcfd24L" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
              </node>
              <node concept="Xl_RD" id="6V" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_CompileOutputOf" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6Q" role="37wK5m">
            <ref role="3cqZAo" node="6I" resolve="initContext" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
          </node>
        </node>
        <node concept="3clFbF" id="6N" role="3cqZAp">
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="1rXfSq" id="6W" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
            <node concept="2ShNRf" id="6X" role="37wK5m">
              <uo k="s:originTrace" v="n:2591537044435952571" />
              <node concept="1pGfFk" id="6Y" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="7R" resolve="BuildLayout_CompileOutputOf_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
                <node concept="Xjq3P" id="6Z" role="37wK5m">
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6O" role="3cqZAp">
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="1rXfSq" id="70" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
            <node concept="2ShNRf" id="71" role="37wK5m">
              <uo k="s:originTrace" v="n:2591537044435952571" />
              <node concept="YeOm9" id="72" role="2ShVmc">
                <uo k="s:originTrace" v="n:2591537044435952571" />
                <node concept="1Y3b0j" id="73" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                  <node concept="3Tm1VV" id="74" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2591537044435952571" />
                  </node>
                  <node concept="3clFb_" id="75" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2591537044435952571" />
                    <node concept="3Tm1VV" id="78" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                    </node>
                    <node concept="2AHcQZ" id="79" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                    </node>
                    <node concept="3uibUv" id="7a" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                    </node>
                    <node concept="37vLTG" id="7b" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                      <node concept="3uibUv" id="7e" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                      <node concept="2AHcQZ" id="7f" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7c" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                      <node concept="3uibUv" id="7g" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                      <node concept="2AHcQZ" id="7h" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7d" role="3clF47">
                      <uo k="s:originTrace" v="n:2591537044435952571" />
                      <node concept="3cpWs8" id="7i" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                        <node concept="3cpWsn" id="7n" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2591537044435952571" />
                          <node concept="10P_77" id="7o" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2591537044435952571" />
                          </node>
                          <node concept="1rXfSq" id="7p" role="33vP2m">
                            <ref role="37wK5l" node="6H" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:2591537044435952571" />
                            <node concept="2OqwBi" id="7q" role="37wK5m">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                              <node concept="37vLTw" id="7u" role="2Oq$k0">
                                <ref role="3cqZAo" node="7b" resolve="context" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                              <node concept="liA8E" id="7v" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7r" role="37wK5m">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                              <node concept="37vLTw" id="7w" role="2Oq$k0">
                                <ref role="3cqZAo" node="7b" resolve="context" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                              <node concept="liA8E" id="7x" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7s" role="37wK5m">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                              <node concept="37vLTw" id="7y" role="2Oq$k0">
                                <ref role="3cqZAo" node="7b" resolve="context" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                              <node concept="liA8E" id="7z" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7t" role="37wK5m">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                              <node concept="37vLTw" id="7$" role="2Oq$k0">
                                <ref role="3cqZAo" node="7b" resolve="context" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                              <node concept="liA8E" id="7_" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7j" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                      <node concept="3clFbJ" id="7k" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                        <node concept="3clFbS" id="7A" role="3clFbx">
                          <uo k="s:originTrace" v="n:2591537044435952571" />
                          <node concept="3clFbF" id="7C" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2591537044435952571" />
                            <node concept="2OqwBi" id="7D" role="3clFbG">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                              <node concept="37vLTw" id="7E" role="2Oq$k0">
                                <ref role="3cqZAo" node="7c" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                              </node>
                              <node concept="liA8E" id="7F" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2591537044435952571" />
                                <node concept="1dyn4i" id="7G" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2591537044435952571" />
                                  <node concept="2ShNRf" id="7H" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2591537044435952571" />
                                    <node concept="1pGfFk" id="7I" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2591537044435952571" />
                                      <node concept="Xl_RD" id="7J" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:2591537044435952571" />
                                      </node>
                                      <node concept="Xl_RD" id="7K" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580599" />
                                        <uo k="s:originTrace" v="n:2591537044435952571" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="7B" role="3clFbw">
                          <uo k="s:originTrace" v="n:2591537044435952571" />
                          <node concept="3y3z36" id="7L" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2591537044435952571" />
                            <node concept="10Nm6u" id="7N" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                            </node>
                            <node concept="37vLTw" id="7O" role="3uHU7B">
                              <ref role="3cqZAo" node="7c" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="7M" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2591537044435952571" />
                            <node concept="37vLTw" id="7P" role="3fr31v">
                              <ref role="3cqZAo" node="7n" resolve="result" />
                              <uo k="s:originTrace" v="n:2591537044435952571" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7l" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                      </node>
                      <node concept="3clFbF" id="7m" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2591537044435952571" />
                        <node concept="37vLTw" id="7Q" role="3clFbG">
                          <ref role="3cqZAo" node="7n" resolve="result" />
                          <uo k="s:originTrace" v="n:2591537044435952571" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="76" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:2591537044435952571" />
                  </node>
                  <node concept="3uibUv" id="77" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2591537044435952571" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6F" role="jymVt">
      <uo k="s:originTrace" v="n:2591537044435952571" />
    </node>
    <node concept="312cEu" id="6G" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2591537044435952571" />
      <node concept="3clFbW" id="7R" role="jymVt">
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="37vLTG" id="7U" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="3uibUv" id="7X" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
          </node>
        </node>
        <node concept="3cqZAl" id="7V" role="3clF45">
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
        <node concept="3clFbS" id="7W" role="3clF47">
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="XkiVB" id="7Y" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2591537044435952571" />
            <node concept="1BaE9c" id="7Z" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="module$qsl4" />
              <uo k="s:originTrace" v="n:2591537044435952571" />
              <node concept="2YIFZM" id="83" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2591537044435952571" />
                <node concept="11gdke" id="84" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
                <node concept="11gdke" id="85" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
                <node concept="11gdke" id="86" role="37wK5m">
                  <property role="11gdj1" value="23f6fd361bdcfd24L" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
                <node concept="11gdke" id="87" role="37wK5m">
                  <property role="11gdj1" value="23f6fd361bdcfd26L" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
                <node concept="Xl_RD" id="88" role="37wK5m">
                  <property role="Xl_RC" value="module" />
                  <uo k="s:originTrace" v="n:2591537044435952571" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="80" role="37wK5m">
              <ref role="3cqZAo" node="7U" resolve="container" />
              <uo k="s:originTrace" v="n:2591537044435952571" />
            </node>
            <node concept="3clFbT" id="81" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2591537044435952571" />
            </node>
            <node concept="3clFbT" id="82" role="37wK5m">
              <uo k="s:originTrace" v="n:2591537044435952571" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7S" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3Tm1VV" id="89" role="1B3o_S">
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
        <node concept="3uibUv" id="8a" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
        <node concept="2AHcQZ" id="8b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
        <node concept="3clFbS" id="8c" role="3clF47">
          <uo k="s:originTrace" v="n:2591537044435952571" />
          <node concept="3cpWs6" id="8e" role="3cqZAp">
            <uo k="s:originTrace" v="n:2591537044435952571" />
            <node concept="2YIFZM" id="8f" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1224588814561883819" />
              <node concept="35c_gC" id="8g" role="37wK5m">
                <ref role="35c_gD" to="3ior:2fQZjorRfOB" resolve="BuildSource_CompilablePart" />
                <uo k="s:originTrace" v="n:1224588814561883819" />
              </node>
              <node concept="2ShNRf" id="8h" role="37wK5m">
                <uo k="s:originTrace" v="n:1224588814561883819" />
                <node concept="1pGfFk" id="8i" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1224588814561883819" />
                  <node concept="Xl_RD" id="8j" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1224588814561883819" />
                  </node>
                  <node concept="Xl_RD" id="8k" role="37wK5m">
                    <property role="Xl_RC" value="1224588814561883819" />
                    <uo k="s:originTrace" v="n:1224588814561883819" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="8d" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
      <node concept="3uibUv" id="7T" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
      </node>
    </node>
    <node concept="2YIFZL" id="6H" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:2591537044435952571" />
      <node concept="10P_77" id="8l" role="3clF45">
        <uo k="s:originTrace" v="n:2591537044435952571" />
      </node>
      <node concept="3Tm6S6" id="8m" role="1B3o_S">
        <uo k="s:originTrace" v="n:2591537044435952571" />
      </node>
      <node concept="3clFbS" id="8n" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580600" />
        <node concept="3clFbF" id="8s" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580601" />
          <node concept="2OqwBi" id="8t" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580602" />
            <node concept="37vLTw" id="8u" role="2Oq$k0">
              <ref role="3cqZAo" node="8p" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580603" />
            </node>
            <node concept="1mIQ4w" id="8v" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580604" />
              <node concept="chp4Y" id="8w" role="cj9EA">
                <ref role="cht4Q" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
                <uo k="s:originTrace" v="n:1227128029536580605" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8o" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3uibUv" id="8x" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
      <node concept="37vLTG" id="8p" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3uibUv" id="8y" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
      <node concept="37vLTG" id="8q" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3uibUv" id="8z" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
      <node concept="37vLTG" id="8r" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2591537044435952571" />
        <node concept="3uibUv" id="8$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2591537044435952571" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8_">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_Constraints" />
    <uo k="s:originTrace" v="n:4993211115183387848" />
    <node concept="3Tm1VV" id="8A" role="1B3o_S">
      <uo k="s:originTrace" v="n:4993211115183387848" />
    </node>
    <node concept="3uibUv" id="8B" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4993211115183387848" />
    </node>
    <node concept="3clFbW" id="8C" role="jymVt">
      <uo k="s:originTrace" v="n:4993211115183387848" />
      <node concept="37vLTG" id="8F" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="3uibUv" id="8I" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
        </node>
      </node>
      <node concept="3cqZAl" id="8G" role="3clF45">
        <uo k="s:originTrace" v="n:4993211115183387848" />
      </node>
      <node concept="3clFbS" id="8H" role="3clF47">
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="XkiVB" id="8J" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
          <node concept="1BaE9c" id="8L" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout$aH" />
            <uo k="s:originTrace" v="n:4993211115183387848" />
            <node concept="2YIFZM" id="8N" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4993211115183387848" />
              <node concept="11gdke" id="8O" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4993211115183387848" />
              </node>
              <node concept="11gdke" id="8P" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4993211115183387848" />
              </node>
              <node concept="11gdke" id="8Q" role="37wK5m">
                <property role="11gdj1" value="4df58c6f18f84a14L" />
                <uo k="s:originTrace" v="n:4993211115183387848" />
              </node>
              <node concept="Xl_RD" id="8R" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout" />
                <uo k="s:originTrace" v="n:4993211115183387848" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="8M" role="37wK5m">
            <ref role="3cqZAo" node="8F" resolve="initContext" />
            <uo k="s:originTrace" v="n:4993211115183387848" />
          </node>
        </node>
        <node concept="3clFbF" id="8K" role="3cqZAp">
          <uo k="s:originTrace" v="n:4993211115183387848" />
          <node concept="1rXfSq" id="8S" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:4993211115183387848" />
            <node concept="2ShNRf" id="8T" role="37wK5m">
              <uo k="s:originTrace" v="n:4993211115183387848" />
              <node concept="YeOm9" id="8U" role="2ShVmc">
                <uo k="s:originTrace" v="n:4993211115183387848" />
                <node concept="1Y3b0j" id="8V" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:4993211115183387848" />
                  <node concept="3Tm1VV" id="8W" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4993211115183387848" />
                  </node>
                  <node concept="3clFb_" id="8X" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:4993211115183387848" />
                    <node concept="3Tm1VV" id="90" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                    </node>
                    <node concept="2AHcQZ" id="91" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                    </node>
                    <node concept="3uibUv" id="92" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                    </node>
                    <node concept="37vLTG" id="93" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                      <node concept="3uibUv" id="96" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                      <node concept="2AHcQZ" id="97" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="94" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                      <node concept="3uibUv" id="98" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                      <node concept="2AHcQZ" id="99" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="95" role="3clF47">
                      <uo k="s:originTrace" v="n:4993211115183387848" />
                      <node concept="3cpWs8" id="9a" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                        <node concept="3cpWsn" id="9f" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:4993211115183387848" />
                          <node concept="10P_77" id="9g" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4993211115183387848" />
                          </node>
                          <node concept="1rXfSq" id="9h" role="33vP2m">
                            <ref role="37wK5l" node="8E" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:4993211115183387848" />
                            <node concept="2OqwBi" id="9i" role="37wK5m">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                              <node concept="37vLTw" id="9m" role="2Oq$k0">
                                <ref role="3cqZAo" node="93" resolve="context" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                              <node concept="liA8E" id="9n" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9j" role="37wK5m">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                              <node concept="37vLTw" id="9o" role="2Oq$k0">
                                <ref role="3cqZAo" node="93" resolve="context" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                              <node concept="liA8E" id="9p" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9k" role="37wK5m">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                              <node concept="37vLTw" id="9q" role="2Oq$k0">
                                <ref role="3cqZAo" node="93" resolve="context" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                              <node concept="liA8E" id="9r" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="9l" role="37wK5m">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                              <node concept="37vLTw" id="9s" role="2Oq$k0">
                                <ref role="3cqZAo" node="93" resolve="context" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                              <node concept="liA8E" id="9t" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="9b" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                      <node concept="3clFbJ" id="9c" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                        <node concept="3clFbS" id="9u" role="3clFbx">
                          <uo k="s:originTrace" v="n:4993211115183387848" />
                          <node concept="3clFbF" id="9w" role="3cqZAp">
                            <uo k="s:originTrace" v="n:4993211115183387848" />
                            <node concept="2OqwBi" id="9x" role="3clFbG">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                              <node concept="37vLTw" id="9y" role="2Oq$k0">
                                <ref role="3cqZAo" node="94" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                              </node>
                              <node concept="liA8E" id="9z" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:4993211115183387848" />
                                <node concept="1dyn4i" id="9$" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:4993211115183387848" />
                                  <node concept="2ShNRf" id="9_" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:4993211115183387848" />
                                    <node concept="1pGfFk" id="9A" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:4993211115183387848" />
                                      <node concept="Xl_RD" id="9B" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:4993211115183387848" />
                                      </node>
                                      <node concept="Xl_RD" id="9C" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580511" />
                                        <uo k="s:originTrace" v="n:4993211115183387848" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="9v" role="3clFbw">
                          <uo k="s:originTrace" v="n:4993211115183387848" />
                          <node concept="3y3z36" id="9D" role="3uHU7w">
                            <uo k="s:originTrace" v="n:4993211115183387848" />
                            <node concept="10Nm6u" id="9F" role="3uHU7w">
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                            </node>
                            <node concept="37vLTw" id="9G" role="3uHU7B">
                              <ref role="3cqZAo" node="94" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="9E" role="3uHU7B">
                            <uo k="s:originTrace" v="n:4993211115183387848" />
                            <node concept="37vLTw" id="9H" role="3fr31v">
                              <ref role="3cqZAo" node="9f" resolve="result" />
                              <uo k="s:originTrace" v="n:4993211115183387848" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="9d" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                      </node>
                      <node concept="3clFbF" id="9e" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4993211115183387848" />
                        <node concept="37vLTw" id="9I" role="3clFbG">
                          <ref role="3cqZAo" node="9f" resolve="result" />
                          <uo k="s:originTrace" v="n:4993211115183387848" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="8Y" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:4993211115183387848" />
                  </node>
                  <node concept="3uibUv" id="8Z" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:4993211115183387848" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8D" role="jymVt">
      <uo k="s:originTrace" v="n:4993211115183387848" />
    </node>
    <node concept="2YIFZL" id="8E" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:4993211115183387848" />
      <node concept="10P_77" id="9J" role="3clF45">
        <uo k="s:originTrace" v="n:4993211115183387848" />
      </node>
      <node concept="3Tm6S6" id="9K" role="1B3o_S">
        <uo k="s:originTrace" v="n:4993211115183387848" />
      </node>
      <node concept="3clFbS" id="9L" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580512" />
        <node concept="3clFbF" id="9Q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580513" />
          <node concept="22lmx$" id="9R" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580514" />
            <node concept="2OqwBi" id="9S" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580515" />
              <node concept="37vLTw" id="9U" role="2Oq$k0">
                <ref role="3cqZAo" node="9N" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580516" />
              </node>
              <node concept="1mIQ4w" id="9V" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536580517" />
                <node concept="chp4Y" id="9W" role="cj9EA">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                  <uo k="s:originTrace" v="n:1227128029536580518" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="9T" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856397733" />
              <node concept="37vLTw" id="9X" role="2Oq$k0">
                <ref role="3cqZAo" node="9N" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856396808" />
              </node>
              <node concept="3zqWPK" id="9Y" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851470" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9M" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="3uibUv" id="9Z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
        </node>
      </node>
      <node concept="37vLTG" id="9N" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="3uibUv" id="a0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
        </node>
      </node>
      <node concept="37vLTG" id="9O" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="3uibUv" id="a1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
        </node>
      </node>
      <node concept="37vLTG" id="9P" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:4993211115183387848" />
        <node concept="3uibUv" id="a2" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:4993211115183387848" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="a3">
    <property role="3GE5qa" value="Layout.External" />
    <property role="TrG5h" value="BuildLayout_FileStub_Constraints" />
    <uo k="s:originTrace" v="n:7181125477683370817" />
    <node concept="3Tm1VV" id="a4" role="1B3o_S">
      <uo k="s:originTrace" v="n:7181125477683370817" />
    </node>
    <node concept="3uibUv" id="a5" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7181125477683370817" />
    </node>
    <node concept="3clFbW" id="a6" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683370817" />
      <node concept="37vLTG" id="a9" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="3uibUv" id="ac" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
        </node>
      </node>
      <node concept="3cqZAl" id="aa" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683370817" />
      </node>
      <node concept="3clFbS" id="ab" role="3clF47">
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="XkiVB" id="ad" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
          <node concept="1BaE9c" id="af" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_FileStub$8k" />
            <uo k="s:originTrace" v="n:7181125477683370817" />
            <node concept="2YIFZM" id="ah" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7181125477683370817" />
              <node concept="11gdke" id="ai" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7181125477683370817" />
              </node>
              <node concept="11gdke" id="aj" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7181125477683370817" />
              </node>
              <node concept="11gdke" id="ak" role="37wK5m">
                <property role="11gdj1" value="63a87b9320d31b36L" />
                <uo k="s:originTrace" v="n:7181125477683370817" />
              </node>
              <node concept="Xl_RD" id="al" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_FileStub" />
                <uo k="s:originTrace" v="n:7181125477683370817" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="ag" role="37wK5m">
            <ref role="3cqZAo" node="a9" resolve="initContext" />
            <uo k="s:originTrace" v="n:7181125477683370817" />
          </node>
        </node>
        <node concept="3clFbF" id="ae" role="3cqZAp">
          <uo k="s:originTrace" v="n:7181125477683370817" />
          <node concept="1rXfSq" id="am" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7181125477683370817" />
            <node concept="2ShNRf" id="an" role="37wK5m">
              <uo k="s:originTrace" v="n:7181125477683370817" />
              <node concept="YeOm9" id="ao" role="2ShVmc">
                <uo k="s:originTrace" v="n:7181125477683370817" />
                <node concept="1Y3b0j" id="ap" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7181125477683370817" />
                  <node concept="3Tm1VV" id="aq" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7181125477683370817" />
                  </node>
                  <node concept="3clFb_" id="ar" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7181125477683370817" />
                    <node concept="3Tm1VV" id="au" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                    </node>
                    <node concept="2AHcQZ" id="av" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                    </node>
                    <node concept="3uibUv" id="aw" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                    </node>
                    <node concept="37vLTG" id="ax" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                      <node concept="3uibUv" id="a$" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                      <node concept="2AHcQZ" id="a_" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="ay" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                      <node concept="3uibUv" id="aA" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                      <node concept="2AHcQZ" id="aB" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="az" role="3clF47">
                      <uo k="s:originTrace" v="n:7181125477683370817" />
                      <node concept="3cpWs8" id="aC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                        <node concept="3cpWsn" id="aH" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7181125477683370817" />
                          <node concept="10P_77" id="aI" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7181125477683370817" />
                          </node>
                          <node concept="1rXfSq" id="aJ" role="33vP2m">
                            <ref role="37wK5l" node="a8" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7181125477683370817" />
                            <node concept="2OqwBi" id="aK" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                              <node concept="37vLTw" id="aO" role="2Oq$k0">
                                <ref role="3cqZAo" node="ax" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                              <node concept="liA8E" id="aP" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="aL" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                              <node concept="37vLTw" id="aQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="ax" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                              <node concept="liA8E" id="aR" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="aM" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                              <node concept="37vLTw" id="aS" role="2Oq$k0">
                                <ref role="3cqZAo" node="ax" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                              <node concept="liA8E" id="aT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="aN" role="37wK5m">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                              <node concept="37vLTw" id="aU" role="2Oq$k0">
                                <ref role="3cqZAo" node="ax" resolve="context" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                              <node concept="liA8E" id="aV" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="aD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                      <node concept="3clFbJ" id="aE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                        <node concept="3clFbS" id="aW" role="3clFbx">
                          <uo k="s:originTrace" v="n:7181125477683370817" />
                          <node concept="3clFbF" id="aY" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7181125477683370817" />
                            <node concept="2OqwBi" id="aZ" role="3clFbG">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                              <node concept="37vLTw" id="b0" role="2Oq$k0">
                                <ref role="3cqZAo" node="ay" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                              </node>
                              <node concept="liA8E" id="b1" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7181125477683370817" />
                                <node concept="1dyn4i" id="b2" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7181125477683370817" />
                                  <node concept="2ShNRf" id="b3" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7181125477683370817" />
                                    <node concept="1pGfFk" id="b4" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7181125477683370817" />
                                      <node concept="Xl_RD" id="b5" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7181125477683370817" />
                                      </node>
                                      <node concept="Xl_RD" id="b6" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580384" />
                                        <uo k="s:originTrace" v="n:7181125477683370817" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="aX" role="3clFbw">
                          <uo k="s:originTrace" v="n:7181125477683370817" />
                          <node concept="3y3z36" id="b7" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7181125477683370817" />
                            <node concept="10Nm6u" id="b9" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                            </node>
                            <node concept="37vLTw" id="ba" role="3uHU7B">
                              <ref role="3cqZAo" node="ay" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="b8" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7181125477683370817" />
                            <node concept="37vLTw" id="bb" role="3fr31v">
                              <ref role="3cqZAo" node="aH" resolve="result" />
                              <uo k="s:originTrace" v="n:7181125477683370817" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="aF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                      </node>
                      <node concept="3clFbF" id="aG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7181125477683370817" />
                        <node concept="37vLTw" id="bc" role="3clFbG">
                          <ref role="3cqZAo" node="aH" resolve="result" />
                          <uo k="s:originTrace" v="n:7181125477683370817" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="as" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7181125477683370817" />
                  </node>
                  <node concept="3uibUv" id="at" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7181125477683370817" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="a7" role="jymVt">
      <uo k="s:originTrace" v="n:7181125477683370817" />
    </node>
    <node concept="2YIFZL" id="a8" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7181125477683370817" />
      <node concept="10P_77" id="bd" role="3clF45">
        <uo k="s:originTrace" v="n:7181125477683370817" />
      </node>
      <node concept="3Tm6S6" id="be" role="1B3o_S">
        <uo k="s:originTrace" v="n:7181125477683370817" />
      </node>
      <node concept="3clFbS" id="bf" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580385" />
        <node concept="3clFbF" id="bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580386" />
          <node concept="2OqwBi" id="bl" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580387" />
            <node concept="2OqwBi" id="bm" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536580388" />
              <node concept="37vLTw" id="bo" role="2Oq$k0">
                <ref role="3cqZAo" node="bh" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580389" />
              </node>
              <node concept="2Xjw5R" id="bp" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536580390" />
                <node concept="1xMEDy" id="bq" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580391" />
                  <node concept="chp4Y" id="bs" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:6eCuTcwObZ9" resolve="BuildExternalLayout" />
                    <uo k="s:originTrace" v="n:1227128029536580392" />
                  </node>
                </node>
                <node concept="1xIGOp" id="br" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580393" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="bn" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580394" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="bg" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="3uibUv" id="bt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
        </node>
      </node>
      <node concept="37vLTG" id="bh" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="3uibUv" id="bu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
        </node>
      </node>
      <node concept="37vLTG" id="bi" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="3uibUv" id="bv" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
        </node>
      </node>
      <node concept="37vLTG" id="bj" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7181125477683370817" />
        <node concept="3uibUv" id="bw" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7181125477683370817" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="bx">
    <property role="3GE5qa" value="Layout.File" />
    <property role="TrG5h" value="BuildLayout_File_Constraints" />
    <uo k="s:originTrace" v="n:2750015747481358840" />
    <node concept="3Tm1VV" id="by" role="1B3o_S">
      <uo k="s:originTrace" v="n:2750015747481358840" />
    </node>
    <node concept="3uibUv" id="bz" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2750015747481358840" />
    </node>
    <node concept="3clFbW" id="b$" role="jymVt">
      <uo k="s:originTrace" v="n:2750015747481358840" />
      <node concept="37vLTG" id="bB" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="3uibUv" id="bE" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
        </node>
      </node>
      <node concept="3cqZAl" id="bC" role="3clF45">
        <uo k="s:originTrace" v="n:2750015747481358840" />
      </node>
      <node concept="3clFbS" id="bD" role="3clF47">
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="XkiVB" id="bF" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
          <node concept="1BaE9c" id="bH" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_File$Kk" />
            <uo k="s:originTrace" v="n:2750015747481358840" />
            <node concept="2YIFZM" id="bJ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2750015747481358840" />
              <node concept="11gdke" id="bK" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:2750015747481358840" />
              </node>
              <node concept="11gdke" id="bL" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:2750015747481358840" />
              </node>
              <node concept="11gdke" id="bM" role="37wK5m">
                <property role="11gdj1" value="7ea63ceef6e8c0edL" />
                <uo k="s:originTrace" v="n:2750015747481358840" />
              </node>
              <node concept="Xl_RD" id="bN" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_File" />
                <uo k="s:originTrace" v="n:2750015747481358840" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="bI" role="37wK5m">
            <ref role="3cqZAo" node="bB" resolve="initContext" />
            <uo k="s:originTrace" v="n:2750015747481358840" />
          </node>
        </node>
        <node concept="3clFbF" id="bG" role="3cqZAp">
          <uo k="s:originTrace" v="n:2750015747481358840" />
          <node concept="1rXfSq" id="bO" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeParent(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeParent" />
            <uo k="s:originTrace" v="n:2750015747481358840" />
            <node concept="2ShNRf" id="bP" role="37wK5m">
              <uo k="s:originTrace" v="n:2750015747481358840" />
              <node concept="YeOm9" id="bQ" role="2ShVmc">
                <uo k="s:originTrace" v="n:2750015747481358840" />
                <node concept="1Y3b0j" id="bR" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2750015747481358840" />
                  <node concept="3Tm1VV" id="bS" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2750015747481358840" />
                  </node>
                  <node concept="3clFb_" id="bT" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2750015747481358840" />
                    <node concept="3Tm1VV" id="bW" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                    </node>
                    <node concept="2AHcQZ" id="bX" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                    </node>
                    <node concept="3uibUv" id="bY" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                    </node>
                    <node concept="37vLTG" id="bZ" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                      <node concept="3uibUv" id="c2" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeParent" resolve="ConstraintContext_CanBeParent" />
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                      <node concept="2AHcQZ" id="c3" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="c0" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                      <node concept="3uibUv" id="c4" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                      <node concept="2AHcQZ" id="c5" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="c1" role="3clF47">
                      <uo k="s:originTrace" v="n:2750015747481358840" />
                      <node concept="3cpWs8" id="c6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                        <node concept="3cpWsn" id="cb" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2750015747481358840" />
                          <node concept="10P_77" id="cc" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2750015747481358840" />
                          </node>
                          <node concept="1rXfSq" id="cd" role="33vP2m">
                            <ref role="37wK5l" node="bA" resolve="staticCanBeAParent" />
                            <uo k="s:originTrace" v="n:2750015747481358840" />
                            <node concept="2OqwBi" id="ce" role="37wK5m">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                              <node concept="37vLTw" id="ci" role="2Oq$k0">
                                <ref role="3cqZAo" node="bZ" resolve="context" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                              <node concept="liA8E" id="cj" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="cf" role="37wK5m">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                              <node concept="37vLTw" id="ck" role="2Oq$k0">
                                <ref role="3cqZAo" node="bZ" resolve="context" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                              <node concept="liA8E" id="cl" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getChildNode()" resolve="getChildNode" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="cg" role="37wK5m">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                              <node concept="37vLTw" id="cm" role="2Oq$k0">
                                <ref role="3cqZAo" node="bZ" resolve="context" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                              <node concept="liA8E" id="cn" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getChildConcept()" resolve="getChildConcept" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ch" role="37wK5m">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                              <node concept="37vLTw" id="co" role="2Oq$k0">
                                <ref role="3cqZAo" node="bZ" resolve="context" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                              <node concept="liA8E" id="cp" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeParent.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="c7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                      <node concept="3clFbJ" id="c8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                        <node concept="3clFbS" id="cq" role="3clFbx">
                          <uo k="s:originTrace" v="n:2750015747481358840" />
                          <node concept="3clFbF" id="cs" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2750015747481358840" />
                            <node concept="2OqwBi" id="ct" role="3clFbG">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                              <node concept="37vLTw" id="cu" role="2Oq$k0">
                                <ref role="3cqZAo" node="c0" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                              </node>
                              <node concept="liA8E" id="cv" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2750015747481358840" />
                                <node concept="1dyn4i" id="cw" role="37wK5m">
                                  <property role="1dyqJU" value="canBeParentBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2750015747481358840" />
                                  <node concept="2ShNRf" id="cx" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2750015747481358840" />
                                    <node concept="1pGfFk" id="cy" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2750015747481358840" />
                                      <node concept="Xl_RD" id="cz" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:2750015747481358840" />
                                      </node>
                                      <node concept="Xl_RD" id="c$" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580613" />
                                        <uo k="s:originTrace" v="n:2750015747481358840" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="cr" role="3clFbw">
                          <uo k="s:originTrace" v="n:2750015747481358840" />
                          <node concept="3y3z36" id="c_" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2750015747481358840" />
                            <node concept="10Nm6u" id="cB" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                            </node>
                            <node concept="37vLTw" id="cC" role="3uHU7B">
                              <ref role="3cqZAo" node="c0" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="cA" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2750015747481358840" />
                            <node concept="37vLTw" id="cD" role="3fr31v">
                              <ref role="3cqZAo" node="cb" resolve="result" />
                              <uo k="s:originTrace" v="n:2750015747481358840" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="c9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                      </node>
                      <node concept="3clFbF" id="ca" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2750015747481358840" />
                        <node concept="37vLTw" id="cE" role="3clFbG">
                          <ref role="3cqZAo" node="cb" resolve="result" />
                          <uo k="s:originTrace" v="n:2750015747481358840" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="bU" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeParent" resolve="ConstraintContext_CanBeParent" />
                    <uo k="s:originTrace" v="n:2750015747481358840" />
                  </node>
                  <node concept="3uibUv" id="bV" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2750015747481358840" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="b_" role="jymVt">
      <uo k="s:originTrace" v="n:2750015747481358840" />
    </node>
    <node concept="2YIFZL" id="bA" role="jymVt">
      <property role="TrG5h" value="staticCanBeAParent" />
      <uo k="s:originTrace" v="n:2750015747481358840" />
      <node concept="10P_77" id="cF" role="3clF45">
        <uo k="s:originTrace" v="n:2750015747481358840" />
      </node>
      <node concept="3Tm6S6" id="cG" role="1B3o_S">
        <uo k="s:originTrace" v="n:2750015747481358840" />
      </node>
      <node concept="3clFbS" id="cH" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580614" />
        <node concept="3clFbJ" id="cM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580615" />
          <node concept="3clFbS" id="cO" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536580616" />
            <node concept="3cpWs6" id="cQ" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536580617" />
              <node concept="2OqwBi" id="cR" role="3cqZAk">
                <uo k="s:originTrace" v="n:1227128029536580618" />
                <node concept="37vLTw" id="cS" role="2Oq$k0">
                  <ref role="3cqZAo" node="cK" resolve="childConcept" />
                  <uo k="s:originTrace" v="n:1227128029536580627" />
                </node>
                <node concept="2Zo12i" id="cT" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580620" />
                  <node concept="chp4Y" id="cU" role="2Zo12j">
                    <ref role="cht4Q" to="3ior:7XQqoCTjsKN" resolve="BuildLayout_CopyHandler" />
                    <uo k="s:originTrace" v="n:1227128029536580621" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="cP" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536580622" />
            <node concept="359W_D" id="cV" role="3uHU7w">
              <ref role="359W_E" to="3ior:7UAfeVQUc3H" resolve="BuildLayout_File" />
              <ref role="359W_F" to="3ior:7UAfeVQUc4A" resolve="parameters" />
              <uo k="s:originTrace" v="n:1227128029536580629" />
            </node>
            <node concept="37vLTw" id="cW" role="3uHU7B">
              <ref role="3cqZAo" node="cL" resolve="link" />
              <uo k="s:originTrace" v="n:1227128029536580628" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="cN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580625" />
          <node concept="3clFbT" id="cX" role="3clFbG">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:1227128029536580626" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="cI" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="3uibUv" id="cY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
        </node>
      </node>
      <node concept="37vLTG" id="cJ" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="3uibUv" id="cZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
        </node>
      </node>
      <node concept="37vLTG" id="cK" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="3uibUv" id="d0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
        </node>
      </node>
      <node concept="37vLTG" id="cL" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2750015747481358840" />
        <node concept="3uibUv" id="d1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2750015747481358840" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="d2">
    <property role="3GE5qa" value="Layout.File" />
    <property role="TrG5h" value="BuildLayout_Filemode_Constraints" />
    <uo k="s:originTrace" v="n:7801138212747054669" />
    <node concept="3Tm1VV" id="d3" role="1B3o_S">
      <uo k="s:originTrace" v="n:7801138212747054669" />
    </node>
    <node concept="3uibUv" id="d4" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7801138212747054669" />
    </node>
    <node concept="3clFbW" id="d5" role="jymVt">
      <uo k="s:originTrace" v="n:7801138212747054669" />
      <node concept="37vLTG" id="d8" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="3uibUv" id="db" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
        </node>
      </node>
      <node concept="3cqZAl" id="d9" role="3clF45">
        <uo k="s:originTrace" v="n:7801138212747054669" />
      </node>
      <node concept="3clFbS" id="da" role="3clF47">
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="XkiVB" id="dc" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
          <node concept="1BaE9c" id="de" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_Filemode$sx" />
            <uo k="s:originTrace" v="n:7801138212747054669" />
            <node concept="2YIFZM" id="dg" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7801138212747054669" />
              <node concept="11gdke" id="dh" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7801138212747054669" />
              </node>
              <node concept="11gdke" id="di" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7801138212747054669" />
              </node>
              <node concept="11gdke" id="dj" role="37wK5m">
                <property role="11gdj1" value="6c4335df4e838e40L" />
                <uo k="s:originTrace" v="n:7801138212747054669" />
              </node>
              <node concept="Xl_RD" id="dk" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_Filemode" />
                <uo k="s:originTrace" v="n:7801138212747054669" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="df" role="37wK5m">
            <ref role="3cqZAo" node="d8" resolve="initContext" />
            <uo k="s:originTrace" v="n:7801138212747054669" />
          </node>
        </node>
        <node concept="3clFbF" id="dd" role="3cqZAp">
          <uo k="s:originTrace" v="n:7801138212747054669" />
          <node concept="1rXfSq" id="dl" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7801138212747054669" />
            <node concept="2ShNRf" id="dm" role="37wK5m">
              <uo k="s:originTrace" v="n:7801138212747054669" />
              <node concept="YeOm9" id="dn" role="2ShVmc">
                <uo k="s:originTrace" v="n:7801138212747054669" />
                <node concept="1Y3b0j" id="do" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7801138212747054669" />
                  <node concept="3Tm1VV" id="dp" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7801138212747054669" />
                  </node>
                  <node concept="3clFb_" id="dq" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7801138212747054669" />
                    <node concept="3Tm1VV" id="dt" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                    </node>
                    <node concept="2AHcQZ" id="du" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                    </node>
                    <node concept="3uibUv" id="dv" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                    </node>
                    <node concept="37vLTG" id="dw" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                      <node concept="3uibUv" id="dz" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                      <node concept="2AHcQZ" id="d$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="dx" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                      <node concept="3uibUv" id="d_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                      <node concept="2AHcQZ" id="dA" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="dy" role="3clF47">
                      <uo k="s:originTrace" v="n:7801138212747054669" />
                      <node concept="3cpWs8" id="dB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                        <node concept="3cpWsn" id="dG" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7801138212747054669" />
                          <node concept="10P_77" id="dH" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7801138212747054669" />
                          </node>
                          <node concept="1rXfSq" id="dI" role="33vP2m">
                            <ref role="37wK5l" node="d7" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7801138212747054669" />
                            <node concept="2OqwBi" id="dJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                              <node concept="37vLTw" id="dN" role="2Oq$k0">
                                <ref role="3cqZAo" node="dw" resolve="context" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                              <node concept="liA8E" id="dO" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="dK" role="37wK5m">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                              <node concept="37vLTw" id="dP" role="2Oq$k0">
                                <ref role="3cqZAo" node="dw" resolve="context" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                              <node concept="liA8E" id="dQ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="dL" role="37wK5m">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                              <node concept="37vLTw" id="dR" role="2Oq$k0">
                                <ref role="3cqZAo" node="dw" resolve="context" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                              <node concept="liA8E" id="dS" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="dM" role="37wK5m">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                              <node concept="37vLTw" id="dT" role="2Oq$k0">
                                <ref role="3cqZAo" node="dw" resolve="context" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                              <node concept="liA8E" id="dU" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="dC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                      <node concept="3clFbJ" id="dD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                        <node concept="3clFbS" id="dV" role="3clFbx">
                          <uo k="s:originTrace" v="n:7801138212747054669" />
                          <node concept="3clFbF" id="dX" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7801138212747054669" />
                            <node concept="2OqwBi" id="dY" role="3clFbG">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                              <node concept="37vLTw" id="dZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="dx" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                              </node>
                              <node concept="liA8E" id="e0" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7801138212747054669" />
                                <node concept="1dyn4i" id="e1" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7801138212747054669" />
                                  <node concept="2ShNRf" id="e2" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7801138212747054669" />
                                    <node concept="1pGfFk" id="e3" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7801138212747054669" />
                                      <node concept="Xl_RD" id="e4" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7801138212747054669" />
                                      </node>
                                      <node concept="Xl_RD" id="e5" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580395" />
                                        <uo k="s:originTrace" v="n:7801138212747054669" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="dW" role="3clFbw">
                          <uo k="s:originTrace" v="n:7801138212747054669" />
                          <node concept="3y3z36" id="e6" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7801138212747054669" />
                            <node concept="10Nm6u" id="e8" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                            </node>
                            <node concept="37vLTw" id="e9" role="3uHU7B">
                              <ref role="3cqZAo" node="dx" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="e7" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7801138212747054669" />
                            <node concept="37vLTw" id="ea" role="3fr31v">
                              <ref role="3cqZAo" node="dG" resolve="result" />
                              <uo k="s:originTrace" v="n:7801138212747054669" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="dE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                      </node>
                      <node concept="3clFbF" id="dF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7801138212747054669" />
                        <node concept="37vLTw" id="eb" role="3clFbG">
                          <ref role="3cqZAo" node="dG" resolve="result" />
                          <uo k="s:originTrace" v="n:7801138212747054669" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="dr" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7801138212747054669" />
                  </node>
                  <node concept="3uibUv" id="ds" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7801138212747054669" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="d6" role="jymVt">
      <uo k="s:originTrace" v="n:7801138212747054669" />
    </node>
    <node concept="2YIFZL" id="d7" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7801138212747054669" />
      <node concept="10P_77" id="ec" role="3clF45">
        <uo k="s:originTrace" v="n:7801138212747054669" />
      </node>
      <node concept="3Tm6S6" id="ed" role="1B3o_S">
        <uo k="s:originTrace" v="n:7801138212747054669" />
      </node>
      <node concept="3clFbS" id="ee" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580396" />
        <node concept="3cpWs8" id="ej" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580397" />
          <node concept="3cpWsn" id="el" role="3cpWs9">
            <property role="TrG5h" value="archive" />
            <uo k="s:originTrace" v="n:1227128029536580398" />
            <node concept="3Tqbb2" id="em" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
              <uo k="s:originTrace" v="n:1227128029536580399" />
            </node>
            <node concept="2OqwBi" id="en" role="33vP2m">
              <uo k="s:originTrace" v="n:1227128029536580400" />
              <node concept="37vLTw" id="eo" role="2Oq$k0">
                <ref role="3cqZAo" node="eg" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580401" />
              </node>
              <node concept="2Xjw5R" id="ep" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536580402" />
                <node concept="1xMEDy" id="eq" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580403" />
                  <node concept="chp4Y" id="es" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
                    <uo k="s:originTrace" v="n:1227128029536580404" />
                  </node>
                </node>
                <node concept="1xIGOp" id="er" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ek" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580406" />
          <node concept="22lmx$" id="et" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580407" />
            <node concept="1Wc70l" id="eu" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580408" />
              <node concept="3y3z36" id="ew" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580409" />
                <node concept="37vLTw" id="ey" role="3uHU7B">
                  <ref role="3cqZAo" node="el" resolve="archive" />
                  <uo k="s:originTrace" v="n:1227128029536580410" />
                </node>
                <node concept="10Nm6u" id="ez" role="3uHU7w">
                  <uo k="s:originTrace" v="n:1227128029536580411" />
                </node>
              </node>
              <node concept="2OqwBi" id="ex" role="3uHU7w">
                <uo k="s:originTrace" v="n:1227128029536580412" />
                <node concept="37vLTw" id="e$" role="2Oq$k0">
                  <ref role="3cqZAo" node="el" resolve="archive" />
                  <uo k="s:originTrace" v="n:1227128029536580413" />
                </node>
                <node concept="3zqWPK" id="e_" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:5zIo$W4pFU5" resolve="hasFileModeAttribute" />
                  <uo k="s:originTrace" v="n:8085146484218851492" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="ev" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856402905" />
              <node concept="37vLTw" id="eA" role="2Oq$k0">
                <ref role="3cqZAo" node="eg" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856402109" />
              </node>
              <node concept="3zqWPK" id="eB" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851494" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ef" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="3uibUv" id="eC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
        </node>
      </node>
      <node concept="37vLTG" id="eg" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="3uibUv" id="eD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
        </node>
      </node>
      <node concept="37vLTG" id="eh" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="3uibUv" id="eE" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
        </node>
      </node>
      <node concept="37vLTG" id="ei" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7801138212747054669" />
        <node concept="3uibUv" id="eF" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7801138212747054669" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="eG">
    <property role="3GE5qa" value="Layout.File" />
    <property role="TrG5h" value="BuildLayout_FilesOf_Constraints" />
    <uo k="s:originTrace" v="n:7753544965996878818" />
    <node concept="3Tm1VV" id="eH" role="1B3o_S">
      <uo k="s:originTrace" v="n:7753544965996878818" />
    </node>
    <node concept="3uibUv" id="eI" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7753544965996878818" />
    </node>
    <node concept="3clFbW" id="eJ" role="jymVt">
      <uo k="s:originTrace" v="n:7753544965996878818" />
      <node concept="37vLTG" id="eM" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7753544965996878818" />
        <node concept="3uibUv" id="eP" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
      </node>
      <node concept="3cqZAl" id="eN" role="3clF45">
        <uo k="s:originTrace" v="n:7753544965996878818" />
      </node>
      <node concept="3clFbS" id="eO" role="3clF47">
        <uo k="s:originTrace" v="n:7753544965996878818" />
        <node concept="XkiVB" id="eQ" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
          <node concept="1BaE9c" id="eS" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_FilesOf$nI" />
            <uo k="s:originTrace" v="n:7753544965996878818" />
            <node concept="2YIFZM" id="eU" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7753544965996878818" />
              <node concept="11gdke" id="eV" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
              </node>
              <node concept="11gdke" id="eW" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
              </node>
              <node concept="11gdke" id="eX" role="37wK5m">
                <property role="11gdj1" value="6b9a2011083f9404L" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
              </node>
              <node concept="Xl_RD" id="eY" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_FilesOf" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="eT" role="37wK5m">
            <ref role="3cqZAo" node="eM" resolve="initContext" />
            <uo k="s:originTrace" v="n:7753544965996878818" />
          </node>
        </node>
        <node concept="3clFbF" id="eR" role="3cqZAp">
          <uo k="s:originTrace" v="n:7753544965996878818" />
          <node concept="1rXfSq" id="eZ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7753544965996878818" />
            <node concept="2ShNRf" id="f0" role="37wK5m">
              <uo k="s:originTrace" v="n:7753544965996878818" />
              <node concept="1pGfFk" id="f1" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="f3" resolve="BuildLayout_FilesOf_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
                <node concept="Xjq3P" id="f2" role="37wK5m">
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="eK" role="jymVt">
      <uo k="s:originTrace" v="n:7753544965996878818" />
    </node>
    <node concept="312cEu" id="eL" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7753544965996878818" />
      <node concept="3clFbW" id="f3" role="jymVt">
        <uo k="s:originTrace" v="n:7753544965996878818" />
        <node concept="37vLTG" id="f6" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
          <node concept="3uibUv" id="f9" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7753544965996878818" />
          </node>
        </node>
        <node concept="3cqZAl" id="f7" role="3clF45">
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
        <node concept="3clFbS" id="f8" role="3clF47">
          <uo k="s:originTrace" v="n:7753544965996878818" />
          <node concept="XkiVB" id="fa" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7753544965996878818" />
            <node concept="1BaE9c" id="fb" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="element$PGip" />
              <uo k="s:originTrace" v="n:7753544965996878818" />
              <node concept="2YIFZM" id="ff" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7753544965996878818" />
                <node concept="11gdke" id="fg" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
                <node concept="11gdke" id="fh" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
                <node concept="11gdke" id="fi" role="37wK5m">
                  <property role="11gdj1" value="6b9a2011083f9404L" />
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
                <node concept="11gdke" id="fj" role="37wK5m">
                  <property role="11gdj1" value="6b9a2011083f9406L" />
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
                <node concept="Xl_RD" id="fk" role="37wK5m">
                  <property role="Xl_RC" value="element" />
                  <uo k="s:originTrace" v="n:7753544965996878818" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="fc" role="37wK5m">
              <ref role="3cqZAo" node="f6" resolve="container" />
              <uo k="s:originTrace" v="n:7753544965996878818" />
            </node>
            <node concept="3clFbT" id="fd" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7753544965996878818" />
            </node>
            <node concept="3clFbT" id="fe" role="37wK5m">
              <uo k="s:originTrace" v="n:7753544965996878818" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="f4" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7753544965996878818" />
        <node concept="3Tm1VV" id="fl" role="1B3o_S">
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
        <node concept="3uibUv" id="fm" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
        <node concept="2AHcQZ" id="fn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
        <node concept="3clFbS" id="fo" role="3clF47">
          <uo k="s:originTrace" v="n:7753544965996878818" />
          <node concept="3cpWs6" id="fq" role="3cqZAp">
            <uo k="s:originTrace" v="n:7753544965996878818" />
            <node concept="2YIFZM" id="fr" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1224588814562040209" />
              <node concept="35c_gC" id="fs" role="37wK5m">
                <ref role="35c_gD" to="3ior:6Iq8148fTg2" resolve="BuildSource_FilesetProjectPart" />
                <uo k="s:originTrace" v="n:1224588814562040209" />
              </node>
              <node concept="2ShNRf" id="ft" role="37wK5m">
                <uo k="s:originTrace" v="n:1224588814562040209" />
                <node concept="1pGfFk" id="fu" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1224588814562040209" />
                  <node concept="Xl_RD" id="fv" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1224588814562040209" />
                  </node>
                  <node concept="Xl_RD" id="fw" role="37wK5m">
                    <property role="Xl_RC" value="1224588814562040209" />
                    <uo k="s:originTrace" v="n:1224588814562040209" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="fp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7753544965996878818" />
        </node>
      </node>
      <node concept="3uibUv" id="f5" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7753544965996878818" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="fx">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_ImportContent_Constraints" />
    <uo k="s:originTrace" v="n:5610619299013068362" />
    <node concept="3Tm1VV" id="fy" role="1B3o_S">
      <uo k="s:originTrace" v="n:5610619299013068362" />
    </node>
    <node concept="3uibUv" id="fz" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5610619299013068362" />
    </node>
    <node concept="3clFbW" id="f$" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299013068362" />
      <node concept="37vLTG" id="fC" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3uibUv" id="fF" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
      <node concept="3cqZAl" id="fD" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299013068362" />
      </node>
      <node concept="3clFbS" id="fE" role="3clF47">
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="XkiVB" id="fG" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="1BaE9c" id="fJ" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_ImportContent$wC" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
            <node concept="2YIFZM" id="fL" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5610619299013068362" />
              <node concept="11gdke" id="fM" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
              </node>
              <node concept="11gdke" id="fN" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
              </node>
              <node concept="11gdke" id="fO" role="37wK5m">
                <property role="11gdj1" value="4ddcec86af9fdb53L" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
              </node>
              <node concept="Xl_RD" id="fP" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_ImportContent" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="fK" role="37wK5m">
            <ref role="3cqZAo" node="fC" resolve="initContext" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
          </node>
        </node>
        <node concept="3clFbF" id="fH" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="1rXfSq" id="fQ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
            <node concept="2ShNRf" id="fR" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299013068362" />
              <node concept="1pGfFk" id="fS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="gL" resolve="BuildLayout_ImportContent_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
                <node concept="Xjq3P" id="fT" role="37wK5m">
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fI" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="1rXfSq" id="fU" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
            <node concept="2ShNRf" id="fV" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299013068362" />
              <node concept="YeOm9" id="fW" role="2ShVmc">
                <uo k="s:originTrace" v="n:5610619299013068362" />
                <node concept="1Y3b0j" id="fX" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                  <node concept="3Tm1VV" id="fY" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5610619299013068362" />
                  </node>
                  <node concept="3clFb_" id="fZ" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:5610619299013068362" />
                    <node concept="3Tm1VV" id="g2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                    </node>
                    <node concept="2AHcQZ" id="g3" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                    </node>
                    <node concept="3uibUv" id="g4" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                    </node>
                    <node concept="37vLTG" id="g5" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                      <node concept="3uibUv" id="g8" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                      <node concept="2AHcQZ" id="g9" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="g6" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                      <node concept="3uibUv" id="ga" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                      <node concept="2AHcQZ" id="gb" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="g7" role="3clF47">
                      <uo k="s:originTrace" v="n:5610619299013068362" />
                      <node concept="3cpWs8" id="gc" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                        <node concept="3cpWsn" id="gh" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:5610619299013068362" />
                          <node concept="10P_77" id="gi" role="1tU5fm">
                            <uo k="s:originTrace" v="n:5610619299013068362" />
                          </node>
                          <node concept="1rXfSq" id="gj" role="33vP2m">
                            <ref role="37wK5l" node="fB" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:5610619299013068362" />
                            <node concept="2OqwBi" id="gk" role="37wK5m">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                              <node concept="37vLTw" id="go" role="2Oq$k0">
                                <ref role="3cqZAo" node="g5" resolve="context" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                              <node concept="liA8E" id="gp" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="gl" role="37wK5m">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                              <node concept="37vLTw" id="gq" role="2Oq$k0">
                                <ref role="3cqZAo" node="g5" resolve="context" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                              <node concept="liA8E" id="gr" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="gm" role="37wK5m">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                              <node concept="37vLTw" id="gs" role="2Oq$k0">
                                <ref role="3cqZAo" node="g5" resolve="context" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                              <node concept="liA8E" id="gt" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="gn" role="37wK5m">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                              <node concept="37vLTw" id="gu" role="2Oq$k0">
                                <ref role="3cqZAo" node="g5" resolve="context" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                              <node concept="liA8E" id="gv" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="gd" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                      <node concept="3clFbJ" id="ge" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                        <node concept="3clFbS" id="gw" role="3clFbx">
                          <uo k="s:originTrace" v="n:5610619299013068362" />
                          <node concept="3clFbF" id="gy" role="3cqZAp">
                            <uo k="s:originTrace" v="n:5610619299013068362" />
                            <node concept="2OqwBi" id="gz" role="3clFbG">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                              <node concept="37vLTw" id="g$" role="2Oq$k0">
                                <ref role="3cqZAo" node="g6" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                              </node>
                              <node concept="liA8E" id="g_" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:5610619299013068362" />
                                <node concept="1dyn4i" id="gA" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:5610619299013068362" />
                                  <node concept="2ShNRf" id="gB" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:5610619299013068362" />
                                    <node concept="1pGfFk" id="gC" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:5610619299013068362" />
                                      <node concept="Xl_RD" id="gD" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:5610619299013068362" />
                                      </node>
                                      <node concept="Xl_RD" id="gE" role="37wK5m">
                                        <property role="Xl_RC" value="3576430657785434661" />
                                        <uo k="s:originTrace" v="n:5610619299013068362" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="gx" role="3clFbw">
                          <uo k="s:originTrace" v="n:5610619299013068362" />
                          <node concept="3y3z36" id="gF" role="3uHU7w">
                            <uo k="s:originTrace" v="n:5610619299013068362" />
                            <node concept="10Nm6u" id="gH" role="3uHU7w">
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                            </node>
                            <node concept="37vLTw" id="gI" role="3uHU7B">
                              <ref role="3cqZAo" node="g6" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="gG" role="3uHU7B">
                            <uo k="s:originTrace" v="n:5610619299013068362" />
                            <node concept="37vLTw" id="gJ" role="3fr31v">
                              <ref role="3cqZAo" node="gh" resolve="result" />
                              <uo k="s:originTrace" v="n:5610619299013068362" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="gf" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                      </node>
                      <node concept="3clFbF" id="gg" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5610619299013068362" />
                        <node concept="37vLTw" id="gK" role="3clFbG">
                          <ref role="3cqZAo" node="gh" resolve="result" />
                          <uo k="s:originTrace" v="n:5610619299013068362" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="g0" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:5610619299013068362" />
                  </node>
                  <node concept="3uibUv" id="g1" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:5610619299013068362" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="f_" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299013068362" />
    </node>
    <node concept="312cEu" id="fA" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5610619299013068362" />
      <node concept="3clFbW" id="gL" role="jymVt">
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="37vLTG" id="gO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="3uibUv" id="gR" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
          </node>
        </node>
        <node concept="3cqZAl" id="gP" role="3clF45">
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
        <node concept="3clFbS" id="gQ" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="XkiVB" id="gS" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299013068362" />
            <node concept="1BaE9c" id="gT" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$HFO4" />
              <uo k="s:originTrace" v="n:5610619299013068362" />
              <node concept="2YIFZM" id="gX" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5610619299013068362" />
                <node concept="11gdke" id="gY" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
                <node concept="11gdke" id="gZ" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
                <node concept="11gdke" id="h0" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86af9fdb53L" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
                <node concept="11gdke" id="h1" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86af9fdb55L" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
                <node concept="Xl_RD" id="h2" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:5610619299013068362" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="gU" role="37wK5m">
              <ref role="3cqZAo" node="gO" resolve="container" />
              <uo k="s:originTrace" v="n:5610619299013068362" />
            </node>
            <node concept="3clFbT" id="gV" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5610619299013068362" />
            </node>
            <node concept="3clFbT" id="gW" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299013068362" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="gM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3Tm1VV" id="h3" role="1B3o_S">
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
        <node concept="3uibUv" id="h4" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
        <node concept="2AHcQZ" id="h5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
        <node concept="3clFbS" id="h6" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299013068362" />
          <node concept="3cpWs6" id="h8" role="3cqZAp">
            <uo k="s:originTrace" v="n:5610619299013068362" />
            <node concept="2ShNRf" id="h9" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840514" />
              <node concept="YeOm9" id="ha" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840514" />
                <node concept="1Y3b0j" id="hb" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840514" />
                  <node concept="3Tm1VV" id="hc" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840514" />
                  </node>
                  <node concept="3clFb_" id="hd" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840514" />
                    <node concept="3Tm1VV" id="hf" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                    <node concept="3uibUv" id="hg" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                    <node concept="3clFbS" id="hh" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                      <node concept="3cpWs6" id="hj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840514" />
                        <node concept="2ShNRf" id="hk" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840514" />
                          <node concept="1pGfFk" id="hl" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840514" />
                            <node concept="Xl_RD" id="hm" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840514" />
                            </node>
                            <node concept="Xl_RD" id="hn" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840514" />
                              <uo k="s:originTrace" v="n:6836281137582840514" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hi" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="he" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840514" />
                    <node concept="3Tm1VV" id="ho" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                    <node concept="3uibUv" id="hp" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                    <node concept="37vLTG" id="hq" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                      <node concept="3uibUv" id="ht" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840514" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="hr" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                      <node concept="3cpWs8" id="hu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840516" />
                        <node concept="3cpWsn" id="hx" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840517" />
                          <node concept="3Tqbb2" id="hy" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840518" />
                          </node>
                          <node concept="2OqwBi" id="hz" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840519" />
                            <node concept="1DoJHT" id="h$" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840520" />
                              <node concept="3uibUv" id="hA" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="hB" role="1EMhIo">
                                <ref role="3cqZAo" node="hq" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="h_" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840521" />
                              <node concept="1xMEDy" id="hC" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840522" />
                                <node concept="chp4Y" id="hE" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840523" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="hD" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840524" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="hv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840525" />
                        <node concept="3clFbS" id="hF" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840526" />
                          <node concept="3cpWs6" id="hH" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840527" />
                            <node concept="2ShNRf" id="hI" role="3cqZAk">
                              <uo k="s:originTrace" v="n:6836281137582840528" />
                              <node concept="YeOm9" id="hJ" role="2ShVmc">
                                <uo k="s:originTrace" v="n:6836281137582840529" />
                                <node concept="1Y3b0j" id="hK" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="1Y3XeK" to="o8zo:3rV3sBXetA0" resolve="FilteringScope" />
                                  <ref role="37wK5l" to="o8zo:3rV3sBXetA2" resolve="FilteringScope" />
                                  <uo k="s:originTrace" v="n:6836281137582840530" />
                                  <node concept="3Tm1VV" id="hL" role="1B3o_S">
                                    <uo k="s:originTrace" v="n:6836281137582840531" />
                                  </node>
                                  <node concept="2YIFZM" id="hM" role="37wK5m">
                                    <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                                    <ref role="37wK5l" to="o3n2:1bWeed$o7s2" resolve="getVisibleArtifactsScope" />
                                    <uo k="s:originTrace" v="n:6836281137582840532" />
                                    <node concept="37vLTw" id="hO" role="37wK5m">
                                      <ref role="3cqZAo" node="hx" resolve="contextProject" />
                                      <uo k="s:originTrace" v="n:6836281137582840533" />
                                    </node>
                                    <node concept="3clFbT" id="hP" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                      <uo k="s:originTrace" v="n:6836281137582840534" />
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="hN" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="isExcluded" />
                                    <uo k="s:originTrace" v="n:6836281137582840535" />
                                    <node concept="10P_77" id="hQ" role="3clF45">
                                      <uo k="s:originTrace" v="n:6836281137582840536" />
                                    </node>
                                    <node concept="3Tm1VV" id="hR" role="1B3o_S">
                                      <uo k="s:originTrace" v="n:6836281137582840537" />
                                    </node>
                                    <node concept="37vLTG" id="hS" role="3clF46">
                                      <property role="TrG5h" value="node" />
                                      <uo k="s:originTrace" v="n:6836281137582840538" />
                                      <node concept="3Tqbb2" id="hV" role="1tU5fm">
                                        <uo k="s:originTrace" v="n:6836281137582840539" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="hT" role="3clF47">
                                      <uo k="s:originTrace" v="n:6836281137582840540" />
                                      <node concept="3clFbF" id="hW" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:6836281137582840541" />
                                        <node concept="3fqX7Q" id="hX" role="3clFbG">
                                          <uo k="s:originTrace" v="n:6836281137582840542" />
                                          <node concept="2OqwBi" id="hY" role="3fr31v">
                                            <uo k="s:originTrace" v="n:6836281137582840543" />
                                            <node concept="37vLTw" id="hZ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="hS" resolve="node" />
                                              <uo k="s:originTrace" v="n:6836281137582840544" />
                                            </node>
                                            <node concept="1mIQ4w" id="i0" role="2OqNvi">
                                              <uo k="s:originTrace" v="n:6836281137582840545" />
                                              <node concept="chp4Y" id="i1" role="cj9EA">
                                                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                                                <uo k="s:originTrace" v="n:6836281137582840546" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="hU" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      <uo k="s:originTrace" v="n:6836281137582840547" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="hG" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840548" />
                          <node concept="37vLTw" id="i2" role="2Oq$k0">
                            <ref role="3cqZAo" node="hx" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840549" />
                          </node>
                          <node concept="3x8VRR" id="i3" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840550" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="hw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840551" />
                        <node concept="2ShNRf" id="i4" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840552" />
                          <node concept="1pGfFk" id="i5" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582840553" />
                            <node concept="2OqwBi" id="i6" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582840557" />
                              <node concept="1DoJHT" id="i9" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582840558" />
                                <node concept="3uibUv" id="ib" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="ic" role="1EMhIo">
                                  <ref role="3cqZAo" node="hq" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="ia" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582840559" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="i7" role="37wK5m">
                              <property role="3clFbU" value="false" />
                              <uo k="s:originTrace" v="n:6836281137582840555" />
                            </node>
                            <node concept="35c_gC" id="i8" role="37wK5m">
                              <ref role="35c_gD" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
                              <uo k="s:originTrace" v="n:6836281137582840556" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="hs" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840514" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="h7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
      <node concept="3uibUv" id="gN" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
      </node>
    </node>
    <node concept="2YIFZL" id="fB" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:5610619299013068362" />
      <node concept="10P_77" id="id" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299013068362" />
      </node>
      <node concept="3Tm6S6" id="ie" role="1B3o_S">
        <uo k="s:originTrace" v="n:5610619299013068362" />
      </node>
      <node concept="3clFbS" id="if" role="3clF47">
        <uo k="s:originTrace" v="n:3576430657785434662" />
        <node concept="3clFbF" id="ik" role="3cqZAp">
          <uo k="s:originTrace" v="n:3576430657785435931" />
          <node concept="2OqwBi" id="il" role="3clFbG">
            <uo k="s:originTrace" v="n:3576430657785436631" />
            <node concept="37vLTw" id="im" role="2Oq$k0">
              <ref role="3cqZAo" node="ih" resolve="parentNode" />
              <uo k="s:originTrace" v="n:3576430657785435930" />
            </node>
            <node concept="1mIQ4w" id="in" role="2OqNvi">
              <uo k="s:originTrace" v="n:3576430657785437704" />
              <node concept="chp4Y" id="io" role="cj9EA">
                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                <uo k="s:originTrace" v="n:3576430657785437760" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="ig" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3uibUv" id="ip" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
      <node concept="37vLTG" id="ih" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3uibUv" id="iq" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
      <node concept="37vLTG" id="ii" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3uibUv" id="ir" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
      <node concept="37vLTG" id="ij" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:5610619299013068362" />
        <node concept="3uibUv" id="is" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:5610619299013068362" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="it">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_ImportTarContent_Constraints" />
    <uo k="s:originTrace" v="n:9201269590678327671" />
    <node concept="3Tm1VV" id="iu" role="1B3o_S">
      <uo k="s:originTrace" v="n:9201269590678327671" />
    </node>
    <node concept="3uibUv" id="iv" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:9201269590678327671" />
    </node>
    <node concept="3clFbW" id="iw" role="jymVt">
      <uo k="s:originTrace" v="n:9201269590678327671" />
      <node concept="37vLTG" id="iz" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="3uibUv" id="iA" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
        </node>
      </node>
      <node concept="3cqZAl" id="i$" role="3clF45">
        <uo k="s:originTrace" v="n:9201269590678327671" />
      </node>
      <node concept="3clFbS" id="i_" role="3clF47">
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="XkiVB" id="iB" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
          <node concept="1BaE9c" id="iD" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_ImportTarContent$rv" />
            <uo k="s:originTrace" v="n:9201269590678327671" />
            <node concept="2YIFZM" id="iF" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:9201269590678327671" />
              <node concept="11gdke" id="iG" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:9201269590678327671" />
              </node>
              <node concept="11gdke" id="iH" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:9201269590678327671" />
              </node>
              <node concept="11gdke" id="iI" role="37wK5m">
                <property role="11gdj1" value="7fb179f13afc03b8L" />
                <uo k="s:originTrace" v="n:9201269590678327671" />
              </node>
              <node concept="Xl_RD" id="iJ" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_ImportTarContent" />
                <uo k="s:originTrace" v="n:9201269590678327671" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="iE" role="37wK5m">
            <ref role="3cqZAo" node="iz" resolve="initContext" />
            <uo k="s:originTrace" v="n:9201269590678327671" />
          </node>
        </node>
        <node concept="3clFbF" id="iC" role="3cqZAp">
          <uo k="s:originTrace" v="n:9201269590678327671" />
          <node concept="1rXfSq" id="iK" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:9201269590678327671" />
            <node concept="2ShNRf" id="iL" role="37wK5m">
              <uo k="s:originTrace" v="n:9201269590678327671" />
              <node concept="YeOm9" id="iM" role="2ShVmc">
                <uo k="s:originTrace" v="n:9201269590678327671" />
                <node concept="1Y3b0j" id="iN" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:9201269590678327671" />
                  <node concept="3Tm1VV" id="iO" role="1B3o_S">
                    <uo k="s:originTrace" v="n:9201269590678327671" />
                  </node>
                  <node concept="3clFb_" id="iP" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:9201269590678327671" />
                    <node concept="3Tm1VV" id="iS" role="1B3o_S">
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                    </node>
                    <node concept="2AHcQZ" id="iT" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                    </node>
                    <node concept="3uibUv" id="iU" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                    </node>
                    <node concept="37vLTG" id="iV" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                      <node concept="3uibUv" id="iY" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                      <node concept="2AHcQZ" id="iZ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="iW" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                      <node concept="3uibUv" id="j0" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                      <node concept="2AHcQZ" id="j1" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="iX" role="3clF47">
                      <uo k="s:originTrace" v="n:9201269590678327671" />
                      <node concept="3cpWs8" id="j2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                        <node concept="3cpWsn" id="j7" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:9201269590678327671" />
                          <node concept="10P_77" id="j8" role="1tU5fm">
                            <uo k="s:originTrace" v="n:9201269590678327671" />
                          </node>
                          <node concept="1rXfSq" id="j9" role="33vP2m">
                            <ref role="37wK5l" node="iy" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:9201269590678327671" />
                            <node concept="2OqwBi" id="ja" role="37wK5m">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                              <node concept="37vLTw" id="je" role="2Oq$k0">
                                <ref role="3cqZAo" node="iV" resolve="context" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                              <node concept="liA8E" id="jf" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jb" role="37wK5m">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                              <node concept="37vLTw" id="jg" role="2Oq$k0">
                                <ref role="3cqZAo" node="iV" resolve="context" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                              <node concept="liA8E" id="jh" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jc" role="37wK5m">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                              <node concept="37vLTw" id="ji" role="2Oq$k0">
                                <ref role="3cqZAo" node="iV" resolve="context" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                              <node concept="liA8E" id="jj" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jd" role="37wK5m">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                              <node concept="37vLTw" id="jk" role="2Oq$k0">
                                <ref role="3cqZAo" node="iV" resolve="context" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                              <node concept="liA8E" id="jl" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="j3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                      <node concept="3clFbJ" id="j4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                        <node concept="3clFbS" id="jm" role="3clFbx">
                          <uo k="s:originTrace" v="n:9201269590678327671" />
                          <node concept="3clFbF" id="jo" role="3cqZAp">
                            <uo k="s:originTrace" v="n:9201269590678327671" />
                            <node concept="2OqwBi" id="jp" role="3clFbG">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                              <node concept="37vLTw" id="jq" role="2Oq$k0">
                                <ref role="3cqZAo" node="iW" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                              </node>
                              <node concept="liA8E" id="jr" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:9201269590678327671" />
                                <node concept="1dyn4i" id="js" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:9201269590678327671" />
                                  <node concept="2ShNRf" id="jt" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:9201269590678327671" />
                                    <node concept="1pGfFk" id="ju" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:9201269590678327671" />
                                      <node concept="Xl_RD" id="jv" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:9201269590678327671" />
                                      </node>
                                      <node concept="Xl_RD" id="jw" role="37wK5m">
                                        <property role="Xl_RC" value="9201269590678327672" />
                                        <uo k="s:originTrace" v="n:9201269590678327671" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="jn" role="3clFbw">
                          <uo k="s:originTrace" v="n:9201269590678327671" />
                          <node concept="3y3z36" id="jx" role="3uHU7w">
                            <uo k="s:originTrace" v="n:9201269590678327671" />
                            <node concept="10Nm6u" id="jz" role="3uHU7w">
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                            </node>
                            <node concept="37vLTw" id="j$" role="3uHU7B">
                              <ref role="3cqZAo" node="iW" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="jy" role="3uHU7B">
                            <uo k="s:originTrace" v="n:9201269590678327671" />
                            <node concept="37vLTw" id="j_" role="3fr31v">
                              <ref role="3cqZAo" node="j7" resolve="result" />
                              <uo k="s:originTrace" v="n:9201269590678327671" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="j5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                      </node>
                      <node concept="3clFbF" id="j6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:9201269590678327671" />
                        <node concept="37vLTw" id="jA" role="3clFbG">
                          <ref role="3cqZAo" node="j7" resolve="result" />
                          <uo k="s:originTrace" v="n:9201269590678327671" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="iQ" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:9201269590678327671" />
                  </node>
                  <node concept="3uibUv" id="iR" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:9201269590678327671" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ix" role="jymVt">
      <uo k="s:originTrace" v="n:9201269590678327671" />
    </node>
    <node concept="2YIFZL" id="iy" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:9201269590678327671" />
      <node concept="10P_77" id="jB" role="3clF45">
        <uo k="s:originTrace" v="n:9201269590678327671" />
      </node>
      <node concept="3Tm6S6" id="jC" role="1B3o_S">
        <uo k="s:originTrace" v="n:9201269590678327671" />
      </node>
      <node concept="3clFbS" id="jD" role="3clF47">
        <uo k="s:originTrace" v="n:9201269590678327673" />
        <node concept="3clFbF" id="jI" role="3cqZAp">
          <uo k="s:originTrace" v="n:9201269590678327674" />
          <node concept="2OqwBi" id="jJ" role="3clFbG">
            <uo k="s:originTrace" v="n:9201269590678327675" />
            <node concept="2OqwBi" id="jK" role="2Oq$k0">
              <uo k="s:originTrace" v="n:9201269590678327676" />
              <node concept="37vLTw" id="jM" role="2Oq$k0">
                <ref role="3cqZAo" node="jF" resolve="parentNode" />
                <uo k="s:originTrace" v="n:9201269590678327677" />
              </node>
              <node concept="2Xjw5R" id="jN" role="2OqNvi">
                <uo k="s:originTrace" v="n:9201269590678327678" />
                <node concept="1xMEDy" id="jO" role="1xVPHs">
                  <uo k="s:originTrace" v="n:9201269590678327679" />
                  <node concept="chp4Y" id="jQ" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
                    <uo k="s:originTrace" v="n:9201269590678327680" />
                  </node>
                </node>
                <node concept="1xIGOp" id="jP" role="1xVPHs">
                  <uo k="s:originTrace" v="n:9201269590678327681" />
                </node>
              </node>
            </node>
            <node concept="1mIQ4w" id="jL" role="2OqNvi">
              <uo k="s:originTrace" v="n:9201269590678327682" />
              <node concept="chp4Y" id="jR" role="cj9EA">
                <ref role="cht4Q" to="3ior:7s9W5cEkA83" resolve="BuildLayout_Tar" />
                <uo k="s:originTrace" v="n:9201269590678327683" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="jE" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="3uibUv" id="jS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
        </node>
      </node>
      <node concept="37vLTG" id="jF" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="3uibUv" id="jT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
        </node>
      </node>
      <node concept="37vLTG" id="jG" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="3uibUv" id="jU" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
        </node>
      </node>
      <node concept="37vLTG" id="jH" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:9201269590678327671" />
        <node concept="3uibUv" id="jV" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:9201269590678327671" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="jW">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_Import_Constraints" />
    <uo k="s:originTrace" v="n:841011766565773812" />
    <node concept="3Tm1VV" id="jX" role="1B3o_S">
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="3uibUv" id="jY" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="3clFbW" id="jZ" role="jymVt">
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="37vLTG" id="k3" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="k6" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="3cqZAl" id="k4" role="3clF45">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3clFbS" id="k5" role="3clF47">
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="XkiVB" id="k7" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1BaE9c" id="ka" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_Import$wO" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2YIFZM" id="kc" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="11gdke" id="kd" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="11gdke" id="ke" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="11gdke" id="kf" role="37wK5m">
                <property role="11gdj1" value="babdfbeee1350f2L" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="Xl_RD" id="kg" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_Import" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="kb" role="37wK5m">
            <ref role="3cqZAo" node="k3" resolve="initContext" />
            <uo k="s:originTrace" v="n:841011766565773812" />
          </node>
        </node>
        <node concept="3clFbF" id="k8" role="3cqZAp">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1rXfSq" id="kh" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="ki" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="1pGfFk" id="kj" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="lc" resolve="BuildLayout_Import_Constraints.RD1" />
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="Xjq3P" id="kk" role="37wK5m">
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="k9" role="3cqZAp">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1rXfSq" id="kl" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="km" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="YeOm9" id="kn" role="2ShVmc">
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="1Y3b0j" id="ko" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                  <node concept="3Tm1VV" id="kp" role="1B3o_S">
                    <uo k="s:originTrace" v="n:841011766565773812" />
                  </node>
                  <node concept="3clFb_" id="kq" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:841011766565773812" />
                    <node concept="3Tm1VV" id="kt" role="1B3o_S">
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="2AHcQZ" id="ku" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="3uibUv" id="kv" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="37vLTG" id="kw" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3uibUv" id="kz" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="2AHcQZ" id="k$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="kx" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3uibUv" id="k_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="2AHcQZ" id="kA" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="ky" role="3clF47">
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3cpWs8" id="kB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="3cpWsn" id="kG" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="10P_77" id="kH" role="1tU5fm">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                          </node>
                          <node concept="1rXfSq" id="kI" role="33vP2m">
                            <ref role="37wK5l" node="k2" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="2OqwBi" id="kJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="kN" role="2Oq$k0">
                                <ref role="3cqZAo" node="kw" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="kO" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="kK" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="kP" role="2Oq$k0">
                                <ref role="3cqZAo" node="kw" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="kQ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="kL" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="kR" role="2Oq$k0">
                                <ref role="3cqZAo" node="kw" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="kS" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="kM" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="kT" role="2Oq$k0">
                                <ref role="3cqZAo" node="kw" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="kU" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="kC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="3clFbJ" id="kD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="3clFbS" id="kV" role="3clFbx">
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="3clFbF" id="kX" role="3cqZAp">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="2OqwBi" id="kY" role="3clFbG">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="kZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="kx" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="l0" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                                <node concept="1dyn4i" id="l1" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:841011766565773812" />
                                  <node concept="2ShNRf" id="l2" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:841011766565773812" />
                                    <node concept="1pGfFk" id="l3" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:841011766565773812" />
                                      <node concept="Xl_RD" id="l4" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:841011766565773812" />
                                      </node>
                                      <node concept="Xl_RD" id="l5" role="37wK5m">
                                        <property role="Xl_RC" value="3576430657785403305" />
                                        <uo k="s:originTrace" v="n:841011766565773812" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="kW" role="3clFbw">
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="3y3z36" id="l6" role="3uHU7w">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="10Nm6u" id="l8" role="3uHU7w">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                            <node concept="37vLTw" id="l9" role="3uHU7B">
                              <ref role="3cqZAo" node="kx" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="l7" role="3uHU7B">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="37vLTw" id="la" role="3fr31v">
                              <ref role="3cqZAo" node="kG" resolve="result" />
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="kE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="3clFbF" id="kF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="37vLTw" id="lb" role="3clFbG">
                          <ref role="3cqZAo" node="kG" resolve="result" />
                          <uo k="s:originTrace" v="n:841011766565773812" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="kr" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:841011766565773812" />
                  </node>
                  <node concept="3uibUv" id="ks" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:841011766565773812" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="k0" role="jymVt">
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="312cEu" id="k1" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="3clFbW" id="lc" role="jymVt">
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="37vLTG" id="lf" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="3uibUv" id="li" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:841011766565773812" />
          </node>
        </node>
        <node concept="3cqZAl" id="lg" role="3clF45">
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3clFbS" id="lh" role="3clF47">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="XkiVB" id="lj" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="1BaE9c" id="lk" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$AFU4" />
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="2YIFZM" id="lo" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="11gdke" id="lp" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="lq" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="lr" role="37wK5m">
                  <property role="11gdj1" value="babdfbeee1350f2L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="ls" role="37wK5m">
                  <property role="11gdj1" value="babdfbeee1350f4L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="Xl_RD" id="lt" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="ll" role="37wK5m">
              <ref role="3cqZAo" node="lf" resolve="container" />
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
            <node concept="3clFbT" id="lm" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
            <node concept="3clFbT" id="ln" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ld" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3Tm1VV" id="lu" role="1B3o_S">
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3uibUv" id="lv" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="2AHcQZ" id="lw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3clFbS" id="lx" role="3clF47">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="3cpWs6" id="lz" role="3cqZAp">
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="l$" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840463" />
              <node concept="YeOm9" id="l_" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840463" />
                <node concept="1Y3b0j" id="lA" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840463" />
                  <node concept="3Tm1VV" id="lB" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                  </node>
                  <node concept="3clFb_" id="lC" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                    <node concept="3Tm1VV" id="lE" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3uibUv" id="lF" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3clFbS" id="lG" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3cpWs6" id="lI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840463" />
                        <node concept="2ShNRf" id="lJ" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840463" />
                          <node concept="1pGfFk" id="lK" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840463" />
                            <node concept="Xl_RD" id="lL" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840463" />
                            </node>
                            <node concept="Xl_RD" id="lM" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840463" />
                              <uo k="s:originTrace" v="n:6836281137582840463" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="lH" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="lD" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                    <node concept="3Tm1VV" id="lN" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3uibUv" id="lO" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="37vLTG" id="lP" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3uibUv" id="lS" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840463" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="lQ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3cpWs8" id="lT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840465" />
                        <node concept="3cpWsn" id="lW" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840466" />
                          <node concept="3Tqbb2" id="lX" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840467" />
                          </node>
                          <node concept="2OqwBi" id="lY" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840468" />
                            <node concept="1DoJHT" id="lZ" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840469" />
                              <node concept="3uibUv" id="m1" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="m2" role="1EMhIo">
                                <ref role="3cqZAo" node="lP" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="m0" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840470" />
                              <node concept="1xMEDy" id="m3" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840471" />
                                <node concept="chp4Y" id="m5" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840472" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="m4" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840473" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="lU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840474" />
                        <node concept="3clFbS" id="m6" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840475" />
                          <node concept="3cpWs6" id="m8" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840476" />
                            <node concept="2YIFZM" id="m9" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:1bWeed$o7s2" resolve="getVisibleArtifactsScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840477" />
                              <node concept="37vLTw" id="ma" role="37wK5m">
                                <ref role="3cqZAo" node="lW" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840478" />
                              </node>
                              <node concept="3clFbT" id="mb" role="37wK5m">
                                <property role="3clFbU" value="false" />
                                <uo k="s:originTrace" v="n:6836281137582840479" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="m7" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840480" />
                          <node concept="37vLTw" id="mc" role="2Oq$k0">
                            <ref role="3cqZAo" node="lW" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840481" />
                          </node>
                          <node concept="3x8VRR" id="md" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840482" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="lV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840483" />
                        <node concept="2ShNRf" id="me" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840484" />
                          <node concept="1pGfFk" id="mf" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                            <uo k="s:originTrace" v="n:6836281137582840485" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="lR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="ly" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="3uibUv" id="le" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
    </node>
    <node concept="2YIFZL" id="k2" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="10P_77" id="mg" role="3clF45">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3Tm6S6" id="mh" role="1B3o_S">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3clFbS" id="mi" role="3clF47">
        <uo k="s:originTrace" v="n:3576430657785403306" />
        <node concept="3clFbF" id="mn" role="3cqZAp">
          <uo k="s:originTrace" v="n:3576430657785407062" />
          <node concept="2OqwBi" id="mo" role="3clFbG">
            <uo k="s:originTrace" v="n:3576430657785407869" />
            <node concept="37vLTw" id="mp" role="2Oq$k0">
              <ref role="3cqZAo" node="mk" resolve="parentNode" />
              <uo k="s:originTrace" v="n:3576430657785407061" />
            </node>
            <node concept="1mIQ4w" id="mq" role="2OqNvi">
              <uo k="s:originTrace" v="n:3576430657785415135" />
              <node concept="chp4Y" id="mr" role="cj9EA">
                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                <uo k="s:originTrace" v="n:3576430657785415295" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="mj" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="ms" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="mk" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="mt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="ml" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="mu" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="mm" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="mv" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="mw">
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Constraints" />
    <uo k="s:originTrace" v="n:7471276865246011486" />
    <node concept="3Tm1VV" id="mx" role="1B3o_S">
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="3uibUv" id="my" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="3clFbW" id="mz" role="jymVt">
      <uo k="s:originTrace" v="n:7471276865246011486" />
      <node concept="37vLTG" id="mA" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="mD" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="3cqZAl" id="mB" role="3clF45">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3clFbS" id="mC" role="3clF47">
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="XkiVB" id="mE" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
          <node concept="1BaE9c" id="mG" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_JarManifest$lZ" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
            <node concept="2YIFZM" id="mI" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7471276865246011486" />
              <node concept="11gdke" id="mJ" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="11gdke" id="mK" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="11gdke" id="mL" role="37wK5m">
                <property role="11gdj1" value="115d3b22faf20f2eL" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="Xl_RD" id="mM" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_JarManifest" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="mH" role="37wK5m">
            <ref role="3cqZAo" node="mA" resolve="initContext" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
          </node>
        </node>
        <node concept="3clFbF" id="mF" role="3cqZAp">
          <uo k="s:originTrace" v="n:7471276865246011486" />
          <node concept="1rXfSq" id="mN" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
            <node concept="2ShNRf" id="mO" role="37wK5m">
              <uo k="s:originTrace" v="n:7471276865246011486" />
              <node concept="YeOm9" id="mP" role="2ShVmc">
                <uo k="s:originTrace" v="n:7471276865246011486" />
                <node concept="1Y3b0j" id="mQ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7471276865246011486" />
                  <node concept="3Tm1VV" id="mR" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                  </node>
                  <node concept="3clFb_" id="mS" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                    <node concept="3Tm1VV" id="mV" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="2AHcQZ" id="mW" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="3uibUv" id="mX" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="37vLTG" id="mY" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3uibUv" id="n1" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="2AHcQZ" id="n2" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="mZ" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3uibUv" id="n3" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="2AHcQZ" id="n4" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="n0" role="3clF47">
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3cpWs8" id="n5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="3cpWsn" id="na" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="10P_77" id="nb" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                          </node>
                          <node concept="1rXfSq" id="nc" role="33vP2m">
                            <ref role="37wK5l" node="m_" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="2OqwBi" id="nd" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="nh" role="2Oq$k0">
                                <ref role="3cqZAo" node="mY" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="ni" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ne" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="nj" role="2Oq$k0">
                                <ref role="3cqZAo" node="mY" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="nk" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nf" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="nl" role="2Oq$k0">
                                <ref role="3cqZAo" node="mY" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="nm" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ng" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="nn" role="2Oq$k0">
                                <ref role="3cqZAo" node="mY" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="no" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="n6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="3clFbJ" id="n7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="3clFbS" id="np" role="3clFbx">
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="3clFbF" id="nr" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="2OqwBi" id="ns" role="3clFbG">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="nt" role="2Oq$k0">
                                <ref role="3cqZAo" node="mZ" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="nu" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                                <node concept="1dyn4i" id="nv" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7471276865246011486" />
                                  <node concept="2ShNRf" id="nw" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7471276865246011486" />
                                    <node concept="1pGfFk" id="nx" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7471276865246011486" />
                                      <node concept="Xl_RD" id="ny" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7471276865246011486" />
                                      </node>
                                      <node concept="Xl_RD" id="nz" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580357" />
                                        <uo k="s:originTrace" v="n:7471276865246011486" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="nq" role="3clFbw">
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="3y3z36" id="n$" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="10Nm6u" id="nA" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                            <node concept="37vLTw" id="nB" role="3uHU7B">
                              <ref role="3cqZAo" node="mZ" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="n_" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="37vLTw" id="nC" role="3fr31v">
                              <ref role="3cqZAo" node="na" resolve="result" />
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="n8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="3clFbF" id="n9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="37vLTw" id="nD" role="3clFbG">
                          <ref role="3cqZAo" node="na" resolve="result" />
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="mT" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                  </node>
                  <node concept="3uibUv" id="mU" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="m$" role="jymVt">
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="2YIFZL" id="m_" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7471276865246011486" />
      <node concept="10P_77" id="nE" role="3clF45">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3Tm6S6" id="nF" role="1B3o_S">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3clFbS" id="nG" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580358" />
        <node concept="3clFbJ" id="nL" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580359" />
          <node concept="3clFbS" id="nN" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536580360" />
            <node concept="3cpWs6" id="nP" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536580361" />
              <node concept="2OqwBi" id="nQ" role="3cqZAk">
                <uo k="s:originTrace" v="n:1227128029536580362" />
                <node concept="2OqwBi" id="nR" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536580363" />
                  <node concept="2OqwBi" id="nT" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580364" />
                    <node concept="37vLTw" id="nV" role="2Oq$k0">
                      <ref role="3cqZAo" node="nH" resolve="node" />
                      <uo k="s:originTrace" v="n:1227128029536580365" />
                    </node>
                    <node concept="2Ttrtt" id="nW" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1227128029536580366" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="nU" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1227128029536580367" />
                    <node concept="1bVj0M" id="nX" role="23t8la">
                      <uo k="s:originTrace" v="n:1227128029536580368" />
                      <node concept="3clFbS" id="nY" role="1bW5cS">
                        <uo k="s:originTrace" v="n:1227128029536580369" />
                        <node concept="3clFbF" id="o0" role="3cqZAp">
                          <uo k="s:originTrace" v="n:1227128029536580370" />
                          <node concept="2OqwBi" id="o1" role="3clFbG">
                            <uo k="s:originTrace" v="n:1227128029536580371" />
                            <node concept="37vLTw" id="o2" role="2Oq$k0">
                              <ref role="3cqZAo" node="nZ" resolve="it" />
                              <uo k="s:originTrace" v="n:1227128029536580372" />
                            </node>
                            <node concept="1mIQ4w" id="o3" role="2OqNvi">
                              <uo k="s:originTrace" v="n:1227128029536580373" />
                              <node concept="chp4Y" id="o4" role="cj9EA">
                                <ref role="cht4Q" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
                                <uo k="s:originTrace" v="n:1227128029536580374" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="nZ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:6847626768367733738" />
                        <node concept="2jxLKc" id="o5" role="1tU5fm">
                          <uo k="s:originTrace" v="n:6847626768367733739" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="nS" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580377" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="nO" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536580378" />
            <node concept="37vLTw" id="o6" role="2Oq$k0">
              <ref role="3cqZAo" node="nI" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580379" />
            </node>
            <node concept="1mIQ4w" id="o7" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580380" />
              <node concept="chp4Y" id="o8" role="cj9EA">
                <ref role="cht4Q" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
                <uo k="s:originTrace" v="n:1227128029536580381" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580382" />
          <node concept="3clFbT" id="o9" role="3clFbG">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:1227128029536580383" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="nH" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="oa" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="nI" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="ob" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="nJ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="oc" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="nK" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="od" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="oe">
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Section_Constraints" />
    <uo k="s:originTrace" v="n:8563603456896613565" />
    <node concept="3Tm1VV" id="of" role="1B3o_S">
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="3uibUv" id="og" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="3clFbW" id="oh" role="jymVt">
      <uo k="s:originTrace" v="n:8563603456896613565" />
      <node concept="37vLTG" id="ok" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="on" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="3cqZAl" id="ol" role="3clF45">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3clFbS" id="om" role="3clF47">
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="XkiVB" id="oo" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
          <node concept="1BaE9c" id="oq" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_JarManifest_Section$63" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
            <node concept="2YIFZM" id="os" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8563603456896613565" />
              <node concept="11gdke" id="ot" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="11gdke" id="ou" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="11gdke" id="ov" role="37wK5m">
                <property role="11gdj1" value="115d3b22faf47d7bL" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="Xl_RD" id="ow" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_JarManifest_Section" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="or" role="37wK5m">
            <ref role="3cqZAo" node="ok" resolve="initContext" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
          </node>
        </node>
        <node concept="3clFbF" id="op" role="3cqZAp">
          <uo k="s:originTrace" v="n:8563603456896613565" />
          <node concept="1rXfSq" id="ox" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
            <node concept="2ShNRf" id="oy" role="37wK5m">
              <uo k="s:originTrace" v="n:8563603456896613565" />
              <node concept="YeOm9" id="oz" role="2ShVmc">
                <uo k="s:originTrace" v="n:8563603456896613565" />
                <node concept="1Y3b0j" id="o$" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:8563603456896613565" />
                  <node concept="3Tm1VV" id="o_" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                  </node>
                  <node concept="3clFb_" id="oA" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                    <node concept="3Tm1VV" id="oD" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="2AHcQZ" id="oE" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="3uibUv" id="oF" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="37vLTG" id="oG" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3uibUv" id="oJ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="2AHcQZ" id="oK" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="oH" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3uibUv" id="oL" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="2AHcQZ" id="oM" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="oI" role="3clF47">
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3cpWs8" id="oN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="3cpWsn" id="oS" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="10P_77" id="oT" role="1tU5fm">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                          </node>
                          <node concept="1rXfSq" id="oU" role="33vP2m">
                            <ref role="37wK5l" node="oj" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="2OqwBi" id="oV" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="oZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="oG" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="p0" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="oW" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="p1" role="2Oq$k0">
                                <ref role="3cqZAo" node="oG" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="p2" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="oX" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="p3" role="2Oq$k0">
                                <ref role="3cqZAo" node="oG" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="p4" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="oY" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="p5" role="2Oq$k0">
                                <ref role="3cqZAo" node="oG" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="p6" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="oO" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="3clFbJ" id="oP" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="3clFbS" id="p7" role="3clFbx">
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="3clFbF" id="p9" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="2OqwBi" id="pa" role="3clFbG">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="pb" role="2Oq$k0">
                                <ref role="3cqZAo" node="oH" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="pc" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                                <node concept="1dyn4i" id="pd" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:8563603456896613565" />
                                  <node concept="2ShNRf" id="pe" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:8563603456896613565" />
                                    <node concept="1pGfFk" id="pf" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8563603456896613565" />
                                      <node concept="Xl_RD" id="pg" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:8563603456896613565" />
                                      </node>
                                      <node concept="Xl_RD" id="ph" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580424" />
                                        <uo k="s:originTrace" v="n:8563603456896613565" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="p8" role="3clFbw">
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="3y3z36" id="pi" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="10Nm6u" id="pk" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                            <node concept="37vLTw" id="pl" role="3uHU7B">
                              <ref role="3cqZAo" node="oH" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="pj" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="37vLTw" id="pm" role="3fr31v">
                              <ref role="3cqZAo" node="oS" resolve="result" />
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="oQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="3clFbF" id="oR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="37vLTw" id="pn" role="3clFbG">
                          <ref role="3cqZAo" node="oS" resolve="result" />
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="oB" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                  </node>
                  <node concept="3uibUv" id="oC" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oi" role="jymVt">
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="2YIFZL" id="oj" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:8563603456896613565" />
      <node concept="10P_77" id="po" role="3clF45">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3Tm6S6" id="pp" role="1B3o_S">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3clFbS" id="pq" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580425" />
        <node concept="3clFbF" id="pv" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580426" />
          <node concept="2OqwBi" id="pw" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580427" />
            <node concept="37vLTw" id="px" role="2Oq$k0">
              <ref role="3cqZAo" node="ps" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580428" />
            </node>
            <node concept="1mIQ4w" id="py" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580429" />
              <node concept="chp4Y" id="pz" role="cj9EA">
                <ref role="cht4Q" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
                <uo k="s:originTrace" v="n:1227128029536580430" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="pr" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="p$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="ps" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="p_" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="pt" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="pA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="pu" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="pB" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="pC">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_NamedContainer_Constraints" />
    <uo k="s:originTrace" v="n:8237269006869472775" />
    <node concept="3Tm1VV" id="pD" role="1B3o_S">
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="3uibUv" id="pE" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="3clFbW" id="pF" role="jymVt">
      <uo k="s:originTrace" v="n:8237269006869472775" />
      <node concept="37vLTG" id="pI" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3uibUv" id="pL" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
      </node>
      <node concept="3cqZAl" id="pJ" role="3clF45">
        <uo k="s:originTrace" v="n:8237269006869472775" />
      </node>
      <node concept="3clFbS" id="pK" role="3clF47">
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="XkiVB" id="pM" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="1BaE9c" id="pO" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_NamedContainer$Ug" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="2YIFZM" id="pQ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="11gdke" id="pR" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="11gdke" id="pS" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="11gdke" id="pT" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafac7f8cL" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="Xl_RD" id="pU" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_NamedContainer" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="pP" role="37wK5m">
            <ref role="3cqZAo" node="pI" resolve="initContext" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
        <node concept="3clFbF" id="pN" role="3cqZAp">
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="1rXfSq" id="pV" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="2ShNRf" id="pW" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="1pGfFk" id="pX" role="2ShVmc">
                <ref role="37wK5l" node="pZ" resolve="BuildLayout_NamedContainer_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
                <node concept="Xjq3P" id="pY" role="37wK5m">
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="pG" role="jymVt">
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="312cEu" id="pH" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:8237269006869472775" />
      <node concept="3clFbW" id="pZ" role="jymVt">
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3cqZAl" id="q2" role="3clF45">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3Tm1VV" id="q3" role="1B3o_S">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3clFbS" id="q4" role="3clF47">
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="XkiVB" id="q6" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="1BaE9c" id="q7" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="2YIFZM" id="qc" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
                <node concept="11gdke" id="qd" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="qe" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="qf" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="qg" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="Xl_RD" id="qh" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="q8" role="37wK5m">
              <ref role="3cqZAo" node="q5" resolve="container" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="q9" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="qa" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="qb" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="q5" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="3uibUv" id="qi" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="q0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3Tm1VV" id="qj" role="1B3o_S">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3uibUv" id="qk" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="37vLTG" id="ql" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="3Tqbb2" id="qo" role="1tU5fm">
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
        <node concept="2AHcQZ" id="qm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3clFbS" id="qn" role="3clF47">
          <uo k="s:originTrace" v="n:8237269006869507402" />
          <node concept="3clFbF" id="qp" role="3cqZAp">
            <uo k="s:originTrace" v="n:4380385936562211615" />
            <node concept="2OqwBi" id="qq" role="3clFbG">
              <uo k="s:originTrace" v="n:4380385936562211629" />
              <node concept="2OqwBi" id="qr" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4380385936562211619" />
                <node concept="37vLTw" id="qt" role="2Oq$k0">
                  <ref role="3cqZAo" node="ql" resolve="node" />
                  <uo k="s:originTrace" v="n:4380385936562211616" />
                </node>
                <node concept="3TrEf2" id="qu" role="2OqNvi">
                  <ref role="3Tt5mk" to="3ior:3NagsOfTPim" resolve="containerName" />
                  <uo k="s:originTrace" v="n:4380385936562211625" />
                </node>
              </node>
              <node concept="3zqWPK" id="qs" role="2OqNvi">
                <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                <uo k="s:originTrace" v="n:8085146484218851487" />
                <node concept="10Nm6u" id="qv" role="37wK5m">
                  <uo k="s:originTrace" v="n:8085146484218851489" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="q1" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qw">
    <property role="3GE5qa" value="Layout.File" />
    <property role="TrG5h" value="BuildLayout_TarFiles_Constraints" />
    <uo k="s:originTrace" v="n:8488675646594664595" />
    <node concept="3Tm1VV" id="qx" role="1B3o_S">
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="3uibUv" id="qy" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="3clFbW" id="qz" role="jymVt">
      <uo k="s:originTrace" v="n:8488675646594664595" />
      <node concept="37vLTG" id="qA" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="qD" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="3cqZAl" id="qB" role="3clF45">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3clFbS" id="qC" role="3clF47">
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="XkiVB" id="qE" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
          <node concept="1BaE9c" id="qG" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_TarFiles$1e" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
            <node concept="2YIFZM" id="qI" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8488675646594664595" />
              <node concept="11gdke" id="qJ" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="11gdke" id="qK" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="11gdke" id="qL" role="37wK5m">
                <property role="11gdj1" value="75cdd58690c86fecL" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="Xl_RD" id="qM" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_TarFiles" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="qH" role="37wK5m">
            <ref role="3cqZAo" node="qA" resolve="initContext" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
          </node>
        </node>
        <node concept="3clFbF" id="qF" role="3cqZAp">
          <uo k="s:originTrace" v="n:8488675646594664595" />
          <node concept="1rXfSq" id="qN" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
            <node concept="2ShNRf" id="qO" role="37wK5m">
              <uo k="s:originTrace" v="n:8488675646594664595" />
              <node concept="YeOm9" id="qP" role="2ShVmc">
                <uo k="s:originTrace" v="n:8488675646594664595" />
                <node concept="1Y3b0j" id="qQ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:8488675646594664595" />
                  <node concept="3Tm1VV" id="qR" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                  </node>
                  <node concept="3clFb_" id="qS" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                    <node concept="3Tm1VV" id="qV" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="2AHcQZ" id="qW" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="3uibUv" id="qX" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="37vLTG" id="qY" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3uibUv" id="r1" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="2AHcQZ" id="r2" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="qZ" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3uibUv" id="r3" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="2AHcQZ" id="r4" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="r0" role="3clF47">
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3cpWs8" id="r5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="3cpWsn" id="ra" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="10P_77" id="rb" role="1tU5fm">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                          </node>
                          <node concept="1rXfSq" id="rc" role="33vP2m">
                            <ref role="37wK5l" node="q_" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="2OqwBi" id="rd" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="rh" role="2Oq$k0">
                                <ref role="3cqZAo" node="qY" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="ri" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="re" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="rj" role="2Oq$k0">
                                <ref role="3cqZAo" node="qY" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="rk" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="rf" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="rl" role="2Oq$k0">
                                <ref role="3cqZAo" node="qY" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="rm" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="rg" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="rn" role="2Oq$k0">
                                <ref role="3cqZAo" node="qY" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="ro" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="r6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="3clFbJ" id="r7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="3clFbS" id="rp" role="3clFbx">
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="3clFbF" id="rr" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="2OqwBi" id="rs" role="3clFbG">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="rt" role="2Oq$k0">
                                <ref role="3cqZAo" node="qZ" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="ru" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                                <node concept="1dyn4i" id="rv" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:8488675646594664595" />
                                  <node concept="2ShNRf" id="rw" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:8488675646594664595" />
                                    <node concept="1pGfFk" id="rx" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8488675646594664595" />
                                      <node concept="Xl_RD" id="ry" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:8488675646594664595" />
                                      </node>
                                      <node concept="Xl_RD" id="rz" role="37wK5m">
                                        <property role="Xl_RC" value="8488675646594664642" />
                                        <uo k="s:originTrace" v="n:8488675646594664595" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="rq" role="3clFbw">
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="3y3z36" id="r$" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="10Nm6u" id="rA" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                            <node concept="37vLTw" id="rB" role="3uHU7B">
                              <ref role="3cqZAo" node="qZ" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="r_" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="37vLTw" id="rC" role="3fr31v">
                              <ref role="3cqZAo" node="ra" resolve="result" />
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="r8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="3clFbF" id="r9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="37vLTw" id="rD" role="3clFbG">
                          <ref role="3cqZAo" node="ra" resolve="result" />
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="qT" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                  </node>
                  <node concept="3uibUv" id="qU" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="q$" role="jymVt">
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="2YIFZL" id="q_" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:8488675646594664595" />
      <node concept="10P_77" id="rE" role="3clF45">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3Tm6S6" id="rF" role="1B3o_S">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3clFbS" id="rG" role="3clF47">
        <uo k="s:originTrace" v="n:8488675646594664643" />
        <node concept="3clFbF" id="rL" role="3cqZAp">
          <uo k="s:originTrace" v="n:8488675646594664644" />
          <node concept="2OqwBi" id="rM" role="3clFbG">
            <uo k="s:originTrace" v="n:8488675646594664645" />
            <node concept="2OqwBi" id="rN" role="2Oq$k0">
              <uo k="s:originTrace" v="n:9201269590676080256" />
              <node concept="37vLTw" id="rP" role="2Oq$k0">
                <ref role="3cqZAo" node="rI" resolve="parentNode" />
                <uo k="s:originTrace" v="n:9201269590676080257" />
              </node>
              <node concept="2Xjw5R" id="rQ" role="2OqNvi">
                <uo k="s:originTrace" v="n:9201269590676080258" />
                <node concept="1xMEDy" id="rR" role="1xVPHs">
                  <uo k="s:originTrace" v="n:9201269590676080261" />
                  <node concept="chp4Y" id="rT" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:4zlO3QT9Z8D" resolve="BuildLayout_ContainerAcceptingFileSet" />
                    <uo k="s:originTrace" v="n:9201269590676080262" />
                  </node>
                </node>
                <node concept="1xIGOp" id="rS" role="1xVPHs">
                  <uo k="s:originTrace" v="n:9201269590676080263" />
                </node>
              </node>
            </node>
            <node concept="1mIQ4w" id="rO" role="2OqNvi">
              <uo k="s:originTrace" v="n:8488675646594664647" />
              <node concept="chp4Y" id="rU" role="cj9EA">
                <ref role="cht4Q" to="3ior:7s9W5cEkA83" resolve="BuildLayout_Tar" />
                <uo k="s:originTrace" v="n:8488675646594664648" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="rH" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="rV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="rI" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="rW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="rJ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="rX" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="rK" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="rY" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="rZ">
    <property role="3GE5qa" value="Dependencies" />
    <property role="TrG5h" value="BuildProjectDependency_Constraints" />
    <uo k="s:originTrace" v="n:8258189873530167542" />
    <node concept="3Tm1VV" id="s0" role="1B3o_S">
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="3uibUv" id="s1" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="3clFbW" id="s2" role="jymVt">
      <uo k="s:originTrace" v="n:8258189873530167542" />
      <node concept="37vLTG" id="s5" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="3uibUv" id="s8" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
      </node>
      <node concept="3cqZAl" id="s6" role="3clF45">
        <uo k="s:originTrace" v="n:8258189873530167542" />
      </node>
      <node concept="3clFbS" id="s7" role="3clF47">
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="XkiVB" id="s9" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="1BaE9c" id="sb" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildProjectDependency$sN" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2YIFZM" id="sd" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="11gdke" id="se" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="11gdke" id="sf" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="11gdke" id="sg" role="37wK5m">
                <property role="11gdj1" value="454b730dd908c220L" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="Xl_RD" id="sh" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildProjectDependency" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="sc" role="37wK5m">
            <ref role="3cqZAo" node="s5" resolve="initContext" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
          </node>
        </node>
        <node concept="3clFbF" id="sa" role="3cqZAp">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="1rXfSq" id="si" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2ShNRf" id="sj" role="37wK5m">
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="1pGfFk" id="sk" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="sm" resolve="BuildProjectDependency_Constraints.RD1" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
                <node concept="Xjq3P" id="sl" role="37wK5m">
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="s3" role="jymVt">
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="312cEu" id="s4" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:8258189873530167542" />
      <node concept="3clFbW" id="sm" role="jymVt">
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="37vLTG" id="sp" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="3uibUv" id="ss" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
          </node>
        </node>
        <node concept="3cqZAl" id="sq" role="3clF45">
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3clFbS" id="sr" role="3clF47">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="XkiVB" id="st" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="1BaE9c" id="su" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="script$6Ehy" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="2YIFZM" id="sy" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
                <node concept="11gdke" id="sz" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="s$" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="s_" role="37wK5m">
                  <property role="11gdj1" value="454b730dd908c220L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="sA" role="37wK5m">
                  <property role="11gdj1" value="4df58c6f18f84a24L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="Xl_RD" id="sB" role="37wK5m">
                  <property role="Xl_RC" value="script" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="sv" role="37wK5m">
              <ref role="3cqZAo" node="sp" resolve="container" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
            <node concept="3clFbT" id="sw" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
            <node concept="3clFbT" id="sx" role="37wK5m">
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="sn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="3Tm1VV" id="sC" role="1B3o_S">
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3uibUv" id="sD" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="2AHcQZ" id="sE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3clFbS" id="sF" role="3clF47">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="3cpWs6" id="sH" role="3cqZAp">
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2YIFZM" id="sI" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:8258189873530172584" />
              <node concept="35c_gC" id="sJ" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                <uo k="s:originTrace" v="n:8258189873530172584" />
              </node>
              <node concept="2ShNRf" id="sK" role="37wK5m">
                <uo k="s:originTrace" v="n:8258189873530172584" />
                <node concept="1pGfFk" id="sL" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:8258189873530172584" />
                  <node concept="Xl_RD" id="sM" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:8258189873530172584" />
                  </node>
                  <node concept="Xl_RD" id="sN" role="37wK5m">
                    <property role="Xl_RC" value="8258189873530172584" />
                    <uo k="s:originTrace" v="n:8258189873530172584" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="sG" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
      </node>
      <node concept="3uibUv" id="so" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="sO">
    <property role="3GE5qa" value="SourcePath" />
    <property role="TrG5h" value="BuildSourceMacroRelativePath_Constraints" />
    <uo k="s:originTrace" v="n:7389400916848182167" />
    <node concept="3Tm1VV" id="sP" role="1B3o_S">
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="3uibUv" id="sQ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="3clFbW" id="sR" role="jymVt">
      <uo k="s:originTrace" v="n:7389400916848182167" />
      <node concept="37vLTG" id="sU" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="3uibUv" id="sX" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
      </node>
      <node concept="3cqZAl" id="sV" role="3clF45">
        <uo k="s:originTrace" v="n:7389400916848182167" />
      </node>
      <node concept="3clFbS" id="sW" role="3clF47">
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="XkiVB" id="sY" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="1BaE9c" id="t0" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourceMacroRelativePath$b7" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2YIFZM" id="t2" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="11gdke" id="t3" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="11gdke" id="t4" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="11gdke" id="t5" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafae121dL" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="Xl_RD" id="t6" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="t1" role="37wK5m">
            <ref role="3cqZAo" node="sU" resolve="initContext" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
          </node>
        </node>
        <node concept="3clFbF" id="sZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="1rXfSq" id="t7" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2ShNRf" id="t8" role="37wK5m">
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="1pGfFk" id="t9" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="tb" resolve="BuildSourceMacroRelativePath_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
                <node concept="Xjq3P" id="ta" role="37wK5m">
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="sS" role="jymVt">
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="312cEu" id="sT" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7389400916848182167" />
      <node concept="3clFbW" id="tb" role="jymVt">
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="37vLTG" id="te" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="3uibUv" id="th" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
          </node>
        </node>
        <node concept="3cqZAl" id="tf" role="3clF45">
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3clFbS" id="tg" role="3clF47">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="XkiVB" id="ti" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="1BaE9c" id="tj" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="macro$kdvp" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="2YIFZM" id="tn" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
                <node concept="11gdke" id="to" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="tp" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="tq" role="37wK5m">
                  <property role="11gdj1" value="668c6cfbafae121dL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="tr" role="37wK5m">
                  <property role="11gdj1" value="668c6cfbafae122aL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="Xl_RD" id="ts" role="37wK5m">
                  <property role="Xl_RC" value="macro" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tk" role="37wK5m">
              <ref role="3cqZAo" node="te" resolve="container" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
            <node concept="3clFbT" id="tl" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
            <node concept="3clFbT" id="tm" role="37wK5m">
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="tc" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="3Tm1VV" id="tt" role="1B3o_S">
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3uibUv" id="tu" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="2AHcQZ" id="tv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3clFbS" id="tw" role="3clF47">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="3cpWs6" id="ty" role="3cqZAp">
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2YIFZM" id="tz" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:7389400916848182175" />
              <node concept="35c_gC" id="t$" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cv" resolve="BuildMacro" />
                <uo k="s:originTrace" v="n:7389400916848182175" />
              </node>
              <node concept="2ShNRf" id="t_" role="37wK5m">
                <uo k="s:originTrace" v="n:7389400916848182175" />
                <node concept="1pGfFk" id="tA" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:7389400916848182175" />
                  <node concept="Xl_RD" id="tB" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:7389400916848182175" />
                  </node>
                  <node concept="Xl_RD" id="tC" role="37wK5m">
                    <property role="Xl_RC" value="7389400916848182175" />
                    <uo k="s:originTrace" v="n:7389400916848182175" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="tx" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
      </node>
      <node concept="3uibUv" id="td" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="tD">
    <property role="3GE5qa" value="SourcePath" />
    <property role="TrG5h" value="BuildSourcePath_Constraints" />
    <uo k="s:originTrace" v="n:1258644073389103233" />
    <node concept="3Tm1VV" id="tE" role="1B3o_S">
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
    <node concept="3uibUv" id="tF" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
    <node concept="3clFbW" id="tG" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103233" />
      <node concept="37vLTG" id="tJ" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="3uibUv" id="tM" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1258644073389103233" />
        </node>
      </node>
      <node concept="3cqZAl" id="tK" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3clFbS" id="tL" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="XkiVB" id="tN" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1258644073389103233" />
          <node concept="1BaE9c" id="tO" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourcePath$H" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
            <node concept="2YIFZM" id="tQ" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103233" />
              <node concept="11gdke" id="tR" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="tS" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="tT" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafacdc3eL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="Xl_RD" id="tU" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourcePath" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tP" role="37wK5m">
            <ref role="3cqZAo" node="tJ" resolve="initContext" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="tH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1258644073389103233" />
      <node concept="2AHcQZ" id="tV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3uibUv" id="tW" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3Tm1VV" id="tX" role="1B3o_S">
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3clFbS" id="tY" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="3clFbF" id="tZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1258644073389103233" />
          <node concept="1BaE9c" id="u0" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourceProjectRelativePath$uc" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
            <node concept="2YIFZM" id="u1" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103233" />
              <node concept="11gdke" id="u2" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="u3" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="u4" role="37wK5m">
                <property role="11gdj1" value="4c12642949048fb2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="Xl_RD" id="u5" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tI" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
  </node>
  <node concept="312cEu" id="u6">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaClassFolder_Constraints" />
    <uo k="s:originTrace" v="n:1258644073389103451" />
    <node concept="3Tm1VV" id="u7" role="1B3o_S">
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="3uibUv" id="u8" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="3clFbW" id="u9" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103451" />
      <node concept="37vLTG" id="uc" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="uf" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="3cqZAl" id="ud" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3clFbS" id="ue" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="XkiVB" id="ug" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
          <node concept="1BaE9c" id="ui" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaClassFolder$Z_" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
            <node concept="2YIFZM" id="uk" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103451" />
              <node concept="11gdke" id="ul" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="11gdke" id="um" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="11gdke" id="un" role="37wK5m">
                <property role="11gdj1" value="11779a1dbd021959L" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="Xl_RD" id="uo" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaClassFolder" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="uj" role="37wK5m">
            <ref role="3cqZAo" node="uc" resolve="initContext" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
          </node>
        </node>
        <node concept="3clFbF" id="uh" role="3cqZAp">
          <uo k="s:originTrace" v="n:1258644073389103451" />
          <node concept="1rXfSq" id="up" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
            <node concept="2ShNRf" id="uq" role="37wK5m">
              <uo k="s:originTrace" v="n:1258644073389103451" />
              <node concept="YeOm9" id="ur" role="2ShVmc">
                <uo k="s:originTrace" v="n:1258644073389103451" />
                <node concept="1Y3b0j" id="us" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1258644073389103451" />
                  <node concept="3Tm1VV" id="ut" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                  </node>
                  <node concept="3clFb_" id="uu" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                    <node concept="3Tm1VV" id="ux" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="2AHcQZ" id="uy" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="3uibUv" id="uz" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="37vLTG" id="u$" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3uibUv" id="uB" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="2AHcQZ" id="uC" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="u_" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3uibUv" id="uD" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="2AHcQZ" id="uE" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="uA" role="3clF47">
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3cpWs8" id="uF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="3cpWsn" id="uK" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="10P_77" id="uL" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                          </node>
                          <node concept="1rXfSq" id="uM" role="33vP2m">
                            <ref role="37wK5l" node="ub" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="2OqwBi" id="uN" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="uR" role="2Oq$k0">
                                <ref role="3cqZAo" node="u$" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="uS" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="uO" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="uT" role="2Oq$k0">
                                <ref role="3cqZAo" node="u$" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="uU" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="uP" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="uV" role="2Oq$k0">
                                <ref role="3cqZAo" node="u$" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="uW" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="uQ" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="uX" role="2Oq$k0">
                                <ref role="3cqZAo" node="u$" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="uY" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="uG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="3clFbJ" id="uH" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="3clFbS" id="uZ" role="3clFbx">
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="3clFbF" id="v1" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="2OqwBi" id="v2" role="3clFbG">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="v3" role="2Oq$k0">
                                <ref role="3cqZAo" node="u_" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="v4" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                                <node concept="1dyn4i" id="v5" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1258644073389103451" />
                                  <node concept="2ShNRf" id="v6" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1258644073389103451" />
                                    <node concept="1pGfFk" id="v7" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1258644073389103451" />
                                      <node concept="Xl_RD" id="v8" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:1258644073389103451" />
                                      </node>
                                      <node concept="Xl_RD" id="v9" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580466" />
                                        <uo k="s:originTrace" v="n:1258644073389103451" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="v0" role="3clFbw">
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="3y3z36" id="va" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="10Nm6u" id="vc" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                            <node concept="37vLTw" id="vd" role="3uHU7B">
                              <ref role="3cqZAo" node="u_" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="vb" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="37vLTw" id="ve" role="3fr31v">
                              <ref role="3cqZAo" node="uK" resolve="result" />
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="uI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="3clFbF" id="uJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="37vLTw" id="vf" role="3clFbG">
                          <ref role="3cqZAo" node="uK" resolve="result" />
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="uv" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                  </node>
                  <node concept="3uibUv" id="uw" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ua" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="2YIFZL" id="ub" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1258644073389103451" />
      <node concept="10P_77" id="vg" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3Tm6S6" id="vh" role="1B3o_S">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3clFbS" id="vi" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580467" />
        <node concept="3clFbF" id="vn" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580468" />
          <node concept="2OqwBi" id="vo" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580469" />
            <node concept="2OqwBi" id="vp" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536580470" />
              <node concept="37vLTw" id="vr" role="2Oq$k0">
                <ref role="3cqZAo" node="vk" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580471" />
              </node>
              <node concept="2Xjw5R" id="vs" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536580472" />
                <node concept="1xMEDy" id="vt" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580473" />
                  <node concept="chp4Y" id="vv" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
                    <uo k="s:originTrace" v="n:1227128029536580474" />
                  </node>
                </node>
                <node concept="1xIGOp" id="vu" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580475" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="vq" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580476" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="vj" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="vw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="vk" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="vx" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="vl" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="vy" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="vm" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="vz" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="v$">
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="TrG5h" value="BuildSource_JavaDependencyLibrary_Constraints" />
    <uo k="s:originTrace" v="n:1545517825663202140" />
    <node concept="3Tm1VV" id="v_" role="1B3o_S">
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="3uibUv" id="vA" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="3clFbW" id="vB" role="jymVt">
      <uo k="s:originTrace" v="n:1545517825663202140" />
      <node concept="37vLTG" id="vE" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="3uibUv" id="vH" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
      </node>
      <node concept="3cqZAl" id="vF" role="3clF45">
        <uo k="s:originTrace" v="n:1545517825663202140" />
      </node>
      <node concept="3clFbS" id="vG" role="3clF47">
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="XkiVB" id="vI" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="1BaE9c" id="vK" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaDependencyLibrary$TO" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2YIFZM" id="vM" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="11gdke" id="vN" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="11gdke" id="vO" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="11gdke" id="vP" role="37wK5m">
                <property role="11gdj1" value="454b730dd9079dceL" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="Xl_RD" id="vQ" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaDependencyLibrary" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="vL" role="37wK5m">
            <ref role="3cqZAo" node="vE" resolve="initContext" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
          </node>
        </node>
        <node concept="3clFbF" id="vJ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="1rXfSq" id="vR" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2ShNRf" id="vS" role="37wK5m">
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="1pGfFk" id="vT" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="vV" resolve="BuildSource_JavaDependencyLibrary_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
                <node concept="Xjq3P" id="vU" role="37wK5m">
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="vC" role="jymVt">
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="312cEu" id="vD" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1545517825663202140" />
      <node concept="3clFbW" id="vV" role="jymVt">
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="37vLTG" id="vY" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="3uibUv" id="w1" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
          </node>
        </node>
        <node concept="3cqZAl" id="vZ" role="3clF45">
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3clFbS" id="w0" role="3clF47">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="XkiVB" id="w2" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="1BaE9c" id="w3" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="library$sob3" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="2YIFZM" id="w7" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
                <node concept="11gdke" id="w8" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="w9" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="wa" role="37wK5m">
                  <property role="11gdj1" value="454b730dd9079dceL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="wb" role="37wK5m">
                  <property role="11gdj1" value="454b730dd9079dcfL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="Xl_RD" id="wc" role="37wK5m">
                  <property role="Xl_RC" value="library" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="w4" role="37wK5m">
              <ref role="3cqZAo" node="vY" resolve="container" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
            <node concept="3clFbT" id="w5" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
            <node concept="3clFbT" id="w6" role="37wK5m">
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="vW" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="3Tm1VV" id="wd" role="1B3o_S">
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3uibUv" id="we" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="2AHcQZ" id="wf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3clFbS" id="wg" role="3clF47">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="3cpWs6" id="wi" role="3cqZAp">
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2YIFZM" id="wj" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1545517825663202142" />
              <node concept="35c_gC" id="wk" role="37wK5m">
                <ref role="35c_gD" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
                <uo k="s:originTrace" v="n:1545517825663202142" />
              </node>
              <node concept="2ShNRf" id="wl" role="37wK5m">
                <uo k="s:originTrace" v="n:1545517825663202142" />
                <node concept="1pGfFk" id="wm" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1545517825663202142" />
                  <node concept="Xl_RD" id="wn" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1545517825663202142" />
                  </node>
                  <node concept="Xl_RD" id="wo" role="37wK5m">
                    <property role="Xl_RC" value="1545517825663202142" />
                    <uo k="s:originTrace" v="n:1545517825663202142" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="wh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
      </node>
      <node concept="3uibUv" id="vX" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="wp">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
    <uo k="s:originTrace" v="n:5610619299014531655" />
    <node concept="3Tm1VV" id="wq" role="1B3o_S">
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="3uibUv" id="wr" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="3clFbW" id="ws" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014531655" />
      <node concept="37vLTG" id="wv" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="3uibUv" id="wy" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
      </node>
      <node concept="3cqZAl" id="ww" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299014531655" />
      </node>
      <node concept="3clFbS" id="wx" role="3clF47">
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="XkiVB" id="wz" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="1BaE9c" id="w_" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaExternalJarFolderRef$kv" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2YIFZM" id="wB" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="11gdke" id="wC" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="11gdke" id="wD" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="11gdke" id="wE" role="37wK5m">
                <property role="11gdj1" value="4ddcec86afb65a3fL" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="Xl_RD" id="wF" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaExternalJarFolderRef" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="wA" role="37wK5m">
            <ref role="3cqZAo" node="wv" resolve="initContext" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
          </node>
        </node>
        <node concept="3clFbF" id="w$" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="1rXfSq" id="wG" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2ShNRf" id="wH" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="1pGfFk" id="wI" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="wK" resolve="BuildSource_JavaExternalJarFolderRef_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
                <node concept="Xjq3P" id="wJ" role="37wK5m">
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="wt" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="312cEu" id="wu" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5610619299014531655" />
      <node concept="3clFbW" id="wK" role="jymVt">
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="37vLTG" id="wN" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="3uibUv" id="wQ" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
          </node>
        </node>
        <node concept="3cqZAl" id="wO" role="3clF45">
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3clFbS" id="wP" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="XkiVB" id="wR" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="1BaE9c" id="wS" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="folder$95wz" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="2YIFZM" id="wW" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
                <node concept="11gdke" id="wX" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="wY" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="wZ" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb65a3fL" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="x0" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb65a40L" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="Xl_RD" id="x1" role="37wK5m">
                  <property role="Xl_RC" value="folder" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="wT" role="37wK5m">
              <ref role="3cqZAo" node="wN" resolve="container" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
            <node concept="3clFbT" id="wU" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
            <node concept="3clFbT" id="wV" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="wL" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="3Tm1VV" id="x2" role="1B3o_S">
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3uibUv" id="x3" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="2AHcQZ" id="x4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3clFbS" id="x5" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="3cpWs6" id="x7" role="3cqZAp">
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2ShNRf" id="x8" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840486" />
              <node concept="YeOm9" id="x9" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840486" />
                <node concept="1Y3b0j" id="xa" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840486" />
                  <node concept="3Tm1VV" id="xb" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                  </node>
                  <node concept="3clFb_" id="xc" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                    <node concept="3Tm1VV" id="xe" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3uibUv" id="xf" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3clFbS" id="xg" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3cpWs6" id="xi" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840486" />
                        <node concept="2ShNRf" id="xj" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840486" />
                          <node concept="1pGfFk" id="xk" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840486" />
                            <node concept="Xl_RD" id="xl" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840486" />
                            </node>
                            <node concept="Xl_RD" id="xm" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840486" />
                              <uo k="s:originTrace" v="n:6836281137582840486" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xh" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="xd" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                    <node concept="3Tm1VV" id="xn" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3uibUv" id="xo" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="37vLTG" id="xp" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3uibUv" id="xs" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840486" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="xq" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3cpWs8" id="xt" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840488" />
                        <node concept="3cpWsn" id="xw" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840489" />
                          <node concept="3Tqbb2" id="xx" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840490" />
                          </node>
                          <node concept="2OqwBi" id="xy" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840491" />
                            <node concept="1DoJHT" id="xz" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840492" />
                              <node concept="3uibUv" id="x_" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="xA" role="1EMhIo">
                                <ref role="3cqZAo" node="xp" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="x$" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840493" />
                              <node concept="1xMEDy" id="xB" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840494" />
                                <node concept="chp4Y" id="xD" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840495" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="xC" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840496" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="xu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840497" />
                        <node concept="3clFbS" id="xE" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840498" />
                          <node concept="3cpWs6" id="xG" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840499" />
                            <node concept="2YIFZM" id="xH" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:2vaDE4tApKR" resolve="getVisibleJarFoldersScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840500" />
                              <node concept="37vLTw" id="xI" role="37wK5m">
                                <ref role="3cqZAo" node="xw" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840501" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="xF" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840502" />
                          <node concept="37vLTw" id="xJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="xw" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840503" />
                          </node>
                          <node concept="3x8VRR" id="xK" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840504" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="xv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840505" />
                        <node concept="2ShNRf" id="xL" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840506" />
                          <node concept="1pGfFk" id="xM" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582840507" />
                            <node concept="2OqwBi" id="xN" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582840511" />
                              <node concept="1DoJHT" id="xQ" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582840512" />
                                <node concept="3uibUv" id="xS" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="xT" role="1EMhIo">
                                  <ref role="3cqZAo" node="xp" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="xR" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582840513" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="xO" role="37wK5m">
                              <property role="3clFbU" value="false" />
                              <uo k="s:originTrace" v="n:6836281137582840509" />
                            </node>
                            <node concept="35c_gC" id="xP" role="37wK5m">
                              <ref role="35c_gD" to="3ior:4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
                              <uo k="s:originTrace" v="n:6836281137582840510" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xr" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="x6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
      </node>
      <node concept="3uibUv" id="wM" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="xU">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaExternalJarRef_Constraints" />
    <uo k="s:originTrace" v="n:5610619299014309454" />
    <node concept="3Tm1VV" id="xV" role="1B3o_S">
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="3uibUv" id="xW" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="3clFbW" id="xX" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014309454" />
      <node concept="37vLTG" id="y0" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="3uibUv" id="y3" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
      </node>
      <node concept="3cqZAl" id="y1" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299014309454" />
      </node>
      <node concept="3clFbS" id="y2" role="3clF47">
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="XkiVB" id="y4" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="1BaE9c" id="y6" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaExternalJarRef$GK" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2YIFZM" id="y8" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="11gdke" id="y9" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="11gdke" id="ya" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="11gdke" id="yb" role="37wK5m">
                <property role="11gdj1" value="4ddcec86afb2f64cL" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="Xl_RD" id="yc" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="y7" role="37wK5m">
            <ref role="3cqZAo" node="y0" resolve="initContext" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
          </node>
        </node>
        <node concept="3clFbF" id="y5" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="1rXfSq" id="yd" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2ShNRf" id="ye" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="1pGfFk" id="yf" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="yh" resolve="BuildSource_JavaExternalJarRef_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
                <node concept="Xjq3P" id="yg" role="37wK5m">
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="xY" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="312cEu" id="xZ" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5610619299014309454" />
      <node concept="3clFbW" id="yh" role="jymVt">
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="37vLTG" id="yk" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="3uibUv" id="yn" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
          </node>
        </node>
        <node concept="3cqZAl" id="yl" role="3clF45">
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3clFbS" id="ym" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="XkiVB" id="yo" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="1BaE9c" id="yp" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="jar$JLD3" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="2YIFZM" id="yt" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
                <node concept="11gdke" id="yu" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="yv" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="yw" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb2f64cL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="yx" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb2f64dL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="Xl_RD" id="yy" role="37wK5m">
                  <property role="Xl_RC" value="jar" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="yq" role="37wK5m">
              <ref role="3cqZAo" node="yk" resolve="container" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
            <node concept="3clFbT" id="yr" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
            <node concept="3clFbT" id="ys" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="yi" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="3Tm1VV" id="yz" role="1B3o_S">
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3uibUv" id="y$" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="2AHcQZ" id="y_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3clFbS" id="yA" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="3cpWs6" id="yC" role="3cqZAp">
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2ShNRf" id="yD" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840435" />
              <node concept="YeOm9" id="yE" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840435" />
                <node concept="1Y3b0j" id="yF" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840435" />
                  <node concept="3Tm1VV" id="yG" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                  </node>
                  <node concept="3clFb_" id="yH" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                    <node concept="3Tm1VV" id="yJ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3uibUv" id="yK" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3clFbS" id="yL" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3cpWs6" id="yN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840435" />
                        <node concept="2ShNRf" id="yO" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840435" />
                          <node concept="1pGfFk" id="yP" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840435" />
                            <node concept="Xl_RD" id="yQ" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840435" />
                            </node>
                            <node concept="Xl_RD" id="yR" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840435" />
                              <uo k="s:originTrace" v="n:6836281137582840435" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="yM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="yI" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                    <node concept="3Tm1VV" id="yS" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3uibUv" id="yT" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="37vLTG" id="yU" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3uibUv" id="yX" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840435" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="yV" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3cpWs8" id="yY" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840437" />
                        <node concept="3cpWsn" id="z1" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840438" />
                          <node concept="3Tqbb2" id="z2" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840439" />
                          </node>
                          <node concept="2OqwBi" id="z3" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840440" />
                            <node concept="1DoJHT" id="z4" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840441" />
                              <node concept="3uibUv" id="z6" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="z7" role="1EMhIo">
                                <ref role="3cqZAo" node="yU" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="z5" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840442" />
                              <node concept="1xMEDy" id="z8" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840443" />
                                <node concept="chp4Y" id="za" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840444" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="z9" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840445" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="yZ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840446" />
                        <node concept="3clFbS" id="zb" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840447" />
                          <node concept="3cpWs6" id="zd" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840448" />
                            <node concept="2YIFZM" id="ze" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:5WMFzVNueXI" resolve="getVisibleJarsScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840449" />
                              <node concept="37vLTw" id="zf" role="37wK5m">
                                <ref role="3cqZAo" node="z1" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840450" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="zc" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840451" />
                          <node concept="37vLTw" id="zg" role="2Oq$k0">
                            <ref role="3cqZAo" node="z1" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840452" />
                          </node>
                          <node concept="3x8VRR" id="zh" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840453" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="z0" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840454" />
                        <node concept="2ShNRf" id="zi" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840455" />
                          <node concept="1pGfFk" id="zj" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582840456" />
                            <node concept="2OqwBi" id="zk" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582840460" />
                              <node concept="1DoJHT" id="zn" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582840461" />
                                <node concept="3uibUv" id="zp" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="zq" role="1EMhIo">
                                  <ref role="3cqZAo" node="yU" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="zo" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582840462" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="zl" role="37wK5m">
                              <property role="3clFbU" value="false" />
                              <uo k="s:originTrace" v="n:6836281137582840458" />
                            </node>
                            <node concept="35c_gC" id="zm" role="37wK5m">
                              <ref role="35c_gD" to="3ior:4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
                              <uo k="s:originTrace" v="n:6836281137582840459" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="yW" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="yB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
      </node>
      <node concept="3uibUv" id="yj" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="zr">
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="TrG5h" value="BuildSource_JavaLibrary_Constraints" />
    <uo k="s:originTrace" v="n:6647099934206924807" />
    <node concept="3Tm1VV" id="zs" role="1B3o_S">
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="3uibUv" id="zt" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="3clFbW" id="zu" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="37vLTG" id="zy" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="z_" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="3cqZAl" id="zz" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3clFbS" id="z$" role="3clF47">
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="XkiVB" id="zA" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1BaE9c" id="zD" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaLibrary$6q" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2YIFZM" id="zF" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="11gdke" id="zG" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="11gdke" id="zH" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="11gdke" id="zI" role="37wK5m">
                <property role="11gdj1" value="540febaa6144b873L" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="Xl_RD" id="zJ" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaLibrary" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="zE" role="37wK5m">
            <ref role="3cqZAo" node="zy" resolve="initContext" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="3clFbF" id="zB" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1rXfSq" id="zK" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2ShNRf" id="zL" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="1pGfFk" id="zM" role="2ShVmc">
                <ref role="37wK5l" node="$F" resolve="BuildSource_JavaLibrary_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="Xjq3P" id="zN" role="37wK5m">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zC" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1rXfSq" id="zO" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2ShNRf" id="zP" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="YeOm9" id="zQ" role="2ShVmc">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="1Y3b0j" id="zR" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="3Tm1VV" id="zS" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="3clFb_" id="zT" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                    <node concept="3Tm1VV" id="zW" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="2AHcQZ" id="zX" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="3uibUv" id="zY" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="37vLTG" id="zZ" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3uibUv" id="$2" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="2AHcQZ" id="$3" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="$0" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3uibUv" id="$4" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="2AHcQZ" id="$5" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="$1" role="3clF47">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3cpWs8" id="$6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="3cpWsn" id="$b" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="10P_77" id="$c" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                          </node>
                          <node concept="1rXfSq" id="$d" role="33vP2m">
                            <ref role="37wK5l" node="zx" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="2OqwBi" id="$e" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="$i" role="2Oq$k0">
                                <ref role="3cqZAo" node="zZ" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="$j" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="$f" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="$k" role="2Oq$k0">
                                <ref role="3cqZAo" node="zZ" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="$l" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="$g" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="$m" role="2Oq$k0">
                                <ref role="3cqZAo" node="zZ" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="$n" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="$h" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="$o" role="2Oq$k0">
                                <ref role="3cqZAo" node="zZ" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="$p" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="$7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="3clFbJ" id="$8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="3clFbS" id="$q" role="3clFbx">
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="3clFbF" id="$s" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="2OqwBi" id="$t" role="3clFbG">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="$u" role="2Oq$k0">
                                <ref role="3cqZAo" node="$0" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="$v" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                                <node concept="1dyn4i" id="$w" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6647099934206924807" />
                                  <node concept="2ShNRf" id="$x" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6647099934206924807" />
                                    <node concept="1pGfFk" id="$y" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6647099934206924807" />
                                      <node concept="Xl_RD" id="$z" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:6647099934206924807" />
                                      </node>
                                      <node concept="Xl_RD" id="$$" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580477" />
                                        <uo k="s:originTrace" v="n:6647099934206924807" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="$r" role="3clFbw">
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="3y3z36" id="$_" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="10Nm6u" id="$B" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                            <node concept="37vLTw" id="$C" role="3uHU7B">
                              <ref role="3cqZAo" node="$0" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="$A" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="37vLTw" id="$D" role="3fr31v">
                              <ref role="3cqZAo" node="$b" resolve="result" />
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="$9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="3clFbF" id="$a" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="37vLTw" id="$E" role="3clFbG">
                          <ref role="3cqZAo" node="$b" resolve="result" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="zU" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="3uibUv" id="zV" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="zv" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="312cEu" id="zw" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="3clFbW" id="$F" role="jymVt">
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3cqZAl" id="$J" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3Tm1VV" id="$K" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3clFbS" id="$L" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="XkiVB" id="$N" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="1BaE9c" id="$O" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="2YIFZM" id="$T" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="11gdke" id="$U" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="$V" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="$W" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="$X" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="Xl_RD" id="$Y" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="$P" role="37wK5m">
              <ref role="3cqZAo" node="$M" resolve="container" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="$Q" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="$R" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="$S" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="$M" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="$Z" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="$G" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3Tm1VV" id="_0" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="10P_77" id="_1" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="37vLTG" id="_2" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3Tqbb2" id="_7" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="_3" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="_8" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="_4" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="_9" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="3clFbS" id="_5" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3cpWs8" id="_a" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="3cpWsn" id="_d" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="10P_77" id="_e" role="1tU5fm">
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="1rXfSq" id="_f" role="33vP2m">
                <ref role="37wK5l" node="$H" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="37vLTw" id="_g" role="37wK5m">
                  <ref role="3cqZAo" node="_2" resolve="node" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="2YIFZM" id="_h" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="37vLTw" id="_i" role="37wK5m">
                    <ref role="3cqZAo" node="_3" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="_b" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="3clFbS" id="_j" role="3clFbx">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="3clFbF" id="_l" role="3cqZAp">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="2OqwBi" id="_m" role="3clFbG">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="37vLTw" id="_n" role="2Oq$k0">
                    <ref role="3cqZAo" node="_4" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="liA8E" id="_o" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                    <node concept="2ShNRf" id="_p" role="37wK5m">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="1pGfFk" id="_q" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="Xl_RD" id="_r" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                        <node concept="Xl_RD" id="_s" role="37wK5m">
                          <property role="Xl_RC" value="927724900262335988" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="_k" role="3clFbw">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="3y3z36" id="_t" role="3uHU7w">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="10Nm6u" id="_v" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="37vLTw" id="_w" role="3uHU7B">
                  <ref role="3cqZAo" node="_4" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
              <node concept="3fqX7Q" id="_u" role="3uHU7B">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="37vLTw" id="_x" role="3fr31v">
                  <ref role="3cqZAo" node="_d" resolve="result" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_c" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="37vLTw" id="_y" role="3clFbG">
              <ref role="3cqZAo" node="_d" resolve="result" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="_6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="2YIFZL" id="$H" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="37vLTG" id="_z" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3Tqbb2" id="_C" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="_$" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="_D" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="10P_77" id="__" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3Tm6S6" id="_A" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3clFbS" id="_B" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262335989" />
          <node concept="3clFbF" id="_E" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335990" />
            <node concept="2YIFZM" id="_F" role="3clFbG">
              <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
              <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
              <uo k="s:originTrace" v="n:927724900262335991" />
              <node concept="37vLTw" id="_G" role="37wK5m">
                <ref role="3cqZAo" node="_$" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:927724900262335992" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="$I" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
    </node>
    <node concept="2YIFZL" id="zx" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="10P_77" id="_H" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3Tm6S6" id="_I" role="1B3o_S">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3clFbS" id="_J" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580478" />
        <node concept="3clFbF" id="_O" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580479" />
          <node concept="22lmx$" id="_P" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580480" />
            <node concept="2OqwBi" id="_Q" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856460456" />
              <node concept="37vLTw" id="_S" role="2Oq$k0">
                <ref role="3cqZAo" node="_L" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856459477" />
              </node>
              <node concept="3zqWPK" id="_T" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851474" />
              </node>
            </node>
            <node concept="1Wc70l" id="_R" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580490" />
              <node concept="2OqwBi" id="_U" role="3uHU7w">
                <uo k="s:originTrace" v="n:1227128029536580491" />
                <node concept="2OqwBi" id="_W" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8421617199856442186" />
                  <node concept="2OqwBi" id="_Y" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580492" />
                    <node concept="1PxgMI" id="A0" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580493" />
                      <node concept="37vLTw" id="A2" role="1m5AlR">
                        <ref role="3cqZAo" node="_L" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580494" />
                      </node>
                      <node concept="chp4Y" id="A3" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580495" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="A1" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580496" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="_Z" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856452796" />
                    <node concept="chp4Y" id="A4" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856454096" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="_X" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856458231" />
                </node>
              </node>
              <node concept="2OqwBi" id="_V" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580507" />
                <node concept="37vLTw" id="A5" role="2Oq$k0">
                  <ref role="3cqZAo" node="_L" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580508" />
                </node>
                <node concept="1mIQ4w" id="A6" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580509" />
                  <node concept="chp4Y" id="A7" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580510" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_K" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="A8" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="_L" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="A9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="_M" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="Aa" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="_N" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="Ab" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Ac">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaModuleOptions_Constraints" />
    <uo k="s:originTrace" v="n:1659807394254261086" />
    <node concept="3Tm1VV" id="Ad" role="1B3o_S">
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="3uibUv" id="Ae" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="3clFbW" id="Af" role="jymVt">
      <uo k="s:originTrace" v="n:1659807394254261086" />
      <node concept="37vLTG" id="Ai" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="3uibUv" id="Al" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
      </node>
      <node concept="3cqZAl" id="Aj" role="3clF45">
        <uo k="s:originTrace" v="n:1659807394254261086" />
      </node>
      <node concept="3clFbS" id="Ak" role="3clF47">
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="XkiVB" id="Am" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="1BaE9c" id="Ao" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaModuleOptions$F" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2YIFZM" id="Aq" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="11gdke" id="Ar" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="11gdke" id="As" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="11gdke" id="At" role="37wK5m">
                <property role="11gdj1" value="1708d207f2178b52L" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="Xl_RD" id="Au" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaModuleOptions" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Ap" role="37wK5m">
            <ref role="3cqZAo" node="Ai" resolve="initContext" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
          </node>
        </node>
        <node concept="3clFbF" id="An" role="3cqZAp">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="1rXfSq" id="Av" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2ShNRf" id="Aw" role="37wK5m">
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="1pGfFk" id="Ax" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Az" resolve="BuildSource_JavaModuleOptions_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
                <node concept="Xjq3P" id="Ay" role="37wK5m">
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ag" role="jymVt">
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="312cEu" id="Ah" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1659807394254261086" />
      <node concept="3clFbW" id="Az" role="jymVt">
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="37vLTG" id="AA" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="3uibUv" id="AD" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
          </node>
        </node>
        <node concept="3cqZAl" id="AB" role="3clF45">
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3clFbS" id="AC" role="3clF47">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="XkiVB" id="AE" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="1BaE9c" id="AF" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="compileOptions$Eyr4" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="2YIFZM" id="AJ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
                <node concept="11gdke" id="AK" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="AL" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="AM" role="37wK5m">
                  <property role="11gdj1" value="1708d207f2178b52L" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="AN" role="37wK5m">
                  <property role="11gdj1" value="1708d207f214252bL" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="Xl_RD" id="AO" role="37wK5m">
                  <property role="Xl_RC" value="compileOptions" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="AG" role="37wK5m">
              <ref role="3cqZAo" node="AA" resolve="container" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
            <node concept="3clFbT" id="AH" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
            <node concept="3clFbT" id="AI" role="37wK5m">
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="A$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="3Tm1VV" id="AP" role="1B3o_S">
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3uibUv" id="AQ" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="2AHcQZ" id="AR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3clFbS" id="AS" role="3clF47">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="3cpWs6" id="AU" role="3cqZAp">
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2YIFZM" id="AV" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1659807394254175447" />
              <node concept="35c_gC" id="AW" role="37wK5m">
                <ref role="35c_gD" to="3ior:NvWe6DpNB2" resolve="BuildSource_JavaOptions" />
                <uo k="s:originTrace" v="n:1659807394254175447" />
              </node>
              <node concept="2ShNRf" id="AX" role="37wK5m">
                <uo k="s:originTrace" v="n:1659807394254175447" />
                <node concept="1pGfFk" id="AY" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1659807394254175447" />
                  <node concept="Xl_RD" id="AZ" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1659807394254175447" />
                  </node>
                  <node concept="Xl_RD" id="B0" role="37wK5m">
                    <property role="Xl_RC" value="1659807394254175447" />
                    <uo k="s:originTrace" v="n:1659807394254175447" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="AT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
      </node>
      <node concept="3uibUv" id="A_" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="B1">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaModule_Constraints" />
    <uo k="s:originTrace" v="n:6647099934206891049" />
    <node concept="3Tm1VV" id="B2" role="1B3o_S">
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="3uibUv" id="B3" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="3clFbW" id="B4" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="37vLTG" id="B8" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="Bb" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="3cqZAl" id="B9" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3clFbS" id="Ba" role="3clF47">
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="XkiVB" id="Bc" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1BaE9c" id="Bf" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaModule$NC" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2YIFZM" id="Bh" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="11gdke" id="Bi" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="11gdke" id="Bj" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="11gdke" id="Bk" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafacdc38L" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="Xl_RD" id="Bl" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaModule" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Bg" role="37wK5m">
            <ref role="3cqZAo" node="B8" resolve="initContext" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="3clFbF" id="Bd" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1rXfSq" id="Bm" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2ShNRf" id="Bn" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="1pGfFk" id="Bo" role="2ShVmc">
                <ref role="37wK5l" node="Ch" resolve="BuildSource_JavaModule_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="Xjq3P" id="Bp" role="37wK5m">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Be" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1rXfSq" id="Bq" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2ShNRf" id="Br" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="YeOm9" id="Bs" role="2ShVmc">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="1Y3b0j" id="Bt" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="3Tm1VV" id="Bu" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="3clFb_" id="Bv" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                    <node concept="3Tm1VV" id="By" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="2AHcQZ" id="Bz" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="3uibUv" id="B$" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="37vLTG" id="B_" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3uibUv" id="BC" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="2AHcQZ" id="BD" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="BA" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3uibUv" id="BE" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="2AHcQZ" id="BF" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="BB" role="3clF47">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3cpWs8" id="BG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="3cpWsn" id="BL" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="10P_77" id="BM" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                          </node>
                          <node concept="1rXfSq" id="BN" role="33vP2m">
                            <ref role="37wK5l" node="B7" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="2OqwBi" id="BO" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="BS" role="2Oq$k0">
                                <ref role="3cqZAo" node="B_" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="BT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="BP" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="BU" role="2Oq$k0">
                                <ref role="3cqZAo" node="B_" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="BV" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="BQ" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="BW" role="2Oq$k0">
                                <ref role="3cqZAo" node="B_" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="BX" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="BR" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="BY" role="2Oq$k0">
                                <ref role="3cqZAo" node="B_" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="BZ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="BH" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="3clFbJ" id="BI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="3clFbS" id="C0" role="3clFbx">
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="3clFbF" id="C2" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="2OqwBi" id="C3" role="3clFbG">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="C4" role="2Oq$k0">
                                <ref role="3cqZAo" node="BA" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="C5" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                                <node concept="1dyn4i" id="C6" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6647099934206891049" />
                                  <node concept="2ShNRf" id="C7" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6647099934206891049" />
                                    <node concept="1pGfFk" id="C8" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6647099934206891049" />
                                      <node concept="Xl_RD" id="C9" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:6647099934206891049" />
                                      </node>
                                      <node concept="Xl_RD" id="Ca" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580565" />
                                        <uo k="s:originTrace" v="n:6647099934206891049" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="C1" role="3clFbw">
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="3y3z36" id="Cb" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="10Nm6u" id="Cd" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                            <node concept="37vLTw" id="Ce" role="3uHU7B">
                              <ref role="3cqZAo" node="BA" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="Cc" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="37vLTw" id="Cf" role="3fr31v">
                              <ref role="3cqZAo" node="BL" resolve="result" />
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="BJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="3clFbF" id="BK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="37vLTw" id="Cg" role="3clFbG">
                          <ref role="3cqZAo" node="BL" resolve="result" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="Bw" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="3uibUv" id="Bx" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="B5" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="312cEu" id="B6" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="3clFbW" id="Ch" role="jymVt">
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3cqZAl" id="Cl" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3Tm1VV" id="Cm" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3clFbS" id="Cn" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="XkiVB" id="Cp" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="1BaE9c" id="Cq" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="2YIFZM" id="Cv" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="11gdke" id="Cw" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="Cx" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="Cy" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="Cz" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="Xl_RD" id="C$" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Cr" role="37wK5m">
              <ref role="3cqZAo" node="Co" resolve="container" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="Cs" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="Ct" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="Cu" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="Co" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="C_" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Ci" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3Tm1VV" id="CA" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="10P_77" id="CB" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="37vLTG" id="CC" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3Tqbb2" id="CH" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="CD" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="CI" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="CE" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="CJ" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="3clFbS" id="CF" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3cpWs8" id="CK" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="3cpWsn" id="CN" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="10P_77" id="CO" role="1tU5fm">
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="1rXfSq" id="CP" role="33vP2m">
                <ref role="37wK5l" node="Cj" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="37vLTw" id="CQ" role="37wK5m">
                  <ref role="3cqZAo" node="CC" resolve="node" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="2YIFZM" id="CR" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="37vLTw" id="CS" role="37wK5m">
                    <ref role="3cqZAo" node="CD" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="CL" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="3clFbS" id="CT" role="3clFbx">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="3clFbF" id="CV" role="3cqZAp">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="2OqwBi" id="CW" role="3clFbG">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="37vLTw" id="CX" role="2Oq$k0">
                    <ref role="3cqZAo" node="CE" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="liA8E" id="CY" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                    <node concept="2ShNRf" id="CZ" role="37wK5m">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="1pGfFk" id="D0" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="Xl_RD" id="D1" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                        <node concept="Xl_RD" id="D2" role="37wK5m">
                          <property role="Xl_RC" value="927724900262328573" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="CU" role="3clFbw">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="3y3z36" id="D3" role="3uHU7w">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="10Nm6u" id="D5" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="37vLTw" id="D6" role="3uHU7B">
                  <ref role="3cqZAo" node="CE" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
              <node concept="3fqX7Q" id="D4" role="3uHU7B">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="37vLTw" id="D7" role="3fr31v">
                  <ref role="3cqZAo" node="CN" resolve="result" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="CM" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="37vLTw" id="D8" role="3clFbG">
              <ref role="3cqZAo" node="CN" resolve="result" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="CG" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="2YIFZL" id="Cj" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="37vLTG" id="D9" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3Tqbb2" id="De" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="Da" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="Df" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="10P_77" id="Db" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3Tm6S6" id="Dc" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3clFbS" id="Dd" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262328574" />
          <node concept="3clFbF" id="Dg" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335943" />
            <node concept="2YIFZM" id="Dh" role="3clFbG">
              <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
              <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
              <uo k="s:originTrace" v="n:927724900262335945" />
              <node concept="37vLTw" id="Di" role="37wK5m">
                <ref role="3cqZAo" node="Da" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:927724900262335946" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Ck" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
    </node>
    <node concept="2YIFZL" id="B7" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="10P_77" id="Dj" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3Tm6S6" id="Dk" role="1B3o_S">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3clFbS" id="Dl" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580566" />
        <node concept="3clFbF" id="Dq" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580567" />
          <node concept="22lmx$" id="Dr" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580568" />
            <node concept="2OqwBi" id="Ds" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856431348" />
              <node concept="37vLTw" id="Du" role="2Oq$k0">
                <ref role="3cqZAo" node="Dn" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580574" />
              </node>
              <node concept="3zqWPK" id="Dv" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851472" />
              </node>
            </node>
            <node concept="1Wc70l" id="Dt" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580578" />
              <node concept="2OqwBi" id="Dw" role="3uHU7w">
                <uo k="s:originTrace" v="n:8421617199856421294" />
                <node concept="2OqwBi" id="Dy" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536580579" />
                  <node concept="2OqwBi" id="D$" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580580" />
                    <node concept="1PxgMI" id="DA" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580581" />
                      <node concept="37vLTw" id="DC" role="1m5AlR">
                        <ref role="3cqZAo" node="Dn" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580582" />
                      </node>
                      <node concept="chp4Y" id="DD" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580583" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="DB" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580584" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="D_" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856417989" />
                    <node concept="chp4Y" id="DE" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856419214" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="Dz" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856423326" />
                </node>
              </node>
              <node concept="2OqwBi" id="Dx" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580595" />
                <node concept="37vLTw" id="DF" role="2Oq$k0">
                  <ref role="3cqZAo" node="Dn" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580596" />
                </node>
                <node concept="1mIQ4w" id="DG" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580597" />
                  <node concept="chp4Y" id="DH" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580598" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Dm" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="DI" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="Dn" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="DJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="Do" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="DK" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="Dp" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="DL" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="DM">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaOptions_Constraints" />
    <uo k="s:originTrace" v="n:927724900262213628" />
    <node concept="3Tm1VV" id="DN" role="1B3o_S">
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="3uibUv" id="DO" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="3clFbW" id="DP" role="jymVt">
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="37vLTG" id="DT" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="DW" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="3cqZAl" id="DU" role="3clF45">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3clFbS" id="DV" role="3clF47">
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="XkiVB" id="DX" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1BaE9c" id="E0" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaOptions$D" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2YIFZM" id="E2" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="11gdke" id="E3" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="11gdke" id="E4" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="11gdke" id="E5" role="37wK5m">
                <property role="11gdj1" value="cdff0e1a96739c2L" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="Xl_RD" id="E6" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaOptions" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="E1" role="37wK5m">
            <ref role="3cqZAo" node="DT" resolve="initContext" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="3clFbF" id="DY" role="3cqZAp">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1rXfSq" id="E7" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2ShNRf" id="E8" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="1pGfFk" id="E9" role="2ShVmc">
                <ref role="37wK5l" node="F2" resolve="BuildSource_JavaOptions_Constraints.OptionsName_PD" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="Xjq3P" id="Ea" role="37wK5m">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1rXfSq" id="Eb" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2ShNRf" id="Ec" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="YeOm9" id="Ed" role="2ShVmc">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="1Y3b0j" id="Ee" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="3Tm1VV" id="Ef" role="1B3o_S">
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="3clFb_" id="Eg" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                    <node concept="3Tm1VV" id="Ej" role="1B3o_S">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="2AHcQZ" id="Ek" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="3uibUv" id="El" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="37vLTG" id="Em" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3uibUv" id="Ep" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="2AHcQZ" id="Eq" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="En" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3uibUv" id="Er" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="2AHcQZ" id="Es" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Eo" role="3clF47">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3cpWs8" id="Et" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="3cpWsn" id="Ey" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="10P_77" id="Ez" role="1tU5fm">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                          </node>
                          <node concept="1rXfSq" id="E$" role="33vP2m">
                            <ref role="37wK5l" node="DS" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="2OqwBi" id="E_" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="ED" role="2Oq$k0">
                                <ref role="3cqZAo" node="Em" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="EE" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EA" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="EF" role="2Oq$k0">
                                <ref role="3cqZAo" node="Em" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="EG" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EB" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="EH" role="2Oq$k0">
                                <ref role="3cqZAo" node="Em" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="EI" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EC" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="EJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="Em" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="EK" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Eu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="3clFbJ" id="Ev" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="3clFbS" id="EL" role="3clFbx">
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="3clFbF" id="EN" role="3cqZAp">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="2OqwBi" id="EO" role="3clFbG">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="EP" role="2Oq$k0">
                                <ref role="3cqZAo" node="En" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="EQ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                                <node concept="1dyn4i" id="ER" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:927724900262213628" />
                                  <node concept="2ShNRf" id="ES" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:927724900262213628" />
                                    <node concept="1pGfFk" id="ET" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:927724900262213628" />
                                      <node concept="Xl_RD" id="EU" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:927724900262213628" />
                                      </node>
                                      <node concept="Xl_RD" id="EV" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580431" />
                                        <uo k="s:originTrace" v="n:927724900262213628" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="EM" role="3clFbw">
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="3y3z36" id="EW" role="3uHU7w">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="10Nm6u" id="EY" role="3uHU7w">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                            <node concept="37vLTw" id="EZ" role="3uHU7B">
                              <ref role="3cqZAo" node="En" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="EX" role="3uHU7B">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="37vLTw" id="F0" role="3fr31v">
                              <ref role="3cqZAo" node="Ey" resolve="result" />
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ew" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="3clFbF" id="Ex" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="37vLTw" id="F1" role="3clFbG">
                          <ref role="3cqZAo" node="Ey" resolve="result" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="Eh" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="3uibUv" id="Ei" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DQ" role="jymVt">
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="312cEu" id="DR" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="OptionsName_PD" />
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="3clFbW" id="F2" role="jymVt">
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3cqZAl" id="F6" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3Tm1VV" id="F7" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3clFbS" id="F8" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="XkiVB" id="Fa" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="1BaE9c" id="Fb" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="optionsName$Rr_z" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="2YIFZM" id="Fg" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="11gdke" id="Fh" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="Fi" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="Fj" role="37wK5m">
                  <property role="11gdj1" value="cdff0e1a96739c2L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="Fk" role="37wK5m">
                  <property role="11gdj1" value="cdff0e1a96739c3L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="Xl_RD" id="Fl" role="37wK5m">
                  <property role="Xl_RC" value="optionsName" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Fc" role="37wK5m">
              <ref role="3cqZAo" node="F9" resolve="container" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="Fd" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="Fe" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="Ff" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="F9" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="Fm" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="F3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3Tm1VV" id="Fn" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="10P_77" id="Fo" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="37vLTG" id="Fp" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3Tqbb2" id="Fu" role="1tU5fm">
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="Fq" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="Fv" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="Fr" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="Fw" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="3clFbS" id="Fs" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3cpWs8" id="Fx" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="3cpWsn" id="F$" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="10P_77" id="F_" role="1tU5fm">
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="1rXfSq" id="FA" role="33vP2m">
                <ref role="37wK5l" node="F4" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="37vLTw" id="FB" role="37wK5m">
                  <ref role="3cqZAo" node="Fp" resolve="node" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="2YIFZM" id="FC" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="37vLTw" id="FD" role="37wK5m">
                    <ref role="3cqZAo" node="Fq" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Fy" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="3clFbS" id="FE" role="3clFbx">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="3clFbF" id="FG" role="3cqZAp">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="2OqwBi" id="FH" role="3clFbG">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="37vLTw" id="FI" role="2Oq$k0">
                    <ref role="3cqZAo" node="Fr" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="liA8E" id="FJ" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                    <node concept="2ShNRf" id="FK" role="37wK5m">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="1pGfFk" id="FL" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="Xl_RD" id="FM" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                        <node concept="Xl_RD" id="FN" role="37wK5m">
                          <property role="Xl_RC" value="927724900262335948" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="FF" role="3clFbw">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="3y3z36" id="FO" role="3uHU7w">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="10Nm6u" id="FQ" role="3uHU7w">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="37vLTw" id="FR" role="3uHU7B">
                  <ref role="3cqZAo" node="Fr" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
              <node concept="3fqX7Q" id="FP" role="3uHU7B">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="37vLTw" id="FS" role="3fr31v">
                  <ref role="3cqZAo" node="F$" resolve="result" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Fz" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="37vLTw" id="FT" role="3clFbG">
              <ref role="3cqZAo" node="F$" resolve="result" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Ft" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="2YIFZL" id="F4" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="37vLTG" id="FU" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3Tqbb2" id="FZ" role="1tU5fm">
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="FV" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="G0" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="10P_77" id="FW" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3Tm6S6" id="FX" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3clFbS" id="FY" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262335949" />
          <node concept="3clFbF" id="G1" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335950" />
            <node concept="22lmx$" id="G2" role="3clFbG">
              <uo k="s:originTrace" v="n:927724900262335975" />
              <node concept="2YIFZM" id="G3" role="3uHU7w">
                <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
                <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
                <uo k="s:originTrace" v="n:927724900262335985" />
                <node concept="37vLTw" id="G5" role="37wK5m">
                  <ref role="3cqZAo" node="FV" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:927724900262335986" />
                </node>
              </node>
              <node concept="2OqwBi" id="G4" role="3uHU7B">
                <uo k="s:originTrace" v="n:927724900262335968" />
                <node concept="37vLTw" id="G6" role="2Oq$k0">
                  <ref role="3cqZAo" node="FV" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:927724900262335951" />
                </node>
                <node concept="17RlXB" id="G7" role="2OqNvi">
                  <uo k="s:originTrace" v="n:927724900262335974" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="F5" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
    </node>
    <node concept="2YIFZL" id="DS" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="10P_77" id="G8" role="3clF45">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3Tm6S6" id="G9" role="1B3o_S">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3clFbS" id="Ga" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580432" />
        <node concept="3clFbF" id="Gf" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580433" />
          <node concept="22lmx$" id="Gg" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580434" />
            <node concept="2OqwBi" id="Gh" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856561823" />
              <node concept="37vLTw" id="Gj" role="2Oq$k0">
                <ref role="3cqZAo" node="Gc" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856560843" />
              </node>
              <node concept="3zqWPK" id="Gk" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851490" />
              </node>
            </node>
            <node concept="1Wc70l" id="Gi" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580445" />
              <node concept="2OqwBi" id="Gl" role="3uHU7w">
                <uo k="s:originTrace" v="n:8421617199856553778" />
                <node concept="2OqwBi" id="Gn" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8421617199856539923" />
                  <node concept="2OqwBi" id="Gp" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580447" />
                    <node concept="1PxgMI" id="Gr" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580448" />
                      <node concept="37vLTw" id="Gt" role="1m5AlR">
                        <ref role="3cqZAo" node="Gc" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580449" />
                      </node>
                      <node concept="chp4Y" id="Gu" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580450" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="Gs" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580451" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="Gq" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856550532" />
                    <node concept="chp4Y" id="Gv" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856551831" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="Go" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856556111" />
                </node>
              </node>
              <node concept="2OqwBi" id="Gm" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580462" />
                <node concept="37vLTw" id="Gw" role="2Oq$k0">
                  <ref role="3cqZAo" node="Gc" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580463" />
                </node>
                <node concept="1mIQ4w" id="Gx" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580464" />
                  <node concept="chp4Y" id="Gy" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580465" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Gb" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="Gz" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="Gc" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="G$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="Gd" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="G_" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="Ge" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="GA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="GB">
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="TrG5h" value="BuildSource_JavaSources_Constraints" />
    <uo k="s:originTrace" v="n:5248329904288343261" />
    <node concept="3Tm1VV" id="GC" role="1B3o_S">
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
    <node concept="3uibUv" id="GD" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
    <node concept="3clFbW" id="GE" role="jymVt">
      <uo k="s:originTrace" v="n:5248329904288343261" />
      <node concept="37vLTG" id="GG" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5248329904288343261" />
        <node concept="3uibUv" id="GJ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5248329904288343261" />
        </node>
      </node>
      <node concept="3cqZAl" id="GH" role="3clF45">
        <uo k="s:originTrace" v="n:5248329904288343261" />
      </node>
      <node concept="3clFbS" id="GI" role="3clF47">
        <uo k="s:originTrace" v="n:5248329904288343261" />
        <node concept="XkiVB" id="GK" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5248329904288343261" />
          <node concept="1BaE9c" id="GL" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaSources$xh" />
            <uo k="s:originTrace" v="n:5248329904288343261" />
            <node concept="2YIFZM" id="GN" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5248329904288343261" />
              <node concept="11gdke" id="GO" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="11gdke" id="GP" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="11gdke" id="GQ" role="37wK5m">
                <property role="11gdj1" value="48d5d03db92974fcL" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="Xl_RD" id="GR" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaSources" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="GM" role="37wK5m">
            <ref role="3cqZAo" node="GG" resolve="initContext" />
            <uo k="s:originTrace" v="n:5248329904288343261" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="GF" role="jymVt">
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
  </node>
  <node concept="312cEu" id="GS">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4380385936562359245" />
    <node concept="3Tm1VV" id="GT" role="1B3o_S">
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
    <node concept="3uibUv" id="GU" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
    <node concept="3clFbW" id="GV" role="jymVt">
      <uo k="s:originTrace" v="n:4380385936562359245" />
      <node concept="37vLTG" id="GX" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4380385936562359245" />
        <node concept="3uibUv" id="H0" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4380385936562359245" />
        </node>
      </node>
      <node concept="3cqZAl" id="GY" role="3clF45">
        <uo k="s:originTrace" v="n:4380385936562359245" />
      </node>
      <node concept="3clFbS" id="GZ" role="3clF47">
        <uo k="s:originTrace" v="n:4380385936562359245" />
        <node concept="XkiVB" id="H1" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4380385936562359245" />
          <node concept="1BaE9c" id="H2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildStringPart$1V" />
            <uo k="s:originTrace" v="n:4380385936562359245" />
            <node concept="2YIFZM" id="H4" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4380385936562359245" />
              <node concept="11gdke" id="H5" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="11gdke" id="H6" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="11gdke" id="H7" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7cffL" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="Xl_RD" id="H8" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildStringPart" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="H3" role="37wK5m">
            <ref role="3cqZAo" node="GX" resolve="initContext" />
            <uo k="s:originTrace" v="n:4380385936562359245" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="GW" role="jymVt">
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
  </node>
  <node concept="312cEu" id="H9">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildTextStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4903714810883755357" />
    <node concept="3Tm1VV" id="Ha" role="1B3o_S">
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="3uibUv" id="Hb" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="3clFbW" id="Hc" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="37vLTG" id="Hg" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3uibUv" id="Hj" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
      </node>
      <node concept="3cqZAl" id="Hh" role="3clF45">
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
      <node concept="3clFbS" id="Hi" role="3clF47">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="XkiVB" id="Hk" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1BaE9c" id="Hn" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildTextStringPart$3R" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2YIFZM" id="Hp" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="11gdke" id="Hq" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="11gdke" id="Hr" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="11gdke" id="Hs" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7d03L" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="Xl_RD" id="Ht" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildTextStringPart" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Ho" role="37wK5m">
            <ref role="3cqZAo" node="Hg" resolve="initContext" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="3clFbF" id="Hl" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1rXfSq" id="Hu" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2ShNRf" id="Hv" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="1pGfFk" id="Hw" role="2ShVmc">
                <ref role="37wK5l" node="HA" resolve="BuildTextStringPart_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="Xjq3P" id="Hx" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Hm" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1rXfSq" id="Hy" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2ShNRf" id="Hz" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="1pGfFk" id="H$" role="2ShVmc">
                <ref role="37wK5l" node="I4" resolve="BuildTextStringPart_Constraints.Text_PD" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="Xjq3P" id="H_" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Hd" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="312cEu" id="He" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="3clFbW" id="HA" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3cqZAl" id="HD" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm1VV" id="HE" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="HF" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="XkiVB" id="HH" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="1BaE9c" id="HI" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="2YIFZM" id="HN" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="11gdke" id="HO" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="HP" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="HQ" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="HR" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="Xl_RD" id="HS" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="HJ" role="37wK5m">
              <ref role="3cqZAo" node="HG" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="HK" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="HL" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="HM" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="HG" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="HT" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="HB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3Tm1VV" id="HU" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3uibUv" id="HV" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="37vLTG" id="HW" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="HZ" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="2AHcQZ" id="HX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="HY" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755362" />
          <node concept="3clFbF" id="I0" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755363" />
            <node concept="2OqwBi" id="I1" role="3clFbG">
              <uo k="s:originTrace" v="n:4903714810883755367" />
              <node concept="37vLTw" id="I2" role="2Oq$k0">
                <ref role="3cqZAo" node="HW" resolve="node" />
                <uo k="s:originTrace" v="n:4903714810883755364" />
              </node>
              <node concept="3TrcHB" id="I3" role="2OqNvi">
                <ref role="3TsBF5" to="3ior:4gdvEeQz4Pm" resolve="text" />
                <uo k="s:originTrace" v="n:4903714810883755372" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="HC" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
    </node>
    <node concept="312cEu" id="Hf" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Text_PD" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="3clFbW" id="I4" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3cqZAl" id="I8" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm1VV" id="I9" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="Ia" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="XkiVB" id="Ic" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="1BaE9c" id="Id" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="text$lRuU" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="2YIFZM" id="Ii" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="11gdke" id="Ij" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Ik" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Il" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d03L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Im" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68c4d56L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="Xl_RD" id="In" role="37wK5m">
                  <property role="Xl_RC" value="text" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Ie" role="37wK5m">
              <ref role="3cqZAo" node="Ib" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="If" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="Ig" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="Ih" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="Ib" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="Io" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="I5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3Tm1VV" id="Ip" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="10P_77" id="Iq" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="37vLTG" id="Ir" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="Iw" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="Is" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="Ix" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="It" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="Iy" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="3clFbS" id="Iu" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3cpWs8" id="Iz" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="3cpWsn" id="IA" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="10P_77" id="IB" role="1tU5fm">
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="1rXfSq" id="IC" role="33vP2m">
                <ref role="37wK5l" node="I6" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="37vLTw" id="ID" role="37wK5m">
                  <ref role="3cqZAo" node="Ir" resolve="node" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="2YIFZM" id="IE" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                  <node concept="37vLTw" id="IF" role="37wK5m">
                    <ref role="3cqZAo" node="Is" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="I$" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="3clFbS" id="IG" role="3clFbx">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="3clFbF" id="II" role="3cqZAp">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="2OqwBi" id="IJ" role="3clFbG">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                  <node concept="37vLTw" id="IK" role="2Oq$k0">
                    <ref role="3cqZAo" node="It" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                  </node>
                  <node concept="liA8E" id="IL" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                    <node concept="2ShNRf" id="IM" role="37wK5m">
                      <uo k="s:originTrace" v="n:4903714810883755357" />
                      <node concept="1pGfFk" id="IN" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:4903714810883755357" />
                        <node concept="Xl_RD" id="IO" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:4903714810883755357" />
                        </node>
                        <node concept="Xl_RD" id="IP" role="37wK5m">
                          <property role="Xl_RC" value="9184644532456897313" />
                          <uo k="s:originTrace" v="n:4903714810883755357" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="IH" role="3clFbw">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="3y3z36" id="IQ" role="3uHU7w">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="10Nm6u" id="IS" role="3uHU7w">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="37vLTw" id="IT" role="3uHU7B">
                  <ref role="3cqZAo" node="It" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
              <node concept="3fqX7Q" id="IR" role="3uHU7B">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="37vLTw" id="IU" role="3fr31v">
                  <ref role="3cqZAo" node="IA" resolve="result" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="I_" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="37vLTw" id="IV" role="3clFbG">
              <ref role="3cqZAo" node="IA" resolve="result" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Iv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
      </node>
      <node concept="2YIFZL" id="I6" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="37vLTG" id="IW" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="J1" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="IX" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="J2" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="10P_77" id="IY" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm6S6" id="IZ" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="J0" role="3clF47">
          <uo k="s:originTrace" v="n:9184644532456897314" />
          <node concept="3cpWs8" id="J3" role="3cqZAp">
            <uo k="s:originTrace" v="n:6083230236994622250" />
            <node concept="3cpWsn" id="J6" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <uo k="s:originTrace" v="n:6083230236994622251" />
              <node concept="3Tqbb2" id="J7" role="1tU5fm">
                <ref role="ehGHo" to="3ior:7XQqoCTkVIO" resolve="BuildStringContainer" />
                <uo k="s:originTrace" v="n:6083230236994622252" />
              </node>
              <node concept="2OqwBi" id="J8" role="33vP2m">
                <uo k="s:originTrace" v="n:6083230236994622253" />
                <node concept="37vLTw" id="J9" role="2Oq$k0">
                  <ref role="3cqZAo" node="IW" resolve="node" />
                  <uo k="s:originTrace" v="n:6083230236994622254" />
                </node>
                <node concept="3zqWPK" id="Ja" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:5hFYqIiYHaE" resolve="getContainer" />
                  <uo k="s:originTrace" v="n:8085146484218851476" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="J4" role="3cqZAp">
            <uo k="s:originTrace" v="n:9184644532456897472" />
            <node concept="3y3z36" id="Jb" role="3clFbw">
              <uo k="s:originTrace" v="n:6083230236994622280" />
              <node concept="10Nm6u" id="Jd" role="3uHU7w">
                <uo k="s:originTrace" v="n:6083230236994622283" />
              </node>
              <node concept="37vLTw" id="Je" role="3uHU7B">
                <ref role="3cqZAo" node="J6" resolve="container" />
                <uo k="s:originTrace" v="n:4265636116363065192" />
              </node>
            </node>
            <node concept="3clFbS" id="Jc" role="3clFbx">
              <uo k="s:originTrace" v="n:9184644532456897473" />
              <node concept="3cpWs6" id="Jf" role="3cqZAp">
                <uo k="s:originTrace" v="n:9184644532456897626" />
                <node concept="2OqwBi" id="Jg" role="3cqZAk">
                  <uo k="s:originTrace" v="n:9184644532456897740" />
                  <node concept="37vLTw" id="Jh" role="2Oq$k0">
                    <ref role="3cqZAo" node="J6" resolve="container" />
                    <uo k="s:originTrace" v="n:4265636116363107267" />
                  </node>
                  <node concept="3zqWPK" id="Ji" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:7XQqoCTkVIS" resolve="isValidPart" />
                    <uo k="s:originTrace" v="n:8085146484218851478" />
                    <node concept="37vLTw" id="Jj" role="37wK5m">
                      <ref role="3cqZAo" node="IX" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:8085146484218851480" />
                    </node>
                    <node concept="2OqwBi" id="Jk" role="37wK5m">
                      <uo k="s:originTrace" v="n:8085146484218851481" />
                      <node concept="2JrnkZ" id="Jl" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8085146484218851482" />
                        <node concept="2OqwBi" id="Jn" role="2JrQYb">
                          <uo k="s:originTrace" v="n:8085146484218851483" />
                          <node concept="37vLTw" id="Jo" role="2Oq$k0">
                            <ref role="3cqZAo" node="IW" resolve="node" />
                            <uo k="s:originTrace" v="n:8085146484218851484" />
                          </node>
                          <node concept="1mfA1w" id="Jp" role="2OqNvi">
                            <uo k="s:originTrace" v="n:8085146484218851485" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Jm" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                        <uo k="s:originTrace" v="n:8085146484218851486" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="J5" role="3cqZAp">
            <uo k="s:originTrace" v="n:9184644532456897316" />
            <node concept="3fqX7Q" id="Jq" role="3clFbG">
              <uo k="s:originTrace" v="n:9184644532456897442" />
              <node concept="2OqwBi" id="Jr" role="3fr31v">
                <uo k="s:originTrace" v="n:9184644532456897449" />
                <node concept="37vLTw" id="Js" role="2Oq$k0">
                  <ref role="3cqZAo" node="IX" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:9184644532456897450" />
                </node>
                <node concept="liA8E" id="Jt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <uo k="s:originTrace" v="n:9184644532456897451" />
                  <node concept="Xl_RD" id="Ju" role="37wK5m">
                    <property role="Xl_RC" value="$" />
                    <uo k="s:originTrace" v="n:9184644532456897452" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="I7" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Jv">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildVarRefStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4903714810883713094" />
    <node concept="3Tm1VV" id="Jw" role="1B3o_S">
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="3uibUv" id="Jx" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="3clFbW" id="Jy" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883713094" />
      <node concept="37vLTG" id="J_" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="3uibUv" id="JC" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
      </node>
      <node concept="3cqZAl" id="JA" role="3clF45">
        <uo k="s:originTrace" v="n:4903714810883713094" />
      </node>
      <node concept="3clFbS" id="JB" role="3clF47">
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="XkiVB" id="JD" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="1BaE9c" id="JF" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVarRefStringPart$2T" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2YIFZM" id="JH" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="11gdke" id="JI" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="11gdke" id="JJ" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="11gdke" id="JK" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7d01L" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="Xl_RD" id="JL" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVarRefStringPart" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="JG" role="37wK5m">
            <ref role="3cqZAo" node="J_" resolve="initContext" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
          </node>
        </node>
        <node concept="3clFbF" id="JE" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="1rXfSq" id="JM" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2ShNRf" id="JN" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="1pGfFk" id="JO" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="JQ" resolve="BuildVarRefStringPart_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
                <node concept="Xjq3P" id="JP" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Jz" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="312cEu" id="J$" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4903714810883713094" />
      <node concept="3clFbW" id="JQ" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="37vLTG" id="JT" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="3uibUv" id="JW" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
          </node>
        </node>
        <node concept="3cqZAl" id="JU" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3clFbS" id="JV" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="XkiVB" id="JX" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="1BaE9c" id="JY" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="macro$zsHz" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="2YIFZM" id="K2" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
                <node concept="11gdke" id="K3" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="K4" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="K5" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d01L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="K6" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d02L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="Xl_RD" id="K7" role="37wK5m">
                  <property role="Xl_RC" value="macro" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="JZ" role="37wK5m">
              <ref role="3cqZAo" node="JT" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
            <node concept="3clFbT" id="K0" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
            <node concept="3clFbT" id="K1" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="JR" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="3Tm1VV" id="K8" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3uibUv" id="K9" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="2AHcQZ" id="Ka" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3clFbS" id="Kb" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="3cpWs6" id="Kd" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2YIFZM" id="Ke" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:4903714810883713096" />
              <node concept="35c_gC" id="Kf" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cv" resolve="BuildMacro" />
                <uo k="s:originTrace" v="n:4903714810883713096" />
              </node>
              <node concept="2ShNRf" id="Kg" role="37wK5m">
                <uo k="s:originTrace" v="n:4903714810883713096" />
                <node concept="1pGfFk" id="Kh" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:4903714810883713096" />
                  <node concept="Xl_RD" id="Ki" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:4903714810883713096" />
                  </node>
                  <node concept="Xl_RD" id="Kj" role="37wK5m">
                    <property role="Xl_RC" value="4903714810883713096" />
                    <uo k="s:originTrace" v="n:4903714810883713096" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Kc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
      </node>
      <node concept="3uibUv" id="JS" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Kk">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacroInitValue_Constraints" />
    <uo k="s:originTrace" v="n:244868996532694529" />
    <node concept="3Tm1VV" id="Kl" role="1B3o_S">
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="3uibUv" id="Km" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="3clFbW" id="Kn" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532694529" />
      <node concept="37vLTG" id="Kq" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="Kt" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="3cqZAl" id="Kr" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3clFbS" id="Ks" role="3clF47">
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="XkiVB" id="Ku" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:244868996532694529" />
          <node concept="1BaE9c" id="Kw" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacroInitValue$$g" />
            <uo k="s:originTrace" v="n:244868996532694529" />
            <node concept="2YIFZM" id="Ky" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:244868996532694529" />
              <node concept="11gdke" id="Kz" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="11gdke" id="K$" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="11gdke" id="K_" role="37wK5m">
                <property role="11gdj1" value="263c91972cd1e1aaL" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="Xl_RD" id="KA" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacroInitValue" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Kx" role="37wK5m">
            <ref role="3cqZAo" node="Kq" resolve="initContext" />
            <uo k="s:originTrace" v="n:244868996532694529" />
          </node>
        </node>
        <node concept="3clFbF" id="Kv" role="3cqZAp">
          <uo k="s:originTrace" v="n:244868996532694529" />
          <node concept="1rXfSq" id="KB" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:244868996532694529" />
            <node concept="2ShNRf" id="KC" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532694529" />
              <node concept="YeOm9" id="KD" role="2ShVmc">
                <uo k="s:originTrace" v="n:244868996532694529" />
                <node concept="1Y3b0j" id="KE" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:244868996532694529" />
                  <node concept="3Tm1VV" id="KF" role="1B3o_S">
                    <uo k="s:originTrace" v="n:244868996532694529" />
                  </node>
                  <node concept="3clFb_" id="KG" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:244868996532694529" />
                    <node concept="3Tm1VV" id="KJ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="2AHcQZ" id="KK" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="3uibUv" id="KL" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="37vLTG" id="KM" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3uibUv" id="KP" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="2AHcQZ" id="KQ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="KN" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3uibUv" id="KR" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="2AHcQZ" id="KS" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="KO" role="3clF47">
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3cpWs8" id="KT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="3cpWsn" id="KY" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="10P_77" id="KZ" role="1tU5fm">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                          </node>
                          <node concept="1rXfSq" id="L0" role="33vP2m">
                            <ref role="37wK5l" node="Kp" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="2OqwBi" id="L1" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="L5" role="2Oq$k0">
                                <ref role="3cqZAo" node="KM" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="L6" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="L2" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="L7" role="2Oq$k0">
                                <ref role="3cqZAo" node="KM" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="L8" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="L3" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="L9" role="2Oq$k0">
                                <ref role="3cqZAo" node="KM" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="La" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="L4" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="Lb" role="2Oq$k0">
                                <ref role="3cqZAo" node="KM" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="Lc" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="KU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="3clFbJ" id="KV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="3clFbS" id="Ld" role="3clFbx">
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="3clFbF" id="Lf" role="3cqZAp">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="2OqwBi" id="Lg" role="3clFbG">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="Lh" role="2Oq$k0">
                                <ref role="3cqZAo" node="KN" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="Li" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                                <node concept="1dyn4i" id="Lj" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:244868996532694529" />
                                  <node concept="2ShNRf" id="Lk" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:244868996532694529" />
                                    <node concept="1pGfFk" id="Ll" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:244868996532694529" />
                                      <node concept="Xl_RD" id="Lm" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:244868996532694529" />
                                      </node>
                                      <node concept="Xl_RD" id="Ln" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536580558" />
                                        <uo k="s:originTrace" v="n:244868996532694529" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="Le" role="3clFbw">
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="3y3z36" id="Lo" role="3uHU7w">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="10Nm6u" id="Lq" role="3uHU7w">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                            <node concept="37vLTw" id="Lr" role="3uHU7B">
                              <ref role="3cqZAo" node="KN" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="Lp" role="3uHU7B">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="37vLTw" id="Ls" role="3fr31v">
                              <ref role="3cqZAo" node="KY" resolve="result" />
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="KW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="3clFbF" id="KX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="37vLTw" id="Lt" role="3clFbG">
                          <ref role="3cqZAo" node="KY" resolve="result" />
                          <uo k="s:originTrace" v="n:244868996532694529" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="KH" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:244868996532694529" />
                  </node>
                  <node concept="3uibUv" id="KI" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:244868996532694529" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ko" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="2YIFZL" id="Kp" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:244868996532694529" />
      <node concept="10P_77" id="Lu" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3Tm6S6" id="Lv" role="1B3o_S">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3clFbS" id="Lw" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580559" />
        <node concept="3clFbF" id="L_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580560" />
          <node concept="2OqwBi" id="LA" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580561" />
            <node concept="37vLTw" id="LB" role="2Oq$k0">
              <ref role="3cqZAo" node="Ly" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580562" />
            </node>
            <node concept="1mIQ4w" id="LC" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580563" />
              <node concept="chp4Y" id="LD" role="cj9EA">
                <ref role="cht4Q" to="3ior:3h9a8EwPm3y" resolve="BuildVariableMacro" />
                <uo k="s:originTrace" v="n:1227128029536580564" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Lx" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="LE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="Ly" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="LF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="Lz" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="LG" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="L$" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="LH" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="LI">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacroInitWithDate_Constraints" />
    <uo k="s:originTrace" v="n:244868996532454386" />
    <node concept="3Tm1VV" id="LJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="3uibUv" id="LK" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="3clFbW" id="LL" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532454386" />
      <node concept="37vLTG" id="LO" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3uibUv" id="LR" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
      </node>
      <node concept="3cqZAl" id="LP" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532454386" />
      </node>
      <node concept="3clFbS" id="LQ" role="3clF47">
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="XkiVB" id="LS" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="1BaE9c" id="LU" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacroInitWithDate$_z" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="2YIFZM" id="LW" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="11gdke" id="LX" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="11gdke" id="LY" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="11gdke" id="LZ" role="37wK5m">
                <property role="11gdj1" value="365f30e12d2c3e4L" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="Xl_RD" id="M0" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacroInitWithDate" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="LV" role="37wK5m">
            <ref role="3cqZAo" node="LO" resolve="initContext" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="3clFbF" id="LT" role="3cqZAp">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="1rXfSq" id="M1" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="2ShNRf" id="M2" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="1pGfFk" id="M3" role="2ShVmc">
                <ref role="37wK5l" node="M5" resolve="BuildVariableMacroInitWithDate_Constraints.Pattern_PD" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="Xjq3P" id="M4" role="37wK5m">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="LM" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="312cEu" id="LN" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Pattern_PD" />
      <uo k="s:originTrace" v="n:244868996532454386" />
      <node concept="3clFbW" id="M5" role="jymVt">
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3cqZAl" id="M9" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3Tm1VV" id="Ma" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3clFbS" id="Mb" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="XkiVB" id="Md" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="1BaE9c" id="Me" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="pattern$sPz3" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="2YIFZM" id="Mj" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="11gdke" id="Mk" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="Ml" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="Mm" role="37wK5m">
                  <property role="11gdj1" value="365f30e12d2c3e4L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="Mn" role="37wK5m">
                  <property role="11gdj1" value="365f30e12d2c3f0L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="Xl_RD" id="Mo" role="37wK5m">
                  <property role="Xl_RC" value="pattern" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Mf" role="37wK5m">
              <ref role="3cqZAo" node="Mc" resolve="container" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="Mg" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="Mh" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="Mi" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="Mc" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="Mp" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="M6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3Tm1VV" id="Mq" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="10P_77" id="Mr" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="37vLTG" id="Ms" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3Tqbb2" id="Mx" role="1tU5fm">
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="Mt" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="My" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="Mu" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="Mz" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="3clFbS" id="Mv" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3cpWs8" id="M$" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="3cpWsn" id="MB" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="10P_77" id="MC" role="1tU5fm">
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="1rXfSq" id="MD" role="33vP2m">
                <ref role="37wK5l" node="M7" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="37vLTw" id="ME" role="37wK5m">
                  <ref role="3cqZAo" node="Ms" resolve="node" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="2YIFZM" id="MF" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                  <node concept="37vLTw" id="MG" role="37wK5m">
                    <ref role="3cqZAo" node="Mt" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="M_" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="3clFbS" id="MH" role="3clFbx">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="3clFbF" id="MJ" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="2OqwBi" id="MK" role="3clFbG">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                  <node concept="37vLTw" id="ML" role="2Oq$k0">
                    <ref role="3cqZAo" node="Mu" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                  </node>
                  <node concept="liA8E" id="MM" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                    <node concept="2ShNRf" id="MN" role="37wK5m">
                      <uo k="s:originTrace" v="n:244868996532454386" />
                      <node concept="1pGfFk" id="MO" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:244868996532454386" />
                        <node concept="Xl_RD" id="MP" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:244868996532454386" />
                        </node>
                        <node concept="Xl_RD" id="MQ" role="37wK5m">
                          <property role="Xl_RC" value="244868996532454388" />
                          <uo k="s:originTrace" v="n:244868996532454386" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="MI" role="3clFbw">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="3y3z36" id="MR" role="3uHU7w">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="10Nm6u" id="MT" role="3uHU7w">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="37vLTw" id="MU" role="3uHU7B">
                  <ref role="3cqZAo" node="Mu" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
              <node concept="3fqX7Q" id="MS" role="3uHU7B">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="37vLTw" id="MV" role="3fr31v">
                  <ref role="3cqZAo" node="MB" resolve="result" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="MA" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="37vLTw" id="MW" role="3clFbG">
              <ref role="3cqZAo" node="MB" resolve="result" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Mw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
      </node>
      <node concept="2YIFZL" id="M7" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="37vLTG" id="MX" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3Tqbb2" id="N2" role="1tU5fm">
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="MY" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="N3" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="10P_77" id="MZ" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3Tm6S6" id="N0" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3clFbS" id="N1" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454389" />
          <node concept="3J1_TO" id="N4" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454390" />
            <node concept="3clFbS" id="N5" role="1zxBo7">
              <uo k="s:originTrace" v="n:244868996532454391" />
              <node concept="3clFbF" id="N7" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532454400" />
                <node concept="2ShNRf" id="N9" role="3clFbG">
                  <uo k="s:originTrace" v="n:244868996532454401" />
                  <node concept="1pGfFk" id="Na" role="2ShVmc">
                    <ref role="37wK5l" to="25x5:~SimpleDateFormat.&lt;init&gt;(java.lang.String)" resolve="SimpleDateFormat" />
                    <uo k="s:originTrace" v="n:244868996532459437" />
                    <node concept="37vLTw" id="Nb" role="37wK5m">
                      <ref role="3cqZAo" node="MY" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:244868996532459438" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="N8" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532459440" />
                <node concept="3clFbT" id="Nc" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                  <uo k="s:originTrace" v="n:244868996532459442" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="N6" role="1zxBo5">
              <uo k="s:originTrace" v="n:244868996532454392" />
              <node concept="XOnhg" id="Nd" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ex" />
                <uo k="s:originTrace" v="n:244868996532454393" />
                <node concept="nSUau" id="Nf" role="1tU5fm">
                  <uo k="s:originTrace" v="n:603324024917875774" />
                  <node concept="3uibUv" id="Ng" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                    <uo k="s:originTrace" v="n:244868996532454396" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="Ne" role="1zc67A">
                <uo k="s:originTrace" v="n:244868996532454395" />
                <node concept="3cpWs6" id="Nh" role="3cqZAp">
                  <uo k="s:originTrace" v="n:244868996532454397" />
                  <node concept="3clFbT" id="Ni" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                    <uo k="s:originTrace" v="n:244868996532454399" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="M8" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:244868996532454386" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Nj">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacro_Constraints" />
    <uo k="s:originTrace" v="n:6420586245471679192" />
    <node concept="3Tm1VV" id="Nk" role="1B3o_S">
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="3uibUv" id="Nl" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="3clFbW" id="Nm" role="jymVt">
      <uo k="s:originTrace" v="n:6420586245471679192" />
      <node concept="37vLTG" id="Np" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3uibUv" id="Ns" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
      </node>
      <node concept="3cqZAl" id="Nq" role="3clF45">
        <uo k="s:originTrace" v="n:6420586245471679192" />
      </node>
      <node concept="3clFbS" id="Nr" role="3clF47">
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="XkiVB" id="Nt" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="1BaE9c" id="Nv" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacro$Rk" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="2YIFZM" id="Nx" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="11gdke" id="Ny" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="11gdke" id="Nz" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="11gdke" id="N$" role="37wK5m">
                <property role="11gdj1" value="3449288aa0d560e2L" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="Xl_RD" id="N_" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacro" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Nw" role="37wK5m">
            <ref role="3cqZAo" node="Np" resolve="initContext" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="3clFbF" id="Nu" role="3cqZAp">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="1rXfSq" id="NA" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="2ShNRf" id="NB" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="1pGfFk" id="NC" role="2ShVmc">
                <ref role="37wK5l" node="NE" resolve="BuildVariableMacro_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="Xjq3P" id="ND" role="37wK5m">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Nn" role="jymVt">
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="312cEu" id="No" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6420586245471679192" />
      <node concept="3clFbW" id="NE" role="jymVt">
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3cqZAl" id="NI" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3Tm1VV" id="NJ" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3clFbS" id="NK" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="XkiVB" id="NM" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="1BaE9c" id="NN" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="2YIFZM" id="NS" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="11gdke" id="NT" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="NU" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="NV" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="NW" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="Xl_RD" id="NX" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="NO" role="37wK5m">
              <ref role="3cqZAo" node="NL" resolve="container" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="NP" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="NQ" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="NR" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="NL" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="NY" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="NF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3Tm1VV" id="NZ" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="10P_77" id="O0" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="37vLTG" id="O1" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3Tqbb2" id="O6" role="1tU5fm">
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="O2" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="O7" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="O3" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="O8" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="3clFbS" id="O4" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3cpWs8" id="O9" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="3cpWsn" id="Oc" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="10P_77" id="Od" role="1tU5fm">
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="1rXfSq" id="Oe" role="33vP2m">
                <ref role="37wK5l" node="NG" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="37vLTw" id="Of" role="37wK5m">
                  <ref role="3cqZAo" node="O1" resolve="node" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="2YIFZM" id="Og" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                  <node concept="37vLTw" id="Oh" role="37wK5m">
                    <ref role="3cqZAo" node="O2" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Oa" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="3clFbS" id="Oi" role="3clFbx">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="3clFbF" id="Ok" role="3cqZAp">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="2OqwBi" id="Ol" role="3clFbG">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                  <node concept="37vLTw" id="Om" role="2Oq$k0">
                    <ref role="3cqZAo" node="O3" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                  </node>
                  <node concept="liA8E" id="On" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                    <node concept="2ShNRf" id="Oo" role="37wK5m">
                      <uo k="s:originTrace" v="n:6420586245471679192" />
                      <node concept="1pGfFk" id="Op" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6420586245471679192" />
                        <node concept="Xl_RD" id="Oq" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6420586245471679192" />
                        </node>
                        <node concept="Xl_RD" id="Or" role="37wK5m">
                          <property role="Xl_RC" value="6420586245471679194" />
                          <uo k="s:originTrace" v="n:6420586245471679192" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="Oj" role="3clFbw">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="3y3z36" id="Os" role="3uHU7w">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="10Nm6u" id="Ou" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="37vLTw" id="Ov" role="3uHU7B">
                  <ref role="3cqZAo" node="O3" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Ot" role="3uHU7B">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="37vLTw" id="Ow" role="3fr31v">
                  <ref role="3cqZAo" node="Oc" resolve="result" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Ob" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="37vLTw" id="Ox" role="3clFbG">
              <ref role="3cqZAo" node="Oc" resolve="result" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="O5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
      </node>
      <node concept="2YIFZL" id="NG" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="37vLTG" id="Oy" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3Tqbb2" id="OB" role="1tU5fm">
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="Oz" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="OC" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="10P_77" id="O$" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3Tm6S6" id="O_" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3clFbS" id="OA" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679195" />
          <node concept="3clFbF" id="OD" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679204" />
            <node concept="2OqwBi" id="OE" role="3clFbG">
              <uo k="s:originTrace" v="n:6420586245471679208" />
              <node concept="37vLTw" id="OF" role="2Oq$k0">
                <ref role="3cqZAo" node="Oz" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:6420586245471679205" />
              </node>
              <node concept="2kpEY9" id="OG" role="2OqNvi">
                <uo k="s:originTrace" v="n:6420586245471679216" />
                <node concept="1Qi9sc" id="OH" role="1YN4dH">
                  <uo k="s:originTrace" v="n:6420586245471679217" />
                  <node concept="1OCmVF" id="OI" role="1QigWp">
                    <uo k="s:originTrace" v="n:6420586245471679228" />
                    <node concept="1SSPPM" id="OJ" role="1OLDsb">
                      <uo k="s:originTrace" v="n:6420586245471679220" />
                      <node concept="1T6I$Y" id="OK" role="1T5LoC">
                        <property role="1T6KD9" value="=" />
                        <uo k="s:originTrace" v="n:6420586245471679221" />
                      </node>
                      <node concept="1T6I$Y" id="OL" role="1T5LoC">
                        <property role="1T6KD9" value="$" />
                        <uo k="s:originTrace" v="n:6420586245471679223" />
                      </node>
                      <node concept="1T6I$Y" id="OM" role="1T5LoC">
                        <property role="1T6KD9" value="/" />
                        <uo k="s:originTrace" v="n:6420586245471679227" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="NH" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="ON">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="OO" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="OP" role="1B3o_S" />
    <node concept="3clFbW" id="OQ" role="jymVt">
      <node concept="3cqZAl" id="OT" role="3clF45" />
      <node concept="3Tm1VV" id="OU" role="1B3o_S" />
      <node concept="3clFbS" id="OV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="OR" role="jymVt" />
    <node concept="3clFb_" id="OS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="OW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="OX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="OY" role="1B3o_S" />
      <node concept="3uibUv" id="OZ" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="P0" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="P3" role="1tU5fm" />
        <node concept="2AHcQZ" id="P4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="P1" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="P5" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="P6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="P2" role="3clF47">
        <node concept="1_3QMa" id="P7" role="3cqZAp">
          <node concept="37vLTw" id="P9" role="1_3QMn">
            <ref role="3cqZAo" node="P0" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="Pa" role="1_3QMm">
            <node concept="3clFbS" id="PI" role="1pnPq1">
              <node concept="3cpWs6" id="PK" role="3cqZAp">
                <node concept="2ShNRf" id="PL" role="3cqZAk">
                  <node concept="1pGfFk" id="PM" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="sR" resolve="BuildSourceMacroRelativePath_Constraints" />
                    <node concept="37vLTw" id="PN" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PJ" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFx8t" resolve="BuildSourceMacroRelativePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pb" role="1_3QMm">
            <node concept="3clFbS" id="PO" role="1pnPq1">
              <node concept="3cpWs6" id="PQ" role="3cqZAp">
                <node concept="2ShNRf" id="PR" role="3cqZAk">
                  <node concept="1pGfFk" id="PS" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8C" resolve="BuildLayout_Constraints" />
                    <node concept="37vLTw" id="PT" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PP" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RPz6WoY4Ck" resolve="BuildLayout" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pc" role="1_3QMm">
            <node concept="3clFbS" id="PU" role="1pnPq1">
              <node concept="3cpWs6" id="PW" role="3cqZAp">
                <node concept="2ShNRf" id="PX" role="3cqZAk">
                  <node concept="1pGfFk" id="PY" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="BuildAspect_Constraints" />
                    <node concept="37vLTw" id="PZ" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PV" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:34DbxDwRlgt" resolve="BuildAspect" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pd" role="1_3QMm">
            <node concept="3clFbS" id="Q0" role="1pnPq1">
              <node concept="3cpWs6" id="Q2" role="3cqZAp">
                <node concept="2ShNRf" id="Q3" role="3cqZAk">
                  <node concept="1pGfFk" id="Q4" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="B4" resolve="BuildSource_JavaModule_Constraints" />
                    <node concept="37vLTw" id="Q5" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Q1" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pe" role="1_3QMm">
            <node concept="3clFbS" id="Q6" role="1pnPq1">
              <node concept="3cpWs6" id="Q8" role="3cqZAp">
                <node concept="2ShNRf" id="Q9" role="3cqZAk">
                  <node concept="1pGfFk" id="Qa" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="zu" resolve="BuildSource_JavaLibrary_Constraints" />
                    <node concept="37vLTw" id="Qb" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Q7" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pf" role="1_3QMm">
            <node concept="3clFbS" id="Qc" role="1pnPq1">
              <node concept="3cpWs6" id="Qe" role="3cqZAp">
                <node concept="2ShNRf" id="Qf" role="3cqZAk">
                  <node concept="1pGfFk" id="Qg" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Hc" resolve="BuildTextStringPart_Constraints" />
                    <node concept="37vLTw" id="Qh" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qd" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRO3" resolve="BuildTextStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pg" role="1_3QMm">
            <node concept="3clFbS" id="Qi" role="1pnPq1">
              <node concept="3cpWs6" id="Qk" role="3cqZAp">
                <node concept="2ShNRf" id="Ql" role="3cqZAk">
                  <node concept="1pGfFk" id="Qm" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="GE" resolve="BuildSource_JavaSources_Constraints" />
                    <node concept="37vLTw" id="Qn" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qj" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4zlO3QTanjW" resolve="BuildSource_JavaSources" />
            </node>
          </node>
          <node concept="1pnPoh" id="Ph" role="1_3QMm">
            <node concept="3clFbS" id="Qo" role="1pnPq1">
              <node concept="3cpWs6" id="Qq" role="3cqZAp">
                <node concept="2ShNRf" id="Qr" role="3cqZAk">
                  <node concept="1pGfFk" id="Qs" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Jy" resolve="BuildVarRefStringPart_Constraints" />
                    <node concept="37vLTw" id="Qt" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qp" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRO1" resolve="BuildVarRefStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pi" role="1_3QMm">
            <node concept="3clFbS" id="Qu" role="1pnPq1">
              <node concept="3cpWs6" id="Qw" role="3cqZAp">
                <node concept="2ShNRf" id="Qx" role="3cqZAk">
                  <node concept="1pGfFk" id="Qy" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="pF" resolve="BuildLayout_NamedContainer_Constraints" />
                    <node concept="37vLTw" id="Qz" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qv" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pj" role="1_3QMm">
            <node concept="3clFbS" id="Q$" role="1pnPq1">
              <node concept="3cpWs6" id="QA" role="3cqZAp">
                <node concept="2ShNRf" id="QB" role="3cqZAk">
                  <node concept="1pGfFk" id="QC" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Nm" resolve="BuildVariableMacro_Constraints" />
                    <node concept="37vLTw" id="QD" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Q_" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:3h9a8EwPm3y" resolve="BuildVariableMacro" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pk" role="1_3QMm">
            <node concept="3clFbS" id="QE" role="1pnPq1">
              <node concept="3cpWs6" id="QG" role="3cqZAp">
                <node concept="2ShNRf" id="QH" role="3cqZAk">
                  <node concept="1pGfFk" id="QI" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="GV" resolve="BuildStringPart_Constraints" />
                    <node concept="37vLTw" id="QJ" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QF" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRNZ" resolve="BuildStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pl" role="1_3QMm">
            <node concept="3clFbS" id="QK" role="1pnPq1">
              <node concept="3cpWs6" id="QM" role="3cqZAp">
                <node concept="2ShNRf" id="QN" role="3cqZAk">
                  <node concept="1pGfFk" id="QO" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="tG" resolve="BuildSourcePath_Constraints" />
                    <node concept="37vLTw" id="QP" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QL" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pm" role="1_3QMm">
            <node concept="3clFbS" id="QQ" role="1pnPq1">
              <node concept="3cpWs6" id="QS" role="3cqZAp">
                <node concept="2ShNRf" id="QT" role="3cqZAk">
                  <node concept="1pGfFk" id="QU" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="u9" resolve="BuildSource_JavaClassFolder_Constraints" />
                    <node concept="37vLTw" id="QV" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QR" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15RAxQX0x_p" resolve="BuildSource_JavaClassFolder" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pn" role="1_3QMm">
            <node concept="3clFbS" id="QW" role="1pnPq1">
              <node concept="3cpWs6" id="QY" role="3cqZAp">
                <node concept="2ShNRf" id="QZ" role="3cqZAk">
                  <node concept="1pGfFk" id="R0" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="jZ" resolve="BuildLayout_Import_Constraints" />
                    <node concept="37vLTw" id="R1" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QX" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:IFRVVI4P3M" resolve="BuildLayout_Import" />
            </node>
          </node>
          <node concept="1pnPoh" id="Po" role="1_3QMm">
            <node concept="3clFbS" id="R2" role="1pnPq1">
              <node concept="3cpWs6" id="R4" role="3cqZAp">
                <node concept="2ShNRf" id="R5" role="3cqZAk">
                  <node concept="1pGfFk" id="R6" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6E" resolve="BuildLayout_CompileOutputOf_Constraints" />
                    <node concept="37vLTw" id="R7" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="R3" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:2fQZjorRfO$" resolve="BuildLayout_CompileOutputOf" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pp" role="1_3QMm">
            <node concept="3clFbS" id="R8" role="1pnPq1">
              <node concept="3cpWs6" id="Ra" role="3cqZAp">
                <node concept="2ShNRf" id="Rb" role="3cqZAk">
                  <node concept="1pGfFk" id="Rc" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3P" resolve="BuildExternalLayout_Constraints" />
                    <node concept="37vLTw" id="Rd" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="R9" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwObZ9" resolve="BuildExternalLayout" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pq" role="1_3QMm">
            <node concept="3clFbS" id="Re" role="1pnPq1">
              <node concept="3cpWs6" id="Rg" role="3cqZAp">
                <node concept="2ShNRf" id="Rh" role="3cqZAk">
                  <node concept="1pGfFk" id="Ri" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="a6" resolve="BuildLayout_FileStub_Constraints" />
                    <node concept="37vLTw" id="Rj" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Rf" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwOLGQ" resolve="BuildLayout_FileStub" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pr" role="1_3QMm">
            <node concept="3clFbS" id="Rk" role="1pnPq1">
              <node concept="3cpWs6" id="Rm" role="3cqZAp">
                <node concept="2ShNRf" id="Rn" role="3cqZAk">
                  <node concept="1pGfFk" id="Ro" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="30" resolve="BuildExternalLayoutDependency_Constraints" />
                    <node concept="37vLTw" id="Rp" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Rl" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwOX2$" resolve="BuildExternalLayoutDependency" />
            </node>
          </node>
          <node concept="1pnPoh" id="Ps" role="1_3QMm">
            <node concept="3clFbS" id="Rq" role="1pnPq1">
              <node concept="3cpWs6" id="Rs" role="3cqZAp">
                <node concept="2ShNRf" id="Rt" role="3cqZAk">
                  <node concept="1pGfFk" id="Ru" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="f$" resolve="BuildLayout_ImportContent_Constraints" />
                    <node concept="37vLTw" id="Rv" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Rr" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pt" role="1_3QMm">
            <node concept="3clFbS" id="Rw" role="1pnPq1">
              <node concept="3cpWs6" id="Ry" role="3cqZAp">
                <node concept="2ShNRf" id="Rz" role="3cqZAk">
                  <node concept="1pGfFk" id="R$" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="xX" resolve="BuildSource_JavaExternalJarRef_Constraints" />
                    <node concept="37vLTw" id="R_" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Rx" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJGJpc" resolve="BuildSource_JavaExternalJarRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pu" role="1_3QMm">
            <node concept="3clFbS" id="RA" role="1pnPq1">
              <node concept="3cpWs6" id="RC" role="3cqZAp">
                <node concept="2ShNRf" id="RD" role="3cqZAk">
                  <node concept="1pGfFk" id="RE" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="ws" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
                    <node concept="37vLTw" id="RF" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="RB" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJH_CZ" resolve="BuildSource_JavaExternalJarFolderRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pv" role="1_3QMm">
            <node concept="3clFbS" id="RG" role="1pnPq1">
              <node concept="3cpWs6" id="RI" role="3cqZAp">
                <node concept="2ShNRf" id="RJ" role="3cqZAk">
                  <node concept="1pGfFk" id="RK" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="DP" resolve="BuildSource_JavaOptions_Constraints" />
                    <node concept="37vLTw" id="RL" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="RH" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:NvWe6DpNB2" resolve="BuildSource_JavaOptions" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pw" role="1_3QMm">
            <node concept="3clFbS" id="RM" role="1pnPq1">
              <node concept="3cpWs6" id="RO" role="3cqZAp">
                <node concept="2ShNRf" id="RP" role="3cqZAk">
                  <node concept="1pGfFk" id="RQ" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Af" resolve="BuildSource_JavaModuleOptions_Constraints" />
                    <node concept="37vLTw" id="RR" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="RN" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:1s8OwvM5SHi" resolve="BuildSource_JavaModuleOptions" />
            </node>
          </node>
          <node concept="1pnPoh" id="Px" role="1_3QMm">
            <node concept="3clFbS" id="RS" role="1pnPq1">
              <node concept="3cpWs6" id="RU" role="3cqZAp">
                <node concept="2ShNRf" id="RV" role="3cqZAk">
                  <node concept="1pGfFk" id="RW" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="vB" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
                    <node concept="37vLTw" id="RX" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="RT" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4lbsKRp1TRe" resolve="BuildSource_JavaDependencyLibrary" />
            </node>
          </node>
          <node concept="1pnPoh" id="Py" role="1_3QMm">
            <node concept="3clFbS" id="RY" role="1pnPq1">
              <node concept="3cpWs6" id="S0" role="3cqZAp">
                <node concept="2ShNRf" id="S1" role="3cqZAk">
                  <node concept="1pGfFk" id="S2" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="d5" resolve="BuildLayout_Filemode_Constraints" />
                    <node concept="37vLTw" id="S3" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="RZ" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6L3dtXewST0" resolve="BuildLayout_Filemode" />
            </node>
          </node>
          <node concept="1pnPoh" id="Pz" role="1_3QMm">
            <node concept="3clFbS" id="S4" role="1pnPq1">
              <node concept="3cpWs6" id="S6" role="3cqZAp">
                <node concept="2ShNRf" id="S7" role="3cqZAk">
                  <node concept="1pGfFk" id="S8" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="eJ" resolve="BuildLayout_FilesOf_Constraints" />
                    <node concept="37vLTw" id="S9" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="S5" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6Iq8148fTg4" resolve="BuildLayout_FilesOf" />
            </node>
          </node>
          <node concept="1pnPoh" id="P$" role="1_3QMm">
            <node concept="3clFbS" id="Sa" role="1pnPq1">
              <node concept="3cpWs6" id="Sc" role="3cqZAp">
                <node concept="2ShNRf" id="Sd" role="3cqZAk">
                  <node concept="1pGfFk" id="Se" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="LL" resolve="BuildVariableMacroInitWithDate_Constraints" />
                    <node concept="37vLTw" id="Sf" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Sb" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:d_WKSiOGf$" resolve="BuildVariableMacroInitWithDate" />
            </node>
          </node>
          <node concept="1pnPoh" id="P_" role="1_3QMm">
            <node concept="3clFbS" id="Sg" role="1pnPq1">
              <node concept="3cpWs6" id="Si" role="3cqZAp">
                <node concept="2ShNRf" id="Sj" role="3cqZAk">
                  <node concept="1pGfFk" id="Sk" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Kn" resolve="BuildVariableMacroInitValue_Constraints" />
                    <node concept="37vLTw" id="Sl" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Sh" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
            </node>
          </node>
          <node concept="1pnPoh" id="PA" role="1_3QMm">
            <node concept="3clFbS" id="Sm" role="1pnPq1">
              <node concept="3cpWs6" id="So" role="3cqZAp">
                <node concept="2ShNRf" id="Sp" role="3cqZAk">
                  <node concept="1pGfFk" id="Sq" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="s2" resolve="BuildProjectDependency_Constraints" />
                    <node concept="37vLTw" id="Sr" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Sn" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4lbsKRp2c8w" resolve="BuildProjectDependency" />
            </node>
          </node>
          <node concept="1pnPoh" id="PB" role="1_3QMm">
            <node concept="3clFbS" id="Ss" role="1pnPq1">
              <node concept="3cpWs6" id="Su" role="3cqZAp">
                <node concept="2ShNRf" id="Sv" role="3cqZAk">
                  <node concept="1pGfFk" id="Sw" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="b$" resolve="BuildLayout_File_Constraints" />
                    <node concept="37vLTw" id="Sx" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="St" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7UAfeVQUc3H" resolve="BuildLayout_File" />
            </node>
          </node>
          <node concept="1pnPoh" id="PC" role="1_3QMm">
            <node concept="3clFbS" id="Sy" role="1pnPq1">
              <node concept="3cpWs6" id="S$" role="3cqZAp">
                <node concept="2ShNRf" id="S_" role="3cqZAk">
                  <node concept="1pGfFk" id="SA" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="oh" resolve="BuildLayout_JarManifest_Section_Constraints" />
                    <node concept="37vLTw" id="SB" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Sz" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15teMbUX7PV" resolve="BuildLayout_JarManifest_Section" />
            </node>
          </node>
          <node concept="1pnPoh" id="PD" role="1_3QMm">
            <node concept="3clFbS" id="SC" role="1pnPq1">
              <node concept="3cpWs6" id="SE" role="3cqZAp">
                <node concept="2ShNRf" id="SF" role="3cqZAk">
                  <node concept="1pGfFk" id="SG" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="mz" resolve="BuildLayout_JarManifest_Constraints" />
                    <node concept="37vLTw" id="SH" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="SD" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
            </node>
          </node>
          <node concept="1pnPoh" id="PE" role="1_3QMm">
            <node concept="3clFbS" id="SI" role="1pnPq1">
              <node concept="3cpWs6" id="SK" role="3cqZAp">
                <node concept="2ShNRf" id="SL" role="3cqZAk">
                  <node concept="1pGfFk" id="SM" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1t" resolve="BuildCompositePath_Constraints" />
                    <node concept="37vLTw" id="SN" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="SJ" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7usrAn056vL" resolve="BuildCompositePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="PF" role="1_3QMm">
            <node concept="3clFbS" id="SO" role="1pnPq1">
              <node concept="3cpWs6" id="SQ" role="3cqZAp">
                <node concept="2ShNRf" id="SR" role="3cqZAk">
                  <node concept="1pGfFk" id="SS" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="qz" resolve="BuildLayout_TarFiles_Constraints" />
                    <node concept="37vLTw" id="ST" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="SP" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7ndPoqgM6ZG" resolve="BuildLayout_TarFiles" />
            </node>
          </node>
          <node concept="1pnPoh" id="PG" role="1_3QMm">
            <node concept="3clFbS" id="SU" role="1pnPq1">
              <node concept="3cpWs6" id="SW" role="3cqZAp">
                <node concept="2ShNRf" id="SX" role="3cqZAk">
                  <node concept="1pGfFk" id="SY" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="iw" resolve="BuildLayout_ImportTarContent_Constraints" />
                    <node concept="37vLTw" id="SZ" role="37wK5m">
                      <ref role="3cqZAo" node="P1" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="SV" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7YLuv4UZ0eS" resolve="BuildLayout_ImportTarContent" />
            </node>
          </node>
          <node concept="3clFbS" id="PH" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="P8" role="3cqZAp">
          <node concept="10Nm6u" id="T0" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="T1">
    <node concept="39e2AJ" id="T2" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="T5" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:34DbxDwRut6" resolve="BuildAspect_Constraints" />
        <node concept="385nmt" id="TC" role="385vvn">
          <property role="385vuF" value="BuildAspect_Constraints" />
          <node concept="3u3nmq" id="TE" role="385v07">
            <property role="3u3nmv" value="3542413272732788550" />
          </node>
        </node>
        <node concept="39e2AT" id="TD" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="BuildAspect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T6" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3unV0cvB3$V" resolve="BuildCompositePath_Constraints" />
        <node concept="385nmt" id="TF" role="385vvn">
          <property role="385vuF" value="BuildCompositePath_Constraints" />
          <node concept="3u3nmq" id="TH" role="385v07">
            <property role="3u3nmv" value="4005929891728734523" />
          </node>
        </node>
        <node concept="39e2AT" id="TG" role="39e2AY">
          <ref role="39e2AS" node="1q" resolve="BuildCompositePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T7" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOX2E" resolve="BuildExternalLayoutDependency_Constraints" />
        <node concept="385nmt" id="TI" role="385vvn">
          <property role="385vuF" value="BuildExternalLayoutDependency_Constraints" />
          <node concept="3u3nmq" id="TK" role="385v07">
            <property role="3u3nmv" value="7181125477683417258" />
          </node>
        </node>
        <node concept="39e2AT" id="TJ" role="39e2AY">
          <ref role="39e2AS" node="2X" resolve="BuildExternalLayoutDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T8" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOczS" resolve="BuildExternalLayout_Constraints" />
        <node concept="385nmt" id="TL" role="385vvn">
          <property role="385vuF" value="BuildExternalLayout_Constraints" />
          <node concept="3u3nmq" id="TN" role="385v07">
            <property role="3u3nmv" value="7181125477683218680" />
          </node>
        </node>
        <node concept="39e2AT" id="TM" role="39e2AY">
          <ref role="39e2AS" node="3M" resolve="BuildExternalLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T9" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2fQZjorRIeV" resolve="BuildLayout_CompileOutputOf_Constraints" />
        <node concept="385nmt" id="TO" role="385vvn">
          <property role="385vuF" value="BuildLayout_CompileOutputOf_Constraints" />
          <node concept="3u3nmq" id="TQ" role="385v07">
            <property role="3u3nmv" value="2591537044435952571" />
          </node>
        </node>
        <node concept="39e2AT" id="TP" role="39e2AY">
          <ref role="39e2AS" node="6B" resolve="BuildLayout_CompileOutputOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ta" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4lbsKRp2rj8" resolve="BuildLayout_Constraints" />
        <node concept="385nmt" id="TR" role="385vvn">
          <property role="385vuF" value="BuildLayout_Constraints" />
          <node concept="3u3nmq" id="TT" role="385v07">
            <property role="3u3nmv" value="4993211115183387848" />
          </node>
        </node>
        <node concept="39e2AT" id="TS" role="39e2AY">
          <ref role="39e2AS" node="8_" resolve="BuildLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tb" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOLH1" resolve="BuildLayout_FileStub_Constraints" />
        <node concept="385nmt" id="TU" role="385vvn">
          <property role="385vuF" value="BuildLayout_FileStub_Constraints" />
          <node concept="3u3nmq" id="TW" role="385v07">
            <property role="3u3nmv" value="7181125477683370817" />
          </node>
        </node>
        <node concept="39e2AT" id="TV" role="39e2AY">
          <ref role="39e2AS" node="a3" resolve="BuildLayout_FileStub_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tc" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2oE1c2bmP7S" resolve="BuildLayout_File_Constraints" />
        <node concept="385nmt" id="TX" role="385vvn">
          <property role="385vuF" value="BuildLayout_File_Constraints" />
          <node concept="3u3nmq" id="TZ" role="385v07">
            <property role="3u3nmv" value="2750015747481358840" />
          </node>
        </node>
        <node concept="39e2AT" id="TY" role="39e2AY">
          <ref role="39e2AS" node="bx" resolve="BuildLayout_File_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Td" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6L3dtXewSTd" resolve="BuildLayout_Filemode_Constraints" />
        <node concept="385nmt" id="U0" role="385vvn">
          <property role="385vuF" value="BuildLayout_Filemode_Constraints" />
          <node concept="3u3nmq" id="U2" role="385v07">
            <property role="3u3nmv" value="7801138212747054669" />
          </node>
        </node>
        <node concept="39e2AT" id="U1" role="39e2AY">
          <ref role="39e2AS" node="d2" resolve="BuildLayout_Filemode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Te" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6Iq8148gLJy" resolve="BuildLayout_FilesOf_Constraints" />
        <node concept="385nmt" id="U3" role="385vvn">
          <property role="385vuF" value="BuildLayout_FilesOf_Constraints" />
          <node concept="3u3nmq" id="U5" role="385v07">
            <property role="3u3nmv" value="7753544965996878818" />
          </node>
        </node>
        <node concept="39e2AT" id="U4" role="39e2AY">
          <ref role="39e2AS" node="eG" resolve="BuildLayout_FilesOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tf" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJC0pa" resolve="BuildLayout_ImportContent_Constraints" />
        <node concept="385nmt" id="U6" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportContent_Constraints" />
          <node concept="3u3nmq" id="U8" role="385v07">
            <property role="3u3nmv" value="5610619299013068362" />
          </node>
        </node>
        <node concept="39e2AT" id="U7" role="39e2AY">
          <ref role="39e2AS" node="fx" resolve="BuildLayout_ImportContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tg" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7YLuv4UZ55R" resolve="BuildLayout_ImportTarContent_Constraints" />
        <node concept="385nmt" id="U9" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportTarContent_Constraints" />
          <node concept="3u3nmq" id="Ub" role="385v07">
            <property role="3u3nmv" value="9201269590678327671" />
          </node>
        </node>
        <node concept="39e2AT" id="Ua" role="39e2AY">
          <ref role="39e2AS" node="it" resolve="BuildLayout_ImportTarContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Th" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:IFRVVI4U7O" resolve="BuildLayout_Import_Constraints" />
        <node concept="385nmt" id="Uc" role="385vvn">
          <property role="385vuF" value="BuildLayout_Import_Constraints" />
          <node concept="3u3nmq" id="Ue" role="385v07">
            <property role="3u3nmv" value="841011766565773812" />
          </node>
        </node>
        <node concept="39e2AT" id="Ud" role="39e2AY">
          <ref role="39e2AS" node="jW" resolve="BuildLayout_Import_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ti" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6uJjF_N_i1u" resolve="BuildLayout_JarManifest_Constraints" />
        <node concept="385nmt" id="Uf" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Constraints" />
          <node concept="3u3nmq" id="Uh" role="385v07">
            <property role="3u3nmv" value="7471276865246011486" />
          </node>
        </node>
        <node concept="39e2AT" id="Ug" role="39e2AY">
          <ref role="39e2AS" node="mw" resolve="BuildLayout_JarManifest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tj" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ro1ZztCjMX" resolve="BuildLayout_JarManifest_Section_Constraints" />
        <node concept="385nmt" id="Ui" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Section_Constraints" />
          <node concept="3u3nmq" id="Uk" role="385v07">
            <property role="3u3nmv" value="8563603456896613565" />
          </node>
        </node>
        <node concept="39e2AT" id="Uj" role="39e2AY">
          <ref role="39e2AS" node="oe" resolve="BuildLayout_JarManifest_Section_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tk" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:79gE8jhMyo7" resolve="BuildLayout_NamedContainer_Constraints" />
        <node concept="385nmt" id="Ul" role="385vvn">
          <property role="385vuF" value="BuildLayout_NamedContainer_Constraints" />
          <node concept="3u3nmq" id="Un" role="385v07">
            <property role="3u3nmv" value="8237269006869472775" />
          </node>
        </node>
        <node concept="39e2AT" id="Um" role="39e2AY">
          <ref role="39e2AS" node="pC" resolve="BuildLayout_NamedContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tl" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ndPoqgMcyj" resolve="BuildLayout_TarFiles_Constraints" />
        <node concept="385nmt" id="Uo" role="385vvn">
          <property role="385vuF" value="BuildLayout_TarFiles_Constraints" />
          <node concept="3u3nmq" id="Uq" role="385v07">
            <property role="3u3nmv" value="8488675646594664595" />
          </node>
        </node>
        <node concept="39e2AT" id="Up" role="39e2AY">
          <ref role="39e2AS" node="qw" resolve="BuildLayout_TarFiles_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tm" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7aqYYYFvA3Q" resolve="BuildProjectDependency_Constraints" />
        <node concept="385nmt" id="Ur" role="385vvn">
          <property role="385vuF" value="BuildProjectDependency_Constraints" />
          <node concept="3u3nmq" id="Ut" role="385v07">
            <property role="3u3nmv" value="8258189873530167542" />
          </node>
        </node>
        <node concept="39e2AT" id="Us" role="39e2AY">
          <ref role="39e2AS" node="rZ" resolve="BuildProjectDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tn" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6qcrfIJFCen" resolve="BuildSourceMacroRelativePath_Constraints" />
        <node concept="385nmt" id="Uu" role="385vvn">
          <property role="385vuF" value="BuildSourceMacroRelativePath_Constraints" />
          <node concept="3u3nmq" id="Uw" role="385v07">
            <property role="3u3nmv" value="7389400916848182167" />
          </node>
        </node>
        <node concept="39e2AT" id="Uv" role="39e2AY">
          <ref role="39e2AS" node="sO" resolve="BuildSourceMacroRelativePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="To" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0xy1" resolve="BuildSourcePath_Constraints" />
        <node concept="385nmt" id="Ux" role="385vvn">
          <property role="385vuF" value="BuildSourcePath_Constraints" />
          <node concept="3u3nmq" id="Uz" role="385v07">
            <property role="3u3nmv" value="1258644073389103233" />
          </node>
        </node>
        <node concept="39e2AT" id="Uy" role="39e2AY">
          <ref role="39e2AS" node="tD" resolve="BuildSourcePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tp" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0x_r" resolve="BuildSource_JavaClassFolder_Constraints" />
        <node concept="385nmt" id="U$" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaClassFolder_Constraints" />
          <node concept="3u3nmq" id="UA" role="385v07">
            <property role="3u3nmv" value="1258644073389103451" />
          </node>
        </node>
        <node concept="39e2AT" id="U_" role="39e2AY">
          <ref role="39e2AS" node="u6" resolve="BuildSource_JavaClassFolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tq" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1lMM4owG7ds" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        <node concept="385nmt" id="UB" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaDependencyLibrary_Constraints" />
          <node concept="3u3nmq" id="UD" role="385v07">
            <property role="3u3nmv" value="1545517825663202140" />
          </node>
        </node>
        <node concept="39e2AT" id="UC" role="39e2AY">
          <ref role="39e2AS" node="v$" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tr" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJH_D7" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        <node concept="385nmt" id="UE" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
          <node concept="3u3nmq" id="UG" role="385v07">
            <property role="3u3nmv" value="5610619299014531655" />
          </node>
        </node>
        <node concept="39e2AT" id="UF" role="39e2AY">
          <ref role="39e2AS" node="wp" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ts" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJGJpe" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        <node concept="385nmt" id="UH" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarRef_Constraints" />
          <node concept="3u3nmq" id="UJ" role="385v07">
            <property role="3u3nmv" value="5610619299014309454" />
          </node>
        </node>
        <node concept="39e2AT" id="UI" role="39e2AY">
          <ref role="39e2AS" node="xU" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tt" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsVhw7" resolve="BuildSource_JavaLibrary_Constraints" />
        <node concept="385nmt" id="UK" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaLibrary_Constraints" />
          <node concept="3u3nmq" id="UM" role="385v07">
            <property role="3u3nmv" value="6647099934206924807" />
          </node>
        </node>
        <node concept="39e2AT" id="UL" role="39e2AY">
          <ref role="39e2AS" node="zr" resolve="BuildSource_JavaLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tu" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1s8OwvM5SHu" resolve="BuildSource_JavaModuleOptions_Constraints" />
        <node concept="385nmt" id="UN" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModuleOptions_Constraints" />
          <node concept="3u3nmq" id="UP" role="385v07">
            <property role="3u3nmv" value="1659807394254261086" />
          </node>
        </node>
        <node concept="39e2AT" id="UO" role="39e2AY">
          <ref role="39e2AS" node="Ac" resolve="BuildSource_JavaModuleOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tv" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsV9gD" resolve="BuildSource_JavaModule_Constraints" />
        <node concept="385nmt" id="UQ" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModule_Constraints" />
          <node concept="3u3nmq" id="US" role="385v07">
            <property role="3u3nmv" value="6647099934206891049" />
          </node>
        </node>
        <node concept="39e2AT" id="UR" role="39e2AY">
          <ref role="39e2AS" node="B1" resolve="BuildSource_JavaModule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tw" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:NvWe6DqvvW" resolve="BuildSource_JavaOptions_Constraints" />
        <node concept="385nmt" id="UT" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaOptions_Constraints" />
          <node concept="3u3nmq" id="UV" role="385v07">
            <property role="3u3nmv" value="927724900262213628" />
          </node>
        </node>
        <node concept="39e2AT" id="UU" role="39e2AY">
          <ref role="39e2AS" node="DM" resolve="BuildSource_JavaOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tx" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4zlO3QTaEjt" resolve="BuildSource_JavaSources_Constraints" />
        <node concept="385nmt" id="UW" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaSources_Constraints" />
          <node concept="3u3nmq" id="UY" role="385v07">
            <property role="3u3nmv" value="5248329904288343261" />
          </node>
        </node>
        <node concept="39e2AT" id="UX" role="39e2AY">
          <ref role="39e2AS" node="GB" resolve="BuildSource_JavaSources_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ty" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3NagsOfUCJd" resolve="BuildStringPart_Constraints" />
        <node concept="385nmt" id="UZ" role="385vvn">
          <property role="385vuF" value="BuildStringPart_Constraints" />
          <node concept="3u3nmq" id="V1" role="385v07">
            <property role="3u3nmv" value="4380385936562359245" />
          </node>
        </node>
        <node concept="39e2AT" id="V0" role="39e2AY">
          <ref role="39e2AS" node="GS" resolve="BuildStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tz" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQz4Pt" resolve="BuildTextStringPart_Constraints" />
        <node concept="385nmt" id="V2" role="385vvn">
          <property role="385vuF" value="BuildTextStringPart_Constraints" />
          <node concept="3u3nmq" id="V4" role="385v07">
            <property role="3u3nmv" value="4903714810883755357" />
          </node>
        </node>
        <node concept="39e2AT" id="V3" role="39e2AY">
          <ref role="39e2AS" node="H9" resolve="BuildTextStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T$" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQyUx6" resolve="BuildVarRefStringPart_Constraints" />
        <node concept="385nmt" id="V5" role="385vvn">
          <property role="385vuF" value="BuildVarRefStringPart_Constraints" />
          <node concept="3u3nmq" id="V7" role="385v07">
            <property role="3u3nmv" value="4903714810883713094" />
          </node>
        </node>
        <node concept="39e2AT" id="V6" role="39e2AY">
          <ref role="39e2AS" node="Jv" resolve="BuildVarRefStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T_" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiPAS1" resolve="BuildVariableMacroInitValue_Constraints" />
        <node concept="385nmt" id="V8" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitValue_Constraints" />
          <node concept="3u3nmq" id="Va" role="385v07">
            <property role="3u3nmv" value="244868996532694529" />
          </node>
        </node>
        <node concept="39e2AT" id="V9" role="39e2AY">
          <ref role="39e2AS" node="Kk" resolve="BuildVariableMacroInitValue_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TA" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiOGfM" resolve="BuildVariableMacroInitWithDate_Constraints" />
        <node concept="385nmt" id="Vb" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitWithDate_Constraints" />
          <node concept="3u3nmq" id="Vd" role="385v07">
            <property role="3u3nmv" value="244868996532454386" />
          </node>
        </node>
        <node concept="39e2AT" id="Vc" role="39e2AY">
          <ref role="39e2AS" node="LI" resolve="BuildVariableMacroInitWithDate_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TB" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5$qwiKF6jbo" resolve="BuildVariableMacro_Constraints" />
        <node concept="385nmt" id="Ve" role="385vvn">
          <property role="385vuF" value="BuildVariableMacro_Constraints" />
          <node concept="3u3nmq" id="Vg" role="385v07">
            <property role="3u3nmv" value="6420586245471679192" />
          </node>
        </node>
        <node concept="39e2AT" id="Vf" role="39e2AY">
          <ref role="39e2AS" node="Nj" resolve="BuildVariableMacro_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="T3" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="Vh" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:34DbxDwRut6" resolve="BuildAspect_Constraints" />
        <node concept="385nmt" id="VO" role="385vvn">
          <property role="385vuF" value="BuildAspect_Constraints" />
          <node concept="3u3nmq" id="VQ" role="385v07">
            <property role="3u3nmv" value="3542413272732788550" />
          </node>
        </node>
        <node concept="39e2AT" id="VP" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="BuildAspect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vi" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3unV0cvB3$V" resolve="BuildCompositePath_Constraints" />
        <node concept="385nmt" id="VR" role="385vvn">
          <property role="385vuF" value="BuildCompositePath_Constraints" />
          <node concept="3u3nmq" id="VT" role="385v07">
            <property role="3u3nmv" value="4005929891728734523" />
          </node>
        </node>
        <node concept="39e2AT" id="VS" role="39e2AY">
          <ref role="39e2AS" node="1t" resolve="BuildCompositePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vj" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOX2E" resolve="BuildExternalLayoutDependency_Constraints" />
        <node concept="385nmt" id="VU" role="385vvn">
          <property role="385vuF" value="BuildExternalLayoutDependency_Constraints" />
          <node concept="3u3nmq" id="VW" role="385v07">
            <property role="3u3nmv" value="7181125477683417258" />
          </node>
        </node>
        <node concept="39e2AT" id="VV" role="39e2AY">
          <ref role="39e2AS" node="30" resolve="BuildExternalLayoutDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vk" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOczS" resolve="BuildExternalLayout_Constraints" />
        <node concept="385nmt" id="VX" role="385vvn">
          <property role="385vuF" value="BuildExternalLayout_Constraints" />
          <node concept="3u3nmq" id="VZ" role="385v07">
            <property role="3u3nmv" value="7181125477683218680" />
          </node>
        </node>
        <node concept="39e2AT" id="VY" role="39e2AY">
          <ref role="39e2AS" node="3P" resolve="BuildExternalLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vl" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2fQZjorRIeV" resolve="BuildLayout_CompileOutputOf_Constraints" />
        <node concept="385nmt" id="W0" role="385vvn">
          <property role="385vuF" value="BuildLayout_CompileOutputOf_Constraints" />
          <node concept="3u3nmq" id="W2" role="385v07">
            <property role="3u3nmv" value="2591537044435952571" />
          </node>
        </node>
        <node concept="39e2AT" id="W1" role="39e2AY">
          <ref role="39e2AS" node="6E" resolve="BuildLayout_CompileOutputOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vm" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4lbsKRp2rj8" resolve="BuildLayout_Constraints" />
        <node concept="385nmt" id="W3" role="385vvn">
          <property role="385vuF" value="BuildLayout_Constraints" />
          <node concept="3u3nmq" id="W5" role="385v07">
            <property role="3u3nmv" value="4993211115183387848" />
          </node>
        </node>
        <node concept="39e2AT" id="W4" role="39e2AY">
          <ref role="39e2AS" node="8C" resolve="BuildLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vn" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOLH1" resolve="BuildLayout_FileStub_Constraints" />
        <node concept="385nmt" id="W6" role="385vvn">
          <property role="385vuF" value="BuildLayout_FileStub_Constraints" />
          <node concept="3u3nmq" id="W8" role="385v07">
            <property role="3u3nmv" value="7181125477683370817" />
          </node>
        </node>
        <node concept="39e2AT" id="W7" role="39e2AY">
          <ref role="39e2AS" node="a6" resolve="BuildLayout_FileStub_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vo" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2oE1c2bmP7S" resolve="BuildLayout_File_Constraints" />
        <node concept="385nmt" id="W9" role="385vvn">
          <property role="385vuF" value="BuildLayout_File_Constraints" />
          <node concept="3u3nmq" id="Wb" role="385v07">
            <property role="3u3nmv" value="2750015747481358840" />
          </node>
        </node>
        <node concept="39e2AT" id="Wa" role="39e2AY">
          <ref role="39e2AS" node="b$" resolve="BuildLayout_File_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vp" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6L3dtXewSTd" resolve="BuildLayout_Filemode_Constraints" />
        <node concept="385nmt" id="Wc" role="385vvn">
          <property role="385vuF" value="BuildLayout_Filemode_Constraints" />
          <node concept="3u3nmq" id="We" role="385v07">
            <property role="3u3nmv" value="7801138212747054669" />
          </node>
        </node>
        <node concept="39e2AT" id="Wd" role="39e2AY">
          <ref role="39e2AS" node="d5" resolve="BuildLayout_Filemode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vq" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6Iq8148gLJy" resolve="BuildLayout_FilesOf_Constraints" />
        <node concept="385nmt" id="Wf" role="385vvn">
          <property role="385vuF" value="BuildLayout_FilesOf_Constraints" />
          <node concept="3u3nmq" id="Wh" role="385v07">
            <property role="3u3nmv" value="7753544965996878818" />
          </node>
        </node>
        <node concept="39e2AT" id="Wg" role="39e2AY">
          <ref role="39e2AS" node="eJ" resolve="BuildLayout_FilesOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vr" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJC0pa" resolve="BuildLayout_ImportContent_Constraints" />
        <node concept="385nmt" id="Wi" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportContent_Constraints" />
          <node concept="3u3nmq" id="Wk" role="385v07">
            <property role="3u3nmv" value="5610619299013068362" />
          </node>
        </node>
        <node concept="39e2AT" id="Wj" role="39e2AY">
          <ref role="39e2AS" node="f$" resolve="BuildLayout_ImportContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vs" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7YLuv4UZ55R" resolve="BuildLayout_ImportTarContent_Constraints" />
        <node concept="385nmt" id="Wl" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportTarContent_Constraints" />
          <node concept="3u3nmq" id="Wn" role="385v07">
            <property role="3u3nmv" value="9201269590678327671" />
          </node>
        </node>
        <node concept="39e2AT" id="Wm" role="39e2AY">
          <ref role="39e2AS" node="iw" resolve="BuildLayout_ImportTarContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vt" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:IFRVVI4U7O" resolve="BuildLayout_Import_Constraints" />
        <node concept="385nmt" id="Wo" role="385vvn">
          <property role="385vuF" value="BuildLayout_Import_Constraints" />
          <node concept="3u3nmq" id="Wq" role="385v07">
            <property role="3u3nmv" value="841011766565773812" />
          </node>
        </node>
        <node concept="39e2AT" id="Wp" role="39e2AY">
          <ref role="39e2AS" node="jZ" resolve="BuildLayout_Import_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vu" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6uJjF_N_i1u" resolve="BuildLayout_JarManifest_Constraints" />
        <node concept="385nmt" id="Wr" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Constraints" />
          <node concept="3u3nmq" id="Wt" role="385v07">
            <property role="3u3nmv" value="7471276865246011486" />
          </node>
        </node>
        <node concept="39e2AT" id="Ws" role="39e2AY">
          <ref role="39e2AS" node="mz" resolve="BuildLayout_JarManifest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vv" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ro1ZztCjMX" resolve="BuildLayout_JarManifest_Section_Constraints" />
        <node concept="385nmt" id="Wu" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Section_Constraints" />
          <node concept="3u3nmq" id="Ww" role="385v07">
            <property role="3u3nmv" value="8563603456896613565" />
          </node>
        </node>
        <node concept="39e2AT" id="Wv" role="39e2AY">
          <ref role="39e2AS" node="oh" resolve="BuildLayout_JarManifest_Section_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vw" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:79gE8jhMyo7" resolve="BuildLayout_NamedContainer_Constraints" />
        <node concept="385nmt" id="Wx" role="385vvn">
          <property role="385vuF" value="BuildLayout_NamedContainer_Constraints" />
          <node concept="3u3nmq" id="Wz" role="385v07">
            <property role="3u3nmv" value="8237269006869472775" />
          </node>
        </node>
        <node concept="39e2AT" id="Wy" role="39e2AY">
          <ref role="39e2AS" node="pF" resolve="BuildLayout_NamedContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vx" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ndPoqgMcyj" resolve="BuildLayout_TarFiles_Constraints" />
        <node concept="385nmt" id="W$" role="385vvn">
          <property role="385vuF" value="BuildLayout_TarFiles_Constraints" />
          <node concept="3u3nmq" id="WA" role="385v07">
            <property role="3u3nmv" value="8488675646594664595" />
          </node>
        </node>
        <node concept="39e2AT" id="W_" role="39e2AY">
          <ref role="39e2AS" node="qz" resolve="BuildLayout_TarFiles_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vy" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7aqYYYFvA3Q" resolve="BuildProjectDependency_Constraints" />
        <node concept="385nmt" id="WB" role="385vvn">
          <property role="385vuF" value="BuildProjectDependency_Constraints" />
          <node concept="3u3nmq" id="WD" role="385v07">
            <property role="3u3nmv" value="8258189873530167542" />
          </node>
        </node>
        <node concept="39e2AT" id="WC" role="39e2AY">
          <ref role="39e2AS" node="s2" resolve="BuildProjectDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Vz" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6qcrfIJFCen" resolve="BuildSourceMacroRelativePath_Constraints" />
        <node concept="385nmt" id="WE" role="385vvn">
          <property role="385vuF" value="BuildSourceMacroRelativePath_Constraints" />
          <node concept="3u3nmq" id="WG" role="385v07">
            <property role="3u3nmv" value="7389400916848182167" />
          </node>
        </node>
        <node concept="39e2AT" id="WF" role="39e2AY">
          <ref role="39e2AS" node="sR" resolve="BuildSourceMacroRelativePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="V$" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0xy1" resolve="BuildSourcePath_Constraints" />
        <node concept="385nmt" id="WH" role="385vvn">
          <property role="385vuF" value="BuildSourcePath_Constraints" />
          <node concept="3u3nmq" id="WJ" role="385v07">
            <property role="3u3nmv" value="1258644073389103233" />
          </node>
        </node>
        <node concept="39e2AT" id="WI" role="39e2AY">
          <ref role="39e2AS" node="tG" resolve="BuildSourcePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="V_" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0x_r" resolve="BuildSource_JavaClassFolder_Constraints" />
        <node concept="385nmt" id="WK" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaClassFolder_Constraints" />
          <node concept="3u3nmq" id="WM" role="385v07">
            <property role="3u3nmv" value="1258644073389103451" />
          </node>
        </node>
        <node concept="39e2AT" id="WL" role="39e2AY">
          <ref role="39e2AS" node="u9" resolve="BuildSource_JavaClassFolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VA" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1lMM4owG7ds" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        <node concept="385nmt" id="WN" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaDependencyLibrary_Constraints" />
          <node concept="3u3nmq" id="WP" role="385v07">
            <property role="3u3nmv" value="1545517825663202140" />
          </node>
        </node>
        <node concept="39e2AT" id="WO" role="39e2AY">
          <ref role="39e2AS" node="vB" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VB" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJH_D7" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        <node concept="385nmt" id="WQ" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
          <node concept="3u3nmq" id="WS" role="385v07">
            <property role="3u3nmv" value="5610619299014531655" />
          </node>
        </node>
        <node concept="39e2AT" id="WR" role="39e2AY">
          <ref role="39e2AS" node="ws" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VC" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJGJpe" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        <node concept="385nmt" id="WT" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarRef_Constraints" />
          <node concept="3u3nmq" id="WV" role="385v07">
            <property role="3u3nmv" value="5610619299014309454" />
          </node>
        </node>
        <node concept="39e2AT" id="WU" role="39e2AY">
          <ref role="39e2AS" node="xX" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VD" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsVhw7" resolve="BuildSource_JavaLibrary_Constraints" />
        <node concept="385nmt" id="WW" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaLibrary_Constraints" />
          <node concept="3u3nmq" id="WY" role="385v07">
            <property role="3u3nmv" value="6647099934206924807" />
          </node>
        </node>
        <node concept="39e2AT" id="WX" role="39e2AY">
          <ref role="39e2AS" node="zu" resolve="BuildSource_JavaLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VE" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1s8OwvM5SHu" resolve="BuildSource_JavaModuleOptions_Constraints" />
        <node concept="385nmt" id="WZ" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModuleOptions_Constraints" />
          <node concept="3u3nmq" id="X1" role="385v07">
            <property role="3u3nmv" value="1659807394254261086" />
          </node>
        </node>
        <node concept="39e2AT" id="X0" role="39e2AY">
          <ref role="39e2AS" node="Af" resolve="BuildSource_JavaModuleOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VF" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsV9gD" resolve="BuildSource_JavaModule_Constraints" />
        <node concept="385nmt" id="X2" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModule_Constraints" />
          <node concept="3u3nmq" id="X4" role="385v07">
            <property role="3u3nmv" value="6647099934206891049" />
          </node>
        </node>
        <node concept="39e2AT" id="X3" role="39e2AY">
          <ref role="39e2AS" node="B4" resolve="BuildSource_JavaModule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VG" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:NvWe6DqvvW" resolve="BuildSource_JavaOptions_Constraints" />
        <node concept="385nmt" id="X5" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaOptions_Constraints" />
          <node concept="3u3nmq" id="X7" role="385v07">
            <property role="3u3nmv" value="927724900262213628" />
          </node>
        </node>
        <node concept="39e2AT" id="X6" role="39e2AY">
          <ref role="39e2AS" node="DP" resolve="BuildSource_JavaOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VH" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4zlO3QTaEjt" resolve="BuildSource_JavaSources_Constraints" />
        <node concept="385nmt" id="X8" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaSources_Constraints" />
          <node concept="3u3nmq" id="Xa" role="385v07">
            <property role="3u3nmv" value="5248329904288343261" />
          </node>
        </node>
        <node concept="39e2AT" id="X9" role="39e2AY">
          <ref role="39e2AS" node="GE" resolve="BuildSource_JavaSources_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VI" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3NagsOfUCJd" resolve="BuildStringPart_Constraints" />
        <node concept="385nmt" id="Xb" role="385vvn">
          <property role="385vuF" value="BuildStringPart_Constraints" />
          <node concept="3u3nmq" id="Xd" role="385v07">
            <property role="3u3nmv" value="4380385936562359245" />
          </node>
        </node>
        <node concept="39e2AT" id="Xc" role="39e2AY">
          <ref role="39e2AS" node="GV" resolve="BuildStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VJ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQz4Pt" resolve="BuildTextStringPart_Constraints" />
        <node concept="385nmt" id="Xe" role="385vvn">
          <property role="385vuF" value="BuildTextStringPart_Constraints" />
          <node concept="3u3nmq" id="Xg" role="385v07">
            <property role="3u3nmv" value="4903714810883755357" />
          </node>
        </node>
        <node concept="39e2AT" id="Xf" role="39e2AY">
          <ref role="39e2AS" node="Hc" resolve="BuildTextStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VK" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQyUx6" resolve="BuildVarRefStringPart_Constraints" />
        <node concept="385nmt" id="Xh" role="385vvn">
          <property role="385vuF" value="BuildVarRefStringPart_Constraints" />
          <node concept="3u3nmq" id="Xj" role="385v07">
            <property role="3u3nmv" value="4903714810883713094" />
          </node>
        </node>
        <node concept="39e2AT" id="Xi" role="39e2AY">
          <ref role="39e2AS" node="Jy" resolve="BuildVarRefStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VL" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiPAS1" resolve="BuildVariableMacroInitValue_Constraints" />
        <node concept="385nmt" id="Xk" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitValue_Constraints" />
          <node concept="3u3nmq" id="Xm" role="385v07">
            <property role="3u3nmv" value="244868996532694529" />
          </node>
        </node>
        <node concept="39e2AT" id="Xl" role="39e2AY">
          <ref role="39e2AS" node="Kn" resolve="BuildVariableMacroInitValue_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VM" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiOGfM" resolve="BuildVariableMacroInitWithDate_Constraints" />
        <node concept="385nmt" id="Xn" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitWithDate_Constraints" />
          <node concept="3u3nmq" id="Xp" role="385v07">
            <property role="3u3nmv" value="244868996532454386" />
          </node>
        </node>
        <node concept="39e2AT" id="Xo" role="39e2AY">
          <ref role="39e2AS" node="LL" resolve="BuildVariableMacroInitWithDate_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="VN" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5$qwiKF6jbo" resolve="BuildVariableMacro_Constraints" />
        <node concept="385nmt" id="Xq" role="385vvn">
          <property role="385vuF" value="BuildVariableMacro_Constraints" />
          <node concept="3u3nmq" id="Xs" role="385v07">
            <property role="3u3nmv" value="6420586245471679192" />
          </node>
        </node>
        <node concept="39e2AT" id="Xr" role="39e2AY">
          <ref role="39e2AS" node="Nm" resolve="BuildVariableMacro_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="T4" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="Xt" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="Xu" role="39e2AY">
          <ref role="39e2AS" node="ON" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
</model>

