<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f1de10b(checkpoints/jetbrains.mps.baseLanguage.kotlinRefs.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="wyos" ref="r:1c079afe-e806-4cb3-9c45-f939aac19fe8(jetbrains.mps.baseLanguage.kotlinRefs.constraints)" />
    <import index="jyou" ref="r:ca03e632-3f02-43dd-8ea4-ad134e38a5a2(jetbrains.mps.kotlin.plugin)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="nww" ref="r:f44f82b0-1fd9-4105-a80c-2fa6e5033003(jetbrains.mps.kotlin.signatures)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="jbjn" ref="6944825c-ddc2-4099-8cc7-5e6dbbf7f0be/java:jetbrains.mps.kotlin.stubs.platform(jetbrains.mps.kotlin.stubs/)" />
    <import index="1ka" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking(MPS.Core/)" />
    <import index="sjya" ref="r:8a99441d-539c-493f-b884-7b6b084d024b(jetbrains.mps.kotlin.scopes.signed)" />
    <import index="tbhz" ref="r:7d051f7f-1a28-4ed6-9de6-95fd49d3fa23(jetbrains.mps.kotlin.scopes)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="48vp" ref="r:c0bc7504-314a-4a6f-850a-c38847b9f916(jetbrains.mps.baseLanguage.kotlinRefs.structure)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="3hq4" ref="r:22e37fb0-8cf5-424c-a769-6983cf740d03(jetbrains.mps.kotlin.baseLanguage.toJava)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="akzu" ref="r:13fdb710-e0ae-40a1-880c-e26a8ee8d411(jetbrains.mps.kotlin.baseLanguage.toKotlin)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="hcm8" ref="r:72a7bf00-0175-42ca-b99b-fe8519b6a16f(jetbrains.mps.kotlin.structure)" />
  </imports>
  <registry>
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1201385106094" name="jetbrains.mps.baseLanguage.structure.PropertyReference" flags="nn" index="2S8uIT">
        <reference id="1201385237847" name="property" index="2S8YL0" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaration" index="3bZ5Sy" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="2285351689971718149" name="jetbrains.mps.lang.smodel.structure.AggregationLinkType" flags="ig" index="3GbmH5" />
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
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="515552c7-fcc0-4ab4-9789-2f3c49344e85" name="jetbrains.mps.baseLanguage.varVariable">
      <concept id="1177714083117" name="jetbrains.mps.baseLanguage.varVariable.structure.VarType" flags="in" index="PeGgZ" />
      <concept id="1236693300889" name="jetbrains.mps.baseLanguage.varVariable.structure.VarVariableDeclaration" flags="ng" index="3KEzu6" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2" role="1B3o_S" />
    <node concept="3clFbW" id="3" role="jymVt">
      <node concept="3cqZAl" id="6" role="3clF45" />
      <node concept="3Tm1VV" id="7" role="1B3o_S" />
      <node concept="3clFbS" id="8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4" role="jymVt" />
    <node concept="3clFb_" id="5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="a" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="b" role="1B3o_S" />
      <node concept="3uibUv" id="c" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="d" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="g" role="1tU5fm" />
        <node concept="2AHcQZ" id="h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="e" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="i" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="j" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="f" role="3clF47">
        <node concept="1_3QMa" id="k" role="3cqZAp">
          <node concept="37vLTw" id="m" role="1_3QMn">
            <ref role="3cqZAo" node="d" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="n" role="1_3QMm">
            <node concept="3clFbS" id="u" role="1pnPq1">
              <node concept="3cpWs6" id="w" role="3cqZAp">
                <node concept="2ShNRf" id="x" role="3cqZAk">
                  <node concept="1pGfFk" id="y" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1W" resolve="IKotlinFunctionLikeCall_Constraints" />
                    <node concept="37vLTw" id="z" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="v" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:UG7NftKS3N" resolve="IKotlinFunctionLikeCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="o" role="1_3QMm">
            <node concept="3clFbS" id="$" role="1pnPq1">
              <node concept="3cpWs6" id="A" role="3cqZAp">
                <node concept="2ShNRf" id="B" role="3cqZAk">
                  <node concept="1pGfFk" id="C" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="dj" resolve="KotlinPropertyGetterCall_Constraints" />
                    <node concept="37vLTw" id="D" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="_" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:4mvBIJf3_Z2" resolve="KotlinPropertyGetterCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="p" role="1_3QMm">
            <node concept="3clFbS" id="E" role="1pnPq1">
              <node concept="3cpWs6" id="G" role="3cqZAp">
                <node concept="2ShNRf" id="H" role="3cqZAk">
                  <node concept="1pGfFk" id="I" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="fa" resolve="KotlinPropertySetterCall_Constraints" />
                    <node concept="37vLTw" id="J" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="F" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:3lDDPlnawZV" resolve="KotlinPropertySetterCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="q" role="1_3QMm">
            <node concept="3clFbS" id="K" role="1pnPq1">
              <node concept="3cpWs6" id="M" role="3cqZAp">
                <node concept="2ShNRf" id="N" role="3cqZAk">
                  <node concept="1pGfFk" id="O" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="41" resolve="KotlinFunctionArgument_Constraints" />
                    <node concept="37vLTw" id="P" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="L" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:UG7NftOXxd" resolve="KotlinFunctionArgument" />
            </node>
          </node>
          <node concept="1pnPoh" id="r" role="1_3QMm">
            <node concept="3clFbS" id="Q" role="1pnPq1">
              <node concept="3cpWs6" id="S" role="3cqZAp">
                <node concept="2ShNRf" id="T" role="3cqZAk">
                  <node concept="1pGfFk" id="U" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="4i" resolve="KotlinFunctionCall_Constraints" />
                    <node concept="37vLTw" id="V" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="R" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:26mUjU3jlvc" resolve="KotlinFunctionCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="s" role="1_3QMm">
            <node concept="3clFbS" id="W" role="1pnPq1">
              <node concept="3cpWs6" id="Y" role="3cqZAp">
                <node concept="2ShNRf" id="Z" role="3cqZAk">
                  <node concept="1pGfFk" id="10" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="2N" resolve="KotlinClassCreator_Constraints" />
                    <node concept="37vLTw" id="11" role="37wK5m">
                      <ref role="3cqZAo" node="e" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="X" role="1pnPq6">
              <ref role="3gnhBz" to="48vp:UG7NftKIBi" resolve="KotlinClassCreator" />
            </node>
          </node>
          <node concept="3clFbS" id="t" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="l" role="3cqZAp">
          <node concept="10Nm6u" id="12" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="13">
    <node concept="39e2AJ" id="14" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="17" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazlh$P" resolve="IKotlinFunctionLikeCall_Constraints" />
        <node concept="385nmt" id="1d" role="385vvn">
          <property role="385vuF" value="IKotlinFunctionLikeCall_Constraints" />
          <node concept="3u3nmq" id="1f" role="385v07">
            <property role="3u3nmv" value="1675356390020159797" />
          </node>
        </node>
        <node concept="39e2AT" id="1e" role="39e2AY">
          <ref role="39e2AS" node="1T" resolve="IKotlinFunctionLikeCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="18" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1CYLv9VoQcM" resolve="KotlinClassCreator_Constraints" />
        <node concept="385nmt" id="1g" role="385vvn">
          <property role="385vuF" value="KotlinClassCreator_Constraints" />
          <node concept="3u3nmq" id="1i" role="385v07">
            <property role="3u3nmv" value="1891166538785055538" />
          </node>
        </node>
        <node concept="39e2AT" id="1h" role="39e2AY">
          <ref role="39e2AS" node="2K" resolve="KotlinClassCreator_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="19" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazm2M2" resolve="KotlinFunctionArgument_Constraints" />
        <node concept="385nmt" id="1j" role="385vvn">
          <property role="385vuF" value="KotlinFunctionArgument_Constraints" />
          <node concept="3u3nmq" id="1l" role="385v07">
            <property role="3u3nmv" value="1675356390020361346" />
          </node>
        </node>
        <node concept="39e2AT" id="1k" role="39e2AY">
          <ref role="39e2AS" node="3Y" resolve="KotlinFunctionArgument_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1a" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1d2BQ0ZtdDM" resolve="KotlinFunctionCall_Constraints" />
        <node concept="385nmt" id="1m" role="385vvn">
          <property role="385vuF" value="KotlinFunctionCall_Constraints" />
          <node concept="3u3nmq" id="1o" role="385v07">
            <property role="3u3nmv" value="1387846870913833586" />
          </node>
        </node>
        <node concept="39e2AT" id="1n" role="39e2AY">
          <ref role="39e2AS" node="4f" resolve="KotlinFunctionCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1b" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazljwa" resolve="KotlinPropertyGetterCall_Constraints" />
        <node concept="385nmt" id="1p" role="385vvn">
          <property role="385vuF" value="KotlinPropertyGetterCall_Constraints" />
          <node concept="3u3nmq" id="1r" role="385v07">
            <property role="3u3nmv" value="1675356390020167690" />
          </node>
        </node>
        <node concept="39e2AT" id="1q" role="39e2AY">
          <ref role="39e2AS" node="dg" resolve="KotlinPropertyGetterCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1c" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazlyf2" resolve="KotlinPropertySetterCall_Constraints" />
        <node concept="385nmt" id="1s" role="385vvn">
          <property role="385vuF" value="KotlinPropertySetterCall_Constraints" />
          <node concept="3u3nmq" id="1u" role="385v07">
            <property role="3u3nmv" value="1675356390020228034" />
          </node>
        </node>
        <node concept="39e2AT" id="1t" role="39e2AY">
          <ref role="39e2AS" node="f7" resolve="KotlinPropertySetterCall_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="15" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="1v" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazlh$P" resolve="IKotlinFunctionLikeCall_Constraints" />
        <node concept="385nmt" id="1_" role="385vvn">
          <property role="385vuF" value="IKotlinFunctionLikeCall_Constraints" />
          <node concept="3u3nmq" id="1B" role="385v07">
            <property role="3u3nmv" value="1675356390020159797" />
          </node>
        </node>
        <node concept="39e2AT" id="1A" role="39e2AY">
          <ref role="39e2AS" node="1W" resolve="IKotlinFunctionLikeCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1w" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1CYLv9VoQcM" resolve="KotlinClassCreator_Constraints" />
        <node concept="385nmt" id="1C" role="385vvn">
          <property role="385vuF" value="KotlinClassCreator_Constraints" />
          <node concept="3u3nmq" id="1E" role="385v07">
            <property role="3u3nmv" value="1891166538785055538" />
          </node>
        </node>
        <node concept="39e2AT" id="1D" role="39e2AY">
          <ref role="39e2AS" node="2N" resolve="KotlinClassCreator_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1x" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazm2M2" resolve="KotlinFunctionArgument_Constraints" />
        <node concept="385nmt" id="1F" role="385vvn">
          <property role="385vuF" value="KotlinFunctionArgument_Constraints" />
          <node concept="3u3nmq" id="1H" role="385v07">
            <property role="3u3nmv" value="1675356390020361346" />
          </node>
        </node>
        <node concept="39e2AT" id="1G" role="39e2AY">
          <ref role="39e2AS" node="41" resolve="KotlinFunctionArgument_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1y" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1d2BQ0ZtdDM" resolve="KotlinFunctionCall_Constraints" />
        <node concept="385nmt" id="1I" role="385vvn">
          <property role="385vuF" value="KotlinFunctionCall_Constraints" />
          <node concept="3u3nmq" id="1K" role="385v07">
            <property role="3u3nmv" value="1387846870913833586" />
          </node>
        </node>
        <node concept="39e2AT" id="1J" role="39e2AY">
          <ref role="39e2AS" node="4i" resolve="KotlinFunctionCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1z" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazljwa" resolve="KotlinPropertyGetterCall_Constraints" />
        <node concept="385nmt" id="1L" role="385vvn">
          <property role="385vuF" value="KotlinPropertyGetterCall_Constraints" />
          <node concept="3u3nmq" id="1N" role="385v07">
            <property role="3u3nmv" value="1675356390020167690" />
          </node>
        </node>
        <node concept="39e2AT" id="1M" role="39e2AY">
          <ref role="39e2AS" node="dj" resolve="KotlinPropertyGetterCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="1$" role="39e3Y0">
        <ref role="39e2AK" to="wyos:1t03Wazlyf2" resolve="KotlinPropertySetterCall_Constraints" />
        <node concept="385nmt" id="1O" role="385vvn">
          <property role="385vuF" value="KotlinPropertySetterCall_Constraints" />
          <node concept="3u3nmq" id="1Q" role="385v07">
            <property role="3u3nmv" value="1675356390020228034" />
          </node>
        </node>
        <node concept="39e2AT" id="1P" role="39e2AY">
          <ref role="39e2AS" node="fa" resolve="KotlinPropertySetterCall_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="16" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="1R" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="1S" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1T">
    <property role="TrG5h" value="IKotlinFunctionLikeCall_Constraints" />
    <uo k="s:originTrace" v="n:1675356390020159797" />
    <node concept="3Tm1VV" id="1U" role="1B3o_S">
      <uo k="s:originTrace" v="n:1675356390020159797" />
    </node>
    <node concept="3uibUv" id="1V" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1675356390020159797" />
    </node>
    <node concept="3clFbW" id="1W" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020159797" />
      <node concept="37vLTG" id="1Z" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1675356390020159797" />
        <node concept="3uibUv" id="22" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
      </node>
      <node concept="3cqZAl" id="20" role="3clF45">
        <uo k="s:originTrace" v="n:1675356390020159797" />
      </node>
      <node concept="3clFbS" id="21" role="3clF47">
        <uo k="s:originTrace" v="n:1675356390020159797" />
        <node concept="XkiVB" id="23" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
          <node concept="1BaE9c" id="25" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IKotlinFunctionLikeCall$lJ" />
            <uo k="s:originTrace" v="n:1675356390020159797" />
            <node concept="2YIFZM" id="27" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:1675356390020159797" />
              <node concept="11gdke" id="28" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
              </node>
              <node concept="11gdke" id="29" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
              </node>
              <node concept="11gdke" id="2a" role="37wK5m">
                <property role="11gdj1" value="eac1f33ddc380f3L" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
              </node>
              <node concept="Xl_RD" id="2b" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.IKotlinFunctionLikeCall" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="26" role="37wK5m">
            <ref role="3cqZAo" node="1Z" resolve="initContext" />
            <uo k="s:originTrace" v="n:1675356390020159797" />
          </node>
        </node>
        <node concept="3clFbF" id="24" role="3cqZAp">
          <uo k="s:originTrace" v="n:1675356390020159797" />
          <node concept="1rXfSq" id="2c" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1675356390020159797" />
            <node concept="2ShNRf" id="2d" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020159797" />
              <node concept="1pGfFk" id="2e" role="2ShVmc">
                <ref role="37wK5l" node="2g" resolve="IKotlinFunctionLikeCall_Constraints.FunctionName_PD" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
                <node concept="Xjq3P" id="2f" role="37wK5m">
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1X" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020159797" />
    </node>
    <node concept="312cEu" id="1Y" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="FunctionName_PD" />
      <uo k="s:originTrace" v="n:1675356390020159797" />
      <node concept="3clFbW" id="2g" role="jymVt">
        <uo k="s:originTrace" v="n:1675356390020159797" />
        <node concept="3cqZAl" id="2j" role="3clF45">
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
        <node concept="3Tm1VV" id="2k" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
        <node concept="3clFbS" id="2l" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020159797" />
          <node concept="XkiVB" id="2n" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020159797" />
            <node concept="1BaE9c" id="2o" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="functionName$M4b" />
              <uo k="s:originTrace" v="n:1675356390020159797" />
              <node concept="2YIFZM" id="2t" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1675356390020159797" />
                <node concept="11gdke" id="2u" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
                <node concept="11gdke" id="2v" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
                <node concept="11gdke" id="2w" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
                <node concept="11gdke" id="2x" role="37wK5m">
                  <property role="11gdj1" value="17400fc2a35501ffL" />
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
                <node concept="Xl_RD" id="2y" role="37wK5m">
                  <property role="Xl_RC" value="functionName" />
                  <uo k="s:originTrace" v="n:1675356390020159797" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2p" role="37wK5m">
              <ref role="3cqZAo" node="2m" resolve="container" />
              <uo k="s:originTrace" v="n:1675356390020159797" />
            </node>
            <node concept="3clFbT" id="2q" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1675356390020159797" />
            </node>
            <node concept="3clFbT" id="2r" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020159797" />
            </node>
            <node concept="3clFbT" id="2s" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020159797" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2m" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
          <node concept="3uibUv" id="2z" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020159797" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1675356390020159797" />
        <node concept="3Tm1VV" id="2$" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
        <node concept="3uibUv" id="2_" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
        <node concept="37vLTG" id="2A" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
          <node concept="3Tqbb2" id="2D" role="1tU5fm">
            <uo k="s:originTrace" v="n:1675356390020159797" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2B" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1675356390020159797" />
        </node>
        <node concept="3clFbS" id="2C" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020161216" />
          <node concept="3clFbF" id="2E" role="3cqZAp">
            <uo k="s:originTrace" v="n:1675356390020161752" />
            <node concept="2OqwBi" id="2F" role="3clFbG">
              <uo k="s:originTrace" v="n:1675356390020164249" />
              <node concept="2OqwBi" id="2G" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1675356390020162504" />
                <node concept="37vLTw" id="2I" role="2Oq$k0">
                  <ref role="3cqZAo" node="2A" resolve="node" />
                  <uo k="s:originTrace" v="n:1675356390020161751" />
                </node>
                <node concept="3TrEf2" id="2J" role="2OqNvi">
                  <ref role="3Tt5mk" to="48vp:fz7wK6H" resolve="target" />
                  <uo k="s:originTrace" v="n:1675356390020163729" />
                </node>
              </node>
              <node concept="3TrcHB" id="2H" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                <uo k="s:originTrace" v="n:1675356390020165983" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2i" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1675356390020159797" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2K">
    <property role="3GE5qa" value="functionCall" />
    <property role="TrG5h" value="KotlinClassCreator_Constraints" />
    <uo k="s:originTrace" v="n:1891166538785055538" />
    <node concept="3Tm1VV" id="2L" role="1B3o_S">
      <uo k="s:originTrace" v="n:1891166538785055538" />
    </node>
    <node concept="3uibUv" id="2M" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1891166538785055538" />
    </node>
    <node concept="3clFbW" id="2N" role="jymVt">
      <uo k="s:originTrace" v="n:1891166538785055538" />
      <node concept="37vLTG" id="2Q" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1891166538785055538" />
        <node concept="3uibUv" id="2T" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
      </node>
      <node concept="3cqZAl" id="2R" role="3clF45">
        <uo k="s:originTrace" v="n:1891166538785055538" />
      </node>
      <node concept="3clFbS" id="2S" role="3clF47">
        <uo k="s:originTrace" v="n:1891166538785055538" />
        <node concept="XkiVB" id="2U" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
          <node concept="1BaE9c" id="2W" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="KotlinClassCreator$HL" />
            <uo k="s:originTrace" v="n:1891166538785055538" />
            <node concept="2YIFZM" id="2Y" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1891166538785055538" />
              <node concept="11gdke" id="2Z" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
              </node>
              <node concept="11gdke" id="30" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
              </node>
              <node concept="11gdke" id="31" role="37wK5m">
                <property role="11gdj1" value="eac1f33ddc2e9d2L" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
              </node>
              <node concept="Xl_RD" id="32" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.KotlinClassCreator" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2X" role="37wK5m">
            <ref role="3cqZAo" node="2Q" resolve="initContext" />
            <uo k="s:originTrace" v="n:1891166538785055538" />
          </node>
        </node>
        <node concept="3clFbF" id="2V" role="3cqZAp">
          <uo k="s:originTrace" v="n:1891166538785055538" />
          <node concept="1rXfSq" id="33" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1891166538785055538" />
            <node concept="2ShNRf" id="34" role="37wK5m">
              <uo k="s:originTrace" v="n:1891166538785055538" />
              <node concept="1pGfFk" id="35" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="37" resolve="KotlinClassCreator_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
                <node concept="Xjq3P" id="36" role="37wK5m">
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2O" role="jymVt">
      <uo k="s:originTrace" v="n:1891166538785055538" />
    </node>
    <node concept="312cEu" id="2P" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1891166538785055538" />
      <node concept="3clFbW" id="37" role="jymVt">
        <uo k="s:originTrace" v="n:1891166538785055538" />
        <node concept="37vLTG" id="3a" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
          <node concept="3uibUv" id="3d" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1891166538785055538" />
          </node>
        </node>
        <node concept="3cqZAl" id="3b" role="3clF45">
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
        <node concept="3clFbS" id="3c" role="3clF47">
          <uo k="s:originTrace" v="n:1891166538785055538" />
          <node concept="XkiVB" id="3e" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1891166538785055538" />
            <node concept="1BaE9c" id="3f" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$7dy6" />
              <uo k="s:originTrace" v="n:1891166538785055538" />
              <node concept="2YIFZM" id="3j" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1891166538785055538" />
                <node concept="11gdke" id="3k" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
                <node concept="11gdke" id="3l" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
                <node concept="11gdke" id="3m" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
                <node concept="11gdke" id="3n" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
                <node concept="Xl_RD" id="3o" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:1891166538785055538" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3g" role="37wK5m">
              <ref role="3cqZAo" node="3a" resolve="container" />
              <uo k="s:originTrace" v="n:1891166538785055538" />
            </node>
            <node concept="3clFbT" id="3h" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1891166538785055538" />
            </node>
            <node concept="3clFbT" id="3i" role="37wK5m">
              <uo k="s:originTrace" v="n:1891166538785055538" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="38" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1891166538785055538" />
        <node concept="3Tm1VV" id="3p" role="1B3o_S">
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
        <node concept="3uibUv" id="3q" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
        <node concept="2AHcQZ" id="3r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
        <node concept="3clFbS" id="3s" role="3clF47">
          <uo k="s:originTrace" v="n:1891166538785055538" />
          <node concept="3cpWs6" id="3u" role="3cqZAp">
            <uo k="s:originTrace" v="n:1891166538785055538" />
            <node concept="2ShNRf" id="3v" role="3cqZAk">
              <uo k="s:originTrace" v="n:1891166538785056553" />
              <node concept="YeOm9" id="3w" role="2ShVmc">
                <uo k="s:originTrace" v="n:1891166538785056553" />
                <node concept="1Y3b0j" id="3x" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:1891166538785056553" />
                  <node concept="3Tm1VV" id="3y" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1891166538785056553" />
                  </node>
                  <node concept="3clFb_" id="3z" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:1891166538785056553" />
                    <node concept="3Tm1VV" id="3_" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                    <node concept="3uibUv" id="3A" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                    <node concept="3clFbS" id="3B" role="3clF47">
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                      <node concept="3cpWs6" id="3D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1891166538785056553" />
                        <node concept="2ShNRf" id="3E" role="3cqZAk">
                          <uo k="s:originTrace" v="n:1891166538785056553" />
                          <node concept="1pGfFk" id="3F" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:1891166538785056553" />
                            <node concept="Xl_RD" id="3G" role="37wK5m">
                              <property role="Xl_RC" value="r:1c079afe-e806-4cb3-9c45-f939aac19fe8(jetbrains.mps.baseLanguage.kotlinRefs.constraints)" />
                              <uo k="s:originTrace" v="n:1891166538785056553" />
                            </node>
                            <node concept="Xl_RD" id="3H" role="37wK5m">
                              <property role="Xl_RC" value="1891166538785056553" />
                              <uo k="s:originTrace" v="n:1891166538785056553" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3C" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3$" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:1891166538785056553" />
                    <node concept="3Tm1VV" id="3I" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                    <node concept="3uibUv" id="3J" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                    <node concept="37vLTG" id="3K" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                      <node concept="3uibUv" id="3N" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:1891166538785056553" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3L" role="3clF47">
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                      <node concept="3cpWs6" id="3O" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6430562889905653098" />
                        <node concept="2ShNRf" id="3P" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6430562889905653391" />
                          <node concept="1pGfFk" id="3Q" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" to="sjya:1VgEGDn$V6G" resolve="SignatureScopeAsScope" />
                            <uo k="s:originTrace" v="n:6430562889905655951" />
                            <node concept="2ShNRf" id="3R" role="37wK5m">
                              <uo k="s:originTrace" v="n:6430562889905643896" />
                              <node concept="1pGfFk" id="3T" role="2ShVmc">
                                <property role="373rjd" value="true" />
                                <ref role="37wK5l" to="sjya:4oNDtERh_gB" resolve="ConstructorsScope" />
                                <uo k="s:originTrace" v="n:6430562889905649408" />
                                <node concept="2YIFZM" id="3U" role="37wK5m">
                                  <ref role="37wK5l" to="sjya:pkrm6jsXeP" resolve="of" />
                                  <ref role="1Pybhc" to="sjya:pkrm6jsSJ5" resolve="ScopeContext" />
                                  <uo k="s:originTrace" v="n:456109728124418259" />
                                  <node concept="1DoJHT" id="3V" role="37wK5m">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:456109728124418767" />
                                    <node concept="3uibUv" id="3W" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="3X" role="1EMhIo">
                                      <ref role="3cqZAo" node="3K" resolve="_context" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="35c_gC" id="3S" role="37wK5m">
                              <ref role="35c_gD" to="hcm8:71DDynMG2ea" resolve="IConstructorDeclaration" />
                              <uo k="s:originTrace" v="n:6430562889905664326" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3M" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1891166538785056553" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1891166538785055538" />
        </node>
      </node>
      <node concept="3uibUv" id="39" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1891166538785055538" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3Y">
    <property role="TrG5h" value="KotlinFunctionArgument_Constraints" />
    <uo k="s:originTrace" v="n:1675356390020361346" />
    <node concept="3Tm1VV" id="3Z" role="1B3o_S">
      <uo k="s:originTrace" v="n:1675356390020361346" />
    </node>
    <node concept="3uibUv" id="40" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1675356390020361346" />
    </node>
    <node concept="3clFbW" id="41" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020361346" />
      <node concept="37vLTG" id="43" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1675356390020361346" />
        <node concept="3uibUv" id="46" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1675356390020361346" />
        </node>
      </node>
      <node concept="3cqZAl" id="44" role="3clF45">
        <uo k="s:originTrace" v="n:1675356390020361346" />
      </node>
      <node concept="3clFbS" id="45" role="3clF47">
        <uo k="s:originTrace" v="n:1675356390020361346" />
        <node concept="XkiVB" id="47" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1675356390020361346" />
          <node concept="1BaE9c" id="48" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="KotlinFunctionArgument$f_" />
            <uo k="s:originTrace" v="n:1675356390020361346" />
            <node concept="2YIFZM" id="4a" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1675356390020361346" />
              <node concept="11gdke" id="4b" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1675356390020361346" />
              </node>
              <node concept="11gdke" id="4c" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1675356390020361346" />
              </node>
              <node concept="11gdke" id="4d" role="37wK5m">
                <property role="11gdj1" value="eac1f33ddd3d84dL" />
                <uo k="s:originTrace" v="n:1675356390020361346" />
              </node>
              <node concept="Xl_RD" id="4e" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.KotlinFunctionArgument" />
                <uo k="s:originTrace" v="n:1675356390020361346" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="49" role="37wK5m">
            <ref role="3cqZAo" node="43" resolve="initContext" />
            <uo k="s:originTrace" v="n:1675356390020361346" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="42" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020361346" />
    </node>
  </node>
  <node concept="312cEu" id="4f">
    <property role="3GE5qa" value="functionCall" />
    <property role="TrG5h" value="KotlinFunctionCall_Constraints" />
    <uo k="s:originTrace" v="n:1387846870913833586" />
    <node concept="3Tm1VV" id="4g" role="1B3o_S">
      <uo k="s:originTrace" v="n:1387846870913833586" />
    </node>
    <node concept="3uibUv" id="4h" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1387846870913833586" />
    </node>
    <node concept="3clFbW" id="4i" role="jymVt">
      <uo k="s:originTrace" v="n:1387846870913833586" />
      <node concept="37vLTG" id="4l" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1387846870913833586" />
        <node concept="3uibUv" id="4o" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
      </node>
      <node concept="3cqZAl" id="4m" role="3clF45">
        <uo k="s:originTrace" v="n:1387846870913833586" />
      </node>
      <node concept="3clFbS" id="4n" role="3clF47">
        <uo k="s:originTrace" v="n:1387846870913833586" />
        <node concept="XkiVB" id="4p" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
          <node concept="1BaE9c" id="4r" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="KotlinFunctionCall$xX" />
            <uo k="s:originTrace" v="n:1387846870913833586" />
            <node concept="2YIFZM" id="4t" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1387846870913833586" />
              <node concept="11gdke" id="4u" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
              </node>
              <node concept="11gdke" id="4v" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
              </node>
              <node concept="11gdke" id="4w" role="37wK5m">
                <property role="11gdj1" value="2196e93e834d57ccL" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
              </node>
              <node concept="Xl_RD" id="4x" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.KotlinFunctionCall" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4s" role="37wK5m">
            <ref role="3cqZAo" node="4l" resolve="initContext" />
            <uo k="s:originTrace" v="n:1387846870913833586" />
          </node>
        </node>
        <node concept="3clFbF" id="4q" role="3cqZAp">
          <uo k="s:originTrace" v="n:1387846870913833586" />
          <node concept="1rXfSq" id="4y" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1387846870913833586" />
            <node concept="2ShNRf" id="4z" role="37wK5m">
              <uo k="s:originTrace" v="n:1387846870913833586" />
              <node concept="1pGfFk" id="4$" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="4A" resolve="KotlinFunctionCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
                <node concept="Xjq3P" id="4_" role="37wK5m">
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4j" role="jymVt">
      <uo k="s:originTrace" v="n:1387846870913833586" />
    </node>
    <node concept="312cEu" id="4k" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1387846870913833586" />
      <node concept="3clFbW" id="4A" role="jymVt">
        <uo k="s:originTrace" v="n:1387846870913833586" />
        <node concept="37vLTG" id="4D" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
          <node concept="3uibUv" id="4G" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1387846870913833586" />
          </node>
        </node>
        <node concept="3cqZAl" id="4E" role="3clF45">
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
        <node concept="3clFbS" id="4F" role="3clF47">
          <uo k="s:originTrace" v="n:1387846870913833586" />
          <node concept="XkiVB" id="4H" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1387846870913833586" />
            <node concept="1BaE9c" id="4I" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$7dy6" />
              <uo k="s:originTrace" v="n:1387846870913833586" />
              <node concept="2YIFZM" id="4M" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1387846870913833586" />
                <node concept="11gdke" id="4N" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
                <node concept="11gdke" id="4O" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
                <node concept="11gdke" id="4P" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
                <node concept="11gdke" id="4Q" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
                <node concept="Xl_RD" id="4R" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:1387846870913833586" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4J" role="37wK5m">
              <ref role="3cqZAo" node="4D" resolve="container" />
              <uo k="s:originTrace" v="n:1387846870913833586" />
            </node>
            <node concept="3clFbT" id="4K" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1387846870913833586" />
            </node>
            <node concept="3clFbT" id="4L" role="37wK5m">
              <uo k="s:originTrace" v="n:1387846870913833586" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4B" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1387846870913833586" />
        <node concept="3Tm1VV" id="4S" role="1B3o_S">
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
        <node concept="3uibUv" id="4T" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
        <node concept="2AHcQZ" id="4U" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
        <node concept="3clFbS" id="4V" role="3clF47">
          <uo k="s:originTrace" v="n:1387846870913833586" />
          <node concept="3cpWs6" id="4X" role="3cqZAp">
            <uo k="s:originTrace" v="n:1387846870913833586" />
            <node concept="2ShNRf" id="4Y" role="3cqZAk">
              <uo k="s:originTrace" v="n:1387846870913836498" />
              <node concept="YeOm9" id="4Z" role="2ShVmc">
                <uo k="s:originTrace" v="n:1387846870913836498" />
                <node concept="1Y3b0j" id="50" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:1387846870913836498" />
                  <node concept="3Tm1VV" id="51" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1387846870913836498" />
                  </node>
                  <node concept="3clFb_" id="52" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:1387846870913836498" />
                    <node concept="3Tm1VV" id="54" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                    <node concept="3uibUv" id="55" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                    <node concept="3clFbS" id="56" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                      <node concept="3cpWs6" id="58" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1387846870913836498" />
                        <node concept="2ShNRf" id="59" role="3cqZAk">
                          <uo k="s:originTrace" v="n:1387846870913836498" />
                          <node concept="1pGfFk" id="5a" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:1387846870913836498" />
                            <node concept="Xl_RD" id="5b" role="37wK5m">
                              <property role="Xl_RC" value="r:1c079afe-e806-4cb3-9c45-f939aac19fe8(jetbrains.mps.baseLanguage.kotlinRefs.constraints)" />
                              <uo k="s:originTrace" v="n:1387846870913836498" />
                            </node>
                            <node concept="Xl_RD" id="5c" role="37wK5m">
                              <property role="Xl_RC" value="1387846870913836498" />
                              <uo k="s:originTrace" v="n:1387846870913836498" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="57" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="53" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:1387846870913836498" />
                    <node concept="3Tm1VV" id="5d" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                    <node concept="3uibUv" id="5e" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                    <node concept="37vLTG" id="5f" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                      <node concept="3uibUv" id="5i" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:1387846870913836498" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5g" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                      <node concept="3cpWs6" id="5j" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1962637813266318419" />
                        <node concept="2YIFZM" id="5k" role="3cqZAk">
                          <ref role="37wK5l" node="5J" resolve="getScopeForMember" />
                          <ref role="1Pybhc" node="5y" resolve="KotlinInJavaScopeHelper" />
                          <uo k="s:originTrace" v="n:1962637813266308266" />
                          <node concept="1DoJHT" id="5l" role="37wK5m">
                            <property role="1Dpdpm" value="getReferenceNode" />
                            <uo k="s:originTrace" v="n:1962637813265884423" />
                            <node concept="3uibUv" id="5q" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="5r" role="1EMhIo">
                              <ref role="3cqZAo" node="5f" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="5m" role="37wK5m">
                            <property role="1Dpdpm" value="getContextNode" />
                            <uo k="s:originTrace" v="n:1962637813265884424" />
                            <node concept="3uibUv" id="5s" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="5t" role="1EMhIo">
                              <ref role="3cqZAo" node="5f" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="5n" role="37wK5m">
                            <property role="1Dpdpm" value="getContainmentLink" />
                            <uo k="s:originTrace" v="n:1962637813265884425" />
                            <node concept="3uibUv" id="5u" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="5v" role="1EMhIo">
                              <ref role="3cqZAo" node="5f" resolve="_context" />
                            </node>
                          </node>
                          <node concept="35c_gC" id="5o" role="37wK5m">
                            <ref role="35c_gD" to="hcm8:2Dtd0_QziWF" resolve="IFunctionDeclaration" />
                            <uo k="s:originTrace" v="n:1962637813265892300" />
                          </node>
                          <node concept="2ShNRf" id="5p" role="37wK5m">
                            <uo k="s:originTrace" v="n:1896483169448618569" />
                            <node concept="1pGfFk" id="5w" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="tbhz:2ZbCiJaoirw" resolve="SignatureFilterImpl" />
                              <uo k="s:originTrace" v="n:1896483169448618570" />
                              <node concept="3VsKOn" id="5x" role="37wK5m">
                                <ref role="3VsUkX" to="nww:5q426iHsmma" resolve="FunctionSignature" />
                                <uo k="s:originTrace" v="n:1896483169448618571" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5h" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870913836498" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4W" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1387846870913833586" />
        </node>
      </node>
      <node concept="3uibUv" id="4C" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1387846870913833586" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5y">
    <property role="3GE5qa" value="functionCall" />
    <property role="TrG5h" value="KotlinInJavaScopeHelper" />
    <uo k="s:originTrace" v="n:1387846870913065482" />
    <node concept="Wx3nA" id="5z" role="jymVt">
      <property role="TrG5h" value="jvmPlatform" />
      <uo k="s:originTrace" v="n:1962637813264429608" />
      <node concept="3uibUv" id="5L" role="1tU5fm">
        <ref role="3uigEE" to="jbjn:~TargetPlatform" resolve="TargetPlatform" />
        <uo k="s:originTrace" v="n:1962637813264404242" />
      </node>
      <node concept="3Tm6S6" id="5M" role="1B3o_S">
        <uo k="s:originTrace" v="n:1962637813264415954" />
      </node>
      <node concept="2ShNRf" id="5N" role="33vP2m">
        <uo k="s:originTrace" v="n:1962637813264404638" />
        <node concept="1pGfFk" id="5O" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="jbjn:~TargetPlatform.&lt;init&gt;(jetbrains.mps.kotlin.stubs.platform.SimplePlatform)" resolve="TargetPlatform" />
          <uo k="s:originTrace" v="n:1962637813264404639" />
          <node concept="10M0yZ" id="5P" role="37wK5m">
            <ref role="3cqZAo" to="jbjn:~JvmPlatform.INSTANCE" resolve="INSTANCE" />
            <ref role="1PxDUh" to="jbjn:~JvmPlatform" resolve="JvmPlatform" />
            <uo k="s:originTrace" v="n:1962637813264404640" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$" role="jymVt">
      <uo k="s:originTrace" v="n:1962637813264406071" />
    </node>
    <node concept="2YIFZL" id="5_" role="jymVt">
      <property role="TrG5h" value="context" />
      <uo k="s:originTrace" v="n:1962637813264375173" />
      <node concept="37vLTG" id="5Q" role="3clF46">
        <property role="TrG5h" value="referenceNode" />
        <uo k="s:originTrace" v="n:1962637813264391975" />
        <node concept="3Tqbb2" id="5W" role="1tU5fm">
          <uo k="s:originTrace" v="n:1962637813264391976" />
        </node>
      </node>
      <node concept="37vLTG" id="5R" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:1962637813264391977" />
        <node concept="3Tqbb2" id="5X" role="1tU5fm">
          <uo k="s:originTrace" v="n:1962637813264391978" />
        </node>
      </node>
      <node concept="37vLTG" id="5S" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <uo k="s:originTrace" v="n:1962637813264392949" />
        <node concept="3GbmH5" id="5Y" role="1tU5fm">
          <uo k="s:originTrace" v="n:1962637813264393591" />
        </node>
      </node>
      <node concept="3clFbS" id="5T" role="3clF47">
        <uo k="s:originTrace" v="n:1962637813264375176" />
        <node concept="3cpWs6" id="5Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:1962637813264396031" />
          <node concept="2ShNRf" id="60" role="3cqZAk">
            <uo k="s:originTrace" v="n:1962637813264396574" />
            <node concept="1pGfFk" id="61" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="sjya:pkrm6j0BLM" resolve="FullScopeContext" />
              <uo k="s:originTrace" v="n:1962637813264397535" />
              <node concept="37vLTw" id="62" role="37wK5m">
                <ref role="3cqZAo" node="5Q" resolve="referenceNode" />
                <uo k="s:originTrace" v="n:1962637813264398291" />
              </node>
              <node concept="37vLTw" id="63" role="37wK5m">
                <ref role="3cqZAo" node="5R" resolve="contextNode" />
                <uo k="s:originTrace" v="n:1962637813264399242" />
              </node>
              <node concept="37vLTw" id="64" role="37wK5m">
                <ref role="3cqZAo" node="5S" resolve="containmentLink" />
                <uo k="s:originTrace" v="n:1962637813264400770" />
              </node>
              <node concept="37vLTw" id="65" role="37wK5m">
                <ref role="3cqZAo" node="5z" resolve="jvmPlatform" />
                <uo k="s:originTrace" v="n:1962637813264404641" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5U" role="3clF45">
        <ref role="3uigEE" to="sjya:pkrm6j0BEf" resolve="FullScopeContext" />
        <uo k="s:originTrace" v="n:1962637813264374769" />
      </node>
      <node concept="3Tm1VV" id="5V" role="1B3o_S">
        <uo k="s:originTrace" v="n:1962637813264940796" />
      </node>
    </node>
    <node concept="2tJIrI" id="5A" role="jymVt">
      <uo k="s:originTrace" v="n:1962637813265981820" />
    </node>
    <node concept="Wx3nA" id="5B" role="jymVt">
      <property role="TrG5h" value="javaCallKind" />
      <property role="3TUv4t" value="true" />
      <uo k="s:originTrace" v="n:1962637813265321257" />
      <node concept="3uibUv" id="66" role="1tU5fm">
        <ref role="3uigEE" to="sjya:1GWGb5iqtgW" resolve="NavigationHelper.Kind" />
        <uo k="s:originTrace" v="n:1962637813265321259" />
      </node>
      <node concept="2ShNRf" id="67" role="33vP2m">
        <uo k="s:originTrace" v="n:1962637813265321260" />
        <node concept="YeOm9" id="68" role="2ShVmc">
          <uo k="s:originTrace" v="n:1962637813265321261" />
          <node concept="1Y3b0j" id="69" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="373rjd" value="true" />
            <ref role="1Y3XeK" to="sjya:1GWGb5iqtgW" resolve="NavigationHelper.Kind" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <uo k="s:originTrace" v="n:1962637813265321262" />
            <node concept="3Tm1VV" id="6a" role="1B3o_S">
              <uo k="s:originTrace" v="n:1962637813265321263" />
            </node>
            <node concept="3clFb_" id="6b" role="jymVt">
              <property role="TrG5h" value="getNavigationConcept" />
              <uo k="s:originTrace" v="n:1962637813265321264" />
              <node concept="3bZ5Sz" id="6e" role="3clF45">
                <uo k="s:originTrace" v="n:1962637813265321265" />
              </node>
              <node concept="3Tm1VV" id="6f" role="1B3o_S">
                <uo k="s:originTrace" v="n:1962637813265321266" />
              </node>
              <node concept="3clFbS" id="6g" role="3clF47">
                <uo k="s:originTrace" v="n:1962637813265321267" />
                <node concept="3clFbF" id="6i" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265321268" />
                  <node concept="35c_gC" id="6j" role="3clFbG">
                    <ref role="35c_gD" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <uo k="s:originTrace" v="n:1962637813265321269" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6h" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                <uo k="s:originTrace" v="n:1962637813265321270" />
              </node>
            </node>
            <node concept="3clFb_" id="6c" role="jymVt">
              <property role="TrG5h" value="getOperandLink" />
              <uo k="s:originTrace" v="n:1962637813265321271" />
              <node concept="3GbmH5" id="6k" role="3clF45">
                <uo k="s:originTrace" v="n:1962637813265321272" />
              </node>
              <node concept="3Tm1VV" id="6l" role="1B3o_S">
                <uo k="s:originTrace" v="n:1962637813265321273" />
              </node>
              <node concept="3clFbS" id="6m" role="3clF47">
                <uo k="s:originTrace" v="n:1962637813265321274" />
                <node concept="3clFbF" id="6o" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265321275" />
                  <node concept="359W_D" id="6p" role="3clFbG">
                    <ref role="359W_E" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <ref role="359W_F" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:1962637813265321276" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6n" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                <uo k="s:originTrace" v="n:1962637813265321277" />
              </node>
            </node>
            <node concept="3clFb_" id="6d" role="jymVt">
              <property role="TrG5h" value="getTargetLink" />
              <uo k="s:originTrace" v="n:1962637813265321278" />
              <node concept="3GbmH5" id="6q" role="3clF45">
                <uo k="s:originTrace" v="n:1962637813265321279" />
              </node>
              <node concept="3Tm1VV" id="6r" role="1B3o_S">
                <uo k="s:originTrace" v="n:1962637813265321280" />
              </node>
              <node concept="3clFbS" id="6s" role="3clF47">
                <uo k="s:originTrace" v="n:1962637813265321281" />
                <node concept="3clFbF" id="6u" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265321282" />
                  <node concept="359W_D" id="6v" role="3clFbG">
                    <ref role="359W_E" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <ref role="359W_F" to="tpee:hqOqNr4" resolve="operation" />
                    <uo k="s:originTrace" v="n:1962637813265321283" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6t" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                <uo k="s:originTrace" v="n:1962637813265321284" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5C" role="jymVt">
      <uo k="s:originTrace" v="n:1896483169445578396" />
    </node>
    <node concept="312cEu" id="5D" role="jymVt">
      <property role="TrG5h" value="ProtectedInstanceSignatureScope" />
      <uo k="s:originTrace" v="n:1896483169445604456" />
      <node concept="3uibUv" id="6w" role="1zkMxy">
        <ref role="3uigEE" to="sjya:6Ijh6DJDVaA" resolve="InstanceSignatureScope" />
        <uo k="s:originTrace" v="n:1896483169445624442" />
      </node>
      <node concept="3clFbW" id="6x" role="jymVt">
        <uo k="s:originTrace" v="n:1896483169445627929" />
        <node concept="3cqZAl" id="6$" role="3clF45">
          <uo k="s:originTrace" v="n:1896483169445627930" />
        </node>
        <node concept="3Tm1VV" id="6_" role="1B3o_S">
          <uo k="s:originTrace" v="n:1896483169445627931" />
        </node>
        <node concept="37vLTG" id="6A" role="3clF46">
          <property role="TrG5h" value="type" />
          <uo k="s:originTrace" v="n:1896483169445627943" />
          <node concept="3Tqbb2" id="6E" role="1tU5fm">
            <ref role="ehGHo" to="hcm8:2yYXHtl6Jh1" resolve="IType" />
            <uo k="s:originTrace" v="n:1896483169445627944" />
          </node>
        </node>
        <node concept="37vLTG" id="6B" role="3clF46">
          <property role="TrG5h" value="filter" />
          <uo k="s:originTrace" v="n:1896483169445627945" />
          <node concept="3uibUv" id="6F" role="1tU5fm">
            <ref role="3uigEE" to="tbhz:5Zd$6D$ihDa" resolve="SignatureFilter" />
            <uo k="s:originTrace" v="n:1896483169445627946" />
          </node>
        </node>
        <node concept="37vLTG" id="6C" role="3clF46">
          <property role="TrG5h" value="contextNode" />
          <uo k="s:originTrace" v="n:1896483169445627947" />
          <node concept="3Tqbb2" id="6G" role="1tU5fm">
            <uo k="s:originTrace" v="n:1896483169445627948" />
          </node>
        </node>
        <node concept="3clFbS" id="6D" role="3clF47">
          <uo k="s:originTrace" v="n:1896483169445627949" />
          <node concept="XkiVB" id="6H" role="3cqZAp">
            <ref role="37wK5l" to="sjya:1VgEGDnxXGf" resolve="InstanceSignatureScope" />
            <uo k="s:originTrace" v="n:1896483169445627950" />
            <node concept="37vLTw" id="6I" role="37wK5m">
              <ref role="3cqZAo" node="6A" resolve="type" />
              <uo k="s:originTrace" v="n:1896483169445627951" />
            </node>
            <node concept="37vLTw" id="6J" role="37wK5m">
              <ref role="3cqZAo" node="6B" resolve="filter" />
              <uo k="s:originTrace" v="n:1896483169445627952" />
            </node>
            <node concept="37vLTw" id="6K" role="37wK5m">
              <ref role="3cqZAo" node="6C" resolve="contextNode" />
              <uo k="s:originTrace" v="n:1896483169445627953" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6y" role="jymVt">
        <uo k="s:originTrace" v="n:1896483169445632690" />
      </node>
      <node concept="3clFb_" id="6z" role="jymVt">
        <property role="TrG5h" value="getInstanceTypeBaseAccess" />
        <uo k="s:originTrace" v="n:1896483169445633651" />
        <node concept="3Tmbuc" id="6L" role="1B3o_S">
          <uo k="s:originTrace" v="n:1896483169445633657" />
        </node>
        <node concept="3uibUv" id="6M" role="3clF45">
          <ref role="3uigEE" to="tbhz:6jE_6duQcYm" resolve="VisibilityAccess" />
          <uo k="s:originTrace" v="n:1896483169445633658" />
        </node>
        <node concept="3clFbS" id="6N" role="3clF47">
          <uo k="s:originTrace" v="n:1896483169445633659" />
          <node concept="3SKdUt" id="6P" role="3cqZAp">
            <uo k="s:originTrace" v="n:1896483169445350168" />
            <node concept="1PaTwC" id="6R" role="1aUNEU">
              <uo k="s:originTrace" v="n:1896483169445350169" />
              <node concept="3oM_SD" id="6S" role="1PaTwD">
                <property role="3oM_SC" value="TODO" />
                <uo k="s:originTrace" v="n:1896483169445350170" />
              </node>
              <node concept="3oM_SD" id="6T" role="1PaTwD">
                <property role="3oM_SC" value="use" />
                <uo k="s:originTrace" v="n:1896483169445350171" />
              </node>
              <node concept="3oM_SD" id="6U" role="1PaTwD">
                <property role="3oM_SC" value="TOP_LEVEL" />
                <uo k="s:originTrace" v="n:1896483169445350172" />
              </node>
              <node concept="3oM_SD" id="6V" role="1PaTwD">
                <property role="3oM_SC" value="if" />
                <uo k="s:originTrace" v="n:1896483169445350173" />
              </node>
              <node concept="3oM_SD" id="6W" role="1PaTwD">
                <property role="3oM_SC" value="not" />
                <uo k="s:originTrace" v="n:1896483169445350174" />
              </node>
              <node concept="3oM_SD" id="6X" role="1PaTwD">
                <property role="3oM_SC" value="called" />
                <uo k="s:originTrace" v="n:1896483169445350175" />
              </node>
              <node concept="3oM_SD" id="6Y" role="1PaTwD">
                <property role="3oM_SC" value="from" />
                <uo k="s:originTrace" v="n:1896483169445350176" />
              </node>
              <node concept="3oM_SD" id="6Z" role="1PaTwD">
                <property role="3oM_SC" value="a" />
                <uo k="s:originTrace" v="n:1896483169445350177" />
              </node>
              <node concept="3oM_SD" id="70" role="1PaTwD">
                <property role="3oM_SC" value="class" />
                <uo k="s:originTrace" v="n:1896483169445350178" />
              </node>
              <node concept="3oM_SD" id="71" role="1PaTwD">
                <property role="3oM_SC" value="inheriting" />
                <uo k="s:originTrace" v="n:1896483169445350179" />
              </node>
              <node concept="3oM_SD" id="72" role="1PaTwD">
                <property role="3oM_SC" value="the" />
                <uo k="s:originTrace" v="n:1896483169445350180" />
              </node>
              <node concept="3oM_SD" id="73" role="1PaTwD">
                <property role="3oM_SC" value="current" />
                <uo k="s:originTrace" v="n:1896483169445350181" />
              </node>
              <node concept="3oM_SD" id="74" role="1PaTwD">
                <property role="3oM_SC" value="class" />
                <uo k="s:originTrace" v="n:1896483169445350182" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6Q" role="3cqZAp">
            <uo k="s:originTrace" v="n:1896483169445350183" />
            <node concept="Rm8GO" id="75" role="3cqZAk">
              <ref role="Rm8GQ" to="tbhz:6JJpax4AA5g" resolve="TYPE_PROTECTED" />
              <ref role="1Px2BO" to="tbhz:6jE_6duQcYm" resolve="VisibilityAccess" />
              <uo k="s:originTrace" v="n:1896483169445350184" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6O" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1896483169445633660" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5E" role="jymVt">
      <uo k="s:originTrace" v="n:1962637813264354067" />
    </node>
    <node concept="312cEu" id="5F" role="jymVt">
      <property role="TrG5h" value="AccessorFilter" />
      <uo k="s:originTrace" v="n:3444023549509736546" />
      <node concept="312cEg" id="76" role="jymVt">
        <property role="TrG5h" value="myKind" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3444023549509754825" />
        <node concept="3Tm6S6" id="7a" role="1B3o_S">
          <uo k="s:originTrace" v="n:3444023549509754826" />
        </node>
        <node concept="3uibUv" id="7b" role="1tU5fm">
          <ref role="3uigEE" to="nww:5q426iHsD7S" resolve="AccessorKind" />
          <uo k="s:originTrace" v="n:3444023549509754828" />
        </node>
      </node>
      <node concept="3clFbW" id="77" role="jymVt">
        <uo k="s:originTrace" v="n:3444023549509753866" />
        <node concept="37vLTG" id="7c" role="3clF46">
          <property role="TrG5h" value="kind" />
          <uo k="s:originTrace" v="n:3444023549509754415" />
          <node concept="3uibUv" id="7g" role="1tU5fm">
            <ref role="3uigEE" to="nww:5q426iHsD7S" resolve="AccessorKind" />
            <uo k="s:originTrace" v="n:3444023549509754416" />
          </node>
        </node>
        <node concept="3cqZAl" id="7d" role="3clF45">
          <uo k="s:originTrace" v="n:3444023549509753868" />
        </node>
        <node concept="3Tm1VV" id="7e" role="1B3o_S">
          <uo k="s:originTrace" v="n:3444023549509753869" />
        </node>
        <node concept="3clFbS" id="7f" role="3clF47">
          <uo k="s:originTrace" v="n:3444023549509753870" />
          <node concept="XkiVB" id="7h" role="3cqZAp">
            <ref role="37wK5l" to="tbhz:2ZbCiJaoirw" resolve="SignatureFilterImpl" />
            <uo k="s:originTrace" v="n:3444023549509756157" />
            <node concept="3VsKOn" id="7j" role="37wK5m">
              <ref role="3VsUkX" to="nww:5q426iHsjrS" resolve="PropertySignature" />
              <uo k="s:originTrace" v="n:1387846870914262361" />
            </node>
          </node>
          <node concept="3clFbF" id="7i" role="3cqZAp">
            <uo k="s:originTrace" v="n:3444023549509754829" />
            <node concept="37vLTI" id="7k" role="3clFbG">
              <uo k="s:originTrace" v="n:3444023549509754831" />
              <node concept="37vLTw" id="7l" role="37vLTJ">
                <ref role="3cqZAo" node="76" resolve="myKind" />
                <uo k="s:originTrace" v="n:3444023549509754834" />
              </node>
              <node concept="37vLTw" id="7m" role="37vLTx">
                <ref role="3cqZAo" node="7c" resolve="kind" />
                <uo k="s:originTrace" v="n:3444023549509754835" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="78" role="1zkMxy">
        <ref role="3uigEE" to="tbhz:2ZbCiJaofwM" resolve="SignatureFilterImpl" />
        <uo k="s:originTrace" v="n:3444023549509738220" />
        <node concept="3uibUv" id="7n" role="11_B2D">
          <ref role="3uigEE" to="nww:5q426iHsjrS" resolve="PropertySignature" />
          <uo k="s:originTrace" v="n:7393946609786327358" />
        </node>
      </node>
      <node concept="3clFb_" id="79" role="jymVt">
        <property role="TrG5h" value="accept" />
        <uo k="s:originTrace" v="n:3444023549509738486" />
        <node concept="37vLTG" id="7o" role="3clF46">
          <property role="TrG5h" value="signature" />
          <uo k="s:originTrace" v="n:3444023549509738487" />
          <node concept="3uibUv" id="7u" role="1tU5fm">
            <ref role="3uigEE" to="nww:5q426iHsjrS" resolve="PropertySignature" />
            <uo k="s:originTrace" v="n:3444023549509738488" />
          </node>
        </node>
        <node concept="37vLTG" id="7p" role="3clF46">
          <property role="TrG5h" value="source" />
          <uo k="s:originTrace" v="n:3444023549509738489" />
          <node concept="3Tqbb2" id="7v" role="1tU5fm">
            <uo k="s:originTrace" v="n:3444023549509738490" />
          </node>
        </node>
        <node concept="10P_77" id="7q" role="3clF45">
          <uo k="s:originTrace" v="n:3444023549509738492" />
        </node>
        <node concept="3clFbS" id="7r" role="3clF47">
          <uo k="s:originTrace" v="n:3444023549509738496" />
          <node concept="3cpWs6" id="7w" role="3cqZAp">
            <uo k="s:originTrace" v="n:3444023549509751327" />
            <node concept="3clFbC" id="7x" role="3cqZAk">
              <uo k="s:originTrace" v="n:3444023549509751778" />
              <node concept="37vLTw" id="7y" role="3uHU7w">
                <ref role="3cqZAo" node="76" resolve="myKind" />
                <uo k="s:originTrace" v="n:3444023549509751779" />
              </node>
              <node concept="2OqwBi" id="7z" role="3uHU7B">
                <uo k="s:originTrace" v="n:3444023549509751780" />
                <node concept="37vLTw" id="7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="7o" resolve="signature" />
                  <uo k="s:originTrace" v="n:7393946609786330312" />
                </node>
                <node concept="2S8uIT" id="7_" role="2OqNvi">
                  <ref role="2S8YL0" to="nww:5q426iHsDS9" resolve="kind" />
                  <uo k="s:originTrace" v="n:3444023549509751785" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:3444023549509738497" />
        </node>
        <node concept="3Tmbuc" id="7t" role="1B3o_S">
          <uo k="s:originTrace" v="n:7393946609787385969" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5G" role="jymVt">
      <uo k="s:originTrace" v="n:3444023549509735349" />
    </node>
    <node concept="2YIFZL" id="5H" role="jymVt">
      <property role="TrG5h" value="getScopeForAccessor" />
      <uo k="s:originTrace" v="n:1387846870913850744" />
      <node concept="3clFbS" id="7A" role="3clF47">
        <uo k="s:originTrace" v="n:1387846870913850745" />
        <node concept="3cpWs6" id="7H" role="3cqZAp">
          <uo k="s:originTrace" v="n:1387846870914208593" />
          <node concept="1rXfSq" id="7I" role="3cqZAk">
            <ref role="37wK5l" node="5J" resolve="getScopeForMember" />
            <uo k="s:originTrace" v="n:1387846870914220836" />
            <node concept="37vLTw" id="7J" role="37wK5m">
              <ref role="3cqZAo" node="7C" resolve="referenceNode" />
              <uo k="s:originTrace" v="n:1387846870914232069" />
            </node>
            <node concept="37vLTw" id="7K" role="37wK5m">
              <ref role="3cqZAo" node="7D" resolve="contextNode" />
              <uo k="s:originTrace" v="n:1387846870914242122" />
            </node>
            <node concept="37vLTw" id="7L" role="37wK5m">
              <ref role="3cqZAo" node="7E" resolve="containmentLink" />
              <uo k="s:originTrace" v="n:1896483169446363240" />
            </node>
            <node concept="35c_gC" id="7M" role="37wK5m">
              <ref role="35c_gD" to="hcm8:2yYXHtl6JlL" resolve="VariableDeclaration" />
              <uo k="s:originTrace" v="n:1387846870914456915" />
            </node>
            <node concept="2ShNRf" id="7N" role="37wK5m">
              <uo k="s:originTrace" v="n:3444023549509760540" />
              <node concept="1pGfFk" id="7O" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="77" resolve="KotlinInJavaScopeHelper.AccessorFilter" />
                <uo k="s:originTrace" v="n:3444023549509761192" />
                <node concept="37vLTw" id="7P" role="37wK5m">
                  <ref role="3cqZAo" node="7F" resolve="kind" />
                  <uo k="s:originTrace" v="n:3444023549509761631" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7B" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:1387846870913850944" />
      </node>
      <node concept="37vLTG" id="7C" role="3clF46">
        <property role="TrG5h" value="referenceNode" />
        <uo k="s:originTrace" v="n:1387846870913850945" />
        <node concept="3Tqbb2" id="7Q" role="1tU5fm">
          <uo k="s:originTrace" v="n:1387846870913850946" />
        </node>
      </node>
      <node concept="37vLTG" id="7D" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:1387846870913850947" />
        <node concept="3Tqbb2" id="7R" role="1tU5fm">
          <uo k="s:originTrace" v="n:1387846870913850948" />
        </node>
      </node>
      <node concept="37vLTG" id="7E" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <uo k="s:originTrace" v="n:1962637813265923485" />
        <node concept="3GbmH5" id="7S" role="1tU5fm">
          <uo k="s:originTrace" v="n:1962637813265924250" />
        </node>
      </node>
      <node concept="37vLTG" id="7F" role="3clF46">
        <property role="TrG5h" value="kind" />
        <uo k="s:originTrace" v="n:1387846870913850949" />
        <node concept="3uibUv" id="7T" role="1tU5fm">
          <ref role="3uigEE" to="nww:5q426iHsD7S" resolve="AccessorKind" />
          <uo k="s:originTrace" v="n:1387846870913850950" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7G" role="1B3o_S">
        <uo k="s:originTrace" v="n:1387846870913850951" />
      </node>
    </node>
    <node concept="2tJIrI" id="5I" role="jymVt">
      <uo k="s:originTrace" v="n:1387846870913992148" />
    </node>
    <node concept="2YIFZL" id="5J" role="jymVt">
      <property role="TrG5h" value="getScopeForMember" />
      <uo k="s:originTrace" v="n:1387846870913336984" />
      <node concept="3clFbS" id="7U" role="3clF47">
        <uo k="s:originTrace" v="n:1387846870913336992" />
        <node concept="3cpWs8" id="82" role="3cqZAp">
          <uo k="s:originTrace" v="n:1896483169443011363" />
          <node concept="3KEzu6" id="86" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <uo k="s:originTrace" v="n:1962637813266219602" />
            <node concept="1rXfSq" id="87" role="33vP2m">
              <ref role="37wK5l" node="5_" resolve="context" />
              <uo k="s:originTrace" v="n:1962637813266227284" />
              <node concept="37vLTw" id="89" role="37wK5m">
                <ref role="3cqZAo" node="7W" resolve="referenceNode" />
                <uo k="s:originTrace" v="n:1962637813266231834" />
              </node>
              <node concept="37vLTw" id="8a" role="37wK5m">
                <ref role="3cqZAo" node="7X" resolve="contextNode" />
                <uo k="s:originTrace" v="n:1962637813266232895" />
              </node>
              <node concept="37vLTw" id="8b" role="37wK5m">
                <ref role="3cqZAo" node="7Y" resolve="containmentLink" />
                <uo k="s:originTrace" v="n:1962637813266236641" />
              </node>
            </node>
            <node concept="PeGgZ" id="88" role="1tU5fm">
              <uo k="s:originTrace" v="n:1962637813266219601" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="83" role="3cqZAp">
          <uo k="s:originTrace" v="n:1896483169443011365" />
        </node>
        <node concept="3clFbF" id="84" role="3cqZAp">
          <uo k="s:originTrace" v="n:1896483169443085949" />
          <node concept="2YIFZM" id="8c" role="3clFbG">
            <ref role="37wK5l" to="sjya:3DLhCcp$n9e" resolve="withReceiver" />
            <ref role="1Pybhc" to="sjya:3UQQw2l6fUj" resolve="NavigationHelper" />
            <uo k="s:originTrace" v="n:1962637813265727055" />
            <node concept="37vLTw" id="8d" role="37wK5m">
              <ref role="3cqZAo" node="5B" resolve="javaCallKind" />
              <uo k="s:originTrace" v="n:1896483169443085965" />
            </node>
            <node concept="37vLTw" id="8e" role="37wK5m">
              <ref role="3cqZAo" node="86" resolve="context" />
              <uo k="s:originTrace" v="n:1962637813265727056" />
            </node>
            <node concept="1bVj0M" id="8f" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <uo k="s:originTrace" v="n:1962637813265727057" />
              <node concept="gl6BB" id="8h" role="1bW2Oz">
                <property role="TrG5h" value="operand" />
                <uo k="s:originTrace" v="n:1962637813265727058" />
                <node concept="2jxLKc" id="8j" role="1tU5fm">
                  <uo k="s:originTrace" v="n:1962637813265727059" />
                </node>
              </node>
              <node concept="3clFbS" id="8i" role="1bW5cS">
                <uo k="s:originTrace" v="n:1962637813265727060" />
                <node concept="3SKdUt" id="8k" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8638031372546100506" />
                  <node concept="1PaTwC" id="8E" role="1aUNEU">
                    <uo k="s:originTrace" v="n:8638031372546100507" />
                    <node concept="3oM_SD" id="8F" role="1PaTwD">
                      <property role="3oM_SC" value="Note:" />
                      <uo k="s:originTrace" v="n:8638031372546100508" />
                    </node>
                    <node concept="3oM_SD" id="8G" role="1PaTwD">
                      <property role="3oM_SC" value="unlike" />
                      <uo k="s:originTrace" v="n:8638031372546100761" />
                    </node>
                    <node concept="3oM_SD" id="8H" role="1PaTwD">
                      <property role="3oM_SC" value="most" />
                      <uo k="s:originTrace" v="n:8638031372546111103" />
                    </node>
                    <node concept="3oM_SD" id="8I" role="1PaTwD">
                      <property role="3oM_SC" value="Kotlin" />
                      <uo k="s:originTrace" v="n:8638031372546150477" />
                    </node>
                    <node concept="3oM_SD" id="8J" role="1PaTwD">
                      <property role="3oM_SC" value="member" />
                      <uo k="s:originTrace" v="n:8638031372546196900" />
                    </node>
                    <node concept="3oM_SD" id="8K" role="1PaTwD">
                      <property role="3oM_SC" value="scoping," />
                      <uo k="s:originTrace" v="n:8638031372546217035" />
                    </node>
                    <node concept="3oM_SD" id="8L" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                      <uo k="s:originTrace" v="n:8638031372546218862" />
                    </node>
                    <node concept="3oM_SD" id="8M" role="1PaTwD">
                      <property role="3oM_SC" value="do" />
                      <uo k="s:originTrace" v="n:8638031372546218870" />
                    </node>
                    <node concept="3oM_SD" id="8N" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                      <uo k="s:originTrace" v="n:8638031372546220304" />
                    </node>
                    <node concept="3oM_SD" id="8O" role="1PaTwD">
                      <property role="3oM_SC" value="check" />
                      <uo k="s:originTrace" v="n:8638031372546226038" />
                    </node>
                    <node concept="3oM_SD" id="8P" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                      <uo k="s:originTrace" v="n:8638031372546238985" />
                    </node>
                    <node concept="3oM_SD" id="8Q" role="1PaTwD">
                      <property role="3oM_SC" value="typesystem" />
                      <uo k="s:originTrace" v="n:8638031372546238997" />
                    </node>
                    <node concept="3oM_SD" id="8R" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                      <uo k="s:originTrace" v="n:8638031372546242234" />
                    </node>
                    <node concept="3oM_SD" id="8S" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                      <uo k="s:originTrace" v="n:8638031372546242248" />
                    </node>
                    <node concept="3oM_SD" id="8T" role="1PaTwD">
                      <property role="3oM_SC" value="there." />
                      <uo k="s:originTrace" v="n:8638031372546278840" />
                    </node>
                    <node concept="3oM_SD" id="8U" role="1PaTwD">
                      <property role="3oM_SC" value="Our" />
                      <uo k="s:originTrace" v="n:8638031372546285131" />
                    </node>
                    <node concept="3oM_SD" id="8V" role="1PaTwD">
                      <property role="3oM_SC" value="context" />
                      <uo k="s:originTrace" v="n:8638031372546295026" />
                    </node>
                    <node concept="3oM_SD" id="8W" role="1PaTwD">
                      <property role="3oM_SC" value="(baseLanguage)" />
                      <uo k="s:originTrace" v="n:8638031372546734105" />
                    </node>
                    <node concept="3oM_SD" id="8X" role="1PaTwD">
                      <property role="3oM_SC" value="has" />
                      <uo k="s:originTrace" v="n:8638031372546343733" />
                    </node>
                    <node concept="3oM_SD" id="8Y" role="1PaTwD">
                      <property role="3oM_SC" value="typesystem" />
                      <uo k="s:originTrace" v="n:8638031372546381333" />
                    </node>
                    <node concept="3oM_SD" id="8Z" role="1PaTwD">
                      <property role="3oM_SC" value="support" />
                      <uo k="s:originTrace" v="n:8638031372546387142" />
                    </node>
                    <node concept="3oM_SD" id="90" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                      <uo k="s:originTrace" v="n:8638031372546391618" />
                    </node>
                    <node concept="3oM_SD" id="91" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                      <uo k="s:originTrace" v="n:8638031372546393460" />
                    </node>
                    <node concept="3oM_SD" id="92" role="1PaTwD">
                      <property role="3oM_SC" value="legacy" />
                      <uo k="s:originTrace" v="n:8638031372546393483" />
                    </node>
                    <node concept="3oM_SD" id="93" role="1PaTwD">
                      <property role="3oM_SC" value="typesystem," />
                      <uo k="s:originTrace" v="n:8638031372546393507" />
                    </node>
                    <node concept="3oM_SD" id="94" role="1PaTwD">
                      <property role="3oM_SC" value="so" />
                      <uo k="s:originTrace" v="n:8638031372546423966" />
                    </node>
                    <node concept="3oM_SD" id="95" role="1PaTwD">
                      <property role="3oM_SC" value="scope" />
                      <uo k="s:originTrace" v="n:8638031372546423992" />
                    </node>
                    <node concept="3oM_SD" id="96" role="1PaTwD">
                      <property role="3oM_SC" value="can" />
                      <uo k="s:originTrace" v="n:8638031372546440083" />
                    </node>
                    <node concept="3oM_SD" id="97" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                      <uo k="s:originTrace" v="n:8638031372546440111" />
                    </node>
                    <node concept="3oM_SD" id="98" role="1PaTwD">
                      <property role="3oM_SC" value="provided" />
                      <uo k="s:originTrace" v="n:8638031372546440140" />
                    </node>
                    <node concept="3oM_SD" id="99" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                      <uo k="s:originTrace" v="n:8638031372546448629" />
                    </node>
                    <node concept="3oM_SD" id="9a" role="1PaTwD">
                      <property role="3oM_SC" value="ease" />
                      <uo k="s:originTrace" v="n:8638031372546458070" />
                    </node>
                    <node concept="3oM_SD" id="9b" role="1PaTwD">
                      <property role="3oM_SC" value="(with" />
                      <uo k="s:originTrace" v="n:8638031372546476714" />
                    </node>
                    <node concept="3oM_SD" id="9c" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                      <uo k="s:originTrace" v="n:8638031372546490845" />
                    </node>
                    <node concept="3oM_SD" id="9d" role="1PaTwD">
                      <property role="3oM_SC" value="exception" />
                      <uo k="s:originTrace" v="n:8638031372546490879" />
                    </node>
                    <node concept="3oM_SD" id="9e" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                      <uo k="s:originTrace" v="n:8638031372546507076" />
                    </node>
                    <node concept="3oM_SD" id="9f" role="1PaTwD">
                      <property role="3oM_SC" value="extension" />
                      <uo k="s:originTrace" v="n:8638031372546507112" />
                    </node>
                    <node concept="3oM_SD" id="9g" role="1PaTwD">
                      <property role="3oM_SC" value="scope" />
                      <uo k="s:originTrace" v="n:8638031372546541957" />
                    </node>
                    <node concept="3oM_SD" id="9h" role="1PaTwD">
                      <property role="3oM_SC" value="which" />
                      <uo k="s:originTrace" v="n:8638031372546545851" />
                    </node>
                    <node concept="3oM_SD" id="9i" role="1PaTwD">
                      <property role="3oM_SC" value="will" />
                      <uo k="s:originTrace" v="n:8638031372546558798" />
                    </node>
                    <node concept="3oM_SD" id="9j" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                      <uo k="s:originTrace" v="n:8638031372546565102" />
                    </node>
                    <node concept="3oM_SD" id="9k" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                      <uo k="s:originTrace" v="n:8638031372546576239" />
                    </node>
                    <node concept="3oM_SD" id="9l" role="1PaTwD">
                      <property role="3oM_SC" value="precise," />
                      <uo k="s:originTrace" v="n:8638031372546578101" />
                    </node>
                    <node concept="3oM_SD" id="9m" role="1PaTwD">
                      <property role="3oM_SC" value="but" />
                      <uo k="s:originTrace" v="n:8638031372546679287" />
                    </node>
                    <node concept="3oM_SD" id="9n" role="1PaTwD">
                      <property role="3oM_SC" value="should" />
                      <uo k="s:originTrace" v="n:8638031372546628288" />
                    </node>
                    <node concept="3oM_SD" id="9o" role="1PaTwD">
                      <property role="3oM_SC" value="include" />
                      <uo k="s:originTrace" v="n:8638031372546630154" />
                    </node>
                    <node concept="3oM_SD" id="9p" role="1PaTwD">
                      <property role="3oM_SC" value="all" />
                      <uo k="s:originTrace" v="n:8638031372546646961" />
                    </node>
                    <node concept="3oM_SD" id="9q" role="1PaTwD">
                      <property role="3oM_SC" value="compatible" />
                      <uo k="s:originTrace" v="n:8638031372546647009" />
                    </node>
                    <node concept="3oM_SD" id="9r" role="1PaTwD">
                      <property role="3oM_SC" value="members)." />
                      <uo k="s:originTrace" v="n:8638031372546653393" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="8l" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265727061" />
                  <node concept="3KEzu6" id="9s" role="3cpWs9">
                    <property role="TrG5h" value="instanceType" />
                    <uo k="s:originTrace" v="n:1962637813265727062" />
                    <node concept="2OqwBi" id="9t" role="33vP2m">
                      <uo k="s:originTrace" v="n:1962637813265727063" />
                      <node concept="2YIFZM" id="9v" role="2Oq$k0">
                        <ref role="1Pybhc" to="1ka:~TypecheckingFacade" resolve="TypecheckingFacade" />
                        <ref role="37wK5l" to="1ka:~TypecheckingFacade.getFromContext()" resolve="getFromContext" />
                        <uo k="s:originTrace" v="n:1962637813265727064" />
                      </node>
                      <node concept="liA8E" id="9w" role="2OqNvi">
                        <ref role="37wK5l" to="1ka:~TypecheckingComputations.computeIsolated(java.util.function.Supplier)" resolve="computeIsolated" />
                        <uo k="s:originTrace" v="n:1962637813265727065" />
                        <node concept="1bVj0M" id="9x" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <uo k="s:originTrace" v="n:1962637813265727066" />
                          <node concept="3clFbS" id="9y" role="1bW5cS">
                            <uo k="s:originTrace" v="n:1962637813265727067" />
                            <node concept="3clFbF" id="9z" role="3cqZAp">
                              <uo k="s:originTrace" v="n:1896483169443141243" />
                              <node concept="2YIFZM" id="9$" role="3clFbG">
                                <ref role="37wK5l" to="akzu:77yS8CrUKRi" resolve="convert" />
                                <ref role="1Pybhc" to="akzu:77yS8CrUJ$d" resolve="JavaToKtConversion" />
                                <uo k="s:originTrace" v="n:1962637813265727080" />
                                <node concept="1PxgMI" id="9_" role="37wK5m">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:1962637813265727081" />
                                  <node concept="chp4Y" id="9A" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                                    <uo k="s:originTrace" v="n:1962637813265727082" />
                                  </node>
                                  <node concept="2OqwBi" id="9B" role="1m5AlR">
                                    <uo k="s:originTrace" v="n:1962637813265727069" />
                                    <node concept="3JvlWi" id="9C" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:1962637813265727070" />
                                    </node>
                                    <node concept="37vLTw" id="9D" role="2Oq$k0">
                                      <ref role="3cqZAo" node="8h" resolve="operand" />
                                      <uo k="s:originTrace" v="n:1962637813265727074" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="PeGgZ" id="9u" role="1tU5fm">
                      <uo k="s:originTrace" v="n:1962637813265727076" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8m" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169446438788" />
                </node>
                <node concept="3clFbJ" id="8n" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169446445853" />
                  <node concept="3clFbS" id="9E" role="3clFbx">
                    <uo k="s:originTrace" v="n:1896483169446445855" />
                    <node concept="3cpWs6" id="9G" role="3cqZAp">
                      <uo k="s:originTrace" v="n:1896483169446476314" />
                      <node concept="2ShNRf" id="9H" role="3cqZAk">
                        <uo k="s:originTrace" v="n:1896483169446476507" />
                        <node concept="1pGfFk" id="9I" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                          <uo k="s:originTrace" v="n:1896483169446481586" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="9F" role="3clFbw">
                    <uo k="s:originTrace" v="n:1896483169446453468" />
                    <node concept="3w_OXm" id="9J" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1896483169446471902" />
                    </node>
                    <node concept="37vLTw" id="9K" role="2Oq$k0">
                      <ref role="3cqZAo" node="9s" resolve="instanceType" />
                      <uo k="s:originTrace" v="n:1896483169446450167" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8o" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169443205057" />
                </node>
                <node concept="3SKdUt" id="8p" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169443538177" />
                  <node concept="1PaTwC" id="9L" role="1aUNEU">
                    <uo k="s:originTrace" v="n:1896483169443538178" />
                    <node concept="3oM_SD" id="9M" role="1PaTwD">
                      <property role="3oM_SC" value="This" />
                      <uo k="s:originTrace" v="n:1896483169443554145" />
                    </node>
                    <node concept="3oM_SD" id="9N" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                      <uo k="s:originTrace" v="n:1896483169443554216" />
                    </node>
                    <node concept="3oM_SD" id="9O" role="1PaTwD">
                      <property role="3oM_SC" value="synced" />
                      <uo k="s:originTrace" v="n:1896483169443554220" />
                    </node>
                    <node concept="3oM_SD" id="9P" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                      <uo k="s:originTrace" v="n:1896483169443566201" />
                    </node>
                    <node concept="3oM_SD" id="9Q" role="1PaTwD">
                      <property role="3oM_SC" value="KotlinScopes.buildScopes" />
                      <uo k="s:originTrace" v="n:1896483169443566206" />
                    </node>
                    <node concept="3oM_SD" id="9R" role="1PaTwD">
                      <property role="3oM_SC" value="/" />
                      <uo k="s:originTrace" v="n:1896483169443945390" />
                    </node>
                    <node concept="3oM_SD" id="9S" role="1PaTwD">
                      <property role="3oM_SC" value="IType.getInstancesScope," />
                      <uo k="s:originTrace" v="n:1896483169443956935" />
                    </node>
                    <node concept="3oM_SD" id="9T" role="1PaTwD">
                      <property role="3oM_SC" value="except" />
                      <uo k="s:originTrace" v="n:1896483169443700053" />
                    </node>
                    <node concept="3oM_SD" id="9U" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                      <uo k="s:originTrace" v="n:1896483169443712051" />
                    </node>
                    <node concept="3oM_SD" id="9V" role="1PaTwD">
                      <property role="3oM_SC" value="assign" />
                      <uo k="s:originTrace" v="n:1896483169443724050" />
                    </node>
                    <node concept="3oM_SD" id="9W" role="1PaTwD">
                      <property role="3oM_SC" value="manually" />
                      <uo k="s:originTrace" v="n:1896483169443736050" />
                    </node>
                    <node concept="3oM_SD" id="9X" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                      <uo k="s:originTrace" v="n:1896483169443748051" />
                    </node>
                    <node concept="3oM_SD" id="9Y" role="1PaTwD">
                      <property role="3oM_SC" value="visibility" />
                      <uo k="s:originTrace" v="n:1896483169443817147" />
                    </node>
                    <node concept="3oM_SD" id="9Z" role="1PaTwD">
                      <property role="3oM_SC" value="access" />
                      <uo k="s:originTrace" v="n:1896483169443833922" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8q" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169444440876" />
                </node>
                <node concept="3SKdUt" id="8r" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8521376398809440199" />
                  <node concept="1PaTwC" id="a0" role="1aUNEU">
                    <uo k="s:originTrace" v="n:8521376398809440200" />
                    <node concept="3oM_SD" id="a1" role="1PaTwD">
                      <property role="3oM_SC" value="Contextual" />
                      <uo k="s:originTrace" v="n:8521376398809441868" />
                    </node>
                    <node concept="3oM_SD" id="a2" role="1PaTwD">
                      <property role="3oM_SC" value="receiver" />
                      <uo k="s:originTrace" v="n:8521376398809442795" />
                    </node>
                    <node concept="3oM_SD" id="a3" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                      <uo k="s:originTrace" v="n:8521376398809443184" />
                    </node>
                    <node concept="3oM_SD" id="a4" role="1PaTwD">
                      <property role="3oM_SC" value="allowed:" />
                      <uo k="s:originTrace" v="n:8521376398809443513" />
                    </node>
                    <node concept="3oM_SD" id="a5" role="1PaTwD">
                      <property role="3oM_SC" value="instance" />
                      <uo k="s:originTrace" v="n:8521376398809443896" />
                    </node>
                    <node concept="3oM_SD" id="a6" role="1PaTwD">
                      <property role="3oM_SC" value="members" />
                      <uo k="s:originTrace" v="n:8521376398809444307" />
                    </node>
                    <node concept="3oM_SD" id="a7" role="1PaTwD">
                      <property role="3oM_SC" value="cannot" />
                      <uo k="s:originTrace" v="n:8521376398809444730" />
                    </node>
                    <node concept="3oM_SD" id="a8" role="1PaTwD">
                      <property role="3oM_SC" value="provide" />
                      <uo k="s:originTrace" v="n:8521376398809445067" />
                    </node>
                    <node concept="3oM_SD" id="a9" role="1PaTwD">
                      <property role="3oM_SC" value="received" />
                      <uo k="s:originTrace" v="n:8521376398809445494" />
                    </node>
                    <node concept="3oM_SD" id="aa" role="1PaTwD">
                      <property role="3oM_SC" value="members" />
                      <uo k="s:originTrace" v="n:8521376398809446027" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="8s" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8521376398809423535" />
                  <node concept="3clFbS" id="ab" role="3clFbx">
                    <uo k="s:originTrace" v="n:8521376398809423537" />
                    <node concept="3cpWs6" id="ad" role="3cqZAp">
                      <uo k="s:originTrace" v="n:8521376398809430651" />
                      <node concept="2ShNRf" id="ae" role="3cqZAk">
                        <uo k="s:originTrace" v="n:1896483169444078878" />
                        <node concept="1pGfFk" id="af" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                          <uo k="s:originTrace" v="n:1896483169444093511" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="ac" role="3clFbw">
                    <uo k="s:originTrace" v="n:8521376398809429187" />
                    <node concept="2OqwBi" id="ag" role="3fr31v">
                      <uo k="s:originTrace" v="n:8521376398809429189" />
                      <node concept="37vLTw" id="ah" role="2Oq$k0">
                        <ref role="3cqZAo" node="80" resolve="signatureFilter" />
                        <uo k="s:originTrace" v="n:8521376398809429190" />
                      </node>
                      <node concept="liA8E" id="ai" role="2OqNvi">
                        <ref role="37wK5l" to="tbhz:5Zd$6D$ijvn" resolve="acceptReceiver" />
                        <uo k="s:originTrace" v="n:8521376398809429191" />
                        <node concept="10Nm6u" id="aj" role="37wK5m">
                          <uo k="s:originTrace" v="n:8521376398809429192" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8t" role="3cqZAp">
                  <uo k="s:originTrace" v="n:8521376398809432585" />
                </node>
                <node concept="3SKdUt" id="8u" role="3cqZAp">
                  <uo k="s:originTrace" v="n:2101455733818739932" />
                  <node concept="1PaTwC" id="ak" role="1aUNEU">
                    <uo k="s:originTrace" v="n:2101455733818739933" />
                    <node concept="3oM_SD" id="al" role="1PaTwD">
                      <property role="3oM_SC" value="Use" />
                      <uo k="s:originTrace" v="n:2101455733818740757" />
                    </node>
                    <node concept="3oM_SD" id="am" role="1PaTwD">
                      <property role="3oM_SC" value="API" />
                      <uo k="s:originTrace" v="n:2101455733818741487" />
                    </node>
                    <node concept="3oM_SD" id="an" role="1PaTwD">
                      <property role="3oM_SC" value="defined" />
                      <uo k="s:originTrace" v="n:2101455733818741672" />
                    </node>
                    <node concept="3oM_SD" id="ao" role="1PaTwD">
                      <property role="3oM_SC" value="above" />
                      <uo k="s:originTrace" v="n:2101455733818741910" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="8v" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1387846870913337098" />
                  <node concept="1PaTwC" id="ap" role="1aUNEU">
                    <uo k="s:originTrace" v="n:1387846870913337099" />
                    <node concept="3oM_SD" id="aq" role="1PaTwD">
                      <property role="3oM_SC" value="Main" />
                      <uo k="s:originTrace" v="n:1387846870913337100" />
                    </node>
                    <node concept="3oM_SD" id="ar" role="1PaTwD">
                      <property role="3oM_SC" value="type" />
                      <uo k="s:originTrace" v="n:1387846870913337101" />
                    </node>
                    <node concept="3oM_SD" id="as" role="1PaTwD">
                      <property role="3oM_SC" value="with" />
                      <uo k="s:originTrace" v="n:1896483169446313104" />
                    </node>
                    <node concept="3oM_SD" id="at" role="1PaTwD">
                      <property role="3oM_SC" value="type" />
                      <uo k="s:originTrace" v="n:1896483169446317217" />
                    </node>
                    <node concept="3oM_SD" id="au" role="1PaTwD">
                      <property role="3oM_SC" value="extensions" />
                      <uo k="s:originTrace" v="n:1896483169446317222" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="8w" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4282203501216335369" />
                  <node concept="3KEzu6" id="av" role="3cpWs9">
                    <property role="TrG5h" value="scopes" />
                    <uo k="s:originTrace" v="n:1896483169445350110" />
                    <node concept="2ShNRf" id="aw" role="33vP2m">
                      <uo k="s:originTrace" v="n:1896483169445350153" />
                      <node concept="Tc6Ow" id="ay" role="2ShVmc">
                        <uo k="s:originTrace" v="n:1896483169445350154" />
                        <node concept="2ShNRf" id="az" role="HW$Y0">
                          <uo k="s:originTrace" v="n:1896483169445350155" />
                          <node concept="1pGfFk" id="a_" role="2ShVmc">
                            <property role="373rjd" value="true" />
                            <ref role="37wK5l" node="6x" resolve="KotlinInJavaScopeHelper.ProtectedInstanceSignatureScope" />
                            <uo k="s:originTrace" v="n:1896483169445768921" />
                            <node concept="37vLTw" id="aA" role="37wK5m">
                              <ref role="3cqZAo" node="9s" resolve="instanceType" />
                              <uo k="s:originTrace" v="n:1896483169445350159" />
                            </node>
                            <node concept="37vLTw" id="aB" role="37wK5m">
                              <ref role="3cqZAo" node="80" resolve="signatureFilter" />
                              <uo k="s:originTrace" v="n:1896483169445350160" />
                            </node>
                            <node concept="2OqwBi" id="aC" role="37wK5m">
                              <uo k="s:originTrace" v="n:1896483169445350161" />
                              <node concept="37vLTw" id="aD" role="2Oq$k0">
                                <ref role="3cqZAo" node="86" resolve="context" />
                                <uo k="s:originTrace" v="n:1896483169445350162" />
                              </node>
                              <node concept="2S8uIT" id="aE" role="2OqNvi">
                                <ref role="2S8YL0" to="sjya:pkrm6j0BYv" resolve="node" />
                                <uo k="s:originTrace" v="n:1896483169445350163" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="a$" role="HW$YZ">
                          <ref role="3uigEE" to="sjya:6Ijh6DJDHpd" resolve="SignatureScope" />
                          <uo k="s:originTrace" v="n:4662124839800720440" />
                        </node>
                      </node>
                    </node>
                    <node concept="PeGgZ" id="ax" role="1tU5fm">
                      <uo k="s:originTrace" v="n:1896483169445350109" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8x" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169446244388" />
                </node>
                <node concept="3clFbF" id="8y" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4662124839799130864" />
                  <node concept="2YIFZM" id="aF" role="3clFbG">
                    <ref role="37wK5l" to="jyou:42NctsYt8ws" resolve="withTypesystem" />
                    <ref role="1Pybhc" to="jyou:7iropoGY2fi" resolve="ExtensionsHelper" />
                    <uo k="s:originTrace" v="n:4662124839799141237" />
                    <node concept="37vLTw" id="aG" role="37wK5m">
                      <ref role="3cqZAo" node="7X" resolve="contextNode" />
                      <uo k="s:originTrace" v="n:4662124839799147566" />
                    </node>
                    <node concept="1bVj0M" id="aH" role="37wK5m">
                      <uo k="s:originTrace" v="n:4662124839799161858" />
                      <node concept="3clFbS" id="aJ" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4662124839799161865" />
                        <node concept="3SKdUt" id="aK" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839799188973" />
                          <node concept="1PaTwC" id="aP" role="1aUNEU">
                            <uo k="s:originTrace" v="n:4662124839799188974" />
                            <node concept="3oM_SD" id="aQ" role="1PaTwD">
                              <property role="3oM_SC" value="Extension" />
                              <uo k="s:originTrace" v="n:4662124839799188975" />
                            </node>
                            <node concept="3oM_SD" id="aR" role="1PaTwD">
                              <property role="3oM_SC" value="scopes" />
                              <uo k="s:originTrace" v="n:4662124839799203951" />
                            </node>
                            <node concept="3oM_SD" id="aS" role="1PaTwD">
                              <property role="3oM_SC" value="in" />
                              <uo k="s:originTrace" v="n:4662124839799205775" />
                            </node>
                            <node concept="3oM_SD" id="aT" role="1PaTwD">
                              <property role="3oM_SC" value="Java" />
                              <uo k="s:originTrace" v="n:4662124839799205779" />
                            </node>
                            <node concept="3oM_SD" id="aU" role="1PaTwD">
                              <property role="3oM_SC" value="are" />
                              <uo k="s:originTrace" v="n:4662124839799207604" />
                            </node>
                            <node concept="3oM_SD" id="aV" role="1PaTwD">
                              <property role="3oM_SC" value="a" />
                              <uo k="s:originTrace" v="n:4662124839799207610" />
                            </node>
                            <node concept="3oM_SD" id="aW" role="1PaTwD">
                              <property role="3oM_SC" value="special" />
                              <uo k="s:originTrace" v="n:4662124839799207617" />
                            </node>
                            <node concept="3oM_SD" id="aX" role="1PaTwD">
                              <property role="3oM_SC" value="case:" />
                              <uo k="s:originTrace" v="n:4662124839799216121" />
                            </node>
                            <node concept="3oM_SD" id="aY" role="1PaTwD">
                              <property role="3oM_SC" value="instance" />
                              <uo k="s:originTrace" v="n:4662124839800229295" />
                            </node>
                            <node concept="3oM_SD" id="aZ" role="1PaTwD">
                              <property role="3oM_SC" value="types" />
                              <uo k="s:originTrace" v="n:4662124839800234621" />
                            </node>
                            <node concept="3oM_SD" id="b0" role="1PaTwD">
                              <property role="3oM_SC" value="are" />
                              <uo k="s:originTrace" v="n:4662124839800241264" />
                            </node>
                            <node concept="3oM_SD" id="b1" role="1PaTwD">
                              <property role="3oM_SC" value="sure" />
                              <uo k="s:originTrace" v="n:4662124839800241276" />
                            </node>
                            <node concept="3oM_SD" id="b2" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                              <uo k="s:originTrace" v="n:4662124839800249475" />
                            </node>
                            <node concept="3oM_SD" id="b3" role="1PaTwD">
                              <property role="3oM_SC" value="be" />
                              <uo k="s:originTrace" v="n:4662124839800254797" />
                            </node>
                            <node concept="3oM_SD" id="b4" role="1PaTwD">
                              <property role="3oM_SC" value="known" />
                              <uo k="s:originTrace" v="n:4662124839800271895" />
                            </node>
                            <node concept="3oM_SD" id="b5" role="1PaTwD">
                              <property role="3oM_SC" value="(legacy" />
                              <uo k="s:originTrace" v="n:4662124839800277259" />
                            </node>
                            <node concept="3oM_SD" id="b6" role="1PaTwD">
                              <property role="3oM_SC" value="typesystem" />
                              <uo k="s:originTrace" v="n:4662124839800811738" />
                            </node>
                            <node concept="3oM_SD" id="b7" role="1PaTwD">
                              <property role="3oM_SC" value="is" />
                              <uo k="s:originTrace" v="n:4662124839800825989" />
                            </node>
                            <node concept="3oM_SD" id="b8" role="1PaTwD">
                              <property role="3oM_SC" value="there)" />
                              <uo k="s:originTrace" v="n:4662124839800827880" />
                            </node>
                            <node concept="3oM_SD" id="b9" role="1PaTwD">
                              <property role="3oM_SC" value="so" />
                              <uo k="s:originTrace" v="n:4662124839800809851" />
                            </node>
                            <node concept="3oM_SD" id="ba" role="1PaTwD">
                              <property role="3oM_SC" value="we" />
                              <uo k="s:originTrace" v="n:4662124839800279096" />
                            </node>
                            <node concept="3oM_SD" id="bb" role="1PaTwD">
                              <property role="3oM_SC" value="can" />
                              <uo k="s:originTrace" v="n:4662124839800279114" />
                            </node>
                            <node concept="3oM_SD" id="bc" role="1PaTwD">
                              <property role="3oM_SC" value="safely" />
                              <uo k="s:originTrace" v="n:4662124839800279133" />
                            </node>
                            <node concept="3oM_SD" id="bd" role="1PaTwD">
                              <property role="3oM_SC" value="use" />
                              <uo k="s:originTrace" v="n:4662124839800289159" />
                            </node>
                            <node concept="3oM_SD" id="be" role="1PaTwD">
                              <property role="3oM_SC" value="all" />
                              <uo k="s:originTrace" v="n:4662124839800292676" />
                            </node>
                            <node concept="3oM_SD" id="bf" role="1PaTwD">
                              <property role="3oM_SC" value="receiver" />
                              <uo k="s:originTrace" v="n:4662124839800294518" />
                            </node>
                            <node concept="3oM_SD" id="bg" role="1PaTwD">
                              <property role="3oM_SC" value="members" />
                              <uo k="s:originTrace" v="n:4662124839800311591" />
                            </node>
                            <node concept="3oM_SD" id="bh" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                              <uo k="s:originTrace" v="n:4662124839800316923" />
                            </node>
                            <node concept="3oM_SD" id="bi" role="1PaTwD">
                              <property role="3oM_SC" value="get" />
                              <uo k="s:originTrace" v="n:4662124839800326982" />
                            </node>
                            <node concept="3oM_SD" id="bj" role="1PaTwD">
                              <property role="3oM_SC" value="a" />
                              <uo k="s:originTrace" v="n:4662124839800334271" />
                            </node>
                            <node concept="3oM_SD" id="bk" role="1PaTwD">
                              <property role="3oM_SC" value="set" />
                              <uo k="s:originTrace" v="n:4662124839800778511" />
                            </node>
                            <node concept="3oM_SD" id="bl" role="1PaTwD">
                              <property role="3oM_SC" value="that" />
                              <uo k="s:originTrace" v="n:4662124839800780386" />
                            </node>
                            <node concept="3oM_SD" id="bm" role="1PaTwD">
                              <property role="3oM_SC" value="includes" />
                              <uo k="s:originTrace" v="n:4662124839800784295" />
                            </node>
                            <node concept="3oM_SD" id="bn" role="1PaTwD">
                              <property role="3oM_SC" value="all" />
                              <uo k="s:originTrace" v="n:4662124839800786174" />
                            </node>
                            <node concept="3oM_SD" id="bo" role="1PaTwD">
                              <property role="3oM_SC" value="possible" />
                              <uo k="s:originTrace" v="n:4662124839800788055" />
                            </node>
                            <node concept="3oM_SD" id="bp" role="1PaTwD">
                              <property role="3oM_SC" value="cases" />
                              <uo k="s:originTrace" v="n:4662124839800793695" />
                            </node>
                          </node>
                        </node>
                        <node concept="3SKdUt" id="aL" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839800877694" />
                          <node concept="1PaTwC" id="bq" role="1aUNEU">
                            <uo k="s:originTrace" v="n:4662124839800877695" />
                            <node concept="3oM_SD" id="br" role="1PaTwD">
                              <property role="3oM_SC" value="If" />
                              <uo k="s:originTrace" v="n:4662124839800877696" />
                            </node>
                            <node concept="3oM_SD" id="bs" role="1PaTwD">
                              <property role="3oM_SC" value="that" />
                              <uo k="s:originTrace" v="n:4662124839800888330" />
                            </node>
                            <node concept="3oM_SD" id="bt" role="1PaTwD">
                              <property role="3oM_SC" value="proves" />
                              <uo k="s:originTrace" v="n:4662124839800894618" />
                            </node>
                            <node concept="3oM_SD" id="bu" role="1PaTwD">
                              <property role="3oM_SC" value="not" />
                              <uo k="s:originTrace" v="n:4662124839800900887" />
                            </node>
                            <node concept="3oM_SD" id="bv" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                              <uo k="s:originTrace" v="n:4662124839800909749" />
                            </node>
                            <node concept="3oM_SD" id="bw" role="1PaTwD">
                              <property role="3oM_SC" value="be" />
                              <uo k="s:originTrace" v="n:4662124839800915508" />
                            </node>
                            <node concept="3oM_SD" id="bx" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                              <uo k="s:originTrace" v="n:4662124839800915521" />
                            </node>
                            <node concept="3oM_SD" id="by" role="1PaTwD">
                              <property role="3oM_SC" value="case" />
                              <uo k="s:originTrace" v="n:4662124839800929199" />
                            </node>
                            <node concept="3oM_SD" id="bz" role="1PaTwD">
                              <property role="3oM_SC" value="anymore," />
                              <uo k="s:originTrace" v="n:4662124839800929216" />
                            </node>
                            <node concept="3oM_SD" id="b$" role="1PaTwD">
                              <property role="3oM_SC" value="please" />
                              <uo k="s:originTrace" v="n:4662124839800935499" />
                            </node>
                            <node concept="3oM_SD" id="b_" role="1PaTwD">
                              <property role="3oM_SC" value="wrap" />
                              <uo k="s:originTrace" v="n:4662124839801075717" />
                            </node>
                            <node concept="3oM_SD" id="bA" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                              <uo k="s:originTrace" v="n:4662124839800955933" />
                            </node>
                            <node concept="3oM_SD" id="bB" role="1PaTwD">
                              <property role="3oM_SC" value="whole" />
                              <uo k="s:originTrace" v="n:4662124839800962238" />
                            </node>
                            <node concept="3oM_SD" id="bC" role="1PaTwD">
                              <property role="3oM_SC" value="method" />
                              <uo k="s:originTrace" v="n:4662124839800977429" />
                            </node>
                            <node concept="3oM_SD" id="bD" role="1PaTwD">
                              <property role="3oM_SC" value="with" />
                              <uo k="s:originTrace" v="n:4662124839800980680" />
                            </node>
                            <node concept="tu5oc" id="bE" role="1PaTwD">
                              <uo k="s:originTrace" v="n:4662124839801013082" />
                              <node concept="2YIFZM" id="bG" role="tu5of">
                                <ref role="37wK5l" to="sjya:4SmCR9y_c_1" resolve="scopeWithLegacyTypesystemFallback" />
                                <ref role="1Pybhc" to="sjya:3UQQw2lwzMq" resolve="KotlinScopes" />
                                <uo k="s:originTrace" v="n:4662124839801013083" />
                              </node>
                            </node>
                            <node concept="3oM_SD" id="bF" role="1PaTwD">
                              <property role="3oM_SC" value="." />
                              <uo k="s:originTrace" v="n:4662124839801082954" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="aM" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839797649742" />
                          <node concept="3cpWsn" id="bH" role="3cpWs9">
                            <property role="TrG5h" value="collector" />
                            <uo k="s:originTrace" v="n:4662124839797649743" />
                            <node concept="3uibUv" id="bI" role="1tU5fm">
                              <ref role="3uigEE" to="sjya:3HHsmlLSJQX" resolve="ScopeCollector" />
                              <uo k="s:originTrace" v="n:4662124839797649744" />
                            </node>
                            <node concept="2ShNRf" id="bJ" role="33vP2m">
                              <uo k="s:originTrace" v="n:4662124839797649745" />
                              <node concept="1pGfFk" id="bK" role="2ShVmc">
                                <ref role="37wK5l" to="sjya:3HHsmlLSKgK" resolve="ScopeCollector" />
                                <uo k="s:originTrace" v="n:4662124839797649746" />
                                <node concept="2ShNRf" id="bL" role="37wK5m">
                                  <uo k="s:originTrace" v="n:4662124839797649747" />
                                  <node concept="1pGfFk" id="bM" role="2ShVmc">
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" to="sjya:3HHsmlLs8I9" resolve="ReceiverTypeFilter" />
                                    <uo k="s:originTrace" v="n:4662124839797649748" />
                                    <node concept="37vLTw" id="bN" role="37wK5m">
                                      <ref role="3cqZAo" node="80" resolve="signatureFilter" />
                                      <uo k="s:originTrace" v="n:4662124839800345182" />
                                    </node>
                                    <node concept="37vLTw" id="bO" role="37wK5m">
                                      <ref role="3cqZAo" node="9s" resolve="instanceType" />
                                      <uo k="s:originTrace" v="n:4662124839800525175" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="aN" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839797649749" />
                          <node concept="2YIFZM" id="bP" role="3clFbG">
                            <ref role="37wK5l" to="sjya:pkrm6j1WUh" resolve="collectHierarchyScopes" />
                            <ref role="1Pybhc" to="sjya:6Ijh6DJDHpd" resolve="SignatureScope" />
                            <uo k="s:originTrace" v="n:4662124839797649750" />
                            <node concept="37vLTw" id="bQ" role="37wK5m">
                              <ref role="3cqZAo" node="86" resolve="context" />
                              <uo k="s:originTrace" v="n:4662124839797649751" />
                            </node>
                            <node concept="37vLTw" id="bR" role="37wK5m">
                              <ref role="3cqZAo" node="bH" resolve="collector" />
                              <uo k="s:originTrace" v="n:4662124839797649752" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="aO" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839800648767" />
                          <node concept="2OqwBi" id="bS" role="3clFbG">
                            <uo k="s:originTrace" v="n:4662124839800659598" />
                            <node concept="37vLTw" id="bT" role="2Oq$k0">
                              <ref role="3cqZAo" node="av" resolve="scopes" />
                              <uo k="s:originTrace" v="n:4662124839800648765" />
                            </node>
                            <node concept="X8dFx" id="bU" role="2OqNvi">
                              <uo k="s:originTrace" v="n:4662124839800671953" />
                              <node concept="2OqwBi" id="bV" role="25WWJ7">
                                <uo k="s:originTrace" v="n:4662124839800684347" />
                                <node concept="37vLTw" id="bW" role="2Oq$k0">
                                  <ref role="3cqZAo" node="bH" resolve="collector" />
                                  <uo k="s:originTrace" v="n:4662124839800678725" />
                                </node>
                                <node concept="2S8uIT" id="bX" role="2OqNvi">
                                  <ref role="2S8YL0" to="sjya:3HHsmlLSSJW" resolve="scopes" />
                                  <uo k="s:originTrace" v="n:4662124839800691158" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bVj0M" id="aI" role="37wK5m">
                      <uo k="s:originTrace" v="n:4662124839800105097" />
                      <node concept="gl6BB" id="bY" role="1bW2Oz">
                        <property role="TrG5h" value="_typesystem" />
                        <uo k="s:originTrace" v="n:4662124839800105106" />
                        <node concept="2jxLKc" id="c0" role="1tU5fm">
                          <uo k="s:originTrace" v="n:4662124839800105107" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="bZ" role="1bW5cS">
                        <uo k="s:originTrace" v="n:4662124839800105122" />
                        <node concept="3SKdUt" id="c1" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839800552077" />
                          <node concept="1PaTwC" id="c3" role="1aUNEU">
                            <uo k="s:originTrace" v="n:4662124839800552078" />
                            <node concept="3oM_SD" id="c4" role="1PaTwD">
                              <property role="3oM_SC" value="Otherwise" />
                              <uo k="s:originTrace" v="n:4662124839800552079" />
                            </node>
                            <node concept="3oM_SD" id="c5" role="1PaTwD">
                              <property role="3oM_SC" value="default" />
                              <uo k="s:originTrace" v="n:4662124839800560101" />
                            </node>
                            <node concept="3oM_SD" id="c6" role="1PaTwD">
                              <property role="3oM_SC" value="to" />
                              <uo k="s:originTrace" v="n:4662124839800561442" />
                            </node>
                            <node concept="3oM_SD" id="c7" role="1PaTwD">
                              <property role="3oM_SC" value="the" />
                              <uo k="s:originTrace" v="n:4662124839800563269" />
                            </node>
                            <node concept="3oM_SD" id="c8" role="1PaTwD">
                              <property role="3oM_SC" value="regular" />
                              <uo k="s:originTrace" v="n:4662124839800563278" />
                            </node>
                            <node concept="3oM_SD" id="c9" role="1PaTwD">
                              <property role="3oM_SC" value="scope" />
                              <uo k="s:originTrace" v="n:4662124839800565109" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="c2" role="3cqZAp">
                          <uo k="s:originTrace" v="n:4662124839800154178" />
                          <node concept="2ShNRf" id="ca" role="3clFbG">
                            <uo k="s:originTrace" v="n:1896483169445350186" />
                            <node concept="1pGfFk" id="cb" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="sjya:1VgEGDngi_Z" resolve="TypeExtensionsScope" />
                              <uo k="s:originTrace" v="n:1896483169445350187" />
                              <node concept="37vLTw" id="cc" role="37wK5m">
                                <ref role="3cqZAo" node="86" resolve="context" />
                                <uo k="s:originTrace" v="n:1896483169445350188" />
                              </node>
                              <node concept="37vLTw" id="cd" role="37wK5m">
                                <ref role="3cqZAo" node="9s" resolve="instanceType" />
                                <uo k="s:originTrace" v="n:1896483169445350189" />
                              </node>
                              <node concept="37vLTw" id="ce" role="37wK5m">
                                <ref role="3cqZAo" node="80" resolve="signatureFilter" />
                                <uo k="s:originTrace" v="n:1896483169445350190" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8z" role="3cqZAp">
                  <uo k="s:originTrace" v="n:4662124839799121350" />
                </node>
                <node concept="3SKdUt" id="8$" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1387846870913337113" />
                  <node concept="1PaTwC" id="cf" role="1aUNEU">
                    <uo k="s:originTrace" v="n:1387846870913337114" />
                    <node concept="3oM_SD" id="cg" role="1PaTwD">
                      <property role="3oM_SC" value="Scopes" />
                      <uo k="s:originTrace" v="n:1387846870913337115" />
                    </node>
                    <node concept="3oM_SD" id="ch" role="1PaTwD">
                      <property role="3oM_SC" value="from" />
                      <uo k="s:originTrace" v="n:1387846870913337116" />
                    </node>
                    <node concept="3oM_SD" id="ci" role="1PaTwD">
                      <property role="3oM_SC" value="bounds" />
                      <uo k="s:originTrace" v="n:1387846870913337117" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="8_" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1387846870913337118" />
                  <node concept="1PaTwC" id="cj" role="1aUNEU">
                    <uo k="s:originTrace" v="n:1387846870913337119" />
                    <node concept="3oM_SD" id="ck" role="1PaTwD">
                      <property role="3oM_SC" value="TODO" />
                      <uo k="s:originTrace" v="n:1387846870913337120" />
                    </node>
                    <node concept="3oM_SD" id="cl" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                      <uo k="s:originTrace" v="n:1387846870913337121" />
                    </node>
                    <node concept="3oM_SD" id="cm" role="1PaTwD">
                      <property role="3oM_SC" value="that" />
                      <uo k="s:originTrace" v="n:1387846870913337122" />
                    </node>
                    <node concept="3oM_SD" id="cn" role="1PaTwD">
                      <property role="3oM_SC" value="going" />
                      <uo k="s:originTrace" v="n:1387846870913337123" />
                    </node>
                    <node concept="3oM_SD" id="co" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                      <uo k="s:originTrace" v="n:1387846870913337124" />
                    </node>
                    <node concept="3oM_SD" id="cp" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                      <uo k="s:originTrace" v="n:1387846870913337125" />
                    </node>
                    <node concept="3oM_SD" id="cq" role="1PaTwD">
                      <property role="3oM_SC" value="handled" />
                      <uo k="s:originTrace" v="n:1387846870913337126" />
                    </node>
                    <node concept="3oM_SD" id="cr" role="1PaTwD">
                      <property role="3oM_SC" value="by" />
                      <uo k="s:originTrace" v="n:1387846870913337127" />
                    </node>
                    <node concept="3oM_SD" id="cs" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                      <uo k="s:originTrace" v="n:1387846870913337128" />
                    </node>
                    <node concept="3oM_SD" id="ct" role="1PaTwD">
                      <property role="3oM_SC" value="converted" />
                      <uo k="s:originTrace" v="n:1387846870913337129" />
                    </node>
                    <node concept="3oM_SD" id="cu" role="1PaTwD">
                      <property role="3oM_SC" value="type" />
                      <uo k="s:originTrace" v="n:1387846870913337130" />
                    </node>
                    <node concept="3oM_SD" id="cv" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                      <uo k="s:originTrace" v="n:1387846870913337131" />
                    </node>
                    <node concept="3oM_SD" id="cw" role="1PaTwD">
                      <property role="3oM_SC" value="TypeVariableReference?" />
                      <uo k="s:originTrace" v="n:1387846870913337132" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="8A" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169445444505" />
                  <node concept="2OqwBi" id="cx" role="3clFbG">
                    <uo k="s:originTrace" v="n:1896483169445460984" />
                    <node concept="37vLTw" id="cy" role="2Oq$k0">
                      <ref role="3cqZAo" node="av" resolve="scopes" />
                      <uo k="s:originTrace" v="n:1896483169445444503" />
                    </node>
                    <node concept="X8dFx" id="cz" role="2OqNvi">
                      <uo k="s:originTrace" v="n:1896483169445485335" />
                      <node concept="2OqwBi" id="c$" role="25WWJ7">
                        <uo k="s:originTrace" v="n:1896483169445527478" />
                        <node concept="2OqwBi" id="c_" role="2Oq$k0">
                          <uo k="s:originTrace" v="n:1387846870913337164" />
                          <node concept="2OqwBi" id="cB" role="2Oq$k0">
                            <uo k="s:originTrace" v="n:1387846870913337165" />
                            <node concept="1PxgMI" id="cD" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:1387846870913337166" />
                              <node concept="chp4Y" id="cF" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:g96syBo" resolve="TypeVariableReference" />
                                <uo k="s:originTrace" v="n:1387846870913337167" />
                              </node>
                              <node concept="37vLTw" id="cG" role="1m5AlR">
                                <ref role="3cqZAo" node="9s" resolve="instanceType" />
                                <uo k="s:originTrace" v="n:1387846870913337168" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="cE" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:g96sUm1" resolve="typeVariableDeclaration" />
                              <uo k="s:originTrace" v="n:1387846870913337169" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="cC" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hFD4UhQ" resolve="auxBounds" />
                            <uo k="s:originTrace" v="n:1387846870913337170" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="cA" role="2OqNvi">
                          <uo k="s:originTrace" v="n:1896483169445564885" />
                          <node concept="1bVj0M" id="cH" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <uo k="s:originTrace" v="n:1896483169445564887" />
                            <node concept="3clFbS" id="cI" role="1bW5cS">
                              <uo k="s:originTrace" v="n:1896483169445564888" />
                              <node concept="3clFbF" id="cK" role="3cqZAp">
                                <uo k="s:originTrace" v="n:1896483169445781563" />
                                <node concept="2ShNRf" id="cL" role="3clFbG">
                                  <uo k="s:originTrace" v="n:1896483169445781561" />
                                  <node concept="1pGfFk" id="cM" role="2ShVmc">
                                    <property role="373rjd" value="true" />
                                    <ref role="37wK5l" node="6x" resolve="KotlinInJavaScopeHelper.ProtectedInstanceSignatureScope" />
                                    <uo k="s:originTrace" v="n:1896483169445800292" />
                                    <node concept="2YIFZM" id="cN" role="37wK5m">
                                      <ref role="37wK5l" to="akzu:77yS8CrUKRi" resolve="convert" />
                                      <ref role="1Pybhc" to="akzu:77yS8CrUJ$d" resolve="JavaToKtConversion" />
                                      <uo k="s:originTrace" v="n:1896483169445838309" />
                                      <node concept="37vLTw" id="cQ" role="37wK5m">
                                        <ref role="3cqZAo" node="cJ" resolve="it" />
                                        <uo k="s:originTrace" v="n:1896483169445838310" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="cO" role="37wK5m">
                                      <ref role="3cqZAo" node="80" resolve="signatureFilter" />
                                      <uo k="s:originTrace" v="n:1896483169445881575" />
                                    </node>
                                    <node concept="37vLTw" id="cP" role="37wK5m">
                                      <ref role="3cqZAo" node="7X" resolve="contextNode" />
                                      <uo k="s:originTrace" v="n:1896483169445894757" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="cJ" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <uo k="s:originTrace" v="n:1896483169445564889" />
                              <node concept="2jxLKc" id="cR" role="1tU5fm">
                                <uo k="s:originTrace" v="n:1896483169445564890" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8B" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169445946793" />
                </node>
                <node concept="3cpWs6" id="8C" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169445947557" />
                  <node concept="2ShNRf" id="cS" role="3cqZAk">
                    <uo k="s:originTrace" v="n:1896483169445962418" />
                    <node concept="1pGfFk" id="cT" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="sjya:1VgEGDn$V6G" resolve="SignatureScopeAsScope" />
                      <uo k="s:originTrace" v="n:1896483169445978258" />
                      <node concept="2YIFZM" id="cU" role="37wK5m">
                        <ref role="37wK5l" to="sjya:3HHsmlLEx0k" resolve="of" />
                        <ref role="1Pybhc" to="sjya:6Ijh6DJE7jt" resolve="HidingBySignatureScope" />
                        <uo k="s:originTrace" v="n:4519038972156572769" />
                        <node concept="2YIFZM" id="cW" role="37wK5m">
                          <ref role="37wK5l" to="sjya:3HHsmlMOXmx" resolve="of" />
                          <ref role="1Pybhc" to="sjya:6Ijh6DJE7jt" resolve="HidingBySignatureScope" />
                          <uo k="s:originTrace" v="n:1896483169446081102" />
                          <node concept="37vLTw" id="cX" role="37wK5m">
                            <ref role="3cqZAo" node="av" resolve="scopes" />
                            <uo k="s:originTrace" v="n:1896483169446105534" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="cV" role="37wK5m">
                        <ref role="3cqZAo" node="7Z" resolve="filteringConcept" />
                        <uo k="s:originTrace" v="n:1896483169446030634" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="8D" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1896483169443205078" />
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="8g" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <uo k="s:originTrace" v="n:1962637813265727102" />
              <node concept="3clFbS" id="cY" role="1bW5cS">
                <uo k="s:originTrace" v="n:1962637813265727103" />
                <node concept="3SKdUt" id="cZ" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265727104" />
                  <node concept="1PaTwC" id="d1" role="1aUNEU">
                    <uo k="s:originTrace" v="n:1962637813265727105" />
                    <node concept="3oM_SD" id="d2" role="1PaTwD">
                      <property role="3oM_SC" value="Designed" />
                      <uo k="s:originTrace" v="n:1962637813265727106" />
                    </node>
                    <node concept="3oM_SD" id="d3" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                      <uo k="s:originTrace" v="n:1962637813265727107" />
                    </node>
                    <node concept="3oM_SD" id="d4" role="1PaTwD">
                      <property role="3oM_SC" value="IOperation" />
                      <uo k="s:originTrace" v="n:1962637813265727108" />
                    </node>
                    <node concept="3oM_SD" id="d5" role="1PaTwD">
                      <property role="3oM_SC" value="only" />
                      <uo k="s:originTrace" v="n:1962637813265727109" />
                    </node>
                    <node concept="3oM_SD" id="d6" role="1PaTwD">
                      <property role="3oM_SC" value="(not" />
                      <uo k="s:originTrace" v="n:1962637813265727110" />
                    </node>
                    <node concept="3oM_SD" id="d7" role="1PaTwD">
                      <property role="3oM_SC" value="hybrid" />
                      <uo k="s:originTrace" v="n:1962637813265727111" />
                    </node>
                    <node concept="3oM_SD" id="d8" role="1PaTwD">
                      <property role="3oM_SC" value="concepts)" />
                      <uo k="s:originTrace" v="n:1962637813265727112" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="d0" role="3cqZAp">
                  <uo k="s:originTrace" v="n:1962637813265769467" />
                  <node concept="2ShNRf" id="d9" role="3cqZAk">
                    <uo k="s:originTrace" v="n:1896483169443216168" />
                    <node concept="1pGfFk" id="da" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                      <uo k="s:originTrace" v="n:1896483169443232354" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="85" role="3cqZAp">
          <uo k="s:originTrace" v="n:1896483169443066854" />
        </node>
      </node>
      <node concept="3uibUv" id="7V" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        <uo k="s:originTrace" v="n:1387846870913337192" />
      </node>
      <node concept="37vLTG" id="7W" role="3clF46">
        <property role="TrG5h" value="referenceNode" />
        <uo k="s:originTrace" v="n:1387846870913336986" />
        <node concept="3Tqbb2" id="db" role="1tU5fm">
          <uo k="s:originTrace" v="n:1387846870913336987" />
        </node>
      </node>
      <node concept="37vLTG" id="7X" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <uo k="s:originTrace" v="n:1387846870913336988" />
        <node concept="3Tqbb2" id="dc" role="1tU5fm">
          <uo k="s:originTrace" v="n:1387846870913336989" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y" role="3clF46">
        <property role="TrG5h" value="containmentLink" />
        <uo k="s:originTrace" v="n:1896483169443023093" />
        <node concept="3GbmH5" id="dd" role="1tU5fm">
          <uo k="s:originTrace" v="n:1896483169443035548" />
        </node>
      </node>
      <node concept="37vLTG" id="7Z" role="3clF46">
        <property role="TrG5h" value="filteringConcept" />
        <uo k="s:originTrace" v="n:1896483169442972376" />
        <node concept="3bZ5Sz" id="de" role="1tU5fm">
          <ref role="3bZ5Sy" to="tpck:h0TrEE$" resolve="INamedConcept" />
          <uo k="s:originTrace" v="n:1896483169442972378" />
        </node>
      </node>
      <node concept="37vLTG" id="80" role="3clF46">
        <property role="TrG5h" value="signatureFilter" />
        <uo k="s:originTrace" v="n:1387846870913336990" />
        <node concept="3uibUv" id="df" role="1tU5fm">
          <ref role="3uigEE" to="tbhz:5Zd$6D$ihDa" resolve="SignatureFilter" />
          <uo k="s:originTrace" v="n:3444023549498814232" />
        </node>
      </node>
      <node concept="3Tm1VV" id="81" role="1B3o_S">
        <uo k="s:originTrace" v="n:1387846870913337191" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5K" role="1B3o_S">
      <uo k="s:originTrace" v="n:1387846870913065483" />
    </node>
  </node>
  <node concept="312cEu" id="dg">
    <property role="3GE5qa" value="functionCall" />
    <property role="TrG5h" value="KotlinPropertyGetterCall_Constraints" />
    <uo k="s:originTrace" v="n:1675356390020167690" />
    <node concept="3Tm1VV" id="dh" role="1B3o_S">
      <uo k="s:originTrace" v="n:1675356390020167690" />
    </node>
    <node concept="3uibUv" id="di" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1675356390020167690" />
    </node>
    <node concept="3clFbW" id="dj" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020167690" />
      <node concept="37vLTG" id="dn" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="3uibUv" id="dq" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
      </node>
      <node concept="3cqZAl" id="do" role="3clF45">
        <uo k="s:originTrace" v="n:1675356390020167690" />
      </node>
      <node concept="3clFbS" id="dp" role="3clF47">
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="XkiVB" id="dr" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="1BaE9c" id="du" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="KotlinPropertyGetterCall$V$" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="2YIFZM" id="dw" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
              <node concept="11gdke" id="dx" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
              </node>
              <node concept="11gdke" id="dy" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
              </node>
              <node concept="11gdke" id="dz" role="37wK5m">
                <property role="11gdj1" value="459f9eebcf0e5fc2L" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
              </node>
              <node concept="Xl_RD" id="d$" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.KotlinPropertyGetterCall" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="dv" role="37wK5m">
            <ref role="3cqZAo" node="dn" resolve="initContext" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
          </node>
        </node>
        <node concept="3clFbF" id="ds" role="3cqZAp">
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="1rXfSq" id="d_" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="2ShNRf" id="dA" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020167690" />
              <node concept="1pGfFk" id="dB" role="2ShVmc">
                <ref role="37wK5l" node="dH" resolve="KotlinPropertyGetterCall_Constraints.FunctionName_PD" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
                <node concept="Xjq3P" id="dC" role="37wK5m">
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="dt" role="3cqZAp">
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="1rXfSq" id="dD" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="2ShNRf" id="dE" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020167690" />
              <node concept="1pGfFk" id="dF" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="ee" resolve="KotlinPropertyGetterCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
                <node concept="Xjq3P" id="dG" role="37wK5m">
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dk" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020167690" />
    </node>
    <node concept="312cEu" id="dl" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="FunctionName_PD" />
      <uo k="s:originTrace" v="n:1675356390020167690" />
      <node concept="3clFbW" id="dH" role="jymVt">
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="3cqZAl" id="dK" role="3clF45">
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3Tm1VV" id="dL" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3clFbS" id="dM" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="XkiVB" id="dO" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="1BaE9c" id="dP" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="functionName$M4b" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
              <node concept="2YIFZM" id="dU" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
                <node concept="11gdke" id="dV" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="dW" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="dX" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="dY" role="37wK5m">
                  <property role="11gdj1" value="17400fc2a35501ffL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="Xl_RD" id="dZ" role="37wK5m">
                  <property role="Xl_RC" value="functionName" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="dQ" role="37wK5m">
              <ref role="3cqZAo" node="dN" resolve="container" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
            <node concept="3clFbT" id="dR" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
            <node concept="3clFbT" id="dS" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
            <node concept="3clFbT" id="dT" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="dN" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="3uibUv" id="e0" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="dI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="3Tm1VV" id="e1" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3uibUv" id="e2" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="37vLTG" id="e3" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="3Tqbb2" id="e6" role="1tU5fm">
            <uo k="s:originTrace" v="n:1675356390020167690" />
          </node>
        </node>
        <node concept="2AHcQZ" id="e4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3clFbS" id="e5" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020168719" />
          <node concept="3cpWs6" id="e7" role="3cqZAp">
            <uo k="s:originTrace" v="n:1675356390020214756" />
            <node concept="2YIFZM" id="e8" role="3cqZAk">
              <ref role="1Pybhc" to="3hq4:1t03WazlpG0" resolve="KotlinPropertyHelper" />
              <ref role="37wK5l" to="3hq4:1t03WazltnW" resolve="getterNameOf" />
              <uo k="s:originTrace" v="n:1675356390020218889" />
              <node concept="2OqwBi" id="e9" role="37wK5m">
                <uo k="s:originTrace" v="n:1675356390020224448" />
                <node concept="2OqwBi" id="ea" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1675356390020221446" />
                  <node concept="37vLTw" id="ec" role="2Oq$k0">
                    <ref role="3cqZAo" node="e3" resolve="node" />
                    <uo k="s:originTrace" v="n:1675356390020220590" />
                  </node>
                  <node concept="3TrEf2" id="ed" role="2OqNvi">
                    <ref role="3Tt5mk" to="48vp:4mvBIJf3IdV" resolve="variable" />
                    <uo k="s:originTrace" v="n:1675356390020222664" />
                  </node>
                </node>
                <node concept="3TrcHB" id="eb" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:1675356390020226302" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="dJ" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1675356390020167690" />
      </node>
    </node>
    <node concept="312cEu" id="dm" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1675356390020167690" />
      <node concept="3clFbW" id="ee" role="jymVt">
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="37vLTG" id="eh" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="3uibUv" id="ek" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
          </node>
        </node>
        <node concept="3cqZAl" id="ei" role="3clF45">
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3clFbS" id="ej" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="XkiVB" id="el" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="1BaE9c" id="em" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$7dy6" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
              <node concept="2YIFZM" id="eq" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1675356390020167690" />
                <node concept="11gdke" id="er" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="es" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="et" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="11gdke" id="eu" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
                <node concept="Xl_RD" id="ev" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:1675356390020167690" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="en" role="37wK5m">
              <ref role="3cqZAo" node="eh" resolve="container" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
            <node concept="3clFbT" id="eo" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
            <node concept="3clFbT" id="ep" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020167690" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="ef" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1675356390020167690" />
        <node concept="3Tm1VV" id="ew" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3uibUv" id="ex" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="2AHcQZ" id="ey" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
        <node concept="3clFbS" id="ez" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020167690" />
          <node concept="3cpWs6" id="e_" role="3cqZAp">
            <uo k="s:originTrace" v="n:1675356390020167690" />
            <node concept="2ShNRf" id="eA" role="3cqZAk">
              <uo k="s:originTrace" v="n:1387846870913357564" />
              <node concept="YeOm9" id="eB" role="2ShVmc">
                <uo k="s:originTrace" v="n:1387846870913357564" />
                <node concept="1Y3b0j" id="eC" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:1387846870913357564" />
                  <node concept="3Tm1VV" id="eD" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1387846870913357564" />
                  </node>
                  <node concept="3clFb_" id="eE" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:1387846870913357564" />
                    <node concept="3Tm1VV" id="eG" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                    <node concept="3uibUv" id="eH" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                    <node concept="3clFbS" id="eI" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                      <node concept="3cpWs6" id="eK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1387846870913357564" />
                        <node concept="2ShNRf" id="eL" role="3cqZAk">
                          <uo k="s:originTrace" v="n:1387846870913357564" />
                          <node concept="1pGfFk" id="eM" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:1387846870913357564" />
                            <node concept="Xl_RD" id="eN" role="37wK5m">
                              <property role="Xl_RC" value="r:1c079afe-e806-4cb3-9c45-f939aac19fe8(jetbrains.mps.baseLanguage.kotlinRefs.constraints)" />
                              <uo k="s:originTrace" v="n:1387846870913357564" />
                            </node>
                            <node concept="Xl_RD" id="eO" role="37wK5m">
                              <property role="Xl_RC" value="1387846870913357564" />
                              <uo k="s:originTrace" v="n:1387846870913357564" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="eJ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="eF" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:1387846870913357564" />
                    <node concept="3Tm1VV" id="eP" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                    <node concept="3uibUv" id="eQ" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                    <node concept="37vLTG" id="eR" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                      <node concept="3uibUv" id="eU" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:1387846870913357564" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="eS" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                      <node concept="3clFbF" id="eV" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1387846870913357828" />
                        <node concept="2YIFZM" id="eW" role="3clFbG">
                          <ref role="37wK5l" node="5H" resolve="getScopeForAccessor" />
                          <ref role="1Pybhc" node="5y" resolve="KotlinInJavaScopeHelper" />
                          <uo k="s:originTrace" v="n:1387846870914363959" />
                          <node concept="1DoJHT" id="eX" role="37wK5m">
                            <property role="1Dpdpm" value="getReferenceNode" />
                            <uo k="s:originTrace" v="n:1387846870914363960" />
                            <node concept="3uibUv" id="f1" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="f2" role="1EMhIo">
                              <ref role="3cqZAo" node="eR" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="eY" role="37wK5m">
                            <property role="1Dpdpm" value="getContextNode" />
                            <uo k="s:originTrace" v="n:1387846870914363961" />
                            <node concept="3uibUv" id="f3" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="f4" role="1EMhIo">
                              <ref role="3cqZAo" node="eR" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="eZ" role="37wK5m">
                            <property role="1Dpdpm" value="getContainmentLink" />
                            <uo k="s:originTrace" v="n:1962637813269181738" />
                            <node concept="3uibUv" id="f5" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="f6" role="1EMhIo">
                              <ref role="3cqZAo" node="eR" resolve="_context" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="f0" role="37wK5m">
                            <ref role="1Px2BO" to="nww:5q426iHsD7S" resolve="AccessorKind" />
                            <ref role="Rm8GQ" to="nww:5q426iHsDai" resolve="GETTER" />
                            <uo k="s:originTrace" v="n:1387846870914363962" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="eT" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870913357564" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="e$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1675356390020167690" />
        </node>
      </node>
      <node concept="3uibUv" id="eg" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1675356390020167690" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="f7">
    <property role="3GE5qa" value="functionCall" />
    <property role="TrG5h" value="KotlinPropertySetterCall_Constraints" />
    <uo k="s:originTrace" v="n:1675356390020228034" />
    <node concept="3Tm1VV" id="f8" role="1B3o_S">
      <uo k="s:originTrace" v="n:1675356390020228034" />
    </node>
    <node concept="3uibUv" id="f9" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1675356390020228034" />
    </node>
    <node concept="3clFbW" id="fa" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020228034" />
      <node concept="37vLTG" id="fe" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="3uibUv" id="fh" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
      </node>
      <node concept="3cqZAl" id="ff" role="3clF45">
        <uo k="s:originTrace" v="n:1675356390020228034" />
      </node>
      <node concept="3clFbS" id="fg" role="3clF47">
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="XkiVB" id="fi" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="1BaE9c" id="fl" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="KotlinPropertySetterCall$AS" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="2YIFZM" id="fn" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
              <node concept="11gdke" id="fo" role="37wK5m">
                <property role="11gdj1" value="2405a196e75d462cL" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
              </node>
              <node concept="11gdke" id="fp" role="37wK5m">
                <property role="11gdj1" value="938bae8e3fac20aaL" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
              </node>
              <node concept="11gdke" id="fq" role="37wK5m">
                <property role="11gdj1" value="3569a755572a0ffbL" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
              </node>
              <node concept="Xl_RD" id="fr" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.baseLanguage.kotlinRefs.structure.KotlinPropertySetterCall" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="fm" role="37wK5m">
            <ref role="3cqZAo" node="fe" resolve="initContext" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
          </node>
        </node>
        <node concept="3clFbF" id="fj" role="3cqZAp">
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="1rXfSq" id="fs" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="2ShNRf" id="ft" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020228034" />
              <node concept="1pGfFk" id="fu" role="2ShVmc">
                <ref role="37wK5l" node="f$" resolve="KotlinPropertySetterCall_Constraints.FunctionName_PD" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
                <node concept="Xjq3P" id="fv" role="37wK5m">
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="fk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="1rXfSq" id="fw" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="2ShNRf" id="fx" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020228034" />
              <node concept="1pGfFk" id="fy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="g5" resolve="KotlinPropertySetterCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
                <node concept="Xjq3P" id="fz" role="37wK5m">
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="fb" role="jymVt">
      <uo k="s:originTrace" v="n:1675356390020228034" />
    </node>
    <node concept="312cEu" id="fc" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="FunctionName_PD" />
      <uo k="s:originTrace" v="n:1675356390020228034" />
      <node concept="3clFbW" id="f$" role="jymVt">
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="3cqZAl" id="fB" role="3clF45">
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3Tm1VV" id="fC" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3clFbS" id="fD" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="XkiVB" id="fF" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="1BaE9c" id="fG" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="functionName$M4b" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
              <node concept="2YIFZM" id="fL" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
                <node concept="11gdke" id="fM" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="fN" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="fO" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="fP" role="37wK5m">
                  <property role="11gdj1" value="17400fc2a35501ffL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="Xl_RD" id="fQ" role="37wK5m">
                  <property role="Xl_RC" value="functionName" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="fH" role="37wK5m">
              <ref role="3cqZAo" node="fE" resolve="container" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
            <node concept="3clFbT" id="fI" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
            <node concept="3clFbT" id="fJ" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
            <node concept="3clFbT" id="fK" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="fE" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="3uibUv" id="fR" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="f_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="3Tm1VV" id="fS" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3uibUv" id="fT" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="37vLTG" id="fU" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="3Tqbb2" id="fX" role="1tU5fm">
            <uo k="s:originTrace" v="n:1675356390020228034" />
          </node>
        </node>
        <node concept="2AHcQZ" id="fV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3clFbS" id="fW" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020228803" />
          <node concept="3cpWs6" id="fY" role="3cqZAp">
            <uo k="s:originTrace" v="n:1675356390020229154" />
            <node concept="2YIFZM" id="fZ" role="3cqZAk">
              <ref role="1Pybhc" to="3hq4:1t03WazlpG0" resolve="KotlinPropertyHelper" />
              <ref role="37wK5l" to="3hq4:1t03WazlpL0" resolve="setterNameOf" />
              <uo k="s:originTrace" v="n:1675356390020230809" />
              <node concept="2OqwBi" id="g0" role="37wK5m">
                <uo k="s:originTrace" v="n:1675356390020230810" />
                <node concept="2OqwBi" id="g1" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1675356390020230811" />
                  <node concept="37vLTw" id="g3" role="2Oq$k0">
                    <ref role="3cqZAo" node="fU" resolve="node" />
                    <uo k="s:originTrace" v="n:1675356390020230812" />
                  </node>
                  <node concept="3TrEf2" id="g4" role="2OqNvi">
                    <ref role="3Tt5mk" to="48vp:1t03Wazivtu" resolve="variable" />
                    <uo k="s:originTrace" v="n:1675356390020230813" />
                  </node>
                </node>
                <node concept="3TrcHB" id="g2" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:1675356390020230814" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="fA" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1675356390020228034" />
      </node>
    </node>
    <node concept="312cEu" id="fd" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1675356390020228034" />
      <node concept="3clFbW" id="g5" role="jymVt">
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="37vLTG" id="g8" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="3uibUv" id="gb" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
          </node>
        </node>
        <node concept="3cqZAl" id="g9" role="3clF45">
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3clFbS" id="ga" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="XkiVB" id="gc" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="1BaE9c" id="gd" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="target$7dy6" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
              <node concept="2YIFZM" id="gh" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1675356390020228034" />
                <node concept="11gdke" id="gi" role="37wK5m">
                  <property role="11gdj1" value="2405a196e75d462cL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="gj" role="37wK5m">
                  <property role="11gdj1" value="938bae8e3fac20aaL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="gk" role="37wK5m">
                  <property role="11gdj1" value="eac1f33ddc380f3L" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="11gdke" id="gl" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
                <node concept="Xl_RD" id="gm" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                  <uo k="s:originTrace" v="n:1675356390020228034" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="ge" role="37wK5m">
              <ref role="3cqZAo" node="g8" resolve="container" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
            <node concept="3clFbT" id="gf" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
            <node concept="3clFbT" id="gg" role="37wK5m">
              <uo k="s:originTrace" v="n:1675356390020228034" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="g6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1675356390020228034" />
        <node concept="3Tm1VV" id="gn" role="1B3o_S">
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3uibUv" id="go" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="2AHcQZ" id="gp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
        <node concept="3clFbS" id="gq" role="3clF47">
          <uo k="s:originTrace" v="n:1675356390020228034" />
          <node concept="3cpWs6" id="gs" role="3cqZAp">
            <uo k="s:originTrace" v="n:1675356390020228034" />
            <node concept="2ShNRf" id="gt" role="3cqZAk">
              <uo k="s:originTrace" v="n:1387846870909666243" />
              <node concept="YeOm9" id="gu" role="2ShVmc">
                <uo k="s:originTrace" v="n:1387846870909666243" />
                <node concept="1Y3b0j" id="gv" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:1387846870909666243" />
                  <node concept="3Tm1VV" id="gw" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1387846870909666243" />
                  </node>
                  <node concept="3clFb_" id="gx" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:1387846870909666243" />
                    <node concept="3Tm1VV" id="gz" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                    <node concept="3uibUv" id="g$" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                    <node concept="3clFbS" id="g_" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                      <node concept="3cpWs6" id="gB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1387846870909666243" />
                        <node concept="2ShNRf" id="gC" role="3cqZAk">
                          <uo k="s:originTrace" v="n:1387846870909666243" />
                          <node concept="1pGfFk" id="gD" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:1387846870909666243" />
                            <node concept="Xl_RD" id="gE" role="37wK5m">
                              <property role="Xl_RC" value="r:1c079afe-e806-4cb3-9c45-f939aac19fe8(jetbrains.mps.baseLanguage.kotlinRefs.constraints)" />
                              <uo k="s:originTrace" v="n:1387846870909666243" />
                            </node>
                            <node concept="Xl_RD" id="gF" role="37wK5m">
                              <property role="Xl_RC" value="1387846870909666243" />
                              <uo k="s:originTrace" v="n:1387846870909666243" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="gA" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="gy" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:1387846870909666243" />
                    <node concept="3Tm1VV" id="gG" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                    <node concept="3uibUv" id="gH" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                    <node concept="37vLTG" id="gI" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                      <node concept="3uibUv" id="gL" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:1387846870909666243" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="gJ" role="3clF47">
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                      <node concept="3clFbF" id="gM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1387846870913349726" />
                        <node concept="2YIFZM" id="gN" role="3clFbG">
                          <ref role="37wK5l" node="5H" resolve="getScopeForAccessor" />
                          <ref role="1Pybhc" node="5y" resolve="KotlinInJavaScopeHelper" />
                          <uo k="s:originTrace" v="n:1387846870914365038" />
                          <node concept="1DoJHT" id="gO" role="37wK5m">
                            <property role="1Dpdpm" value="getReferenceNode" />
                            <uo k="s:originTrace" v="n:1387846870914365039" />
                            <node concept="3uibUv" id="gS" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="gT" role="1EMhIo">
                              <ref role="3cqZAo" node="gI" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="gP" role="37wK5m">
                            <property role="1Dpdpm" value="getContextNode" />
                            <uo k="s:originTrace" v="n:1387846870914365040" />
                            <node concept="3uibUv" id="gU" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="gV" role="1EMhIo">
                              <ref role="3cqZAo" node="gI" resolve="_context" />
                            </node>
                          </node>
                          <node concept="1DoJHT" id="gQ" role="37wK5m">
                            <property role="1Dpdpm" value="getContainmentLink" />
                            <uo k="s:originTrace" v="n:1962637813269185063" />
                            <node concept="3uibUv" id="gW" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="gX" role="1EMhIo">
                              <ref role="3cqZAo" node="gI" resolve="_context" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="gR" role="37wK5m">
                            <ref role="1Px2BO" to="nww:5q426iHsD7S" resolve="AccessorKind" />
                            <ref role="Rm8GQ" to="nww:5q426iHsDe6" resolve="SETTER" />
                            <uo k="s:originTrace" v="n:1387846870914365041" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="gK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:1387846870909666243" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="gr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1675356390020228034" />
        </node>
      </node>
      <node concept="3uibUv" id="g7" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1675356390020228034" />
      </node>
    </node>
  </node>
</model>

