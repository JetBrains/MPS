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
    <property role="TrG5h" value="BuildLayout_Import_Constraints" />
    <uo k="s:originTrace" v="n:841011766565773812" />
    <node concept="3Tm1VV" id="iu" role="1B3o_S">
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="3uibUv" id="iv" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="3clFbW" id="iw" role="jymVt">
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="37vLTG" id="i$" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="iB" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="3cqZAl" id="i_" role="3clF45">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3clFbS" id="iA" role="3clF47">
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="XkiVB" id="iC" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1BaE9c" id="iF" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_Import$wO" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2YIFZM" id="iH" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="11gdke" id="iI" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="11gdke" id="iJ" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="11gdke" id="iK" role="37wK5m">
                <property role="11gdj1" value="babdfbeee1350f2L" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
              <node concept="Xl_RD" id="iL" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_Import" />
                <uo k="s:originTrace" v="n:841011766565773812" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="iG" role="37wK5m">
            <ref role="3cqZAo" node="i$" resolve="initContext" />
            <uo k="s:originTrace" v="n:841011766565773812" />
          </node>
        </node>
        <node concept="3clFbF" id="iD" role="3cqZAp">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1rXfSq" id="iM" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="iN" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="1pGfFk" id="iO" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="jH" resolve="BuildLayout_Import_Constraints.RD1" />
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="Xjq3P" id="iP" role="37wK5m">
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="iE" role="3cqZAp">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="1rXfSq" id="iQ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="iR" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="YeOm9" id="iS" role="2ShVmc">
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="1Y3b0j" id="iT" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                  <node concept="3Tm1VV" id="iU" role="1B3o_S">
                    <uo k="s:originTrace" v="n:841011766565773812" />
                  </node>
                  <node concept="3clFb_" id="iV" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:841011766565773812" />
                    <node concept="3Tm1VV" id="iY" role="1B3o_S">
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="2AHcQZ" id="iZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="3uibUv" id="j0" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                    </node>
                    <node concept="37vLTG" id="j1" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3uibUv" id="j4" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="2AHcQZ" id="j5" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="j2" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3uibUv" id="j6" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="2AHcQZ" id="j7" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="j3" role="3clF47">
                      <uo k="s:originTrace" v="n:841011766565773812" />
                      <node concept="3cpWs8" id="j8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="3cpWsn" id="jd" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="10P_77" id="je" role="1tU5fm">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                          </node>
                          <node concept="1rXfSq" id="jf" role="33vP2m">
                            <ref role="37wK5l" node="iz" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="2OqwBi" id="jg" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="jk" role="2Oq$k0">
                                <ref role="3cqZAo" node="j1" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="jl" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jh" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="jm" role="2Oq$k0">
                                <ref role="3cqZAo" node="j1" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="jn" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ji" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="jo" role="2Oq$k0">
                                <ref role="3cqZAo" node="j1" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="jp" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jj" role="37wK5m">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="jq" role="2Oq$k0">
                                <ref role="3cqZAo" node="j1" resolve="context" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="jr" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="j9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="3clFbJ" id="ja" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="3clFbS" id="js" role="3clFbx">
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="3clFbF" id="ju" role="3cqZAp">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="2OqwBi" id="jv" role="3clFbG">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                              <node concept="37vLTw" id="jw" role="2Oq$k0">
                                <ref role="3cqZAo" node="j2" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                              </node>
                              <node concept="liA8E" id="jx" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:841011766565773812" />
                                <node concept="1dyn4i" id="jy" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:841011766565773812" />
                                  <node concept="2ShNRf" id="jz" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:841011766565773812" />
                                    <node concept="1pGfFk" id="j$" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:841011766565773812" />
                                      <node concept="Xl_RD" id="j_" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:841011766565773812" />
                                      </node>
                                      <node concept="Xl_RD" id="jA" role="37wK5m">
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
                        <node concept="1Wc70l" id="jt" role="3clFbw">
                          <uo k="s:originTrace" v="n:841011766565773812" />
                          <node concept="3y3z36" id="jB" role="3uHU7w">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="10Nm6u" id="jD" role="3uHU7w">
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                            <node concept="37vLTw" id="jE" role="3uHU7B">
                              <ref role="3cqZAo" node="j2" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="jC" role="3uHU7B">
                            <uo k="s:originTrace" v="n:841011766565773812" />
                            <node concept="37vLTw" id="jF" role="3fr31v">
                              <ref role="3cqZAo" node="jd" resolve="result" />
                              <uo k="s:originTrace" v="n:841011766565773812" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="jb" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                      </node>
                      <node concept="3clFbF" id="jc" role="3cqZAp">
                        <uo k="s:originTrace" v="n:841011766565773812" />
                        <node concept="37vLTw" id="jG" role="3clFbG">
                          <ref role="3cqZAo" node="jd" resolve="result" />
                          <uo k="s:originTrace" v="n:841011766565773812" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="iW" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:841011766565773812" />
                  </node>
                  <node concept="3uibUv" id="iX" role="2Ghqu4">
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
    <node concept="2tJIrI" id="ix" role="jymVt">
      <uo k="s:originTrace" v="n:841011766565773812" />
    </node>
    <node concept="312cEu" id="iy" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="3clFbW" id="jH" role="jymVt">
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="37vLTG" id="jK" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="3uibUv" id="jN" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:841011766565773812" />
          </node>
        </node>
        <node concept="3cqZAl" id="jL" role="3clF45">
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3clFbS" id="jM" role="3clF47">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="XkiVB" id="jO" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="1BaE9c" id="jP" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$AFU4" />
              <uo k="s:originTrace" v="n:841011766565773812" />
              <node concept="2YIFZM" id="jT" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:841011766565773812" />
                <node concept="11gdke" id="jU" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="jV" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="jW" role="37wK5m">
                  <property role="11gdj1" value="babdfbeee1350f2L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="11gdke" id="jX" role="37wK5m">
                  <property role="11gdj1" value="babdfbeee1350f4L" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
                <node concept="Xl_RD" id="jY" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:841011766565773812" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="jQ" role="37wK5m">
              <ref role="3cqZAo" node="jK" resolve="container" />
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
            <node concept="3clFbT" id="jR" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
            <node concept="3clFbT" id="jS" role="37wK5m">
              <uo k="s:originTrace" v="n:841011766565773812" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="jI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3Tm1VV" id="jZ" role="1B3o_S">
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3uibUv" id="k0" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="2AHcQZ" id="k1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
        <node concept="3clFbS" id="k2" role="3clF47">
          <uo k="s:originTrace" v="n:841011766565773812" />
          <node concept="3cpWs6" id="k4" role="3cqZAp">
            <uo k="s:originTrace" v="n:841011766565773812" />
            <node concept="2ShNRf" id="k5" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840463" />
              <node concept="YeOm9" id="k6" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840463" />
                <node concept="1Y3b0j" id="k7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840463" />
                  <node concept="3Tm1VV" id="k8" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                  </node>
                  <node concept="3clFb_" id="k9" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                    <node concept="3Tm1VV" id="kb" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3uibUv" id="kc" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3clFbS" id="kd" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3cpWs6" id="kf" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840463" />
                        <node concept="2ShNRf" id="kg" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840463" />
                          <node concept="1pGfFk" id="kh" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840463" />
                            <node concept="Xl_RD" id="ki" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840463" />
                            </node>
                            <node concept="Xl_RD" id="kj" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840463" />
                              <uo k="s:originTrace" v="n:6836281137582840463" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ke" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="ka" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840463" />
                    <node concept="3Tm1VV" id="kk" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="3uibUv" id="kl" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                    <node concept="37vLTG" id="km" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3uibUv" id="kp" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840463" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="kn" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                      <node concept="3cpWs8" id="kq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840465" />
                        <node concept="3cpWsn" id="kt" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840466" />
                          <node concept="3Tqbb2" id="ku" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840467" />
                          </node>
                          <node concept="2OqwBi" id="kv" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840468" />
                            <node concept="1DoJHT" id="kw" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840469" />
                              <node concept="3uibUv" id="ky" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="kz" role="1EMhIo">
                                <ref role="3cqZAo" node="km" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="kx" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840470" />
                              <node concept="1xMEDy" id="k$" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840471" />
                                <node concept="chp4Y" id="kA" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840472" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="k_" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840473" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="kr" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840474" />
                        <node concept="3clFbS" id="kB" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840475" />
                          <node concept="3cpWs6" id="kD" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840476" />
                            <node concept="2YIFZM" id="kE" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:1bWeed$o7s2" resolve="getVisibleArtifactsScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840477" />
                              <node concept="37vLTw" id="kF" role="37wK5m">
                                <ref role="3cqZAo" node="kt" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840478" />
                              </node>
                              <node concept="3clFbT" id="kG" role="37wK5m">
                                <property role="3clFbU" value="false" />
                                <uo k="s:originTrace" v="n:6836281137582840479" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="kC" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840480" />
                          <node concept="37vLTw" id="kH" role="2Oq$k0">
                            <ref role="3cqZAo" node="kt" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840481" />
                          </node>
                          <node concept="3x8VRR" id="kI" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840482" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="ks" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840483" />
                        <node concept="2ShNRf" id="kJ" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840484" />
                          <node concept="1pGfFk" id="kK" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                            <uo k="s:originTrace" v="n:6836281137582840485" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ko" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840463" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="k3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="3uibUv" id="jJ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
    </node>
    <node concept="2YIFZL" id="iz" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:841011766565773812" />
      <node concept="10P_77" id="kL" role="3clF45">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3Tm6S6" id="kM" role="1B3o_S">
        <uo k="s:originTrace" v="n:841011766565773812" />
      </node>
      <node concept="3clFbS" id="kN" role="3clF47">
        <uo k="s:originTrace" v="n:3576430657785403306" />
        <node concept="3clFbF" id="kS" role="3cqZAp">
          <uo k="s:originTrace" v="n:3576430657785407062" />
          <node concept="2OqwBi" id="kT" role="3clFbG">
            <uo k="s:originTrace" v="n:3576430657785407869" />
            <node concept="37vLTw" id="kU" role="2Oq$k0">
              <ref role="3cqZAo" node="kP" resolve="parentNode" />
              <uo k="s:originTrace" v="n:3576430657785407061" />
            </node>
            <node concept="1mIQ4w" id="kV" role="2OqNvi">
              <uo k="s:originTrace" v="n:3576430657785415135" />
              <node concept="chp4Y" id="kW" role="cj9EA">
                <ref role="cht4Q" to="3ior:450ejGzh8b3" resolve="BuildLayout_Container" />
                <uo k="s:originTrace" v="n:3576430657785415295" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="kO" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="kX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="kP" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="kY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="kQ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="kZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
      <node concept="37vLTG" id="kR" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:841011766565773812" />
        <node concept="3uibUv" id="l0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:841011766565773812" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="l1">
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Constraints" />
    <uo k="s:originTrace" v="n:7471276865246011486" />
    <node concept="3Tm1VV" id="l2" role="1B3o_S">
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="3uibUv" id="l3" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="3clFbW" id="l4" role="jymVt">
      <uo k="s:originTrace" v="n:7471276865246011486" />
      <node concept="37vLTG" id="l7" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="la" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="3cqZAl" id="l8" role="3clF45">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3clFbS" id="l9" role="3clF47">
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="XkiVB" id="lb" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
          <node concept="1BaE9c" id="ld" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_JarManifest$lZ" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
            <node concept="2YIFZM" id="lf" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7471276865246011486" />
              <node concept="11gdke" id="lg" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="11gdke" id="lh" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="11gdke" id="li" role="37wK5m">
                <property role="11gdj1" value="115d3b22faf20f2eL" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
              <node concept="Xl_RD" id="lj" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_JarManifest" />
                <uo k="s:originTrace" v="n:7471276865246011486" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="le" role="37wK5m">
            <ref role="3cqZAo" node="l7" resolve="initContext" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
          </node>
        </node>
        <node concept="3clFbF" id="lc" role="3cqZAp">
          <uo k="s:originTrace" v="n:7471276865246011486" />
          <node concept="1rXfSq" id="lk" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7471276865246011486" />
            <node concept="2ShNRf" id="ll" role="37wK5m">
              <uo k="s:originTrace" v="n:7471276865246011486" />
              <node concept="YeOm9" id="lm" role="2ShVmc">
                <uo k="s:originTrace" v="n:7471276865246011486" />
                <node concept="1Y3b0j" id="ln" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7471276865246011486" />
                  <node concept="3Tm1VV" id="lo" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                  </node>
                  <node concept="3clFb_" id="lp" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                    <node concept="3Tm1VV" id="ls" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="2AHcQZ" id="lt" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="3uibUv" id="lu" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                    </node>
                    <node concept="37vLTG" id="lv" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3uibUv" id="ly" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="2AHcQZ" id="lz" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="lw" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3uibUv" id="l$" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="2AHcQZ" id="l_" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="lx" role="3clF47">
                      <uo k="s:originTrace" v="n:7471276865246011486" />
                      <node concept="3cpWs8" id="lA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="3cpWsn" id="lF" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="10P_77" id="lG" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                          </node>
                          <node concept="1rXfSq" id="lH" role="33vP2m">
                            <ref role="37wK5l" node="l6" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="2OqwBi" id="lI" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="lM" role="2Oq$k0">
                                <ref role="3cqZAo" node="lv" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="lN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="lJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="lO" role="2Oq$k0">
                                <ref role="3cqZAo" node="lv" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="lP" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="lK" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="lQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="lv" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="lR" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="lL" role="37wK5m">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="lS" role="2Oq$k0">
                                <ref role="3cqZAo" node="lv" resolve="context" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="lT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="lB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="3clFbJ" id="lC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="3clFbS" id="lU" role="3clFbx">
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="3clFbF" id="lW" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="2OqwBi" id="lX" role="3clFbG">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                              <node concept="37vLTw" id="lY" role="2Oq$k0">
                                <ref role="3cqZAo" node="lw" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                              </node>
                              <node concept="liA8E" id="lZ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7471276865246011486" />
                                <node concept="1dyn4i" id="m0" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7471276865246011486" />
                                  <node concept="2ShNRf" id="m1" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7471276865246011486" />
                                    <node concept="1pGfFk" id="m2" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7471276865246011486" />
                                      <node concept="Xl_RD" id="m3" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:7471276865246011486" />
                                      </node>
                                      <node concept="Xl_RD" id="m4" role="37wK5m">
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
                        <node concept="1Wc70l" id="lV" role="3clFbw">
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                          <node concept="3y3z36" id="m5" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="10Nm6u" id="m7" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                            <node concept="37vLTw" id="m8" role="3uHU7B">
                              <ref role="3cqZAo" node="lw" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="m6" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7471276865246011486" />
                            <node concept="37vLTw" id="m9" role="3fr31v">
                              <ref role="3cqZAo" node="lF" resolve="result" />
                              <uo k="s:originTrace" v="n:7471276865246011486" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="lD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                      </node>
                      <node concept="3clFbF" id="lE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7471276865246011486" />
                        <node concept="37vLTw" id="ma" role="3clFbG">
                          <ref role="3cqZAo" node="lF" resolve="result" />
                          <uo k="s:originTrace" v="n:7471276865246011486" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="lq" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7471276865246011486" />
                  </node>
                  <node concept="3uibUv" id="lr" role="2Ghqu4">
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
    <node concept="2tJIrI" id="l5" role="jymVt">
      <uo k="s:originTrace" v="n:7471276865246011486" />
    </node>
    <node concept="2YIFZL" id="l6" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7471276865246011486" />
      <node concept="10P_77" id="mb" role="3clF45">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3Tm6S6" id="mc" role="1B3o_S">
        <uo k="s:originTrace" v="n:7471276865246011486" />
      </node>
      <node concept="3clFbS" id="md" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580358" />
        <node concept="3clFbJ" id="mi" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580359" />
          <node concept="3clFbS" id="mk" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536580360" />
            <node concept="3cpWs6" id="mm" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536580361" />
              <node concept="2OqwBi" id="mn" role="3cqZAk">
                <uo k="s:originTrace" v="n:1227128029536580362" />
                <node concept="2OqwBi" id="mo" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536580363" />
                  <node concept="2OqwBi" id="mq" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580364" />
                    <node concept="37vLTw" id="ms" role="2Oq$k0">
                      <ref role="3cqZAo" node="me" resolve="node" />
                      <uo k="s:originTrace" v="n:1227128029536580365" />
                    </node>
                    <node concept="2Ttrtt" id="mt" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1227128029536580366" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="mr" role="2OqNvi">
                    <uo k="s:originTrace" v="n:1227128029536580367" />
                    <node concept="1bVj0M" id="mu" role="23t8la">
                      <uo k="s:originTrace" v="n:1227128029536580368" />
                      <node concept="3clFbS" id="mv" role="1bW5cS">
                        <uo k="s:originTrace" v="n:1227128029536580369" />
                        <node concept="3clFbF" id="mx" role="3cqZAp">
                          <uo k="s:originTrace" v="n:1227128029536580370" />
                          <node concept="2OqwBi" id="my" role="3clFbG">
                            <uo k="s:originTrace" v="n:1227128029536580371" />
                            <node concept="37vLTw" id="mz" role="2Oq$k0">
                              <ref role="3cqZAo" node="mw" resolve="it" />
                              <uo k="s:originTrace" v="n:1227128029536580372" />
                            </node>
                            <node concept="1mIQ4w" id="m$" role="2OqNvi">
                              <uo k="s:originTrace" v="n:1227128029536580373" />
                              <node concept="chp4Y" id="m_" role="cj9EA">
                                <ref role="cht4Q" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
                                <uo k="s:originTrace" v="n:1227128029536580374" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="mw" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <uo k="s:originTrace" v="n:6847626768367733738" />
                        <node concept="2jxLKc" id="mA" role="1tU5fm">
                          <uo k="s:originTrace" v="n:6847626768367733739" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="mp" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580377" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ml" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536580378" />
            <node concept="37vLTw" id="mB" role="2Oq$k0">
              <ref role="3cqZAo" node="mf" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580379" />
            </node>
            <node concept="1mIQ4w" id="mC" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580380" />
              <node concept="chp4Y" id="mD" role="cj9EA">
                <ref role="cht4Q" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
                <uo k="s:originTrace" v="n:1227128029536580381" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mj" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580382" />
          <node concept="3clFbT" id="mE" role="3clFbG">
            <property role="3clFbU" value="true" />
            <uo k="s:originTrace" v="n:1227128029536580383" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="me" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="mF" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="mf" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="mG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="mg" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="mH" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
      <node concept="37vLTG" id="mh" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7471276865246011486" />
        <node concept="3uibUv" id="mI" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7471276865246011486" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="mJ">
    <property role="3GE5qa" value="Layout.Java.Manifest" />
    <property role="TrG5h" value="BuildLayout_JarManifest_Section_Constraints" />
    <uo k="s:originTrace" v="n:8563603456896613565" />
    <node concept="3Tm1VV" id="mK" role="1B3o_S">
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="3uibUv" id="mL" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="3clFbW" id="mM" role="jymVt">
      <uo k="s:originTrace" v="n:8563603456896613565" />
      <node concept="37vLTG" id="mP" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="mS" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="3cqZAl" id="mQ" role="3clF45">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3clFbS" id="mR" role="3clF47">
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="XkiVB" id="mT" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
          <node concept="1BaE9c" id="mV" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_JarManifest_Section$63" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
            <node concept="2YIFZM" id="mX" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8563603456896613565" />
              <node concept="11gdke" id="mY" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="11gdke" id="mZ" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="11gdke" id="n0" role="37wK5m">
                <property role="11gdj1" value="115d3b22faf47d7bL" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
              <node concept="Xl_RD" id="n1" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_JarManifest_Section" />
                <uo k="s:originTrace" v="n:8563603456896613565" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="mW" role="37wK5m">
            <ref role="3cqZAo" node="mP" resolve="initContext" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
          </node>
        </node>
        <node concept="3clFbF" id="mU" role="3cqZAp">
          <uo k="s:originTrace" v="n:8563603456896613565" />
          <node concept="1rXfSq" id="n2" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:8563603456896613565" />
            <node concept="2ShNRf" id="n3" role="37wK5m">
              <uo k="s:originTrace" v="n:8563603456896613565" />
              <node concept="YeOm9" id="n4" role="2ShVmc">
                <uo k="s:originTrace" v="n:8563603456896613565" />
                <node concept="1Y3b0j" id="n5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:8563603456896613565" />
                  <node concept="3Tm1VV" id="n6" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                  </node>
                  <node concept="3clFb_" id="n7" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                    <node concept="3Tm1VV" id="na" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="2AHcQZ" id="nb" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="3uibUv" id="nc" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                    </node>
                    <node concept="37vLTG" id="nd" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3uibUv" id="ng" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="2AHcQZ" id="nh" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="ne" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3uibUv" id="ni" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="2AHcQZ" id="nj" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="nf" role="3clF47">
                      <uo k="s:originTrace" v="n:8563603456896613565" />
                      <node concept="3cpWs8" id="nk" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="3cpWsn" id="np" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="10P_77" id="nq" role="1tU5fm">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                          </node>
                          <node concept="1rXfSq" id="nr" role="33vP2m">
                            <ref role="37wK5l" node="mO" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="2OqwBi" id="ns" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="nw" role="2Oq$k0">
                                <ref role="3cqZAo" node="nd" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="nx" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nt" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="ny" role="2Oq$k0">
                                <ref role="3cqZAo" node="nd" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="nz" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nu" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="n$" role="2Oq$k0">
                                <ref role="3cqZAo" node="nd" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="n_" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="nv" role="37wK5m">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="nA" role="2Oq$k0">
                                <ref role="3cqZAo" node="nd" resolve="context" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="nB" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="nl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="3clFbJ" id="nm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="3clFbS" id="nC" role="3clFbx">
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="3clFbF" id="nE" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="2OqwBi" id="nF" role="3clFbG">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                              <node concept="37vLTw" id="nG" role="2Oq$k0">
                                <ref role="3cqZAo" node="ne" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                              </node>
                              <node concept="liA8E" id="nH" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:8563603456896613565" />
                                <node concept="1dyn4i" id="nI" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:8563603456896613565" />
                                  <node concept="2ShNRf" id="nJ" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:8563603456896613565" />
                                    <node concept="1pGfFk" id="nK" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8563603456896613565" />
                                      <node concept="Xl_RD" id="nL" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:8563603456896613565" />
                                      </node>
                                      <node concept="Xl_RD" id="nM" role="37wK5m">
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
                        <node concept="1Wc70l" id="nD" role="3clFbw">
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                          <node concept="3y3z36" id="nN" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="10Nm6u" id="nP" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                            <node concept="37vLTw" id="nQ" role="3uHU7B">
                              <ref role="3cqZAo" node="ne" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="nO" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8563603456896613565" />
                            <node concept="37vLTw" id="nR" role="3fr31v">
                              <ref role="3cqZAo" node="np" resolve="result" />
                              <uo k="s:originTrace" v="n:8563603456896613565" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="nn" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                      </node>
                      <node concept="3clFbF" id="no" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8563603456896613565" />
                        <node concept="37vLTw" id="nS" role="3clFbG">
                          <ref role="3cqZAo" node="np" resolve="result" />
                          <uo k="s:originTrace" v="n:8563603456896613565" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="n8" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:8563603456896613565" />
                  </node>
                  <node concept="3uibUv" id="n9" role="2Ghqu4">
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
    <node concept="2tJIrI" id="mN" role="jymVt">
      <uo k="s:originTrace" v="n:8563603456896613565" />
    </node>
    <node concept="2YIFZL" id="mO" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:8563603456896613565" />
      <node concept="10P_77" id="nT" role="3clF45">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3Tm6S6" id="nU" role="1B3o_S">
        <uo k="s:originTrace" v="n:8563603456896613565" />
      </node>
      <node concept="3clFbS" id="nV" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580425" />
        <node concept="3clFbF" id="o0" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580426" />
          <node concept="2OqwBi" id="o1" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580427" />
            <node concept="37vLTw" id="o2" role="2Oq$k0">
              <ref role="3cqZAo" node="nX" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580428" />
            </node>
            <node concept="1mIQ4w" id="o3" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580429" />
              <node concept="chp4Y" id="o4" role="cj9EA">
                <ref role="cht4Q" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
                <uo k="s:originTrace" v="n:1227128029536580430" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="nW" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="o5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="nX" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="o6" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="nY" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="o7" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
      <node concept="37vLTG" id="nZ" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:8563603456896613565" />
        <node concept="3uibUv" id="o8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:8563603456896613565" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="o9">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="BuildLayout_NamedContainer_Constraints" />
    <uo k="s:originTrace" v="n:8237269006869472775" />
    <node concept="3Tm1VV" id="oa" role="1B3o_S">
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="3uibUv" id="ob" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="3clFbW" id="oc" role="jymVt">
      <uo k="s:originTrace" v="n:8237269006869472775" />
      <node concept="37vLTG" id="of" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3uibUv" id="oi" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
      </node>
      <node concept="3cqZAl" id="og" role="3clF45">
        <uo k="s:originTrace" v="n:8237269006869472775" />
      </node>
      <node concept="3clFbS" id="oh" role="3clF47">
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="XkiVB" id="oj" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="1BaE9c" id="ol" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_NamedContainer$Ug" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="2YIFZM" id="on" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="11gdke" id="oo" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="11gdke" id="op" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="11gdke" id="oq" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafac7f8cL" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
              <node concept="Xl_RD" id="or" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_NamedContainer" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="om" role="37wK5m">
            <ref role="3cqZAo" node="of" resolve="initContext" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
        <node concept="3clFbF" id="ok" role="3cqZAp">
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="1rXfSq" id="os" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="2ShNRf" id="ot" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="1pGfFk" id="ou" role="2ShVmc">
                <ref role="37wK5l" node="ow" resolve="BuildLayout_NamedContainer_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
                <node concept="Xjq3P" id="ov" role="37wK5m">
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="od" role="jymVt">
      <uo k="s:originTrace" v="n:8237269006869472775" />
    </node>
    <node concept="312cEu" id="oe" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:8237269006869472775" />
      <node concept="3clFbW" id="ow" role="jymVt">
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3cqZAl" id="oz" role="3clF45">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3Tm1VV" id="o$" role="1B3o_S">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3clFbS" id="o_" role="3clF47">
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="XkiVB" id="oB" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
            <node concept="1BaE9c" id="oC" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
              <node concept="2YIFZM" id="oH" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8237269006869472775" />
                <node concept="11gdke" id="oI" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="oJ" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="oK" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="11gdke" id="oL" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
                <node concept="Xl_RD" id="oM" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:8237269006869472775" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="oD" role="37wK5m">
              <ref role="3cqZAo" node="oA" resolve="container" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="oE" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="oF" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
            <node concept="3clFbT" id="oG" role="37wK5m">
              <uo k="s:originTrace" v="n:8237269006869472775" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="oA" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="3uibUv" id="oN" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ox" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
        <node concept="3Tm1VV" id="oO" role="1B3o_S">
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3uibUv" id="oP" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="37vLTG" id="oQ" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
          <node concept="3Tqbb2" id="oT" role="1tU5fm">
            <uo k="s:originTrace" v="n:8237269006869472775" />
          </node>
        </node>
        <node concept="2AHcQZ" id="oR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8237269006869472775" />
        </node>
        <node concept="3clFbS" id="oS" role="3clF47">
          <uo k="s:originTrace" v="n:8237269006869507402" />
          <node concept="3clFbF" id="oU" role="3cqZAp">
            <uo k="s:originTrace" v="n:4380385936562211615" />
            <node concept="2OqwBi" id="oV" role="3clFbG">
              <uo k="s:originTrace" v="n:4380385936562211629" />
              <node concept="2OqwBi" id="oW" role="2Oq$k0">
                <uo k="s:originTrace" v="n:4380385936562211619" />
                <node concept="37vLTw" id="oY" role="2Oq$k0">
                  <ref role="3cqZAo" node="oQ" resolve="node" />
                  <uo k="s:originTrace" v="n:4380385936562211616" />
                </node>
                <node concept="3TrEf2" id="oZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="3ior:3NagsOfTPim" resolve="containerName" />
                  <uo k="s:originTrace" v="n:4380385936562211625" />
                </node>
              </node>
              <node concept="3zqWPK" id="oX" role="2OqNvi">
                <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                <uo k="s:originTrace" v="n:8085146484218851487" />
                <node concept="10Nm6u" id="p0" role="37wK5m">
                  <uo k="s:originTrace" v="n:8085146484218851489" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oy" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8237269006869472775" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="p1">
    <property role="3GE5qa" value="Layout.File" />
    <property role="TrG5h" value="BuildLayout_TarFiles_Constraints" />
    <uo k="s:originTrace" v="n:8488675646594664595" />
    <node concept="3Tm1VV" id="p2" role="1B3o_S">
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="3uibUv" id="p3" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="3clFbW" id="p4" role="jymVt">
      <uo k="s:originTrace" v="n:8488675646594664595" />
      <node concept="37vLTG" id="p7" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="pa" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="3cqZAl" id="p8" role="3clF45">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3clFbS" id="p9" role="3clF47">
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="XkiVB" id="pb" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
          <node concept="1BaE9c" id="pd" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildLayout_TarFiles$1e" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
            <node concept="2YIFZM" id="pf" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8488675646594664595" />
              <node concept="11gdke" id="pg" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="11gdke" id="ph" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="11gdke" id="pi" role="37wK5m">
                <property role="11gdj1" value="75cdd58690c86fecL" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
              <node concept="Xl_RD" id="pj" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildLayout_TarFiles" />
                <uo k="s:originTrace" v="n:8488675646594664595" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="pe" role="37wK5m">
            <ref role="3cqZAo" node="p7" resolve="initContext" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
          </node>
        </node>
        <node concept="3clFbF" id="pc" role="3cqZAp">
          <uo k="s:originTrace" v="n:8488675646594664595" />
          <node concept="1rXfSq" id="pk" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:8488675646594664595" />
            <node concept="2ShNRf" id="pl" role="37wK5m">
              <uo k="s:originTrace" v="n:8488675646594664595" />
              <node concept="YeOm9" id="pm" role="2ShVmc">
                <uo k="s:originTrace" v="n:8488675646594664595" />
                <node concept="1Y3b0j" id="pn" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:8488675646594664595" />
                  <node concept="3Tm1VV" id="po" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                  </node>
                  <node concept="3clFb_" id="pp" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                    <node concept="3Tm1VV" id="ps" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="2AHcQZ" id="pt" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="3uibUv" id="pu" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                    </node>
                    <node concept="37vLTG" id="pv" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3uibUv" id="py" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="2AHcQZ" id="pz" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="pw" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3uibUv" id="p$" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="2AHcQZ" id="p_" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="px" role="3clF47">
                      <uo k="s:originTrace" v="n:8488675646594664595" />
                      <node concept="3cpWs8" id="pA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="3cpWsn" id="pF" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="10P_77" id="pG" role="1tU5fm">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                          </node>
                          <node concept="1rXfSq" id="pH" role="33vP2m">
                            <ref role="37wK5l" node="p6" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="2OqwBi" id="pI" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="pM" role="2Oq$k0">
                                <ref role="3cqZAo" node="pv" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="pN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="pO" role="2Oq$k0">
                                <ref role="3cqZAo" node="pv" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="pP" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pK" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="pQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="pv" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="pR" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pL" role="37wK5m">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="pS" role="2Oq$k0">
                                <ref role="3cqZAo" node="pv" resolve="context" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="pT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="pB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="3clFbJ" id="pC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="3clFbS" id="pU" role="3clFbx">
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="3clFbF" id="pW" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="2OqwBi" id="pX" role="3clFbG">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                              <node concept="37vLTw" id="pY" role="2Oq$k0">
                                <ref role="3cqZAo" node="pw" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                              </node>
                              <node concept="liA8E" id="pZ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:8488675646594664595" />
                                <node concept="1dyn4i" id="q0" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:8488675646594664595" />
                                  <node concept="2ShNRf" id="q1" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:8488675646594664595" />
                                    <node concept="1pGfFk" id="q2" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8488675646594664595" />
                                      <node concept="Xl_RD" id="q3" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:8488675646594664595" />
                                      </node>
                                      <node concept="Xl_RD" id="q4" role="37wK5m">
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
                        <node concept="1Wc70l" id="pV" role="3clFbw">
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                          <node concept="3y3z36" id="q5" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="10Nm6u" id="q7" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                            <node concept="37vLTw" id="q8" role="3uHU7B">
                              <ref role="3cqZAo" node="pw" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="q6" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8488675646594664595" />
                            <node concept="37vLTw" id="q9" role="3fr31v">
                              <ref role="3cqZAo" node="pF" resolve="result" />
                              <uo k="s:originTrace" v="n:8488675646594664595" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="pD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                      </node>
                      <node concept="3clFbF" id="pE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8488675646594664595" />
                        <node concept="37vLTw" id="qa" role="3clFbG">
                          <ref role="3cqZAo" node="pF" resolve="result" />
                          <uo k="s:originTrace" v="n:8488675646594664595" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="pq" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:8488675646594664595" />
                  </node>
                  <node concept="3uibUv" id="pr" role="2Ghqu4">
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
    <node concept="2tJIrI" id="p5" role="jymVt">
      <uo k="s:originTrace" v="n:8488675646594664595" />
    </node>
    <node concept="2YIFZL" id="p6" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:8488675646594664595" />
      <node concept="10P_77" id="qb" role="3clF45">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3Tm6S6" id="qc" role="1B3o_S">
        <uo k="s:originTrace" v="n:8488675646594664595" />
      </node>
      <node concept="3clFbS" id="qd" role="3clF47">
        <uo k="s:originTrace" v="n:8488675646594664643" />
        <node concept="3clFbF" id="qi" role="3cqZAp">
          <uo k="s:originTrace" v="n:8488675646594664644" />
          <node concept="2OqwBi" id="qj" role="3clFbG">
            <uo k="s:originTrace" v="n:8488675646594664645" />
            <node concept="37vLTw" id="qk" role="2Oq$k0">
              <ref role="3cqZAo" node="qf" resolve="parentNode" />
              <uo k="s:originTrace" v="n:8488675646594664646" />
            </node>
            <node concept="1mIQ4w" id="ql" role="2OqNvi">
              <uo k="s:originTrace" v="n:8488675646594664647" />
              <node concept="chp4Y" id="qm" role="cj9EA">
                <ref role="cht4Q" to="3ior:7s9W5cEkA83" resolve="BuildLayout_Tar" />
                <uo k="s:originTrace" v="n:8488675646594664648" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qe" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="qn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="qf" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="qo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="qg" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="qp" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
      <node concept="37vLTG" id="qh" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:8488675646594664595" />
        <node concept="3uibUv" id="qq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:8488675646594664595" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qr">
    <property role="3GE5qa" value="Dependencies" />
    <property role="TrG5h" value="BuildProjectDependency_Constraints" />
    <uo k="s:originTrace" v="n:8258189873530167542" />
    <node concept="3Tm1VV" id="qs" role="1B3o_S">
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="3uibUv" id="qt" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="3clFbW" id="qu" role="jymVt">
      <uo k="s:originTrace" v="n:8258189873530167542" />
      <node concept="37vLTG" id="qx" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="3uibUv" id="q$" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
      </node>
      <node concept="3cqZAl" id="qy" role="3clF45">
        <uo k="s:originTrace" v="n:8258189873530167542" />
      </node>
      <node concept="3clFbS" id="qz" role="3clF47">
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="XkiVB" id="q_" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="1BaE9c" id="qB" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildProjectDependency$sN" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2YIFZM" id="qD" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="11gdke" id="qE" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="11gdke" id="qF" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="11gdke" id="qG" role="37wK5m">
                <property role="11gdj1" value="454b730dd908c220L" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
              <node concept="Xl_RD" id="qH" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildProjectDependency" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="qC" role="37wK5m">
            <ref role="3cqZAo" node="qx" resolve="initContext" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
          </node>
        </node>
        <node concept="3clFbF" id="qA" role="3cqZAp">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="1rXfSq" id="qI" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2ShNRf" id="qJ" role="37wK5m">
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="1pGfFk" id="qK" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="qM" resolve="BuildProjectDependency_Constraints.RD1" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
                <node concept="Xjq3P" id="qL" role="37wK5m">
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qv" role="jymVt">
      <uo k="s:originTrace" v="n:8258189873530167542" />
    </node>
    <node concept="312cEu" id="qw" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:8258189873530167542" />
      <node concept="3clFbW" id="qM" role="jymVt">
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="37vLTG" id="qP" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="3uibUv" id="qS" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
          </node>
        </node>
        <node concept="3cqZAl" id="qQ" role="3clF45">
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3clFbS" id="qR" role="3clF47">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="XkiVB" id="qT" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="1BaE9c" id="qU" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="script$6Ehy" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
              <node concept="2YIFZM" id="qY" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8258189873530167542" />
                <node concept="11gdke" id="qZ" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="r0" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="r1" role="37wK5m">
                  <property role="11gdj1" value="454b730dd908c220L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="11gdke" id="r2" role="37wK5m">
                  <property role="11gdj1" value="4df58c6f18f84a24L" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
                <node concept="Xl_RD" id="r3" role="37wK5m">
                  <property role="Xl_RC" value="script" />
                  <uo k="s:originTrace" v="n:8258189873530167542" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="qV" role="37wK5m">
              <ref role="3cqZAo" node="qP" resolve="container" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
            <node concept="3clFbT" id="qW" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
            <node concept="3clFbT" id="qX" role="37wK5m">
              <uo k="s:originTrace" v="n:8258189873530167542" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="qN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
        <node concept="3Tm1VV" id="r4" role="1B3o_S">
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3uibUv" id="r5" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="2AHcQZ" id="r6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
        <node concept="3clFbS" id="r7" role="3clF47">
          <uo k="s:originTrace" v="n:8258189873530167542" />
          <node concept="3cpWs6" id="r9" role="3cqZAp">
            <uo k="s:originTrace" v="n:8258189873530167542" />
            <node concept="2YIFZM" id="ra" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:8258189873530172584" />
              <node concept="35c_gC" id="rb" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                <uo k="s:originTrace" v="n:8258189873530172584" />
              </node>
              <node concept="2ShNRf" id="rc" role="37wK5m">
                <uo k="s:originTrace" v="n:8258189873530172584" />
                <node concept="1pGfFk" id="rd" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:8258189873530172584" />
                  <node concept="Xl_RD" id="re" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:8258189873530172584" />
                  </node>
                  <node concept="Xl_RD" id="rf" role="37wK5m">
                    <property role="Xl_RC" value="8258189873530172584" />
                    <uo k="s:originTrace" v="n:8258189873530172584" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="r8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8258189873530167542" />
        </node>
      </node>
      <node concept="3uibUv" id="qO" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8258189873530167542" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="rg">
    <property role="3GE5qa" value="SourcePath" />
    <property role="TrG5h" value="BuildSourceMacroRelativePath_Constraints" />
    <uo k="s:originTrace" v="n:7389400916848182167" />
    <node concept="3Tm1VV" id="rh" role="1B3o_S">
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="3uibUv" id="ri" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="3clFbW" id="rj" role="jymVt">
      <uo k="s:originTrace" v="n:7389400916848182167" />
      <node concept="37vLTG" id="rm" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="3uibUv" id="rp" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
      </node>
      <node concept="3cqZAl" id="rn" role="3clF45">
        <uo k="s:originTrace" v="n:7389400916848182167" />
      </node>
      <node concept="3clFbS" id="ro" role="3clF47">
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="XkiVB" id="rq" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="1BaE9c" id="rs" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourceMacroRelativePath$b7" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2YIFZM" id="ru" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="11gdke" id="rv" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="11gdke" id="rw" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="11gdke" id="rx" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafae121dL" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
              <node concept="Xl_RD" id="ry" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="rt" role="37wK5m">
            <ref role="3cqZAo" node="rm" resolve="initContext" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
          </node>
        </node>
        <node concept="3clFbF" id="rr" role="3cqZAp">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="1rXfSq" id="rz" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2ShNRf" id="r$" role="37wK5m">
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="1pGfFk" id="r_" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="rB" resolve="BuildSourceMacroRelativePath_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
                <node concept="Xjq3P" id="rA" role="37wK5m">
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="rk" role="jymVt">
      <uo k="s:originTrace" v="n:7389400916848182167" />
    </node>
    <node concept="312cEu" id="rl" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7389400916848182167" />
      <node concept="3clFbW" id="rB" role="jymVt">
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="37vLTG" id="rE" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="3uibUv" id="rH" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
          </node>
        </node>
        <node concept="3cqZAl" id="rF" role="3clF45">
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3clFbS" id="rG" role="3clF47">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="XkiVB" id="rI" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="1BaE9c" id="rJ" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="macro$kdvp" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
              <node concept="2YIFZM" id="rN" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7389400916848182167" />
                <node concept="11gdke" id="rO" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="rP" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="rQ" role="37wK5m">
                  <property role="11gdj1" value="668c6cfbafae121dL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="11gdke" id="rR" role="37wK5m">
                  <property role="11gdj1" value="668c6cfbafae122aL" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
                <node concept="Xl_RD" id="rS" role="37wK5m">
                  <property role="Xl_RC" value="macro" />
                  <uo k="s:originTrace" v="n:7389400916848182167" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="rK" role="37wK5m">
              <ref role="3cqZAo" node="rE" resolve="container" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
            <node concept="3clFbT" id="rL" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
            <node concept="3clFbT" id="rM" role="37wK5m">
              <uo k="s:originTrace" v="n:7389400916848182167" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="rC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
        <node concept="3Tm1VV" id="rT" role="1B3o_S">
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3uibUv" id="rU" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="2AHcQZ" id="rV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
        <node concept="3clFbS" id="rW" role="3clF47">
          <uo k="s:originTrace" v="n:7389400916848182167" />
          <node concept="3cpWs6" id="rY" role="3cqZAp">
            <uo k="s:originTrace" v="n:7389400916848182167" />
            <node concept="2YIFZM" id="rZ" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:7389400916848182175" />
              <node concept="35c_gC" id="s0" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cv" resolve="BuildMacro" />
                <uo k="s:originTrace" v="n:7389400916848182175" />
              </node>
              <node concept="2ShNRf" id="s1" role="37wK5m">
                <uo k="s:originTrace" v="n:7389400916848182175" />
                <node concept="1pGfFk" id="s2" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:7389400916848182175" />
                  <node concept="Xl_RD" id="s3" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:7389400916848182175" />
                  </node>
                  <node concept="Xl_RD" id="s4" role="37wK5m">
                    <property role="Xl_RC" value="7389400916848182175" />
                    <uo k="s:originTrace" v="n:7389400916848182175" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="rX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7389400916848182167" />
        </node>
      </node>
      <node concept="3uibUv" id="rD" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7389400916848182167" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="s5">
    <property role="3GE5qa" value="SourcePath" />
    <property role="TrG5h" value="BuildSourcePath_Constraints" />
    <uo k="s:originTrace" v="n:1258644073389103233" />
    <node concept="3Tm1VV" id="s6" role="1B3o_S">
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
    <node concept="3uibUv" id="s7" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
    <node concept="3clFbW" id="s8" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103233" />
      <node concept="37vLTG" id="sb" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="3uibUv" id="se" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1258644073389103233" />
        </node>
      </node>
      <node concept="3cqZAl" id="sc" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3clFbS" id="sd" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="XkiVB" id="sf" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1258644073389103233" />
          <node concept="1BaE9c" id="sg" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourcePath$H" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
            <node concept="2YIFZM" id="si" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103233" />
              <node concept="11gdke" id="sj" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="sk" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="sl" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafacdc3eL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="Xl_RD" id="sm" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourcePath" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="sh" role="37wK5m">
            <ref role="3cqZAo" node="sb" resolve="initContext" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="s9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDefaultConcreteConcept" />
      <property role="DiZV1" value="false" />
      <uo k="s:originTrace" v="n:1258644073389103233" />
      <node concept="2AHcQZ" id="sn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3uibUv" id="so" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3Tm1VV" id="sp" role="1B3o_S">
        <uo k="s:originTrace" v="n:1258644073389103233" />
      </node>
      <node concept="3clFbS" id="sq" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103233" />
        <node concept="3clFbF" id="sr" role="3cqZAp">
          <uo k="s:originTrace" v="n:1258644073389103233" />
          <node concept="1BaE9c" id="ss" role="3clFbG">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSourceProjectRelativePath$uc" />
            <uo k="s:originTrace" v="n:1258644073389103233" />
            <node concept="2YIFZM" id="st" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103233" />
              <node concept="11gdke" id="su" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="sv" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="11gdke" id="sw" role="37wK5m">
                <property role="11gdj1" value="4c12642949048fb2L" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
              <node concept="Xl_RD" id="sx" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" />
                <uo k="s:originTrace" v="n:1258644073389103233" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="sa" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103233" />
    </node>
  </node>
  <node concept="312cEu" id="sy">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaClassFolder_Constraints" />
    <uo k="s:originTrace" v="n:1258644073389103451" />
    <node concept="3Tm1VV" id="sz" role="1B3o_S">
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="3uibUv" id="s$" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="3clFbW" id="s_" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103451" />
      <node concept="37vLTG" id="sC" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="sF" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="3cqZAl" id="sD" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3clFbS" id="sE" role="3clF47">
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="XkiVB" id="sG" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
          <node concept="1BaE9c" id="sI" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaClassFolder$Z_" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
            <node concept="2YIFZM" id="sK" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1258644073389103451" />
              <node concept="11gdke" id="sL" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="11gdke" id="sM" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="11gdke" id="sN" role="37wK5m">
                <property role="11gdj1" value="11779a1dbd021959L" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
              <node concept="Xl_RD" id="sO" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaClassFolder" />
                <uo k="s:originTrace" v="n:1258644073389103451" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="sJ" role="37wK5m">
            <ref role="3cqZAo" node="sC" resolve="initContext" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
          </node>
        </node>
        <node concept="3clFbF" id="sH" role="3cqZAp">
          <uo k="s:originTrace" v="n:1258644073389103451" />
          <node concept="1rXfSq" id="sP" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1258644073389103451" />
            <node concept="2ShNRf" id="sQ" role="37wK5m">
              <uo k="s:originTrace" v="n:1258644073389103451" />
              <node concept="YeOm9" id="sR" role="2ShVmc">
                <uo k="s:originTrace" v="n:1258644073389103451" />
                <node concept="1Y3b0j" id="sS" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1258644073389103451" />
                  <node concept="3Tm1VV" id="sT" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                  </node>
                  <node concept="3clFb_" id="sU" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                    <node concept="3Tm1VV" id="sX" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="2AHcQZ" id="sY" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="3uibUv" id="sZ" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                    </node>
                    <node concept="37vLTG" id="t0" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3uibUv" id="t3" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="2AHcQZ" id="t4" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="t1" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3uibUv" id="t5" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="2AHcQZ" id="t6" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="t2" role="3clF47">
                      <uo k="s:originTrace" v="n:1258644073389103451" />
                      <node concept="3cpWs8" id="t7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="3cpWsn" id="tc" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="10P_77" id="td" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                          </node>
                          <node concept="1rXfSq" id="te" role="33vP2m">
                            <ref role="37wK5l" node="sB" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="2OqwBi" id="tf" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="tj" role="2Oq$k0">
                                <ref role="3cqZAo" node="t0" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="tk" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="tg" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="tl" role="2Oq$k0">
                                <ref role="3cqZAo" node="t0" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="tm" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="th" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="tn" role="2Oq$k0">
                                <ref role="3cqZAo" node="t0" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="to" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ti" role="37wK5m">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="tp" role="2Oq$k0">
                                <ref role="3cqZAo" node="t0" resolve="context" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="tq" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="t8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="3clFbJ" id="t9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="3clFbS" id="tr" role="3clFbx">
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="3clFbF" id="tt" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="2OqwBi" id="tu" role="3clFbG">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                              <node concept="37vLTw" id="tv" role="2Oq$k0">
                                <ref role="3cqZAo" node="t1" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                              </node>
                              <node concept="liA8E" id="tw" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1258644073389103451" />
                                <node concept="1dyn4i" id="tx" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1258644073389103451" />
                                  <node concept="2ShNRf" id="ty" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1258644073389103451" />
                                    <node concept="1pGfFk" id="tz" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1258644073389103451" />
                                      <node concept="Xl_RD" id="t$" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:1258644073389103451" />
                                      </node>
                                      <node concept="Xl_RD" id="t_" role="37wK5m">
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
                        <node concept="1Wc70l" id="ts" role="3clFbw">
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                          <node concept="3y3z36" id="tA" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="10Nm6u" id="tC" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                            <node concept="37vLTw" id="tD" role="3uHU7B">
                              <ref role="3cqZAo" node="t1" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="tB" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1258644073389103451" />
                            <node concept="37vLTw" id="tE" role="3fr31v">
                              <ref role="3cqZAo" node="tc" resolve="result" />
                              <uo k="s:originTrace" v="n:1258644073389103451" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="ta" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                      </node>
                      <node concept="3clFbF" id="tb" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1258644073389103451" />
                        <node concept="37vLTw" id="tF" role="3clFbG">
                          <ref role="3cqZAo" node="tc" resolve="result" />
                          <uo k="s:originTrace" v="n:1258644073389103451" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="sV" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1258644073389103451" />
                  </node>
                  <node concept="3uibUv" id="sW" role="2Ghqu4">
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
    <node concept="2tJIrI" id="sA" role="jymVt">
      <uo k="s:originTrace" v="n:1258644073389103451" />
    </node>
    <node concept="2YIFZL" id="sB" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1258644073389103451" />
      <node concept="10P_77" id="tG" role="3clF45">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3Tm6S6" id="tH" role="1B3o_S">
        <uo k="s:originTrace" v="n:1258644073389103451" />
      </node>
      <node concept="3clFbS" id="tI" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580467" />
        <node concept="3clFbF" id="tN" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580468" />
          <node concept="2OqwBi" id="tO" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580469" />
            <node concept="2OqwBi" id="tP" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536580470" />
              <node concept="37vLTw" id="tR" role="2Oq$k0">
                <ref role="3cqZAo" node="tK" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580471" />
              </node>
              <node concept="2Xjw5R" id="tS" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536580472" />
                <node concept="1xMEDy" id="tT" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580473" />
                  <node concept="chp4Y" id="tV" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
                    <uo k="s:originTrace" v="n:1227128029536580474" />
                  </node>
                </node>
                <node concept="1xIGOp" id="tU" role="1xVPHs">
                  <uo k="s:originTrace" v="n:1227128029536580475" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="tQ" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580476" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="tW" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="tK" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="tX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="tL" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="tY" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
      <node concept="37vLTG" id="tM" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1258644073389103451" />
        <node concept="3uibUv" id="tZ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1258644073389103451" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="u0">
    <property role="3GE5qa" value="Project.Java.Dependencies" />
    <property role="TrG5h" value="BuildSource_JavaDependencyLibrary_Constraints" />
    <uo k="s:originTrace" v="n:1545517825663202140" />
    <node concept="3Tm1VV" id="u1" role="1B3o_S">
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="3uibUv" id="u2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="3clFbW" id="u3" role="jymVt">
      <uo k="s:originTrace" v="n:1545517825663202140" />
      <node concept="37vLTG" id="u6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="3uibUv" id="u9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
      </node>
      <node concept="3cqZAl" id="u7" role="3clF45">
        <uo k="s:originTrace" v="n:1545517825663202140" />
      </node>
      <node concept="3clFbS" id="u8" role="3clF47">
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="XkiVB" id="ua" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="1BaE9c" id="uc" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaDependencyLibrary$TO" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2YIFZM" id="ue" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="11gdke" id="uf" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="11gdke" id="ug" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="11gdke" id="uh" role="37wK5m">
                <property role="11gdj1" value="454b730dd9079dceL" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
              <node concept="Xl_RD" id="ui" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaDependencyLibrary" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="ud" role="37wK5m">
            <ref role="3cqZAo" node="u6" resolve="initContext" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
          </node>
        </node>
        <node concept="3clFbF" id="ub" role="3cqZAp">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="1rXfSq" id="uj" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2ShNRf" id="uk" role="37wK5m">
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="1pGfFk" id="ul" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="un" resolve="BuildSource_JavaDependencyLibrary_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
                <node concept="Xjq3P" id="um" role="37wK5m">
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="u4" role="jymVt">
      <uo k="s:originTrace" v="n:1545517825663202140" />
    </node>
    <node concept="312cEu" id="u5" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1545517825663202140" />
      <node concept="3clFbW" id="un" role="jymVt">
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="37vLTG" id="uq" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="3uibUv" id="ut" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
          </node>
        </node>
        <node concept="3cqZAl" id="ur" role="3clF45">
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3clFbS" id="us" role="3clF47">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="XkiVB" id="uu" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="1BaE9c" id="uv" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="library$sob3" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
              <node concept="2YIFZM" id="uz" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1545517825663202140" />
                <node concept="11gdke" id="u$" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="u_" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="uA" role="37wK5m">
                  <property role="11gdj1" value="454b730dd9079dceL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="11gdke" id="uB" role="37wK5m">
                  <property role="11gdj1" value="454b730dd9079dcfL" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
                <node concept="Xl_RD" id="uC" role="37wK5m">
                  <property role="Xl_RC" value="library" />
                  <uo k="s:originTrace" v="n:1545517825663202140" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="uw" role="37wK5m">
              <ref role="3cqZAo" node="uq" resolve="container" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
            <node concept="3clFbT" id="ux" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
            <node concept="3clFbT" id="uy" role="37wK5m">
              <uo k="s:originTrace" v="n:1545517825663202140" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="uo" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
        <node concept="3Tm1VV" id="uD" role="1B3o_S">
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3uibUv" id="uE" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="2AHcQZ" id="uF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
        <node concept="3clFbS" id="uG" role="3clF47">
          <uo k="s:originTrace" v="n:1545517825663202140" />
          <node concept="3cpWs6" id="uI" role="3cqZAp">
            <uo k="s:originTrace" v="n:1545517825663202140" />
            <node concept="2YIFZM" id="uJ" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1545517825663202142" />
              <node concept="35c_gC" id="uK" role="37wK5m">
                <ref role="35c_gD" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
                <uo k="s:originTrace" v="n:1545517825663202142" />
              </node>
              <node concept="2ShNRf" id="uL" role="37wK5m">
                <uo k="s:originTrace" v="n:1545517825663202142" />
                <node concept="1pGfFk" id="uM" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1545517825663202142" />
                  <node concept="Xl_RD" id="uN" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1545517825663202142" />
                  </node>
                  <node concept="Xl_RD" id="uO" role="37wK5m">
                    <property role="Xl_RC" value="1545517825663202142" />
                    <uo k="s:originTrace" v="n:1545517825663202142" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="uH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1545517825663202140" />
        </node>
      </node>
      <node concept="3uibUv" id="up" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1545517825663202140" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="uP">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
    <uo k="s:originTrace" v="n:5610619299014531655" />
    <node concept="3Tm1VV" id="uQ" role="1B3o_S">
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="3uibUv" id="uR" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="3clFbW" id="uS" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014531655" />
      <node concept="37vLTG" id="uV" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="3uibUv" id="uY" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
      </node>
      <node concept="3cqZAl" id="uW" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299014531655" />
      </node>
      <node concept="3clFbS" id="uX" role="3clF47">
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="XkiVB" id="uZ" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="1BaE9c" id="v1" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaExternalJarFolderRef$kv" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2YIFZM" id="v3" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="11gdke" id="v4" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="11gdke" id="v5" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="11gdke" id="v6" role="37wK5m">
                <property role="11gdj1" value="4ddcec86afb65a3fL" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
              <node concept="Xl_RD" id="v7" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaExternalJarFolderRef" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="v2" role="37wK5m">
            <ref role="3cqZAo" node="uV" resolve="initContext" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
          </node>
        </node>
        <node concept="3clFbF" id="v0" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="1rXfSq" id="v8" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2ShNRf" id="v9" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="1pGfFk" id="va" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="vc" resolve="BuildSource_JavaExternalJarFolderRef_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
                <node concept="Xjq3P" id="vb" role="37wK5m">
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="uT" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014531655" />
    </node>
    <node concept="312cEu" id="uU" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5610619299014531655" />
      <node concept="3clFbW" id="vc" role="jymVt">
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="37vLTG" id="vf" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="3uibUv" id="vi" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
          </node>
        </node>
        <node concept="3cqZAl" id="vg" role="3clF45">
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3clFbS" id="vh" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="XkiVB" id="vj" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="1BaE9c" id="vk" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="folder$95wz" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
              <node concept="2YIFZM" id="vo" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5610619299014531655" />
                <node concept="11gdke" id="vp" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="vq" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="vr" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb65a3fL" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="11gdke" id="vs" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb65a40L" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
                <node concept="Xl_RD" id="vt" role="37wK5m">
                  <property role="Xl_RC" value="folder" />
                  <uo k="s:originTrace" v="n:5610619299014531655" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="vl" role="37wK5m">
              <ref role="3cqZAo" node="vf" resolve="container" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
            <node concept="3clFbT" id="vm" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
            <node concept="3clFbT" id="vn" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014531655" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="vd" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
        <node concept="3Tm1VV" id="vu" role="1B3o_S">
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3uibUv" id="vv" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="2AHcQZ" id="vw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
        <node concept="3clFbS" id="vx" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014531655" />
          <node concept="3cpWs6" id="vz" role="3cqZAp">
            <uo k="s:originTrace" v="n:5610619299014531655" />
            <node concept="2ShNRf" id="v$" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840486" />
              <node concept="YeOm9" id="v_" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840486" />
                <node concept="1Y3b0j" id="vA" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840486" />
                  <node concept="3Tm1VV" id="vB" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                  </node>
                  <node concept="3clFb_" id="vC" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                    <node concept="3Tm1VV" id="vE" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3uibUv" id="vF" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3clFbS" id="vG" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3cpWs6" id="vI" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840486" />
                        <node concept="2ShNRf" id="vJ" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840486" />
                          <node concept="1pGfFk" id="vK" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840486" />
                            <node concept="Xl_RD" id="vL" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840486" />
                            </node>
                            <node concept="Xl_RD" id="vM" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840486" />
                              <uo k="s:originTrace" v="n:6836281137582840486" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="vH" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="vD" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840486" />
                    <node concept="3Tm1VV" id="vN" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="3uibUv" id="vO" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                    <node concept="37vLTG" id="vP" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3uibUv" id="vS" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840486" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="vQ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                      <node concept="3cpWs8" id="vT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840488" />
                        <node concept="3cpWsn" id="vW" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840489" />
                          <node concept="3Tqbb2" id="vX" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840490" />
                          </node>
                          <node concept="2OqwBi" id="vY" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840491" />
                            <node concept="1DoJHT" id="vZ" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840492" />
                              <node concept="3uibUv" id="w1" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="w2" role="1EMhIo">
                                <ref role="3cqZAo" node="vP" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="w0" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840493" />
                              <node concept="1xMEDy" id="w3" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840494" />
                                <node concept="chp4Y" id="w5" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840495" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="w4" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840496" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="vU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840497" />
                        <node concept="3clFbS" id="w6" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840498" />
                          <node concept="3cpWs6" id="w8" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840499" />
                            <node concept="2YIFZM" id="w9" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:2vaDE4tApKR" resolve="getVisibleJarFoldersScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840500" />
                              <node concept="37vLTw" id="wa" role="37wK5m">
                                <ref role="3cqZAo" node="vW" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840501" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="w7" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840502" />
                          <node concept="37vLTw" id="wb" role="2Oq$k0">
                            <ref role="3cqZAo" node="vW" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840503" />
                          </node>
                          <node concept="3x8VRR" id="wc" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840504" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="vV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840505" />
                        <node concept="2ShNRf" id="wd" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840506" />
                          <node concept="1pGfFk" id="we" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582840507" />
                            <node concept="2OqwBi" id="wf" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582840511" />
                              <node concept="1DoJHT" id="wi" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582840512" />
                                <node concept="3uibUv" id="wk" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="wl" role="1EMhIo">
                                  <ref role="3cqZAo" node="vP" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="wj" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582840513" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="wg" role="37wK5m">
                              <property role="3clFbU" value="false" />
                              <uo k="s:originTrace" v="n:6836281137582840509" />
                            </node>
                            <node concept="35c_gC" id="wh" role="37wK5m">
                              <ref role="35c_gD" to="3ior:4RsV8qJH_Bn" resolve="BuildSource_SingleFolder" />
                              <uo k="s:originTrace" v="n:6836281137582840510" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="vR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840486" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="vy" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5610619299014531655" />
        </node>
      </node>
      <node concept="3uibUv" id="ve" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5610619299014531655" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="wm">
    <property role="3GE5qa" value="Project.Java.Classpath" />
    <property role="TrG5h" value="BuildSource_JavaExternalJarRef_Constraints" />
    <uo k="s:originTrace" v="n:5610619299014309454" />
    <node concept="3Tm1VV" id="wn" role="1B3o_S">
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="3uibUv" id="wo" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="3clFbW" id="wp" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014309454" />
      <node concept="37vLTG" id="ws" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="3uibUv" id="wv" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
      </node>
      <node concept="3cqZAl" id="wt" role="3clF45">
        <uo k="s:originTrace" v="n:5610619299014309454" />
      </node>
      <node concept="3clFbS" id="wu" role="3clF47">
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="XkiVB" id="ww" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="1BaE9c" id="wy" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaExternalJarRef$GK" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2YIFZM" id="w$" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="11gdke" id="w_" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="11gdke" id="wA" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="11gdke" id="wB" role="37wK5m">
                <property role="11gdj1" value="4ddcec86afb2f64cL" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
              <node concept="Xl_RD" id="wC" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="wz" role="37wK5m">
            <ref role="3cqZAo" node="ws" resolve="initContext" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
          </node>
        </node>
        <node concept="3clFbF" id="wx" role="3cqZAp">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="1rXfSq" id="wD" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2ShNRf" id="wE" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="1pGfFk" id="wF" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="wH" resolve="BuildSource_JavaExternalJarRef_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
                <node concept="Xjq3P" id="wG" role="37wK5m">
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="wq" role="jymVt">
      <uo k="s:originTrace" v="n:5610619299014309454" />
    </node>
    <node concept="312cEu" id="wr" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5610619299014309454" />
      <node concept="3clFbW" id="wH" role="jymVt">
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="37vLTG" id="wK" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="3uibUv" id="wN" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
          </node>
        </node>
        <node concept="3cqZAl" id="wL" role="3clF45">
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3clFbS" id="wM" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="XkiVB" id="wO" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="1BaE9c" id="wP" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="jar$JLD3" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
              <node concept="2YIFZM" id="wT" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5610619299014309454" />
                <node concept="11gdke" id="wU" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="wV" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="wW" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb2f64cL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="11gdke" id="wX" role="37wK5m">
                  <property role="11gdj1" value="4ddcec86afb2f64dL" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
                <node concept="Xl_RD" id="wY" role="37wK5m">
                  <property role="Xl_RC" value="jar" />
                  <uo k="s:originTrace" v="n:5610619299014309454" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="wQ" role="37wK5m">
              <ref role="3cqZAo" node="wK" resolve="container" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
            <node concept="3clFbT" id="wR" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
            <node concept="3clFbT" id="wS" role="37wK5m">
              <uo k="s:originTrace" v="n:5610619299014309454" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="wI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
        <node concept="3Tm1VV" id="wZ" role="1B3o_S">
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3uibUv" id="x0" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="2AHcQZ" id="x1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
        <node concept="3clFbS" id="x2" role="3clF47">
          <uo k="s:originTrace" v="n:5610619299014309454" />
          <node concept="3cpWs6" id="x4" role="3cqZAp">
            <uo k="s:originTrace" v="n:5610619299014309454" />
            <node concept="2ShNRf" id="x5" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582840435" />
              <node concept="YeOm9" id="x6" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582840435" />
                <node concept="1Y3b0j" id="x7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582840435" />
                  <node concept="3Tm1VV" id="x8" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                  </node>
                  <node concept="3clFb_" id="x9" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                    <node concept="3Tm1VV" id="xb" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3uibUv" id="xc" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3clFbS" id="xd" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3cpWs6" id="xf" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840435" />
                        <node concept="2ShNRf" id="xg" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840435" />
                          <node concept="1pGfFk" id="xh" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582840435" />
                            <node concept="Xl_RD" id="xi" role="37wK5m">
                              <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582840435" />
                            </node>
                            <node concept="Xl_RD" id="xj" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582840435" />
                              <uo k="s:originTrace" v="n:6836281137582840435" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xe" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="xa" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582840435" />
                    <node concept="3Tm1VV" id="xk" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="3uibUv" id="xl" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                    <node concept="37vLTG" id="xm" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3uibUv" id="xp" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582840435" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="xn" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                      <node concept="3cpWs8" id="xq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840437" />
                        <node concept="3cpWsn" id="xt" role="3cpWs9">
                          <property role="TrG5h" value="contextProject" />
                          <uo k="s:originTrace" v="n:6836281137582840438" />
                          <node concept="3Tqbb2" id="xu" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                            <uo k="s:originTrace" v="n:6836281137582840439" />
                          </node>
                          <node concept="2OqwBi" id="xv" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582840440" />
                            <node concept="1DoJHT" id="xw" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582840441" />
                              <node concept="3uibUv" id="xy" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="xz" role="1EMhIo">
                                <ref role="3cqZAo" node="xm" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="xx" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582840442" />
                              <node concept="1xMEDy" id="x$" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840443" />
                                <node concept="chp4Y" id="xA" role="ri$Ld">
                                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                                  <uo k="s:originTrace" v="n:6836281137582840444" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="x_" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582840445" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="xr" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840446" />
                        <node concept="3clFbS" id="xB" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582840447" />
                          <node concept="3cpWs6" id="xD" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582840448" />
                            <node concept="2YIFZM" id="xE" role="3cqZAk">
                              <ref role="37wK5l" to="o3n2:5WMFzVNueXI" resolve="getVisibleJarsScope" />
                              <ref role="1Pybhc" to="o3n2:3h9a8EwPwtb" resolve="ScopeUtil" />
                              <uo k="s:originTrace" v="n:6836281137582840449" />
                              <node concept="37vLTw" id="xF" role="37wK5m">
                                <ref role="3cqZAo" node="xt" resolve="contextProject" />
                                <uo k="s:originTrace" v="n:6836281137582840450" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="xC" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582840451" />
                          <node concept="37vLTw" id="xG" role="2Oq$k0">
                            <ref role="3cqZAo" node="xt" resolve="contextProject" />
                            <uo k="s:originTrace" v="n:6836281137582840452" />
                          </node>
                          <node concept="3x8VRR" id="xH" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6836281137582840453" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="xs" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582840454" />
                        <node concept="2ShNRf" id="xI" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582840455" />
                          <node concept="1pGfFk" id="xJ" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:6836281137582840456" />
                            <node concept="2OqwBi" id="xK" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582840460" />
                              <node concept="1DoJHT" id="xN" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582840461" />
                                <node concept="3uibUv" id="xP" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="xQ" role="1EMhIo">
                                  <ref role="3cqZAo" node="xm" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="xO" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582840462" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="xL" role="37wK5m">
                              <property role="3clFbU" value="false" />
                              <uo k="s:originTrace" v="n:6836281137582840458" />
                            </node>
                            <node concept="35c_gC" id="xM" role="37wK5m">
                              <ref role="35c_gD" to="3ior:4RsV8qJDnFi" resolve="BuildSource_SingleFile" />
                              <uo k="s:originTrace" v="n:6836281137582840459" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xo" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582840435" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="x3" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5610619299014309454" />
        </node>
      </node>
      <node concept="3uibUv" id="wJ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5610619299014309454" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="xR">
    <property role="3GE5qa" value="Project.Java.Library" />
    <property role="TrG5h" value="BuildSource_JavaLibrary_Constraints" />
    <uo k="s:originTrace" v="n:6647099934206924807" />
    <node concept="3Tm1VV" id="xS" role="1B3o_S">
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="3uibUv" id="xT" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="3clFbW" id="xU" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="37vLTG" id="xY" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="y1" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="3cqZAl" id="xZ" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3clFbS" id="y0" role="3clF47">
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="XkiVB" id="y2" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1BaE9c" id="y5" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaLibrary$6q" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2YIFZM" id="y7" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="11gdke" id="y8" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="11gdke" id="y9" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="11gdke" id="ya" role="37wK5m">
                <property role="11gdj1" value="540febaa6144b873L" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="Xl_RD" id="yb" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaLibrary" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="y6" role="37wK5m">
            <ref role="3cqZAo" node="xY" resolve="initContext" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="3clFbF" id="y3" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1rXfSq" id="yc" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2ShNRf" id="yd" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="1pGfFk" id="ye" role="2ShVmc">
                <ref role="37wK5l" node="z7" resolve="BuildSource_JavaLibrary_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="Xjq3P" id="yf" role="37wK5m">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="y4" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="1rXfSq" id="yg" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="2ShNRf" id="yh" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="YeOm9" id="yi" role="2ShVmc">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="1Y3b0j" id="yj" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="3Tm1VV" id="yk" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="3clFb_" id="yl" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                    <node concept="3Tm1VV" id="yo" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="2AHcQZ" id="yp" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="3uibUv" id="yq" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                    </node>
                    <node concept="37vLTG" id="yr" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3uibUv" id="yu" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="2AHcQZ" id="yv" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="ys" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3uibUv" id="yw" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="2AHcQZ" id="yx" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="yt" role="3clF47">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="3cpWs8" id="yy" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="3cpWsn" id="yB" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="10P_77" id="yC" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                          </node>
                          <node concept="1rXfSq" id="yD" role="33vP2m">
                            <ref role="37wK5l" node="xX" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="2OqwBi" id="yE" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="yI" role="2Oq$k0">
                                <ref role="3cqZAo" node="yr" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="yJ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="yF" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="yK" role="2Oq$k0">
                                <ref role="3cqZAo" node="yr" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="yL" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="yG" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="yM" role="2Oq$k0">
                                <ref role="3cqZAo" node="yr" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="yN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="yH" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="yO" role="2Oq$k0">
                                <ref role="3cqZAo" node="yr" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="yP" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="yz" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="3clFbJ" id="y$" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="3clFbS" id="yQ" role="3clFbx">
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="3clFbF" id="yS" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="2OqwBi" id="yT" role="3clFbG">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                              <node concept="37vLTw" id="yU" role="2Oq$k0">
                                <ref role="3cqZAo" node="ys" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                              </node>
                              <node concept="liA8E" id="yV" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6647099934206924807" />
                                <node concept="1dyn4i" id="yW" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6647099934206924807" />
                                  <node concept="2ShNRf" id="yX" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6647099934206924807" />
                                    <node concept="1pGfFk" id="yY" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6647099934206924807" />
                                      <node concept="Xl_RD" id="yZ" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:6647099934206924807" />
                                      </node>
                                      <node concept="Xl_RD" id="z0" role="37wK5m">
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
                        <node concept="1Wc70l" id="yR" role="3clFbw">
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                          <node concept="3y3z36" id="z1" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="10Nm6u" id="z3" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                            <node concept="37vLTw" id="z4" role="3uHU7B">
                              <ref role="3cqZAo" node="ys" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="z2" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6647099934206924807" />
                            <node concept="37vLTw" id="z5" role="3fr31v">
                              <ref role="3cqZAo" node="yB" resolve="result" />
                              <uo k="s:originTrace" v="n:6647099934206924807" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="y_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                      </node>
                      <node concept="3clFbF" id="yA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="37vLTw" id="z6" role="3clFbG">
                          <ref role="3cqZAo" node="yB" resolve="result" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="ym" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="3uibUv" id="yn" role="2Ghqu4">
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
    <node concept="2tJIrI" id="xV" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206924807" />
    </node>
    <node concept="312cEu" id="xW" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="3clFbW" id="z7" role="jymVt">
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3cqZAl" id="zb" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3Tm1VV" id="zc" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3clFbS" id="zd" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="XkiVB" id="zf" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="1BaE9c" id="zg" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="2YIFZM" id="zl" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="11gdke" id="zm" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="zn" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="zo" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="11gdke" id="zp" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="Xl_RD" id="zq" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="zh" role="37wK5m">
              <ref role="3cqZAo" node="ze" resolve="container" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="zi" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="zj" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
            <node concept="3clFbT" id="zk" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="ze" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="zr" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="z8" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3Tm1VV" id="zs" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="10P_77" id="zt" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="37vLTG" id="zu" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3Tqbb2" id="zz" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="zv" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="z$" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="zw" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="z_" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="3clFbS" id="zx" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3cpWs8" id="zA" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="3cpWsn" id="zD" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="10P_77" id="zE" role="1tU5fm">
                <uo k="s:originTrace" v="n:6647099934206924807" />
              </node>
              <node concept="1rXfSq" id="zF" role="33vP2m">
                <ref role="37wK5l" node="z9" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="37vLTw" id="zG" role="37wK5m">
                  <ref role="3cqZAo" node="zu" resolve="node" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="2YIFZM" id="zH" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="37vLTw" id="zI" role="37wK5m">
                    <ref role="3cqZAo" node="zv" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="zB" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="3clFbS" id="zJ" role="3clFbx">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="3clFbF" id="zL" role="3cqZAp">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="2OqwBi" id="zM" role="3clFbG">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                  <node concept="37vLTw" id="zN" role="2Oq$k0">
                    <ref role="3cqZAo" node="zw" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                  </node>
                  <node concept="liA8E" id="zO" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6647099934206924807" />
                    <node concept="2ShNRf" id="zP" role="37wK5m">
                      <uo k="s:originTrace" v="n:6647099934206924807" />
                      <node concept="1pGfFk" id="zQ" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6647099934206924807" />
                        <node concept="Xl_RD" id="zR" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                        <node concept="Xl_RD" id="zS" role="37wK5m">
                          <property role="Xl_RC" value="927724900262335988" />
                          <uo k="s:originTrace" v="n:6647099934206924807" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="zK" role="3clFbw">
              <uo k="s:originTrace" v="n:6647099934206924807" />
              <node concept="3y3z36" id="zT" role="3uHU7w">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="10Nm6u" id="zV" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
                <node concept="37vLTw" id="zW" role="3uHU7B">
                  <ref role="3cqZAo" node="zw" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
              <node concept="3fqX7Q" id="zU" role="3uHU7B">
                <uo k="s:originTrace" v="n:6647099934206924807" />
                <node concept="37vLTw" id="zX" role="3fr31v">
                  <ref role="3cqZAo" node="zD" resolve="result" />
                  <uo k="s:originTrace" v="n:6647099934206924807" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="zC" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206924807" />
            <node concept="37vLTw" id="zY" role="3clFbG">
              <ref role="3cqZAo" node="zD" resolve="result" />
              <uo k="s:originTrace" v="n:6647099934206924807" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="zy" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="2YIFZL" id="z9" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="37vLTG" id="zZ" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3Tqbb2" id="$4" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="37vLTG" id="$0" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
          <node concept="3uibUv" id="$5" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6647099934206924807" />
          </node>
        </node>
        <node concept="10P_77" id="$1" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3Tm6S6" id="$2" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
        <node concept="3clFbS" id="$3" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262335989" />
          <node concept="3clFbF" id="$6" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335990" />
            <node concept="2YIFZM" id="$7" role="3clFbG">
              <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
              <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
              <uo k="s:originTrace" v="n:927724900262335991" />
              <node concept="37vLTw" id="$8" role="37wK5m">
                <ref role="3cqZAo" node="$0" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:927724900262335992" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="za" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
    </node>
    <node concept="2YIFZL" id="xX" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6647099934206924807" />
      <node concept="10P_77" id="$9" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3Tm6S6" id="$a" role="1B3o_S">
        <uo k="s:originTrace" v="n:6647099934206924807" />
      </node>
      <node concept="3clFbS" id="$b" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580478" />
        <node concept="3clFbF" id="$g" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580479" />
          <node concept="22lmx$" id="$h" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580480" />
            <node concept="2OqwBi" id="$i" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856460456" />
              <node concept="37vLTw" id="$k" role="2Oq$k0">
                <ref role="3cqZAo" node="$d" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856459477" />
              </node>
              <node concept="3zqWPK" id="$l" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851474" />
              </node>
            </node>
            <node concept="1Wc70l" id="$j" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580490" />
              <node concept="2OqwBi" id="$m" role="3uHU7w">
                <uo k="s:originTrace" v="n:1227128029536580491" />
                <node concept="2OqwBi" id="$o" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8421617199856442186" />
                  <node concept="2OqwBi" id="$q" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580492" />
                    <node concept="1PxgMI" id="$s" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580493" />
                      <node concept="37vLTw" id="$u" role="1m5AlR">
                        <ref role="3cqZAo" node="$d" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580494" />
                      </node>
                      <node concept="chp4Y" id="$v" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580495" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="$t" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580496" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="$r" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856452796" />
                    <node concept="chp4Y" id="$w" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856454096" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="$p" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856458231" />
                </node>
              </node>
              <node concept="2OqwBi" id="$n" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580507" />
                <node concept="37vLTw" id="$x" role="2Oq$k0">
                  <ref role="3cqZAo" node="$d" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580508" />
                </node>
                <node concept="1mIQ4w" id="$y" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580509" />
                  <node concept="chp4Y" id="$z" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580510" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="$c" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="$$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="$d" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="$_" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="$e" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="$A" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
      <node concept="37vLTG" id="$f" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6647099934206924807" />
        <node concept="3uibUv" id="$B" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6647099934206924807" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="$C">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaModuleOptions_Constraints" />
    <uo k="s:originTrace" v="n:1659807394254261086" />
    <node concept="3Tm1VV" id="$D" role="1B3o_S">
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="3uibUv" id="$E" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="3clFbW" id="$F" role="jymVt">
      <uo k="s:originTrace" v="n:1659807394254261086" />
      <node concept="37vLTG" id="$I" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="3uibUv" id="$L" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
      </node>
      <node concept="3cqZAl" id="$J" role="3clF45">
        <uo k="s:originTrace" v="n:1659807394254261086" />
      </node>
      <node concept="3clFbS" id="$K" role="3clF47">
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="XkiVB" id="$M" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="1BaE9c" id="$O" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaModuleOptions$F" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2YIFZM" id="$Q" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="11gdke" id="$R" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="11gdke" id="$S" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="11gdke" id="$T" role="37wK5m">
                <property role="11gdj1" value="1708d207f2178b52L" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
              <node concept="Xl_RD" id="$U" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaModuleOptions" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="$P" role="37wK5m">
            <ref role="3cqZAo" node="$I" resolve="initContext" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
          </node>
        </node>
        <node concept="3clFbF" id="$N" role="3cqZAp">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="1rXfSq" id="$V" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2ShNRf" id="$W" role="37wK5m">
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="1pGfFk" id="$X" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="$Z" resolve="BuildSource_JavaModuleOptions_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
                <node concept="Xjq3P" id="$Y" role="37wK5m">
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="$G" role="jymVt">
      <uo k="s:originTrace" v="n:1659807394254261086" />
    </node>
    <node concept="312cEu" id="$H" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1659807394254261086" />
      <node concept="3clFbW" id="$Z" role="jymVt">
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="37vLTG" id="_2" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="3uibUv" id="_5" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
          </node>
        </node>
        <node concept="3cqZAl" id="_3" role="3clF45">
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3clFbS" id="_4" role="3clF47">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="XkiVB" id="_6" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="1BaE9c" id="_7" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="compileOptions$Eyr4" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
              <node concept="2YIFZM" id="_b" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1659807394254261086" />
                <node concept="11gdke" id="_c" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="_d" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="_e" role="37wK5m">
                  <property role="11gdj1" value="1708d207f2178b52L" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="11gdke" id="_f" role="37wK5m">
                  <property role="11gdj1" value="1708d207f214252bL" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
                <node concept="Xl_RD" id="_g" role="37wK5m">
                  <property role="Xl_RC" value="compileOptions" />
                  <uo k="s:originTrace" v="n:1659807394254261086" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="_8" role="37wK5m">
              <ref role="3cqZAo" node="_2" resolve="container" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
            <node concept="3clFbT" id="_9" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
            <node concept="3clFbT" id="_a" role="37wK5m">
              <uo k="s:originTrace" v="n:1659807394254261086" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="_0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
        <node concept="3Tm1VV" id="_h" role="1B3o_S">
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3uibUv" id="_i" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="2AHcQZ" id="_j" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
        <node concept="3clFbS" id="_k" role="3clF47">
          <uo k="s:originTrace" v="n:1659807394254261086" />
          <node concept="3cpWs6" id="_m" role="3cqZAp">
            <uo k="s:originTrace" v="n:1659807394254261086" />
            <node concept="2YIFZM" id="_n" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:1659807394254175447" />
              <node concept="35c_gC" id="_o" role="37wK5m">
                <ref role="35c_gD" to="3ior:NvWe6DpNB2" resolve="BuildSource_JavaOptions" />
                <uo k="s:originTrace" v="n:1659807394254175447" />
              </node>
              <node concept="2ShNRf" id="_p" role="37wK5m">
                <uo k="s:originTrace" v="n:1659807394254175447" />
                <node concept="1pGfFk" id="_q" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:1659807394254175447" />
                  <node concept="Xl_RD" id="_r" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:1659807394254175447" />
                  </node>
                  <node concept="Xl_RD" id="_s" role="37wK5m">
                    <property role="Xl_RC" value="1659807394254175447" />
                    <uo k="s:originTrace" v="n:1659807394254175447" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="_l" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1659807394254261086" />
        </node>
      </node>
      <node concept="3uibUv" id="_1" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1659807394254261086" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_t">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaModule_Constraints" />
    <uo k="s:originTrace" v="n:6647099934206891049" />
    <node concept="3Tm1VV" id="_u" role="1B3o_S">
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="3uibUv" id="_v" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="3clFbW" id="_w" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="37vLTG" id="_$" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="_B" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="3cqZAl" id="__" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3clFbS" id="_A" role="3clF47">
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="XkiVB" id="_C" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1BaE9c" id="_F" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaModule$NC" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2YIFZM" id="_H" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="11gdke" id="_I" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="11gdke" id="_J" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="11gdke" id="_K" role="37wK5m">
                <property role="11gdj1" value="668c6cfbafacdc38L" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="Xl_RD" id="_L" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaModule" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="_G" role="37wK5m">
            <ref role="3cqZAo" node="_$" resolve="initContext" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="3clFbF" id="_D" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1rXfSq" id="_M" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2ShNRf" id="_N" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="1pGfFk" id="_O" role="2ShVmc">
                <ref role="37wK5l" node="AH" resolve="BuildSource_JavaModule_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="Xjq3P" id="_P" role="37wK5m">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_E" role="3cqZAp">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="1rXfSq" id="_Q" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="2ShNRf" id="_R" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="YeOm9" id="_S" role="2ShVmc">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="1Y3b0j" id="_T" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="3Tm1VV" id="_U" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="3clFb_" id="_V" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                    <node concept="3Tm1VV" id="_Y" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="2AHcQZ" id="_Z" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="3uibUv" id="A0" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                    </node>
                    <node concept="37vLTG" id="A1" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3uibUv" id="A4" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="2AHcQZ" id="A5" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="A2" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3uibUv" id="A6" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="2AHcQZ" id="A7" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="A3" role="3clF47">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="3cpWs8" id="A8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="3cpWsn" id="Ad" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="10P_77" id="Ae" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                          </node>
                          <node concept="1rXfSq" id="Af" role="33vP2m">
                            <ref role="37wK5l" node="_z" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="2OqwBi" id="Ag" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="Ak" role="2Oq$k0">
                                <ref role="3cqZAo" node="A1" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="Al" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Ah" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="Am" role="2Oq$k0">
                                <ref role="3cqZAo" node="A1" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="An" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Ai" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="Ao" role="2Oq$k0">
                                <ref role="3cqZAo" node="A1" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="Ap" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Aj" role="37wK5m">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="Aq" role="2Oq$k0">
                                <ref role="3cqZAo" node="A1" resolve="context" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="Ar" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="A9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="3clFbJ" id="Aa" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="3clFbS" id="As" role="3clFbx">
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="3clFbF" id="Au" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="2OqwBi" id="Av" role="3clFbG">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                              <node concept="37vLTw" id="Aw" role="2Oq$k0">
                                <ref role="3cqZAo" node="A2" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                              </node>
                              <node concept="liA8E" id="Ax" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6647099934206891049" />
                                <node concept="1dyn4i" id="Ay" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6647099934206891049" />
                                  <node concept="2ShNRf" id="Az" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6647099934206891049" />
                                    <node concept="1pGfFk" id="A$" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6647099934206891049" />
                                      <node concept="Xl_RD" id="A_" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:6647099934206891049" />
                                      </node>
                                      <node concept="Xl_RD" id="AA" role="37wK5m">
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
                        <node concept="1Wc70l" id="At" role="3clFbw">
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                          <node concept="3y3z36" id="AB" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="10Nm6u" id="AD" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                            <node concept="37vLTw" id="AE" role="3uHU7B">
                              <ref role="3cqZAo" node="A2" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="AC" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6647099934206891049" />
                            <node concept="37vLTw" id="AF" role="3fr31v">
                              <ref role="3cqZAo" node="Ad" resolve="result" />
                              <uo k="s:originTrace" v="n:6647099934206891049" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ab" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                      </node>
                      <node concept="3clFbF" id="Ac" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="37vLTw" id="AG" role="3clFbG">
                          <ref role="3cqZAo" node="Ad" resolve="result" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="_W" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="3uibUv" id="_X" role="2Ghqu4">
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
    <node concept="2tJIrI" id="_x" role="jymVt">
      <uo k="s:originTrace" v="n:6647099934206891049" />
    </node>
    <node concept="312cEu" id="_y" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="3clFbW" id="AH" role="jymVt">
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3cqZAl" id="AL" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3Tm1VV" id="AM" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3clFbS" id="AN" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="XkiVB" id="AP" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="1BaE9c" id="AQ" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="2YIFZM" id="AV" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="11gdke" id="AW" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="AX" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="AY" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="11gdke" id="AZ" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="Xl_RD" id="B0" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="AR" role="37wK5m">
              <ref role="3cqZAo" node="AO" resolve="container" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="AS" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="AT" role="37wK5m">
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
            <node concept="3clFbT" id="AU" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="AO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="B1" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="AI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3Tm1VV" id="B2" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="10P_77" id="B3" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="37vLTG" id="B4" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3Tqbb2" id="B9" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="B5" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="Ba" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="B6" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="Bb" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="3clFbS" id="B7" role="3clF47">
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3cpWs8" id="Bc" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="3cpWsn" id="Bf" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="10P_77" id="Bg" role="1tU5fm">
                <uo k="s:originTrace" v="n:6647099934206891049" />
              </node>
              <node concept="1rXfSq" id="Bh" role="33vP2m">
                <ref role="37wK5l" node="AJ" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="37vLTw" id="Bi" role="37wK5m">
                  <ref role="3cqZAo" node="B4" resolve="node" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="2YIFZM" id="Bj" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="37vLTw" id="Bk" role="37wK5m">
                    <ref role="3cqZAo" node="B5" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Bd" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="3clFbS" id="Bl" role="3clFbx">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="3clFbF" id="Bn" role="3cqZAp">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="2OqwBi" id="Bo" role="3clFbG">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                  <node concept="37vLTw" id="Bp" role="2Oq$k0">
                    <ref role="3cqZAo" node="B6" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                  </node>
                  <node concept="liA8E" id="Bq" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6647099934206891049" />
                    <node concept="2ShNRf" id="Br" role="37wK5m">
                      <uo k="s:originTrace" v="n:6647099934206891049" />
                      <node concept="1pGfFk" id="Bs" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6647099934206891049" />
                        <node concept="Xl_RD" id="Bt" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                        <node concept="Xl_RD" id="Bu" role="37wK5m">
                          <property role="Xl_RC" value="927724900262328573" />
                          <uo k="s:originTrace" v="n:6647099934206891049" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="Bm" role="3clFbw">
              <uo k="s:originTrace" v="n:6647099934206891049" />
              <node concept="3y3z36" id="Bv" role="3uHU7w">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="10Nm6u" id="Bx" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
                <node concept="37vLTw" id="By" role="3uHU7B">
                  <ref role="3cqZAo" node="B6" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Bw" role="3uHU7B">
                <uo k="s:originTrace" v="n:6647099934206891049" />
                <node concept="37vLTw" id="Bz" role="3fr31v">
                  <ref role="3cqZAo" node="Bf" resolve="result" />
                  <uo k="s:originTrace" v="n:6647099934206891049" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Be" role="3cqZAp">
            <uo k="s:originTrace" v="n:6647099934206891049" />
            <node concept="37vLTw" id="B$" role="3clFbG">
              <ref role="3cqZAo" node="Bf" resolve="result" />
              <uo k="s:originTrace" v="n:6647099934206891049" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="B8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="2YIFZL" id="AJ" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="37vLTG" id="B_" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3Tqbb2" id="BE" role="1tU5fm">
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="37vLTG" id="BA" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
          <node concept="3uibUv" id="BF" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6647099934206891049" />
          </node>
        </node>
        <node concept="10P_77" id="BB" role="3clF45">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3Tm6S6" id="BC" role="1B3o_S">
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
        <node concept="3clFbS" id="BD" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262328574" />
          <node concept="3clFbF" id="BG" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335943" />
            <node concept="2YIFZM" id="BH" role="3clFbG">
              <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
              <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
              <uo k="s:originTrace" v="n:927724900262335945" />
              <node concept="37vLTw" id="BI" role="37wK5m">
                <ref role="3cqZAo" node="BA" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:927724900262335946" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="AK" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
    </node>
    <node concept="2YIFZL" id="_z" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6647099934206891049" />
      <node concept="10P_77" id="BJ" role="3clF45">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3Tm6S6" id="BK" role="1B3o_S">
        <uo k="s:originTrace" v="n:6647099934206891049" />
      </node>
      <node concept="3clFbS" id="BL" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580566" />
        <node concept="3clFbF" id="BQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580567" />
          <node concept="22lmx$" id="BR" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580568" />
            <node concept="2OqwBi" id="BS" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856431348" />
              <node concept="37vLTw" id="BU" role="2Oq$k0">
                <ref role="3cqZAo" node="BN" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536580574" />
              </node>
              <node concept="3zqWPK" id="BV" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851472" />
              </node>
            </node>
            <node concept="1Wc70l" id="BT" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580578" />
              <node concept="2OqwBi" id="BW" role="3uHU7w">
                <uo k="s:originTrace" v="n:8421617199856421294" />
                <node concept="2OqwBi" id="BY" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536580579" />
                  <node concept="2OqwBi" id="C0" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580580" />
                    <node concept="1PxgMI" id="C2" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580581" />
                      <node concept="37vLTw" id="C4" role="1m5AlR">
                        <ref role="3cqZAo" node="BN" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580582" />
                      </node>
                      <node concept="chp4Y" id="C5" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580583" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="C3" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580584" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="C1" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856417989" />
                    <node concept="chp4Y" id="C6" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856419214" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="BZ" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856423326" />
                </node>
              </node>
              <node concept="2OqwBi" id="BX" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580595" />
                <node concept="37vLTw" id="C7" role="2Oq$k0">
                  <ref role="3cqZAo" node="BN" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580596" />
                </node>
                <node concept="1mIQ4w" id="C8" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580597" />
                  <node concept="chp4Y" id="C9" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580598" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="BM" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="Ca" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="BN" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="Cb" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="BO" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="Cc" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
      <node concept="37vLTG" id="BP" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6647099934206891049" />
        <node concept="3uibUv" id="Cd" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6647099934206891049" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Ce">
    <property role="3GE5qa" value="Project.Java" />
    <property role="TrG5h" value="BuildSource_JavaOptions_Constraints" />
    <uo k="s:originTrace" v="n:927724900262213628" />
    <node concept="3Tm1VV" id="Cf" role="1B3o_S">
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="3uibUv" id="Cg" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="3clFbW" id="Ch" role="jymVt">
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="37vLTG" id="Cl" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="Co" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="3cqZAl" id="Cm" role="3clF45">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3clFbS" id="Cn" role="3clF47">
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="XkiVB" id="Cp" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1BaE9c" id="Cs" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaOptions$D" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2YIFZM" id="Cu" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="11gdke" id="Cv" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="11gdke" id="Cw" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="11gdke" id="Cx" role="37wK5m">
                <property role="11gdj1" value="cdff0e1a96739c2L" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="Xl_RD" id="Cy" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaOptions" />
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Ct" role="37wK5m">
            <ref role="3cqZAo" node="Cl" resolve="initContext" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="3clFbF" id="Cq" role="3cqZAp">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1rXfSq" id="Cz" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2ShNRf" id="C$" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="1pGfFk" id="C_" role="2ShVmc">
                <ref role="37wK5l" node="Du" resolve="BuildSource_JavaOptions_Constraints.OptionsName_PD" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="Xjq3P" id="CA" role="37wK5m">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cr" role="3cqZAp">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="1rXfSq" id="CB" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="2ShNRf" id="CC" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="YeOm9" id="CD" role="2ShVmc">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="1Y3b0j" id="CE" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="3Tm1VV" id="CF" role="1B3o_S">
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="3clFb_" id="CG" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                    <node concept="3Tm1VV" id="CJ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="2AHcQZ" id="CK" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="3uibUv" id="CL" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                    </node>
                    <node concept="37vLTG" id="CM" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3uibUv" id="CP" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="2AHcQZ" id="CQ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="CN" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3uibUv" id="CR" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="2AHcQZ" id="CS" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="CO" role="3clF47">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="3cpWs8" id="CT" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="3cpWsn" id="CY" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="10P_77" id="CZ" role="1tU5fm">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                          </node>
                          <node concept="1rXfSq" id="D0" role="33vP2m">
                            <ref role="37wK5l" node="Ck" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="2OqwBi" id="D1" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="D5" role="2Oq$k0">
                                <ref role="3cqZAo" node="CM" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="D6" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="D2" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="D7" role="2Oq$k0">
                                <ref role="3cqZAo" node="CM" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="D8" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="D3" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="D9" role="2Oq$k0">
                                <ref role="3cqZAo" node="CM" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="Da" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="D4" role="37wK5m">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="Db" role="2Oq$k0">
                                <ref role="3cqZAo" node="CM" resolve="context" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="Dc" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="CU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="3clFbJ" id="CV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="3clFbS" id="Dd" role="3clFbx">
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="3clFbF" id="Df" role="3cqZAp">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="2OqwBi" id="Dg" role="3clFbG">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                              <node concept="37vLTw" id="Dh" role="2Oq$k0">
                                <ref role="3cqZAo" node="CN" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                              </node>
                              <node concept="liA8E" id="Di" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:927724900262213628" />
                                <node concept="1dyn4i" id="Dj" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:927724900262213628" />
                                  <node concept="2ShNRf" id="Dk" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:927724900262213628" />
                                    <node concept="1pGfFk" id="Dl" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:927724900262213628" />
                                      <node concept="Xl_RD" id="Dm" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:927724900262213628" />
                                      </node>
                                      <node concept="Xl_RD" id="Dn" role="37wK5m">
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
                        <node concept="1Wc70l" id="De" role="3clFbw">
                          <uo k="s:originTrace" v="n:927724900262213628" />
                          <node concept="3y3z36" id="Do" role="3uHU7w">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="10Nm6u" id="Dq" role="3uHU7w">
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                            <node concept="37vLTw" id="Dr" role="3uHU7B">
                              <ref role="3cqZAo" node="CN" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="Dp" role="3uHU7B">
                            <uo k="s:originTrace" v="n:927724900262213628" />
                            <node concept="37vLTw" id="Ds" role="3fr31v">
                              <ref role="3cqZAo" node="CY" resolve="result" />
                              <uo k="s:originTrace" v="n:927724900262213628" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="CW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                      </node>
                      <node concept="3clFbF" id="CX" role="3cqZAp">
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="37vLTw" id="Dt" role="3clFbG">
                          <ref role="3cqZAo" node="CY" resolve="result" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="CH" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="3uibUv" id="CI" role="2Ghqu4">
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
    <node concept="2tJIrI" id="Ci" role="jymVt">
      <uo k="s:originTrace" v="n:927724900262213628" />
    </node>
    <node concept="312cEu" id="Cj" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="OptionsName_PD" />
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="3clFbW" id="Du" role="jymVt">
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3cqZAl" id="Dy" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3Tm1VV" id="Dz" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3clFbS" id="D$" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="XkiVB" id="DA" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="1BaE9c" id="DB" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="optionsName$Rr_z" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="2YIFZM" id="DG" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="11gdke" id="DH" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="DI" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="DJ" role="37wK5m">
                  <property role="11gdj1" value="cdff0e1a96739c2L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="11gdke" id="DK" role="37wK5m">
                  <property role="11gdj1" value="cdff0e1a96739c3L" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="Xl_RD" id="DL" role="37wK5m">
                  <property role="Xl_RC" value="optionsName" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="DC" role="37wK5m">
              <ref role="3cqZAo" node="D_" resolve="container" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="DD" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="DE" role="37wK5m">
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
            <node concept="3clFbT" id="DF" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="D_" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="DM" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Dv" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3Tm1VV" id="DN" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="10P_77" id="DO" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="37vLTG" id="DP" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3Tqbb2" id="DU" role="1tU5fm">
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="DQ" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="DV" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="DR" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="DW" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="3clFbS" id="DS" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3cpWs8" id="DX" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="3cpWsn" id="E0" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="10P_77" id="E1" role="1tU5fm">
                <uo k="s:originTrace" v="n:927724900262213628" />
              </node>
              <node concept="1rXfSq" id="E2" role="33vP2m">
                <ref role="37wK5l" node="Dw" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="37vLTw" id="E3" role="37wK5m">
                  <ref role="3cqZAo" node="DP" resolve="node" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="2YIFZM" id="E4" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="37vLTw" id="E5" role="37wK5m">
                    <ref role="3cqZAo" node="DQ" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="DY" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="3clFbS" id="E6" role="3clFbx">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="3clFbF" id="E8" role="3cqZAp">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="2OqwBi" id="E9" role="3clFbG">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                  <node concept="37vLTw" id="Ea" role="2Oq$k0">
                    <ref role="3cqZAo" node="DR" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                  </node>
                  <node concept="liA8E" id="Eb" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:927724900262213628" />
                    <node concept="2ShNRf" id="Ec" role="37wK5m">
                      <uo k="s:originTrace" v="n:927724900262213628" />
                      <node concept="1pGfFk" id="Ed" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:927724900262213628" />
                        <node concept="Xl_RD" id="Ee" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                        <node concept="Xl_RD" id="Ef" role="37wK5m">
                          <property role="Xl_RC" value="927724900262335948" />
                          <uo k="s:originTrace" v="n:927724900262213628" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="E7" role="3clFbw">
              <uo k="s:originTrace" v="n:927724900262213628" />
              <node concept="3y3z36" id="Eg" role="3uHU7w">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="10Nm6u" id="Ei" role="3uHU7w">
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
                <node concept="37vLTw" id="Ej" role="3uHU7B">
                  <ref role="3cqZAo" node="DR" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Eh" role="3uHU7B">
                <uo k="s:originTrace" v="n:927724900262213628" />
                <node concept="37vLTw" id="Ek" role="3fr31v">
                  <ref role="3cqZAo" node="E0" resolve="result" />
                  <uo k="s:originTrace" v="n:927724900262213628" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="DZ" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262213628" />
            <node concept="37vLTw" id="El" role="3clFbG">
              <ref role="3cqZAo" node="E0" resolve="result" />
              <uo k="s:originTrace" v="n:927724900262213628" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="DT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="2YIFZL" id="Dw" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="37vLTG" id="Em" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3Tqbb2" id="Er" role="1tU5fm">
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="37vLTG" id="En" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:927724900262213628" />
          <node concept="3uibUv" id="Es" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:927724900262213628" />
          </node>
        </node>
        <node concept="10P_77" id="Eo" role="3clF45">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3Tm6S6" id="Ep" role="1B3o_S">
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
        <node concept="3clFbS" id="Eq" role="3clF47">
          <uo k="s:originTrace" v="n:927724900262335949" />
          <node concept="3clFbF" id="Et" role="3cqZAp">
            <uo k="s:originTrace" v="n:927724900262335950" />
            <node concept="22lmx$" id="Eu" role="3clFbG">
              <uo k="s:originTrace" v="n:927724900262335975" />
              <node concept="2YIFZM" id="Ev" role="3uHU7w">
                <ref role="37wK5l" to="o3n2:NvWe6DqV$5" resolve="isValidProjectPartName" />
                <ref role="1Pybhc" to="o3n2:NvWe6DqVzZ" resolve="NameUtil" />
                <uo k="s:originTrace" v="n:927724900262335985" />
                <node concept="37vLTw" id="Ex" role="37wK5m">
                  <ref role="3cqZAo" node="En" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:927724900262335986" />
                </node>
              </node>
              <node concept="2OqwBi" id="Ew" role="3uHU7B">
                <uo k="s:originTrace" v="n:927724900262335968" />
                <node concept="37vLTw" id="Ey" role="2Oq$k0">
                  <ref role="3cqZAo" node="En" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:927724900262335951" />
                </node>
                <node concept="17RlXB" id="Ez" role="2OqNvi">
                  <uo k="s:originTrace" v="n:927724900262335974" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Dx" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
    </node>
    <node concept="2YIFZL" id="Ck" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:927724900262213628" />
      <node concept="10P_77" id="E$" role="3clF45">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3Tm6S6" id="E_" role="1B3o_S">
        <uo k="s:originTrace" v="n:927724900262213628" />
      </node>
      <node concept="3clFbS" id="EA" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580432" />
        <node concept="3clFbF" id="EF" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580433" />
          <node concept="22lmx$" id="EG" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580434" />
            <node concept="2OqwBi" id="EH" role="3uHU7w">
              <uo k="s:originTrace" v="n:8421617199856561823" />
              <node concept="37vLTw" id="EJ" role="2Oq$k0">
                <ref role="3cqZAo" node="EC" resolve="parentNode" />
                <uo k="s:originTrace" v="n:8421617199856560843" />
              </node>
              <node concept="3zqWPK" id="EK" role="2OqNvi">
                <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
                <uo k="s:originTrace" v="n:8085146484218851490" />
              </node>
            </node>
            <node concept="1Wc70l" id="EI" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536580445" />
              <node concept="2OqwBi" id="EL" role="3uHU7w">
                <uo k="s:originTrace" v="n:8421617199856553778" />
                <node concept="2OqwBi" id="EN" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:8421617199856539923" />
                  <node concept="2OqwBi" id="EP" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536580447" />
                    <node concept="1PxgMI" id="ER" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:1227128029536580448" />
                      <node concept="37vLTw" id="ET" role="1m5AlR">
                        <ref role="3cqZAo" node="EC" resolve="parentNode" />
                        <uo k="s:originTrace" v="n:1227128029536580449" />
                      </node>
                      <node concept="chp4Y" id="EU" role="3oSUPX">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                        <uo k="s:originTrace" v="n:1227128029536580450" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="ES" role="2OqNvi">
                      <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                      <uo k="s:originTrace" v="n:1227128029536580451" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="EQ" role="2OqNvi">
                    <uo k="s:originTrace" v="n:8421617199856550532" />
                    <node concept="chp4Y" id="EV" role="v3oSu">
                      <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                      <uo k="s:originTrace" v="n:8421617199856551831" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="EO" role="2OqNvi">
                  <uo k="s:originTrace" v="n:8421617199856556111" />
                </node>
              </node>
              <node concept="2OqwBi" id="EM" role="3uHU7B">
                <uo k="s:originTrace" v="n:1227128029536580462" />
                <node concept="37vLTw" id="EW" role="2Oq$k0">
                  <ref role="3cqZAo" node="EC" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:1227128029536580463" />
                </node>
                <node concept="1mIQ4w" id="EX" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536580464" />
                  <node concept="chp4Y" id="EY" role="cj9EA">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    <uo k="s:originTrace" v="n:1227128029536580465" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="EB" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="EZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="EC" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="F0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="ED" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="F1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
      <node concept="37vLTG" id="EE" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:927724900262213628" />
        <node concept="3uibUv" id="F2" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:927724900262213628" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="F3">
    <property role="3GE5qa" value="Project.Java.Sources" />
    <property role="TrG5h" value="BuildSource_JavaSources_Constraints" />
    <uo k="s:originTrace" v="n:5248329904288343261" />
    <node concept="3Tm1VV" id="F4" role="1B3o_S">
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
    <node concept="3uibUv" id="F5" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
    <node concept="3clFbW" id="F6" role="jymVt">
      <uo k="s:originTrace" v="n:5248329904288343261" />
      <node concept="37vLTG" id="F8" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5248329904288343261" />
        <node concept="3uibUv" id="Fb" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5248329904288343261" />
        </node>
      </node>
      <node concept="3cqZAl" id="F9" role="3clF45">
        <uo k="s:originTrace" v="n:5248329904288343261" />
      </node>
      <node concept="3clFbS" id="Fa" role="3clF47">
        <uo k="s:originTrace" v="n:5248329904288343261" />
        <node concept="XkiVB" id="Fc" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5248329904288343261" />
          <node concept="1BaE9c" id="Fd" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildSource_JavaSources$xh" />
            <uo k="s:originTrace" v="n:5248329904288343261" />
            <node concept="2YIFZM" id="Ff" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5248329904288343261" />
              <node concept="11gdke" id="Fg" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="11gdke" id="Fh" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="11gdke" id="Fi" role="37wK5m">
                <property role="11gdj1" value="48d5d03db92974fcL" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
              <node concept="Xl_RD" id="Fj" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildSource_JavaSources" />
                <uo k="s:originTrace" v="n:5248329904288343261" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Fe" role="37wK5m">
            <ref role="3cqZAo" node="F8" resolve="initContext" />
            <uo k="s:originTrace" v="n:5248329904288343261" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="F7" role="jymVt">
      <uo k="s:originTrace" v="n:5248329904288343261" />
    </node>
  </node>
  <node concept="312cEu" id="Fk">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4380385936562359245" />
    <node concept="3Tm1VV" id="Fl" role="1B3o_S">
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
    <node concept="3uibUv" id="Fm" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
    <node concept="3clFbW" id="Fn" role="jymVt">
      <uo k="s:originTrace" v="n:4380385936562359245" />
      <node concept="37vLTG" id="Fp" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4380385936562359245" />
        <node concept="3uibUv" id="Fs" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4380385936562359245" />
        </node>
      </node>
      <node concept="3cqZAl" id="Fq" role="3clF45">
        <uo k="s:originTrace" v="n:4380385936562359245" />
      </node>
      <node concept="3clFbS" id="Fr" role="3clF47">
        <uo k="s:originTrace" v="n:4380385936562359245" />
        <node concept="XkiVB" id="Ft" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4380385936562359245" />
          <node concept="1BaE9c" id="Fu" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildStringPart$1V" />
            <uo k="s:originTrace" v="n:4380385936562359245" />
            <node concept="2YIFZM" id="Fw" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4380385936562359245" />
              <node concept="11gdke" id="Fx" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="11gdke" id="Fy" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="11gdke" id="Fz" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7cffL" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
              <node concept="Xl_RD" id="F$" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildStringPart" />
                <uo k="s:originTrace" v="n:4380385936562359245" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Fv" role="37wK5m">
            <ref role="3cqZAo" node="Fp" resolve="initContext" />
            <uo k="s:originTrace" v="n:4380385936562359245" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Fo" role="jymVt">
      <uo k="s:originTrace" v="n:4380385936562359245" />
    </node>
  </node>
  <node concept="312cEu" id="F_">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildTextStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4903714810883755357" />
    <node concept="3Tm1VV" id="FA" role="1B3o_S">
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="3uibUv" id="FB" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="3clFbW" id="FC" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="37vLTG" id="FG" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3uibUv" id="FJ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
      </node>
      <node concept="3cqZAl" id="FH" role="3clF45">
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
      <node concept="3clFbS" id="FI" role="3clF47">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="XkiVB" id="FK" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1BaE9c" id="FN" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildTextStringPart$3R" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2YIFZM" id="FP" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="11gdke" id="FQ" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="11gdke" id="FR" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="11gdke" id="FS" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7d03L" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="Xl_RD" id="FT" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildTextStringPart" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="FO" role="37wK5m">
            <ref role="3cqZAo" node="FG" resolve="initContext" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="3clFbF" id="FL" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1rXfSq" id="FU" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2ShNRf" id="FV" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="1pGfFk" id="FW" role="2ShVmc">
                <ref role="37wK5l" node="G2" resolve="BuildTextStringPart_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="Xjq3P" id="FX" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FM" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="1rXfSq" id="FY" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="2ShNRf" id="FZ" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="1pGfFk" id="G0" role="2ShVmc">
                <ref role="37wK5l" node="Gw" resolve="BuildTextStringPart_Constraints.Text_PD" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="Xjq3P" id="G1" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FD" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883755357" />
    </node>
    <node concept="312cEu" id="FE" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="3clFbW" id="G2" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3cqZAl" id="G5" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm1VV" id="G6" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="G7" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="XkiVB" id="G9" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="1BaE9c" id="Ga" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="2YIFZM" id="Gf" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="11gdke" id="Gg" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Gh" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Gi" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="Gj" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="Xl_RD" id="Gk" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Gb" role="37wK5m">
              <ref role="3cqZAo" node="G8" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="Gc" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="Gd" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="Ge" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="G8" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="Gl" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="G3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3Tm1VV" id="Gm" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3uibUv" id="Gn" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="37vLTG" id="Go" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="Gr" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="2AHcQZ" id="Gp" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="Gq" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755362" />
          <node concept="3clFbF" id="Gs" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755363" />
            <node concept="2OqwBi" id="Gt" role="3clFbG">
              <uo k="s:originTrace" v="n:4903714810883755367" />
              <node concept="37vLTw" id="Gu" role="2Oq$k0">
                <ref role="3cqZAo" node="Go" resolve="node" />
                <uo k="s:originTrace" v="n:4903714810883755364" />
              </node>
              <node concept="3TrcHB" id="Gv" role="2OqNvi">
                <ref role="3TsBF5" to="3ior:4gdvEeQz4Pm" resolve="text" />
                <uo k="s:originTrace" v="n:4903714810883755372" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="G4" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
    </node>
    <node concept="312cEu" id="FF" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Text_PD" />
      <uo k="s:originTrace" v="n:4903714810883755357" />
      <node concept="3clFbW" id="Gw" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3cqZAl" id="G$" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm1VV" id="G_" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="GA" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="XkiVB" id="GC" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="1BaE9c" id="GD" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="text$lRuU" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="2YIFZM" id="GI" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="11gdke" id="GJ" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="GK" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="GL" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d03L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="11gdke" id="GM" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68c4d56L" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="Xl_RD" id="GN" role="37wK5m">
                  <property role="Xl_RC" value="text" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="GE" role="37wK5m">
              <ref role="3cqZAo" node="GB" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="GF" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="GG" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
            <node concept="3clFbT" id="GH" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="GB" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="GO" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Gx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="3Tm1VV" id="GP" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="10P_77" id="GQ" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="37vLTG" id="GR" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="GW" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="GS" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="GX" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="GT" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="GY" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="3clFbS" id="GU" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3cpWs8" id="GZ" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="3cpWsn" id="H2" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="10P_77" id="H3" role="1tU5fm">
                <uo k="s:originTrace" v="n:4903714810883755357" />
              </node>
              <node concept="1rXfSq" id="H4" role="33vP2m">
                <ref role="37wK5l" node="Gy" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="37vLTw" id="H5" role="37wK5m">
                  <ref role="3cqZAo" node="GR" resolve="node" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="2YIFZM" id="H6" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                  <node concept="37vLTw" id="H7" role="37wK5m">
                    <ref role="3cqZAo" node="GS" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="H0" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="3clFbS" id="H8" role="3clFbx">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="3clFbF" id="Ha" role="3cqZAp">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="2OqwBi" id="Hb" role="3clFbG">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                  <node concept="37vLTw" id="Hc" role="2Oq$k0">
                    <ref role="3cqZAo" node="GT" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                  </node>
                  <node concept="liA8E" id="Hd" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:4903714810883755357" />
                    <node concept="2ShNRf" id="He" role="37wK5m">
                      <uo k="s:originTrace" v="n:4903714810883755357" />
                      <node concept="1pGfFk" id="Hf" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:4903714810883755357" />
                        <node concept="Xl_RD" id="Hg" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:4903714810883755357" />
                        </node>
                        <node concept="Xl_RD" id="Hh" role="37wK5m">
                          <property role="Xl_RC" value="9184644532456897313" />
                          <uo k="s:originTrace" v="n:4903714810883755357" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="H9" role="3clFbw">
              <uo k="s:originTrace" v="n:4903714810883755357" />
              <node concept="3y3z36" id="Hi" role="3uHU7w">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="10Nm6u" id="Hk" role="3uHU7w">
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
                <node concept="37vLTw" id="Hl" role="3uHU7B">
                  <ref role="3cqZAo" node="GT" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Hj" role="3uHU7B">
                <uo k="s:originTrace" v="n:4903714810883755357" />
                <node concept="37vLTw" id="Hm" role="3fr31v">
                  <ref role="3cqZAo" node="H2" resolve="result" />
                  <uo k="s:originTrace" v="n:4903714810883755357" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="H1" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883755357" />
            <node concept="37vLTw" id="Hn" role="3clFbG">
              <ref role="3cqZAo" node="H2" resolve="result" />
              <uo k="s:originTrace" v="n:4903714810883755357" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="GV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
      </node>
      <node concept="2YIFZL" id="Gy" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
        <node concept="37vLTG" id="Ho" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3Tqbb2" id="Ht" role="1tU5fm">
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="37vLTG" id="Hp" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:4903714810883755357" />
          <node concept="3uibUv" id="Hu" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:4903714810883755357" />
          </node>
        </node>
        <node concept="10P_77" id="Hq" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3Tm6S6" id="Hr" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883755357" />
        </node>
        <node concept="3clFbS" id="Hs" role="3clF47">
          <uo k="s:originTrace" v="n:9184644532456897314" />
          <node concept="3cpWs8" id="Hv" role="3cqZAp">
            <uo k="s:originTrace" v="n:6083230236994622250" />
            <node concept="3cpWsn" id="Hy" role="3cpWs9">
              <property role="TrG5h" value="container" />
              <uo k="s:originTrace" v="n:6083230236994622251" />
              <node concept="3Tqbb2" id="Hz" role="1tU5fm">
                <ref role="ehGHo" to="3ior:7XQqoCTkVIO" resolve="BuildStringContainer" />
                <uo k="s:originTrace" v="n:6083230236994622252" />
              </node>
              <node concept="2OqwBi" id="H$" role="33vP2m">
                <uo k="s:originTrace" v="n:6083230236994622253" />
                <node concept="37vLTw" id="H_" role="2Oq$k0">
                  <ref role="3cqZAo" node="Ho" resolve="node" />
                  <uo k="s:originTrace" v="n:6083230236994622254" />
                </node>
                <node concept="3zqWPK" id="HA" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:5hFYqIiYHaE" resolve="getContainer" />
                  <uo k="s:originTrace" v="n:8085146484218851476" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Hw" role="3cqZAp">
            <uo k="s:originTrace" v="n:9184644532456897472" />
            <node concept="3y3z36" id="HB" role="3clFbw">
              <uo k="s:originTrace" v="n:6083230236994622280" />
              <node concept="10Nm6u" id="HD" role="3uHU7w">
                <uo k="s:originTrace" v="n:6083230236994622283" />
              </node>
              <node concept="37vLTw" id="HE" role="3uHU7B">
                <ref role="3cqZAo" node="Hy" resolve="container" />
                <uo k="s:originTrace" v="n:4265636116363065192" />
              </node>
            </node>
            <node concept="3clFbS" id="HC" role="3clFbx">
              <uo k="s:originTrace" v="n:9184644532456897473" />
              <node concept="3cpWs6" id="HF" role="3cqZAp">
                <uo k="s:originTrace" v="n:9184644532456897626" />
                <node concept="2OqwBi" id="HG" role="3cqZAk">
                  <uo k="s:originTrace" v="n:9184644532456897740" />
                  <node concept="37vLTw" id="HH" role="2Oq$k0">
                    <ref role="3cqZAo" node="Hy" resolve="container" />
                    <uo k="s:originTrace" v="n:4265636116363107267" />
                  </node>
                  <node concept="3zqWPK" id="HI" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:7XQqoCTkVIS" resolve="isValidPart" />
                    <uo k="s:originTrace" v="n:8085146484218851478" />
                    <node concept="37vLTw" id="HJ" role="37wK5m">
                      <ref role="3cqZAo" node="Hp" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:8085146484218851480" />
                    </node>
                    <node concept="2OqwBi" id="HK" role="37wK5m">
                      <uo k="s:originTrace" v="n:8085146484218851481" />
                      <node concept="2JrnkZ" id="HL" role="2Oq$k0">
                        <uo k="s:originTrace" v="n:8085146484218851482" />
                        <node concept="2OqwBi" id="HN" role="2JrQYb">
                          <uo k="s:originTrace" v="n:8085146484218851483" />
                          <node concept="37vLTw" id="HO" role="2Oq$k0">
                            <ref role="3cqZAo" node="Ho" resolve="node" />
                            <uo k="s:originTrace" v="n:8085146484218851484" />
                          </node>
                          <node concept="1mfA1w" id="HP" role="2OqNvi">
                            <uo k="s:originTrace" v="n:8085146484218851485" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="HM" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                        <uo k="s:originTrace" v="n:8085146484218851486" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="Hx" role="3cqZAp">
            <uo k="s:originTrace" v="n:9184644532456897316" />
            <node concept="3fqX7Q" id="HQ" role="3clFbG">
              <uo k="s:originTrace" v="n:9184644532456897442" />
              <node concept="2OqwBi" id="HR" role="3fr31v">
                <uo k="s:originTrace" v="n:9184644532456897449" />
                <node concept="37vLTw" id="HS" role="2Oq$k0">
                  <ref role="3cqZAo" node="Hp" resolve="propertyValue" />
                  <uo k="s:originTrace" v="n:9184644532456897450" />
                </node>
                <node concept="liA8E" id="HT" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <uo k="s:originTrace" v="n:9184644532456897451" />
                  <node concept="Xl_RD" id="HU" role="37wK5m">
                    <property role="Xl_RC" value="$" />
                    <uo k="s:originTrace" v="n:9184644532456897452" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Gz" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883755357" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="HV">
    <property role="3GE5qa" value="Names" />
    <property role="TrG5h" value="BuildVarRefStringPart_Constraints" />
    <uo k="s:originTrace" v="n:4903714810883713094" />
    <node concept="3Tm1VV" id="HW" role="1B3o_S">
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="3uibUv" id="HX" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="3clFbW" id="HY" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883713094" />
      <node concept="37vLTG" id="I1" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="3uibUv" id="I4" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
      </node>
      <node concept="3cqZAl" id="I2" role="3clF45">
        <uo k="s:originTrace" v="n:4903714810883713094" />
      </node>
      <node concept="3clFbS" id="I3" role="3clF47">
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="XkiVB" id="I5" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="1BaE9c" id="I7" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVarRefStringPart$2T" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2YIFZM" id="I9" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="11gdke" id="Ia" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="11gdke" id="Ib" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="11gdke" id="Ic" role="37wK5m">
                <property role="11gdj1" value="440d7ea3b68b7d01L" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
              <node concept="Xl_RD" id="Id" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVarRefStringPart" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="I8" role="37wK5m">
            <ref role="3cqZAo" node="I1" resolve="initContext" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
          </node>
        </node>
        <node concept="3clFbF" id="I6" role="3cqZAp">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="1rXfSq" id="Ie" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2ShNRf" id="If" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="1pGfFk" id="Ig" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Ii" resolve="BuildVarRefStringPart_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
                <node concept="Xjq3P" id="Ih" role="37wK5m">
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="HZ" role="jymVt">
      <uo k="s:originTrace" v="n:4903714810883713094" />
    </node>
    <node concept="312cEu" id="I0" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4903714810883713094" />
      <node concept="3clFbW" id="Ii" role="jymVt">
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="37vLTG" id="Il" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="3uibUv" id="Io" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
          </node>
        </node>
        <node concept="3cqZAl" id="Im" role="3clF45">
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3clFbS" id="In" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="XkiVB" id="Ip" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="1BaE9c" id="Iq" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="macro$zsHz" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
              <node concept="2YIFZM" id="Iu" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4903714810883713094" />
                <node concept="11gdke" id="Iv" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="Iw" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="Ix" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d01L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="11gdke" id="Iy" role="37wK5m">
                  <property role="11gdj1" value="440d7ea3b68b7d02L" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
                <node concept="Xl_RD" id="Iz" role="37wK5m">
                  <property role="Xl_RC" value="macro" />
                  <uo k="s:originTrace" v="n:4903714810883713094" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Ir" role="37wK5m">
              <ref role="3cqZAo" node="Il" resolve="container" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
            <node concept="3clFbT" id="Is" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
            <node concept="3clFbT" id="It" role="37wK5m">
              <uo k="s:originTrace" v="n:4903714810883713094" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Ij" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
        <node concept="3Tm1VV" id="I$" role="1B3o_S">
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3uibUv" id="I_" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="2AHcQZ" id="IA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
        <node concept="3clFbS" id="IB" role="3clF47">
          <uo k="s:originTrace" v="n:4903714810883713094" />
          <node concept="3cpWs6" id="ID" role="3cqZAp">
            <uo k="s:originTrace" v="n:4903714810883713094" />
            <node concept="2YIFZM" id="IE" role="3cqZAk">
              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.fromHierarchy(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="fromHierarchy" />
              <ref role="1Pybhc" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
              <uo k="s:originTrace" v="n:4903714810883713096" />
              <node concept="35c_gC" id="IF" role="37wK5m">
                <ref role="35c_gD" to="3ior:4RPz6WoY4Cv" resolve="BuildMacro" />
                <uo k="s:originTrace" v="n:4903714810883713096" />
              </node>
              <node concept="2ShNRf" id="IG" role="37wK5m">
                <uo k="s:originTrace" v="n:4903714810883713096" />
                <node concept="1pGfFk" id="IH" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                  <uo k="s:originTrace" v="n:4903714810883713096" />
                  <node concept="Xl_RD" id="II" role="37wK5m">
                    <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                    <uo k="s:originTrace" v="n:4903714810883713096" />
                  </node>
                  <node concept="Xl_RD" id="IJ" role="37wK5m">
                    <property role="Xl_RC" value="4903714810883713096" />
                    <uo k="s:originTrace" v="n:4903714810883713096" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="IC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4903714810883713094" />
        </node>
      </node>
      <node concept="3uibUv" id="Ik" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4903714810883713094" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="IK">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacroInitValue_Constraints" />
    <uo k="s:originTrace" v="n:244868996532694529" />
    <node concept="3Tm1VV" id="IL" role="1B3o_S">
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="3uibUv" id="IM" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="3clFbW" id="IN" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532694529" />
      <node concept="37vLTG" id="IQ" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="IT" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="3cqZAl" id="IR" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3clFbS" id="IS" role="3clF47">
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="XkiVB" id="IU" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:244868996532694529" />
          <node concept="1BaE9c" id="IW" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacroInitValue$$g" />
            <uo k="s:originTrace" v="n:244868996532694529" />
            <node concept="2YIFZM" id="IY" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:244868996532694529" />
              <node concept="11gdke" id="IZ" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="11gdke" id="J0" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="11gdke" id="J1" role="37wK5m">
                <property role="11gdj1" value="263c91972cd1e1aaL" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
              <node concept="Xl_RD" id="J2" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacroInitValue" />
                <uo k="s:originTrace" v="n:244868996532694529" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="IX" role="37wK5m">
            <ref role="3cqZAo" node="IQ" resolve="initContext" />
            <uo k="s:originTrace" v="n:244868996532694529" />
          </node>
        </node>
        <node concept="3clFbF" id="IV" role="3cqZAp">
          <uo k="s:originTrace" v="n:244868996532694529" />
          <node concept="1rXfSq" id="J3" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:244868996532694529" />
            <node concept="2ShNRf" id="J4" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532694529" />
              <node concept="YeOm9" id="J5" role="2ShVmc">
                <uo k="s:originTrace" v="n:244868996532694529" />
                <node concept="1Y3b0j" id="J6" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:244868996532694529" />
                  <node concept="3Tm1VV" id="J7" role="1B3o_S">
                    <uo k="s:originTrace" v="n:244868996532694529" />
                  </node>
                  <node concept="3clFb_" id="J8" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:244868996532694529" />
                    <node concept="3Tm1VV" id="Jb" role="1B3o_S">
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="2AHcQZ" id="Jc" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="3uibUv" id="Jd" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                    </node>
                    <node concept="37vLTG" id="Je" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3uibUv" id="Jh" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="2AHcQZ" id="Ji" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="Jf" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3uibUv" id="Jj" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="2AHcQZ" id="Jk" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Jg" role="3clF47">
                      <uo k="s:originTrace" v="n:244868996532694529" />
                      <node concept="3cpWs8" id="Jl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="3cpWsn" id="Jq" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="10P_77" id="Jr" role="1tU5fm">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                          </node>
                          <node concept="1rXfSq" id="Js" role="33vP2m">
                            <ref role="37wK5l" node="IP" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="2OqwBi" id="Jt" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="Jx" role="2Oq$k0">
                                <ref role="3cqZAo" node="Je" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="Jy" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Ju" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="Jz" role="2Oq$k0">
                                <ref role="3cqZAo" node="Je" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="J$" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Jv" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="J_" role="2Oq$k0">
                                <ref role="3cqZAo" node="Je" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="JA" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Jw" role="37wK5m">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="JB" role="2Oq$k0">
                                <ref role="3cqZAo" node="Je" resolve="context" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="JC" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Jm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="3clFbJ" id="Jn" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="3clFbS" id="JD" role="3clFbx">
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="3clFbF" id="JF" role="3cqZAp">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="2OqwBi" id="JG" role="3clFbG">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                              <node concept="37vLTw" id="JH" role="2Oq$k0">
                                <ref role="3cqZAo" node="Jf" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                              </node>
                              <node concept="liA8E" id="JI" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:244868996532694529" />
                                <node concept="1dyn4i" id="JJ" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:244868996532694529" />
                                  <node concept="2ShNRf" id="JK" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:244868996532694529" />
                                    <node concept="1pGfFk" id="JL" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:244868996532694529" />
                                      <node concept="Xl_RD" id="JM" role="37wK5m">
                                        <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                                        <uo k="s:originTrace" v="n:244868996532694529" />
                                      </node>
                                      <node concept="Xl_RD" id="JN" role="37wK5m">
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
                        <node concept="1Wc70l" id="JE" role="3clFbw">
                          <uo k="s:originTrace" v="n:244868996532694529" />
                          <node concept="3y3z36" id="JO" role="3uHU7w">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="10Nm6u" id="JQ" role="3uHU7w">
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                            <node concept="37vLTw" id="JR" role="3uHU7B">
                              <ref role="3cqZAo" node="Jf" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="JP" role="3uHU7B">
                            <uo k="s:originTrace" v="n:244868996532694529" />
                            <node concept="37vLTw" id="JS" role="3fr31v">
                              <ref role="3cqZAo" node="Jq" resolve="result" />
                              <uo k="s:originTrace" v="n:244868996532694529" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Jo" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                      </node>
                      <node concept="3clFbF" id="Jp" role="3cqZAp">
                        <uo k="s:originTrace" v="n:244868996532694529" />
                        <node concept="37vLTw" id="JT" role="3clFbG">
                          <ref role="3cqZAo" node="Jq" resolve="result" />
                          <uo k="s:originTrace" v="n:244868996532694529" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="J9" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:244868996532694529" />
                  </node>
                  <node concept="3uibUv" id="Ja" role="2Ghqu4">
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
    <node concept="2tJIrI" id="IO" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532694529" />
    </node>
    <node concept="2YIFZL" id="IP" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:244868996532694529" />
      <node concept="10P_77" id="JU" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3Tm6S6" id="JV" role="1B3o_S">
        <uo k="s:originTrace" v="n:244868996532694529" />
      </node>
      <node concept="3clFbS" id="JW" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536580559" />
        <node concept="3clFbF" id="K1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536580560" />
          <node concept="2OqwBi" id="K2" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536580561" />
            <node concept="37vLTw" id="K3" role="2Oq$k0">
              <ref role="3cqZAo" node="JY" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536580562" />
            </node>
            <node concept="1mIQ4w" id="K4" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536580563" />
              <node concept="chp4Y" id="K5" role="cj9EA">
                <ref role="cht4Q" to="3ior:3h9a8EwPm3y" resolve="BuildVariableMacro" />
                <uo k="s:originTrace" v="n:1227128029536580564" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="JX" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="K6" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="JY" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="K7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="JZ" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="K8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
      <node concept="37vLTG" id="K0" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:244868996532694529" />
        <node concept="3uibUv" id="K9" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:244868996532694529" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Ka">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacroInitWithDate_Constraints" />
    <uo k="s:originTrace" v="n:244868996532454386" />
    <node concept="3Tm1VV" id="Kb" role="1B3o_S">
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="3uibUv" id="Kc" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="3clFbW" id="Kd" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532454386" />
      <node concept="37vLTG" id="Kg" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3uibUv" id="Kj" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
      </node>
      <node concept="3cqZAl" id="Kh" role="3clF45">
        <uo k="s:originTrace" v="n:244868996532454386" />
      </node>
      <node concept="3clFbS" id="Ki" role="3clF47">
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="XkiVB" id="Kk" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="1BaE9c" id="Km" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacroInitWithDate$_z" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="2YIFZM" id="Ko" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="11gdke" id="Kp" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="11gdke" id="Kq" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="11gdke" id="Kr" role="37wK5m">
                <property role="11gdj1" value="365f30e12d2c3e4L" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="Xl_RD" id="Ks" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacroInitWithDate" />
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Kn" role="37wK5m">
            <ref role="3cqZAo" node="Kg" resolve="initContext" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="3clFbF" id="Kl" role="3cqZAp">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="1rXfSq" id="Kt" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="2ShNRf" id="Ku" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="1pGfFk" id="Kv" role="2ShVmc">
                <ref role="37wK5l" node="Kx" resolve="BuildVariableMacroInitWithDate_Constraints.Pattern_PD" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="Xjq3P" id="Kw" role="37wK5m">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ke" role="jymVt">
      <uo k="s:originTrace" v="n:244868996532454386" />
    </node>
    <node concept="312cEu" id="Kf" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Pattern_PD" />
      <uo k="s:originTrace" v="n:244868996532454386" />
      <node concept="3clFbW" id="Kx" role="jymVt">
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3cqZAl" id="K_" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3Tm1VV" id="KA" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3clFbS" id="KB" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="XkiVB" id="KD" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="1BaE9c" id="KE" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="pattern$sPz3" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="2YIFZM" id="KJ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="11gdke" id="KK" role="37wK5m">
                  <property role="11gdj1" value="798100da4f0a421aL" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="KL" role="37wK5m">
                  <property role="11gdj1" value="b99171f8c50ce5d2L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="KM" role="37wK5m">
                  <property role="11gdj1" value="365f30e12d2c3e4L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="11gdke" id="KN" role="37wK5m">
                  <property role="11gdj1" value="365f30e12d2c3f0L" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="Xl_RD" id="KO" role="37wK5m">
                  <property role="Xl_RC" value="pattern" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="KF" role="37wK5m">
              <ref role="3cqZAo" node="KC" resolve="container" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="KG" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="KH" role="37wK5m">
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
            <node concept="3clFbT" id="KI" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="KC" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="KP" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Ky" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="3Tm1VV" id="KQ" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="10P_77" id="KR" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="37vLTG" id="KS" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3Tqbb2" id="KX" role="1tU5fm">
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="KT" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="KY" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="KU" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="KZ" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="3clFbS" id="KV" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3cpWs8" id="L0" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="3cpWsn" id="L3" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="10P_77" id="L4" role="1tU5fm">
                <uo k="s:originTrace" v="n:244868996532454386" />
              </node>
              <node concept="1rXfSq" id="L5" role="33vP2m">
                <ref role="37wK5l" node="Kz" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="37vLTw" id="L6" role="37wK5m">
                  <ref role="3cqZAo" node="KS" resolve="node" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="2YIFZM" id="L7" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                  <node concept="37vLTw" id="L8" role="37wK5m">
                    <ref role="3cqZAo" node="KT" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="L1" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="3clFbS" id="L9" role="3clFbx">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="3clFbF" id="Lb" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="2OqwBi" id="Lc" role="3clFbG">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                  <node concept="37vLTw" id="Ld" role="2Oq$k0">
                    <ref role="3cqZAo" node="KU" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                  </node>
                  <node concept="liA8E" id="Le" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:244868996532454386" />
                    <node concept="2ShNRf" id="Lf" role="37wK5m">
                      <uo k="s:originTrace" v="n:244868996532454386" />
                      <node concept="1pGfFk" id="Lg" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:244868996532454386" />
                        <node concept="Xl_RD" id="Lh" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:244868996532454386" />
                        </node>
                        <node concept="Xl_RD" id="Li" role="37wK5m">
                          <property role="Xl_RC" value="244868996532454388" />
                          <uo k="s:originTrace" v="n:244868996532454386" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="La" role="3clFbw">
              <uo k="s:originTrace" v="n:244868996532454386" />
              <node concept="3y3z36" id="Lj" role="3uHU7w">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="10Nm6u" id="Ll" role="3uHU7w">
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
                <node concept="37vLTw" id="Lm" role="3uHU7B">
                  <ref role="3cqZAo" node="KU" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
              <node concept="3fqX7Q" id="Lk" role="3uHU7B">
                <uo k="s:originTrace" v="n:244868996532454386" />
                <node concept="37vLTw" id="Ln" role="3fr31v">
                  <ref role="3cqZAo" node="L3" resolve="result" />
                  <uo k="s:originTrace" v="n:244868996532454386" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="L2" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454386" />
            <node concept="37vLTw" id="Lo" role="3clFbG">
              <ref role="3cqZAo" node="L3" resolve="result" />
              <uo k="s:originTrace" v="n:244868996532454386" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="KW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
      </node>
      <node concept="2YIFZL" id="Kz" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:244868996532454386" />
        <node concept="37vLTG" id="Lp" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3Tqbb2" id="Lu" role="1tU5fm">
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="37vLTG" id="Lq" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:244868996532454386" />
          <node concept="3uibUv" id="Lv" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:244868996532454386" />
          </node>
        </node>
        <node concept="10P_77" id="Lr" role="3clF45">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3Tm6S6" id="Ls" role="1B3o_S">
          <uo k="s:originTrace" v="n:244868996532454386" />
        </node>
        <node concept="3clFbS" id="Lt" role="3clF47">
          <uo k="s:originTrace" v="n:244868996532454389" />
          <node concept="3J1_TO" id="Lw" role="3cqZAp">
            <uo k="s:originTrace" v="n:244868996532454390" />
            <node concept="3clFbS" id="Lx" role="1zxBo7">
              <uo k="s:originTrace" v="n:244868996532454391" />
              <node concept="3clFbF" id="Lz" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532454400" />
                <node concept="2ShNRf" id="L_" role="3clFbG">
                  <uo k="s:originTrace" v="n:244868996532454401" />
                  <node concept="1pGfFk" id="LA" role="2ShVmc">
                    <ref role="37wK5l" to="25x5:~SimpleDateFormat.&lt;init&gt;(java.lang.String)" resolve="SimpleDateFormat" />
                    <uo k="s:originTrace" v="n:244868996532459437" />
                    <node concept="37vLTw" id="LB" role="37wK5m">
                      <ref role="3cqZAo" node="Lq" resolve="propertyValue" />
                      <uo k="s:originTrace" v="n:244868996532459438" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="L$" role="3cqZAp">
                <uo k="s:originTrace" v="n:244868996532459440" />
                <node concept="3clFbT" id="LC" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                  <uo k="s:originTrace" v="n:244868996532459442" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="Ly" role="1zxBo5">
              <uo k="s:originTrace" v="n:244868996532454392" />
              <node concept="XOnhg" id="LD" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="ex" />
                <uo k="s:originTrace" v="n:244868996532454393" />
                <node concept="nSUau" id="LF" role="1tU5fm">
                  <uo k="s:originTrace" v="n:603324024917875774" />
                  <node concept="3uibUv" id="LG" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                    <uo k="s:originTrace" v="n:244868996532454396" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="LE" role="1zc67A">
                <uo k="s:originTrace" v="n:244868996532454395" />
                <node concept="3cpWs6" id="LH" role="3cqZAp">
                  <uo k="s:originTrace" v="n:244868996532454397" />
                  <node concept="3clFbT" id="LI" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                    <uo k="s:originTrace" v="n:244868996532454399" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="K$" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:244868996532454386" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="LJ">
    <property role="3GE5qa" value="Macro" />
    <property role="TrG5h" value="BuildVariableMacro_Constraints" />
    <uo k="s:originTrace" v="n:6420586245471679192" />
    <node concept="3Tm1VV" id="LK" role="1B3o_S">
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="3uibUv" id="LL" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="3clFbW" id="LM" role="jymVt">
      <uo k="s:originTrace" v="n:6420586245471679192" />
      <node concept="37vLTG" id="LP" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3uibUv" id="LS" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
      </node>
      <node concept="3cqZAl" id="LQ" role="3clF45">
        <uo k="s:originTrace" v="n:6420586245471679192" />
      </node>
      <node concept="3clFbS" id="LR" role="3clF47">
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="XkiVB" id="LT" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="1BaE9c" id="LV" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="BuildVariableMacro$Rk" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="2YIFZM" id="LX" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="11gdke" id="LY" role="37wK5m">
                <property role="11gdj1" value="798100da4f0a421aL" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="11gdke" id="LZ" role="37wK5m">
                <property role="11gdj1" value="b99171f8c50ce5d2L" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="11gdke" id="M0" role="37wK5m">
                <property role="11gdj1" value="3449288aa0d560e2L" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="Xl_RD" id="M1" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.build.structure.BuildVariableMacro" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="LW" role="37wK5m">
            <ref role="3cqZAo" node="LP" resolve="initContext" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="3clFbF" id="LU" role="3cqZAp">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="1rXfSq" id="M2" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="2ShNRf" id="M3" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="1pGfFk" id="M4" role="2ShVmc">
                <ref role="37wK5l" node="M6" resolve="BuildVariableMacro_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="Xjq3P" id="M5" role="37wK5m">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="LN" role="jymVt">
      <uo k="s:originTrace" v="n:6420586245471679192" />
    </node>
    <node concept="312cEu" id="LO" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:6420586245471679192" />
      <node concept="3clFbW" id="M6" role="jymVt">
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3cqZAl" id="Ma" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3Tm1VV" id="Mb" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3clFbS" id="Mc" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="XkiVB" id="Me" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="1BaE9c" id="Mf" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$MnvL" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="2YIFZM" id="Mk" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="11gdke" id="Ml" role="37wK5m">
                  <property role="11gdj1" value="ceab519525ea4f22L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="Mm" role="37wK5m">
                  <property role="11gdj1" value="9b92103b95ca8c0cL" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="Mn" role="37wK5m">
                  <property role="11gdj1" value="110396eaaa4L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="11gdke" id="Mo" role="37wK5m">
                  <property role="11gdj1" value="110396ec041L" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="Xl_RD" id="Mp" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Mg" role="37wK5m">
              <ref role="3cqZAo" node="Md" resolve="container" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="Mh" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="Mi" role="37wK5m">
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
            <node concept="3clFbT" id="Mj" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="Md" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="Mq" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="M7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="3Tm1VV" id="Mr" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="10P_77" id="Ms" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="37vLTG" id="Mt" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3Tqbb2" id="My" role="1tU5fm">
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="Mu" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="Mz" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="Mv" role="3clF46">
          <property role="TrG5h" value="checkingNodeContext" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="M$" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="3clFbS" id="Mw" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3cpWs8" id="M_" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="3cpWsn" id="MC" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="10P_77" id="MD" role="1tU5fm">
                <uo k="s:originTrace" v="n:6420586245471679192" />
              </node>
              <node concept="1rXfSq" id="ME" role="33vP2m">
                <ref role="37wK5l" node="M8" resolve="staticValidateProperty" />
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="37vLTw" id="MF" role="37wK5m">
                  <ref role="3cqZAo" node="Mt" resolve="node" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="2YIFZM" id="MG" role="37wK5m">
                  <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                  <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                  <node concept="37vLTw" id="MH" role="37wK5m">
                    <ref role="3cqZAo" node="Mu" resolve="propertyValue" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="MA" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="3clFbS" id="MI" role="3clFbx">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="3clFbF" id="MK" role="3cqZAp">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="2OqwBi" id="ML" role="3clFbG">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                  <node concept="37vLTw" id="MM" role="2Oq$k0">
                    <ref role="3cqZAo" node="Mv" resolve="checkingNodeContext" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                  </node>
                  <node concept="liA8E" id="MN" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                    <uo k="s:originTrace" v="n:6420586245471679192" />
                    <node concept="2ShNRf" id="MO" role="37wK5m">
                      <uo k="s:originTrace" v="n:6420586245471679192" />
                      <node concept="1pGfFk" id="MP" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                        <uo k="s:originTrace" v="n:6420586245471679192" />
                        <node concept="Xl_RD" id="MQ" role="37wK5m">
                          <property role="Xl_RC" value="r:5076fdb3-19c3-4563-aa26-7ace7591e78d(jetbrains.mps.build.constraints)" />
                          <uo k="s:originTrace" v="n:6420586245471679192" />
                        </node>
                        <node concept="Xl_RD" id="MR" role="37wK5m">
                          <property role="Xl_RC" value="6420586245471679194" />
                          <uo k="s:originTrace" v="n:6420586245471679192" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="MJ" role="3clFbw">
              <uo k="s:originTrace" v="n:6420586245471679192" />
              <node concept="3y3z36" id="MS" role="3uHU7w">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="10Nm6u" id="MU" role="3uHU7w">
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
                <node concept="37vLTw" id="MV" role="3uHU7B">
                  <ref role="3cqZAo" node="Mv" resolve="checkingNodeContext" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
              <node concept="3fqX7Q" id="MT" role="3uHU7B">
                <uo k="s:originTrace" v="n:6420586245471679192" />
                <node concept="37vLTw" id="MW" role="3fr31v">
                  <ref role="3cqZAo" node="MC" resolve="result" />
                  <uo k="s:originTrace" v="n:6420586245471679192" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="MB" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679192" />
            <node concept="37vLTw" id="MX" role="3clFbG">
              <ref role="3cqZAo" node="MC" resolve="result" />
              <uo k="s:originTrace" v="n:6420586245471679192" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Mx" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
      </node>
      <node concept="2YIFZL" id="M8" role="jymVt">
        <property role="TrG5h" value="staticValidateProperty" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
        <node concept="37vLTG" id="MY" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3Tqbb2" id="N3" role="1tU5fm">
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="37vLTG" id="MZ" role="3clF46">
          <property role="TrG5h" value="propertyValue" />
          <uo k="s:originTrace" v="n:6420586245471679192" />
          <node concept="3uibUv" id="N4" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            <uo k="s:originTrace" v="n:6420586245471679192" />
          </node>
        </node>
        <node concept="10P_77" id="N0" role="3clF45">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3Tm6S6" id="N1" role="1B3o_S">
          <uo k="s:originTrace" v="n:6420586245471679192" />
        </node>
        <node concept="3clFbS" id="N2" role="3clF47">
          <uo k="s:originTrace" v="n:6420586245471679195" />
          <node concept="3clFbF" id="N5" role="3cqZAp">
            <uo k="s:originTrace" v="n:6420586245471679204" />
            <node concept="2OqwBi" id="N6" role="3clFbG">
              <uo k="s:originTrace" v="n:6420586245471679208" />
              <node concept="37vLTw" id="N7" role="2Oq$k0">
                <ref role="3cqZAo" node="MZ" resolve="propertyValue" />
                <uo k="s:originTrace" v="n:6420586245471679205" />
              </node>
              <node concept="2kpEY9" id="N8" role="2OqNvi">
                <uo k="s:originTrace" v="n:6420586245471679216" />
                <node concept="1Qi9sc" id="N9" role="1YN4dH">
                  <uo k="s:originTrace" v="n:6420586245471679217" />
                  <node concept="1OCmVF" id="Na" role="1QigWp">
                    <uo k="s:originTrace" v="n:6420586245471679228" />
                    <node concept="1SSPPM" id="Nb" role="1OLDsb">
                      <uo k="s:originTrace" v="n:6420586245471679220" />
                      <node concept="1T6I$Y" id="Nc" role="1T5LoC">
                        <property role="1T6KD9" value="=" />
                        <uo k="s:originTrace" v="n:6420586245471679221" />
                      </node>
                      <node concept="1T6I$Y" id="Nd" role="1T5LoC">
                        <property role="1T6KD9" value="$" />
                        <uo k="s:originTrace" v="n:6420586245471679223" />
                      </node>
                      <node concept="1T6I$Y" id="Ne" role="1T5LoC">
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
      <node concept="3uibUv" id="M9" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6420586245471679192" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Nf">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="Ng" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="Nh" role="1B3o_S" />
    <node concept="3clFbW" id="Ni" role="jymVt">
      <node concept="3cqZAl" id="Nl" role="3clF45" />
      <node concept="3Tm1VV" id="Nm" role="1B3o_S" />
      <node concept="3clFbS" id="Nn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="Nj" role="jymVt" />
    <node concept="3clFb_" id="Nk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="No" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="Np" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="Nq" role="1B3o_S" />
      <node concept="3uibUv" id="Nr" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="Ns" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="Nv" role="1tU5fm" />
        <node concept="2AHcQZ" id="Nw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="Nt" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="Nx" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="Ny" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="Nu" role="3clF47">
        <node concept="1_3QMa" id="Nz" role="3cqZAp">
          <node concept="37vLTw" id="N_" role="1_3QMn">
            <ref role="3cqZAo" node="Ns" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="NA" role="1_3QMm">
            <node concept="3clFbS" id="O9" role="1pnPq1">
              <node concept="3cpWs6" id="Ob" role="3cqZAp">
                <node concept="2ShNRf" id="Oc" role="3cqZAk">
                  <node concept="1pGfFk" id="Od" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="rj" resolve="BuildSourceMacroRelativePath_Constraints" />
                    <node concept="37vLTw" id="Oe" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Oa" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFx8t" resolve="BuildSourceMacroRelativePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="NB" role="1_3QMm">
            <node concept="3clFbS" id="Of" role="1pnPq1">
              <node concept="3cpWs6" id="Oh" role="3cqZAp">
                <node concept="2ShNRf" id="Oi" role="3cqZAk">
                  <node concept="1pGfFk" id="Oj" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8C" resolve="BuildLayout_Constraints" />
                    <node concept="37vLTw" id="Ok" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Og" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RPz6WoY4Ck" resolve="BuildLayout" />
            </node>
          </node>
          <node concept="1pnPoh" id="NC" role="1_3QMm">
            <node concept="3clFbS" id="Ol" role="1pnPq1">
              <node concept="3cpWs6" id="On" role="3cqZAp">
                <node concept="2ShNRf" id="Oo" role="3cqZAk">
                  <node concept="1pGfFk" id="Op" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="BuildAspect_Constraints" />
                    <node concept="37vLTw" id="Oq" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Om" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:34DbxDwRlgt" resolve="BuildAspect" />
            </node>
          </node>
          <node concept="1pnPoh" id="ND" role="1_3QMm">
            <node concept="3clFbS" id="Or" role="1pnPq1">
              <node concept="3cpWs6" id="Ot" role="3cqZAp">
                <node concept="2ShNRf" id="Ou" role="3cqZAk">
                  <node concept="1pGfFk" id="Ov" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="_w" resolve="BuildSource_JavaModule_Constraints" />
                    <node concept="37vLTw" id="Ow" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Os" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFdKS" resolve="BuildSource_JavaModule" />
            </node>
          </node>
          <node concept="1pnPoh" id="NE" role="1_3QMm">
            <node concept="3clFbS" id="Ox" role="1pnPq1">
              <node concept="3cpWs6" id="Oz" role="3cqZAp">
                <node concept="2ShNRf" id="O$" role="3cqZAk">
                  <node concept="1pGfFk" id="O_" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="xU" resolve="BuildSource_JavaLibrary_Constraints" />
                    <node concept="37vLTw" id="OA" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Oy" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:5gfUUDxhbxN" resolve="BuildSource_JavaLibrary" />
            </node>
          </node>
          <node concept="1pnPoh" id="NF" role="1_3QMm">
            <node concept="3clFbS" id="OB" role="1pnPq1">
              <node concept="3cpWs6" id="OD" role="3cqZAp">
                <node concept="2ShNRf" id="OE" role="3cqZAk">
                  <node concept="1pGfFk" id="OF" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="FC" resolve="BuildTextStringPart_Constraints" />
                    <node concept="37vLTw" id="OG" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="OC" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRO3" resolve="BuildTextStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="NG" role="1_3QMm">
            <node concept="3clFbS" id="OH" role="1pnPq1">
              <node concept="3cpWs6" id="OJ" role="3cqZAp">
                <node concept="2ShNRf" id="OK" role="3cqZAk">
                  <node concept="1pGfFk" id="OL" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="F6" resolve="BuildSource_JavaSources_Constraints" />
                    <node concept="37vLTw" id="OM" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="OI" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4zlO3QTanjW" resolve="BuildSource_JavaSources" />
            </node>
          </node>
          <node concept="1pnPoh" id="NH" role="1_3QMm">
            <node concept="3clFbS" id="ON" role="1pnPq1">
              <node concept="3cpWs6" id="OP" role="3cqZAp">
                <node concept="2ShNRf" id="OQ" role="3cqZAk">
                  <node concept="1pGfFk" id="OR" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="HY" resolve="BuildVarRefStringPart_Constraints" />
                    <node concept="37vLTw" id="OS" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="OO" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRO1" resolve="BuildVarRefStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="NI" role="1_3QMm">
            <node concept="3clFbS" id="OT" role="1pnPq1">
              <node concept="3cpWs6" id="OV" role="3cqZAp">
                <node concept="2ShNRf" id="OW" role="3cqZAk">
                  <node concept="1pGfFk" id="OX" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="oc" resolve="BuildLayout_NamedContainer_Constraints" />
                    <node concept="37vLTw" id="OY" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="OU" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
            </node>
          </node>
          <node concept="1pnPoh" id="NJ" role="1_3QMm">
            <node concept="3clFbS" id="OZ" role="1pnPq1">
              <node concept="3cpWs6" id="P1" role="3cqZAp">
                <node concept="2ShNRf" id="P2" role="3cqZAk">
                  <node concept="1pGfFk" id="P3" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="LM" resolve="BuildVariableMacro_Constraints" />
                    <node concept="37vLTw" id="P4" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="P0" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:3h9a8EwPm3y" resolve="BuildVariableMacro" />
            </node>
          </node>
          <node concept="1pnPoh" id="NK" role="1_3QMm">
            <node concept="3clFbS" id="P5" role="1pnPq1">
              <node concept="3cpWs6" id="P7" role="3cqZAp">
                <node concept="2ShNRf" id="P8" role="3cqZAk">
                  <node concept="1pGfFk" id="P9" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Fn" resolve="BuildStringPart_Constraints" />
                    <node concept="37vLTw" id="Pa" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="P6" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4gdvEeQyRNZ" resolve="BuildStringPart" />
            </node>
          </node>
          <node concept="1pnPoh" id="NL" role="1_3QMm">
            <node concept="3clFbS" id="Pb" role="1pnPq1">
              <node concept="3cpWs6" id="Pd" role="3cqZAp">
                <node concept="2ShNRf" id="Pe" role="3cqZAk">
                  <node concept="1pGfFk" id="Pf" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="s8" resolve="BuildSourcePath_Constraints" />
                    <node concept="37vLTw" id="Pg" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Pc" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="NM" role="1_3QMm">
            <node concept="3clFbS" id="Ph" role="1pnPq1">
              <node concept="3cpWs6" id="Pj" role="3cqZAp">
                <node concept="2ShNRf" id="Pk" role="3cqZAk">
                  <node concept="1pGfFk" id="Pl" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="s_" resolve="BuildSource_JavaClassFolder_Constraints" />
                    <node concept="37vLTw" id="Pm" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Pi" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15RAxQX0x_p" resolve="BuildSource_JavaClassFolder" />
            </node>
          </node>
          <node concept="1pnPoh" id="NN" role="1_3QMm">
            <node concept="3clFbS" id="Pn" role="1pnPq1">
              <node concept="3cpWs6" id="Pp" role="3cqZAp">
                <node concept="2ShNRf" id="Pq" role="3cqZAk">
                  <node concept="1pGfFk" id="Pr" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="iw" resolve="BuildLayout_Import_Constraints" />
                    <node concept="37vLTw" id="Ps" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Po" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:IFRVVI4P3M" resolve="BuildLayout_Import" />
            </node>
          </node>
          <node concept="1pnPoh" id="NO" role="1_3QMm">
            <node concept="3clFbS" id="Pt" role="1pnPq1">
              <node concept="3cpWs6" id="Pv" role="3cqZAp">
                <node concept="2ShNRf" id="Pw" role="3cqZAk">
                  <node concept="1pGfFk" id="Px" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6E" resolve="BuildLayout_CompileOutputOf_Constraints" />
                    <node concept="37vLTw" id="Py" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Pu" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:2fQZjorRfO$" resolve="BuildLayout_CompileOutputOf" />
            </node>
          </node>
          <node concept="1pnPoh" id="NP" role="1_3QMm">
            <node concept="3clFbS" id="Pz" role="1pnPq1">
              <node concept="3cpWs6" id="P_" role="3cqZAp">
                <node concept="2ShNRf" id="PA" role="3cqZAk">
                  <node concept="1pGfFk" id="PB" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3P" resolve="BuildExternalLayout_Constraints" />
                    <node concept="37vLTw" id="PC" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="P$" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwObZ9" resolve="BuildExternalLayout" />
            </node>
          </node>
          <node concept="1pnPoh" id="NQ" role="1_3QMm">
            <node concept="3clFbS" id="PD" role="1pnPq1">
              <node concept="3cpWs6" id="PF" role="3cqZAp">
                <node concept="2ShNRf" id="PG" role="3cqZAk">
                  <node concept="1pGfFk" id="PH" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="a6" resolve="BuildLayout_FileStub_Constraints" />
                    <node concept="37vLTw" id="PI" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PE" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwOLGQ" resolve="BuildLayout_FileStub" />
            </node>
          </node>
          <node concept="1pnPoh" id="NR" role="1_3QMm">
            <node concept="3clFbS" id="PJ" role="1pnPq1">
              <node concept="3cpWs6" id="PL" role="3cqZAp">
                <node concept="2ShNRf" id="PM" role="3cqZAk">
                  <node concept="1pGfFk" id="PN" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="30" resolve="BuildExternalLayoutDependency_Constraints" />
                    <node concept="37vLTw" id="PO" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PK" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6eCuTcwOX2$" resolve="BuildExternalLayoutDependency" />
            </node>
          </node>
          <node concept="1pnPoh" id="NS" role="1_3QMm">
            <node concept="3clFbS" id="PP" role="1pnPq1">
              <node concept="3cpWs6" id="PR" role="3cqZAp">
                <node concept="2ShNRf" id="PS" role="3cqZAk">
                  <node concept="1pGfFk" id="PT" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="f$" resolve="BuildLayout_ImportContent_Constraints" />
                    <node concept="37vLTw" id="PU" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PQ" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJBXHj" resolve="BuildLayout_ImportContent" />
            </node>
          </node>
          <node concept="1pnPoh" id="NT" role="1_3QMm">
            <node concept="3clFbS" id="PV" role="1pnPq1">
              <node concept="3cpWs6" id="PX" role="3cqZAp">
                <node concept="2ShNRf" id="PY" role="3cqZAk">
                  <node concept="1pGfFk" id="PZ" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="wp" resolve="BuildSource_JavaExternalJarRef_Constraints" />
                    <node concept="37vLTw" id="Q0" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="PW" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJGJpc" resolve="BuildSource_JavaExternalJarRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="NU" role="1_3QMm">
            <node concept="3clFbS" id="Q1" role="1pnPq1">
              <node concept="3cpWs6" id="Q3" role="3cqZAp">
                <node concept="2ShNRf" id="Q4" role="3cqZAk">
                  <node concept="1pGfFk" id="Q5" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="uS" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
                    <node concept="37vLTw" id="Q6" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Q2" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4RsV8qJH_CZ" resolve="BuildSource_JavaExternalJarFolderRef" />
            </node>
          </node>
          <node concept="1pnPoh" id="NV" role="1_3QMm">
            <node concept="3clFbS" id="Q7" role="1pnPq1">
              <node concept="3cpWs6" id="Q9" role="3cqZAp">
                <node concept="2ShNRf" id="Qa" role="3cqZAk">
                  <node concept="1pGfFk" id="Qb" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Ch" resolve="BuildSource_JavaOptions_Constraints" />
                    <node concept="37vLTw" id="Qc" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Q8" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:NvWe6DpNB2" resolve="BuildSource_JavaOptions" />
            </node>
          </node>
          <node concept="1pnPoh" id="NW" role="1_3QMm">
            <node concept="3clFbS" id="Qd" role="1pnPq1">
              <node concept="3cpWs6" id="Qf" role="3cqZAp">
                <node concept="2ShNRf" id="Qg" role="3cqZAk">
                  <node concept="1pGfFk" id="Qh" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="$F" resolve="BuildSource_JavaModuleOptions_Constraints" />
                    <node concept="37vLTw" id="Qi" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qe" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:1s8OwvM5SHi" resolve="BuildSource_JavaModuleOptions" />
            </node>
          </node>
          <node concept="1pnPoh" id="NX" role="1_3QMm">
            <node concept="3clFbS" id="Qj" role="1pnPq1">
              <node concept="3cpWs6" id="Ql" role="3cqZAp">
                <node concept="2ShNRf" id="Qm" role="3cqZAk">
                  <node concept="1pGfFk" id="Qn" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="u3" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
                    <node concept="37vLTw" id="Qo" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qk" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4lbsKRp1TRe" resolve="BuildSource_JavaDependencyLibrary" />
            </node>
          </node>
          <node concept="1pnPoh" id="NY" role="1_3QMm">
            <node concept="3clFbS" id="Qp" role="1pnPq1">
              <node concept="3cpWs6" id="Qr" role="3cqZAp">
                <node concept="2ShNRf" id="Qs" role="3cqZAk">
                  <node concept="1pGfFk" id="Qt" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="d5" resolve="BuildLayout_Filemode_Constraints" />
                    <node concept="37vLTw" id="Qu" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qq" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6L3dtXewST0" resolve="BuildLayout_Filemode" />
            </node>
          </node>
          <node concept="1pnPoh" id="NZ" role="1_3QMm">
            <node concept="3clFbS" id="Qv" role="1pnPq1">
              <node concept="3cpWs6" id="Qx" role="3cqZAp">
                <node concept="2ShNRf" id="Qy" role="3cqZAk">
                  <node concept="1pGfFk" id="Qz" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="eJ" resolve="BuildLayout_FilesOf_Constraints" />
                    <node concept="37vLTw" id="Q$" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Qw" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:6Iq8148fTg4" resolve="BuildLayout_FilesOf" />
            </node>
          </node>
          <node concept="1pnPoh" id="O0" role="1_3QMm">
            <node concept="3clFbS" id="Q_" role="1pnPq1">
              <node concept="3cpWs6" id="QB" role="3cqZAp">
                <node concept="2ShNRf" id="QC" role="3cqZAk">
                  <node concept="1pGfFk" id="QD" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Kd" resolve="BuildVariableMacroInitWithDate_Constraints" />
                    <node concept="37vLTw" id="QE" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QA" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:d_WKSiOGf$" resolve="BuildVariableMacroInitWithDate" />
            </node>
          </node>
          <node concept="1pnPoh" id="O1" role="1_3QMm">
            <node concept="3clFbS" id="QF" role="1pnPq1">
              <node concept="3cpWs6" id="QH" role="3cqZAp">
                <node concept="2ShNRf" id="QI" role="3cqZAk">
                  <node concept="1pGfFk" id="QJ" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="IN" resolve="BuildVariableMacroInitValue_Constraints" />
                    <node concept="37vLTw" id="QK" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QG" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:2oW$psGOu6E" resolve="BuildVariableMacroInitValue" />
            </node>
          </node>
          <node concept="1pnPoh" id="O2" role="1_3QMm">
            <node concept="3clFbS" id="QL" role="1pnPq1">
              <node concept="3cpWs6" id="QN" role="3cqZAp">
                <node concept="2ShNRf" id="QO" role="3cqZAk">
                  <node concept="1pGfFk" id="QP" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="qu" resolve="BuildProjectDependency_Constraints" />
                    <node concept="37vLTw" id="QQ" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QM" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:4lbsKRp2c8w" resolve="BuildProjectDependency" />
            </node>
          </node>
          <node concept="1pnPoh" id="O3" role="1_3QMm">
            <node concept="3clFbS" id="QR" role="1pnPq1">
              <node concept="3cpWs6" id="QT" role="3cqZAp">
                <node concept="2ShNRf" id="QU" role="3cqZAk">
                  <node concept="1pGfFk" id="QV" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="b$" resolve="BuildLayout_File_Constraints" />
                    <node concept="37vLTw" id="QW" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QS" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7UAfeVQUc3H" resolve="BuildLayout_File" />
            </node>
          </node>
          <node concept="1pnPoh" id="O4" role="1_3QMm">
            <node concept="3clFbS" id="QX" role="1pnPq1">
              <node concept="3cpWs6" id="QZ" role="3cqZAp">
                <node concept="2ShNRf" id="R0" role="3cqZAk">
                  <node concept="1pGfFk" id="R1" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="mM" resolve="BuildLayout_JarManifest_Section_Constraints" />
                    <node concept="37vLTw" id="R2" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="QY" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15teMbUX7PV" resolve="BuildLayout_JarManifest_Section" />
            </node>
          </node>
          <node concept="1pnPoh" id="O5" role="1_3QMm">
            <node concept="3clFbS" id="R3" role="1pnPq1">
              <node concept="3cpWs6" id="R5" role="3cqZAp">
                <node concept="2ShNRf" id="R6" role="3cqZAk">
                  <node concept="1pGfFk" id="R7" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="l4" resolve="BuildLayout_JarManifest_Constraints" />
                    <node concept="37vLTw" id="R8" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="R4" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:15teMbUWwWI" resolve="BuildLayout_JarManifest" />
            </node>
          </node>
          <node concept="1pnPoh" id="O6" role="1_3QMm">
            <node concept="3clFbS" id="R9" role="1pnPq1">
              <node concept="3cpWs6" id="Rb" role="3cqZAp">
                <node concept="2ShNRf" id="Rc" role="3cqZAk">
                  <node concept="1pGfFk" id="Rd" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1t" resolve="BuildCompositePath_Constraints" />
                    <node concept="37vLTw" id="Re" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Ra" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7usrAn056vL" resolve="BuildCompositePath" />
            </node>
          </node>
          <node concept="1pnPoh" id="O7" role="1_3QMm">
            <node concept="3clFbS" id="Rf" role="1pnPq1">
              <node concept="3cpWs6" id="Rh" role="3cqZAp">
                <node concept="2ShNRf" id="Ri" role="3cqZAk">
                  <node concept="1pGfFk" id="Rj" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="p4" resolve="BuildLayout_TarFiles_Constraints" />
                    <node concept="37vLTw" id="Rk" role="37wK5m">
                      <ref role="3cqZAo" node="Nt" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="Rg" role="1pnPq6">
              <ref role="3gnhBz" to="3ior:7ndPoqgM6ZG" resolve="BuildLayout_TarFiles" />
            </node>
          </node>
          <node concept="3clFbS" id="O8" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="N$" role="3cqZAp">
          <node concept="10Nm6u" id="Rl" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="Rm">
    <node concept="39e2AJ" id="Rn" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="Rq" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:34DbxDwRut6" resolve="BuildAspect_Constraints" />
        <node concept="385nmt" id="RW" role="385vvn">
          <property role="385vuF" value="BuildAspect_Constraints" />
          <node concept="3u3nmq" id="RY" role="385v07">
            <property role="3u3nmv" value="3542413272732788550" />
          </node>
        </node>
        <node concept="39e2AT" id="RX" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="BuildAspect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rr" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3unV0cvB3$V" resolve="BuildCompositePath_Constraints" />
        <node concept="385nmt" id="RZ" role="385vvn">
          <property role="385vuF" value="BuildCompositePath_Constraints" />
          <node concept="3u3nmq" id="S1" role="385v07">
            <property role="3u3nmv" value="4005929891728734523" />
          </node>
        </node>
        <node concept="39e2AT" id="S0" role="39e2AY">
          <ref role="39e2AS" node="1q" resolve="BuildCompositePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rs" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOX2E" resolve="BuildExternalLayoutDependency_Constraints" />
        <node concept="385nmt" id="S2" role="385vvn">
          <property role="385vuF" value="BuildExternalLayoutDependency_Constraints" />
          <node concept="3u3nmq" id="S4" role="385v07">
            <property role="3u3nmv" value="7181125477683417258" />
          </node>
        </node>
        <node concept="39e2AT" id="S3" role="39e2AY">
          <ref role="39e2AS" node="2X" resolve="BuildExternalLayoutDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rt" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOczS" resolve="BuildExternalLayout_Constraints" />
        <node concept="385nmt" id="S5" role="385vvn">
          <property role="385vuF" value="BuildExternalLayout_Constraints" />
          <node concept="3u3nmq" id="S7" role="385v07">
            <property role="3u3nmv" value="7181125477683218680" />
          </node>
        </node>
        <node concept="39e2AT" id="S6" role="39e2AY">
          <ref role="39e2AS" node="3M" resolve="BuildExternalLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ru" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2fQZjorRIeV" resolve="BuildLayout_CompileOutputOf_Constraints" />
        <node concept="385nmt" id="S8" role="385vvn">
          <property role="385vuF" value="BuildLayout_CompileOutputOf_Constraints" />
          <node concept="3u3nmq" id="Sa" role="385v07">
            <property role="3u3nmv" value="2591537044435952571" />
          </node>
        </node>
        <node concept="39e2AT" id="S9" role="39e2AY">
          <ref role="39e2AS" node="6B" resolve="BuildLayout_CompileOutputOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rv" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4lbsKRp2rj8" resolve="BuildLayout_Constraints" />
        <node concept="385nmt" id="Sb" role="385vvn">
          <property role="385vuF" value="BuildLayout_Constraints" />
          <node concept="3u3nmq" id="Sd" role="385v07">
            <property role="3u3nmv" value="4993211115183387848" />
          </node>
        </node>
        <node concept="39e2AT" id="Sc" role="39e2AY">
          <ref role="39e2AS" node="8_" resolve="BuildLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rw" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOLH1" resolve="BuildLayout_FileStub_Constraints" />
        <node concept="385nmt" id="Se" role="385vvn">
          <property role="385vuF" value="BuildLayout_FileStub_Constraints" />
          <node concept="3u3nmq" id="Sg" role="385v07">
            <property role="3u3nmv" value="7181125477683370817" />
          </node>
        </node>
        <node concept="39e2AT" id="Sf" role="39e2AY">
          <ref role="39e2AS" node="a3" resolve="BuildLayout_FileStub_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rx" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2oE1c2bmP7S" resolve="BuildLayout_File_Constraints" />
        <node concept="385nmt" id="Sh" role="385vvn">
          <property role="385vuF" value="BuildLayout_File_Constraints" />
          <node concept="3u3nmq" id="Sj" role="385v07">
            <property role="3u3nmv" value="2750015747481358840" />
          </node>
        </node>
        <node concept="39e2AT" id="Si" role="39e2AY">
          <ref role="39e2AS" node="bx" resolve="BuildLayout_File_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Ry" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6L3dtXewSTd" resolve="BuildLayout_Filemode_Constraints" />
        <node concept="385nmt" id="Sk" role="385vvn">
          <property role="385vuF" value="BuildLayout_Filemode_Constraints" />
          <node concept="3u3nmq" id="Sm" role="385v07">
            <property role="3u3nmv" value="7801138212747054669" />
          </node>
        </node>
        <node concept="39e2AT" id="Sl" role="39e2AY">
          <ref role="39e2AS" node="d2" resolve="BuildLayout_Filemode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Rz" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6Iq8148gLJy" resolve="BuildLayout_FilesOf_Constraints" />
        <node concept="385nmt" id="Sn" role="385vvn">
          <property role="385vuF" value="BuildLayout_FilesOf_Constraints" />
          <node concept="3u3nmq" id="Sp" role="385v07">
            <property role="3u3nmv" value="7753544965996878818" />
          </node>
        </node>
        <node concept="39e2AT" id="So" role="39e2AY">
          <ref role="39e2AS" node="eG" resolve="BuildLayout_FilesOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="R$" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJC0pa" resolve="BuildLayout_ImportContent_Constraints" />
        <node concept="385nmt" id="Sq" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportContent_Constraints" />
          <node concept="3u3nmq" id="Ss" role="385v07">
            <property role="3u3nmv" value="5610619299013068362" />
          </node>
        </node>
        <node concept="39e2AT" id="Sr" role="39e2AY">
          <ref role="39e2AS" node="fx" resolve="BuildLayout_ImportContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="R_" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:IFRVVI4U7O" resolve="BuildLayout_Import_Constraints" />
        <node concept="385nmt" id="St" role="385vvn">
          <property role="385vuF" value="BuildLayout_Import_Constraints" />
          <node concept="3u3nmq" id="Sv" role="385v07">
            <property role="3u3nmv" value="841011766565773812" />
          </node>
        </node>
        <node concept="39e2AT" id="Su" role="39e2AY">
          <ref role="39e2AS" node="it" resolve="BuildLayout_Import_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RA" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6uJjF_N_i1u" resolve="BuildLayout_JarManifest_Constraints" />
        <node concept="385nmt" id="Sw" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Constraints" />
          <node concept="3u3nmq" id="Sy" role="385v07">
            <property role="3u3nmv" value="7471276865246011486" />
          </node>
        </node>
        <node concept="39e2AT" id="Sx" role="39e2AY">
          <ref role="39e2AS" node="l1" resolve="BuildLayout_JarManifest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RB" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ro1ZztCjMX" resolve="BuildLayout_JarManifest_Section_Constraints" />
        <node concept="385nmt" id="Sz" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Section_Constraints" />
          <node concept="3u3nmq" id="S_" role="385v07">
            <property role="3u3nmv" value="8563603456896613565" />
          </node>
        </node>
        <node concept="39e2AT" id="S$" role="39e2AY">
          <ref role="39e2AS" node="mJ" resolve="BuildLayout_JarManifest_Section_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RC" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:79gE8jhMyo7" resolve="BuildLayout_NamedContainer_Constraints" />
        <node concept="385nmt" id="SA" role="385vvn">
          <property role="385vuF" value="BuildLayout_NamedContainer_Constraints" />
          <node concept="3u3nmq" id="SC" role="385v07">
            <property role="3u3nmv" value="8237269006869472775" />
          </node>
        </node>
        <node concept="39e2AT" id="SB" role="39e2AY">
          <ref role="39e2AS" node="o9" resolve="BuildLayout_NamedContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RD" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ndPoqgMcyj" resolve="BuildLayout_TarFiles_Constraints" />
        <node concept="385nmt" id="SD" role="385vvn">
          <property role="385vuF" value="BuildLayout_TarFiles_Constraints" />
          <node concept="3u3nmq" id="SF" role="385v07">
            <property role="3u3nmv" value="8488675646594664595" />
          </node>
        </node>
        <node concept="39e2AT" id="SE" role="39e2AY">
          <ref role="39e2AS" node="p1" resolve="BuildLayout_TarFiles_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RE" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7aqYYYFvA3Q" resolve="BuildProjectDependency_Constraints" />
        <node concept="385nmt" id="SG" role="385vvn">
          <property role="385vuF" value="BuildProjectDependency_Constraints" />
          <node concept="3u3nmq" id="SI" role="385v07">
            <property role="3u3nmv" value="8258189873530167542" />
          </node>
        </node>
        <node concept="39e2AT" id="SH" role="39e2AY">
          <ref role="39e2AS" node="qr" resolve="BuildProjectDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RF" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6qcrfIJFCen" resolve="BuildSourceMacroRelativePath_Constraints" />
        <node concept="385nmt" id="SJ" role="385vvn">
          <property role="385vuF" value="BuildSourceMacroRelativePath_Constraints" />
          <node concept="3u3nmq" id="SL" role="385v07">
            <property role="3u3nmv" value="7389400916848182167" />
          </node>
        </node>
        <node concept="39e2AT" id="SK" role="39e2AY">
          <ref role="39e2AS" node="rg" resolve="BuildSourceMacroRelativePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RG" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0xy1" resolve="BuildSourcePath_Constraints" />
        <node concept="385nmt" id="SM" role="385vvn">
          <property role="385vuF" value="BuildSourcePath_Constraints" />
          <node concept="3u3nmq" id="SO" role="385v07">
            <property role="3u3nmv" value="1258644073389103233" />
          </node>
        </node>
        <node concept="39e2AT" id="SN" role="39e2AY">
          <ref role="39e2AS" node="s5" resolve="BuildSourcePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RH" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0x_r" resolve="BuildSource_JavaClassFolder_Constraints" />
        <node concept="385nmt" id="SP" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaClassFolder_Constraints" />
          <node concept="3u3nmq" id="SR" role="385v07">
            <property role="3u3nmv" value="1258644073389103451" />
          </node>
        </node>
        <node concept="39e2AT" id="SQ" role="39e2AY">
          <ref role="39e2AS" node="sy" resolve="BuildSource_JavaClassFolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RI" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1lMM4owG7ds" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        <node concept="385nmt" id="SS" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaDependencyLibrary_Constraints" />
          <node concept="3u3nmq" id="SU" role="385v07">
            <property role="3u3nmv" value="1545517825663202140" />
          </node>
        </node>
        <node concept="39e2AT" id="ST" role="39e2AY">
          <ref role="39e2AS" node="u0" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RJ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJH_D7" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        <node concept="385nmt" id="SV" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
          <node concept="3u3nmq" id="SX" role="385v07">
            <property role="3u3nmv" value="5610619299014531655" />
          </node>
        </node>
        <node concept="39e2AT" id="SW" role="39e2AY">
          <ref role="39e2AS" node="uP" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RK" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJGJpe" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        <node concept="385nmt" id="SY" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarRef_Constraints" />
          <node concept="3u3nmq" id="T0" role="385v07">
            <property role="3u3nmv" value="5610619299014309454" />
          </node>
        </node>
        <node concept="39e2AT" id="SZ" role="39e2AY">
          <ref role="39e2AS" node="wm" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RL" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsVhw7" resolve="BuildSource_JavaLibrary_Constraints" />
        <node concept="385nmt" id="T1" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaLibrary_Constraints" />
          <node concept="3u3nmq" id="T3" role="385v07">
            <property role="3u3nmv" value="6647099934206924807" />
          </node>
        </node>
        <node concept="39e2AT" id="T2" role="39e2AY">
          <ref role="39e2AS" node="xR" resolve="BuildSource_JavaLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RM" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1s8OwvM5SHu" resolve="BuildSource_JavaModuleOptions_Constraints" />
        <node concept="385nmt" id="T4" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModuleOptions_Constraints" />
          <node concept="3u3nmq" id="T6" role="385v07">
            <property role="3u3nmv" value="1659807394254261086" />
          </node>
        </node>
        <node concept="39e2AT" id="T5" role="39e2AY">
          <ref role="39e2AS" node="$C" resolve="BuildSource_JavaModuleOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RN" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsV9gD" resolve="BuildSource_JavaModule_Constraints" />
        <node concept="385nmt" id="T7" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModule_Constraints" />
          <node concept="3u3nmq" id="T9" role="385v07">
            <property role="3u3nmv" value="6647099934206891049" />
          </node>
        </node>
        <node concept="39e2AT" id="T8" role="39e2AY">
          <ref role="39e2AS" node="_t" resolve="BuildSource_JavaModule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RO" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:NvWe6DqvvW" resolve="BuildSource_JavaOptions_Constraints" />
        <node concept="385nmt" id="Ta" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaOptions_Constraints" />
          <node concept="3u3nmq" id="Tc" role="385v07">
            <property role="3u3nmv" value="927724900262213628" />
          </node>
        </node>
        <node concept="39e2AT" id="Tb" role="39e2AY">
          <ref role="39e2AS" node="Ce" resolve="BuildSource_JavaOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RP" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4zlO3QTaEjt" resolve="BuildSource_JavaSources_Constraints" />
        <node concept="385nmt" id="Td" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaSources_Constraints" />
          <node concept="3u3nmq" id="Tf" role="385v07">
            <property role="3u3nmv" value="5248329904288343261" />
          </node>
        </node>
        <node concept="39e2AT" id="Te" role="39e2AY">
          <ref role="39e2AS" node="F3" resolve="BuildSource_JavaSources_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RQ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3NagsOfUCJd" resolve="BuildStringPart_Constraints" />
        <node concept="385nmt" id="Tg" role="385vvn">
          <property role="385vuF" value="BuildStringPart_Constraints" />
          <node concept="3u3nmq" id="Ti" role="385v07">
            <property role="3u3nmv" value="4380385936562359245" />
          </node>
        </node>
        <node concept="39e2AT" id="Th" role="39e2AY">
          <ref role="39e2AS" node="Fk" resolve="BuildStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RR" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQz4Pt" resolve="BuildTextStringPart_Constraints" />
        <node concept="385nmt" id="Tj" role="385vvn">
          <property role="385vuF" value="BuildTextStringPart_Constraints" />
          <node concept="3u3nmq" id="Tl" role="385v07">
            <property role="3u3nmv" value="4903714810883755357" />
          </node>
        </node>
        <node concept="39e2AT" id="Tk" role="39e2AY">
          <ref role="39e2AS" node="F_" resolve="BuildTextStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RS" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQyUx6" resolve="BuildVarRefStringPart_Constraints" />
        <node concept="385nmt" id="Tm" role="385vvn">
          <property role="385vuF" value="BuildVarRefStringPart_Constraints" />
          <node concept="3u3nmq" id="To" role="385v07">
            <property role="3u3nmv" value="4903714810883713094" />
          </node>
        </node>
        <node concept="39e2AT" id="Tn" role="39e2AY">
          <ref role="39e2AS" node="HV" resolve="BuildVarRefStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RT" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiPAS1" resolve="BuildVariableMacroInitValue_Constraints" />
        <node concept="385nmt" id="Tp" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitValue_Constraints" />
          <node concept="3u3nmq" id="Tr" role="385v07">
            <property role="3u3nmv" value="244868996532694529" />
          </node>
        </node>
        <node concept="39e2AT" id="Tq" role="39e2AY">
          <ref role="39e2AS" node="IK" resolve="BuildVariableMacroInitValue_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RU" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiOGfM" resolve="BuildVariableMacroInitWithDate_Constraints" />
        <node concept="385nmt" id="Ts" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitWithDate_Constraints" />
          <node concept="3u3nmq" id="Tu" role="385v07">
            <property role="3u3nmv" value="244868996532454386" />
          </node>
        </node>
        <node concept="39e2AT" id="Tt" role="39e2AY">
          <ref role="39e2AS" node="Ka" resolve="BuildVariableMacroInitWithDate_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="RV" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5$qwiKF6jbo" resolve="BuildVariableMacro_Constraints" />
        <node concept="385nmt" id="Tv" role="385vvn">
          <property role="385vuF" value="BuildVariableMacro_Constraints" />
          <node concept="3u3nmq" id="Tx" role="385v07">
            <property role="3u3nmv" value="6420586245471679192" />
          </node>
        </node>
        <node concept="39e2AT" id="Tw" role="39e2AY">
          <ref role="39e2AS" node="LJ" resolve="BuildVariableMacro_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="Ro" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="Ty" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:34DbxDwRut6" resolve="BuildAspect_Constraints" />
        <node concept="385nmt" id="U4" role="385vvn">
          <property role="385vuF" value="BuildAspect_Constraints" />
          <node concept="3u3nmq" id="U6" role="385v07">
            <property role="3u3nmv" value="3542413272732788550" />
          </node>
        </node>
        <node concept="39e2AT" id="U5" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="BuildAspect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="Tz" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3unV0cvB3$V" resolve="BuildCompositePath_Constraints" />
        <node concept="385nmt" id="U7" role="385vvn">
          <property role="385vuF" value="BuildCompositePath_Constraints" />
          <node concept="3u3nmq" id="U9" role="385v07">
            <property role="3u3nmv" value="4005929891728734523" />
          </node>
        </node>
        <node concept="39e2AT" id="U8" role="39e2AY">
          <ref role="39e2AS" node="1t" resolve="BuildCompositePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T$" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOX2E" resolve="BuildExternalLayoutDependency_Constraints" />
        <node concept="385nmt" id="Ua" role="385vvn">
          <property role="385vuF" value="BuildExternalLayoutDependency_Constraints" />
          <node concept="3u3nmq" id="Uc" role="385v07">
            <property role="3u3nmv" value="7181125477683417258" />
          </node>
        </node>
        <node concept="39e2AT" id="Ub" role="39e2AY">
          <ref role="39e2AS" node="30" resolve="BuildExternalLayoutDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="T_" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOczS" resolve="BuildExternalLayout_Constraints" />
        <node concept="385nmt" id="Ud" role="385vvn">
          <property role="385vuF" value="BuildExternalLayout_Constraints" />
          <node concept="3u3nmq" id="Uf" role="385v07">
            <property role="3u3nmv" value="7181125477683218680" />
          </node>
        </node>
        <node concept="39e2AT" id="Ue" role="39e2AY">
          <ref role="39e2AS" node="3P" resolve="BuildExternalLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TA" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2fQZjorRIeV" resolve="BuildLayout_CompileOutputOf_Constraints" />
        <node concept="385nmt" id="Ug" role="385vvn">
          <property role="385vuF" value="BuildLayout_CompileOutputOf_Constraints" />
          <node concept="3u3nmq" id="Ui" role="385v07">
            <property role="3u3nmv" value="2591537044435952571" />
          </node>
        </node>
        <node concept="39e2AT" id="Uh" role="39e2AY">
          <ref role="39e2AS" node="6E" resolve="BuildLayout_CompileOutputOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TB" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4lbsKRp2rj8" resolve="BuildLayout_Constraints" />
        <node concept="385nmt" id="Uj" role="385vvn">
          <property role="385vuF" value="BuildLayout_Constraints" />
          <node concept="3u3nmq" id="Ul" role="385v07">
            <property role="3u3nmv" value="4993211115183387848" />
          </node>
        </node>
        <node concept="39e2AT" id="Uk" role="39e2AY">
          <ref role="39e2AS" node="8C" resolve="BuildLayout_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TC" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6eCuTcwOLH1" resolve="BuildLayout_FileStub_Constraints" />
        <node concept="385nmt" id="Um" role="385vvn">
          <property role="385vuF" value="BuildLayout_FileStub_Constraints" />
          <node concept="3u3nmq" id="Uo" role="385v07">
            <property role="3u3nmv" value="7181125477683370817" />
          </node>
        </node>
        <node concept="39e2AT" id="Un" role="39e2AY">
          <ref role="39e2AS" node="a6" resolve="BuildLayout_FileStub_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TD" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:2oE1c2bmP7S" resolve="BuildLayout_File_Constraints" />
        <node concept="385nmt" id="Up" role="385vvn">
          <property role="385vuF" value="BuildLayout_File_Constraints" />
          <node concept="3u3nmq" id="Ur" role="385v07">
            <property role="3u3nmv" value="2750015747481358840" />
          </node>
        </node>
        <node concept="39e2AT" id="Uq" role="39e2AY">
          <ref role="39e2AS" node="b$" resolve="BuildLayout_File_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TE" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6L3dtXewSTd" resolve="BuildLayout_Filemode_Constraints" />
        <node concept="385nmt" id="Us" role="385vvn">
          <property role="385vuF" value="BuildLayout_Filemode_Constraints" />
          <node concept="3u3nmq" id="Uu" role="385v07">
            <property role="3u3nmv" value="7801138212747054669" />
          </node>
        </node>
        <node concept="39e2AT" id="Ut" role="39e2AY">
          <ref role="39e2AS" node="d5" resolve="BuildLayout_Filemode_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TF" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6Iq8148gLJy" resolve="BuildLayout_FilesOf_Constraints" />
        <node concept="385nmt" id="Uv" role="385vvn">
          <property role="385vuF" value="BuildLayout_FilesOf_Constraints" />
          <node concept="3u3nmq" id="Ux" role="385v07">
            <property role="3u3nmv" value="7753544965996878818" />
          </node>
        </node>
        <node concept="39e2AT" id="Uw" role="39e2AY">
          <ref role="39e2AS" node="eJ" resolve="BuildLayout_FilesOf_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TG" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJC0pa" resolve="BuildLayout_ImportContent_Constraints" />
        <node concept="385nmt" id="Uy" role="385vvn">
          <property role="385vuF" value="BuildLayout_ImportContent_Constraints" />
          <node concept="3u3nmq" id="U$" role="385v07">
            <property role="3u3nmv" value="5610619299013068362" />
          </node>
        </node>
        <node concept="39e2AT" id="Uz" role="39e2AY">
          <ref role="39e2AS" node="f$" resolve="BuildLayout_ImportContent_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TH" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:IFRVVI4U7O" resolve="BuildLayout_Import_Constraints" />
        <node concept="385nmt" id="U_" role="385vvn">
          <property role="385vuF" value="BuildLayout_Import_Constraints" />
          <node concept="3u3nmq" id="UB" role="385v07">
            <property role="3u3nmv" value="841011766565773812" />
          </node>
        </node>
        <node concept="39e2AT" id="UA" role="39e2AY">
          <ref role="39e2AS" node="iw" resolve="BuildLayout_Import_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TI" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6uJjF_N_i1u" resolve="BuildLayout_JarManifest_Constraints" />
        <node concept="385nmt" id="UC" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Constraints" />
          <node concept="3u3nmq" id="UE" role="385v07">
            <property role="3u3nmv" value="7471276865246011486" />
          </node>
        </node>
        <node concept="39e2AT" id="UD" role="39e2AY">
          <ref role="39e2AS" node="l4" resolve="BuildLayout_JarManifest_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TJ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ro1ZztCjMX" resolve="BuildLayout_JarManifest_Section_Constraints" />
        <node concept="385nmt" id="UF" role="385vvn">
          <property role="385vuF" value="BuildLayout_JarManifest_Section_Constraints" />
          <node concept="3u3nmq" id="UH" role="385v07">
            <property role="3u3nmv" value="8563603456896613565" />
          </node>
        </node>
        <node concept="39e2AT" id="UG" role="39e2AY">
          <ref role="39e2AS" node="mM" resolve="BuildLayout_JarManifest_Section_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TK" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:79gE8jhMyo7" resolve="BuildLayout_NamedContainer_Constraints" />
        <node concept="385nmt" id="UI" role="385vvn">
          <property role="385vuF" value="BuildLayout_NamedContainer_Constraints" />
          <node concept="3u3nmq" id="UK" role="385v07">
            <property role="3u3nmv" value="8237269006869472775" />
          </node>
        </node>
        <node concept="39e2AT" id="UJ" role="39e2AY">
          <ref role="39e2AS" node="oc" resolve="BuildLayout_NamedContainer_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TL" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7ndPoqgMcyj" resolve="BuildLayout_TarFiles_Constraints" />
        <node concept="385nmt" id="UL" role="385vvn">
          <property role="385vuF" value="BuildLayout_TarFiles_Constraints" />
          <node concept="3u3nmq" id="UN" role="385v07">
            <property role="3u3nmv" value="8488675646594664595" />
          </node>
        </node>
        <node concept="39e2AT" id="UM" role="39e2AY">
          <ref role="39e2AS" node="p4" resolve="BuildLayout_TarFiles_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TM" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:7aqYYYFvA3Q" resolve="BuildProjectDependency_Constraints" />
        <node concept="385nmt" id="UO" role="385vvn">
          <property role="385vuF" value="BuildProjectDependency_Constraints" />
          <node concept="3u3nmq" id="UQ" role="385v07">
            <property role="3u3nmv" value="8258189873530167542" />
          </node>
        </node>
        <node concept="39e2AT" id="UP" role="39e2AY">
          <ref role="39e2AS" node="qu" resolve="BuildProjectDependency_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TN" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:6qcrfIJFCen" resolve="BuildSourceMacroRelativePath_Constraints" />
        <node concept="385nmt" id="UR" role="385vvn">
          <property role="385vuF" value="BuildSourceMacroRelativePath_Constraints" />
          <node concept="3u3nmq" id="UT" role="385v07">
            <property role="3u3nmv" value="7389400916848182167" />
          </node>
        </node>
        <node concept="39e2AT" id="US" role="39e2AY">
          <ref role="39e2AS" node="rj" resolve="BuildSourceMacroRelativePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TO" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0xy1" resolve="BuildSourcePath_Constraints" />
        <node concept="385nmt" id="UU" role="385vvn">
          <property role="385vuF" value="BuildSourcePath_Constraints" />
          <node concept="3u3nmq" id="UW" role="385v07">
            <property role="3u3nmv" value="1258644073389103233" />
          </node>
        </node>
        <node concept="39e2AT" id="UV" role="39e2AY">
          <ref role="39e2AS" node="s8" resolve="BuildSourcePath_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TP" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:15RAxQX0x_r" resolve="BuildSource_JavaClassFolder_Constraints" />
        <node concept="385nmt" id="UX" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaClassFolder_Constraints" />
          <node concept="3u3nmq" id="UZ" role="385v07">
            <property role="3u3nmv" value="1258644073389103451" />
          </node>
        </node>
        <node concept="39e2AT" id="UY" role="39e2AY">
          <ref role="39e2AS" node="s_" resolve="BuildSource_JavaClassFolder_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TQ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1lMM4owG7ds" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        <node concept="385nmt" id="V0" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaDependencyLibrary_Constraints" />
          <node concept="3u3nmq" id="V2" role="385v07">
            <property role="3u3nmv" value="1545517825663202140" />
          </node>
        </node>
        <node concept="39e2AT" id="V1" role="39e2AY">
          <ref role="39e2AS" node="u3" resolve="BuildSource_JavaDependencyLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TR" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJH_D7" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        <node concept="385nmt" id="V3" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarFolderRef_Constraints" />
          <node concept="3u3nmq" id="V5" role="385v07">
            <property role="3u3nmv" value="5610619299014531655" />
          </node>
        </node>
        <node concept="39e2AT" id="V4" role="39e2AY">
          <ref role="39e2AS" node="uS" resolve="BuildSource_JavaExternalJarFolderRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TS" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4RsV8qJGJpe" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        <node concept="385nmt" id="V6" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaExternalJarRef_Constraints" />
          <node concept="3u3nmq" id="V8" role="385v07">
            <property role="3u3nmv" value="5610619299014309454" />
          </node>
        </node>
        <node concept="39e2AT" id="V7" role="39e2AY">
          <ref role="39e2AS" node="wp" resolve="BuildSource_JavaExternalJarRef_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TT" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsVhw7" resolve="BuildSource_JavaLibrary_Constraints" />
        <node concept="385nmt" id="V9" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaLibrary_Constraints" />
          <node concept="3u3nmq" id="Vb" role="385v07">
            <property role="3u3nmv" value="6647099934206924807" />
          </node>
        </node>
        <node concept="39e2AT" id="Va" role="39e2AY">
          <ref role="39e2AS" node="xU" resolve="BuildSource_JavaLibrary_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TU" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:1s8OwvM5SHu" resolve="BuildSource_JavaModuleOptions_Constraints" />
        <node concept="385nmt" id="Vc" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModuleOptions_Constraints" />
          <node concept="3u3nmq" id="Ve" role="385v07">
            <property role="3u3nmv" value="1659807394254261086" />
          </node>
        </node>
        <node concept="39e2AT" id="Vd" role="39e2AY">
          <ref role="39e2AS" node="$F" resolve="BuildSource_JavaModuleOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TV" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5KZfyKsV9gD" resolve="BuildSource_JavaModule_Constraints" />
        <node concept="385nmt" id="Vf" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaModule_Constraints" />
          <node concept="3u3nmq" id="Vh" role="385v07">
            <property role="3u3nmv" value="6647099934206891049" />
          </node>
        </node>
        <node concept="39e2AT" id="Vg" role="39e2AY">
          <ref role="39e2AS" node="_w" resolve="BuildSource_JavaModule_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TW" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:NvWe6DqvvW" resolve="BuildSource_JavaOptions_Constraints" />
        <node concept="385nmt" id="Vi" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaOptions_Constraints" />
          <node concept="3u3nmq" id="Vk" role="385v07">
            <property role="3u3nmv" value="927724900262213628" />
          </node>
        </node>
        <node concept="39e2AT" id="Vj" role="39e2AY">
          <ref role="39e2AS" node="Ch" resolve="BuildSource_JavaOptions_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TX" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4zlO3QTaEjt" resolve="BuildSource_JavaSources_Constraints" />
        <node concept="385nmt" id="Vl" role="385vvn">
          <property role="385vuF" value="BuildSource_JavaSources_Constraints" />
          <node concept="3u3nmq" id="Vn" role="385v07">
            <property role="3u3nmv" value="5248329904288343261" />
          </node>
        </node>
        <node concept="39e2AT" id="Vm" role="39e2AY">
          <ref role="39e2AS" node="F6" resolve="BuildSource_JavaSources_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TY" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:3NagsOfUCJd" resolve="BuildStringPart_Constraints" />
        <node concept="385nmt" id="Vo" role="385vvn">
          <property role="385vuF" value="BuildStringPart_Constraints" />
          <node concept="3u3nmq" id="Vq" role="385v07">
            <property role="3u3nmv" value="4380385936562359245" />
          </node>
        </node>
        <node concept="39e2AT" id="Vp" role="39e2AY">
          <ref role="39e2AS" node="Fn" resolve="BuildStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="TZ" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQz4Pt" resolve="BuildTextStringPart_Constraints" />
        <node concept="385nmt" id="Vr" role="385vvn">
          <property role="385vuF" value="BuildTextStringPart_Constraints" />
          <node concept="3u3nmq" id="Vt" role="385v07">
            <property role="3u3nmv" value="4903714810883755357" />
          </node>
        </node>
        <node concept="39e2AT" id="Vs" role="39e2AY">
          <ref role="39e2AS" node="FC" resolve="BuildTextStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="U0" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:4gdvEeQyUx6" resolve="BuildVarRefStringPart_Constraints" />
        <node concept="385nmt" id="Vu" role="385vvn">
          <property role="385vuF" value="BuildVarRefStringPart_Constraints" />
          <node concept="3u3nmq" id="Vw" role="385v07">
            <property role="3u3nmv" value="4903714810883713094" />
          </node>
        </node>
        <node concept="39e2AT" id="Vv" role="39e2AY">
          <ref role="39e2AS" node="HY" resolve="BuildVarRefStringPart_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="U1" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiPAS1" resolve="BuildVariableMacroInitValue_Constraints" />
        <node concept="385nmt" id="Vx" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitValue_Constraints" />
          <node concept="3u3nmq" id="Vz" role="385v07">
            <property role="3u3nmv" value="244868996532694529" />
          </node>
        </node>
        <node concept="39e2AT" id="Vy" role="39e2AY">
          <ref role="39e2AS" node="IN" resolve="BuildVariableMacroInitValue_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="U2" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:d_WKSiOGfM" resolve="BuildVariableMacroInitWithDate_Constraints" />
        <node concept="385nmt" id="V$" role="385vvn">
          <property role="385vuF" value="BuildVariableMacroInitWithDate_Constraints" />
          <node concept="3u3nmq" id="VA" role="385v07">
            <property role="3u3nmv" value="244868996532454386" />
          </node>
        </node>
        <node concept="39e2AT" id="V_" role="39e2AY">
          <ref role="39e2AS" node="Kd" resolve="BuildVariableMacroInitWithDate_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="U3" role="39e3Y0">
        <ref role="39e2AK" to="a1zn:5$qwiKF6jbo" resolve="BuildVariableMacro_Constraints" />
        <node concept="385nmt" id="VB" role="385vvn">
          <property role="385vuF" value="BuildVariableMacro_Constraints" />
          <node concept="3u3nmq" id="VD" role="385v07">
            <property role="3u3nmv" value="6420586245471679192" />
          </node>
        </node>
        <node concept="39e2AT" id="VC" role="39e2AY">
          <ref role="39e2AS" node="LM" resolve="BuildVariableMacro_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="Rp" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="VE" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="VF" role="39e2AY">
          <ref role="39e2AS" node="Nf" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
</model>

