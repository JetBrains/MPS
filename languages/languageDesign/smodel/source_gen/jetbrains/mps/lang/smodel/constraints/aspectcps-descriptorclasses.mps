<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:fc11270(checkpoints/jetbrains.mps.lang.smodel.constraints@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="tpev" ref="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="79pl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.base(MPS.Core/)" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="ze1i" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="79pm" ref="8e98f4e2-decf-4e97-bf80-9109e8b759ee/java:jetbrains.mps.smodel.runtime.base(jetbrains.mps.lang.constraints.rules.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="6xgk" ref="r:6e9ad488-5df2-49e4-8c01-8a7f3812adf7(jetbrains.mps.lang.scopes.runtime)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
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
    <language id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern">
      <concept id="1136720037777" name="jetbrains.mps.lang.pattern.structure.PatternExpression" flags="in" index="2DMOqp">
        <child id="9046399079000773837" name="pattern" index="HM535" />
      </concept>
      <concept id="1137418540378" name="jetbrains.mps.lang.pattern.structure.LinkPatternVariableDeclaration" flags="ng" index="3jrphi">
        <property id="1137418571428" name="varName" index="3jrwYG" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1178871491133" name="jetbrains.mps.lang.typesystem.structure.CoerceStrongExpression" flags="nn" index="1UdQGJ" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174642900584" name="jetbrains.mps.lang.typesystem.structure.PatternCondition" flags="ig" index="1Yb3XT">
        <child id="1174642936809" name="pattern" index="1YbcFS" />
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
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
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
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="0">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="ChildAttributeQualifier_Constraints" />
    <uo k="s:originTrace" v="n:5534894399153286998" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:5534894399153286998" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5534894399153286998" />
    </node>
    <node concept="3clFbW" id="3" role="jymVt">
      <uo k="s:originTrace" v="n:5534894399153286998" />
      <node concept="37vLTG" id="6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5534894399153286998" />
        <node concept="3uibUv" id="9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
      </node>
      <node concept="3cqZAl" id="7" role="3clF45">
        <uo k="s:originTrace" v="n:5534894399153286998" />
      </node>
      <node concept="3clFbS" id="8" role="3clF47">
        <uo k="s:originTrace" v="n:5534894399153286998" />
        <node concept="XkiVB" id="a" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
          <node concept="1BaE9c" id="c" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ChildAttributeQualifier$2j" />
            <uo k="s:originTrace" v="n:5534894399153286998" />
            <node concept="2YIFZM" id="e" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:5534894399153286998" />
              <node concept="11gdke" id="f" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
              </node>
              <node concept="11gdke" id="g" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
              </node>
              <node concept="11gdke" id="h" role="37wK5m">
                <property role="11gdj1" value="9d98713f24a0e5bL" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
              </node>
              <node concept="Xl_RD" id="i" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.ChildAttributeQualifier" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="d" role="37wK5m">
            <ref role="3cqZAo" node="6" resolve="initContext" />
            <uo k="s:originTrace" v="n:5534894399153286998" />
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:5534894399153286998" />
          <node concept="1rXfSq" id="j" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:5534894399153286998" />
            <node concept="2ShNRf" id="k" role="37wK5m">
              <uo k="s:originTrace" v="n:5534894399153286998" />
              <node concept="1pGfFk" id="l" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="n" resolve="ChildAttributeQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
                <node concept="Xjq3P" id="m" role="37wK5m">
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4" role="jymVt">
      <uo k="s:originTrace" v="n:5534894399153286998" />
    </node>
    <node concept="312cEu" id="5" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:5534894399153286998" />
      <node concept="3clFbW" id="n" role="jymVt">
        <uo k="s:originTrace" v="n:5534894399153286998" />
        <node concept="37vLTG" id="q" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
          <node concept="3uibUv" id="t" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5534894399153286998" />
          </node>
        </node>
        <node concept="3cqZAl" id="r" role="3clF45">
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
        <node concept="3clFbS" id="s" role="3clF47">
          <uo k="s:originTrace" v="n:5534894399153286998" />
          <node concept="XkiVB" id="u" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:5534894399153286998" />
            <node concept="1BaE9c" id="v" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="attributeConcept$cTE1" />
              <uo k="s:originTrace" v="n:5534894399153286998" />
              <node concept="2YIFZM" id="z" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:5534894399153286998" />
                <node concept="11gdke" id="$" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
                <node concept="11gdke" id="_" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
                <node concept="11gdke" id="A" role="37wK5m">
                  <property role="11gdj1" value="9d98713f24a0e5bL" />
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
                <node concept="11gdke" id="B" role="37wK5m">
                  <property role="11gdj1" value="9d98713f24a0e5dL" />
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
                <node concept="Xl_RD" id="C" role="37wK5m">
                  <property role="Xl_RC" value="attributeConcept" />
                  <uo k="s:originTrace" v="n:5534894399153286998" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="w" role="37wK5m">
              <ref role="3cqZAo" node="q" resolve="container" />
              <uo k="s:originTrace" v="n:5534894399153286998" />
            </node>
            <node concept="3clFbT" id="x" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:5534894399153286998" />
            </node>
            <node concept="3clFbT" id="y" role="37wK5m">
              <uo k="s:originTrace" v="n:5534894399153286998" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:5534894399153286998" />
        <node concept="3Tm1VV" id="D" role="1B3o_S">
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
        <node concept="3uibUv" id="E" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
        <node concept="2AHcQZ" id="F" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
        <node concept="3clFbS" id="G" role="3clF47">
          <uo k="s:originTrace" v="n:5534894399153286998" />
          <node concept="3cpWs6" id="I" role="3cqZAp">
            <uo k="s:originTrace" v="n:5534894399153286998" />
            <node concept="2ShNRf" id="J" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582802635" />
              <node concept="YeOm9" id="K" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582802635" />
                <node concept="1Y3b0j" id="L" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582802635" />
                  <node concept="3Tm1VV" id="M" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582802635" />
                  </node>
                  <node concept="3clFb_" id="N" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582802635" />
                    <node concept="3Tm1VV" id="P" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                    <node concept="3uibUv" id="Q" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                    <node concept="3clFbS" id="R" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                      <node concept="3cpWs6" id="T" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802635" />
                        <node concept="2ShNRf" id="U" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582802635" />
                          <node concept="1pGfFk" id="V" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582802635" />
                            <node concept="Xl_RD" id="W" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582802635" />
                            </node>
                            <node concept="Xl_RD" id="X" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582802635" />
                              <uo k="s:originTrace" v="n:6836281137582802635" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="S" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="O" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582802635" />
                    <node concept="3Tm1VV" id="Y" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                    <node concept="3uibUv" id="Z" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                    <node concept="37vLTG" id="10" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                      <node concept="3uibUv" id="13" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582802635" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="11" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                      <node concept="3clFbF" id="14" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802637" />
                        <node concept="2YIFZM" id="15" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582802824" />
                          <node concept="2YIFZM" id="16" role="37wK5m">
                            <ref role="37wK5l" to="tpcn:6_gUeurcK7u" resolve="getApplicableAttributes" />
                            <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                            <uo k="s:originTrace" v="n:6836281137582802825" />
                            <node concept="1PxgMI" id="17" role="37wK5m">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582802826" />
                              <node concept="1eOMI4" id="19" role="1m5AlR">
                                <uo k="s:originTrace" v="n:6836281137582802827" />
                                <node concept="3K4zz7" id="1b" role="1eOMHV">
                                  <uo k="s:originTrace" v="n:6836281137582802828" />
                                  <node concept="1DoJHT" id="1c" role="3K4E3e">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582802829" />
                                    <node concept="3uibUv" id="1f" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="1g" role="1EMhIo">
                                      <ref role="3cqZAo" node="10" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1d" role="3K4Cdx">
                                    <uo k="s:originTrace" v="n:6836281137582802830" />
                                    <node concept="1DoJHT" id="1h" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582802831" />
                                      <node concept="3uibUv" id="1j" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="1k" role="1EMhIo">
                                        <ref role="3cqZAo" node="10" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="3w_OXm" id="1i" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582802832" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1e" role="3K4GZi">
                                    <uo k="s:originTrace" v="n:6836281137582802833" />
                                    <node concept="1DoJHT" id="1l" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582802834" />
                                      <node concept="3uibUv" id="1n" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="1o" role="1EMhIo">
                                        <ref role="3cqZAo" node="10" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="1m" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582802835" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="chp4Y" id="1a" role="3oSUPX">
                                <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                                <uo k="s:originTrace" v="n:6836281137582802837" />
                              </node>
                            </node>
                            <node concept="2tJFMh" id="18" role="37wK5m">
                              <uo k="s:originTrace" v="n:8525822767680260619" />
                              <node concept="ZC_QK" id="1p" role="2tJFKM">
                                <ref role="2aWVGs" to="tpck:BpxLfMhSxq" resolve="ChildAttribute" />
                                <uo k="s:originTrace" v="n:8525822767680260618" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="12" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802635" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:5534894399153286998" />
        </node>
      </node>
      <node concept="3uibUv" id="p" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:5534894399153286998" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1q">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="ChildNodeRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:7292653286930772283" />
    <node concept="3Tm1VV" id="1r" role="1B3o_S">
      <uo k="s:originTrace" v="n:7292653286930772283" />
    </node>
    <node concept="3uibUv" id="1s" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7292653286930772283" />
    </node>
    <node concept="3clFbW" id="1t" role="jymVt">
      <uo k="s:originTrace" v="n:7292653286930772283" />
      <node concept="37vLTG" id="1w" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7292653286930772283" />
        <node concept="3uibUv" id="1z" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
      </node>
      <node concept="3cqZAl" id="1x" role="3clF45">
        <uo k="s:originTrace" v="n:7292653286930772283" />
      </node>
      <node concept="3clFbS" id="1y" role="3clF47">
        <uo k="s:originTrace" v="n:7292653286930772283" />
        <node concept="XkiVB" id="1$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
          <node concept="1BaE9c" id="1A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ChildNodeRefExpression$jQ" />
            <uo k="s:originTrace" v="n:7292653286930772283" />
            <node concept="2YIFZM" id="1C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7292653286930772283" />
              <node concept="11gdke" id="1D" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
              </node>
              <node concept="11gdke" id="1E" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
              </node>
              <node concept="11gdke" id="1F" role="37wK5m">
                <property role="11gdj1" value="84baf20c71f8a79L" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
              </node>
              <node concept="Xl_RD" id="1G" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.ChildNodeRefExpression" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1B" role="37wK5m">
            <ref role="3cqZAo" node="1w" resolve="initContext" />
            <uo k="s:originTrace" v="n:7292653286930772283" />
          </node>
        </node>
        <node concept="3clFbF" id="1_" role="3cqZAp">
          <uo k="s:originTrace" v="n:7292653286930772283" />
          <node concept="1rXfSq" id="1H" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:7292653286930772283" />
            <node concept="2ShNRf" id="1I" role="37wK5m">
              <uo k="s:originTrace" v="n:7292653286930772283" />
              <node concept="1pGfFk" id="1J" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="1L" resolve="ChildNodeRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
                <node concept="Xjq3P" id="1K" role="37wK5m">
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u" role="jymVt">
      <uo k="s:originTrace" v="n:7292653286930772283" />
    </node>
    <node concept="312cEu" id="1v" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:7292653286930772283" />
      <node concept="3clFbW" id="1L" role="jymVt">
        <uo k="s:originTrace" v="n:7292653286930772283" />
        <node concept="37vLTG" id="1O" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
          <node concept="3uibUv" id="1R" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7292653286930772283" />
          </node>
        </node>
        <node concept="3cqZAl" id="1P" role="3clF45">
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
        <node concept="3clFbS" id="1Q" role="3clF47">
          <uo k="s:originTrace" v="n:7292653286930772283" />
          <node concept="XkiVB" id="1S" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:7292653286930772283" />
            <node concept="1BaE9c" id="1T" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="targetNode$szAT" />
              <uo k="s:originTrace" v="n:7292653286930772283" />
              <node concept="2YIFZM" id="1X" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:7292653286930772283" />
                <node concept="11gdke" id="1Y" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
                <node concept="11gdke" id="1Z" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
                <node concept="11gdke" id="20" role="37wK5m">
                  <property role="11gdj1" value="84baf20c71f8a79L" />
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
                <node concept="11gdke" id="21" role="37wK5m">
                  <property role="11gdj1" value="84baf20c71f9250L" />
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
                <node concept="Xl_RD" id="22" role="37wK5m">
                  <property role="Xl_RC" value="targetNode" />
                  <uo k="s:originTrace" v="n:7292653286930772283" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1U" role="37wK5m">
              <ref role="3cqZAo" node="1O" resolve="container" />
              <uo k="s:originTrace" v="n:7292653286930772283" />
            </node>
            <node concept="3clFbT" id="1V" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:7292653286930772283" />
            </node>
            <node concept="3clFbT" id="1W" role="37wK5m">
              <uo k="s:originTrace" v="n:7292653286930772283" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1M" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:7292653286930772283" />
        <node concept="3Tm1VV" id="23" role="1B3o_S">
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
        <node concept="3uibUv" id="24" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
        <node concept="2AHcQZ" id="25" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
        <node concept="3clFbS" id="26" role="3clF47">
          <uo k="s:originTrace" v="n:7292653286930772283" />
          <node concept="3cpWs6" id="28" role="3cqZAp">
            <uo k="s:originTrace" v="n:7292653286930772283" />
            <node concept="2ShNRf" id="29" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799426" />
              <node concept="YeOm9" id="2a" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799426" />
                <node concept="1Y3b0j" id="2b" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799426" />
                  <node concept="3Tm1VV" id="2c" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799426" />
                  </node>
                  <node concept="3clFb_" id="2d" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799426" />
                    <node concept="3Tm1VV" id="2f" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                    <node concept="3uibUv" id="2g" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                    <node concept="3clFbS" id="2h" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                      <node concept="3cpWs6" id="2j" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799426" />
                        <node concept="2ShNRf" id="2k" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799426" />
                          <node concept="1pGfFk" id="2l" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799426" />
                            <node concept="Xl_RD" id="2m" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799426" />
                            </node>
                            <node concept="Xl_RD" id="2n" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799426" />
                              <uo k="s:originTrace" v="n:6836281137582799426" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2i" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="2e" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799426" />
                    <node concept="3Tm1VV" id="2o" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                    <node concept="3uibUv" id="2p" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                    <node concept="37vLTG" id="2q" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                      <node concept="3uibUv" id="2t" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799426" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2r" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                      <node concept="3clFbF" id="2u" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799428" />
                        <node concept="2ShNRf" id="2v" role="3clFbG">
                          <uo k="s:originTrace" v="n:6836281137582799429" />
                          <node concept="1pGfFk" id="2w" role="2ShVmc">
                            <ref role="37wK5l" to="6xgk:7lHSllLpTWM" resolve="NamedElementsScope" />
                            <uo k="s:originTrace" v="n:6836281137582799430" />
                            <node concept="2OqwBi" id="2x" role="37wK5m">
                              <uo k="s:originTrace" v="n:6836281137582799431" />
                              <node concept="2OqwBi" id="2y" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6836281137582799432" />
                                <node concept="1DoJHT" id="2$" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582799433" />
                                  <node concept="3uibUv" id="2A" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="2B" role="1EMhIo">
                                    <ref role="3cqZAo" node="2q" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2_" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp25:xbFM377T9e" resolve="parent" />
                                  <uo k="s:originTrace" v="n:6836281137582799434" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="2z" role="2OqNvi">
                                <ref role="37wK5l" to="tpeu:4x3U0fpSqvX" resolve="getPossibleTargetNodes" />
                                <uo k="s:originTrace" v="n:8085146484218857999" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2s" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799426" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="27" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:7292653286930772283" />
        </node>
      </node>
      <node concept="3uibUv" id="1N" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:7292653286930772283" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2C">
    <property role="TrG5h" value="ConstraintsAspectDescriptor" />
    <property role="3GE5qa" value="Constraints" />
    <node concept="3uibUv" id="2D" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseConstraintsAspectDescriptor" resolve="BaseConstraintsAspectDescriptor" />
    </node>
    <node concept="3Tm1VV" id="2E" role="1B3o_S" />
    <node concept="3clFbW" id="2F" role="jymVt">
      <node concept="3cqZAl" id="2I" role="3clF45" />
      <node concept="3Tm1VV" id="2J" role="1B3o_S" />
      <node concept="3clFbS" id="2K" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2G" role="jymVt" />
    <node concept="3clFb_" id="2H" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConstraints" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="2L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="2M" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3Tm1VV" id="2N" role="1B3o_S" />
      <node concept="3uibUv" id="2O" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
      </node>
      <node concept="37vLTG" id="2P" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="2S" role="1tU5fm" />
        <node concept="2AHcQZ" id="2T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2Q" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2U" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
        </node>
        <node concept="2AHcQZ" id="2V" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2R" role="3clF47">
        <node concept="1_3QMa" id="2W" role="3cqZAp">
          <node concept="37vLTw" id="2Y" role="1_3QMn">
            <ref role="3cqZAo" node="2P" resolve="concept" />
          </node>
          <node concept="1pnPoh" id="2Z" role="1_3QMm">
            <node concept="3clFbS" id="3_" role="1pnPq1">
              <node concept="3cpWs6" id="3B" role="3cqZAp">
                <node concept="2ShNRf" id="3C" role="3cqZAk">
                  <node concept="1pGfFk" id="3D" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="131" resolve="SPropertyAccess_Constraints" />
                    <node concept="37vLTw" id="3E" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3A" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:gzTrcDJ" resolve="SPropertyAccess" />
            </node>
          </node>
          <node concept="1pnPoh" id="30" role="1_3QMm">
            <node concept="3clFbS" id="3F" role="1pnPq1">
              <node concept="3cpWs6" id="3H" role="3cqZAp">
                <node concept="2ShNRf" id="3I" role="3cqZAk">
                  <node concept="1pGfFk" id="3J" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="H0" resolve="Node_ConceptMethodCall_Constraints" />
                    <node concept="37vLTw" id="3K" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3G" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:haqgKhF" resolve="Node_ConceptMethodCall" />
            </node>
          </node>
          <node concept="1pnPoh" id="31" role="1_3QMm">
            <node concept="3clFbS" id="3L" role="1pnPq1">
              <node concept="3cpWs6" id="3N" role="3cqZAp">
                <node concept="2ShNRf" id="3O" role="3cqZAk">
                  <node concept="1pGfFk" id="3P" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Wg" resolve="SLinkAccess_Constraints" />
                    <node concept="37vLTw" id="3Q" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3M" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:gzTrEba" resolve="SLinkAccess" />
            </node>
          </node>
          <node concept="1pnPoh" id="32" role="1_3QMm">
            <node concept="3clFbS" id="3R" role="1pnPq1">
              <node concept="3cpWs6" id="3T" role="3cqZAp">
                <node concept="2ShNRf" id="3U" role="3cqZAk">
                  <node concept="1pGfFk" id="3V" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="ME" resolve="Node_IsRoleOperation_Constraints" />
                    <node concept="37vLTw" id="3W" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3S" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:gDBlSRu" resolve="Node_IsRoleOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="33" role="1_3QMm">
            <node concept="3clFbS" id="3X" role="1pnPq1">
              <node concept="3cpWs6" id="3Z" role="3cqZAp">
                <node concept="2ShNRf" id="40" role="3cqZAk">
                  <node concept="1pGfFk" id="41" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="118" resolve="SLinkListAccess_Constraints" />
                    <node concept="37vLTw" id="42" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="3Y" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
            </node>
          </node>
          <node concept="1pnPoh" id="34" role="1_3QMm">
            <node concept="3clFbS" id="43" role="1pnPq1">
              <node concept="3cpWs6" id="45" role="3cqZAp">
                <node concept="2ShNRf" id="46" role="3cqZAk">
                  <node concept="1pGfFk" id="47" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="bv" resolve="EnumMemberReference_Old_Constraints" />
                    <node concept="37vLTw" id="48" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="44" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:g$uoxbX" resolve="EnumMemberReference_Old" />
            </node>
          </node>
          <node concept="1pnPoh" id="35" role="1_3QMm">
            <node concept="3clFbS" id="49" role="1pnPq1">
              <node concept="3cpWs6" id="4b" role="3cqZAp">
                <node concept="2ShNRf" id="4c" role="3cqZAk">
                  <node concept="1pGfFk" id="4d" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="x6" resolve="LinkRefQualifier_Constraints" />
                    <node concept="37vLTw" id="4e" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4a" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:hy6LbF0" resolve="LinkRefQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="36" role="1_3QMm">
            <node concept="3clFbS" id="4f" role="1pnPq1">
              <node concept="3cpWs6" id="4h" role="3cqZAp">
                <node concept="2ShNRf" id="4i" role="3cqZAk">
                  <node concept="1pGfFk" id="4j" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="FI" resolve="NodeRefExpression_Constraints" />
                    <node concept="37vLTw" id="4k" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4g" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:hJB5_oW" resolve="NodeRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="37" role="1_3QMm">
            <node concept="3clFbS" id="4l" role="1pnPq1">
              <node concept="3cpWs6" id="4n" role="3cqZAp">
                <node concept="2ShNRf" id="4o" role="3cqZAk">
                  <node concept="1pGfFk" id="4p" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="15t" resolve="SearchScope_ContainsOperation_Constraints" />
                    <node concept="37vLTw" id="4q" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4m" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:hLjrik3" resolve="SearchScope_ContainsOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="38" role="1_3QMm">
            <node concept="3clFbS" id="4r" role="1pnPq1">
              <node concept="3cpWs6" id="4t" role="3cqZAp">
                <node concept="2ShNRf" id="4u" role="3cqZAk">
                  <node concept="1pGfFk" id="4v" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="vT" resolve="LinkRefExpression_Constraints" />
                    <node concept="37vLTw" id="4w" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4s" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:hQ8GBOl" resolve="LinkRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="39" role="1_3QMm">
            <node concept="3clFbS" id="4x" role="1pnPq1">
              <node concept="3cpWs6" id="4z" role="3cqZAp">
                <node concept="2ShNRf" id="4$" role="3cqZAk">
                  <node concept="1pGfFk" id="4_" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Ut" resolve="SEnum_MemberOperation_Old_Constraints" />
                    <node concept="37vLTw" id="4A" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4y" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:i3HdYqh" resolve="SEnum_MemberOperation_Old" />
            </node>
          </node>
          <node concept="1pnPoh" id="3a" role="1_3QMm">
            <node concept="3clFbS" id="4B" role="1pnPq1">
              <node concept="3cpWs6" id="4D" role="3cqZAp">
                <node concept="2ShNRf" id="4E" role="3cqZAk">
                  <node concept="1pGfFk" id="4F" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="RP" resolve="SEnumOperationInvocation_Constraints" />
                    <node concept="37vLTw" id="4G" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4C" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:i3HcIAb" resolve="SEnumOperationInvocation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3b" role="1_3QMm">
            <node concept="3clFbS" id="4H" role="1pnPq1">
              <node concept="3cpWs6" id="4J" role="3cqZAp">
                <node concept="2ShNRf" id="4K" role="3cqZAk">
                  <node concept="1pGfFk" id="4L" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="T3" resolve="SEnumOperation_Old_Constraints" />
                    <node concept="37vLTw" id="4M" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4I" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:i3HdMsX" resolve="SEnumOperation_Old" />
            </node>
          </node>
          <node concept="1pnPoh" id="3c" role="1_3QMm">
            <node concept="3clFbS" id="4N" role="1pnPq1">
              <node concept="3cpWs6" id="4P" role="3cqZAp">
                <node concept="2ShNRf" id="4Q" role="3cqZAk">
                  <node concept="1pGfFk" id="4R" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="77" resolve="EnumMemberOperation_Constraints" />
                    <node concept="37vLTw" id="4S" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4O" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:i3MheXj" resolve="EnumMemberOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3d" role="1_3QMm">
            <node concept="3clFbS" id="4T" role="1pnPq1">
              <node concept="3cpWs6" id="4V" role="3cqZAp">
                <node concept="2ShNRf" id="4W" role="3cqZAk">
                  <node concept="1pGfFk" id="4X" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Y9" resolve="SLinkImplicitSelect_Constraints" />
                    <node concept="37vLTw" id="4Y" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="4U" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:35Jy4LMD1lX" resolve="SLinkImplicitSelect" />
            </node>
          </node>
          <node concept="1pnPoh" id="3e" role="1_3QMm">
            <node concept="3clFbS" id="4Z" role="1pnPq1">
              <node concept="3cpWs6" id="51" role="3cqZAp">
                <node concept="2ShNRf" id="52" role="3cqZAk">
                  <node concept="1pGfFk" id="53" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="oY" resolve="IReferenceOperation_Constraints" />
                    <node concept="37vLTw" id="54" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="50" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:1lUJQtrPjRM" resolve="IReferenceOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3f" role="1_3QMm">
            <node concept="3clFbS" id="55" role="1pnPq1">
              <node concept="3cpWs6" id="57" role="3cqZAp">
                <node concept="2ShNRf" id="58" role="3cqZAk">
                  <node concept="1pGfFk" id="59" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="qv" resolve="IfInstanceOfVarReference_Constraints" />
                    <node concept="37vLTw" id="5a" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="56" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:1Cyzq4PvWDN" resolve="IfInstanceOfVarReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="3g" role="1_3QMm">
            <node concept="3clFbS" id="5b" role="1pnPq1">
              <node concept="3cpWs6" id="5d" role="3cqZAp">
                <node concept="2ShNRf" id="5e" role="3cqZAk">
                  <node concept="1pGfFk" id="5f" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="_M" resolve="NodeAttributeQualifier_Constraints" />
                    <node concept="37vLTw" id="5g" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5c" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:5zEkxuKhrAP" resolve="NodeAttributeQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3h" role="1_3QMm">
            <node concept="3clFbS" id="5h" role="1pnPq1">
              <node concept="3cpWs6" id="5j" role="3cqZAp">
                <node concept="2ShNRf" id="5k" role="3cqZAk">
                  <node concept="1pGfFk" id="5l" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="rQ" resolve="LinkAttributeQualifier_Constraints" />
                    <node concept="37vLTw" id="5m" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5i" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:5zEkxuKhrAR" resolve="LinkAttributeQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3i" role="1_3QMm">
            <node concept="3clFbS" id="5n" role="1pnPq1">
              <node concept="3cpWs6" id="5p" role="3cqZAp">
                <node concept="2ShNRf" id="5q" role="3cqZAk">
                  <node concept="1pGfFk" id="5r" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="NV" resolve="PropertyAttributeQualifier_Constraints" />
                    <node concept="37vLTw" id="5s" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5o" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:5zEkxuKhsAT" resolve="PropertyAttributeQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3j" role="1_3QMm">
            <node concept="3clFbS" id="5t" role="1pnPq1">
              <node concept="3cpWs6" id="5v" role="3cqZAp">
                <node concept="2ShNRf" id="5w" role="3cqZAk">
                  <node concept="1pGfFk" id="5x" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Qy" resolve="PropertyQualifier_Constraints" />
                    <node concept="37vLTw" id="5y" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5u" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:2qM$EmJLWMH" resolve="PropertyQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3k" role="1_3QMm">
            <node concept="3clFbS" id="5z" role="1pnPq1">
              <node concept="3cpWs6" id="5_" role="3cqZAp">
                <node concept="2ShNRf" id="5A" role="3cqZAk">
                  <node concept="1pGfFk" id="5B" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="ut" resolve="LinkQualifier_Constraints" />
                    <node concept="37vLTw" id="5C" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5$" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:2qM$EmJLWMG" resolve="LinkQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3l" role="1_3QMm">
            <node concept="3clFbS" id="5D" role="1pnPq1">
              <node concept="3cpWs6" id="5F" role="3cqZAp">
                <node concept="2ShNRf" id="5G" role="3cqZAk">
                  <node concept="1pGfFk" id="5H" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="$K" resolve="ModuleReferenceExpression_Constraints" />
                    <node concept="37vLTw" id="5I" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5E" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:3wj3sjzQPFL" resolve="ModuleReferenceExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3m" role="1_3QMm">
            <node concept="3clFbS" id="5J" role="1pnPq1">
              <node concept="3cpWs6" id="5L" role="3cqZAp">
                <node concept="2ShNRf" id="5M" role="3cqZAk">
                  <node concept="1pGfFk" id="5N" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="$v" resolve="ModelReferenceExpression_Constraints" />
                    <node concept="37vLTw" id="5O" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5K" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:v3WHCwUiHy" resolve="ModelReferenceExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3n" role="1_3QMm">
            <node concept="3clFbS" id="5P" role="1pnPq1">
              <node concept="3cpWs6" id="5R" role="3cqZAp">
                <node concept="2ShNRf" id="5S" role="3cqZAk">
                  <node concept="1pGfFk" id="5T" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Bc" resolve="NodePointerExpression_Old_Constraints" />
                    <node concept="37vLTw" id="5U" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5Q" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:1_vO5tEMrH9" resolve="NodePointerExpression_Old" />
            </node>
          </node>
          <node concept="1pnPoh" id="3o" role="1_3QMm">
            <node concept="3clFbS" id="5V" role="1pnPq1">
              <node concept="3cpWs6" id="5X" role="3cqZAp">
                <node concept="2ShNRf" id="5Y" role="3cqZAk">
                  <node concept="1pGfFk" id="5Z" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="dm" resolve="EnumMemberValueRefExpression_Constraints" />
                    <node concept="37vLTw" id="60" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="5W" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:637Y3IJQ3Hr" resolve="EnumMemberValueRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3p" role="1_3QMm">
            <node concept="3clFbS" id="61" role="1pnPq1">
              <node concept="3cpWs6" id="63" role="3cqZAp">
                <node concept="2ShNRf" id="64" role="3cqZAk">
                  <node concept="1pGfFk" id="65" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="1t" resolve="ChildNodeRefExpression_Constraints" />
                    <node concept="37vLTw" id="66" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="62" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:xbFM377SDT" resolve="ChildNodeRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3q" role="1_3QMm">
            <node concept="3clFbS" id="67" role="1pnPq1">
              <node concept="3cpWs6" id="69" role="3cqZAp">
                <node concept="2ShNRf" id="6a" role="3cqZAk">
                  <node concept="1pGfFk" id="6b" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="tg" resolve="LinkIdRefExpression_Constraints" />
                    <node concept="37vLTw" id="6c" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="68" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:2iMJRNx_nol" resolve="LinkIdRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3r" role="1_3QMm">
            <node concept="3clFbS" id="6d" role="1pnPq1">
              <node concept="3cpWs6" id="6f" role="3cqZAp">
                <node concept="2ShNRf" id="6g" role="3cqZAk">
                  <node concept="1pGfFk" id="6h" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Pl" resolve="PropertyIdRefExpression_Constraints" />
                    <node concept="37vLTw" id="6i" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6e" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:2iMJRNxD2Yw" resolve="PropertyIdRefExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3s" role="1_3QMm">
            <node concept="3clFbS" id="6j" role="1pnPq1">
              <node concept="3cpWs6" id="6l" role="3cqZAp">
                <node concept="2ShNRf" id="6m" role="3cqZAk">
                  <node concept="1pGfFk" id="6n" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3" resolve="ChildAttributeQualifier_Constraints" />
                    <node concept="37vLTw" id="6o" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6k" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:BpxLfMiwTr" resolve="ChildAttributeQualifier" />
            </node>
          </node>
          <node concept="1pnPoh" id="3t" role="1_3QMm">
            <node concept="3clFbS" id="6p" role="1pnPq1">
              <node concept="3cpWs6" id="6r" role="3cqZAp">
                <node concept="2ShNRf" id="6s" role="3cqZAk">
                  <node concept="1pGfFk" id="6t" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="yL" resolve="ModelPointer_ResolveOperation_Constraints" />
                    <node concept="37vLTw" id="6u" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6q" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:3xFa6mqMw9a" resolve="ModelPointer_ResolveOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3u" role="1_3QMm">
            <node concept="3clFbS" id="6v" role="1pnPq1">
              <node concept="3cpWs6" id="6x" role="3cqZAp">
                <node concept="2ShNRf" id="6y" role="3cqZAk">
                  <node concept="1pGfFk" id="6z" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="E0" resolve="NodePointer_ResolveOperation_Constraints" />
                    <node concept="37vLTw" id="6$" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6w" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:3ayRDg9aLzO" resolve="NodePointer_ResolveOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3v" role="1_3QMm">
            <node concept="3clFbS" id="6_" role="1pnPq1">
              <node concept="3cpWs6" id="6B" role="3cqZAp">
                <node concept="2ShNRf" id="6C" role="3cqZAk">
                  <node concept="1pGfFk" id="6D" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="Cv" resolve="NodePointer_GetModelOperation_Constraints" />
                    <node concept="37vLTw" id="6E" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6A" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:5kLyeZleWQw" resolve="NodePointer_GetModelOperation" />
            </node>
          </node>
          <node concept="1pnPoh" id="3w" role="1_3QMm">
            <node concept="3clFbS" id="6F" role="1pnPq1">
              <node concept="3cpWs6" id="6H" role="3cqZAp">
                <node concept="2ShNRf" id="6I" role="3cqZAk">
                  <node concept="1pGfFk" id="6J" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="8L" resolve="EnumMemberReference_Constraints" />
                    <node concept="37vLTw" id="6K" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6G" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:45eRmv04iIh" resolve="EnumMemberReference" />
            </node>
          </node>
          <node concept="1pnPoh" id="3x" role="1_3QMm">
            <node concept="3clFbS" id="6L" role="1pnPq1">
              <node concept="3cpWs6" id="6N" role="3cqZAp">
                <node concept="2ShNRf" id="6O" role="3cqZAk">
                  <node concept="1pGfFk" id="6P" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="iC" resolve="Enum_MemberLiteral_Constraints" />
                    <node concept="37vLTw" id="6Q" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6M" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:1HbIxIw0iPw" resolve="Enum_MemberLiteral" />
            </node>
          </node>
          <node concept="1pnPoh" id="3y" role="1_3QMm">
            <node concept="3clFbS" id="6R" role="1pnPq1">
              <node concept="3cpWs6" id="6T" role="3cqZAp">
                <node concept="2ShNRf" id="6U" role="3cqZAk">
                  <node concept="1pGfFk" id="6V" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="gt" resolve="EnumSwitchExpression_Constraints" />
                    <node concept="37vLTw" id="6W" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6S" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:28aPEVv7nnv" resolve="EnumSwitchExpression" />
            </node>
          </node>
          <node concept="1pnPoh" id="3z" role="1_3QMm">
            <node concept="3clFbS" id="6X" role="1pnPq1">
              <node concept="3cpWs6" id="6Z" role="3cqZAp">
                <node concept="2ShNRf" id="70" role="3cqZAk">
                  <node concept="1pGfFk" id="71" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="eY" resolve="EnumOperation_Constraints" />
                    <node concept="37vLTw" id="72" role="37wK5m">
                      <ref role="3cqZAo" node="2Q" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3gn64h" id="6Y" role="1pnPq6">
              <ref role="3gnhBz" to="tp25:1HbIxIw0iNP" resolve="EnumOperation" />
            </node>
          </node>
          <node concept="3clFbS" id="3$" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="2X" role="3cqZAp">
          <node concept="10Nm6u" id="73" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="74">
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumMemberOperation_Constraints" />
    <uo k="s:originTrace" v="n:1241016231436" />
    <node concept="3Tm1VV" id="75" role="1B3o_S">
      <uo k="s:originTrace" v="n:1241016231436" />
    </node>
    <node concept="3uibUv" id="76" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1241016231436" />
    </node>
    <node concept="3clFbW" id="77" role="jymVt">
      <uo k="s:originTrace" v="n:1241016231436" />
      <node concept="37vLTG" id="7a" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="3uibUv" id="7d" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1241016231436" />
        </node>
      </node>
      <node concept="3cqZAl" id="7b" role="3clF45">
        <uo k="s:originTrace" v="n:1241016231436" />
      </node>
      <node concept="3clFbS" id="7c" role="3clF47">
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="XkiVB" id="7e" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1241016231436" />
          <node concept="1BaE9c" id="7g" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumMemberOperation$q5" />
            <uo k="s:originTrace" v="n:1241016231436" />
            <node concept="2YIFZM" id="7i" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:1241016231436" />
              <node concept="11gdke" id="7j" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1241016231436" />
              </node>
              <node concept="11gdke" id="7k" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1241016231436" />
              </node>
              <node concept="11gdke" id="7l" role="37wK5m">
                <property role="11gdj1" value="120f244ef53L" />
                <uo k="s:originTrace" v="n:1241016231436" />
              </node>
              <node concept="Xl_RD" id="7m" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumMemberOperation" />
                <uo k="s:originTrace" v="n:1241016231436" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7h" role="37wK5m">
            <ref role="3cqZAo" node="7a" resolve="initContext" />
            <uo k="s:originTrace" v="n:1241016231436" />
          </node>
        </node>
        <node concept="3clFbF" id="7f" role="3cqZAp">
          <uo k="s:originTrace" v="n:1241016231436" />
          <node concept="1rXfSq" id="7n" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1241016231436" />
            <node concept="2ShNRf" id="7o" role="37wK5m">
              <uo k="s:originTrace" v="n:1241016231436" />
              <node concept="YeOm9" id="7p" role="2ShVmc">
                <uo k="s:originTrace" v="n:1241016231436" />
                <node concept="1Y3b0j" id="7q" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1241016231436" />
                  <node concept="3Tm1VV" id="7r" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1241016231436" />
                  </node>
                  <node concept="3clFb_" id="7s" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1241016231436" />
                    <node concept="3Tm1VV" id="7v" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1241016231436" />
                    </node>
                    <node concept="2AHcQZ" id="7w" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1241016231436" />
                    </node>
                    <node concept="3uibUv" id="7x" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1241016231436" />
                    </node>
                    <node concept="37vLTG" id="7y" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1241016231436" />
                      <node concept="3uibUv" id="7_" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                      <node concept="2AHcQZ" id="7A" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="7z" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1241016231436" />
                      <node concept="3uibUv" id="7B" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                      <node concept="2AHcQZ" id="7C" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7$" role="3clF47">
                      <uo k="s:originTrace" v="n:1241016231436" />
                      <node concept="3cpWs8" id="7D" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1241016231436" />
                        <node concept="3cpWsn" id="7I" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1241016231436" />
                          <node concept="10P_77" id="7J" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1241016231436" />
                          </node>
                          <node concept="1rXfSq" id="7K" role="33vP2m">
                            <ref role="37wK5l" node="79" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1241016231436" />
                            <node concept="2OqwBi" id="7L" role="37wK5m">
                              <uo k="s:originTrace" v="n:1241016231436" />
                              <node concept="37vLTw" id="7P" role="2Oq$k0">
                                <ref role="3cqZAo" node="7y" resolve="context" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                              <node concept="liA8E" id="7Q" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7M" role="37wK5m">
                              <uo k="s:originTrace" v="n:1241016231436" />
                              <node concept="37vLTw" id="7R" role="2Oq$k0">
                                <ref role="3cqZAo" node="7y" resolve="context" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                              <node concept="liA8E" id="7S" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7N" role="37wK5m">
                              <uo k="s:originTrace" v="n:1241016231436" />
                              <node concept="37vLTw" id="7T" role="2Oq$k0">
                                <ref role="3cqZAo" node="7y" resolve="context" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                              <node concept="liA8E" id="7U" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7O" role="37wK5m">
                              <uo k="s:originTrace" v="n:1241016231436" />
                              <node concept="37vLTw" id="7V" role="2Oq$k0">
                                <ref role="3cqZAo" node="7y" resolve="context" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                              <node concept="liA8E" id="7W" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7E" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                      <node concept="3clFbJ" id="7F" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1241016231436" />
                        <node concept="3clFbS" id="7X" role="3clFbx">
                          <uo k="s:originTrace" v="n:1241016231436" />
                          <node concept="3clFbF" id="7Z" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1241016231436" />
                            <node concept="2OqwBi" id="80" role="3clFbG">
                              <uo k="s:originTrace" v="n:1241016231436" />
                              <node concept="37vLTw" id="81" role="2Oq$k0">
                                <ref role="3cqZAo" node="7z" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                              </node>
                              <node concept="liA8E" id="82" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1241016231436" />
                                <node concept="1dyn4i" id="83" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1241016231436" />
                                  <node concept="2ShNRf" id="84" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1241016231436" />
                                    <node concept="1pGfFk" id="85" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1241016231436" />
                                      <node concept="Xl_RD" id="86" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:1241016231436" />
                                      </node>
                                      <node concept="Xl_RD" id="87" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536563497" />
                                        <uo k="s:originTrace" v="n:1241016231436" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="7Y" role="3clFbw">
                          <uo k="s:originTrace" v="n:1241016231436" />
                          <node concept="3y3z36" id="88" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1241016231436" />
                            <node concept="10Nm6u" id="8a" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1241016231436" />
                            </node>
                            <node concept="37vLTw" id="8b" role="3uHU7B">
                              <ref role="3cqZAo" node="7z" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1241016231436" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="89" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1241016231436" />
                            <node concept="37vLTw" id="8c" role="3fr31v">
                              <ref role="3cqZAo" node="7I" resolve="result" />
                              <uo k="s:originTrace" v="n:1241016231436" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7G" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1241016231436" />
                      </node>
                      <node concept="3clFbF" id="7H" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1241016231436" />
                        <node concept="37vLTw" id="8d" role="3clFbG">
                          <ref role="3cqZAo" node="7I" resolve="result" />
                          <uo k="s:originTrace" v="n:1241016231436" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="7t" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1241016231436" />
                  </node>
                  <node concept="3uibUv" id="7u" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1241016231436" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78" role="jymVt">
      <uo k="s:originTrace" v="n:1241016231436" />
    </node>
    <node concept="2YIFZL" id="79" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1241016231436" />
      <node concept="10P_77" id="8e" role="3clF45">
        <uo k="s:originTrace" v="n:1241016231436" />
      </node>
      <node concept="3Tm6S6" id="8f" role="1B3o_S">
        <uo k="s:originTrace" v="n:1241016231436" />
      </node>
      <node concept="3clFbS" id="8g" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536563498" />
        <node concept="3clFbJ" id="8l" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563499" />
          <node concept="3clFbS" id="8n" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536563500" />
            <node concept="3cpWs6" id="8p" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536563501" />
              <node concept="3clFbT" id="8q" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:1227128029536563502" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="8o" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536563503" />
            <node concept="2OqwBi" id="8r" role="3fr31v">
              <uo k="s:originTrace" v="n:1227128029536563504" />
              <node concept="37vLTw" id="8s" role="2Oq$k0">
                <ref role="3cqZAo" node="8i" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536563505" />
              </node>
              <node concept="1mIQ4w" id="8t" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536563506" />
                <node concept="chp4Y" id="8u" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  <uo k="s:originTrace" v="n:1227128029536563507" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="8m" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563508" />
          <node concept="3y3z36" id="8v" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536563509" />
            <node concept="10Nm6u" id="8w" role="3uHU7w">
              <uo k="s:originTrace" v="n:1227128029536563510" />
            </node>
            <node concept="1UdQGJ" id="8x" role="3uHU7B">
              <uo k="s:originTrace" v="n:1227128029536563511" />
              <node concept="2OqwBi" id="8y" role="1Ub_4B">
                <uo k="s:originTrace" v="n:1227128029536563512" />
                <node concept="2OqwBi" id="8$" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536563513" />
                  <node concept="1PxgMI" id="8A" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:1227128029536563514" />
                    <node concept="37vLTw" id="8C" role="1m5AlR">
                      <ref role="3cqZAo" node="8i" resolve="parentNode" />
                      <uo k="s:originTrace" v="n:1227128029536563515" />
                    </node>
                    <node concept="chp4Y" id="8D" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <uo k="s:originTrace" v="n:1227128029536563516" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="8B" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:1227128029536563517" />
                  </node>
                </node>
                <node concept="3JvlWi" id="8_" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536563518" />
                </node>
              </node>
              <node concept="1YaCAy" id="8z" role="1Ub_4A">
                <property role="TrG5h" value="v" />
                <ref role="1YaFvo" to="tp25:i2ZThgx" resolve="SEnumerationMemberType" />
                <uo k="s:originTrace" v="n:1227128029536563519" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="8h" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="3uibUv" id="8E" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1241016231436" />
        </node>
      </node>
      <node concept="37vLTG" id="8i" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="3uibUv" id="8F" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1241016231436" />
        </node>
      </node>
      <node concept="37vLTG" id="8j" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="3uibUv" id="8G" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1241016231436" />
        </node>
      </node>
      <node concept="37vLTG" id="8k" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1241016231436" />
        <node concept="3uibUv" id="8H" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1241016231436" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="8I">
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumMemberReference_Constraints" />
    <uo k="s:originTrace" v="n:4705942098322467901" />
    <node concept="3Tm1VV" id="8J" role="1B3o_S">
      <uo k="s:originTrace" v="n:4705942098322467901" />
    </node>
    <node concept="3uibUv" id="8K" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4705942098322467901" />
    </node>
    <node concept="3clFbW" id="8L" role="jymVt">
      <uo k="s:originTrace" v="n:4705942098322467901" />
      <node concept="37vLTG" id="8O" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4705942098322467901" />
        <node concept="3uibUv" id="8R" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
      </node>
      <node concept="3cqZAl" id="8P" role="3clF45">
        <uo k="s:originTrace" v="n:4705942098322467901" />
      </node>
      <node concept="3clFbS" id="8Q" role="3clF47">
        <uo k="s:originTrace" v="n:4705942098322467901" />
        <node concept="XkiVB" id="8S" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
          <node concept="1BaE9c" id="8U" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumMemberReference$b5" />
            <uo k="s:originTrace" v="n:4705942098322467901" />
            <node concept="2YIFZM" id="8W" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4705942098322467901" />
              <node concept="11gdke" id="8X" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
              </node>
              <node concept="11gdke" id="8Y" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
              </node>
              <node concept="11gdke" id="8Z" role="37wK5m">
                <property role="11gdj1" value="414edd67c0112b91L" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
              </node>
              <node concept="Xl_RD" id="90" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumMemberReference" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="8V" role="37wK5m">
            <ref role="3cqZAo" node="8O" resolve="initContext" />
            <uo k="s:originTrace" v="n:4705942098322467901" />
          </node>
        </node>
        <node concept="3clFbF" id="8T" role="3cqZAp">
          <uo k="s:originTrace" v="n:4705942098322467901" />
          <node concept="1rXfSq" id="91" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4705942098322467901" />
            <node concept="2ShNRf" id="92" role="37wK5m">
              <uo k="s:originTrace" v="n:4705942098322467901" />
              <node concept="1pGfFk" id="93" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="95" resolve="EnumMemberReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
                <node concept="Xjq3P" id="94" role="37wK5m">
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="8M" role="jymVt">
      <uo k="s:originTrace" v="n:4705942098322467901" />
    </node>
    <node concept="312cEu" id="8N" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:4705942098322467901" />
      <node concept="3clFbW" id="95" role="jymVt">
        <uo k="s:originTrace" v="n:4705942098322467901" />
        <node concept="37vLTG" id="98" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
          <node concept="3uibUv" id="9b" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4705942098322467901" />
          </node>
        </node>
        <node concept="3cqZAl" id="99" role="3clF45">
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
        <node concept="3clFbS" id="9a" role="3clF47">
          <uo k="s:originTrace" v="n:4705942098322467901" />
          <node concept="XkiVB" id="9c" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4705942098322467901" />
            <node concept="1BaE9c" id="9d" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="decl$$49r" />
              <uo k="s:originTrace" v="n:4705942098322467901" />
              <node concept="2YIFZM" id="9h" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4705942098322467901" />
                <node concept="11gdke" id="9i" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
                <node concept="11gdke" id="9j" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
                <node concept="11gdke" id="9k" role="37wK5m">
                  <property role="11gdj1" value="414edd67c0112b91L" />
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
                <node concept="11gdke" id="9l" role="37wK5m">
                  <property role="11gdj1" value="414edd67c0112b98L" />
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
                <node concept="Xl_RD" id="9m" role="37wK5m">
                  <property role="Xl_RC" value="decl" />
                  <uo k="s:originTrace" v="n:4705942098322467901" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="9e" role="37wK5m">
              <ref role="3cqZAo" node="98" resolve="container" />
              <uo k="s:originTrace" v="n:4705942098322467901" />
            </node>
            <node concept="3clFbT" id="9f" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4705942098322467901" />
            </node>
            <node concept="3clFbT" id="9g" role="37wK5m">
              <uo k="s:originTrace" v="n:4705942098322467901" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="96" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4705942098322467901" />
        <node concept="3Tm1VV" id="9n" role="1B3o_S">
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
        <node concept="3uibUv" id="9o" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
        <node concept="2AHcQZ" id="9p" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
        <node concept="3clFbS" id="9q" role="3clF47">
          <uo k="s:originTrace" v="n:4705942098322467901" />
          <node concept="3cpWs6" id="9s" role="3cqZAp">
            <uo k="s:originTrace" v="n:4705942098322467901" />
            <node concept="2ShNRf" id="9t" role="3cqZAk">
              <uo k="s:originTrace" v="n:4705942098322469218" />
              <node concept="YeOm9" id="9u" role="2ShVmc">
                <uo k="s:originTrace" v="n:4705942098322469218" />
                <node concept="1Y3b0j" id="9v" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:4705942098322469218" />
                  <node concept="3Tm1VV" id="9w" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4705942098322469218" />
                  </node>
                  <node concept="3clFb_" id="9x" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:4705942098322469218" />
                    <node concept="3Tm1VV" id="9z" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                    <node concept="3uibUv" id="9$" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                    <node concept="3clFbS" id="9_" role="3clF47">
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                      <node concept="3cpWs6" id="9B" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4705942098322469218" />
                        <node concept="2ShNRf" id="9C" role="3cqZAk">
                          <uo k="s:originTrace" v="n:4705942098322469218" />
                          <node concept="1pGfFk" id="9D" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:4705942098322469218" />
                            <node concept="Xl_RD" id="9E" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:4705942098322469218" />
                            </node>
                            <node concept="Xl_RD" id="9F" role="37wK5m">
                              <property role="Xl_RC" value="4705942098322469218" />
                              <uo k="s:originTrace" v="n:4705942098322469218" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9A" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="9y" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:4705942098322469218" />
                    <node concept="3Tm1VV" id="9G" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                    <node concept="3uibUv" id="9H" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                    <node concept="37vLTG" id="9I" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                      <node concept="3uibUv" id="9L" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:4705942098322469218" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="9J" role="3clF47">
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                      <node concept="3cpWs8" id="9M" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4705942098322469412" />
                        <node concept="3cpWsn" id="9R" role="3cpWs9">
                          <property role="TrG5h" value="container" />
                          <uo k="s:originTrace" v="n:4705942098322469415" />
                          <node concept="3Tqbb2" id="9S" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4705942098322469411" />
                          </node>
                          <node concept="3K4zz7" id="9T" role="33vP2m">
                            <uo k="s:originTrace" v="n:4705942098322473517" />
                            <node concept="2OqwBi" id="9U" role="3K4E3e">
                              <uo k="s:originTrace" v="n:4705942098322474311" />
                              <node concept="1DoJHT" id="9X" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:4705942098322473744" />
                                <node concept="3uibUv" id="9Z" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="a0" role="1EMhIo">
                                  <ref role="3cqZAo" node="9I" resolve="_context" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="9Y" role="2OqNvi">
                                <uo k="s:originTrace" v="n:4705942098322475404" />
                              </node>
                            </node>
                            <node concept="1DoJHT" id="9V" role="3K4GZi">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:4705942098322475631" />
                              <node concept="3uibUv" id="a1" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="a2" role="1EMhIo">
                                <ref role="3cqZAo" node="9I" resolve="_context" />
                              </node>
                            </node>
                            <node concept="3y3z36" id="9W" role="3K4Cdx">
                              <uo k="s:originTrace" v="n:4705942098322472651" />
                              <node concept="10Nm6u" id="a3" role="3uHU7w">
                                <uo k="s:originTrace" v="n:4705942098322473081" />
                              </node>
                              <node concept="1DoJHT" id="a4" role="3uHU7B">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:4705942098322471838" />
                                <node concept="3uibUv" id="a5" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="a6" role="1EMhIo">
                                  <ref role="3cqZAo" node="9I" resolve="_context" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="9N" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993616595771" />
                        <node concept="3cpWsn" id="a7" role="3cpWs9">
                          <property role="TrG5h" value="enumDelcaration" />
                          <uo k="s:originTrace" v="n:2453008993616595774" />
                          <node concept="3Tqbb2" id="a8" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                            <uo k="s:originTrace" v="n:2453008993616595769" />
                          </node>
                          <node concept="10Nm6u" id="a9" role="33vP2m">
                            <uo k="s:originTrace" v="n:2453008993616608370" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="9O" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4705942098322476129" />
                        <node concept="3clFbS" id="aa" role="3clFbx">
                          <uo k="s:originTrace" v="n:4705942098322476131" />
                          <node concept="3clFbF" id="af" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2453008993616617499" />
                            <node concept="37vLTI" id="ag" role="3clFbG">
                              <uo k="s:originTrace" v="n:2453008993616620529" />
                              <node concept="37vLTw" id="ah" role="37vLTJ">
                                <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                                <uo k="s:originTrace" v="n:2453008993616617497" />
                              </node>
                              <node concept="1PxgMI" id="ai" role="37vLTx">
                                <property role="1BlNFB" value="true" />
                                <uo k="s:originTrace" v="n:4705942098322584251" />
                                <node concept="chp4Y" id="aj" role="3oSUPX">
                                  <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                                  <uo k="s:originTrace" v="n:4705942098322585495" />
                                </node>
                                <node concept="2OqwBi" id="ak" role="1m5AlR">
                                  <uo k="s:originTrace" v="n:4705942098322528835" />
                                  <node concept="2OqwBi" id="al" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:4705942098322503801" />
                                    <node concept="1PxgMI" id="an" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <uo k="s:originTrace" v="n:4705942098322501920" />
                                      <node concept="chp4Y" id="ap" role="3oSUPX">
                                        <ref role="cht4Q" to="tp25:gzTrcDJ" resolve="SPropertyAccess" />
                                        <uo k="s:originTrace" v="n:4705942098322502773" />
                                      </node>
                                      <node concept="2OqwBi" id="aq" role="1m5AlR">
                                        <uo k="s:originTrace" v="n:4705942098322493645" />
                                        <node concept="1PxgMI" id="ar" role="2Oq$k0">
                                          <uo k="s:originTrace" v="n:4705942098322491892" />
                                          <node concept="chp4Y" id="at" role="3oSUPX">
                                            <ref role="cht4Q" to="tp25:g$tyxPj" resolve="Property_SetOperation" />
                                            <uo k="s:originTrace" v="n:4705942098322492442" />
                                          </node>
                                          <node concept="37vLTw" id="au" role="1m5AlR">
                                            <ref role="3cqZAo" node="9R" resolve="container" />
                                            <uo k="s:originTrace" v="n:4705942098322488537" />
                                          </node>
                                        </node>
                                        <node concept="3zqWPK" id="as" role="2OqNvi">
                                          <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                                          <uo k="s:originTrace" v="n:8085146484218858005" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="ao" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:gzTsBJd" resolve="property" />
                                      <uo k="s:originTrace" v="n:4705942098322505381" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="am" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                    <uo k="s:originTrace" v="n:4705942098322553830" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="ab" role="3clFbw">
                          <uo k="s:originTrace" v="n:4705942098322477151" />
                          <node concept="37vLTw" id="av" role="2Oq$k0">
                            <ref role="3cqZAo" node="9R" resolve="container" />
                            <uo k="s:originTrace" v="n:4705942098322476404" />
                          </node>
                          <node concept="1mIQ4w" id="aw" role="2OqNvi">
                            <uo k="s:originTrace" v="n:4705942098322484508" />
                            <node concept="chp4Y" id="ax" role="cj9EA">
                              <ref role="cht4Q" to="tp25:g$tyxPj" resolve="Property_SetOperation" />
                              <uo k="s:originTrace" v="n:4705942098322484864" />
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="ac" role="3eNLev">
                          <uo k="s:originTrace" v="n:2453008993616628362" />
                          <node concept="3clFbS" id="ay" role="3eOfB_">
                            <uo k="s:originTrace" v="n:2453008993616628364" />
                            <node concept="3clFbF" id="a$" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2453008993616637647" />
                              <node concept="37vLTI" id="a_" role="3clFbG">
                                <uo k="s:originTrace" v="n:2453008993616640623" />
                                <node concept="37vLTw" id="aA" role="37vLTJ">
                                  <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                                  <uo k="s:originTrace" v="n:2453008993616637646" />
                                </node>
                                <node concept="2OqwBi" id="aB" role="37vLTx">
                                  <uo k="s:originTrace" v="n:4705942098322972077" />
                                  <node concept="1PxgMI" id="aC" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:4705942098322968640" />
                                    <node concept="chp4Y" id="aE" role="3oSUPX">
                                      <ref role="cht4Q" to="tp25:45eRmv04Pqk" resolve="EnumMember_IsOperation" />
                                      <uo k="s:originTrace" v="n:4705942098322970032" />
                                    </node>
                                    <node concept="37vLTw" id="aF" role="1m5AlR">
                                      <ref role="3cqZAo" node="9R" resolve="container" />
                                      <uo k="s:originTrace" v="n:4705942098322966752" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="aD" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:45eRmv04ROr" resolve="getEnumDecl" />
                                    <uo k="s:originTrace" v="n:8085146484218858007" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="az" role="3eO9$A">
                            <uo k="s:originTrace" v="n:4705942098322607067" />
                            <node concept="37vLTw" id="aG" role="2Oq$k0">
                              <ref role="3cqZAo" node="9R" resolve="container" />
                              <uo k="s:originTrace" v="n:4705942098322605376" />
                            </node>
                            <node concept="1mIQ4w" id="aH" role="2OqNvi">
                              <uo k="s:originTrace" v="n:4705942098322608609" />
                              <node concept="chp4Y" id="aI" role="cj9EA">
                                <ref role="cht4Q" to="tp25:45eRmv04Pqk" resolve="EnumMember_IsOperation" />
                                <uo k="s:originTrace" v="n:4705942098322961458" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="ad" role="3eNLev">
                          <uo k="s:originTrace" v="n:2453008993616647830" />
                          <node concept="3clFbS" id="aJ" role="3eOfB_">
                            <uo k="s:originTrace" v="n:2453008993616647832" />
                            <node concept="3clFbF" id="aL" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2453008993616652199" />
                              <node concept="37vLTI" id="aM" role="3clFbG">
                                <uo k="s:originTrace" v="n:2453008993616655060" />
                                <node concept="37vLTw" id="aN" role="37vLTJ">
                                  <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                                  <uo k="s:originTrace" v="n:2453008993616652198" />
                                </node>
                                <node concept="2OqwBi" id="aO" role="37vLTx">
                                  <uo k="s:originTrace" v="n:2453008993612682222" />
                                  <node concept="1PxgMI" id="aP" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <uo k="s:originTrace" v="n:2453008993616690263" />
                                    <node concept="chp4Y" id="aR" role="3oSUPX">
                                      <ref role="cht4Q" to="tp25:28aPEVv7nnv" resolve="EnumSwitchExpression" />
                                      <uo k="s:originTrace" v="n:3355805929464983945" />
                                    </node>
                                    <node concept="2OqwBi" id="aS" role="1m5AlR">
                                      <uo k="s:originTrace" v="n:2453008993616668694" />
                                      <node concept="37vLTw" id="aT" role="2Oq$k0">
                                        <ref role="3cqZAo" node="9R" resolve="container" />
                                        <uo k="s:originTrace" v="n:2453008993612588186" />
                                      </node>
                                      <node concept="1mfA1w" id="aU" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:2453008993616678855" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="aQ" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:28aPEVv7w3k" resolve="getEnumDecl" />
                                    <uo k="s:originTrace" v="n:8085146484218858009" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="aK" role="3eO9$A">
                            <uo k="s:originTrace" v="n:2453008993612567752" />
                            <node concept="37vLTw" id="aV" role="2Oq$k0">
                              <ref role="3cqZAo" node="9R" resolve="container" />
                              <uo k="s:originTrace" v="n:2453008993612565418" />
                            </node>
                            <node concept="1mIQ4w" id="aW" role="2OqNvi">
                              <uo k="s:originTrace" v="n:2453008993612576096" />
                              <node concept="chp4Y" id="aX" role="cj9EA">
                                <ref role="cht4Q" to="tp25:28aPEVv7nnz" resolve="EnumSwitchCase" />
                                <uo k="s:originTrace" v="n:2453008993612577942" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="ae" role="3eNLev">
                          <uo k="s:originTrace" v="n:2453008993616697633" />
                          <node concept="2OqwBi" id="aY" role="3eO9$A">
                            <uo k="s:originTrace" v="n:2453008993616702849" />
                            <node concept="37vLTw" id="b0" role="2Oq$k0">
                              <ref role="3cqZAo" node="9R" resolve="container" />
                              <uo k="s:originTrace" v="n:2453008993616700022" />
                            </node>
                            <node concept="1mIQ4w" id="b1" role="2OqNvi">
                              <uo k="s:originTrace" v="n:2453008993616711686" />
                              <node concept="chp4Y" id="b2" role="cj9EA">
                                <ref role="cht4Q" to="tp25:28aPEVv7nnv" resolve="EnumSwitchExpression" />
                                <uo k="s:originTrace" v="n:2453008993616714025" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="aZ" role="3eOfB_">
                            <uo k="s:originTrace" v="n:2453008993616697635" />
                            <node concept="3SKdUt" id="b3" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2407637667685844053" />
                              <node concept="1PaTwC" id="b5" role="1aUNEU">
                                <uo k="s:originTrace" v="n:2386398653325424160" />
                                <node concept="3oM_SD" id="b6" role="1PaTwD">
                                  <property role="3oM_SC" value="to" />
                                  <uo k="s:originTrace" v="n:2386398653325424161" />
                                </node>
                                <node concept="3oM_SD" id="b7" role="1PaTwD">
                                  <property role="3oM_SC" value="make" />
                                  <uo k="s:originTrace" v="n:2386398653325424162" />
                                </node>
                                <node concept="3oM_SD" id="b8" role="1PaTwD">
                                  <property role="3oM_SC" value="completion" />
                                  <uo k="s:originTrace" v="n:2386398653325424163" />
                                </node>
                                <node concept="3oM_SD" id="b9" role="1PaTwD">
                                  <property role="3oM_SC" value="works" />
                                  <uo k="s:originTrace" v="n:2386398653325424164" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="b4" role="3cqZAp">
                              <uo k="s:originTrace" v="n:2453008993616721698" />
                              <node concept="37vLTI" id="ba" role="3clFbG">
                                <uo k="s:originTrace" v="n:2453008993616721700" />
                                <node concept="37vLTw" id="bb" role="37vLTJ">
                                  <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                                  <uo k="s:originTrace" v="n:2453008993616721701" />
                                </node>
                                <node concept="2OqwBi" id="bc" role="37vLTx">
                                  <uo k="s:originTrace" v="n:2453008993616721702" />
                                  <node concept="1PxgMI" id="bd" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:2453008993616721703" />
                                    <node concept="chp4Y" id="bf" role="3oSUPX">
                                      <ref role="cht4Q" to="tp25:28aPEVv7nnv" resolve="EnumSwitchExpression" />
                                      <uo k="s:originTrace" v="n:2453008993616721704" />
                                    </node>
                                    <node concept="37vLTw" id="bg" role="1m5AlR">
                                      <ref role="3cqZAo" node="9R" resolve="container" />
                                      <uo k="s:originTrace" v="n:2453008993616721706" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="be" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:28aPEVv7w3k" resolve="getEnumDecl" />
                                    <uo k="s:originTrace" v="n:8085146484218858011" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="9P" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993612563458" />
                        <node concept="3clFbS" id="bh" role="3clFbx">
                          <uo k="s:originTrace" v="n:2453008993612563460" />
                          <node concept="3cpWs6" id="bj" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2453008993612676163" />
                            <node concept="2YIFZM" id="bk" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:2453008993612690057" />
                              <node concept="2OqwBi" id="bl" role="37wK5m">
                                <uo k="s:originTrace" v="n:2453008993612695843" />
                                <node concept="3Tsc0h" id="bm" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                                  <uo k="s:originTrace" v="n:2407637667685849657" />
                                </node>
                                <node concept="37vLTw" id="bn" role="2Oq$k0">
                                  <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                                  <uo k="s:originTrace" v="n:2453008993616750668" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="bi" role="3clFbw">
                          <uo k="s:originTrace" v="n:2453008993616738130" />
                          <node concept="10Nm6u" id="bo" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2453008993616740659" />
                          </node>
                          <node concept="37vLTw" id="bp" role="3uHU7B">
                            <ref role="3cqZAo" node="a7" resolve="enumDelcaration" />
                            <uo k="s:originTrace" v="n:2453008993616734694" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="9Q" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4705942098323013608" />
                        <node concept="2ShNRf" id="bq" role="3cqZAk">
                          <uo k="s:originTrace" v="n:4705942098323023057" />
                          <node concept="1pGfFk" id="br" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                            <uo k="s:originTrace" v="n:4705942098323025322" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="9K" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:4705942098322469218" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="9r" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4705942098322467901" />
        </node>
      </node>
      <node concept="3uibUv" id="97" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4705942098322467901" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="bs">
    <property role="TrG5h" value="EnumMemberReference_Old_Constraints" />
    <uo k="s:originTrace" v="n:1213104857023" />
    <node concept="3Tm1VV" id="bt" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104857023" />
    </node>
    <node concept="3uibUv" id="bu" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104857023" />
    </node>
    <node concept="3clFbW" id="bv" role="jymVt">
      <uo k="s:originTrace" v="n:1213104857023" />
      <node concept="37vLTG" id="by" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104857023" />
        <node concept="3uibUv" id="b_" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
      </node>
      <node concept="3cqZAl" id="bz" role="3clF45">
        <uo k="s:originTrace" v="n:1213104857023" />
      </node>
      <node concept="3clFbS" id="b$" role="3clF47">
        <uo k="s:originTrace" v="n:1213104857023" />
        <node concept="XkiVB" id="bA" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104857023" />
          <node concept="1BaE9c" id="bC" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumMemberReference_Old$15" />
            <uo k="s:originTrace" v="n:1213104857023" />
            <node concept="2YIFZM" id="bE" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104857023" />
              <node concept="11gdke" id="bF" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104857023" />
              </node>
              <node concept="11gdke" id="bG" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104857023" />
              </node>
              <node concept="11gdke" id="bH" role="37wK5m">
                <property role="11gdj1" value="1091e6212fdL" />
                <uo k="s:originTrace" v="n:1213104857023" />
              </node>
              <node concept="Xl_RD" id="bI" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumMemberReference_Old" />
                <uo k="s:originTrace" v="n:1213104857023" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="bD" role="37wK5m">
            <ref role="3cqZAo" node="by" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104857023" />
          </node>
        </node>
        <node concept="3clFbF" id="bB" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104857023" />
          <node concept="1rXfSq" id="bJ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104857023" />
            <node concept="2ShNRf" id="bK" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104857023" />
              <node concept="1pGfFk" id="bL" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="bN" resolve="EnumMemberReference_Old_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104857023" />
                <node concept="Xjq3P" id="bM" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="bw" role="jymVt">
      <uo k="s:originTrace" v="n:1213104857023" />
    </node>
    <node concept="312cEu" id="bx" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104857023" />
      <node concept="3clFbW" id="bN" role="jymVt">
        <uo k="s:originTrace" v="n:1213104857023" />
        <node concept="37vLTG" id="bQ" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104857023" />
          <node concept="3uibUv" id="bT" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104857023" />
          </node>
        </node>
        <node concept="3cqZAl" id="bR" role="3clF45">
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
        <node concept="3clFbS" id="bS" role="3clF47">
          <uo k="s:originTrace" v="n:1213104857023" />
          <node concept="XkiVB" id="bU" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104857023" />
            <node concept="1BaE9c" id="bV" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="enumMember$hl0V" />
              <uo k="s:originTrace" v="n:1213104857023" />
              <node concept="2YIFZM" id="bZ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104857023" />
                <node concept="11gdke" id="c0" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
                <node concept="11gdke" id="c1" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
                <node concept="11gdke" id="c2" role="37wK5m">
                  <property role="11gdj1" value="1091e6212fdL" />
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
                <node concept="11gdke" id="c3" role="37wK5m">
                  <property role="11gdj1" value="1091e625b13L" />
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
                <node concept="Xl_RD" id="c4" role="37wK5m">
                  <property role="Xl_RC" value="enumMember" />
                  <uo k="s:originTrace" v="n:1213104857023" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="bW" role="37wK5m">
              <ref role="3cqZAo" node="bQ" resolve="container" />
              <uo k="s:originTrace" v="n:1213104857023" />
            </node>
            <node concept="3clFbT" id="bX" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104857023" />
            </node>
            <node concept="3clFbT" id="bY" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104857023" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="bO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104857023" />
        <node concept="3Tm1VV" id="c5" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
        <node concept="3uibUv" id="c6" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
        <node concept="2AHcQZ" id="c7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
        <node concept="3clFbS" id="c8" role="3clF47">
          <uo k="s:originTrace" v="n:1213104857023" />
          <node concept="3cpWs6" id="ca" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104857023" />
            <node concept="2ShNRf" id="cb" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799721" />
              <node concept="YeOm9" id="cc" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799721" />
                <node concept="1Y3b0j" id="cd" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799721" />
                  <node concept="3Tm1VV" id="ce" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799721" />
                  </node>
                  <node concept="3clFb_" id="cf" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799721" />
                    <node concept="3Tm1VV" id="ch" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                    <node concept="3uibUv" id="ci" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                    <node concept="3clFbS" id="cj" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                      <node concept="3cpWs6" id="cl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799721" />
                        <node concept="2ShNRf" id="cm" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799721" />
                          <node concept="1pGfFk" id="cn" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799721" />
                            <node concept="Xl_RD" id="co" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799721" />
                            </node>
                            <node concept="Xl_RD" id="cp" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799721" />
                              <uo k="s:originTrace" v="n:6836281137582799721" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ck" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="cg" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799721" />
                    <node concept="3Tm1VV" id="cq" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                    <node concept="3uibUv" id="cr" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                    <node concept="37vLTG" id="cs" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                      <node concept="3uibUv" id="cv" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799721" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="ct" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                      <node concept="3cpWs8" id="cw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799838" />
                        <node concept="3cpWsn" id="cz" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6836281137582799839" />
                          <node concept="3Tqbb2" id="c$" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6836281137582799840" />
                          </node>
                          <node concept="1eOMI4" id="c_" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582799828" />
                            <node concept="3K4zz7" id="cA" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6836281137582799829" />
                              <node concept="1DoJHT" id="cB" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582799830" />
                                <node concept="3uibUv" id="cE" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="cF" role="1EMhIo">
                                  <ref role="3cqZAo" node="cs" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="cC" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6836281137582799831" />
                                <node concept="1DoJHT" id="cG" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582799832" />
                                  <node concept="3uibUv" id="cI" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="cJ" role="1EMhIo">
                                    <ref role="3cqZAo" node="cs" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="cH" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582799833" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="cD" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6836281137582799834" />
                                <node concept="1DoJHT" id="cK" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582799835" />
                                  <node concept="3uibUv" id="cM" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="cN" role="1EMhIo">
                                    <ref role="3cqZAo" node="cs" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="cL" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582799836" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="cx" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799723" />
                        <node concept="22lmx$" id="cO" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582799724" />
                          <node concept="2OqwBi" id="cQ" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582799725" />
                            <node concept="37vLTw" id="cS" role="2Oq$k0">
                              <ref role="3cqZAo" node="cz" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582799841" />
                            </node>
                            <node concept="1mIQ4w" id="cT" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582799727" />
                              <node concept="chp4Y" id="cU" role="cj9EA">
                                <ref role="cht4Q" to="tp25:gFt7uOF" resolve="Property_HasValue_Enum" />
                                <uo k="s:originTrace" v="n:6836281137582799728" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="cR" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6836281137582799729" />
                            <node concept="37vLTw" id="cV" role="2Oq$k0">
                              <ref role="3cqZAo" node="cz" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582799842" />
                            </node>
                            <node concept="1mIQ4w" id="cW" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582799731" />
                              <node concept="chp4Y" id="cX" role="cj9EA">
                                <ref role="cht4Q" to="tp25:g$tyxPj" resolve="Property_SetOperation" />
                                <uo k="s:originTrace" v="n:6836281137582799732" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="cP" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582799733" />
                          <node concept="3cpWs8" id="cY" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582799734" />
                            <node concept="3cpWsn" id="d0" role="3cpWs9">
                              <property role="TrG5h" value="datatype" />
                              <uo k="s:originTrace" v="n:6836281137582799735" />
                              <node concept="3Tqbb2" id="d1" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582799736" />
                              </node>
                              <node concept="2YIFZM" id="d2" role="33vP2m">
                                <ref role="37wK5l" to="tpeu:hKtHndD" resolve="getDatatypeFromLeft_SPropertyAccess" />
                                <ref role="1Pybhc" to="tpeu:hKtHndz" resolve="SModelLanguageUtil" />
                                <uo k="s:originTrace" v="n:6836281137582799737" />
                                <node concept="1PxgMI" id="d3" role="37wK5m">
                                  <uo k="s:originTrace" v="n:6836281137582799738" />
                                  <node concept="37vLTw" id="d4" role="1m5AlR">
                                    <ref role="3cqZAo" node="cz" resolve="enclosingNode" />
                                    <uo k="s:originTrace" v="n:6836281137582799843" />
                                  </node>
                                  <node concept="chp4Y" id="d5" role="3oSUPX">
                                    <ref role="cht4Q" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                                    <uo k="s:originTrace" v="n:6836281137582799740" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="cZ" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582799741" />
                            <node concept="2OqwBi" id="d6" role="3clFbw">
                              <uo k="s:originTrace" v="n:6836281137582799742" />
                              <node concept="37vLTw" id="d8" role="2Oq$k0">
                                <ref role="3cqZAo" node="d0" resolve="datatype" />
                                <uo k="s:originTrace" v="n:6836281137582799743" />
                              </node>
                              <node concept="3zqWPK" id="d9" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hKtFDel" resolve="isEnum" />
                                <uo k="s:originTrace" v="n:8085146484218857967" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="d7" role="3clFbx">
                              <uo k="s:originTrace" v="n:6836281137582799745" />
                              <node concept="3cpWs6" id="da" role="3cqZAp">
                                <uo k="s:originTrace" v="n:6836281137582799746" />
                                <node concept="2YIFZM" id="db" role="3cqZAk">
                                  <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                  <uo k="s:originTrace" v="n:6467324209847797873" />
                                  <node concept="2OqwBi" id="dc" role="37wK5m">
                                    <uo k="s:originTrace" v="n:6836281137582800271" />
                                    <node concept="1PxgMI" id="dd" role="2Oq$k0">
                                      <uo k="s:originTrace" v="n:6836281137582800272" />
                                      <node concept="37vLTw" id="df" role="1m5AlR">
                                        <ref role="3cqZAo" node="d0" resolve="datatype" />
                                        <uo k="s:originTrace" v="n:6836281137582800273" />
                                      </node>
                                      <node concept="chp4Y" id="dg" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
                                        <uo k="s:originTrace" v="n:6836281137582800274" />
                                      </node>
                                    </node>
                                    <node concept="3Tsc0h" id="de" role="2OqNvi">
                                      <ref role="3TtcxE" to="tpce:fKM5hVY" resolve="member" />
                                      <uo k="s:originTrace" v="n:6836281137582800275" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="cy" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799754" />
                        <node concept="2ShNRf" id="dh" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6467324209847783733" />
                          <node concept="1pGfFk" id="di" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                            <uo k="s:originTrace" v="n:6467324209847785589" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="cu" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799721" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="c9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104857023" />
        </node>
      </node>
      <node concept="3uibUv" id="bP" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104857023" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="dj">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="EnumMemberValueRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:6973815483245710659" />
    <node concept="3Tm1VV" id="dk" role="1B3o_S">
      <uo k="s:originTrace" v="n:6973815483245710659" />
    </node>
    <node concept="3uibUv" id="dl" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6973815483245710659" />
    </node>
    <node concept="3clFbW" id="dm" role="jymVt">
      <uo k="s:originTrace" v="n:6973815483245710659" />
      <node concept="37vLTG" id="dp" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6973815483245710659" />
        <node concept="3uibUv" id="ds" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
      </node>
      <node concept="3cqZAl" id="dq" role="3clF45">
        <uo k="s:originTrace" v="n:6973815483245710659" />
      </node>
      <node concept="3clFbS" id="dr" role="3clF47">
        <uo k="s:originTrace" v="n:6973815483245710659" />
        <node concept="XkiVB" id="dt" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
          <node concept="1BaE9c" id="dv" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumMemberValueRefExpression$QG" />
            <uo k="s:originTrace" v="n:6973815483245710659" />
            <node concept="2YIFZM" id="dx" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6973815483245710659" />
              <node concept="11gdke" id="dy" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
              </node>
              <node concept="11gdke" id="dz" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
              </node>
              <node concept="11gdke" id="d$" role="37wK5m">
                <property role="11gdj1" value="60c7f83bafd83b5bL" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
              </node>
              <node concept="Xl_RD" id="d_" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="dw" role="37wK5m">
            <ref role="3cqZAo" node="dp" resolve="initContext" />
            <uo k="s:originTrace" v="n:6973815483245710659" />
          </node>
        </node>
        <node concept="3clFbF" id="du" role="3cqZAp">
          <uo k="s:originTrace" v="n:6973815483245710659" />
          <node concept="1rXfSq" id="dA" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6973815483245710659" />
            <node concept="2ShNRf" id="dB" role="37wK5m">
              <uo k="s:originTrace" v="n:6973815483245710659" />
              <node concept="1pGfFk" id="dC" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="dE" resolve="EnumMemberValueRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
                <node concept="Xjq3P" id="dD" role="37wK5m">
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="dn" role="jymVt">
      <uo k="s:originTrace" v="n:6973815483245710659" />
    </node>
    <node concept="312cEu" id="do" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6973815483245710659" />
      <node concept="3clFbW" id="dE" role="jymVt">
        <uo k="s:originTrace" v="n:6973815483245710659" />
        <node concept="37vLTG" id="dH" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
          <node concept="3uibUv" id="dK" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6973815483245710659" />
          </node>
        </node>
        <node concept="3cqZAl" id="dI" role="3clF45">
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
        <node concept="3clFbS" id="dJ" role="3clF47">
          <uo k="s:originTrace" v="n:6973815483245710659" />
          <node concept="XkiVB" id="dL" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6973815483245710659" />
            <node concept="1BaE9c" id="dM" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="member$ExgI" />
              <uo k="s:originTrace" v="n:6973815483245710659" />
              <node concept="2YIFZM" id="dQ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6973815483245710659" />
                <node concept="11gdke" id="dR" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
                <node concept="11gdke" id="dS" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
                <node concept="11gdke" id="dT" role="37wK5m">
                  <property role="11gdj1" value="60c7f83bafd83b5bL" />
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
                <node concept="11gdke" id="dU" role="37wK5m">
                  <property role="11gdj1" value="60c7f83bafda1168L" />
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
                <node concept="Xl_RD" id="dV" role="37wK5m">
                  <property role="Xl_RC" value="member" />
                  <uo k="s:originTrace" v="n:6973815483245710659" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="dN" role="37wK5m">
              <ref role="3cqZAo" node="dH" resolve="container" />
              <uo k="s:originTrace" v="n:6973815483245710659" />
            </node>
            <node concept="3clFbT" id="dO" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6973815483245710659" />
            </node>
            <node concept="3clFbT" id="dP" role="37wK5m">
              <uo k="s:originTrace" v="n:6973815483245710659" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="dF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6973815483245710659" />
        <node concept="3Tm1VV" id="dW" role="1B3o_S">
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
        <node concept="3uibUv" id="dX" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
        <node concept="2AHcQZ" id="dY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
        <node concept="3clFbS" id="dZ" role="3clF47">
          <uo k="s:originTrace" v="n:6973815483245710659" />
          <node concept="3cpWs6" id="e1" role="3cqZAp">
            <uo k="s:originTrace" v="n:6973815483245710659" />
            <node concept="2ShNRf" id="e2" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800800" />
              <node concept="YeOm9" id="e3" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800800" />
                <node concept="1Y3b0j" id="e4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800800" />
                  <node concept="3Tm1VV" id="e5" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800800" />
                  </node>
                  <node concept="3clFb_" id="e6" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800800" />
                    <node concept="3Tm1VV" id="e8" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                    <node concept="3uibUv" id="e9" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                    <node concept="3clFbS" id="ea" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                      <node concept="3cpWs6" id="ec" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800800" />
                        <node concept="2ShNRf" id="ed" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800800" />
                          <node concept="1pGfFk" id="ee" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800800" />
                            <node concept="Xl_RD" id="ef" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800800" />
                            </node>
                            <node concept="Xl_RD" id="eg" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800800" />
                              <uo k="s:originTrace" v="n:6836281137582800800" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="eb" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="e7" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800800" />
                    <node concept="3Tm1VV" id="eh" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                    <node concept="3uibUv" id="ei" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                    <node concept="37vLTG" id="ej" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                      <node concept="3uibUv" id="em" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800800" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="ek" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                      <node concept="3cpWs8" id="en" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800802" />
                        <node concept="3cpWsn" id="ep" role="3cpWs9">
                          <property role="TrG5h" value="enumMemberValueRef" />
                          <uo k="s:originTrace" v="n:6836281137582800803" />
                          <node concept="3Tqbb2" id="eq" role="1tU5fm">
                            <ref role="ehGHo" to="tp25:637Y3IJQ3Hr" resolve="EnumMemberValueRefExpression" />
                            <uo k="s:originTrace" v="n:6836281137582800804" />
                          </node>
                          <node concept="2OqwBi" id="er" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582800805" />
                            <node concept="2Xjw5R" id="es" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582800806" />
                              <node concept="1xMEDy" id="eu" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582800807" />
                                <node concept="chp4Y" id="ew" role="ri$Ld">
                                  <ref role="cht4Q" to="tp25:637Y3IJQ3Hr" resolve="EnumMemberValueRefExpression" />
                                  <uo k="s:originTrace" v="n:6836281137582800808" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="ev" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582800809" />
                              </node>
                            </node>
                            <node concept="1DoJHT" id="et" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582800810" />
                              <node concept="3uibUv" id="ex" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="ey" role="1EMhIo">
                                <ref role="3cqZAo" node="ej" resolve="_context" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="eo" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800811" />
                        <node concept="2ShNRf" id="ez" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800812" />
                          <node concept="YeOm9" id="e$" role="2ShVmc">
                            <uo k="s:originTrace" v="n:6836281137582800813" />
                            <node concept="1Y3b0j" id="e_" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="6xgk:2DmG$ciAhAi" resolve="SimpleScope" />
                              <ref role="37wK5l" to="6xgk:2DmG$ciAhAo" resolve="SimpleScope" />
                              <uo k="s:originTrace" v="n:6836281137582800814" />
                              <node concept="2OqwBi" id="eA" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582800815" />
                                <node concept="3Tsc0h" id="eD" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpce:fKM5hVY" resolve="member" />
                                  <uo k="s:originTrace" v="n:6836281137582800816" />
                                </node>
                                <node concept="2OqwBi" id="eE" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:6836281137582800817" />
                                  <node concept="3TrEf2" id="eF" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp25:637Y3IJQwST" resolve="enum" />
                                    <uo k="s:originTrace" v="n:6836281137582800818" />
                                  </node>
                                  <node concept="37vLTw" id="eG" role="2Oq$k0">
                                    <ref role="3cqZAo" node="ep" resolve="enumMemberValueRef" />
                                    <uo k="s:originTrace" v="n:6836281137582800819" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="eB" role="1B3o_S">
                                <uo k="s:originTrace" v="n:6836281137582800820" />
                              </node>
                              <node concept="3clFb_" id="eC" role="jymVt">
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="getReferenceText" />
                                <uo k="s:originTrace" v="n:6836281137582800821" />
                                <node concept="3Tm1VV" id="eH" role="1B3o_S">
                                  <uo k="s:originTrace" v="n:6836281137582800822" />
                                </node>
                                <node concept="37vLTG" id="eI" role="3clF46">
                                  <property role="TrG5h" value="target" />
                                  <uo k="s:originTrace" v="n:6836281137582800823" />
                                  <node concept="3Tqbb2" id="eN" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6836281137582800824" />
                                  </node>
                                  <node concept="2AHcQZ" id="eO" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                    <uo k="s:originTrace" v="n:6836281137582800825" />
                                  </node>
                                </node>
                                <node concept="17QB3L" id="eJ" role="3clF45">
                                  <uo k="s:originTrace" v="n:6836281137582800826" />
                                </node>
                                <node concept="2AHcQZ" id="eK" role="2AJF6D">
                                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  <uo k="s:originTrace" v="n:6836281137582800827" />
                                </node>
                                <node concept="3clFbS" id="eL" role="3clF47">
                                  <uo k="s:originTrace" v="n:6836281137582800828" />
                                  <node concept="3clFbF" id="eP" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582800829" />
                                    <node concept="2OqwBi" id="eQ" role="3clFbG">
                                      <uo k="s:originTrace" v="n:6836281137582800830" />
                                      <node concept="1PxgMI" id="eR" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6836281137582800831" />
                                        <node concept="37vLTw" id="eT" role="1m5AlR">
                                          <ref role="3cqZAo" node="eI" resolve="target" />
                                          <uo k="s:originTrace" v="n:6836281137582800832" />
                                        </node>
                                        <node concept="chp4Y" id="eU" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
                                          <uo k="s:originTrace" v="n:6836281137582800833" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="eS" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpce:fLuS6p$" resolve="externalValue" />
                                        <uo k="s:originTrace" v="n:6836281137582800834" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="eM" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  <uo k="s:originTrace" v="n:6836281137582800835" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="el" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800800" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="e0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6973815483245710659" />
        </node>
      </node>
      <node concept="3uibUv" id="dG" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6973815483245710659" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="eV">
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="EnumOperation_Constraints" />
    <uo k="s:originTrace" v="n:5779574625832943721" />
    <node concept="3Tm1VV" id="eW" role="1B3o_S">
      <uo k="s:originTrace" v="n:5779574625832943721" />
    </node>
    <node concept="3uibUv" id="eX" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:5779574625832943721" />
    </node>
    <node concept="3clFbW" id="eY" role="jymVt">
      <uo k="s:originTrace" v="n:5779574625832943721" />
      <node concept="37vLTG" id="f1" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="3uibUv" id="f4" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
        </node>
      </node>
      <node concept="3cqZAl" id="f2" role="3clF45">
        <uo k="s:originTrace" v="n:5779574625832943721" />
      </node>
      <node concept="3clFbS" id="f3" role="3clF47">
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="XkiVB" id="f5" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
          <node concept="1BaE9c" id="f7" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumOperation$Xg" />
            <uo k="s:originTrace" v="n:5779574625832943721" />
            <node concept="2YIFZM" id="f9" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:5779574625832943721" />
              <node concept="11gdke" id="fa" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:5779574625832943721" />
              </node>
              <node concept="11gdke" id="fb" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:5779574625832943721" />
              </node>
              <node concept="11gdke" id="fc" role="37wK5m">
                <property role="11gdj1" value="1b4bba1ba0012cf5L" />
                <uo k="s:originTrace" v="n:5779574625832943721" />
              </node>
              <node concept="Xl_RD" id="fd" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumOperation" />
                <uo k="s:originTrace" v="n:5779574625832943721" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="f8" role="37wK5m">
            <ref role="3cqZAo" node="f1" resolve="initContext" />
            <uo k="s:originTrace" v="n:5779574625832943721" />
          </node>
        </node>
        <node concept="3clFbF" id="f6" role="3cqZAp">
          <uo k="s:originTrace" v="n:5779574625832943721" />
          <node concept="1rXfSq" id="fe" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:5779574625832943721" />
            <node concept="2ShNRf" id="ff" role="37wK5m">
              <uo k="s:originTrace" v="n:5779574625832943721" />
              <node concept="YeOm9" id="fg" role="2ShVmc">
                <uo k="s:originTrace" v="n:5779574625832943721" />
                <node concept="1Y3b0j" id="fh" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:5779574625832943721" />
                  <node concept="3Tm1VV" id="fi" role="1B3o_S">
                    <uo k="s:originTrace" v="n:5779574625832943721" />
                  </node>
                  <node concept="3clFb_" id="fj" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:5779574625832943721" />
                    <node concept="3Tm1VV" id="fm" role="1B3o_S">
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                    </node>
                    <node concept="2AHcQZ" id="fn" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                    </node>
                    <node concept="3uibUv" id="fo" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                    </node>
                    <node concept="37vLTG" id="fp" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                      <node concept="3uibUv" id="fs" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                      <node concept="2AHcQZ" id="ft" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="fq" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                      <node concept="3uibUv" id="fu" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                      <node concept="2AHcQZ" id="fv" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="fr" role="3clF47">
                      <uo k="s:originTrace" v="n:5779574625832943721" />
                      <node concept="3cpWs8" id="fw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                        <node concept="3cpWsn" id="f_" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:5779574625832943721" />
                          <node concept="10P_77" id="fA" role="1tU5fm">
                            <uo k="s:originTrace" v="n:5779574625832943721" />
                          </node>
                          <node concept="1rXfSq" id="fB" role="33vP2m">
                            <ref role="37wK5l" node="f0" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:5779574625832943721" />
                            <node concept="2OqwBi" id="fC" role="37wK5m">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                              <node concept="37vLTw" id="fG" role="2Oq$k0">
                                <ref role="3cqZAo" node="fp" resolve="context" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                              <node concept="liA8E" id="fH" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="fD" role="37wK5m">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                              <node concept="37vLTw" id="fI" role="2Oq$k0">
                                <ref role="3cqZAo" node="fp" resolve="context" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                              <node concept="liA8E" id="fJ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="fE" role="37wK5m">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                              <node concept="37vLTw" id="fK" role="2Oq$k0">
                                <ref role="3cqZAo" node="fp" resolve="context" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                              <node concept="liA8E" id="fL" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="fF" role="37wK5m">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                              <node concept="37vLTw" id="fM" role="2Oq$k0">
                                <ref role="3cqZAo" node="fp" resolve="context" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                              <node concept="liA8E" id="fN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="fx" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                      <node concept="3clFbJ" id="fy" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                        <node concept="3clFbS" id="fO" role="3clFbx">
                          <uo k="s:originTrace" v="n:5779574625832943721" />
                          <node concept="3clFbF" id="fQ" role="3cqZAp">
                            <uo k="s:originTrace" v="n:5779574625832943721" />
                            <node concept="2OqwBi" id="fR" role="3clFbG">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                              <node concept="37vLTw" id="fS" role="2Oq$k0">
                                <ref role="3cqZAo" node="fq" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                              </node>
                              <node concept="liA8E" id="fT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:5779574625832943721" />
                                <node concept="1dyn4i" id="fU" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:5779574625832943721" />
                                  <node concept="2ShNRf" id="fV" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:5779574625832943721" />
                                    <node concept="1pGfFk" id="fW" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:5779574625832943721" />
                                      <node concept="Xl_RD" id="fX" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:5779574625832943721" />
                                      </node>
                                      <node concept="Xl_RD" id="fY" role="37wK5m">
                                        <property role="Xl_RC" value="5779574625832943722" />
                                        <uo k="s:originTrace" v="n:5779574625832943721" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="fP" role="3clFbw">
                          <uo k="s:originTrace" v="n:5779574625832943721" />
                          <node concept="3y3z36" id="fZ" role="3uHU7w">
                            <uo k="s:originTrace" v="n:5779574625832943721" />
                            <node concept="10Nm6u" id="g1" role="3uHU7w">
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                            </node>
                            <node concept="37vLTw" id="g2" role="3uHU7B">
                              <ref role="3cqZAo" node="fq" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="g0" role="3uHU7B">
                            <uo k="s:originTrace" v="n:5779574625832943721" />
                            <node concept="37vLTw" id="g3" role="3fr31v">
                              <ref role="3cqZAo" node="f_" resolve="result" />
                              <uo k="s:originTrace" v="n:5779574625832943721" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="fz" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                      </node>
                      <node concept="3clFbF" id="f$" role="3cqZAp">
                        <uo k="s:originTrace" v="n:5779574625832943721" />
                        <node concept="37vLTw" id="g4" role="3clFbG">
                          <ref role="3cqZAo" node="f_" resolve="result" />
                          <uo k="s:originTrace" v="n:5779574625832943721" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="fk" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:5779574625832943721" />
                  </node>
                  <node concept="3uibUv" id="fl" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:5779574625832943721" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="eZ" role="jymVt">
      <uo k="s:originTrace" v="n:5779574625832943721" />
    </node>
    <node concept="2YIFZL" id="f0" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:5779574625832943721" />
      <node concept="10P_77" id="g5" role="3clF45">
        <uo k="s:originTrace" v="n:5779574625832943721" />
      </node>
      <node concept="3Tm6S6" id="g6" role="1B3o_S">
        <uo k="s:originTrace" v="n:5779574625832943721" />
      </node>
      <node concept="3clFbS" id="g7" role="3clF47">
        <uo k="s:originTrace" v="n:5779574625832943723" />
        <node concept="3clFbF" id="gc" role="3cqZAp">
          <uo k="s:originTrace" v="n:5779574625832944194" />
          <node concept="3y3z36" id="gd" role="3clFbG">
            <uo k="s:originTrace" v="n:5779574625832975893" />
            <node concept="10Nm6u" id="ge" role="3uHU7w">
              <uo k="s:originTrace" v="n:5779574625832976937" />
            </node>
            <node concept="1UdQGJ" id="gf" role="3uHU7B">
              <uo k="s:originTrace" v="n:5779574625832969061" />
              <node concept="1YaCAy" id="gg" role="1Ub_4A">
                <property role="TrG5h" value="e" />
                <ref role="1YaFvo" to="tp25:50Pb80Hwsgz" resolve="SEnumerationType" />
                <uo k="s:originTrace" v="n:5779574625832970324" />
              </node>
              <node concept="2OqwBi" id="gh" role="1Ub_4B">
                <uo k="s:originTrace" v="n:5779574625832944945" />
                <node concept="1PxgMI" id="gi" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <uo k="s:originTrace" v="n:5779574625832947783" />
                  <node concept="chp4Y" id="gk" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <uo k="s:originTrace" v="n:5779574625832948281" />
                  </node>
                  <node concept="37vLTw" id="gl" role="1m5AlR">
                    <ref role="3cqZAo" node="g9" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:5779574625832944193" />
                  </node>
                </node>
                <node concept="3zqWPK" id="gj" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:7GulAc9z0dN" resolve="getOperandType" />
                  <uo k="s:originTrace" v="n:8085146484218858013" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="g8" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="3uibUv" id="gm" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
        </node>
      </node>
      <node concept="37vLTG" id="g9" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="3uibUv" id="gn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
        </node>
      </node>
      <node concept="37vLTG" id="ga" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="3uibUv" id="go" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
        </node>
      </node>
      <node concept="37vLTG" id="gb" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:5779574625832943721" />
        <node concept="3uibUv" id="gp" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:5779574625832943721" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="gq">
    <property role="3GE5qa" value="enumSwitch" />
    <property role="TrG5h" value="EnumSwitchExpression_Constraints" />
    <uo k="s:originTrace" v="n:2453008993630109572" />
    <node concept="3Tm1VV" id="gr" role="1B3o_S">
      <uo k="s:originTrace" v="n:2453008993630109572" />
    </node>
    <node concept="3uibUv" id="gs" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2453008993630109572" />
    </node>
    <node concept="3clFbW" id="gt" role="jymVt">
      <uo k="s:originTrace" v="n:2453008993630109572" />
      <node concept="37vLTG" id="gw" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="3uibUv" id="gz" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
        </node>
      </node>
      <node concept="3cqZAl" id="gx" role="3clF45">
        <uo k="s:originTrace" v="n:2453008993630109572" />
      </node>
      <node concept="3clFbS" id="gy" role="3clF47">
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="XkiVB" id="g$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
          <node concept="1BaE9c" id="gA" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="EnumSwitchExpression$Sw" />
            <uo k="s:originTrace" v="n:2453008993630109572" />
            <node concept="2YIFZM" id="gC" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2453008993630109572" />
              <node concept="11gdke" id="gD" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2453008993630109572" />
              </node>
              <node concept="11gdke" id="gE" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2453008993630109572" />
              </node>
              <node concept="11gdke" id="gF" role="37wK5m">
                <property role="11gdj1" value="220ad6aedf1d75dfL" />
                <uo k="s:originTrace" v="n:2453008993630109572" />
              </node>
              <node concept="Xl_RD" id="gG" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" />
                <uo k="s:originTrace" v="n:2453008993630109572" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="gB" role="37wK5m">
            <ref role="3cqZAo" node="gw" resolve="initContext" />
            <uo k="s:originTrace" v="n:2453008993630109572" />
          </node>
        </node>
        <node concept="3clFbF" id="g_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2453008993630109572" />
          <node concept="1rXfSq" id="gH" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:2453008993630109572" />
            <node concept="2ShNRf" id="gI" role="37wK5m">
              <uo k="s:originTrace" v="n:2453008993630109572" />
              <node concept="YeOm9" id="gJ" role="2ShVmc">
                <uo k="s:originTrace" v="n:2453008993630109572" />
                <node concept="1Y3b0j" id="gK" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:2453008993630109572" />
                  <node concept="3Tm1VV" id="gL" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2453008993630109572" />
                  </node>
                  <node concept="3clFb_" id="gM" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:2453008993630109572" />
                    <node concept="3Tm1VV" id="gP" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                    </node>
                    <node concept="2AHcQZ" id="gQ" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                    </node>
                    <node concept="3uibUv" id="gR" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                    </node>
                    <node concept="37vLTG" id="gS" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                      <node concept="3uibUv" id="gV" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                      <node concept="2AHcQZ" id="gW" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="gT" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                      <node concept="3uibUv" id="gX" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                      <node concept="2AHcQZ" id="gY" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="gU" role="3clF47">
                      <uo k="s:originTrace" v="n:2453008993630109572" />
                      <node concept="3cpWs8" id="gZ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                        <node concept="3cpWsn" id="h4" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:2453008993630109572" />
                          <node concept="10P_77" id="h5" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2453008993630109572" />
                          </node>
                          <node concept="1rXfSq" id="h6" role="33vP2m">
                            <ref role="37wK5l" node="gv" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:2453008993630109572" />
                            <node concept="2OqwBi" id="h7" role="37wK5m">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                              <node concept="37vLTw" id="hb" role="2Oq$k0">
                                <ref role="3cqZAo" node="gS" resolve="context" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                              <node concept="liA8E" id="hc" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="h8" role="37wK5m">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                              <node concept="37vLTw" id="hd" role="2Oq$k0">
                                <ref role="3cqZAo" node="gS" resolve="context" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                              <node concept="liA8E" id="he" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="h9" role="37wK5m">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                              <node concept="37vLTw" id="hf" role="2Oq$k0">
                                <ref role="3cqZAo" node="gS" resolve="context" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                              <node concept="liA8E" id="hg" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="ha" role="37wK5m">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                              <node concept="37vLTw" id="hh" role="2Oq$k0">
                                <ref role="3cqZAo" node="gS" resolve="context" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                              <node concept="liA8E" id="hi" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="h0" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                      <node concept="3clFbJ" id="h1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                        <node concept="3clFbS" id="hj" role="3clFbx">
                          <uo k="s:originTrace" v="n:2453008993630109572" />
                          <node concept="3clFbF" id="hl" role="3cqZAp">
                            <uo k="s:originTrace" v="n:2453008993630109572" />
                            <node concept="2OqwBi" id="hm" role="3clFbG">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                              <node concept="37vLTw" id="hn" role="2Oq$k0">
                                <ref role="3cqZAo" node="gT" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                              </node>
                              <node concept="liA8E" id="ho" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:2453008993630109572" />
                                <node concept="1dyn4i" id="hp" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:2453008993630109572" />
                                  <node concept="2ShNRf" id="hq" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:2453008993630109572" />
                                    <node concept="1pGfFk" id="hr" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:2453008993630109572" />
                                      <node concept="Xl_RD" id="hs" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:2453008993630109572" />
                                      </node>
                                      <node concept="Xl_RD" id="ht" role="37wK5m">
                                        <property role="Xl_RC" value="2453008993630109573" />
                                        <uo k="s:originTrace" v="n:2453008993630109572" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="hk" role="3clFbw">
                          <uo k="s:originTrace" v="n:2453008993630109572" />
                          <node concept="3y3z36" id="hu" role="3uHU7w">
                            <uo k="s:originTrace" v="n:2453008993630109572" />
                            <node concept="10Nm6u" id="hw" role="3uHU7w">
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                            </node>
                            <node concept="37vLTw" id="hx" role="3uHU7B">
                              <ref role="3cqZAo" node="gT" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="hv" role="3uHU7B">
                            <uo k="s:originTrace" v="n:2453008993630109572" />
                            <node concept="37vLTw" id="hy" role="3fr31v">
                              <ref role="3cqZAo" node="h4" resolve="result" />
                              <uo k="s:originTrace" v="n:2453008993630109572" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="h2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                      </node>
                      <node concept="3clFbF" id="h3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2453008993630109572" />
                        <node concept="37vLTw" id="hz" role="3clFbG">
                          <ref role="3cqZAo" node="h4" resolve="result" />
                          <uo k="s:originTrace" v="n:2453008993630109572" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="gN" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:2453008993630109572" />
                  </node>
                  <node concept="3uibUv" id="gO" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:2453008993630109572" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="gu" role="jymVt">
      <uo k="s:originTrace" v="n:2453008993630109572" />
    </node>
    <node concept="2YIFZL" id="gv" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:2453008993630109572" />
      <node concept="10P_77" id="h$" role="3clF45">
        <uo k="s:originTrace" v="n:2453008993630109572" />
      </node>
      <node concept="3Tm6S6" id="h_" role="1B3o_S">
        <uo k="s:originTrace" v="n:2453008993630109572" />
      </node>
      <node concept="3clFbS" id="hA" role="3clF47">
        <uo k="s:originTrace" v="n:2453008993630109574" />
        <node concept="3clFbJ" id="hF" role="3cqZAp">
          <uo k="s:originTrace" v="n:4981982948208594848" />
          <node concept="3clFbS" id="hI" role="3clFbx">
            <uo k="s:originTrace" v="n:4981982948208594850" />
            <node concept="3SKdUt" id="hK" role="3cqZAp">
              <uo k="s:originTrace" v="n:4981982948208601113" />
              <node concept="1PaTwC" id="hM" role="1aUNEU">
                <uo k="s:originTrace" v="n:2386398653325424165" />
                <node concept="3oM_SD" id="hN" role="1PaTwD">
                  <property role="3oM_SC" value="Just" />
                  <uo k="s:originTrace" v="n:2386398653325424166" />
                </node>
                <node concept="3oM_SD" id="hO" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                  <uo k="s:originTrace" v="n:2386398653325424167" />
                </node>
                <node concept="3oM_SD" id="hP" role="1PaTwD">
                  <property role="3oM_SC" value="make" />
                  <uo k="s:originTrace" v="n:2386398653325424168" />
                </node>
                <node concept="3oM_SD" id="hQ" role="1PaTwD">
                  <property role="3oM_SC" value="completion" />
                  <uo k="s:originTrace" v="n:2386398653325424169" />
                </node>
                <node concept="3oM_SD" id="hR" role="1PaTwD">
                  <property role="3oM_SC" value="works" />
                  <uo k="s:originTrace" v="n:2386398653325424170" />
                </node>
                <node concept="3oM_SD" id="hS" role="1PaTwD">
                  <property role="3oM_SC" value=":(" />
                  <uo k="s:originTrace" v="n:2386398653325424171" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="hL" role="3cqZAp">
              <uo k="s:originTrace" v="n:4981982948208608641" />
              <node concept="3clFbT" id="hT" role="3cqZAk">
                <property role="3clFbU" value="true" />
                <uo k="s:originTrace" v="n:4981982948208611311" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="hJ" role="3clFbw">
            <uo k="s:originTrace" v="n:4981982948208598077" />
            <node concept="37vLTw" id="hU" role="2Oq$k0">
              <ref role="3cqZAo" node="hC" resolve="parentNode" />
              <uo k="s:originTrace" v="n:4981982948208596239" />
            </node>
            <node concept="1mIQ4w" id="hV" role="2OqNvi">
              <uo k="s:originTrace" v="n:4981982948208599766" />
              <node concept="chp4Y" id="hW" role="cj9EA">
                <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                <uo k="s:originTrace" v="n:4981982948208607027" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="hG" role="3cqZAp">
          <uo k="s:originTrace" v="n:2453008993630155494" />
          <node concept="1PaTwC" id="hX" role="1aUNEU">
            <uo k="s:originTrace" v="n:2386398653325424172" />
            <node concept="3oM_SD" id="hY" role="1PaTwD">
              <property role="3oM_SC" value="generation" />
              <uo k="s:originTrace" v="n:2386398653325424173" />
            </node>
            <node concept="3oM_SD" id="hZ" role="1PaTwD">
              <property role="3oM_SC" value="into" />
              <uo k="s:originTrace" v="n:2386398653325424174" />
            </node>
            <node concept="3oM_SD" id="i0" role="1PaTwD">
              <property role="3oM_SC" value="bl" />
              <uo k="s:originTrace" v="n:2386398653325424175" />
            </node>
            <node concept="3oM_SD" id="i1" role="1PaTwD">
              <property role="3oM_SC" value="is" />
              <uo k="s:originTrace" v="n:2386398653325424176" />
            </node>
            <node concept="3oM_SD" id="i2" role="1PaTwD">
              <property role="3oM_SC" value="supported" />
              <uo k="s:originTrace" v="n:2386398653325424177" />
            </node>
            <node concept="3oM_SD" id="i3" role="1PaTwD">
              <property role="3oM_SC" value="only" />
              <uo k="s:originTrace" v="n:2386398653325424178" />
            </node>
            <node concept="3oM_SD" id="i4" role="1PaTwD">
              <property role="3oM_SC" value="for" />
              <uo k="s:originTrace" v="n:2386398653325424179" />
            </node>
            <node concept="3oM_SD" id="i5" role="1PaTwD">
              <property role="3oM_SC" value="these" />
              <uo k="s:originTrace" v="n:2386398653325424180" />
            </node>
            <node concept="3oM_SD" id="i6" role="1PaTwD">
              <property role="3oM_SC" value="cases" />
              <uo k="s:originTrace" v="n:2386398653325424181" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hH" role="3cqZAp">
          <uo k="s:originTrace" v="n:2453008993630110045" />
          <node concept="22lmx$" id="i7" role="3clFbG">
            <uo k="s:originTrace" v="n:4981982948208518037" />
            <node concept="1Wc70l" id="i8" role="3uHU7w">
              <uo k="s:originTrace" v="n:2453008993630144134" />
              <node concept="2OqwBi" id="ia" role="3uHU7w">
                <uo k="s:originTrace" v="n:2453008993630150022" />
                <node concept="2OqwBi" id="ic" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:2453008993630146925" />
                  <node concept="37vLTw" id="ie" role="2Oq$k0">
                    <ref role="3cqZAo" node="hC" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:2453008993630145287" />
                  </node>
                  <node concept="1mfA1w" id="if" role="2OqNvi">
                    <uo k="s:originTrace" v="n:2453008993630147708" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="id" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2453008993630152913" />
                  <node concept="chp4Y" id="ig" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                    <uo k="s:originTrace" v="n:2453008993630154291" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="ib" role="3uHU7B">
                <uo k="s:originTrace" v="n:2453008993630124908" />
                <node concept="37vLTw" id="ih" role="2Oq$k0">
                  <ref role="3cqZAo" node="hC" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:2453008993630123975" />
                </node>
                <node concept="1mIQ4w" id="ii" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2453008993630126252" />
                  <node concept="chp4Y" id="ij" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                    <uo k="s:originTrace" v="n:2453008993630127257" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="i9" role="3uHU7B">
              <uo k="s:originTrace" v="n:2453008993630128424" />
              <node concept="2OqwBi" id="ik" role="3uHU7w">
                <uo k="s:originTrace" v="n:2453008993630130843" />
                <node concept="37vLTw" id="im" role="2Oq$k0">
                  <ref role="3cqZAo" node="hC" resolve="parentNode" />
                  <uo k="s:originTrace" v="n:2453008993630129391" />
                </node>
                <node concept="1mIQ4w" id="in" role="2OqNvi">
                  <uo k="s:originTrace" v="n:2453008993630133134" />
                  <node concept="chp4Y" id="io" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                    <uo k="s:originTrace" v="n:2453008993630134323" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="il" role="3uHU7B">
                <uo k="s:originTrace" v="n:4981982948210936751" />
                <node concept="2OqwBi" id="ip" role="3uHU7B">
                  <uo k="s:originTrace" v="n:4981982948210939324" />
                  <node concept="37vLTw" id="ir" role="2Oq$k0">
                    <ref role="3cqZAo" node="hC" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:4981982948210937966" />
                  </node>
                  <node concept="1mIQ4w" id="is" role="2OqNvi">
                    <uo k="s:originTrace" v="n:4981982948210944962" />
                    <node concept="chp4Y" id="it" role="cj9EA">
                      <ref role="cht4Q" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                      <uo k="s:originTrace" v="n:4981982948210946399" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="iq" role="3uHU7w">
                  <uo k="s:originTrace" v="n:2453008993630111514" />
                  <node concept="37vLTw" id="iu" role="2Oq$k0">
                    <ref role="3cqZAo" node="hC" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:2453008993630110044" />
                  </node>
                  <node concept="1mIQ4w" id="iv" role="2OqNvi">
                    <uo k="s:originTrace" v="n:2453008993630113087" />
                    <node concept="chp4Y" id="iw" role="cj9EA">
                      <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                      <uo k="s:originTrace" v="n:2453008993630113905" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hB" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="3uibUv" id="ix" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
        </node>
      </node>
      <node concept="37vLTG" id="hC" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="3uibUv" id="iy" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
        </node>
      </node>
      <node concept="37vLTG" id="hD" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="3uibUv" id="iz" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
        </node>
      </node>
      <node concept="37vLTG" id="hE" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:2453008993630109572" />
        <node concept="3uibUv" id="i$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:2453008993630109572" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="i_">
    <property role="3GE5qa" value="enumerations" />
    <property role="TrG5h" value="Enum_MemberLiteral_Constraints" />
    <uo k="s:originTrace" v="n:2528767443165000010" />
    <node concept="3Tm1VV" id="iA" role="1B3o_S">
      <uo k="s:originTrace" v="n:2528767443165000010" />
    </node>
    <node concept="3uibUv" id="iB" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2528767443165000010" />
    </node>
    <node concept="3clFbW" id="iC" role="jymVt">
      <uo k="s:originTrace" v="n:2528767443165000010" />
      <node concept="37vLTG" id="iF" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2528767443165000010" />
        <node concept="3uibUv" id="iI" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
      </node>
      <node concept="3cqZAl" id="iG" role="3clF45">
        <uo k="s:originTrace" v="n:2528767443165000010" />
      </node>
      <node concept="3clFbS" id="iH" role="3clF47">
        <uo k="s:originTrace" v="n:2528767443165000010" />
        <node concept="XkiVB" id="iJ" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
          <node concept="1BaE9c" id="iL" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Enum_MemberLiteral$sj" />
            <uo k="s:originTrace" v="n:2528767443165000010" />
            <node concept="2YIFZM" id="iN" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2528767443165000010" />
              <node concept="11gdke" id="iO" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
              </node>
              <node concept="11gdke" id="iP" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
              </node>
              <node concept="11gdke" id="iQ" role="37wK5m">
                <property role="11gdj1" value="1b4bba1ba0012d60L" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
              </node>
              <node concept="Xl_RD" id="iR" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="iM" role="37wK5m">
            <ref role="3cqZAo" node="iF" resolve="initContext" />
            <uo k="s:originTrace" v="n:2528767443165000010" />
          </node>
        </node>
        <node concept="3clFbF" id="iK" role="3cqZAp">
          <uo k="s:originTrace" v="n:2528767443165000010" />
          <node concept="1rXfSq" id="iS" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2528767443165000010" />
            <node concept="2ShNRf" id="iT" role="37wK5m">
              <uo k="s:originTrace" v="n:2528767443165000010" />
              <node concept="1pGfFk" id="iU" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="iW" resolve="Enum_MemberLiteral_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
                <node concept="Xjq3P" id="iV" role="37wK5m">
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="iD" role="jymVt">
      <uo k="s:originTrace" v="n:2528767443165000010" />
    </node>
    <node concept="312cEu" id="iE" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2528767443165000010" />
      <node concept="3clFbW" id="iW" role="jymVt">
        <uo k="s:originTrace" v="n:2528767443165000010" />
        <node concept="37vLTG" id="iZ" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
          <node concept="3uibUv" id="j2" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2528767443165000010" />
          </node>
        </node>
        <node concept="3cqZAl" id="j0" role="3clF45">
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
        <node concept="3clFbS" id="j1" role="3clF47">
          <uo k="s:originTrace" v="n:2528767443165000010" />
          <node concept="XkiVB" id="j3" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2528767443165000010" />
            <node concept="1BaE9c" id="j4" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="memberDeclaration$D783" />
              <uo k="s:originTrace" v="n:2528767443165000010" />
              <node concept="2YIFZM" id="j8" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2528767443165000010" />
                <node concept="11gdke" id="j9" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
                <node concept="11gdke" id="ja" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
                <node concept="11gdke" id="jb" role="37wK5m">
                  <property role="11gdj1" value="1b4bba1ba0012d60L" />
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
                <node concept="11gdke" id="jc" role="37wK5m">
                  <property role="11gdj1" value="1b4bba1ba0012d64L" />
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
                <node concept="Xl_RD" id="jd" role="37wK5m">
                  <property role="Xl_RC" value="memberDeclaration" />
                  <uo k="s:originTrace" v="n:2528767443165000010" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="j5" role="37wK5m">
              <ref role="3cqZAo" node="iZ" resolve="container" />
              <uo k="s:originTrace" v="n:2528767443165000010" />
            </node>
            <node concept="3clFbT" id="j6" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2528767443165000010" />
            </node>
            <node concept="3clFbT" id="j7" role="37wK5m">
              <uo k="s:originTrace" v="n:2528767443165000010" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="iX" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2528767443165000010" />
        <node concept="3Tm1VV" id="je" role="1B3o_S">
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
        <node concept="3uibUv" id="jf" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
        <node concept="2AHcQZ" id="jg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
        <node concept="3clFbS" id="jh" role="3clF47">
          <uo k="s:originTrace" v="n:2528767443165000010" />
          <node concept="3cpWs6" id="jj" role="3cqZAp">
            <uo k="s:originTrace" v="n:2528767443165000010" />
            <node concept="2ShNRf" id="jk" role="3cqZAk">
              <uo k="s:originTrace" v="n:2528767443165000032" />
              <node concept="YeOm9" id="jl" role="2ShVmc">
                <uo k="s:originTrace" v="n:2528767443165000032" />
                <node concept="1Y3b0j" id="jm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:2528767443165000032" />
                  <node concept="3Tm1VV" id="jn" role="1B3o_S">
                    <uo k="s:originTrace" v="n:2528767443165000032" />
                  </node>
                  <node concept="3clFb_" id="jo" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:2528767443165000032" />
                    <node concept="3Tm1VV" id="jq" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                    <node concept="3uibUv" id="jr" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                    <node concept="3clFbS" id="js" role="3clF47">
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                      <node concept="3cpWs6" id="ju" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2528767443165000032" />
                        <node concept="2ShNRf" id="jv" role="3cqZAk">
                          <uo k="s:originTrace" v="n:2528767443165000032" />
                          <node concept="1pGfFk" id="jw" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:2528767443165000032" />
                            <node concept="Xl_RD" id="jx" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:2528767443165000032" />
                            </node>
                            <node concept="Xl_RD" id="jy" role="37wK5m">
                              <property role="Xl_RC" value="2528767443165000032" />
                              <uo k="s:originTrace" v="n:2528767443165000032" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="jt" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="jp" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:2528767443165000032" />
                    <node concept="3Tm1VV" id="jz" role="1B3o_S">
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                    <node concept="3uibUv" id="j$" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                    <node concept="37vLTG" id="j_" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                      <node concept="3uibUv" id="jC" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:2528767443165000032" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="jA" role="3clF47">
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                      <node concept="3cpWs8" id="jD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2528767443165000224" />
                        <node concept="3cpWsn" id="jG" role="3cpWs9">
                          <property role="TrG5h" value="parentNode" />
                          <uo k="s:originTrace" v="n:2528767443165000227" />
                          <node concept="3Tqbb2" id="jH" role="1tU5fm">
                            <uo k="s:originTrace" v="n:2528767443165000223" />
                          </node>
                          <node concept="3K4zz7" id="jI" role="33vP2m">
                            <uo k="s:originTrace" v="n:2528767443165004827" />
                            <node concept="2OqwBi" id="jJ" role="3K4E3e">
                              <uo k="s:originTrace" v="n:2528767443165009843" />
                              <node concept="1DoJHT" id="jM" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:2528767443165008993" />
                                <node concept="3uibUv" id="jO" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="jP" role="1EMhIo">
                                  <ref role="3cqZAo" node="j_" resolve="_context" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="jN" role="2OqNvi">
                                <uo k="s:originTrace" v="n:2528767443165011256" />
                              </node>
                            </node>
                            <node concept="1DoJHT" id="jK" role="3K4GZi">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:2528767443165011579" />
                              <node concept="3uibUv" id="jQ" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="jR" role="1EMhIo">
                                <ref role="3cqZAo" node="j_" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="jL" role="3K4Cdx">
                              <uo k="s:originTrace" v="n:2528767443165006638" />
                              <node concept="2OqwBi" id="jS" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:2528767443165001785" />
                                <node concept="1DoJHT" id="jU" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:2528767443165000994" />
                                  <node concept="3uibUv" id="jW" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="jX" role="1EMhIo">
                                    <ref role="3cqZAo" node="j_" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="jV" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:2528767443165003077" />
                                </node>
                              </node>
                              <node concept="3x8VRR" id="jT" role="2OqNvi">
                                <uo k="s:originTrace" v="n:2528767443165008678" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="jE" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2528767443165014357" />
                        <node concept="3cpWsn" id="jY" role="3cpWs9">
                          <property role="TrG5h" value="enumm" />
                          <uo k="s:originTrace" v="n:2528767443165014360" />
                          <node concept="3Tqbb2" id="jZ" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                            <uo k="s:originTrace" v="n:2528767443165014355" />
                          </node>
                          <node concept="2OqwBi" id="k0" role="33vP2m">
                            <uo k="s:originTrace" v="n:2407637667685554809" />
                            <node concept="1PxgMI" id="k1" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:2407637667685553090" />
                              <node concept="chp4Y" id="k3" role="3oSUPX">
                                <ref role="cht4Q" to="tp25:50Pb80HwrVk" resolve="EnumerationIdRefExpression" />
                                <uo k="s:originTrace" v="n:2407637667685553911" />
                              </node>
                              <node concept="2OqwBi" id="k4" role="1m5AlR">
                                <uo k="s:originTrace" v="n:2528767443165020401" />
                                <node concept="1PxgMI" id="k5" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <uo k="s:originTrace" v="n:2528767443165019090" />
                                  <node concept="chp4Y" id="k7" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                    <uo k="s:originTrace" v="n:2528767443165019450" />
                                  </node>
                                  <node concept="37vLTw" id="k8" role="1m5AlR">
                                    <ref role="3cqZAo" node="jG" resolve="parentNode" />
                                    <uo k="s:originTrace" v="n:2528767443165016386" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="k6" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                  <uo k="s:originTrace" v="n:2528767443165021530" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="k2" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp25:50Pb80HwrVl" resolve="enumDeclaration" />
                              <uo k="s:originTrace" v="n:2407637667685556256" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="jF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:2528767443165089262" />
                        <node concept="2YIFZM" id="k9" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:2528767443165091312" />
                          <node concept="2OqwBi" id="ka" role="37wK5m">
                            <uo k="s:originTrace" v="n:2528767443165116925" />
                            <node concept="37vLTw" id="kb" role="2Oq$k0">
                              <ref role="3cqZAo" node="jY" resolve="enumm" />
                              <uo k="s:originTrace" v="n:2407637667685559320" />
                            </node>
                            <node concept="3Tsc0h" id="kc" role="2OqNvi">
                              <ref role="3TtcxE" to="tpce:2TR3acGo7N1" resolve="members" />
                              <uo k="s:originTrace" v="n:2407637667685561627" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="jB" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:2528767443165000032" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="ji" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2528767443165000010" />
        </node>
      </node>
      <node concept="3uibUv" id="iY" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2528767443165000010" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="kd">
    <node concept="39e2AJ" id="ke" role="39e2AI">
      <property role="39e3Y2" value="constraintClass" />
      <node concept="39e2AG" id="kh" role="39e3Y0">
        <ref role="39e2AK" to="tpev:4NfTi62PaXm" resolve="ChildAttributeQualifier_Constraints" />
        <node concept="385nmt" id="kQ" role="385vvn">
          <property role="385vuF" value="ChildAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="kS" role="385v07">
            <property role="3u3nmv" value="5534894399153286998" />
          </node>
        </node>
        <node concept="39e2AT" id="kR" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ChildAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="ki" role="39e3Y0">
        <ref role="39e2AK" to="tpev:6kOHoqX_Z4V" resolve="ChildNodeRefExpression_Constraints" />
        <node concept="385nmt" id="kT" role="385vvn">
          <property role="385vuF" value="ChildNodeRefExpression_Constraints" />
          <node concept="3u3nmq" id="kV" role="385v07">
            <property role="3u3nmv" value="7292653286930772283" />
          </node>
        </node>
        <node concept="39e2AT" id="kU" role="39e2AY">
          <ref role="39e2AS" node="1q" resolve="ChildNodeRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kj" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3Mleoc" resolve="EnumMemberOperation_Constraints" />
        <node concept="385nmt" id="kW" role="385vvn">
          <property role="385vuF" value="EnumMemberOperation_Constraints" />
          <node concept="3u3nmq" id="kY" role="385v07">
            <property role="3u3nmv" value="1241016231436" />
          </node>
        </node>
        <node concept="39e2AT" id="kX" role="39e2AY">
          <ref role="39e2AS" node="74" resolve="EnumMemberOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kk" role="39e3Y0">
        <ref role="39e2AK" to="tpev:45eRmv04iKX" resolve="EnumMemberReference_Constraints" />
        <node concept="385nmt" id="kZ" role="385vvn">
          <property role="385vuF" value="EnumMemberReference_Constraints" />
          <node concept="3u3nmq" id="l1" role="385v07">
            <property role="3u3nmv" value="4705942098322467901" />
          </node>
        </node>
        <node concept="39e2AT" id="l0" role="39e2AY">
          <ref role="39e2AS" node="8I" resolve="EnumMemberReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kl" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFLYZ" resolve="EnumMemberReference_Old_Constraints" />
        <node concept="385nmt" id="l2" role="385vvn">
          <property role="385vuF" value="EnumMemberReference_Old_Constraints" />
          <node concept="3u3nmq" id="l4" role="385v07">
            <property role="3u3nmv" value="1213104857023" />
          </node>
        </node>
        <node concept="39e2AT" id="l3" role="39e2AY">
          <ref role="39e2AS" node="bs" resolve="EnumMemberReference_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="km" role="39e3Y0">
        <ref role="39e2AK" to="tpev:637Y3IJYGP3" resolve="EnumMemberValueRefExpression_Constraints" />
        <node concept="385nmt" id="l5" role="385vvn">
          <property role="385vuF" value="EnumMemberValueRefExpression_Constraints" />
          <node concept="3u3nmq" id="l7" role="385v07">
            <property role="3u3nmv" value="6973815483245710659" />
          </node>
        </node>
        <node concept="39e2AT" id="l6" role="39e2AY">
          <ref role="39e2AS" node="dj" resolve="EnumMemberValueRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kn" role="39e3Y0">
        <ref role="39e2AK" to="tpev:50Pb80HC$1D" resolve="EnumOperation_Constraints" />
        <node concept="385nmt" id="l8" role="385vvn">
          <property role="385vuF" value="EnumOperation_Constraints" />
          <node concept="3u3nmq" id="la" role="385v07">
            <property role="3u3nmv" value="5779574625832943721" />
          </node>
        </node>
        <node concept="39e2AT" id="l9" role="39e2AY">
          <ref role="39e2AS" node="eV" resolve="EnumOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="ko" role="39e3Y0">
        <ref role="39e2AK" to="tpev:28aPEVwajY4" resolve="EnumSwitchExpression_Constraints" />
        <node concept="385nmt" id="lb" role="385vvn">
          <property role="385vuF" value="EnumSwitchExpression_Constraints" />
          <node concept="3u3nmq" id="ld" role="385v07">
            <property role="3u3nmv" value="2453008993630109572" />
          </node>
        </node>
        <node concept="39e2AT" id="lc" role="39e2AY">
          <ref role="39e2AS" node="gq" resolve="EnumSwitchExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kp" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2cnZ9tLr35a" resolve="Enum_MemberLiteral_Constraints" />
        <node concept="385nmt" id="le" role="385vvn">
          <property role="385vuF" value="Enum_MemberLiteral_Constraints" />
          <node concept="3u3nmq" id="lg" role="385v07">
            <property role="3u3nmv" value="2528767443165000010" />
          </node>
        </node>
        <node concept="39e2AT" id="lf" role="39e2AY">
          <ref role="39e2AS" node="i_" resolve="Enum_MemberLiteral_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kq" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1lUJQtrPjSb" resolve="IReferenceOperation_Constraints" />
        <node concept="385nmt" id="lh" role="385vvn">
          <property role="385vuF" value="IReferenceOperation_Constraints" />
          <node concept="3u3nmq" id="lj" role="385v07">
            <property role="3u3nmv" value="1547759872598425099" />
          </node>
        </node>
        <node concept="39e2AT" id="li" role="39e2AY">
          <ref role="39e2AS" node="oV" resolve="IReferenceOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kr" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1Cyzq4PvWDP" resolve="IfInstanceOfVarReference_Constraints" />
        <node concept="385nmt" id="lk" role="385vvn">
          <property role="385vuF" value="IfInstanceOfVarReference_Constraints" />
          <node concept="3u3nmq" id="lm" role="385v07">
            <property role="3u3nmv" value="1883223317721107061" />
          </node>
        </node>
        <node concept="39e2AT" id="ll" role="39e2AY">
          <ref role="39e2AS" node="qs" resolve="IfInstanceOfVarReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="ks" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJL255" resolve="LinkAttributeQualifier_Constraints" />
        <node concept="385nmt" id="ln" role="385vvn">
          <property role="385vuF" value="LinkAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="lp" role="385v07">
            <property role="3u3nmv" value="2788452359611883845" />
          </node>
        </node>
        <node concept="39e2AT" id="lo" role="39e2AY">
          <ref role="39e2AS" node="rN" resolve="LinkAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kt" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2iMJRNx_q1c" resolve="LinkIdRefExpression_Constraints" />
        <node concept="385nmt" id="lq" role="385vvn">
          <property role="385vuF" value="LinkIdRefExpression_Constraints" />
          <node concept="3u3nmq" id="ls" role="385v07">
            <property role="3u3nmv" value="2644386474301431884" />
          </node>
        </node>
        <node concept="39e2AT" id="lr" role="39e2AY">
          <ref role="39e2AS" node="td" resolve="LinkIdRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="ku" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJLWP5" resolve="LinkQualifier_Constraints" />
        <node concept="385nmt" id="lt" role="385vvn">
          <property role="385vuF" value="LinkQualifier_Constraints" />
          <node concept="3u3nmq" id="lv" role="385v07">
            <property role="3u3nmv" value="2788452359612124485" />
          </node>
        </node>
        <node concept="39e2AT" id="lu" role="39e2AY">
          <ref role="39e2AS" node="uq" resolve="LinkQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kv" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hQ8OL2U" resolve="LinkRefExpression_Constraints" />
        <node concept="385nmt" id="lw" role="385vvn">
          <property role="385vuF" value="LinkRefExpression_Constraints" />
          <node concept="3u3nmq" id="ly" role="385v07">
            <property role="3u3nmv" value="1226361213114" />
          </node>
        </node>
        <node concept="39e2AT" id="lx" role="39e2AY">
          <ref role="39e2AS" node="vQ" resolve="LinkRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kw" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFMvK" resolve="LinkRefQualifier_Constraints" />
        <node concept="385nmt" id="lz" role="385vvn">
          <property role="385vuF" value="LinkRefQualifier_Constraints" />
          <node concept="3u3nmq" id="l_" role="385v07">
            <property role="3u3nmv" value="1213104859120" />
          </node>
        </node>
        <node concept="39e2AT" id="l$" role="39e2AY">
          <ref role="39e2AS" node="x3" resolve="LinkRefQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kx" role="39e3Y0">
        <ref role="39e2AK" to="tpev:3xFa6mqMSK8" resolve="ModelPointer_ResolveOperation_Constraints" />
        <node concept="385nmt" id="lA" role="385vvn">
          <property role="385vuF" value="ModelPointer_ResolveOperation_Constraints" />
          <node concept="3u3nmq" id="lC" role="385v07">
            <property role="3u3nmv" value="4065387505485843464" />
          </node>
        </node>
        <node concept="39e2AT" id="lB" role="39e2AY">
          <ref role="39e2AS" node="yI" resolve="ModelPointer_ResolveOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="ky" role="39e3Y0">
        <ref role="39e2AK" to="tpev:v3WHCwUoyj" resolve="ModelReferenceExpression_Constraints" />
        <node concept="385nmt" id="lD" role="385vvn">
          <property role="385vuF" value="ModelReferenceExpression_Constraints" />
          <node concept="3u3nmq" id="lF" role="385v07">
            <property role="3u3nmv" value="559557797393041555" />
          </node>
        </node>
        <node concept="39e2AT" id="lE" role="39e2AY">
          <ref role="39e2AS" node="$s" resolve="ModelReferenceExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kz" role="39e3Y0">
        <ref role="39e2AK" to="tpev:3wj3sjzQS71" resolve="ModuleReferenceExpression_Constraints" />
        <node concept="385nmt" id="lG" role="385vvn">
          <property role="385vuF" value="ModuleReferenceExpression_Constraints" />
          <node concept="3u3nmq" id="lI" role="385v07">
            <property role="3u3nmv" value="4040588429969031617" />
          </node>
        </node>
        <node concept="39e2AT" id="lH" role="39e2AY">
          <ref role="39e2AS" node="$H" resolve="ModuleReferenceExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="k$" role="39e3Y0">
        <ref role="39e2AK" to="tpev:5zEkxuKhrB0" resolve="NodeAttributeQualifier_Constraints" />
        <node concept="385nmt" id="lJ" role="385vvn">
          <property role="385vuF" value="NodeAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="lL" role="385v07">
            <property role="3u3nmv" value="6407023681583036864" />
          </node>
        </node>
        <node concept="39e2AT" id="lK" role="39e2AY">
          <ref role="39e2AS" node="_J" resolve="NodeAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="k_" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1_vO5tEMrHp" resolve="NodePointerExpression_Old_Constraints" />
        <node concept="385nmt" id="lM" role="385vvn">
          <property role="385vuF" value="NodePointerExpression_Old_Constraints" />
          <node concept="3u3nmq" id="lO" role="385v07">
            <property role="3u3nmv" value="1828409047608048473" />
          </node>
        </node>
        <node concept="39e2AT" id="lN" role="39e2AY">
          <ref role="39e2AS" node="B9" resolve="NodePointerExpression_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kA" role="39e3Y0">
        <ref role="39e2AK" to="tpev:5kLyeZleWS_" resolve="NodePointer_GetModelOperation_Constraints" />
        <node concept="385nmt" id="lP" role="385vvn">
          <property role="385vuF" value="NodePointer_GetModelOperation_Constraints" />
          <node concept="3u3nmq" id="lR" role="385v07">
            <property role="3u3nmv" value="6138838330738724389" />
          </node>
        </node>
        <node concept="39e2AT" id="lQ" role="39e2AY">
          <ref role="39e2AS" node="Cs" resolve="NodePointer_GetModelOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kB" role="39e3Y0">
        <ref role="39e2AK" to="tpev:6GTr4nx$g8x" resolve="NodePointer_ResolveOperation_Constraints" />
        <node concept="385nmt" id="lS" role="385vvn">
          <property role="385vuF" value="NodePointer_ResolveOperation_Constraints" />
          <node concept="3u3nmq" id="lU" role="385v07">
            <property role="3u3nmv" value="7726325683123716641" />
          </node>
        </node>
        <node concept="39e2AT" id="lT" role="39e2AY">
          <ref role="39e2AS" node="DX" resolve="NodePointer_ResolveOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kC" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hJBJD17" resolve="NodeRefExpression_Constraints" />
        <node concept="385nmt" id="lV" role="385vvn">
          <property role="385vuF" value="NodeRefExpression_Constraints" />
          <node concept="3u3nmq" id="lX" role="385v07">
            <property role="3u3nmv" value="1219363770439" />
          </node>
        </node>
        <node concept="39e2AT" id="lW" role="39e2AY">
          <ref role="39e2AS" node="FF" resolve="NodeRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kD" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFHXK" resolve="Node_ConceptMethodCall_Constraints" />
        <node concept="385nmt" id="lY" role="385vvn">
          <property role="385vuF" value="Node_ConceptMethodCall_Constraints" />
          <node concept="3u3nmq" id="m0" role="385v07">
            <property role="3u3nmv" value="1213104840560" />
          </node>
        </node>
        <node concept="39e2AT" id="lZ" role="39e2AY">
          <ref role="39e2AS" node="GX" resolve="Node_ConceptMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kE" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFJIX" resolve="Node_IsRoleOperation_Constraints" />
        <node concept="385nmt" id="m1" role="385vvn">
          <property role="385vuF" value="Node_IsRoleOperation_Constraints" />
          <node concept="3u3nmq" id="m3" role="385v07">
            <property role="3u3nmv" value="1213104847805" />
          </node>
        </node>
        <node concept="39e2AT" id="m2" role="39e2AY">
          <ref role="39e2AS" node="MB" resolve="Node_IsRoleOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kF" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJL2nC" resolve="PropertyAttributeQualifier_Constraints" />
        <node concept="385nmt" id="m4" role="385vvn">
          <property role="385vuF" value="PropertyAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="m6" role="385v07">
            <property role="3u3nmv" value="2788452359611885032" />
          </node>
        </node>
        <node concept="39e2AT" id="m5" role="39e2AY">
          <ref role="39e2AS" node="NS" resolve="PropertyAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kG" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2iMJRNxD4tK" resolve="PropertyIdRefExpression_Constraints" />
        <node concept="385nmt" id="m7" role="385vvn">
          <property role="385vuF" value="PropertyIdRefExpression_Constraints" />
          <node concept="3u3nmq" id="m9" role="385v07">
            <property role="3u3nmv" value="2644386474302392176" />
          </node>
        </node>
        <node concept="39e2AT" id="m8" role="39e2AY">
          <ref role="39e2AS" node="Pi" resolve="PropertyIdRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kH" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJLWN0" resolve="PropertyQualifier_Constraints" />
        <node concept="385nmt" id="ma" role="385vvn">
          <property role="385vuF" value="PropertyQualifier_Constraints" />
          <node concept="3u3nmq" id="mc" role="385v07">
            <property role="3u3nmv" value="2788452359612124352" />
          </node>
        </node>
        <node concept="39e2AT" id="mb" role="39e2AY">
          <ref role="39e2AS" node="Qv" resolve="PropertyQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kI" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3HdEKH" resolve="SEnumOperationInvocation_Constraints" />
        <node concept="385nmt" id="md" role="385vvn">
          <property role="385vuF" value="SEnumOperationInvocation_Constraints" />
          <node concept="3u3nmq" id="mf" role="385v07">
            <property role="3u3nmv" value="1240930364461" />
          </node>
        </node>
        <node concept="39e2AT" id="me" role="39e2AY">
          <ref role="39e2AS" node="RM" resolve="SEnumOperationInvocation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kJ" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3HhuTc" resolve="SEnumOperation_Old_Constraints" />
        <node concept="385nmt" id="mg" role="385vvn">
          <property role="385vuF" value="SEnumOperation_Old_Constraints" />
          <node concept="3u3nmq" id="mi" role="385v07">
            <property role="3u3nmv" value="1240931364428" />
          </node>
        </node>
        <node concept="39e2AT" id="mh" role="39e2AY">
          <ref role="39e2AS" node="T0" resolve="SEnumOperation_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kK" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i2YC$13" resolve="SEnum_MemberOperation_Old_Constraints" />
        <node concept="385nmt" id="mj" role="385vvn">
          <property role="385vuF" value="SEnum_MemberOperation_Old_Constraints" />
          <node concept="3u3nmq" id="ml" role="385v07">
            <property role="3u3nmv" value="1240148885571" />
          </node>
        </node>
        <node concept="39e2AT" id="mk" role="39e2AY">
          <ref role="39e2AS" node="Uq" resolve="SEnum_MemberOperation_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kL" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFJE0" resolve="SLinkAccess_Constraints" />
        <node concept="385nmt" id="mm" role="385vvn">
          <property role="385vuF" value="SLinkAccess_Constraints" />
          <node concept="3u3nmq" id="mo" role="385v07">
            <property role="3u3nmv" value="1213104847488" />
          </node>
        </node>
        <node concept="39e2AT" id="mn" role="39e2AY">
          <ref role="39e2AS" node="Wd" resolve="SLinkAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kM" role="39e3Y0">
        <ref role="39e2AK" to="tpev:7iAolAiLBJF" resolve="SLinkImplicitSelect_Constraints" />
        <node concept="385nmt" id="mp" role="385vvn">
          <property role="385vuF" value="SLinkImplicitSelect_Constraints" />
          <node concept="3u3nmq" id="mr" role="385v07">
            <property role="3u3nmv" value="8405512791876074475" />
          </node>
        </node>
        <node concept="39e2AT" id="mq" role="39e2AY">
          <ref role="39e2AS" node="Y6" resolve="SLinkImplicitSelect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kN" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFLFc" resolve="SLinkListAccess_Constraints" />
        <node concept="385nmt" id="ms" role="385vvn">
          <property role="385vuF" value="SLinkListAccess_Constraints" />
          <node concept="3u3nmq" id="mu" role="385v07">
            <property role="3u3nmv" value="1213104855756" />
          </node>
        </node>
        <node concept="39e2AT" id="mt" role="39e2AY">
          <ref role="39e2AS" node="115" resolve="SLinkListAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kO" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFHT6" resolve="SPropertyAccess_Constraints" />
        <node concept="385nmt" id="mv" role="385vvn">
          <property role="385vuF" value="SPropertyAccess_Constraints" />
          <node concept="3u3nmq" id="mx" role="385v07">
            <property role="3u3nmv" value="1213104840262" />
          </node>
        </node>
        <node concept="39e2AT" id="mw" role="39e2AY">
          <ref role="39e2AS" node="12Y" resolve="SPropertyAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="kP" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hLjsY$0" resolve="SearchScope_ContainsOperation_Constraints" />
        <node concept="385nmt" id="my" role="385vvn">
          <property role="385vuF" value="SearchScope_ContainsOperation_Constraints" />
          <node concept="3u3nmq" id="m$" role="385v07">
            <property role="3u3nmv" value="1221170817280" />
          </node>
        </node>
        <node concept="39e2AT" id="mz" role="39e2AY">
          <ref role="39e2AS" node="15q" resolve="SearchScope_ContainsOperation_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kf" role="39e2AI">
      <property role="39e3Y2" value="constraintClassCons" />
      <node concept="39e2AG" id="m_" role="39e3Y0">
        <ref role="39e2AK" to="tpev:4NfTi62PaXm" resolve="ChildAttributeQualifier_Constraints" />
        <node concept="385nmt" id="na" role="385vvn">
          <property role="385vuF" value="ChildAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="nc" role="385v07">
            <property role="3u3nmv" value="5534894399153286998" />
          </node>
        </node>
        <node concept="39e2AT" id="nb" role="39e2AY">
          <ref role="39e2AS" node="3" resolve="ChildAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mA" role="39e3Y0">
        <ref role="39e2AK" to="tpev:6kOHoqX_Z4V" resolve="ChildNodeRefExpression_Constraints" />
        <node concept="385nmt" id="nd" role="385vvn">
          <property role="385vuF" value="ChildNodeRefExpression_Constraints" />
          <node concept="3u3nmq" id="nf" role="385v07">
            <property role="3u3nmv" value="7292653286930772283" />
          </node>
        </node>
        <node concept="39e2AT" id="ne" role="39e2AY">
          <ref role="39e2AS" node="1t" resolve="ChildNodeRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mB" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3Mleoc" resolve="EnumMemberOperation_Constraints" />
        <node concept="385nmt" id="ng" role="385vvn">
          <property role="385vuF" value="EnumMemberOperation_Constraints" />
          <node concept="3u3nmq" id="ni" role="385v07">
            <property role="3u3nmv" value="1241016231436" />
          </node>
        </node>
        <node concept="39e2AT" id="nh" role="39e2AY">
          <ref role="39e2AS" node="77" resolve="EnumMemberOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mC" role="39e3Y0">
        <ref role="39e2AK" to="tpev:45eRmv04iKX" resolve="EnumMemberReference_Constraints" />
        <node concept="385nmt" id="nj" role="385vvn">
          <property role="385vuF" value="EnumMemberReference_Constraints" />
          <node concept="3u3nmq" id="nl" role="385v07">
            <property role="3u3nmv" value="4705942098322467901" />
          </node>
        </node>
        <node concept="39e2AT" id="nk" role="39e2AY">
          <ref role="39e2AS" node="8L" resolve="EnumMemberReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mD" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFLYZ" resolve="EnumMemberReference_Old_Constraints" />
        <node concept="385nmt" id="nm" role="385vvn">
          <property role="385vuF" value="EnumMemberReference_Old_Constraints" />
          <node concept="3u3nmq" id="no" role="385v07">
            <property role="3u3nmv" value="1213104857023" />
          </node>
        </node>
        <node concept="39e2AT" id="nn" role="39e2AY">
          <ref role="39e2AS" node="bv" resolve="EnumMemberReference_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mE" role="39e3Y0">
        <ref role="39e2AK" to="tpev:637Y3IJYGP3" resolve="EnumMemberValueRefExpression_Constraints" />
        <node concept="385nmt" id="np" role="385vvn">
          <property role="385vuF" value="EnumMemberValueRefExpression_Constraints" />
          <node concept="3u3nmq" id="nr" role="385v07">
            <property role="3u3nmv" value="6973815483245710659" />
          </node>
        </node>
        <node concept="39e2AT" id="nq" role="39e2AY">
          <ref role="39e2AS" node="dm" resolve="EnumMemberValueRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mF" role="39e3Y0">
        <ref role="39e2AK" to="tpev:50Pb80HC$1D" resolve="EnumOperation_Constraints" />
        <node concept="385nmt" id="ns" role="385vvn">
          <property role="385vuF" value="EnumOperation_Constraints" />
          <node concept="3u3nmq" id="nu" role="385v07">
            <property role="3u3nmv" value="5779574625832943721" />
          </node>
        </node>
        <node concept="39e2AT" id="nt" role="39e2AY">
          <ref role="39e2AS" node="eY" resolve="EnumOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mG" role="39e3Y0">
        <ref role="39e2AK" to="tpev:28aPEVwajY4" resolve="EnumSwitchExpression_Constraints" />
        <node concept="385nmt" id="nv" role="385vvn">
          <property role="385vuF" value="EnumSwitchExpression_Constraints" />
          <node concept="3u3nmq" id="nx" role="385v07">
            <property role="3u3nmv" value="2453008993630109572" />
          </node>
        </node>
        <node concept="39e2AT" id="nw" role="39e2AY">
          <ref role="39e2AS" node="gt" resolve="EnumSwitchExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mH" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2cnZ9tLr35a" resolve="Enum_MemberLiteral_Constraints" />
        <node concept="385nmt" id="ny" role="385vvn">
          <property role="385vuF" value="Enum_MemberLiteral_Constraints" />
          <node concept="3u3nmq" id="n$" role="385v07">
            <property role="3u3nmv" value="2528767443165000010" />
          </node>
        </node>
        <node concept="39e2AT" id="nz" role="39e2AY">
          <ref role="39e2AS" node="iC" resolve="Enum_MemberLiteral_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mI" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1lUJQtrPjSb" resolve="IReferenceOperation_Constraints" />
        <node concept="385nmt" id="n_" role="385vvn">
          <property role="385vuF" value="IReferenceOperation_Constraints" />
          <node concept="3u3nmq" id="nB" role="385v07">
            <property role="3u3nmv" value="1547759872598425099" />
          </node>
        </node>
        <node concept="39e2AT" id="nA" role="39e2AY">
          <ref role="39e2AS" node="oY" resolve="IReferenceOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mJ" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1Cyzq4PvWDP" resolve="IfInstanceOfVarReference_Constraints" />
        <node concept="385nmt" id="nC" role="385vvn">
          <property role="385vuF" value="IfInstanceOfVarReference_Constraints" />
          <node concept="3u3nmq" id="nE" role="385v07">
            <property role="3u3nmv" value="1883223317721107061" />
          </node>
        </node>
        <node concept="39e2AT" id="nD" role="39e2AY">
          <ref role="39e2AS" node="qv" resolve="IfInstanceOfVarReference_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mK" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJL255" resolve="LinkAttributeQualifier_Constraints" />
        <node concept="385nmt" id="nF" role="385vvn">
          <property role="385vuF" value="LinkAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="nH" role="385v07">
            <property role="3u3nmv" value="2788452359611883845" />
          </node>
        </node>
        <node concept="39e2AT" id="nG" role="39e2AY">
          <ref role="39e2AS" node="rQ" resolve="LinkAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mL" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2iMJRNx_q1c" resolve="LinkIdRefExpression_Constraints" />
        <node concept="385nmt" id="nI" role="385vvn">
          <property role="385vuF" value="LinkIdRefExpression_Constraints" />
          <node concept="3u3nmq" id="nK" role="385v07">
            <property role="3u3nmv" value="2644386474301431884" />
          </node>
        </node>
        <node concept="39e2AT" id="nJ" role="39e2AY">
          <ref role="39e2AS" node="tg" resolve="LinkIdRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mM" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJLWP5" resolve="LinkQualifier_Constraints" />
        <node concept="385nmt" id="nL" role="385vvn">
          <property role="385vuF" value="LinkQualifier_Constraints" />
          <node concept="3u3nmq" id="nN" role="385v07">
            <property role="3u3nmv" value="2788452359612124485" />
          </node>
        </node>
        <node concept="39e2AT" id="nM" role="39e2AY">
          <ref role="39e2AS" node="ut" resolve="LinkQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mN" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hQ8OL2U" resolve="LinkRefExpression_Constraints" />
        <node concept="385nmt" id="nO" role="385vvn">
          <property role="385vuF" value="LinkRefExpression_Constraints" />
          <node concept="3u3nmq" id="nQ" role="385v07">
            <property role="3u3nmv" value="1226361213114" />
          </node>
        </node>
        <node concept="39e2AT" id="nP" role="39e2AY">
          <ref role="39e2AS" node="vT" resolve="LinkRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mO" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFMvK" resolve="LinkRefQualifier_Constraints" />
        <node concept="385nmt" id="nR" role="385vvn">
          <property role="385vuF" value="LinkRefQualifier_Constraints" />
          <node concept="3u3nmq" id="nT" role="385v07">
            <property role="3u3nmv" value="1213104859120" />
          </node>
        </node>
        <node concept="39e2AT" id="nS" role="39e2AY">
          <ref role="39e2AS" node="x6" resolve="LinkRefQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mP" role="39e3Y0">
        <ref role="39e2AK" to="tpev:3xFa6mqMSK8" resolve="ModelPointer_ResolveOperation_Constraints" />
        <node concept="385nmt" id="nU" role="385vvn">
          <property role="385vuF" value="ModelPointer_ResolveOperation_Constraints" />
          <node concept="3u3nmq" id="nW" role="385v07">
            <property role="3u3nmv" value="4065387505485843464" />
          </node>
        </node>
        <node concept="39e2AT" id="nV" role="39e2AY">
          <ref role="39e2AS" node="yL" resolve="ModelPointer_ResolveOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mQ" role="39e3Y0">
        <ref role="39e2AK" to="tpev:v3WHCwUoyj" resolve="ModelReferenceExpression_Constraints" />
        <node concept="385nmt" id="nX" role="385vvn">
          <property role="385vuF" value="ModelReferenceExpression_Constraints" />
          <node concept="3u3nmq" id="nZ" role="385v07">
            <property role="3u3nmv" value="559557797393041555" />
          </node>
        </node>
        <node concept="39e2AT" id="nY" role="39e2AY">
          <ref role="39e2AS" node="$v" resolve="ModelReferenceExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mR" role="39e3Y0">
        <ref role="39e2AK" to="tpev:3wj3sjzQS71" resolve="ModuleReferenceExpression_Constraints" />
        <node concept="385nmt" id="o0" role="385vvn">
          <property role="385vuF" value="ModuleReferenceExpression_Constraints" />
          <node concept="3u3nmq" id="o2" role="385v07">
            <property role="3u3nmv" value="4040588429969031617" />
          </node>
        </node>
        <node concept="39e2AT" id="o1" role="39e2AY">
          <ref role="39e2AS" node="$K" resolve="ModuleReferenceExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mS" role="39e3Y0">
        <ref role="39e2AK" to="tpev:5zEkxuKhrB0" resolve="NodeAttributeQualifier_Constraints" />
        <node concept="385nmt" id="o3" role="385vvn">
          <property role="385vuF" value="NodeAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="o5" role="385v07">
            <property role="3u3nmv" value="6407023681583036864" />
          </node>
        </node>
        <node concept="39e2AT" id="o4" role="39e2AY">
          <ref role="39e2AS" node="_M" resolve="NodeAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mT" role="39e3Y0">
        <ref role="39e2AK" to="tpev:1_vO5tEMrHp" resolve="NodePointerExpression_Old_Constraints" />
        <node concept="385nmt" id="o6" role="385vvn">
          <property role="385vuF" value="NodePointerExpression_Old_Constraints" />
          <node concept="3u3nmq" id="o8" role="385v07">
            <property role="3u3nmv" value="1828409047608048473" />
          </node>
        </node>
        <node concept="39e2AT" id="o7" role="39e2AY">
          <ref role="39e2AS" node="Bc" resolve="NodePointerExpression_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mU" role="39e3Y0">
        <ref role="39e2AK" to="tpev:5kLyeZleWS_" resolve="NodePointer_GetModelOperation_Constraints" />
        <node concept="385nmt" id="o9" role="385vvn">
          <property role="385vuF" value="NodePointer_GetModelOperation_Constraints" />
          <node concept="3u3nmq" id="ob" role="385v07">
            <property role="3u3nmv" value="6138838330738724389" />
          </node>
        </node>
        <node concept="39e2AT" id="oa" role="39e2AY">
          <ref role="39e2AS" node="Cv" resolve="NodePointer_GetModelOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mV" role="39e3Y0">
        <ref role="39e2AK" to="tpev:6GTr4nx$g8x" resolve="NodePointer_ResolveOperation_Constraints" />
        <node concept="385nmt" id="oc" role="385vvn">
          <property role="385vuF" value="NodePointer_ResolveOperation_Constraints" />
          <node concept="3u3nmq" id="oe" role="385v07">
            <property role="3u3nmv" value="7726325683123716641" />
          </node>
        </node>
        <node concept="39e2AT" id="od" role="39e2AY">
          <ref role="39e2AS" node="E0" resolve="NodePointer_ResolveOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mW" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hJBJD17" resolve="NodeRefExpression_Constraints" />
        <node concept="385nmt" id="of" role="385vvn">
          <property role="385vuF" value="NodeRefExpression_Constraints" />
          <node concept="3u3nmq" id="oh" role="385v07">
            <property role="3u3nmv" value="1219363770439" />
          </node>
        </node>
        <node concept="39e2AT" id="og" role="39e2AY">
          <ref role="39e2AS" node="FI" resolve="NodeRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mX" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFHXK" resolve="Node_ConceptMethodCall_Constraints" />
        <node concept="385nmt" id="oi" role="385vvn">
          <property role="385vuF" value="Node_ConceptMethodCall_Constraints" />
          <node concept="3u3nmq" id="ok" role="385v07">
            <property role="3u3nmv" value="1213104840560" />
          </node>
        </node>
        <node concept="39e2AT" id="oj" role="39e2AY">
          <ref role="39e2AS" node="H0" resolve="Node_ConceptMethodCall_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mY" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFJIX" resolve="Node_IsRoleOperation_Constraints" />
        <node concept="385nmt" id="ol" role="385vvn">
          <property role="385vuF" value="Node_IsRoleOperation_Constraints" />
          <node concept="3u3nmq" id="on" role="385v07">
            <property role="3u3nmv" value="1213104847805" />
          </node>
        </node>
        <node concept="39e2AT" id="om" role="39e2AY">
          <ref role="39e2AS" node="ME" resolve="Node_IsRoleOperation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="mZ" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJL2nC" resolve="PropertyAttributeQualifier_Constraints" />
        <node concept="385nmt" id="oo" role="385vvn">
          <property role="385vuF" value="PropertyAttributeQualifier_Constraints" />
          <node concept="3u3nmq" id="oq" role="385v07">
            <property role="3u3nmv" value="2788452359611885032" />
          </node>
        </node>
        <node concept="39e2AT" id="op" role="39e2AY">
          <ref role="39e2AS" node="NV" resolve="PropertyAttributeQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n0" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2iMJRNxD4tK" resolve="PropertyIdRefExpression_Constraints" />
        <node concept="385nmt" id="or" role="385vvn">
          <property role="385vuF" value="PropertyIdRefExpression_Constraints" />
          <node concept="3u3nmq" id="ot" role="385v07">
            <property role="3u3nmv" value="2644386474302392176" />
          </node>
        </node>
        <node concept="39e2AT" id="os" role="39e2AY">
          <ref role="39e2AS" node="Pl" resolve="PropertyIdRefExpression_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n1" role="39e3Y0">
        <ref role="39e2AK" to="tpev:2qM$EmJLWN0" resolve="PropertyQualifier_Constraints" />
        <node concept="385nmt" id="ou" role="385vvn">
          <property role="385vuF" value="PropertyQualifier_Constraints" />
          <node concept="3u3nmq" id="ow" role="385v07">
            <property role="3u3nmv" value="2788452359612124352" />
          </node>
        </node>
        <node concept="39e2AT" id="ov" role="39e2AY">
          <ref role="39e2AS" node="Qy" resolve="PropertyQualifier_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n2" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3HdEKH" resolve="SEnumOperationInvocation_Constraints" />
        <node concept="385nmt" id="ox" role="385vvn">
          <property role="385vuF" value="SEnumOperationInvocation_Constraints" />
          <node concept="3u3nmq" id="oz" role="385v07">
            <property role="3u3nmv" value="1240930364461" />
          </node>
        </node>
        <node concept="39e2AT" id="oy" role="39e2AY">
          <ref role="39e2AS" node="RP" resolve="SEnumOperationInvocation_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n3" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i3HhuTc" resolve="SEnumOperation_Old_Constraints" />
        <node concept="385nmt" id="o$" role="385vvn">
          <property role="385vuF" value="SEnumOperation_Old_Constraints" />
          <node concept="3u3nmq" id="oA" role="385v07">
            <property role="3u3nmv" value="1240931364428" />
          </node>
        </node>
        <node concept="39e2AT" id="o_" role="39e2AY">
          <ref role="39e2AS" node="T3" resolve="SEnumOperation_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n4" role="39e3Y0">
        <ref role="39e2AK" to="tpev:i2YC$13" resolve="SEnum_MemberOperation_Old_Constraints" />
        <node concept="385nmt" id="oB" role="385vvn">
          <property role="385vuF" value="SEnum_MemberOperation_Old_Constraints" />
          <node concept="3u3nmq" id="oD" role="385v07">
            <property role="3u3nmv" value="1240148885571" />
          </node>
        </node>
        <node concept="39e2AT" id="oC" role="39e2AY">
          <ref role="39e2AS" node="Ut" resolve="SEnum_MemberOperation_Old_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n5" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFJE0" resolve="SLinkAccess_Constraints" />
        <node concept="385nmt" id="oE" role="385vvn">
          <property role="385vuF" value="SLinkAccess_Constraints" />
          <node concept="3u3nmq" id="oG" role="385v07">
            <property role="3u3nmv" value="1213104847488" />
          </node>
        </node>
        <node concept="39e2AT" id="oF" role="39e2AY">
          <ref role="39e2AS" node="Wg" resolve="SLinkAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n6" role="39e3Y0">
        <ref role="39e2AK" to="tpev:7iAolAiLBJF" resolve="SLinkImplicitSelect_Constraints" />
        <node concept="385nmt" id="oH" role="385vvn">
          <property role="385vuF" value="SLinkImplicitSelect_Constraints" />
          <node concept="3u3nmq" id="oJ" role="385v07">
            <property role="3u3nmv" value="8405512791876074475" />
          </node>
        </node>
        <node concept="39e2AT" id="oI" role="39e2AY">
          <ref role="39e2AS" node="Y9" resolve="SLinkImplicitSelect_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n7" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFLFc" resolve="SLinkListAccess_Constraints" />
        <node concept="385nmt" id="oK" role="385vvn">
          <property role="385vuF" value="SLinkListAccess_Constraints" />
          <node concept="3u3nmq" id="oM" role="385v07">
            <property role="3u3nmv" value="1213104855756" />
          </node>
        </node>
        <node concept="39e2AT" id="oL" role="39e2AY">
          <ref role="39e2AS" node="118" resolve="SLinkListAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n8" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hDMFHT6" resolve="SPropertyAccess_Constraints" />
        <node concept="385nmt" id="oN" role="385vvn">
          <property role="385vuF" value="SPropertyAccess_Constraints" />
          <node concept="3u3nmq" id="oP" role="385v07">
            <property role="3u3nmv" value="1213104840262" />
          </node>
        </node>
        <node concept="39e2AT" id="oO" role="39e2AY">
          <ref role="39e2AS" node="131" resolve="SPropertyAccess_Constraints" />
        </node>
      </node>
      <node concept="39e2AG" id="n9" role="39e3Y0">
        <ref role="39e2AK" to="tpev:hLjsY$0" resolve="SearchScope_ContainsOperation_Constraints" />
        <node concept="385nmt" id="oQ" role="385vvn">
          <property role="385vuF" value="SearchScope_ContainsOperation_Constraints" />
          <node concept="3u3nmq" id="oS" role="385v07">
            <property role="3u3nmv" value="1221170817280" />
          </node>
        </node>
        <node concept="39e2AT" id="oR" role="39e2AY">
          <ref role="39e2AS" node="15t" resolve="SearchScope_ContainsOperation_Constraints" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="kg" role="39e2AI">
      <property role="39e3Y2" value="aspectDescriptorClass" />
      <node concept="39e2AG" id="oT" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="oU" role="39e2AY">
          <ref role="39e2AS" node="2C" resolve="ConstraintsAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="oV">
    <property role="3GE5qa" value="operation.reference" />
    <property role="TrG5h" value="IReferenceOperation_Constraints" />
    <uo k="s:originTrace" v="n:1547759872598425099" />
    <node concept="3Tm1VV" id="oW" role="1B3o_S">
      <uo k="s:originTrace" v="n:1547759872598425099" />
    </node>
    <node concept="3uibUv" id="oX" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1547759872598425099" />
    </node>
    <node concept="3clFbW" id="oY" role="jymVt">
      <uo k="s:originTrace" v="n:1547759872598425099" />
      <node concept="37vLTG" id="p1" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="3uibUv" id="p4" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
        </node>
      </node>
      <node concept="3cqZAl" id="p2" role="3clF45">
        <uo k="s:originTrace" v="n:1547759872598425099" />
      </node>
      <node concept="3clFbS" id="p3" role="3clF47">
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="XkiVB" id="p5" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
          <node concept="1BaE9c" id="p7" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IReferenceOperation$nm" />
            <uo k="s:originTrace" v="n:1547759872598425099" />
            <node concept="2YIFZM" id="p9" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:1547759872598425099" />
              <node concept="11gdke" id="pa" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1547759872598425099" />
              </node>
              <node concept="11gdke" id="pb" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1547759872598425099" />
              </node>
              <node concept="11gdke" id="pc" role="37wK5m">
                <property role="11gdj1" value="157abf675bd53df2L" />
                <uo k="s:originTrace" v="n:1547759872598425099" />
              </node>
              <node concept="Xl_RD" id="pd" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.IReferenceOperation" />
                <uo k="s:originTrace" v="n:1547759872598425099" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="p8" role="37wK5m">
            <ref role="3cqZAo" node="p1" resolve="initContext" />
            <uo k="s:originTrace" v="n:1547759872598425099" />
          </node>
        </node>
        <node concept="3clFbF" id="p6" role="3cqZAp">
          <uo k="s:originTrace" v="n:1547759872598425099" />
          <node concept="1rXfSq" id="pe" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1547759872598425099" />
            <node concept="2ShNRf" id="pf" role="37wK5m">
              <uo k="s:originTrace" v="n:1547759872598425099" />
              <node concept="YeOm9" id="pg" role="2ShVmc">
                <uo k="s:originTrace" v="n:1547759872598425099" />
                <node concept="1Y3b0j" id="ph" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1547759872598425099" />
                  <node concept="3Tm1VV" id="pi" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1547759872598425099" />
                  </node>
                  <node concept="3clFb_" id="pj" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1547759872598425099" />
                    <node concept="3Tm1VV" id="pm" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                    </node>
                    <node concept="2AHcQZ" id="pn" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                    </node>
                    <node concept="3uibUv" id="po" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                    </node>
                    <node concept="37vLTG" id="pp" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                      <node concept="3uibUv" id="ps" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                      <node concept="2AHcQZ" id="pt" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="pq" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                      <node concept="3uibUv" id="pu" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                      <node concept="2AHcQZ" id="pv" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="pr" role="3clF47">
                      <uo k="s:originTrace" v="n:1547759872598425099" />
                      <node concept="3cpWs8" id="pw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                        <node concept="3cpWsn" id="p_" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1547759872598425099" />
                          <node concept="10P_77" id="pA" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1547759872598425099" />
                          </node>
                          <node concept="1rXfSq" id="pB" role="33vP2m">
                            <ref role="37wK5l" node="p0" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1547759872598425099" />
                            <node concept="2OqwBi" id="pC" role="37wK5m">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                              <node concept="37vLTw" id="pG" role="2Oq$k0">
                                <ref role="3cqZAo" node="pp" resolve="context" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                              <node concept="liA8E" id="pH" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pD" role="37wK5m">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                              <node concept="37vLTw" id="pI" role="2Oq$k0">
                                <ref role="3cqZAo" node="pp" resolve="context" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                              <node concept="liA8E" id="pJ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pE" role="37wK5m">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                              <node concept="37vLTw" id="pK" role="2Oq$k0">
                                <ref role="3cqZAo" node="pp" resolve="context" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                              <node concept="liA8E" id="pL" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="pF" role="37wK5m">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                              <node concept="37vLTw" id="pM" role="2Oq$k0">
                                <ref role="3cqZAo" node="pp" resolve="context" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                              <node concept="liA8E" id="pN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="px" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                      <node concept="3clFbJ" id="py" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                        <node concept="3clFbS" id="pO" role="3clFbx">
                          <uo k="s:originTrace" v="n:1547759872598425099" />
                          <node concept="3clFbF" id="pQ" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1547759872598425099" />
                            <node concept="2OqwBi" id="pR" role="3clFbG">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                              <node concept="37vLTw" id="pS" role="2Oq$k0">
                                <ref role="3cqZAo" node="pq" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                              </node>
                              <node concept="liA8E" id="pT" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1547759872598425099" />
                                <node concept="1dyn4i" id="pU" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1547759872598425099" />
                                  <node concept="2ShNRf" id="pV" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1547759872598425099" />
                                    <node concept="1pGfFk" id="pW" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1547759872598425099" />
                                      <node concept="Xl_RD" id="pX" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:1547759872598425099" />
                                      </node>
                                      <node concept="Xl_RD" id="pY" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536563542" />
                                        <uo k="s:originTrace" v="n:1547759872598425099" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="pP" role="3clFbw">
                          <uo k="s:originTrace" v="n:1547759872598425099" />
                          <node concept="3y3z36" id="pZ" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1547759872598425099" />
                            <node concept="10Nm6u" id="q1" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                            </node>
                            <node concept="37vLTw" id="q2" role="3uHU7B">
                              <ref role="3cqZAo" node="pq" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="q0" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1547759872598425099" />
                            <node concept="37vLTw" id="q3" role="3fr31v">
                              <ref role="3cqZAo" node="p_" resolve="result" />
                              <uo k="s:originTrace" v="n:1547759872598425099" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="pz" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                      </node>
                      <node concept="3clFbF" id="p$" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1547759872598425099" />
                        <node concept="37vLTw" id="q4" role="3clFbG">
                          <ref role="3cqZAo" node="p_" resolve="result" />
                          <uo k="s:originTrace" v="n:1547759872598425099" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="pk" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1547759872598425099" />
                  </node>
                  <node concept="3uibUv" id="pl" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1547759872598425099" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oZ" role="jymVt">
      <uo k="s:originTrace" v="n:1547759872598425099" />
    </node>
    <node concept="2YIFZL" id="p0" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1547759872598425099" />
      <node concept="10P_77" id="q5" role="3clF45">
        <uo k="s:originTrace" v="n:1547759872598425099" />
      </node>
      <node concept="3Tm6S6" id="q6" role="1B3o_S">
        <uo k="s:originTrace" v="n:1547759872598425099" />
      </node>
      <node concept="3clFbS" id="q7" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536563543" />
        <node concept="3clFbF" id="qc" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563544" />
          <node concept="2OqwBi" id="qd" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536563545" />
            <node concept="1UaxmW" id="qe" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536563546" />
              <node concept="1YaCAy" id="qg" role="1Ub_4A">
                <property role="TrG5h" value="sReferenceType" />
                <ref role="1YaFvo" to="tp25:7Ac3mvqBi5P" resolve="SReferenceType" />
                <uo k="s:originTrace" v="n:1227128029536563547" />
              </node>
              <node concept="2OqwBi" id="qh" role="1Ub_4B">
                <uo k="s:originTrace" v="n:1227128029536563548" />
                <node concept="2OqwBi" id="qi" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536563549" />
                  <node concept="1PxgMI" id="qk" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <uo k="s:originTrace" v="n:1227128029536563550" />
                    <node concept="37vLTw" id="qm" role="1m5AlR">
                      <ref role="3cqZAo" node="q9" resolve="parentNode" />
                      <uo k="s:originTrace" v="n:1227128029536563551" />
                    </node>
                    <node concept="chp4Y" id="qn" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <uo k="s:originTrace" v="n:1227128029536563552" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="ql" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:1227128029536563553" />
                  </node>
                </node>
                <node concept="3JvlWi" id="qj" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536563554" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="qf" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536563555" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="q8" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="3uibUv" id="qo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
        </node>
      </node>
      <node concept="37vLTG" id="q9" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="3uibUv" id="qp" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
        </node>
      </node>
      <node concept="37vLTG" id="qa" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="3uibUv" id="qq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
        </node>
      </node>
      <node concept="37vLTG" id="qb" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1547759872598425099" />
        <node concept="3uibUv" id="qr" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1547759872598425099" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qs">
    <property role="TrG5h" value="IfInstanceOfVarReference_Constraints" />
    <uo k="s:originTrace" v="n:1883223317721107061" />
    <node concept="3Tm1VV" id="qt" role="1B3o_S">
      <uo k="s:originTrace" v="n:1883223317721107061" />
    </node>
    <node concept="3uibUv" id="qu" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1883223317721107061" />
    </node>
    <node concept="3clFbW" id="qv" role="jymVt">
      <uo k="s:originTrace" v="n:1883223317721107061" />
      <node concept="37vLTG" id="qy" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1883223317721107061" />
        <node concept="3uibUv" id="q_" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
      </node>
      <node concept="3cqZAl" id="qz" role="3clF45">
        <uo k="s:originTrace" v="n:1883223317721107061" />
      </node>
      <node concept="3clFbS" id="q$" role="3clF47">
        <uo k="s:originTrace" v="n:1883223317721107061" />
        <node concept="XkiVB" id="qA" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
          <node concept="1BaE9c" id="qC" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="IfInstanceOfVarReference$VR" />
            <uo k="s:originTrace" v="n:1883223317721107061" />
            <node concept="2YIFZM" id="qE" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1883223317721107061" />
              <node concept="11gdke" id="qF" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
              </node>
              <node concept="11gdke" id="qG" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
              </node>
              <node concept="11gdke" id="qH" role="37wK5m">
                <property role="11gdj1" value="1a228da1357fca73L" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
              </node>
              <node concept="Xl_RD" id="qI" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="qD" role="37wK5m">
            <ref role="3cqZAo" node="qy" resolve="initContext" />
            <uo k="s:originTrace" v="n:1883223317721107061" />
          </node>
        </node>
        <node concept="3clFbF" id="qB" role="3cqZAp">
          <uo k="s:originTrace" v="n:1883223317721107061" />
          <node concept="1rXfSq" id="qJ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1883223317721107061" />
            <node concept="2ShNRf" id="qK" role="37wK5m">
              <uo k="s:originTrace" v="n:1883223317721107061" />
              <node concept="1pGfFk" id="qL" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="qN" resolve="IfInstanceOfVarReference_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
                <node concept="Xjq3P" id="qM" role="37wK5m">
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qw" role="jymVt">
      <uo k="s:originTrace" v="n:1883223317721107061" />
    </node>
    <node concept="312cEu" id="qx" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1883223317721107061" />
      <node concept="3clFbW" id="qN" role="jymVt">
        <uo k="s:originTrace" v="n:1883223317721107061" />
        <node concept="37vLTG" id="qQ" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
          <node concept="3uibUv" id="qT" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1883223317721107061" />
          </node>
        </node>
        <node concept="3cqZAl" id="qR" role="3clF45">
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
        <node concept="3clFbS" id="qS" role="3clF47">
          <uo k="s:originTrace" v="n:1883223317721107061" />
          <node concept="XkiVB" id="qU" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1883223317721107061" />
            <node concept="1BaE9c" id="qV" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="baseVariableDeclaration$v20M" />
              <uo k="s:originTrace" v="n:1883223317721107061" />
              <node concept="2YIFZM" id="qZ" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1883223317721107061" />
                <node concept="11gdke" id="r0" role="37wK5m">
                  <property role="11gdj1" value="f3061a5392264cc5L" />
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
                <node concept="11gdke" id="r1" role="37wK5m">
                  <property role="11gdj1" value="a443f952ceaf5816L" />
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
                <node concept="11gdke" id="r2" role="37wK5m">
                  <property role="11gdj1" value="4c4b92003e49a704L" />
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
                <node concept="11gdke" id="r3" role="37wK5m">
                  <property role="11gdj1" value="4c4b92003e49a705L" />
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
                <node concept="Xl_RD" id="r4" role="37wK5m">
                  <property role="Xl_RC" value="baseVariableDeclaration" />
                  <uo k="s:originTrace" v="n:1883223317721107061" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="qW" role="37wK5m">
              <ref role="3cqZAo" node="qQ" resolve="container" />
              <uo k="s:originTrace" v="n:1883223317721107061" />
            </node>
            <node concept="3clFbT" id="qX" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1883223317721107061" />
            </node>
            <node concept="3clFbT" id="qY" role="37wK5m">
              <uo k="s:originTrace" v="n:1883223317721107061" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="qO" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1883223317721107061" />
        <node concept="3Tm1VV" id="r5" role="1B3o_S">
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
        <node concept="3uibUv" id="r6" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
        <node concept="2AHcQZ" id="r7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
        <node concept="3clFbS" id="r8" role="3clF47">
          <uo k="s:originTrace" v="n:1883223317721107061" />
          <node concept="3cpWs6" id="ra" role="3cqZAp">
            <uo k="s:originTrace" v="n:1883223317721107061" />
            <node concept="2ShNRf" id="rb" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800563" />
              <node concept="YeOm9" id="rc" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800563" />
                <node concept="1Y3b0j" id="rd" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800563" />
                  <node concept="3Tm1VV" id="re" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800563" />
                  </node>
                  <node concept="3clFb_" id="rf" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800563" />
                    <node concept="3Tm1VV" id="rh" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                    <node concept="3uibUv" id="ri" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                    <node concept="3clFbS" id="rj" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                      <node concept="3cpWs6" id="rl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800563" />
                        <node concept="2ShNRf" id="rm" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800563" />
                          <node concept="1pGfFk" id="rn" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800563" />
                            <node concept="Xl_RD" id="ro" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800563" />
                            </node>
                            <node concept="Xl_RD" id="rp" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800563" />
                              <uo k="s:originTrace" v="n:6836281137582800563" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="rk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="rg" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800563" />
                    <node concept="3Tm1VV" id="rq" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                    <node concept="3uibUv" id="rr" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                    <node concept="37vLTG" id="rs" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                      <node concept="3uibUv" id="rv" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800563" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="rt" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                      <node concept="3clFbF" id="rw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800565" />
                        <node concept="2YIFZM" id="rx" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582800784" />
                          <node concept="2OqwBi" id="ry" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582800785" />
                            <node concept="2OqwBi" id="rz" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582800786" />
                              <node concept="1DoJHT" id="r_" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582800787" />
                                <node concept="3uibUv" id="rB" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="rC" role="1EMhIo">
                                  <ref role="3cqZAo" node="rs" resolve="_context" />
                                </node>
                              </node>
                              <node concept="z$bX8" id="rA" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582800788" />
                                <node concept="1xMEDy" id="rD" role="1xVPHs">
                                  <uo k="s:originTrace" v="n:6836281137582800789" />
                                  <node concept="chp4Y" id="rE" role="ri$Ld">
                                    <ref role="cht4Q" to="tp25:1Cyzq4Pv$D4" resolve="IfInstanceOfStatement" />
                                    <uo k="s:originTrace" v="n:6836281137582800790" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3$u5V9" id="r$" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582800791" />
                              <node concept="1bVj0M" id="rF" role="23t8la">
                                <uo k="s:originTrace" v="n:6836281137582800792" />
                                <node concept="3clFbS" id="rG" role="1bW5cS">
                                  <uo k="s:originTrace" v="n:6836281137582800793" />
                                  <node concept="3clFbF" id="rI" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582800794" />
                                    <node concept="2OqwBi" id="rJ" role="3clFbG">
                                      <uo k="s:originTrace" v="n:6836281137582800795" />
                                      <node concept="37vLTw" id="rK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="rH" resolve="it" />
                                        <uo k="s:originTrace" v="n:6836281137582800796" />
                                      </node>
                                      <node concept="3TrEf2" id="rL" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D7" resolve="variable" />
                                        <uo k="s:originTrace" v="n:6836281137582800797" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="rH" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <uo k="s:originTrace" v="n:6847626768367732476" />
                                  <node concept="2jxLKc" id="rM" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6847626768367732477" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ru" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800563" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="r9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1883223317721107061" />
        </node>
      </node>
      <node concept="3uibUv" id="qP" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1883223317721107061" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="rN">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="LinkAttributeQualifier_Constraints" />
    <uo k="s:originTrace" v="n:2788452359611883845" />
    <node concept="3Tm1VV" id="rO" role="1B3o_S">
      <uo k="s:originTrace" v="n:2788452359611883845" />
    </node>
    <node concept="3uibUv" id="rP" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2788452359611883845" />
    </node>
    <node concept="3clFbW" id="rQ" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359611883845" />
      <node concept="37vLTG" id="rT" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2788452359611883845" />
        <node concept="3uibUv" id="rW" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
      </node>
      <node concept="3cqZAl" id="rU" role="3clF45">
        <uo k="s:originTrace" v="n:2788452359611883845" />
      </node>
      <node concept="3clFbS" id="rV" role="3clF47">
        <uo k="s:originTrace" v="n:2788452359611883845" />
        <node concept="XkiVB" id="rX" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
          <node concept="1BaE9c" id="rZ" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LinkAttributeQualifier$rf" />
            <uo k="s:originTrace" v="n:2788452359611883845" />
            <node concept="2YIFZM" id="s1" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2788452359611883845" />
              <node concept="11gdke" id="s2" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
              </node>
              <node concept="11gdke" id="s3" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
              </node>
              <node concept="11gdke" id="s4" role="37wK5m">
                <property role="11gdj1" value="58ea5217b045b9b7L" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
              </node>
              <node concept="Xl_RD" id="s5" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.LinkAttributeQualifier" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="s0" role="37wK5m">
            <ref role="3cqZAo" node="rT" resolve="initContext" />
            <uo k="s:originTrace" v="n:2788452359611883845" />
          </node>
        </node>
        <node concept="3clFbF" id="rY" role="3cqZAp">
          <uo k="s:originTrace" v="n:2788452359611883845" />
          <node concept="1rXfSq" id="s6" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2788452359611883845" />
            <node concept="2ShNRf" id="s7" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359611883845" />
              <node concept="1pGfFk" id="s8" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="sa" resolve="LinkAttributeQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
                <node concept="Xjq3P" id="s9" role="37wK5m">
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="rR" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359611883845" />
    </node>
    <node concept="312cEu" id="rS" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2788452359611883845" />
      <node concept="3clFbW" id="sa" role="jymVt">
        <uo k="s:originTrace" v="n:2788452359611883845" />
        <node concept="37vLTG" id="sd" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
          <node concept="3uibUv" id="sg" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359611883845" />
          </node>
        </node>
        <node concept="3cqZAl" id="se" role="3clF45">
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
        <node concept="3clFbS" id="sf" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359611883845" />
          <node concept="XkiVB" id="sh" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359611883845" />
            <node concept="1BaE9c" id="si" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="attributeConcept$x5T0" />
              <uo k="s:originTrace" v="n:2788452359611883845" />
              <node concept="2YIFZM" id="sm" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2788452359611883845" />
                <node concept="11gdke" id="sn" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
                <node concept="11gdke" id="so" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
                <node concept="11gdke" id="sp" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045b9b7L" />
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
                <node concept="11gdke" id="sq" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045b9b8L" />
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
                <node concept="Xl_RD" id="sr" role="37wK5m">
                  <property role="Xl_RC" value="attributeConcept" />
                  <uo k="s:originTrace" v="n:2788452359611883845" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="sj" role="37wK5m">
              <ref role="3cqZAo" node="sd" resolve="container" />
              <uo k="s:originTrace" v="n:2788452359611883845" />
            </node>
            <node concept="3clFbT" id="sk" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2788452359611883845" />
            </node>
            <node concept="3clFbT" id="sl" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359611883845" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="sb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2788452359611883845" />
        <node concept="3Tm1VV" id="ss" role="1B3o_S">
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
        <node concept="3uibUv" id="st" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
        <node concept="2AHcQZ" id="su" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
        <node concept="3clFbS" id="sv" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359611883845" />
          <node concept="3cpWs6" id="sx" role="3cqZAp">
            <uo k="s:originTrace" v="n:2788452359611883845" />
            <node concept="2ShNRf" id="sy" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800278" />
              <node concept="YeOm9" id="sz" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800278" />
                <node concept="1Y3b0j" id="s$" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800278" />
                  <node concept="3Tm1VV" id="s_" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800278" />
                  </node>
                  <node concept="3clFb_" id="sA" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800278" />
                    <node concept="3Tm1VV" id="sC" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                    <node concept="3uibUv" id="sD" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                    <node concept="3clFbS" id="sE" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                      <node concept="3cpWs6" id="sG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800278" />
                        <node concept="2ShNRf" id="sH" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800278" />
                          <node concept="1pGfFk" id="sI" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800278" />
                            <node concept="Xl_RD" id="sJ" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800278" />
                            </node>
                            <node concept="Xl_RD" id="sK" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800278" />
                              <uo k="s:originTrace" v="n:6836281137582800278" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="sF" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="sB" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800278" />
                    <node concept="3Tm1VV" id="sL" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                    <node concept="3uibUv" id="sM" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                    <node concept="37vLTG" id="sN" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                      <node concept="3uibUv" id="sQ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800278" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="sO" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                      <node concept="3clFbF" id="sR" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800280" />
                        <node concept="2YIFZM" id="sS" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582800467" />
                          <node concept="2YIFZM" id="sT" role="37wK5m">
                            <ref role="37wK5l" to="tpcn:6_gUeurcK7u" resolve="getApplicableAttributes" />
                            <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                            <uo k="s:originTrace" v="n:6836281137582800468" />
                            <node concept="1PxgMI" id="sU" role="37wK5m">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582800469" />
                              <node concept="1eOMI4" id="sW" role="1m5AlR">
                                <uo k="s:originTrace" v="n:6836281137582800470" />
                                <node concept="3K4zz7" id="sY" role="1eOMHV">
                                  <uo k="s:originTrace" v="n:6836281137582800471" />
                                  <node concept="1DoJHT" id="sZ" role="3K4E3e">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582800472" />
                                    <node concept="3uibUv" id="t2" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="t3" role="1EMhIo">
                                      <ref role="3cqZAo" node="sN" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="t0" role="3K4Cdx">
                                    <uo k="s:originTrace" v="n:6836281137582800473" />
                                    <node concept="1DoJHT" id="t4" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582800474" />
                                      <node concept="3uibUv" id="t6" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="t7" role="1EMhIo">
                                        <ref role="3cqZAo" node="sN" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="3w_OXm" id="t5" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582800475" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="t1" role="3K4GZi">
                                    <uo k="s:originTrace" v="n:6836281137582800476" />
                                    <node concept="1DoJHT" id="t8" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582800477" />
                                      <node concept="3uibUv" id="ta" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="tb" role="1EMhIo">
                                        <ref role="3cqZAo" node="sN" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="t9" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582800478" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="chp4Y" id="sX" role="3oSUPX">
                                <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                                <uo k="s:originTrace" v="n:6836281137582800480" />
                              </node>
                            </node>
                            <node concept="2tJFMh" id="sV" role="37wK5m">
                              <uo k="s:originTrace" v="n:8525822767680261669" />
                              <node concept="ZC_QK" id="tc" role="2tJFKM">
                                <ref role="2aWVGs" to="tpck:2ULFgo8_XDh" resolve="LinkAttribute" />
                                <uo k="s:originTrace" v="n:8525822767680261668" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="sP" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800278" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="sw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2788452359611883845" />
        </node>
      </node>
      <node concept="3uibUv" id="sc" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2788452359611883845" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="td">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="LinkIdRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:2644386474301431884" />
    <node concept="3Tm1VV" id="te" role="1B3o_S">
      <uo k="s:originTrace" v="n:2644386474301431884" />
    </node>
    <node concept="3uibUv" id="tf" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2644386474301431884" />
    </node>
    <node concept="3clFbW" id="tg" role="jymVt">
      <uo k="s:originTrace" v="n:2644386474301431884" />
      <node concept="37vLTG" id="tj" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2644386474301431884" />
        <node concept="3uibUv" id="tm" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
      </node>
      <node concept="3cqZAl" id="tk" role="3clF45">
        <uo k="s:originTrace" v="n:2644386474301431884" />
      </node>
      <node concept="3clFbS" id="tl" role="3clF47">
        <uo k="s:originTrace" v="n:2644386474301431884" />
        <node concept="XkiVB" id="tn" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
          <node concept="1BaE9c" id="tp" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LinkIdRefExpression$zk" />
            <uo k="s:originTrace" v="n:2644386474301431884" />
            <node concept="2YIFZM" id="tr" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2644386474301431884" />
              <node concept="11gdke" id="ts" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
              </node>
              <node concept="11gdke" id="tt" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
              </node>
              <node concept="11gdke" id="tu" role="37wK5m">
                <property role="11gdj1" value="24b2bf7ce1957615L" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
              </node>
              <node concept="Xl_RD" id="tv" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tq" role="37wK5m">
            <ref role="3cqZAo" node="tj" resolve="initContext" />
            <uo k="s:originTrace" v="n:2644386474301431884" />
          </node>
        </node>
        <node concept="3clFbF" id="to" role="3cqZAp">
          <uo k="s:originTrace" v="n:2644386474301431884" />
          <node concept="1rXfSq" id="tw" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2644386474301431884" />
            <node concept="2ShNRf" id="tx" role="37wK5m">
              <uo k="s:originTrace" v="n:2644386474301431884" />
              <node concept="1pGfFk" id="ty" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="t$" resolve="LinkIdRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
                <node concept="Xjq3P" id="tz" role="37wK5m">
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="th" role="jymVt">
      <uo k="s:originTrace" v="n:2644386474301431884" />
    </node>
    <node concept="312cEu" id="ti" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2644386474301431884" />
      <node concept="3clFbW" id="t$" role="jymVt">
        <uo k="s:originTrace" v="n:2644386474301431884" />
        <node concept="37vLTG" id="tB" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
          <node concept="3uibUv" id="tE" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2644386474301431884" />
          </node>
        </node>
        <node concept="3cqZAl" id="tC" role="3clF45">
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
        <node concept="3clFbS" id="tD" role="3clF47">
          <uo k="s:originTrace" v="n:2644386474301431884" />
          <node concept="XkiVB" id="tF" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2644386474301431884" />
            <node concept="1BaE9c" id="tG" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="linkDeclaration$Paax" />
              <uo k="s:originTrace" v="n:2644386474301431884" />
              <node concept="2YIFZM" id="tK" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2644386474301431884" />
                <node concept="11gdke" id="tL" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
                <node concept="11gdke" id="tM" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
                <node concept="11gdke" id="tN" role="37wK5m">
                  <property role="11gdj1" value="24b2bf7ce1957615L" />
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
                <node concept="11gdke" id="tO" role="37wK5m">
                  <property role="11gdj1" value="24b2bf7ce1957617L" />
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
                <node concept="Xl_RD" id="tP" role="37wK5m">
                  <property role="Xl_RC" value="linkDeclaration" />
                  <uo k="s:originTrace" v="n:2644386474301431884" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tH" role="37wK5m">
              <ref role="3cqZAo" node="tB" resolve="container" />
              <uo k="s:originTrace" v="n:2644386474301431884" />
            </node>
            <node concept="3clFbT" id="tI" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2644386474301431884" />
            </node>
            <node concept="3clFbT" id="tJ" role="37wK5m">
              <uo k="s:originTrace" v="n:2644386474301431884" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="t_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2644386474301431884" />
        <node concept="3Tm1VV" id="tQ" role="1B3o_S">
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
        <node concept="3uibUv" id="tR" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
        <node concept="2AHcQZ" id="tS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
        <node concept="3clFbS" id="tT" role="3clF47">
          <uo k="s:originTrace" v="n:2644386474301431884" />
          <node concept="3cpWs6" id="tV" role="3cqZAp">
            <uo k="s:originTrace" v="n:2644386474301431884" />
            <node concept="2ShNRf" id="tW" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799436" />
              <node concept="YeOm9" id="tX" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799436" />
                <node concept="1Y3b0j" id="tY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799436" />
                  <node concept="3Tm1VV" id="tZ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799436" />
                  </node>
                  <node concept="3clFb_" id="u0" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799436" />
                    <node concept="3Tm1VV" id="u2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                    <node concept="3uibUv" id="u3" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                    <node concept="3clFbS" id="u4" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                      <node concept="3cpWs6" id="u6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799436" />
                        <node concept="2ShNRf" id="u7" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799436" />
                          <node concept="1pGfFk" id="u8" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799436" />
                            <node concept="Xl_RD" id="u9" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799436" />
                            </node>
                            <node concept="Xl_RD" id="ua" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799436" />
                              <uo k="s:originTrace" v="n:6836281137582799436" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="u5" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="u1" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799436" />
                    <node concept="3Tm1VV" id="ub" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                    <node concept="3uibUv" id="uc" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                    <node concept="37vLTG" id="ud" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                      <node concept="3uibUv" id="ug" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799436" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="ue" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                      <node concept="3clFbF" id="uh" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799438" />
                        <node concept="2YIFZM" id="ui" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582799467" />
                          <node concept="2OqwBi" id="uj" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582799468" />
                            <node concept="2OqwBi" id="uk" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582799469" />
                              <node concept="1DoJHT" id="um" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:6836281137582799470" />
                                <node concept="3uibUv" id="uo" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="up" role="1EMhIo">
                                  <ref role="3cqZAo" node="ud" resolve="_context" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="un" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:2iMJRNx_nom" resolve="conceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582799471" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="ul" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218858001" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="uf" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799436" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="tU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2644386474301431884" />
        </node>
      </node>
      <node concept="3uibUv" id="tA" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2644386474301431884" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="uq">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="LinkQualifier_Constraints" />
    <uo k="s:originTrace" v="n:2788452359612124485" />
    <node concept="3Tm1VV" id="ur" role="1B3o_S">
      <uo k="s:originTrace" v="n:2788452359612124485" />
    </node>
    <node concept="3uibUv" id="us" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2788452359612124485" />
    </node>
    <node concept="3clFbW" id="ut" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359612124485" />
      <node concept="37vLTG" id="uw" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2788452359612124485" />
        <node concept="3uibUv" id="uz" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
      </node>
      <node concept="3cqZAl" id="ux" role="3clF45">
        <uo k="s:originTrace" v="n:2788452359612124485" />
      </node>
      <node concept="3clFbS" id="uy" role="3clF47">
        <uo k="s:originTrace" v="n:2788452359612124485" />
        <node concept="XkiVB" id="u$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
          <node concept="1BaE9c" id="uA" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LinkQualifier$6Q" />
            <uo k="s:originTrace" v="n:2788452359612124485" />
            <node concept="2YIFZM" id="uC" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2788452359612124485" />
              <node concept="11gdke" id="uD" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
              </node>
              <node concept="11gdke" id="uE" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
              </node>
              <node concept="11gdke" id="uF" role="37wK5m">
                <property role="11gdj1" value="26b292a5afc7ccacL" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
              </node>
              <node concept="Xl_RD" id="uG" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.LinkQualifier" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="uB" role="37wK5m">
            <ref role="3cqZAo" node="uw" resolve="initContext" />
            <uo k="s:originTrace" v="n:2788452359612124485" />
          </node>
        </node>
        <node concept="3clFbF" id="u_" role="3cqZAp">
          <uo k="s:originTrace" v="n:2788452359612124485" />
          <node concept="1rXfSq" id="uH" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2788452359612124485" />
            <node concept="2ShNRf" id="uI" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359612124485" />
              <node concept="1pGfFk" id="uJ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="uL" resolve="LinkQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
                <node concept="Xjq3P" id="uK" role="37wK5m">
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="uu" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359612124485" />
    </node>
    <node concept="312cEu" id="uv" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2788452359612124485" />
      <node concept="3clFbW" id="uL" role="jymVt">
        <uo k="s:originTrace" v="n:2788452359612124485" />
        <node concept="37vLTG" id="uO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
          <node concept="3uibUv" id="uR" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359612124485" />
          </node>
        </node>
        <node concept="3cqZAl" id="uP" role="3clF45">
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
        <node concept="3clFbS" id="uQ" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359612124485" />
          <node concept="XkiVB" id="uS" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359612124485" />
            <node concept="1BaE9c" id="uT" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$zWpz" />
              <uo k="s:originTrace" v="n:2788452359612124485" />
              <node concept="2YIFZM" id="uX" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2788452359612124485" />
                <node concept="11gdke" id="uY" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
                <node concept="11gdke" id="uZ" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
                <node concept="11gdke" id="v0" role="37wK5m">
                  <property role="11gdj1" value="26b292a5afc7ccacL" />
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
                <node concept="11gdke" id="v1" role="37wK5m">
                  <property role="11gdj1" value="26b292a5afc7ccb0L" />
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
                <node concept="Xl_RD" id="v2" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:2788452359612124485" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="uU" role="37wK5m">
              <ref role="3cqZAo" node="uO" resolve="container" />
              <uo k="s:originTrace" v="n:2788452359612124485" />
            </node>
            <node concept="3clFbT" id="uV" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2788452359612124485" />
            </node>
            <node concept="3clFbT" id="uW" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359612124485" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="uM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2788452359612124485" />
        <node concept="3Tm1VV" id="v3" role="1B3o_S">
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
        <node concept="3uibUv" id="v4" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
        <node concept="2AHcQZ" id="v5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
        <node concept="3clFbS" id="v6" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359612124485" />
          <node concept="3cpWs6" id="v8" role="3cqZAp">
            <uo k="s:originTrace" v="n:2788452359612124485" />
            <node concept="2ShNRf" id="v9" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582802077" />
              <node concept="YeOm9" id="va" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582802077" />
                <node concept="1Y3b0j" id="vb" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582802077" />
                  <node concept="3Tm1VV" id="vc" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582802077" />
                  </node>
                  <node concept="3clFb_" id="vd" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582802077" />
                    <node concept="3Tm1VV" id="vf" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                    <node concept="3uibUv" id="vg" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                    <node concept="3clFbS" id="vh" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                      <node concept="3cpWs6" id="vj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802077" />
                        <node concept="2ShNRf" id="vk" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582802077" />
                          <node concept="1pGfFk" id="vl" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582802077" />
                            <node concept="Xl_RD" id="vm" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582802077" />
                            </node>
                            <node concept="Xl_RD" id="vn" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582802077" />
                              <uo k="s:originTrace" v="n:6836281137582802077" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="vi" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="ve" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582802077" />
                    <node concept="3Tm1VV" id="vo" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                    <node concept="3uibUv" id="vp" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                    <node concept="37vLTG" id="vq" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                      <node concept="3uibUv" id="vt" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582802077" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="vr" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                      <node concept="3cpWs8" id="vu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802079" />
                        <node concept="3cpWsn" id="vw" role="3cpWs9">
                          <property role="TrG5h" value="leftNodeConcept" />
                          <uo k="s:originTrace" v="n:6836281137582802080" />
                          <node concept="3Tqbb2" id="vx" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582802081" />
                          </node>
                          <node concept="2OqwBi" id="vy" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582802082" />
                            <node concept="3zqWPK" id="vz" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                              <uo k="s:originTrace" v="n:8085146484218857985" />
                              <node concept="2OqwBi" id="v_" role="37wK5m">
                                <uo k="s:originTrace" v="n:8085146484218857987" />
                                <node concept="1DoJHT" id="vA" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getContextNode" />
                                  <uo k="s:originTrace" v="n:8085146484218857988" />
                                  <node concept="3uibUv" id="vC" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="vD" role="1EMhIo">
                                    <ref role="3cqZAo" node="vq" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="2Xjw5R" id="vB" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:8085146484218857989" />
                                  <node concept="1xMEDy" id="vE" role="1xVPHs">
                                    <uo k="s:originTrace" v="n:8085146484218857990" />
                                    <node concept="chp4Y" id="vG" role="ri$Ld">
                                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                      <uo k="s:originTrace" v="n:8085146484218857991" />
                                    </node>
                                  </node>
                                  <node concept="1xIGOp" id="vF" role="1xVPHs">
                                    <uo k="s:originTrace" v="n:8085146484218857992" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="35c_gC" id="v$" role="2Oq$k0">
                              <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                              <uo k="s:originTrace" v="n:6836281137582802090" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="vv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802091" />
                        <node concept="2YIFZM" id="vH" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582802213" />
                          <node concept="2OqwBi" id="vI" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582802214" />
                            <node concept="2OqwBi" id="vJ" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582802215" />
                              <node concept="37vLTw" id="vL" role="2Oq$k0">
                                <ref role="3cqZAo" node="vw" resolve="leftNodeConcept" />
                                <uo k="s:originTrace" v="n:6836281137582802216" />
                              </node>
                              <node concept="3zqWPK" id="vM" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwILL0" resolve="getReferenceLinkDeclarations" />
                                <uo k="s:originTrace" v="n:8085146484218857993" />
                              </node>
                            </node>
                            <node concept="4Tj9Z" id="vK" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582802218" />
                              <node concept="2OqwBi" id="vN" role="576Qk">
                                <uo k="s:originTrace" v="n:6836281137582802219" />
                                <node concept="37vLTw" id="vO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="vw" resolve="leftNodeConcept" />
                                  <uo k="s:originTrace" v="n:6836281137582802220" />
                                </node>
                                <node concept="3zqWPK" id="vP" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                                  <uo k="s:originTrace" v="n:8085146484218857995" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="vs" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802077" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="v7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2788452359612124485" />
        </node>
      </node>
      <node concept="3uibUv" id="uN" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2788452359612124485" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="vQ">
    <property role="TrG5h" value="LinkRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:1226361213114" />
    <node concept="3Tm1VV" id="vR" role="1B3o_S">
      <uo k="s:originTrace" v="n:1226361213114" />
    </node>
    <node concept="3uibUv" id="vS" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1226361213114" />
    </node>
    <node concept="3clFbW" id="vT" role="jymVt">
      <uo k="s:originTrace" v="n:1226361213114" />
      <node concept="37vLTG" id="vW" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1226361213114" />
        <node concept="3uibUv" id="vZ" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
      </node>
      <node concept="3cqZAl" id="vX" role="3clF45">
        <uo k="s:originTrace" v="n:1226361213114" />
      </node>
      <node concept="3clFbS" id="vY" role="3clF47">
        <uo k="s:originTrace" v="n:1226361213114" />
        <node concept="XkiVB" id="w0" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1226361213114" />
          <node concept="1BaE9c" id="w2" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LinkRefExpression$nK" />
            <uo k="s:originTrace" v="n:1226361213114" />
            <node concept="2YIFZM" id="w4" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1226361213114" />
              <node concept="11gdke" id="w5" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1226361213114" />
              </node>
              <node concept="11gdke" id="w6" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1226361213114" />
              </node>
              <node concept="11gdke" id="w7" role="37wK5m">
                <property role="11gdj1" value="11d88b27d15L" />
                <uo k="s:originTrace" v="n:1226361213114" />
              </node>
              <node concept="Xl_RD" id="w8" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.LinkRefExpression" />
                <uo k="s:originTrace" v="n:1226361213114" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="w3" role="37wK5m">
            <ref role="3cqZAo" node="vW" resolve="initContext" />
            <uo k="s:originTrace" v="n:1226361213114" />
          </node>
        </node>
        <node concept="3clFbF" id="w1" role="3cqZAp">
          <uo k="s:originTrace" v="n:1226361213114" />
          <node concept="1rXfSq" id="w9" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1226361213114" />
            <node concept="2ShNRf" id="wa" role="37wK5m">
              <uo k="s:originTrace" v="n:1226361213114" />
              <node concept="1pGfFk" id="wb" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="wd" resolve="LinkRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1226361213114" />
                <node concept="Xjq3P" id="wc" role="37wK5m">
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="vU" role="jymVt">
      <uo k="s:originTrace" v="n:1226361213114" />
    </node>
    <node concept="312cEu" id="vV" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1226361213114" />
      <node concept="3clFbW" id="wd" role="jymVt">
        <uo k="s:originTrace" v="n:1226361213114" />
        <node concept="37vLTG" id="wg" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1226361213114" />
          <node concept="3uibUv" id="wj" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1226361213114" />
          </node>
        </node>
        <node concept="3cqZAl" id="wh" role="3clF45">
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
        <node concept="3clFbS" id="wi" role="3clF47">
          <uo k="s:originTrace" v="n:1226361213114" />
          <node concept="XkiVB" id="wk" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1226361213114" />
            <node concept="1BaE9c" id="wl" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="linkDeclaration$_DZG" />
              <uo k="s:originTrace" v="n:1226361213114" />
              <node concept="2YIFZM" id="wp" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1226361213114" />
                <node concept="11gdke" id="wq" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
                <node concept="11gdke" id="wr" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
                <node concept="11gdke" id="ws" role="37wK5m">
                  <property role="11gdj1" value="11d88b27d15L" />
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
                <node concept="11gdke" id="wt" role="37wK5m">
                  <property role="11gdj1" value="11d88b43a97L" />
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
                <node concept="Xl_RD" id="wu" role="37wK5m">
                  <property role="Xl_RC" value="linkDeclaration" />
                  <uo k="s:originTrace" v="n:1226361213114" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="wm" role="37wK5m">
              <ref role="3cqZAo" node="wg" resolve="container" />
              <uo k="s:originTrace" v="n:1226361213114" />
            </node>
            <node concept="3clFbT" id="wn" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1226361213114" />
            </node>
            <node concept="3clFbT" id="wo" role="37wK5m">
              <uo k="s:originTrace" v="n:1226361213114" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="we" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1226361213114" />
        <node concept="3Tm1VV" id="wv" role="1B3o_S">
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
        <node concept="3uibUv" id="ww" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
        <node concept="2AHcQZ" id="wx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
        <node concept="3clFbS" id="wy" role="3clF47">
          <uo k="s:originTrace" v="n:1226361213114" />
          <node concept="3cpWs6" id="w$" role="3cqZAp">
            <uo k="s:originTrace" v="n:1226361213114" />
            <node concept="2ShNRf" id="w_" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800482" />
              <node concept="YeOm9" id="wA" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800482" />
                <node concept="1Y3b0j" id="wB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800482" />
                  <node concept="3Tm1VV" id="wC" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800482" />
                  </node>
                  <node concept="3clFb_" id="wD" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800482" />
                    <node concept="3Tm1VV" id="wF" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                    <node concept="3uibUv" id="wG" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                    <node concept="3clFbS" id="wH" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                      <node concept="3cpWs6" id="wJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800482" />
                        <node concept="2ShNRf" id="wK" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800482" />
                          <node concept="1pGfFk" id="wL" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800482" />
                            <node concept="Xl_RD" id="wM" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800482" />
                            </node>
                            <node concept="Xl_RD" id="wN" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800482" />
                              <uo k="s:originTrace" v="n:6836281137582800482" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="wI" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="wE" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800482" />
                    <node concept="3Tm1VV" id="wO" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                    <node concept="3uibUv" id="wP" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                    <node concept="37vLTG" id="wQ" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                      <node concept="3uibUv" id="wT" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800482" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="wR" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                      <node concept="3clFbF" id="wU" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800484" />
                        <node concept="2YIFZM" id="wV" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582800513" />
                          <node concept="2OqwBi" id="wW" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582800514" />
                            <node concept="2OqwBi" id="wX" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582800515" />
                              <node concept="1DoJHT" id="wZ" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:6836281137582800516" />
                                <node concept="3uibUv" id="x1" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="x2" role="1EMhIo">
                                  <ref role="3cqZAo" node="wQ" resolve="_context" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="x0" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:hQ8GBOm" resolve="conceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582800517" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="wY" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857971" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="wS" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800482" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="wz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1226361213114" />
        </node>
      </node>
      <node concept="3uibUv" id="wf" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1226361213114" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="x3">
    <property role="TrG5h" value="LinkRefQualifier_Constraints" />
    <uo k="s:originTrace" v="n:1213104859120" />
    <node concept="3Tm1VV" id="x4" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104859120" />
    </node>
    <node concept="3uibUv" id="x5" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104859120" />
    </node>
    <node concept="3clFbW" id="x6" role="jymVt">
      <uo k="s:originTrace" v="n:1213104859120" />
      <node concept="37vLTG" id="x9" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104859120" />
        <node concept="3uibUv" id="xc" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
      </node>
      <node concept="3cqZAl" id="xa" role="3clF45">
        <uo k="s:originTrace" v="n:1213104859120" />
      </node>
      <node concept="3clFbS" id="xb" role="3clF47">
        <uo k="s:originTrace" v="n:1213104859120" />
        <node concept="XkiVB" id="xd" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104859120" />
          <node concept="1BaE9c" id="xf" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="LinkRefQualifier$uI" />
            <uo k="s:originTrace" v="n:1213104859120" />
            <node concept="2YIFZM" id="xh" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104859120" />
              <node concept="11gdke" id="xi" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104859120" />
              </node>
              <node concept="11gdke" id="xj" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104859120" />
              </node>
              <node concept="11gdke" id="xk" role="37wK5m">
                <property role="11gdj1" value="11886c4bac0L" />
                <uo k="s:originTrace" v="n:1213104859120" />
              </node>
              <node concept="Xl_RD" id="xl" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" />
                <uo k="s:originTrace" v="n:1213104859120" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="xg" role="37wK5m">
            <ref role="3cqZAo" node="x9" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104859120" />
          </node>
        </node>
        <node concept="3clFbF" id="xe" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104859120" />
          <node concept="1rXfSq" id="xm" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104859120" />
            <node concept="2ShNRf" id="xn" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104859120" />
              <node concept="1pGfFk" id="xo" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="xq" resolve="LinkRefQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104859120" />
                <node concept="Xjq3P" id="xp" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="x7" role="jymVt">
      <uo k="s:originTrace" v="n:1213104859120" />
    </node>
    <node concept="312cEu" id="x8" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104859120" />
      <node concept="3clFbW" id="xq" role="jymVt">
        <uo k="s:originTrace" v="n:1213104859120" />
        <node concept="37vLTG" id="xt" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104859120" />
          <node concept="3uibUv" id="xw" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104859120" />
          </node>
        </node>
        <node concept="3cqZAl" id="xu" role="3clF45">
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
        <node concept="3clFbS" id="xv" role="3clF47">
          <uo k="s:originTrace" v="n:1213104859120" />
          <node concept="XkiVB" id="xx" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104859120" />
            <node concept="1BaE9c" id="xy" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$N7Cw" />
              <uo k="s:originTrace" v="n:1213104859120" />
              <node concept="2YIFZM" id="xA" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104859120" />
                <node concept="11gdke" id="xB" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
                <node concept="11gdke" id="xC" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
                <node concept="11gdke" id="xD" role="37wK5m">
                  <property role="11gdj1" value="11886c4bac0L" />
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
                <node concept="11gdke" id="xE" role="37wK5m">
                  <property role="11gdj1" value="11886c4bac1L" />
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
                <node concept="Xl_RD" id="xF" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:1213104859120" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="xz" role="37wK5m">
              <ref role="3cqZAo" node="xt" resolve="container" />
              <uo k="s:originTrace" v="n:1213104859120" />
            </node>
            <node concept="3clFbT" id="x$" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104859120" />
            </node>
            <node concept="3clFbT" id="x_" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104859120" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="xr" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104859120" />
        <node concept="3Tm1VV" id="xG" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
        <node concept="3uibUv" id="xH" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
        <node concept="2AHcQZ" id="xI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
        <node concept="3clFbS" id="xJ" role="3clF47">
          <uo k="s:originTrace" v="n:1213104859120" />
          <node concept="3cpWs6" id="xL" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104859120" />
            <node concept="2ShNRf" id="xM" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582802839" />
              <node concept="YeOm9" id="xN" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582802839" />
                <node concept="1Y3b0j" id="xO" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582802839" />
                  <node concept="3Tm1VV" id="xP" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582802839" />
                  </node>
                  <node concept="3clFb_" id="xQ" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582802839" />
                    <node concept="3Tm1VV" id="xS" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                    <node concept="3uibUv" id="xT" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                    <node concept="3clFbS" id="xU" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                      <node concept="3cpWs6" id="xW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802839" />
                        <node concept="2ShNRf" id="xX" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582802839" />
                          <node concept="1pGfFk" id="xY" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582802839" />
                            <node concept="Xl_RD" id="xZ" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582802839" />
                            </node>
                            <node concept="Xl_RD" id="y0" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582802839" />
                              <uo k="s:originTrace" v="n:6836281137582802839" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="xV" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="xR" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582802839" />
                    <node concept="3Tm1VV" id="y1" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                    <node concept="3uibUv" id="y2" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                    <node concept="37vLTG" id="y3" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                      <node concept="3uibUv" id="y6" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582802839" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="y4" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                      <node concept="3cpWs8" id="y7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802918" />
                        <node concept="3cpWsn" id="yb" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6836281137582802919" />
                          <node concept="3Tqbb2" id="yc" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6836281137582802920" />
                          </node>
                          <node concept="1eOMI4" id="yd" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582802908" />
                            <node concept="3K4zz7" id="ye" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6836281137582802909" />
                              <node concept="1DoJHT" id="yf" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582802910" />
                                <node concept="3uibUv" id="yi" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="yj" role="1EMhIo">
                                  <ref role="3cqZAo" node="y3" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="yg" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6836281137582802911" />
                                <node concept="1DoJHT" id="yk" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582802912" />
                                  <node concept="3uibUv" id="ym" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="yn" role="1EMhIo">
                                    <ref role="3cqZAo" node="y3" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="yl" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582802913" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="yh" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6836281137582802914" />
                                <node concept="1DoJHT" id="yo" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582802915" />
                                  <node concept="3uibUv" id="yq" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="yr" role="1EMhIo">
                                    <ref role="3cqZAo" node="y3" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="yp" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582802916" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="y8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802841" />
                        <node concept="3clFbS" id="ys" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582802842" />
                          <node concept="3cpWs6" id="yu" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582802843" />
                            <node concept="2ShNRf" id="yv" role="3cqZAk">
                              <uo k="s:originTrace" v="n:6467324209847800925" />
                              <node concept="1pGfFk" id="yw" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:6467324209847802649" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="yt" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582802845" />
                          <node concept="2OqwBi" id="yx" role="3fr31v">
                            <uo k="s:originTrace" v="n:6836281137582802846" />
                            <node concept="37vLTw" id="yy" role="2Oq$k0">
                              <ref role="3cqZAo" node="yb" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582802921" />
                            </node>
                            <node concept="1mIQ4w" id="yz" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582802848" />
                              <node concept="chp4Y" id="y$" role="cj9EA">
                                <ref role="cht4Q" to="tp25:34EpZoncu9D" resolve="ILinkAccessQualifierContainer" />
                                <uo k="s:originTrace" v="n:6836281137582802849" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="y9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802850" />
                        <node concept="3cpWsn" id="y_" role="3cpWs9">
                          <property role="TrG5h" value="qualifierContainer" />
                          <uo k="s:originTrace" v="n:6836281137582802851" />
                          <node concept="3Tqbb2" id="yA" role="1tU5fm">
                            <ref role="ehGHo" to="tp25:34EpZoncu9D" resolve="ILinkAccessQualifierContainer" />
                            <uo k="s:originTrace" v="n:6836281137582802852" />
                          </node>
                          <node concept="1PxgMI" id="yB" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582802853" />
                            <node concept="37vLTw" id="yC" role="1m5AlR">
                              <ref role="3cqZAo" node="yb" resolve="enclosingNode" />
                              <uo k="s:originTrace" v="n:6836281137582802922" />
                            </node>
                            <node concept="chp4Y" id="yD" role="3oSUPX">
                              <ref role="cht4Q" to="tp25:34EpZoncu9D" resolve="ILinkAccessQualifierContainer" />
                              <uo k="s:originTrace" v="n:6836281137582802855" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="ya" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802856" />
                        <node concept="2YIFZM" id="yE" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582803014" />
                          <node concept="2OqwBi" id="yF" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582803015" />
                            <node concept="37vLTw" id="yG" role="2Oq$k0">
                              <ref role="3cqZAo" node="y_" resolve="qualifierContainer" />
                              <uo k="s:originTrace" v="n:6836281137582803016" />
                            </node>
                            <node concept="3zqWPK" id="yH" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:2xk$X1Ld2Yi" resolve="getLinkAccessScope" />
                              <uo k="s:originTrace" v="n:8085146484218857969" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="y5" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802839" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="xK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104859120" />
        </node>
      </node>
      <node concept="3uibUv" id="xs" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104859120" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="yI">
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="ModelPointer_ResolveOperation_Constraints" />
    <uo k="s:originTrace" v="n:4065387505485843464" />
    <node concept="3Tm1VV" id="yJ" role="1B3o_S">
      <uo k="s:originTrace" v="n:4065387505485843464" />
    </node>
    <node concept="3uibUv" id="yK" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4065387505485843464" />
    </node>
    <node concept="3clFbW" id="yL" role="jymVt">
      <uo k="s:originTrace" v="n:4065387505485843464" />
      <node concept="37vLTG" id="yO" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="3uibUv" id="yR" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
        </node>
      </node>
      <node concept="3cqZAl" id="yP" role="3clF45">
        <uo k="s:originTrace" v="n:4065387505485843464" />
      </node>
      <node concept="3clFbS" id="yQ" role="3clF47">
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="XkiVB" id="yS" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
          <node concept="1BaE9c" id="yU" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ModelPointer_ResolveOperation$wi" />
            <uo k="s:originTrace" v="n:4065387505485843464" />
            <node concept="2YIFZM" id="yW" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4065387505485843464" />
              <node concept="11gdke" id="yX" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:4065387505485843464" />
              </node>
              <node concept="11gdke" id="yY" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:4065387505485843464" />
              </node>
              <node concept="11gdke" id="yZ" role="37wK5m">
                <property role="11gdj1" value="386b28659aca024aL" />
                <uo k="s:originTrace" v="n:4065387505485843464" />
              </node>
              <node concept="Xl_RD" id="z0" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.ModelPointer_ResolveOperation" />
                <uo k="s:originTrace" v="n:4065387505485843464" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="yV" role="37wK5m">
            <ref role="3cqZAo" node="yO" resolve="initContext" />
            <uo k="s:originTrace" v="n:4065387505485843464" />
          </node>
        </node>
        <node concept="3clFbF" id="yT" role="3cqZAp">
          <uo k="s:originTrace" v="n:4065387505485843464" />
          <node concept="1rXfSq" id="z1" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:4065387505485843464" />
            <node concept="2ShNRf" id="z2" role="37wK5m">
              <uo k="s:originTrace" v="n:4065387505485843464" />
              <node concept="YeOm9" id="z3" role="2ShVmc">
                <uo k="s:originTrace" v="n:4065387505485843464" />
                <node concept="1Y3b0j" id="z4" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:4065387505485843464" />
                  <node concept="3Tm1VV" id="z5" role="1B3o_S">
                    <uo k="s:originTrace" v="n:4065387505485843464" />
                  </node>
                  <node concept="3clFb_" id="z6" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:4065387505485843464" />
                    <node concept="3Tm1VV" id="z9" role="1B3o_S">
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                    </node>
                    <node concept="2AHcQZ" id="za" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                    </node>
                    <node concept="3uibUv" id="zb" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                    </node>
                    <node concept="37vLTG" id="zc" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                      <node concept="3uibUv" id="zf" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                      <node concept="2AHcQZ" id="zg" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="zd" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                      <node concept="3uibUv" id="zh" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                      <node concept="2AHcQZ" id="zi" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="ze" role="3clF47">
                      <uo k="s:originTrace" v="n:4065387505485843464" />
                      <node concept="3cpWs8" id="zj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                        <node concept="3cpWsn" id="zo" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:4065387505485843464" />
                          <node concept="10P_77" id="zp" role="1tU5fm">
                            <uo k="s:originTrace" v="n:4065387505485843464" />
                          </node>
                          <node concept="1rXfSq" id="zq" role="33vP2m">
                            <ref role="37wK5l" node="yN" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:4065387505485843464" />
                            <node concept="2OqwBi" id="zr" role="37wK5m">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                              <node concept="37vLTw" id="zv" role="2Oq$k0">
                                <ref role="3cqZAo" node="zc" resolve="context" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                              <node concept="liA8E" id="zw" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="zs" role="37wK5m">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                              <node concept="37vLTw" id="zx" role="2Oq$k0">
                                <ref role="3cqZAo" node="zc" resolve="context" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                              <node concept="liA8E" id="zy" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="zt" role="37wK5m">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                              <node concept="37vLTw" id="zz" role="2Oq$k0">
                                <ref role="3cqZAo" node="zc" resolve="context" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                              <node concept="liA8E" id="z$" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="zu" role="37wK5m">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                              <node concept="37vLTw" id="z_" role="2Oq$k0">
                                <ref role="3cqZAo" node="zc" resolve="context" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                              <node concept="liA8E" id="zA" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="zk" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                      <node concept="3clFbJ" id="zl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                        <node concept="3clFbS" id="zB" role="3clFbx">
                          <uo k="s:originTrace" v="n:4065387505485843464" />
                          <node concept="3clFbF" id="zD" role="3cqZAp">
                            <uo k="s:originTrace" v="n:4065387505485843464" />
                            <node concept="2OqwBi" id="zE" role="3clFbG">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                              <node concept="37vLTw" id="zF" role="2Oq$k0">
                                <ref role="3cqZAo" node="zd" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                              </node>
                              <node concept="liA8E" id="zG" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:4065387505485843464" />
                                <node concept="1dyn4i" id="zH" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:4065387505485843464" />
                                  <node concept="2ShNRf" id="zI" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:4065387505485843464" />
                                    <node concept="1pGfFk" id="zJ" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:4065387505485843464" />
                                      <node concept="Xl_RD" id="zK" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:4065387505485843464" />
                                      </node>
                                      <node concept="Xl_RD" id="zL" role="37wK5m">
                                        <property role="Xl_RC" value="4065387505485843495" />
                                        <uo k="s:originTrace" v="n:4065387505485843464" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="zC" role="3clFbw">
                          <uo k="s:originTrace" v="n:4065387505485843464" />
                          <node concept="3y3z36" id="zM" role="3uHU7w">
                            <uo k="s:originTrace" v="n:4065387505485843464" />
                            <node concept="10Nm6u" id="zO" role="3uHU7w">
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                            </node>
                            <node concept="37vLTw" id="zP" role="3uHU7B">
                              <ref role="3cqZAo" node="zd" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="zN" role="3uHU7B">
                            <uo k="s:originTrace" v="n:4065387505485843464" />
                            <node concept="37vLTw" id="zQ" role="3fr31v">
                              <ref role="3cqZAo" node="zo" resolve="result" />
                              <uo k="s:originTrace" v="n:4065387505485843464" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="zm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                      </node>
                      <node concept="3clFbF" id="zn" role="3cqZAp">
                        <uo k="s:originTrace" v="n:4065387505485843464" />
                        <node concept="37vLTw" id="zR" role="3clFbG">
                          <ref role="3cqZAo" node="zo" resolve="result" />
                          <uo k="s:originTrace" v="n:4065387505485843464" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="z7" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:4065387505485843464" />
                  </node>
                  <node concept="3uibUv" id="z8" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:4065387505485843464" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="yM" role="jymVt">
      <uo k="s:originTrace" v="n:4065387505485843464" />
    </node>
    <node concept="2YIFZL" id="yN" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:4065387505485843464" />
      <node concept="10P_77" id="zS" role="3clF45">
        <uo k="s:originTrace" v="n:4065387505485843464" />
      </node>
      <node concept="3Tm6S6" id="zT" role="1B3o_S">
        <uo k="s:originTrace" v="n:4065387505485843464" />
      </node>
      <node concept="3clFbS" id="zU" role="3clF47">
        <uo k="s:originTrace" v="n:4065387505485843496" />
        <node concept="3clFbJ" id="zZ" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123737026" />
          <node concept="3clFbS" id="$2" role="3clFbx">
            <uo k="s:originTrace" v="n:7726325683123737027" />
            <node concept="3cpWs6" id="$4" role="3cqZAp">
              <uo k="s:originTrace" v="n:7726325683123737028" />
              <node concept="3clFbT" id="$5" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:7726325683123737029" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="$3" role="3clFbw">
            <uo k="s:originTrace" v="n:7726325683123737030" />
            <node concept="2OqwBi" id="$6" role="3fr31v">
              <uo k="s:originTrace" v="n:7726325683123737031" />
              <node concept="37vLTw" id="$7" role="2Oq$k0">
                <ref role="3cqZAo" node="zW" resolve="parentNode" />
                <uo k="s:originTrace" v="n:7726325683123737032" />
              </node>
              <node concept="1mIQ4w" id="$8" role="2OqNvi">
                <uo k="s:originTrace" v="n:7726325683123737033" />
                <node concept="chp4Y" id="$9" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  <uo k="s:originTrace" v="n:7726325683123737034" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="$0" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123737035" />
          <node concept="3cpWsn" id="$a" role="3cpWs9">
            <property role="TrG5h" value="operandType" />
            <uo k="s:originTrace" v="n:7726325683123737036" />
            <node concept="3Tqbb2" id="$b" role="1tU5fm">
              <uo k="s:originTrace" v="n:7726325683123737037" />
            </node>
            <node concept="2OqwBi" id="$c" role="33vP2m">
              <uo k="s:originTrace" v="n:7726325683123737038" />
              <node concept="2OqwBi" id="$d" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7726325683123737039" />
                <node concept="1PxgMI" id="$f" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7726325683123737040" />
                  <node concept="37vLTw" id="$h" role="1m5AlR">
                    <ref role="3cqZAo" node="zW" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:7726325683123737041" />
                  </node>
                  <node concept="chp4Y" id="$i" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <uo k="s:originTrace" v="n:7726325683123737042" />
                  </node>
                </node>
                <node concept="3TrEf2" id="$g" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                  <uo k="s:originTrace" v="n:7726325683123737043" />
                </node>
              </node>
              <node concept="3JvlWi" id="$e" role="2OqNvi">
                <uo k="s:originTrace" v="n:7726325683123737044" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$1" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123737045" />
          <node concept="2OqwBi" id="$j" role="3clFbG">
            <uo k="s:originTrace" v="n:7726325683123737046" />
            <node concept="1UdQGJ" id="$k" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7726325683123737047" />
              <node concept="1YaCAy" id="$m" role="1Ub_4A">
                <property role="TrG5h" value="type" />
                <ref role="1YaFvo" to="tp25:1Bs_61$ngyb" resolve="SModelPointerType" />
                <uo k="s:originTrace" v="n:7726325683123737048" />
              </node>
              <node concept="37vLTw" id="$n" role="1Ub_4B">
                <ref role="3cqZAo" node="$a" resolve="operandType" />
                <uo k="s:originTrace" v="n:7726325683123737049" />
              </node>
            </node>
            <node concept="3x8VRR" id="$l" role="2OqNvi">
              <uo k="s:originTrace" v="n:7726325683123737050" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zV" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="3uibUv" id="$o" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
        </node>
      </node>
      <node concept="37vLTG" id="zW" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="3uibUv" id="$p" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
        </node>
      </node>
      <node concept="37vLTG" id="zX" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="3uibUv" id="$q" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
        </node>
      </node>
      <node concept="37vLTG" id="zY" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:4065387505485843464" />
        <node concept="3uibUv" id="$r" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:4065387505485843464" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="$s">
    <property role="3GE5qa" value="reference.model" />
    <property role="TrG5h" value="ModelReferenceExpression_Constraints" />
    <uo k="s:originTrace" v="n:559557797393041555" />
    <node concept="3Tm1VV" id="$t" role="1B3o_S">
      <uo k="s:originTrace" v="n:559557797393041555" />
    </node>
    <node concept="3uibUv" id="$u" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:559557797393041555" />
    </node>
    <node concept="3clFbW" id="$v" role="jymVt">
      <uo k="s:originTrace" v="n:559557797393041555" />
      <node concept="37vLTG" id="$x" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:559557797393041555" />
        <node concept="3uibUv" id="$$" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:559557797393041555" />
        </node>
      </node>
      <node concept="3cqZAl" id="$y" role="3clF45">
        <uo k="s:originTrace" v="n:559557797393041555" />
      </node>
      <node concept="3clFbS" id="$z" role="3clF47">
        <uo k="s:originTrace" v="n:559557797393041555" />
        <node concept="XkiVB" id="$_" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:559557797393041555" />
          <node concept="1BaE9c" id="$A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ModelReferenceExpression$vc" />
            <uo k="s:originTrace" v="n:559557797393041555" />
            <node concept="2YIFZM" id="$C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:559557797393041555" />
              <node concept="11gdke" id="$D" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:559557797393041555" />
              </node>
              <node concept="11gdke" id="$E" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:559557797393041555" />
              </node>
              <node concept="11gdke" id="$F" role="37wK5m">
                <property role="11gdj1" value="7c3f2da20e92b62L" />
                <uo k="s:originTrace" v="n:559557797393041555" />
              </node>
              <node concept="Xl_RD" id="$G" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" />
                <uo k="s:originTrace" v="n:559557797393041555" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="$B" role="37wK5m">
            <ref role="3cqZAo" node="$x" resolve="initContext" />
            <uo k="s:originTrace" v="n:559557797393041555" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="$w" role="jymVt">
      <uo k="s:originTrace" v="n:559557797393041555" />
    </node>
  </node>
  <node concept="312cEu" id="$H">
    <property role="3GE5qa" value="reference.module" />
    <property role="TrG5h" value="ModuleReferenceExpression_Constraints" />
    <uo k="s:originTrace" v="n:4040588429969031617" />
    <node concept="3Tm1VV" id="$I" role="1B3o_S">
      <uo k="s:originTrace" v="n:4040588429969031617" />
    </node>
    <node concept="3uibUv" id="$J" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:4040588429969031617" />
    </node>
    <node concept="3clFbW" id="$K" role="jymVt">
      <uo k="s:originTrace" v="n:4040588429969031617" />
      <node concept="37vLTG" id="$N" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:4040588429969031617" />
        <node concept="3uibUv" id="$Q" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
      </node>
      <node concept="3cqZAl" id="$O" role="3clF45">
        <uo k="s:originTrace" v="n:4040588429969031617" />
      </node>
      <node concept="3clFbS" id="$P" role="3clF47">
        <uo k="s:originTrace" v="n:4040588429969031617" />
        <node concept="XkiVB" id="$R" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
          <node concept="1BaE9c" id="$T" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="ModuleReferenceExpression$Nz" />
            <uo k="s:originTrace" v="n:4040588429969031617" />
            <node concept="2YIFZM" id="$V" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:4040588429969031617" />
              <node concept="11gdke" id="$W" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
              </node>
              <node concept="11gdke" id="$X" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
              </node>
              <node concept="11gdke" id="$Y" role="37wK5m">
                <property role="11gdj1" value="38130dc4e3db5af1L" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
              </node>
              <node concept="Xl_RD" id="$Z" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="$U" role="37wK5m">
            <ref role="3cqZAo" node="$N" resolve="initContext" />
            <uo k="s:originTrace" v="n:4040588429969031617" />
          </node>
        </node>
        <node concept="3clFbF" id="$S" role="3cqZAp">
          <uo k="s:originTrace" v="n:4040588429969031617" />
          <node concept="1rXfSq" id="_0" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:4040588429969031617" />
            <node concept="2ShNRf" id="_1" role="37wK5m">
              <uo k="s:originTrace" v="n:4040588429969031617" />
              <node concept="1pGfFk" id="_2" role="2ShVmc">
                <ref role="37wK5l" node="_4" resolve="ModuleReferenceExpression_Constraints.Name_PD" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
                <node concept="Xjq3P" id="_3" role="37wK5m">
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="$L" role="jymVt">
      <uo k="s:originTrace" v="n:4040588429969031617" />
    </node>
    <node concept="312cEu" id="$M" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="Name_PD" />
      <uo k="s:originTrace" v="n:4040588429969031617" />
      <node concept="3clFbW" id="_4" role="jymVt">
        <uo k="s:originTrace" v="n:4040588429969031617" />
        <node concept="3cqZAl" id="_7" role="3clF45">
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
        <node concept="3Tm1VV" id="_8" role="1B3o_S">
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
        <node concept="3clFbS" id="_9" role="3clF47">
          <uo k="s:originTrace" v="n:4040588429969031617" />
          <node concept="XkiVB" id="_b" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BasePropertyConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SProperty,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean,boolean)" resolve="BasePropertyConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4040588429969031617" />
            <node concept="1BaE9c" id="_c" role="37wK5m">
              <property role="1ouuDV" value="PROPS" />
              <property role="1BaxDp" value="name$cM30" />
              <uo k="s:originTrace" v="n:4040588429969031617" />
              <node concept="2YIFZM" id="_h" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getProperty(long,long,long,long,java.lang.String)" resolve="getProperty" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:4040588429969031617" />
                <node concept="11gdke" id="_i" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
                <node concept="11gdke" id="_j" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
                <node concept="11gdke" id="_k" role="37wK5m">
                  <property role="11gdj1" value="38130dc4e3db5af1L" />
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
                <node concept="11gdke" id="_l" role="37wK5m">
                  <property role="11gdj1" value="38130dc4e3db5af2L" />
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
                <node concept="Xl_RD" id="_m" role="37wK5m">
                  <property role="Xl_RC" value="name" />
                  <uo k="s:originTrace" v="n:4040588429969031617" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="_d" role="37wK5m">
              <ref role="3cqZAo" node="_a" resolve="container" />
              <uo k="s:originTrace" v="n:4040588429969031617" />
            </node>
            <node concept="3clFbT" id="_e" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:4040588429969031617" />
            </node>
            <node concept="3clFbT" id="_f" role="37wK5m">
              <uo k="s:originTrace" v="n:4040588429969031617" />
            </node>
            <node concept="3clFbT" id="_g" role="37wK5m">
              <uo k="s:originTrace" v="n:4040588429969031617" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="_a" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
          <node concept="3uibUv" id="_n" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:4040588429969031617" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="_5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getValue" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:4040588429969031617" />
        <node concept="3Tm1VV" id="_o" role="1B3o_S">
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
        <node concept="3uibUv" id="_p" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
        <node concept="37vLTG" id="_q" role="3clF46">
          <property role="TrG5h" value="node" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
          <node concept="3Tqbb2" id="_t" role="1tU5fm">
            <uo k="s:originTrace" v="n:4040588429969031617" />
          </node>
        </node>
        <node concept="2AHcQZ" id="_r" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:4040588429969031617" />
        </node>
        <node concept="3clFbS" id="_s" role="3clF47">
          <uo k="s:originTrace" v="n:4040588429969031620" />
          <node concept="3cpWs8" id="_u" role="3cqZAp">
            <uo k="s:originTrace" v="n:4040588429969035171" />
            <node concept="3cpWsn" id="_x" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <uo k="s:originTrace" v="n:4040588429969035172" />
              <node concept="3uibUv" id="_y" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                <uo k="s:originTrace" v="n:4040588429969035173" />
              </node>
              <node concept="2OqwBi" id="_z" role="33vP2m">
                <uo k="s:originTrace" v="n:4040588429969066440" />
                <node concept="37vLTw" id="_$" role="2Oq$k0">
                  <ref role="3cqZAo" node="_q" resolve="node" />
                  <uo k="s:originTrace" v="n:4040588429969066439" />
                </node>
                <node concept="3zqWPK" id="__" role="2OqNvi">
                  <ref role="37wK5l" to="tpeu:3wj3sjzQUV1" resolve="getModule" />
                  <uo k="s:originTrace" v="n:8085146484218857997" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="_v" role="3cqZAp">
            <uo k="s:originTrace" v="n:4040588429969039543" />
            <node concept="3clFbS" id="_A" role="3clFbx">
              <uo k="s:originTrace" v="n:4040588429969039544" />
              <node concept="3cpWs6" id="_C" role="3cqZAp">
                <uo k="s:originTrace" v="n:4040588429969039552" />
                <node concept="10Nm6u" id="_D" role="3cqZAk">
                  <uo k="s:originTrace" v="n:4040588429969039554" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="_B" role="3clFbw">
              <uo k="s:originTrace" v="n:4040588429969039548" />
              <node concept="10Nm6u" id="_E" role="3uHU7w">
                <uo k="s:originTrace" v="n:4040588429969039551" />
              </node>
              <node concept="37vLTw" id="_F" role="3uHU7B">
                <ref role="3cqZAo" node="_x" resolve="module" />
                <uo k="s:originTrace" v="n:4265636116363065936" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_w" role="3cqZAp">
            <uo k="s:originTrace" v="n:4040588429969039556" />
            <node concept="2OqwBi" id="_G" role="3clFbG">
              <uo k="s:originTrace" v="n:8165092175947797365" />
              <node concept="liA8E" id="_H" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                <uo k="s:originTrace" v="n:8165092175947797366" />
              </node>
              <node concept="37vLTw" id="_I" role="2Oq$k0">
                <ref role="3cqZAo" node="_x" resolve="module" />
                <uo k="s:originTrace" v="n:4265636116363098652" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="_6" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BasePropertyConstraintsDescriptor" resolve="BasePropertyConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:4040588429969031617" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_J">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="NodeAttributeQualifier_Constraints" />
    <uo k="s:originTrace" v="n:6407023681583036864" />
    <node concept="3Tm1VV" id="_K" role="1B3o_S">
      <uo k="s:originTrace" v="n:6407023681583036864" />
    </node>
    <node concept="3uibUv" id="_L" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6407023681583036864" />
    </node>
    <node concept="3clFbW" id="_M" role="jymVt">
      <uo k="s:originTrace" v="n:6407023681583036864" />
      <node concept="37vLTG" id="_P" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6407023681583036864" />
        <node concept="3uibUv" id="_S" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
      </node>
      <node concept="3cqZAl" id="_Q" role="3clF45">
        <uo k="s:originTrace" v="n:6407023681583036864" />
      </node>
      <node concept="3clFbS" id="_R" role="3clF47">
        <uo k="s:originTrace" v="n:6407023681583036864" />
        <node concept="XkiVB" id="_T" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
          <node concept="1BaE9c" id="_V" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NodeAttributeQualifier$qh" />
            <uo k="s:originTrace" v="n:6407023681583036864" />
            <node concept="2YIFZM" id="_X" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6407023681583036864" />
              <node concept="11gdke" id="_Y" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
              </node>
              <node concept="11gdke" id="_Z" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
              </node>
              <node concept="11gdke" id="A0" role="37wK5m">
                <property role="11gdj1" value="58ea5217b045b9b5L" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
              </node>
              <node concept="Xl_RD" id="A1" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="_W" role="37wK5m">
            <ref role="3cqZAo" node="_P" resolve="initContext" />
            <uo k="s:originTrace" v="n:6407023681583036864" />
          </node>
        </node>
        <node concept="3clFbF" id="_U" role="3cqZAp">
          <uo k="s:originTrace" v="n:6407023681583036864" />
          <node concept="1rXfSq" id="A2" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:6407023681583036864" />
            <node concept="2ShNRf" id="A3" role="37wK5m">
              <uo k="s:originTrace" v="n:6407023681583036864" />
              <node concept="1pGfFk" id="A4" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="A6" resolve="NodeAttributeQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
                <node concept="Xjq3P" id="A5" role="37wK5m">
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_N" role="jymVt">
      <uo k="s:originTrace" v="n:6407023681583036864" />
    </node>
    <node concept="312cEu" id="_O" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:6407023681583036864" />
      <node concept="3clFbW" id="A6" role="jymVt">
        <uo k="s:originTrace" v="n:6407023681583036864" />
        <node concept="37vLTG" id="A9" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
          <node concept="3uibUv" id="Ac" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6407023681583036864" />
          </node>
        </node>
        <node concept="3cqZAl" id="Aa" role="3clF45">
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
        <node concept="3clFbS" id="Ab" role="3clF47">
          <uo k="s:originTrace" v="n:6407023681583036864" />
          <node concept="XkiVB" id="Ad" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:6407023681583036864" />
            <node concept="1BaE9c" id="Ae" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="attributeConcept$x5q0" />
              <uo k="s:originTrace" v="n:6407023681583036864" />
              <node concept="2YIFZM" id="Ai" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:6407023681583036864" />
                <node concept="11gdke" id="Aj" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
                <node concept="11gdke" id="Ak" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
                <node concept="11gdke" id="Al" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045b9b5L" />
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
                <node concept="11gdke" id="Am" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045b9b6L" />
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
                <node concept="Xl_RD" id="An" role="37wK5m">
                  <property role="Xl_RC" value="attributeConcept" />
                  <uo k="s:originTrace" v="n:6407023681583036864" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Af" role="37wK5m">
              <ref role="3cqZAo" node="A9" resolve="container" />
              <uo k="s:originTrace" v="n:6407023681583036864" />
            </node>
            <node concept="3clFbT" id="Ag" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:6407023681583036864" />
            </node>
            <node concept="3clFbT" id="Ah" role="37wK5m">
              <uo k="s:originTrace" v="n:6407023681583036864" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="A7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:6407023681583036864" />
        <node concept="3Tm1VV" id="Ao" role="1B3o_S">
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
        <node concept="3uibUv" id="Ap" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
        <node concept="2AHcQZ" id="Aq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
        <node concept="3clFbS" id="Ar" role="3clF47">
          <uo k="s:originTrace" v="n:6407023681583036864" />
          <node concept="3cpWs6" id="At" role="3cqZAp">
            <uo k="s:originTrace" v="n:6407023681583036864" />
            <node concept="2ShNRf" id="Au" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799517" />
              <node concept="YeOm9" id="Av" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799517" />
                <node concept="1Y3b0j" id="Aw" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799517" />
                  <node concept="3Tm1VV" id="Ax" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799517" />
                  </node>
                  <node concept="3clFb_" id="Ay" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799517" />
                    <node concept="3Tm1VV" id="A$" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                    <node concept="3uibUv" id="A_" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                    <node concept="3clFbS" id="AA" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                      <node concept="3cpWs6" id="AC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799517" />
                        <node concept="2ShNRf" id="AD" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799517" />
                          <node concept="1pGfFk" id="AE" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799517" />
                            <node concept="Xl_RD" id="AF" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799517" />
                            </node>
                            <node concept="Xl_RD" id="AG" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799517" />
                              <uo k="s:originTrace" v="n:6836281137582799517" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="AB" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Az" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799517" />
                    <node concept="3Tm1VV" id="AH" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                    <node concept="3uibUv" id="AI" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                    <node concept="37vLTG" id="AJ" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                      <node concept="3uibUv" id="AM" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799517" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="AK" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                      <node concept="3clFbF" id="AN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799519" />
                        <node concept="2YIFZM" id="AO" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582799706" />
                          <node concept="2YIFZM" id="AP" role="37wK5m">
                            <ref role="37wK5l" to="tpcn:6_gUeurcK7u" resolve="getApplicableAttributes" />
                            <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                            <uo k="s:originTrace" v="n:6836281137582799707" />
                            <node concept="1PxgMI" id="AQ" role="37wK5m">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582799708" />
                              <node concept="1eOMI4" id="AS" role="1m5AlR">
                                <uo k="s:originTrace" v="n:6836281137582799709" />
                                <node concept="3K4zz7" id="AU" role="1eOMHV">
                                  <uo k="s:originTrace" v="n:6836281137582799710" />
                                  <node concept="1DoJHT" id="AV" role="3K4E3e">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582799711" />
                                    <node concept="3uibUv" id="AY" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="AZ" role="1EMhIo">
                                      <ref role="3cqZAo" node="AJ" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="AW" role="3K4Cdx">
                                    <uo k="s:originTrace" v="n:6836281137582799712" />
                                    <node concept="1DoJHT" id="B0" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582799713" />
                                      <node concept="3uibUv" id="B2" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="B3" role="1EMhIo">
                                        <ref role="3cqZAo" node="AJ" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="3w_OXm" id="B1" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582799714" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="AX" role="3K4GZi">
                                    <uo k="s:originTrace" v="n:6836281137582799715" />
                                    <node concept="1DoJHT" id="B4" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582799716" />
                                      <node concept="3uibUv" id="B6" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="B7" role="1EMhIo">
                                        <ref role="3cqZAo" node="AJ" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="B5" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582799717" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="chp4Y" id="AT" role="3oSUPX">
                                <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                                <uo k="s:originTrace" v="n:6836281137582799719" />
                              </node>
                            </node>
                            <node concept="2tJFMh" id="AR" role="37wK5m">
                              <uo k="s:originTrace" v="n:8525822767680263346" />
                              <node concept="ZC_QK" id="B8" role="2tJFKM">
                                <ref role="2aWVGs" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
                                <uo k="s:originTrace" v="n:8525822767680263345" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="AL" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799517" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="As" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:6407023681583036864" />
        </node>
      </node>
      <node concept="3uibUv" id="A8" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:6407023681583036864" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="B9">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="NodePointerExpression_Old_Constraints" />
    <uo k="s:originTrace" v="n:1828409047608048473" />
    <node concept="3Tm1VV" id="Ba" role="1B3o_S">
      <uo k="s:originTrace" v="n:1828409047608048473" />
    </node>
    <node concept="3uibUv" id="Bb" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1828409047608048473" />
    </node>
    <node concept="3clFbW" id="Bc" role="jymVt">
      <uo k="s:originTrace" v="n:1828409047608048473" />
      <node concept="37vLTG" id="Bf" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1828409047608048473" />
        <node concept="3uibUv" id="Bi" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
      </node>
      <node concept="3cqZAl" id="Bg" role="3clF45">
        <uo k="s:originTrace" v="n:1828409047608048473" />
      </node>
      <node concept="3clFbS" id="Bh" role="3clF47">
        <uo k="s:originTrace" v="n:1828409047608048473" />
        <node concept="XkiVB" id="Bj" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
          <node concept="1BaE9c" id="Bl" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NodePointerExpression_Old$34" />
            <uo k="s:originTrace" v="n:1828409047608048473" />
            <node concept="2YIFZM" id="Bn" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1828409047608048473" />
              <node concept="11gdke" id="Bo" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
              </node>
              <node concept="11gdke" id="Bp" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
              </node>
              <node concept="11gdke" id="Bq" role="37wK5m">
                <property role="11gdj1" value="195fd0576ac9bb49L" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
              </node>
              <node concept="Xl_RD" id="Br" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.NodePointerExpression_Old" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Bm" role="37wK5m">
            <ref role="3cqZAo" node="Bf" resolve="initContext" />
            <uo k="s:originTrace" v="n:1828409047608048473" />
          </node>
        </node>
        <node concept="3clFbF" id="Bk" role="3cqZAp">
          <uo k="s:originTrace" v="n:1828409047608048473" />
          <node concept="1rXfSq" id="Bs" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1828409047608048473" />
            <node concept="2ShNRf" id="Bt" role="37wK5m">
              <uo k="s:originTrace" v="n:1828409047608048473" />
              <node concept="1pGfFk" id="Bu" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Bw" resolve="NodePointerExpression_Old_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
                <node concept="Xjq3P" id="Bv" role="37wK5m">
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Bd" role="jymVt">
      <uo k="s:originTrace" v="n:1828409047608048473" />
    </node>
    <node concept="312cEu" id="Be" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1828409047608048473" />
      <node concept="3clFbW" id="Bw" role="jymVt">
        <uo k="s:originTrace" v="n:1828409047608048473" />
        <node concept="37vLTG" id="Bz" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
          <node concept="3uibUv" id="BA" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1828409047608048473" />
          </node>
        </node>
        <node concept="3cqZAl" id="B$" role="3clF45">
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
        <node concept="3clFbS" id="B_" role="3clF47">
          <uo k="s:originTrace" v="n:1828409047608048473" />
          <node concept="XkiVB" id="BB" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1828409047608048473" />
            <node concept="1BaE9c" id="BC" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="referentNode$vTNw" />
              <uo k="s:originTrace" v="n:1828409047608048473" />
              <node concept="2YIFZM" id="BG" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1828409047608048473" />
                <node concept="11gdke" id="BH" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
                <node concept="11gdke" id="BI" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
                <node concept="11gdke" id="BJ" role="37wK5m">
                  <property role="11gdj1" value="195fd0576ac9bb49L" />
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
                <node concept="11gdke" id="BK" role="37wK5m">
                  <property role="11gdj1" value="195fd0576ac9bb4aL" />
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
                <node concept="Xl_RD" id="BL" role="37wK5m">
                  <property role="Xl_RC" value="referentNode" />
                  <uo k="s:originTrace" v="n:1828409047608048473" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="BD" role="37wK5m">
              <ref role="3cqZAo" node="Bz" resolve="container" />
              <uo k="s:originTrace" v="n:1828409047608048473" />
            </node>
            <node concept="3clFbT" id="BE" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1828409047608048473" />
            </node>
            <node concept="3clFbT" id="BF" role="37wK5m">
              <uo k="s:originTrace" v="n:1828409047608048473" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Bx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1828409047608048473" />
        <node concept="3Tm1VV" id="BM" role="1B3o_S">
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
        <node concept="3uibUv" id="BN" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
        <node concept="2AHcQZ" id="BO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
        <node concept="3clFbS" id="BP" role="3clF47">
          <uo k="s:originTrace" v="n:1828409047608048473" />
          <node concept="3cpWs6" id="BR" role="3cqZAp">
            <uo k="s:originTrace" v="n:1828409047608048473" />
            <node concept="2ShNRf" id="BS" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800519" />
              <node concept="YeOm9" id="BT" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800519" />
                <node concept="1Y3b0j" id="BU" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800519" />
                  <node concept="3Tm1VV" id="BV" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800519" />
                  </node>
                  <node concept="3clFb_" id="BW" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800519" />
                    <node concept="3Tm1VV" id="BY" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                    <node concept="3uibUv" id="BZ" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                    <node concept="3clFbS" id="C0" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                      <node concept="3cpWs6" id="C2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800519" />
                        <node concept="2ShNRf" id="C3" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800519" />
                          <node concept="1pGfFk" id="C4" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800519" />
                            <node concept="Xl_RD" id="C5" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800519" />
                            </node>
                            <node concept="Xl_RD" id="C6" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800519" />
                              <uo k="s:originTrace" v="n:6836281137582800519" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="C1" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="BX" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800519" />
                    <node concept="3Tm1VV" id="C7" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                    <node concept="3uibUv" id="C8" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                    <node concept="37vLTG" id="C9" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                      <node concept="3uibUv" id="Cc" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800519" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Ca" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                      <node concept="3clFbF" id="Cd" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8792939823003031765" />
                        <node concept="2ShNRf" id="Ce" role="3clFbG">
                          <uo k="s:originTrace" v="n:8792939823003031761" />
                          <node concept="1pGfFk" id="Cf" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:8792939823003034112" />
                            <node concept="2OqwBi" id="Cg" role="37wK5m">
                              <uo k="s:originTrace" v="n:8792939823003060743" />
                              <node concept="1DoJHT" id="Cj" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:8792939823003059951" />
                                <node concept="3uibUv" id="Cl" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="Cm" role="1EMhIo">
                                  <ref role="3cqZAo" node="C9" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="Ck" role="2OqNvi">
                                <uo k="s:originTrace" v="n:8792939823003061584" />
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="Ch" role="37wK5m">
                              <uo k="s:originTrace" v="n:8944013247830898026" />
                              <node concept="2OqwBi" id="Cn" role="3fr31v">
                                <uo k="s:originTrace" v="n:8944013247830898028" />
                                <node concept="1DoJHT" id="Co" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:8944013247830898029" />
                                  <node concept="3uibUv" id="Cq" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="Cr" role="1EMhIo">
                                    <ref role="3cqZAo" node="C9" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="Cp" role="2OqNvi">
                                  <ref role="3TsBF5" to="tp25:7Kvxa_nmhU5" resolve="includeNonRoot" />
                                  <uo k="s:originTrace" v="n:8944013247830898030" />
                                </node>
                              </node>
                            </node>
                            <node concept="35c_gC" id="Ci" role="37wK5m">
                              <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              <uo k="s:originTrace" v="n:8792939823003063401" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Cb" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800519" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="BQ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1828409047608048473" />
        </node>
      </node>
      <node concept="3uibUv" id="By" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1828409047608048473" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Cs">
    <property role="3GE5qa" value="operation.pointer" />
    <property role="TrG5h" value="NodePointer_GetModelOperation_Constraints" />
    <uo k="s:originTrace" v="n:6138838330738724389" />
    <node concept="3Tm1VV" id="Ct" role="1B3o_S">
      <uo k="s:originTrace" v="n:6138838330738724389" />
    </node>
    <node concept="3uibUv" id="Cu" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:6138838330738724389" />
    </node>
    <node concept="3clFbW" id="Cv" role="jymVt">
      <uo k="s:originTrace" v="n:6138838330738724389" />
      <node concept="37vLTG" id="Cy" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="3uibUv" id="C_" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
        </node>
      </node>
      <node concept="3cqZAl" id="Cz" role="3clF45">
        <uo k="s:originTrace" v="n:6138838330738724389" />
      </node>
      <node concept="3clFbS" id="C$" role="3clF47">
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="XkiVB" id="CA" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
          <node concept="1BaE9c" id="CC" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NodePointer_GetModelOperation$aY" />
            <uo k="s:originTrace" v="n:6138838330738724389" />
            <node concept="2YIFZM" id="CE" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:6138838330738724389" />
              <node concept="11gdke" id="CF" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:6138838330738724389" />
              </node>
              <node concept="11gdke" id="CG" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:6138838330738724389" />
              </node>
              <node concept="11gdke" id="CH" role="37wK5m">
                <property role="11gdj1" value="553188efd53bcda0L" />
                <uo k="s:originTrace" v="n:6138838330738724389" />
              </node>
              <node concept="Xl_RD" id="CI" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.NodePointer_GetModelOperation" />
                <uo k="s:originTrace" v="n:6138838330738724389" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="CD" role="37wK5m">
            <ref role="3cqZAo" node="Cy" resolve="initContext" />
            <uo k="s:originTrace" v="n:6138838330738724389" />
          </node>
        </node>
        <node concept="3clFbF" id="CB" role="3cqZAp">
          <uo k="s:originTrace" v="n:6138838330738724389" />
          <node concept="1rXfSq" id="CJ" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:6138838330738724389" />
            <node concept="2ShNRf" id="CK" role="37wK5m">
              <uo k="s:originTrace" v="n:6138838330738724389" />
              <node concept="YeOm9" id="CL" role="2ShVmc">
                <uo k="s:originTrace" v="n:6138838330738724389" />
                <node concept="1Y3b0j" id="CM" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:6138838330738724389" />
                  <node concept="3Tm1VV" id="CN" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6138838330738724389" />
                  </node>
                  <node concept="3clFb_" id="CO" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:6138838330738724389" />
                    <node concept="3Tm1VV" id="CR" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                    </node>
                    <node concept="2AHcQZ" id="CS" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                    </node>
                    <node concept="3uibUv" id="CT" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                    </node>
                    <node concept="37vLTG" id="CU" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                      <node concept="3uibUv" id="CX" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                      <node concept="2AHcQZ" id="CY" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="CV" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                      <node concept="3uibUv" id="CZ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                      <node concept="2AHcQZ" id="D0" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="CW" role="3clF47">
                      <uo k="s:originTrace" v="n:6138838330738724389" />
                      <node concept="3cpWs8" id="D1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                        <node concept="3cpWsn" id="D6" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:6138838330738724389" />
                          <node concept="10P_77" id="D7" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6138838330738724389" />
                          </node>
                          <node concept="1rXfSq" id="D8" role="33vP2m">
                            <ref role="37wK5l" node="Cx" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:6138838330738724389" />
                            <node concept="2OqwBi" id="D9" role="37wK5m">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                              <node concept="37vLTw" id="Dd" role="2Oq$k0">
                                <ref role="3cqZAo" node="CU" resolve="context" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                              <node concept="liA8E" id="De" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Da" role="37wK5m">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                              <node concept="37vLTw" id="Df" role="2Oq$k0">
                                <ref role="3cqZAo" node="CU" resolve="context" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                              <node concept="liA8E" id="Dg" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Db" role="37wK5m">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                              <node concept="37vLTw" id="Dh" role="2Oq$k0">
                                <ref role="3cqZAo" node="CU" resolve="context" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                              <node concept="liA8E" id="Di" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Dc" role="37wK5m">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                              <node concept="37vLTw" id="Dj" role="2Oq$k0">
                                <ref role="3cqZAo" node="CU" resolve="context" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                              <node concept="liA8E" id="Dk" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="D2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                      <node concept="3clFbJ" id="D3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                        <node concept="3clFbS" id="Dl" role="3clFbx">
                          <uo k="s:originTrace" v="n:6138838330738724389" />
                          <node concept="3clFbF" id="Dn" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6138838330738724389" />
                            <node concept="2OqwBi" id="Do" role="3clFbG">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                              <node concept="37vLTw" id="Dp" role="2Oq$k0">
                                <ref role="3cqZAo" node="CV" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                              </node>
                              <node concept="liA8E" id="Dq" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:6138838330738724389" />
                                <node concept="1dyn4i" id="Dr" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:6138838330738724389" />
                                  <node concept="2ShNRf" id="Ds" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:6138838330738724389" />
                                    <node concept="1pGfFk" id="Dt" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:6138838330738724389" />
                                      <node concept="Xl_RD" id="Du" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:6138838330738724389" />
                                      </node>
                                      <node concept="Xl_RD" id="Dv" role="37wK5m">
                                        <property role="Xl_RC" value="6138838330738724396" />
                                        <uo k="s:originTrace" v="n:6138838330738724389" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="Dm" role="3clFbw">
                          <uo k="s:originTrace" v="n:6138838330738724389" />
                          <node concept="3y3z36" id="Dw" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6138838330738724389" />
                            <node concept="10Nm6u" id="Dy" role="3uHU7w">
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                            </node>
                            <node concept="37vLTw" id="Dz" role="3uHU7B">
                              <ref role="3cqZAo" node="CV" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="Dx" role="3uHU7B">
                            <uo k="s:originTrace" v="n:6138838330738724389" />
                            <node concept="37vLTw" id="D$" role="3fr31v">
                              <ref role="3cqZAo" node="D6" resolve="result" />
                              <uo k="s:originTrace" v="n:6138838330738724389" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="D4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                      </node>
                      <node concept="3clFbF" id="D5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6138838330738724389" />
                        <node concept="37vLTw" id="D_" role="3clFbG">
                          <ref role="3cqZAo" node="D6" resolve="result" />
                          <uo k="s:originTrace" v="n:6138838330738724389" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="CP" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:6138838330738724389" />
                  </node>
                  <node concept="3uibUv" id="CQ" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:6138838330738724389" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Cw" role="jymVt">
      <uo k="s:originTrace" v="n:6138838330738724389" />
    </node>
    <node concept="2YIFZL" id="Cx" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:6138838330738724389" />
      <node concept="10P_77" id="DA" role="3clF45">
        <uo k="s:originTrace" v="n:6138838330738724389" />
      </node>
      <node concept="3Tm6S6" id="DB" role="1B3o_S">
        <uo k="s:originTrace" v="n:6138838330738724389" />
      </node>
      <node concept="3clFbS" id="DC" role="3clF47">
        <uo k="s:originTrace" v="n:6138838330738724397" />
        <node concept="3clFbF" id="DH" role="3cqZAp">
          <uo k="s:originTrace" v="n:6138838330738759558" />
          <node concept="2OqwBi" id="DI" role="3clFbG">
            <uo k="s:originTrace" v="n:6138838330738764084" />
            <node concept="1UdQGJ" id="DJ" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6138838330738759555" />
              <node concept="1YaCAy" id="DL" role="1Ub_4A">
                <property role="TrG5h" value="t" />
                <ref role="1YaFvo" to="tp25:6qMaajUPFau" resolve="SNodePointerType" />
                <uo k="s:originTrace" v="n:6138838330738760772" />
              </node>
              <node concept="2OqwBi" id="DM" role="1Ub_4B">
                <uo k="s:originTrace" v="n:6138838330738737389" />
                <node concept="2OqwBi" id="DN" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6138838330738732918" />
                  <node concept="1PxgMI" id="DP" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <uo k="s:originTrace" v="n:6138838330738731218" />
                    <node concept="chp4Y" id="DR" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <uo k="s:originTrace" v="n:6138838330738731703" />
                    </node>
                    <node concept="37vLTw" id="DS" role="1m5AlR">
                      <ref role="3cqZAo" node="DE" resolve="parentNode" />
                      <uo k="s:originTrace" v="n:6138838330738724855" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="DQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:4608154432906997419" />
                  </node>
                </node>
                <node concept="3JvlWi" id="DO" role="2OqNvi">
                  <uo k="s:originTrace" v="n:6138838330738738563" />
                </node>
              </node>
            </node>
            <node concept="3x8VRR" id="DK" role="2OqNvi">
              <uo k="s:originTrace" v="n:6138838330738766132" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="DD" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="3uibUv" id="DT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
        </node>
      </node>
      <node concept="37vLTG" id="DE" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="3uibUv" id="DU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
        </node>
      </node>
      <node concept="37vLTG" id="DF" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="3uibUv" id="DV" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
        </node>
      </node>
      <node concept="37vLTG" id="DG" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:6138838330738724389" />
        <node concept="3uibUv" id="DW" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:6138838330738724389" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="DX">
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="NodePointer_ResolveOperation_Constraints" />
    <uo k="s:originTrace" v="n:7726325683123716641" />
    <node concept="3Tm1VV" id="DY" role="1B3o_S">
      <uo k="s:originTrace" v="n:7726325683123716641" />
    </node>
    <node concept="3uibUv" id="DZ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:7726325683123716641" />
    </node>
    <node concept="3clFbW" id="E0" role="jymVt">
      <uo k="s:originTrace" v="n:7726325683123716641" />
      <node concept="37vLTG" id="E3" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="3uibUv" id="E6" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
        </node>
      </node>
      <node concept="3cqZAl" id="E4" role="3clF45">
        <uo k="s:originTrace" v="n:7726325683123716641" />
      </node>
      <node concept="3clFbS" id="E5" role="3clF47">
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="XkiVB" id="E7" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
          <node concept="1BaE9c" id="E9" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NodePointer_ResolveOperation$ng" />
            <uo k="s:originTrace" v="n:7726325683123716641" />
            <node concept="2YIFZM" id="Eb" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:7726325683123716641" />
              <node concept="11gdke" id="Ec" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:7726325683123716641" />
              </node>
              <node concept="11gdke" id="Ed" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:7726325683123716641" />
              </node>
              <node concept="11gdke" id="Ee" role="37wK5m">
                <property role="11gdj1" value="32a2de94092b18f4L" />
                <uo k="s:originTrace" v="n:7726325683123716641" />
              </node>
              <node concept="Xl_RD" id="Ef" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" />
                <uo k="s:originTrace" v="n:7726325683123716641" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Ea" role="37wK5m">
            <ref role="3cqZAo" node="E3" resolve="initContext" />
            <uo k="s:originTrace" v="n:7726325683123716641" />
          </node>
        </node>
        <node concept="3clFbF" id="E8" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123716641" />
          <node concept="1rXfSq" id="Eg" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:7726325683123716641" />
            <node concept="2ShNRf" id="Eh" role="37wK5m">
              <uo k="s:originTrace" v="n:7726325683123716641" />
              <node concept="YeOm9" id="Ei" role="2ShVmc">
                <uo k="s:originTrace" v="n:7726325683123716641" />
                <node concept="1Y3b0j" id="Ej" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:7726325683123716641" />
                  <node concept="3Tm1VV" id="Ek" role="1B3o_S">
                    <uo k="s:originTrace" v="n:7726325683123716641" />
                  </node>
                  <node concept="3clFb_" id="El" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:7726325683123716641" />
                    <node concept="3Tm1VV" id="Eo" role="1B3o_S">
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                    </node>
                    <node concept="2AHcQZ" id="Ep" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                    </node>
                    <node concept="3uibUv" id="Eq" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                    </node>
                    <node concept="37vLTG" id="Er" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                      <node concept="3uibUv" id="Eu" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                      <node concept="2AHcQZ" id="Ev" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="Es" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                      <node concept="3uibUv" id="Ew" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                      <node concept="2AHcQZ" id="Ex" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Et" role="3clF47">
                      <uo k="s:originTrace" v="n:7726325683123716641" />
                      <node concept="3cpWs8" id="Ey" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                        <node concept="3cpWsn" id="EB" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:7726325683123716641" />
                          <node concept="10P_77" id="EC" role="1tU5fm">
                            <uo k="s:originTrace" v="n:7726325683123716641" />
                          </node>
                          <node concept="1rXfSq" id="ED" role="33vP2m">
                            <ref role="37wK5l" node="E2" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:7726325683123716641" />
                            <node concept="2OqwBi" id="EE" role="37wK5m">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                              <node concept="37vLTw" id="EI" role="2Oq$k0">
                                <ref role="3cqZAo" node="Er" resolve="context" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                              <node concept="liA8E" id="EJ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EF" role="37wK5m">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                              <node concept="37vLTw" id="EK" role="2Oq$k0">
                                <ref role="3cqZAo" node="Er" resolve="context" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                              <node concept="liA8E" id="EL" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EG" role="37wK5m">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                              <node concept="37vLTw" id="EM" role="2Oq$k0">
                                <ref role="3cqZAo" node="Er" resolve="context" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                              <node concept="liA8E" id="EN" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="EH" role="37wK5m">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                              <node concept="37vLTw" id="EO" role="2Oq$k0">
                                <ref role="3cqZAo" node="Er" resolve="context" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                              <node concept="liA8E" id="EP" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ez" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                      <node concept="3clFbJ" id="E$" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                        <node concept="3clFbS" id="EQ" role="3clFbx">
                          <uo k="s:originTrace" v="n:7726325683123716641" />
                          <node concept="3clFbF" id="ES" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7726325683123716641" />
                            <node concept="2OqwBi" id="ET" role="3clFbG">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                              <node concept="37vLTw" id="EU" role="2Oq$k0">
                                <ref role="3cqZAo" node="Es" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                              </node>
                              <node concept="liA8E" id="EV" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:7726325683123716641" />
                                <node concept="1dyn4i" id="EW" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:7726325683123716641" />
                                  <node concept="2ShNRf" id="EX" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:7726325683123716641" />
                                    <node concept="1pGfFk" id="EY" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:7726325683123716641" />
                                      <node concept="Xl_RD" id="EZ" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:7726325683123716641" />
                                      </node>
                                      <node concept="Xl_RD" id="F0" role="37wK5m">
                                        <property role="Xl_RC" value="7726325683123716672" />
                                        <uo k="s:originTrace" v="n:7726325683123716641" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="ER" role="3clFbw">
                          <uo k="s:originTrace" v="n:7726325683123716641" />
                          <node concept="3y3z36" id="F1" role="3uHU7w">
                            <uo k="s:originTrace" v="n:7726325683123716641" />
                            <node concept="10Nm6u" id="F3" role="3uHU7w">
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                            </node>
                            <node concept="37vLTw" id="F4" role="3uHU7B">
                              <ref role="3cqZAo" node="Es" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="F2" role="3uHU7B">
                            <uo k="s:originTrace" v="n:7726325683123716641" />
                            <node concept="37vLTw" id="F5" role="3fr31v">
                              <ref role="3cqZAo" node="EB" resolve="result" />
                              <uo k="s:originTrace" v="n:7726325683123716641" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="E_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                      </node>
                      <node concept="3clFbF" id="EA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7726325683123716641" />
                        <node concept="37vLTw" id="F6" role="3clFbG">
                          <ref role="3cqZAo" node="EB" resolve="result" />
                          <uo k="s:originTrace" v="n:7726325683123716641" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="Em" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:7726325683123716641" />
                  </node>
                  <node concept="3uibUv" id="En" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:7726325683123716641" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="E1" role="jymVt">
      <uo k="s:originTrace" v="n:7726325683123716641" />
    </node>
    <node concept="2YIFZL" id="E2" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:7726325683123716641" />
      <node concept="10P_77" id="F7" role="3clF45">
        <uo k="s:originTrace" v="n:7726325683123716641" />
      </node>
      <node concept="3Tm6S6" id="F8" role="1B3o_S">
        <uo k="s:originTrace" v="n:7726325683123716641" />
      </node>
      <node concept="3clFbS" id="F9" role="3clF47">
        <uo k="s:originTrace" v="n:7726325683123716673" />
        <node concept="3clFbJ" id="Fe" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123717155" />
          <node concept="3clFbS" id="Fh" role="3clFbx">
            <uo k="s:originTrace" v="n:7726325683123717156" />
            <node concept="3cpWs6" id="Fj" role="3cqZAp">
              <uo k="s:originTrace" v="n:7726325683123717157" />
              <node concept="3clFbT" id="Fk" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:7726325683123717158" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="Fi" role="3clFbw">
            <uo k="s:originTrace" v="n:7726325683123717159" />
            <node concept="2OqwBi" id="Fl" role="3fr31v">
              <uo k="s:originTrace" v="n:7726325683123717160" />
              <node concept="37vLTw" id="Fm" role="2Oq$k0">
                <ref role="3cqZAo" node="Fb" resolve="parentNode" />
                <uo k="s:originTrace" v="n:7726325683123717161" />
              </node>
              <node concept="1mIQ4w" id="Fn" role="2OqNvi">
                <uo k="s:originTrace" v="n:7726325683123717162" />
                <node concept="chp4Y" id="Fo" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  <uo k="s:originTrace" v="n:7726325683123717163" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Ff" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123718926" />
          <node concept="3cpWsn" id="Fp" role="3cpWs9">
            <property role="TrG5h" value="operandType" />
            <uo k="s:originTrace" v="n:7726325683123718927" />
            <node concept="3Tqbb2" id="Fq" role="1tU5fm">
              <uo k="s:originTrace" v="n:7726325683123718923" />
            </node>
            <node concept="2OqwBi" id="Fr" role="33vP2m">
              <uo k="s:originTrace" v="n:7726325683123718928" />
              <node concept="2OqwBi" id="Fs" role="2Oq$k0">
                <uo k="s:originTrace" v="n:7726325683123718929" />
                <node concept="1PxgMI" id="Fu" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:7726325683123718930" />
                  <node concept="37vLTw" id="Fw" role="1m5AlR">
                    <ref role="3cqZAo" node="Fb" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:7726325683123718931" />
                  </node>
                  <node concept="chp4Y" id="Fx" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <uo k="s:originTrace" v="n:7726325683123718932" />
                  </node>
                </node>
                <node concept="3TrEf2" id="Fv" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                  <uo k="s:originTrace" v="n:7726325683123718933" />
                </node>
              </node>
              <node concept="3JvlWi" id="Ft" role="2OqNvi">
                <uo k="s:originTrace" v="n:7726325683123718934" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Fg" role="3cqZAp">
          <uo k="s:originTrace" v="n:7726325683123717164" />
          <node concept="2OqwBi" id="Fy" role="3clFbG">
            <uo k="s:originTrace" v="n:7726325683123734144" />
            <node concept="1UdQGJ" id="Fz" role="2Oq$k0">
              <uo k="s:originTrace" v="n:7726325683123726078" />
              <node concept="1YaCAy" id="F_" role="1Ub_4A">
                <property role="TrG5h" value="type" />
                <ref role="1YaFvo" to="tp25:6qMaajUPFau" resolve="SNodePointerType" />
                <uo k="s:originTrace" v="n:7726325683123727484" />
              </node>
              <node concept="37vLTw" id="FA" role="1Ub_4B">
                <ref role="3cqZAo" node="Fp" resolve="operandType" />
                <uo k="s:originTrace" v="n:7726325683123726784" />
              </node>
            </node>
            <node concept="3x8VRR" id="F$" role="2OqNvi">
              <uo k="s:originTrace" v="n:7726325683123736174" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Fa" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="3uibUv" id="FB" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
        </node>
      </node>
      <node concept="37vLTG" id="Fb" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="3uibUv" id="FC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
        </node>
      </node>
      <node concept="37vLTG" id="Fc" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="3uibUv" id="FD" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
        </node>
      </node>
      <node concept="37vLTG" id="Fd" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:7726325683123716641" />
        <node concept="3uibUv" id="FE" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:7726325683123716641" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="FF">
    <property role="TrG5h" value="NodeRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:1219363770439" />
    <node concept="3Tm1VV" id="FG" role="1B3o_S">
      <uo k="s:originTrace" v="n:1219363770439" />
    </node>
    <node concept="3uibUv" id="FH" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1219363770439" />
    </node>
    <node concept="3clFbW" id="FI" role="jymVt">
      <uo k="s:originTrace" v="n:1219363770439" />
      <node concept="37vLTG" id="FL" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1219363770439" />
        <node concept="3uibUv" id="FO" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
      </node>
      <node concept="3cqZAl" id="FM" role="3clF45">
        <uo k="s:originTrace" v="n:1219363770439" />
      </node>
      <node concept="3clFbS" id="FN" role="3clF47">
        <uo k="s:originTrace" v="n:1219363770439" />
        <node concept="XkiVB" id="FP" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1219363770439" />
          <node concept="1BaE9c" id="FR" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="NodeRefExpression$bY" />
            <uo k="s:originTrace" v="n:1219363770439" />
            <node concept="2YIFZM" id="FT" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1219363770439" />
              <node concept="11gdke" id="FU" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1219363770439" />
              </node>
              <node concept="11gdke" id="FV" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1219363770439" />
              </node>
              <node concept="11gdke" id="FW" role="37wK5m">
                <property role="11gdj1" value="11be716563cL" />
                <uo k="s:originTrace" v="n:1219363770439" />
              </node>
              <node concept="Xl_RD" id="FX" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.NodeRefExpression" />
                <uo k="s:originTrace" v="n:1219363770439" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="FS" role="37wK5m">
            <ref role="3cqZAo" node="FL" resolve="initContext" />
            <uo k="s:originTrace" v="n:1219363770439" />
          </node>
        </node>
        <node concept="3clFbF" id="FQ" role="3cqZAp">
          <uo k="s:originTrace" v="n:1219363770439" />
          <node concept="1rXfSq" id="FY" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1219363770439" />
            <node concept="2ShNRf" id="FZ" role="37wK5m">
              <uo k="s:originTrace" v="n:1219363770439" />
              <node concept="1pGfFk" id="G0" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="G2" resolve="NodeRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1219363770439" />
                <node concept="Xjq3P" id="G1" role="37wK5m">
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FJ" role="jymVt">
      <uo k="s:originTrace" v="n:1219363770439" />
    </node>
    <node concept="312cEu" id="FK" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1219363770439" />
      <node concept="3clFbW" id="G2" role="jymVt">
        <uo k="s:originTrace" v="n:1219363770439" />
        <node concept="37vLTG" id="G5" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1219363770439" />
          <node concept="3uibUv" id="G8" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1219363770439" />
          </node>
        </node>
        <node concept="3cqZAl" id="G6" role="3clF45">
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
        <node concept="3clFbS" id="G7" role="3clF47">
          <uo k="s:originTrace" v="n:1219363770439" />
          <node concept="XkiVB" id="G9" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1219363770439" />
            <node concept="1BaE9c" id="Ga" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="referentNode$aJMc" />
              <uo k="s:originTrace" v="n:1219363770439" />
              <node concept="2YIFZM" id="Ge" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1219363770439" />
                <node concept="11gdke" id="Gf" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
                <node concept="11gdke" id="Gg" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
                <node concept="11gdke" id="Gh" role="37wK5m">
                  <property role="11gdj1" value="11be716563cL" />
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
                <node concept="11gdke" id="Gi" role="37wK5m">
                  <property role="11gdj1" value="11be7172e8cL" />
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
                <node concept="Xl_RD" id="Gj" role="37wK5m">
                  <property role="Xl_RC" value="referentNode" />
                  <uo k="s:originTrace" v="n:1219363770439" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Gb" role="37wK5m">
              <ref role="3cqZAo" node="G5" resolve="container" />
              <uo k="s:originTrace" v="n:1219363770439" />
            </node>
            <node concept="3clFbT" id="Gc" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1219363770439" />
            </node>
            <node concept="3clFbT" id="Gd" role="37wK5m">
              <uo k="s:originTrace" v="n:1219363770439" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="G3" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1219363770439" />
        <node concept="3Tm1VV" id="Gk" role="1B3o_S">
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
        <node concept="3uibUv" id="Gl" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
        <node concept="2AHcQZ" id="Gm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
        <node concept="3clFbS" id="Gn" role="3clF47">
          <uo k="s:originTrace" v="n:1219363770439" />
          <node concept="3cpWs6" id="Gp" role="3cqZAp">
            <uo k="s:originTrace" v="n:1219363770439" />
            <node concept="2ShNRf" id="Gq" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799302" />
              <node concept="YeOm9" id="Gr" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799302" />
                <node concept="1Y3b0j" id="Gs" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799302" />
                  <node concept="3Tm1VV" id="Gt" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799302" />
                  </node>
                  <node concept="3clFb_" id="Gu" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799302" />
                    <node concept="3Tm1VV" id="Gw" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                    <node concept="3uibUv" id="Gx" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                    <node concept="3clFbS" id="Gy" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                      <node concept="3cpWs6" id="G$" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799302" />
                        <node concept="2ShNRf" id="G_" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799302" />
                          <node concept="1pGfFk" id="GA" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799302" />
                            <node concept="Xl_RD" id="GB" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799302" />
                            </node>
                            <node concept="Xl_RD" id="GC" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799302" />
                              <uo k="s:originTrace" v="n:6836281137582799302" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Gz" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Gv" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799302" />
                    <node concept="3Tm1VV" id="GD" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                    <node concept="3uibUv" id="GE" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                    <node concept="37vLTG" id="GF" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                      <node concept="3uibUv" id="GI" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799302" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="GG" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                      <node concept="3SKdUt" id="GJ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799304" />
                        <node concept="1PaTwC" id="GL" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814515" />
                          <node concept="3oM_SD" id="GM" role="1PaTwD">
                            <property role="3oM_SC" value="roots" />
                            <uo k="s:originTrace" v="n:700871696606814516" />
                          </node>
                          <node concept="3oM_SD" id="GN" role="1PaTwD">
                            <property role="3oM_SC" value="only" />
                            <uo k="s:originTrace" v="n:700871696606814517" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="GK" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8792939823003067301" />
                        <node concept="2ShNRf" id="GO" role="3clFbG">
                          <uo k="s:originTrace" v="n:8792939823003067302" />
                          <node concept="1pGfFk" id="GP" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:8792939823003067303" />
                            <node concept="2OqwBi" id="GQ" role="37wK5m">
                              <uo k="s:originTrace" v="n:8792939823003067304" />
                              <node concept="1DoJHT" id="GT" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:8792939823003067305" />
                                <node concept="3uibUv" id="GV" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="GW" role="1EMhIo">
                                  <ref role="3cqZAo" node="GF" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="GU" role="2OqNvi">
                                <uo k="s:originTrace" v="n:8792939823003067306" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="GR" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:8792939823003067307" />
                            </node>
                            <node concept="35c_gC" id="GS" role="37wK5m">
                              <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              <uo k="s:originTrace" v="n:8792939823003067308" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="GH" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799302" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Go" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1219363770439" />
        </node>
      </node>
      <node concept="3uibUv" id="G4" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1219363770439" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="GX">
    <property role="TrG5h" value="Node_ConceptMethodCall_Constraints" />
    <uo k="s:originTrace" v="n:1213104840560" />
    <node concept="3Tm1VV" id="GY" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104840560" />
    </node>
    <node concept="3uibUv" id="GZ" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104840560" />
    </node>
    <node concept="3clFbW" id="H0" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840560" />
      <node concept="37vLTG" id="H3" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104840560" />
        <node concept="3uibUv" id="H6" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
      </node>
      <node concept="3cqZAl" id="H4" role="3clF45">
        <uo k="s:originTrace" v="n:1213104840560" />
      </node>
      <node concept="3clFbS" id="H5" role="3clF47">
        <uo k="s:originTrace" v="n:1213104840560" />
        <node concept="XkiVB" id="H7" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104840560" />
          <node concept="1BaE9c" id="H9" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Node_ConceptMethodCall$mz" />
            <uo k="s:originTrace" v="n:1213104840560" />
            <node concept="2YIFZM" id="Hb" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104840560" />
              <node concept="11gdke" id="Hc" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104840560" />
              </node>
              <node concept="11gdke" id="Hd" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104840560" />
              </node>
              <node concept="11gdke" id="He" role="37wK5m">
                <property role="11gdj1" value="1129a43046bL" />
                <uo k="s:originTrace" v="n:1213104840560" />
              </node>
              <node concept="Xl_RD" id="Hf" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" />
                <uo k="s:originTrace" v="n:1213104840560" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Ha" role="37wK5m">
            <ref role="3cqZAo" node="H3" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104840560" />
          </node>
        </node>
        <node concept="3clFbF" id="H8" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104840560" />
          <node concept="1rXfSq" id="Hg" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104840560" />
            <node concept="2ShNRf" id="Hh" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840560" />
              <node concept="1pGfFk" id="Hi" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Hk" resolve="Node_ConceptMethodCall_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104840560" />
                <node concept="Xjq3P" id="Hj" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="H1" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840560" />
    </node>
    <node concept="312cEu" id="H2" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104840560" />
      <node concept="3clFbW" id="Hk" role="jymVt">
        <uo k="s:originTrace" v="n:1213104840560" />
        <node concept="37vLTG" id="Hn" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104840560" />
          <node concept="3uibUv" id="Hq" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840560" />
          </node>
        </node>
        <node concept="3cqZAl" id="Ho" role="3clF45">
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
        <node concept="3clFbS" id="Hp" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840560" />
          <node concept="XkiVB" id="Hr" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840560" />
            <node concept="1BaE9c" id="Hs" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="baseMethodDeclaration$pyYw" />
              <uo k="s:originTrace" v="n:1213104840560" />
              <node concept="2YIFZM" id="Hw" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104840560" />
                <node concept="11gdke" id="Hx" role="37wK5m">
                  <property role="11gdj1" value="f3061a5392264cc5L" />
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
                <node concept="11gdke" id="Hy" role="37wK5m">
                  <property role="11gdj1" value="a443f952ceaf5816L" />
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
                <node concept="11gdke" id="Hz" role="37wK5m">
                  <property role="11gdj1" value="11857355952L" />
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
                <node concept="11gdke" id="H$" role="37wK5m">
                  <property role="11gdj1" value="f8c78301adL" />
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
                <node concept="Xl_RD" id="H_" role="37wK5m">
                  <property role="Xl_RC" value="baseMethodDeclaration" />
                  <uo k="s:originTrace" v="n:1213104840560" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Ht" role="37wK5m">
              <ref role="3cqZAo" node="Hn" resolve="container" />
              <uo k="s:originTrace" v="n:1213104840560" />
            </node>
            <node concept="3clFbT" id="Hu" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104840560" />
            </node>
            <node concept="3clFbT" id="Hv" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840560" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Hl" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104840560" />
        <node concept="3Tm1VV" id="HA" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
        <node concept="3uibUv" id="HB" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
        <node concept="2AHcQZ" id="HC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
        <node concept="3clFbS" id="HD" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840560" />
          <node concept="3cpWs6" id="HF" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104840560" />
            <node concept="2ShNRf" id="HG" role="3cqZAk">
              <uo k="s:originTrace" v="n:6302905782373066148" />
              <node concept="YeOm9" id="HH" role="2ShVmc">
                <uo k="s:originTrace" v="n:6302905782373066148" />
                <node concept="1Y3b0j" id="HI" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6302905782373066148" />
                  <node concept="3Tm1VV" id="HJ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                  </node>
                  <node concept="3clFb_" id="HK" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                    <node concept="3Tm1VV" id="HM" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3uibUv" id="HN" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3clFbS" id="HO" role="3clF47">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3cpWs6" id="HQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066148" />
                        <node concept="2ShNRf" id="HR" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6302905782373066148" />
                          <node concept="1pGfFk" id="HS" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6302905782373066148" />
                            <node concept="Xl_RD" id="HT" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6302905782373066148" />
                            </node>
                            <node concept="Xl_RD" id="HU" role="37wK5m">
                              <property role="Xl_RC" value="6302905782373066148" />
                              <uo k="s:originTrace" v="n:6302905782373066148" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="HP" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="HL" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6302905782373066148" />
                    <node concept="3Tm1VV" id="HV" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="3uibUv" id="HW" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                    <node concept="37vLTG" id="HX" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3uibUv" id="I0" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6302905782373066148" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="HY" role="3clF47">
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                      <node concept="3cpWs8" id="I1" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066384" />
                        <node concept="3cpWsn" id="Ir" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6302905782373066385" />
                          <node concept="3Tqbb2" id="Is" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066386" />
                          </node>
                          <node concept="1eOMI4" id="It" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066375" />
                            <node concept="3K4zz7" id="Iu" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6302905782373066376" />
                              <node concept="1DoJHT" id="Iv" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6302905782373066377" />
                                <node concept="3uibUv" id="Iy" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="Iz" role="1EMhIo">
                                  <ref role="3cqZAo" node="HX" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="Iw" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6302905782373066378" />
                                <node concept="1DoJHT" id="I$" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066379" />
                                  <node concept="3uibUv" id="IA" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="IB" role="1EMhIo">
                                    <ref role="3cqZAo" node="HX" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="I_" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066380" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="Ix" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6302905782373066381" />
                                <node concept="1DoJHT" id="IC" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066382" />
                                  <node concept="3uibUv" id="IE" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="IF" role="1EMhIo">
                                    <ref role="3cqZAo" node="HX" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="ID" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066383" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="I2" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066150" />
                        <node concept="3cpWsn" id="IG" role="3cpWs9">
                          <property role="TrG5h" value="leftExpression" />
                          <uo k="s:originTrace" v="n:6302905782373066151" />
                          <node concept="3Tqbb2" id="IH" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                            <uo k="s:originTrace" v="n:6302905782373066152" />
                          </node>
                          <node concept="2OqwBi" id="II" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066153" />
                            <node concept="1PxgMI" id="IJ" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6302905782373066154" />
                              <node concept="37vLTw" id="IL" role="1m5AlR">
                                <ref role="3cqZAo" node="Ir" resolve="enclosingNode" />
                                <uo k="s:originTrace" v="n:6302905782373066387" />
                              </node>
                              <node concept="chp4Y" id="IM" role="3oSUPX">
                                <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                <uo k="s:originTrace" v="n:6302905782373066156" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="IK" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                              <uo k="s:originTrace" v="n:6302905782373066157" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="I3" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066158" />
                        <node concept="3cpWsn" id="IN" role="3cpWs9">
                          <property role="TrG5h" value="leftType" />
                          <uo k="s:originTrace" v="n:6302905782373066159" />
                          <node concept="3Tqbb2" id="IO" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066160" />
                          </node>
                          <node concept="2OqwBi" id="IP" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066161" />
                            <node concept="3JvlWi" id="IQ" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6302905782373066162" />
                            </node>
                            <node concept="37vLTw" id="IR" role="2Oq$k0">
                              <ref role="3cqZAo" node="IG" resolve="leftExpression" />
                              <uo k="s:originTrace" v="n:6302905782373066163" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="I4" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602115163" />
                      </node>
                      <node concept="3SKdUt" id="I5" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066286" />
                        <node concept="1PaTwC" id="IS" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814452" />
                          <node concept="3oM_SD" id="IT" role="1PaTwD">
                            <property role="3oM_SC" value="any" />
                            <uo k="s:originTrace" v="n:700871696606814453" />
                          </node>
                          <node concept="3oM_SD" id="IU" role="1PaTwD">
                            <property role="3oM_SC" value="concept" />
                            <uo k="s:originTrace" v="n:700871696606814454" />
                          </node>
                          <node concept="3oM_SD" id="IV" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                            <uo k="s:originTrace" v="n:700871696606814455" />
                          </node>
                          <node concept="3oM_SD" id="IW" role="1PaTwD">
                            <property role="3oM_SC" value="AbstractConceptDeclaration," />
                            <uo k="s:originTrace" v="n:700871696606814456" />
                          </node>
                          <node concept="3oM_SD" id="IX" role="1PaTwD">
                            <property role="3oM_SC" value="not" />
                            <uo k="s:originTrace" v="n:700871696606814457" />
                          </node>
                          <node concept="3oM_SD" id="IY" role="1PaTwD">
                            <property role="3oM_SC" value="mere" />
                            <uo k="s:originTrace" v="n:700871696606814458" />
                          </node>
                          <node concept="3oM_SD" id="IZ" role="1PaTwD">
                            <property role="3oM_SC" value="BaseConcept" />
                            <uo k="s:originTrace" v="n:700871696606814459" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="I6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602268308" />
                        <node concept="3cpWsn" id="J0" role="3cpWs9">
                          <property role="TrG5h" value="defaultConceptTypeValue" />
                          <uo k="s:originTrace" v="n:7363014363602268311" />
                          <node concept="3Tqbb2" id="J1" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:7363014363602268304" />
                          </node>
                          <node concept="3B5_sB" id="J2" role="33vP2m">
                            <ref role="3B5MYn" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6302905782373066290" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="I7" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602300207" />
                        <node concept="3cpWsn" id="J3" role="3cpWs9">
                          <property role="TrG5h" value="defaultNodeTypeValue" />
                          <uo k="s:originTrace" v="n:7363014363602300210" />
                          <node concept="3Tqbb2" id="J4" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:7363014363602300205" />
                          </node>
                          <node concept="3B5_sB" id="J5" role="33vP2m">
                            <ref role="3B5MYn" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <uo k="s:originTrace" v="n:7363014363602316178" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="I8" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602257157" />
                      </node>
                      <node concept="3cpWs8" id="I9" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066193" />
                        <node concept="3cpWsn" id="J6" role="3cpWs9">
                          <property role="TrG5h" value="conceptNode" />
                          <uo k="s:originTrace" v="n:6302905782373066194" />
                          <node concept="10Nm6u" id="J7" role="33vP2m">
                            <uo k="s:originTrace" v="n:7363014363602897538" />
                          </node>
                          <node concept="3Tqbb2" id="J8" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6302905782373066195" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Ia" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066198" />
                        <node concept="3cpWsn" id="J9" role="3cpWs9">
                          <property role="TrG5h" value="isStatic" />
                          <uo k="s:originTrace" v="n:6302905782373066199" />
                          <node concept="3clFbT" id="Ja" role="33vP2m">
                            <property role="3clFbU" value="true" />
                            <uo k="s:originTrace" v="n:7363014363602222163" />
                          </node>
                          <node concept="10P_77" id="Jb" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6302905782373066200" />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="Ib" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066196" />
                        <node concept="1PaTwC" id="Jc" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814460" />
                          <node concept="3oM_SD" id="Jd" role="1PaTwD">
                            <property role="3oM_SC" value="" />
                            <uo k="s:originTrace" v="n:700871696606814461" />
                          </node>
                          <node concept="3oM_SD" id="Je" role="1PaTwD">
                            <property role="3oM_SC" value="when" />
                            <uo k="s:originTrace" v="n:700871696606814462" />
                          </node>
                          <node concept="3oM_SD" id="Jf" role="1PaTwD">
                            <property role="3oM_SC" value="there's" />
                            <uo k="s:originTrace" v="n:700871696606814463" />
                          </node>
                          <node concept="3oM_SD" id="Jg" role="1PaTwD">
                            <property role="3oM_SC" value="a" />
                            <uo k="s:originTrace" v="n:700871696606814464" />
                          </node>
                          <node concept="3oM_SD" id="Jh" role="1PaTwD">
                            <property role="3oM_SC" value="concept" />
                            <uo k="s:originTrace" v="n:700871696606814465" />
                          </node>
                          <node concept="3oM_SD" id="Ji" role="1PaTwD">
                            <property role="3oM_SC" value="type," />
                            <uo k="s:originTrace" v="n:700871696606814466" />
                          </node>
                          <node concept="3oM_SD" id="Jj" role="1PaTwD">
                            <property role="3oM_SC" value="there's" />
                            <uo k="s:originTrace" v="n:700871696606814467" />
                          </node>
                          <node concept="3oM_SD" id="Jk" role="1PaTwD">
                            <property role="3oM_SC" value="no" />
                            <uo k="s:originTrace" v="n:700871696606814468" />
                          </node>
                          <node concept="3oM_SD" id="Jl" role="1PaTwD">
                            <property role="3oM_SC" value="node" />
                            <uo k="s:originTrace" v="n:700871696606814469" />
                          </node>
                          <node concept="3oM_SD" id="Jm" role="1PaTwD">
                            <property role="3oM_SC" value="to" />
                            <uo k="s:originTrace" v="n:700871696606814470" />
                          </node>
                          <node concept="3oM_SD" id="Jn" role="1PaTwD">
                            <property role="3oM_SC" value="invoke" />
                            <uo k="s:originTrace" v="n:700871696606814471" />
                          </node>
                          <node concept="3oM_SD" id="Jo" role="1PaTwD">
                            <property role="3oM_SC" value="instance" />
                            <uo k="s:originTrace" v="n:700871696606814472" />
                          </node>
                          <node concept="3oM_SD" id="Jp" role="1PaTwD">
                            <property role="3oM_SC" value="method" />
                            <uo k="s:originTrace" v="n:700871696606814473" />
                          </node>
                          <node concept="3oM_SD" id="Jq" role="1PaTwD">
                            <property role="3oM_SC" value="on." />
                            <uo k="s:originTrace" v="n:700871696606814474" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Ic" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602201553" />
                        <node concept="3cpWsn" id="Jr" role="3cpWs9">
                          <property role="TrG5h" value="conceptType" />
                          <uo k="s:originTrace" v="n:7363014363602201554" />
                          <node concept="3Tqbb2" id="Js" role="1tU5fm">
                            <ref role="ehGHo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                            <uo k="s:originTrace" v="n:7363014363602201541" />
                          </node>
                          <node concept="1UdQGJ" id="Jt" role="33vP2m">
                            <uo k="s:originTrace" v="n:7363014363602201555" />
                            <node concept="1YaCAy" id="Ju" role="1Ub_4A">
                              <property role="TrG5h" value="v" />
                              <ref role="1YaFvo" to="tp25:5MFgGQnlLNI" resolve="SConceptType" />
                              <uo k="s:originTrace" v="n:7363014363602201556" />
                            </node>
                            <node concept="37vLTw" id="Jv" role="1Ub_4B">
                              <ref role="3cqZAo" node="IN" resolve="leftType" />
                              <uo k="s:originTrace" v="n:7363014363602201557" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Id" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602827929" />
                        <node concept="3clFbS" id="Jw" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363602827931" />
                          <node concept="3cpWs8" id="Jy" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602846631" />
                            <node concept="3cpWsn" id="J$" role="3cpWs9">
                              <property role="TrG5h" value="decl" />
                              <uo k="s:originTrace" v="n:7363014363602846632" />
                              <node concept="3Tqbb2" id="J_" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                <uo k="s:originTrace" v="n:7363014363602846484" />
                              </node>
                              <node concept="2OqwBi" id="JA" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602846633" />
                                <node concept="37vLTw" id="JB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Jr" resolve="conceptType" />
                                  <uo k="s:originTrace" v="n:7363014363602846634" />
                                </node>
                                <node concept="3TrEf2" id="JC" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp25:5MFgGQnlLNJ" resolve="conceptDeclaration" />
                                  <uo k="s:originTrace" v="n:7363014363602846635" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="Jz" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602840366" />
                            <node concept="37vLTI" id="JD" role="3clFbG">
                              <uo k="s:originTrace" v="n:7363014363602843684" />
                              <node concept="3K4zz7" id="JE" role="37vLTx">
                                <uo k="s:originTrace" v="n:7363014363602864508" />
                                <node concept="37vLTw" id="JG" role="3K4E3e">
                                  <ref role="3cqZAo" node="J$" resolve="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602867081" />
                                </node>
                                <node concept="37vLTw" id="JH" role="3K4GZi">
                                  <ref role="3cqZAo" node="J0" resolve="defaultConceptTypeValue" />
                                  <uo k="s:originTrace" v="n:7363014363602869645" />
                                </node>
                                <node concept="3y3z36" id="JI" role="3K4Cdx">
                                  <uo k="s:originTrace" v="n:7363014363602861578" />
                                  <node concept="37vLTw" id="JJ" role="3uHU7B">
                                    <ref role="3cqZAo" node="J$" resolve="decl" />
                                    <uo k="s:originTrace" v="n:7363014363602855468" />
                                  </node>
                                  <node concept="10Nm6u" id="JK" role="3uHU7w">
                                    <uo k="s:originTrace" v="n:7363014363602858662" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="JF" role="37vLTJ">
                                <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                                <uo k="s:originTrace" v="n:7363014363602840364" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="Jx" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363602834502" />
                          <node concept="37vLTw" id="JL" role="2Oq$k0">
                            <ref role="3cqZAo" node="Jr" resolve="conceptType" />
                            <uo k="s:originTrace" v="n:7363014363602830691" />
                          </node>
                          <node concept="3x8VRR" id="JM" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363602837683" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ie" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602822431" />
                      </node>
                      <node concept="3clFbJ" id="If" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601674344" />
                        <node concept="3clFbS" id="JN" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601674346" />
                          <node concept="3cpWs8" id="JP" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602332873" />
                            <node concept="3cpWsn" id="JR" role="3cpWs9">
                              <property role="TrG5h" value="conceptNodeType" />
                              <uo k="s:originTrace" v="n:7363014363602332874" />
                              <node concept="3Tqbb2" id="JS" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602332850" />
                              </node>
                              <node concept="1UdQGJ" id="JT" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602332875" />
                                <node concept="37vLTw" id="JU" role="1Ub_4B">
                                  <ref role="3cqZAo" node="IN" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602332876" />
                                </node>
                                <node concept="1YaCAy" id="JV" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                                  <uo k="s:originTrace" v="n:7363014363602332877" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="JQ" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602908048" />
                            <node concept="3clFbS" id="JW" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602908050" />
                              <node concept="3cpWs8" id="JY" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602923590" />
                                <node concept="3cpWsn" id="K0" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602923591" />
                                  <node concept="3Tqbb2" id="K1" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602923569" />
                                  </node>
                                  <node concept="2OqwBi" id="K2" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602923592" />
                                    <node concept="37vLTw" id="K3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="JR" resolve="conceptNodeType" />
                                      <uo k="s:originTrace" v="n:7363014363602923593" />
                                    </node>
                                    <node concept="3TrEf2" id="K4" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:hbqa45m" resolve="conceptDeclaraton" />
                                      <uo k="s:originTrace" v="n:7363014363602923594" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="JZ" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363601728279" />
                                <node concept="37vLTI" id="K5" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363601733166" />
                                  <node concept="37vLTw" id="K6" role="37vLTJ">
                                    <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363601728275" />
                                  </node>
                                  <node concept="3K4zz7" id="K7" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602353970" />
                                    <node concept="37vLTw" id="K8" role="3K4GZi">
                                      <ref role="3cqZAo" node="J0" resolve="defaultConceptTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602362211" />
                                    </node>
                                    <node concept="3y3z36" id="K9" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602359423" />
                                      <node concept="37vLTw" id="Kb" role="3uHU7B">
                                        <ref role="3cqZAo" node="K0" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602928895" />
                                      </node>
                                      <node concept="10Nm6u" id="Kc" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602351096" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="Ka" role="3K4E3e">
                                      <ref role="3cqZAo" node="K0" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602923595" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="JX" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602912339" />
                              <node concept="37vLTw" id="Kd" role="2Oq$k0">
                                <ref role="3cqZAo" node="JR" resolve="conceptNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602910617" />
                              </node>
                              <node concept="3x8VRR" id="Ke" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602915520" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="JO" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601954259" />
                          <node concept="3w_OXm" id="Kf" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601954260" />
                          </node>
                          <node concept="37vLTw" id="Kg" role="2Oq$k0">
                            <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601954261" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Ig" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601798544" />
                        <node concept="3clFbS" id="Kh" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601798546" />
                          <node concept="3cpWs8" id="Kj" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602365297" />
                            <node concept="3cpWsn" id="Kl" role="3cpWs9">
                              <property role="TrG5h" value="conceptTypeLit" />
                              <uo k="s:originTrace" v="n:7363014363602365298" />
                              <node concept="3Tqbb2" id="Km" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:4JM1Q3lfSBE" resolve="SConceptTypeLiteral" />
                                <uo k="s:originTrace" v="n:7363014363602365279" />
                              </node>
                              <node concept="1UdQGJ" id="Kn" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602365299" />
                                <node concept="1YaCAy" id="Ko" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:4JM1Q3lfSBE" resolve="SConceptTypeLiteral" />
                                  <uo k="s:originTrace" v="n:7363014363602365300" />
                                </node>
                                <node concept="37vLTw" id="Kp" role="1Ub_4B">
                                  <ref role="3cqZAo" node="IN" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602365301" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="Kk" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602934015" />
                            <node concept="3clFbS" id="Kq" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602934017" />
                              <node concept="3cpWs8" id="Ks" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602951074" />
                                <node concept="3cpWsn" id="Ku" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602951075" />
                                  <node concept="3Tqbb2" id="Kv" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602951061" />
                                  </node>
                                  <node concept="2OqwBi" id="Kw" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602951076" />
                                    <node concept="37vLTw" id="Kx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="Kl" resolve="conceptTypeLit" />
                                      <uo k="s:originTrace" v="n:7363014363602951077" />
                                    </node>
                                    <node concept="3TrEf2" id="Ky" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:4JM1Q3lfSBF" resolve="conceptDeclaration" />
                                      <uo k="s:originTrace" v="n:7363014363602951078" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="Kt" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363601812985" />
                                <node concept="37vLTI" id="Kz" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363601812986" />
                                  <node concept="37vLTw" id="K$" role="37vLTJ">
                                    <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363601812990" />
                                  </node>
                                  <node concept="3K4zz7" id="K_" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602388281" />
                                    <node concept="37vLTw" id="KA" role="3K4GZi">
                                      <ref role="3cqZAo" node="J0" resolve="defaultConceptTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602393734" />
                                    </node>
                                    <node concept="3y3z36" id="KB" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602382956" />
                                      <node concept="10Nm6u" id="KD" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602385407" />
                                      </node>
                                      <node concept="37vLTw" id="KE" role="3uHU7B">
                                        <ref role="3cqZAo" node="Ku" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602956379" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="KC" role="3K4E3e">
                                      <ref role="3cqZAo" node="Ku" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602951079" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="Kr" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602939823" />
                              <node concept="37vLTw" id="KF" role="2Oq$k0">
                                <ref role="3cqZAo" node="Kl" resolve="conceptTypeLit" />
                                <uo k="s:originTrace" v="n:7363014363602936584" />
                              </node>
                              <node concept="3x8VRR" id="KG" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602943004" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="Ki" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601950965" />
                          <node concept="3w_OXm" id="KH" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601950966" />
                          </node>
                          <node concept="37vLTw" id="KI" role="2Oq$k0">
                            <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601950967" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Ih" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363601828960" />
                        <node concept="3clFbS" id="KJ" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363601828962" />
                          <node concept="3cpWs8" id="KL" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602143496" />
                            <node concept="3cpWsn" id="KO" role="3cpWs9">
                              <property role="TrG5h" value="nodeType" />
                              <uo k="s:originTrace" v="n:7363014363602143497" />
                              <node concept="3Tqbb2" id="KP" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:gzTqbfa" resolve="SNodeType" />
                                <uo k="s:originTrace" v="n:7363014363602143480" />
                              </node>
                              <node concept="1UdQGJ" id="KQ" role="33vP2m">
                                <uo k="s:originTrace" v="n:7363014363602143498" />
                                <node concept="1YaCAy" id="KR" role="1Ub_4A">
                                  <property role="TrG5h" value="v" />
                                  <ref role="1YaFvo" to="tp25:gzTqbfa" resolve="SNodeType" />
                                  <uo k="s:originTrace" v="n:7363014363602143499" />
                                </node>
                                <node concept="37vLTw" id="KS" role="1Ub_4B">
                                  <ref role="3cqZAo" node="IN" resolve="leftType" />
                                  <uo k="s:originTrace" v="n:7363014363602143500" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="KM" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602961503" />
                            <node concept="3clFbS" id="KT" role="3clFbx">
                              <uo k="s:originTrace" v="n:7363014363602961505" />
                              <node concept="3cpWs8" id="KV" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602975553" />
                                <node concept="3cpWsn" id="KX" role="3cpWs9">
                                  <property role="TrG5h" value="decl" />
                                  <uo k="s:originTrace" v="n:7363014363602975554" />
                                  <node concept="3Tqbb2" id="KY" role="1tU5fm">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <uo k="s:originTrace" v="n:7363014363602975530" />
                                  </node>
                                  <node concept="2OqwBi" id="KZ" role="33vP2m">
                                    <uo k="s:originTrace" v="n:7363014363602975555" />
                                    <node concept="37vLTw" id="L0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="KO" resolve="nodeType" />
                                      <uo k="s:originTrace" v="n:7363014363602975556" />
                                    </node>
                                    <node concept="3TrEf2" id="L1" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                                      <uo k="s:originTrace" v="n:7363014363602975557" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="KW" role="3cqZAp">
                                <uo k="s:originTrace" v="n:7363014363602399193" />
                                <node concept="37vLTI" id="L2" role="3clFbG">
                                  <uo k="s:originTrace" v="n:7363014363602402630" />
                                  <node concept="3K4zz7" id="L3" role="37vLTx">
                                    <uo k="s:originTrace" v="n:7363014363602411497" />
                                    <node concept="37vLTw" id="L5" role="3K4E3e">
                                      <ref role="3cqZAo" node="KX" resolve="decl" />
                                      <uo k="s:originTrace" v="n:7363014363602975558" />
                                    </node>
                                    <node concept="37vLTw" id="L6" role="3K4GZi">
                                      <ref role="3cqZAo" node="J3" resolve="defaultNodeTypeValue" />
                                      <uo k="s:originTrace" v="n:7363014363602985763" />
                                    </node>
                                    <node concept="3y3z36" id="L7" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:7363014363602408613" />
                                      <node concept="10Nm6u" id="L8" role="3uHU7w">
                                        <uo k="s:originTrace" v="n:7363014363602408623" />
                                      </node>
                                      <node concept="37vLTw" id="L9" role="3uHU7B">
                                        <ref role="3cqZAo" node="KX" resolve="decl" />
                                        <uo k="s:originTrace" v="n:7363014363602980892" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="L4" role="37vLTJ">
                                    <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                                    <uo k="s:originTrace" v="n:7363014363602399191" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="KU" role="3clFbw">
                              <uo k="s:originTrace" v="n:7363014363602965798" />
                              <node concept="37vLTw" id="La" role="2Oq$k0">
                                <ref role="3cqZAo" node="KO" resolve="nodeType" />
                                <uo k="s:originTrace" v="n:7363014363602964076" />
                              </node>
                              <node concept="3x8VRR" id="Lb" role="2OqNvi">
                                <uo k="s:originTrace" v="n:7363014363602967462" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="KN" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602227597" />
                            <node concept="37vLTI" id="Lc" role="3clFbG">
                              <uo k="s:originTrace" v="n:7363014363602230878" />
                              <node concept="3clFbT" id="Ld" role="37vLTx">
                                <property role="3clFbU" value="false" />
                                <uo k="s:originTrace" v="n:7363014363602233740" />
                              </node>
                              <node concept="37vLTw" id="Le" role="37vLTJ">
                                <ref role="3cqZAo" node="J9" resolve="isStatic" />
                                <uo k="s:originTrace" v="n:7363014363602227595" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="KK" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363601947671" />
                          <node concept="3w_OXm" id="Lf" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363601947672" />
                          </node>
                          <node concept="37vLTw" id="Lg" role="2Oq$k0">
                            <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363601947673" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ii" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602433642" />
                      </node>
                      <node concept="3clFbJ" id="Ij" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602452265" />
                        <node concept="3clFbS" id="Lh" role="3clFbx">
                          <uo k="s:originTrace" v="n:7363014363602452267" />
                          <node concept="3cpWs6" id="Lj" role="3cqZAp">
                            <uo k="s:originTrace" v="n:7363014363602465143" />
                            <node concept="2ShNRf" id="Lk" role="3cqZAk">
                              <uo k="s:originTrace" v="n:7363014363602470413" />
                              <node concept="1pGfFk" id="Ll" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:7363014363602473565" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="Li" role="3clFbw">
                          <uo k="s:originTrace" v="n:7363014363602459141" />
                          <node concept="37vLTw" id="Lm" role="2Oq$k0">
                            <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                            <uo k="s:originTrace" v="n:7363014363602455102" />
                          </node>
                          <node concept="3w_OXm" id="Ln" role="2OqNvi">
                            <uo k="s:originTrace" v="n:7363014363602462503" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ik" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363602449440" />
                      </node>
                      <node concept="3cpWs8" id="Il" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066292" />
                        <node concept="3cpWsn" id="Lo" role="3cpWs9">
                          <property role="TrG5h" value="methods" />
                          <uo k="s:originTrace" v="n:6302905782373066293" />
                          <node concept="A3Dl8" id="Lp" role="1tU5fm">
                            <uo k="s:originTrace" v="n:3720886148881951996" />
                            <node concept="3Tqbb2" id="Lr" role="A3Ik2">
                              <ref role="ehGHo" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                              <uo k="s:originTrace" v="n:3720886148882031512" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="Lq" role="33vP2m">
                            <uo k="s:originTrace" v="n:6302905782373066294" />
                            <node concept="ANE8D" id="Ls" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6302905782373066295" />
                            </node>
                            <node concept="2OqwBi" id="Lt" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6302905782373066296" />
                              <node concept="2OqwBi" id="Lu" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6302905782373066297" />
                                <node concept="37vLTw" id="Lw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="J6" resolve="conceptNode" />
                                  <uo k="s:originTrace" v="n:6302905782373066298" />
                                </node>
                                <node concept="3zqWPK" id="Lx" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:wrIPXhfIPX" resolve="getVisibleConceptMethods" />
                                  <uo k="s:originTrace" v="n:8085146484218857935" />
                                  <node concept="37vLTw" id="Ly" role="37wK5m">
                                    <ref role="3cqZAo" node="Ir" resolve="enclosingNode" />
                                    <uo k="s:originTrace" v="n:8085146484218857937" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3zZkjj" id="Lv" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6302905782373066301" />
                                <node concept="1bVj0M" id="Lz" role="23t8la">
                                  <uo k="s:originTrace" v="n:6302905782373066302" />
                                  <node concept="3clFbS" id="L$" role="1bW5cS">
                                    <uo k="s:originTrace" v="n:6302905782373066303" />
                                    <node concept="3clFbF" id="LA" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6302905782373066304" />
                                      <node concept="3clFbC" id="LB" role="3clFbG">
                                        <uo k="s:originTrace" v="n:6302905782373066305" />
                                        <node concept="37vLTw" id="LC" role="3uHU7w">
                                          <ref role="3cqZAo" node="J9" resolve="isStatic" />
                                          <uo k="s:originTrace" v="n:6302905782373066306" />
                                        </node>
                                        <node concept="2OqwBi" id="LD" role="3uHU7B">
                                          <uo k="s:originTrace" v="n:6302905782373066307" />
                                          <node concept="3TrcHB" id="LE" role="2OqNvi">
                                            <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                                            <uo k="s:originTrace" v="n:6302905782373066308" />
                                          </node>
                                          <node concept="37vLTw" id="LF" role="2Oq$k0">
                                            <ref role="3cqZAo" node="L_" resolve="it" />
                                            <uo k="s:originTrace" v="n:6302905782373066309" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="L_" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <uo k="s:originTrace" v="n:6847626768367732468" />
                                    <node concept="2jxLKc" id="LG" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:6847626768367732469" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Im" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066313" />
                      </node>
                      <node concept="3SKdUt" id="In" role="3cqZAp">
                        <uo k="s:originTrace" v="n:7363014363603058652" />
                        <node concept="1PaTwC" id="LH" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814475" />
                          <node concept="3oM_SD" id="LI" role="1PaTwD">
                            <property role="3oM_SC" value="to" />
                            <uo k="s:originTrace" v="n:700871696606814476" />
                          </node>
                          <node concept="3oM_SD" id="LJ" role="1PaTwD">
                            <property role="3oM_SC" value="remove?" />
                            <uo k="s:originTrace" v="n:700871696606814477" />
                          </node>
                          <node concept="3oM_SD" id="LK" role="1PaTwD">
                            <property role="3oM_SC" value="(ap)" />
                            <uo k="s:originTrace" v="n:700871696606814478" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Io" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066314" />
                        <node concept="3clFbS" id="LL" role="3clFbx">
                          <uo k="s:originTrace" v="n:6302905782373066315" />
                          <node concept="3SKdUt" id="LN" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6302905782373066316" />
                            <node concept="1PaTwC" id="LP" role="1aUNEU">
                              <uo k="s:originTrace" v="n:700871696606814479" />
                              <node concept="3oM_SD" id="LQ" role="1PaTwD">
                                <property role="3oM_SC" value="conceptNode&lt;&gt;" />
                                <uo k="s:originTrace" v="n:700871696606814480" />
                              </node>
                              <node concept="3oM_SD" id="LR" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                                <uo k="s:originTrace" v="n:700871696606814481" />
                              </node>
                              <node concept="3oM_SD" id="LS" role="1PaTwD">
                                <property role="3oM_SC" value="subtype" />
                                <uo k="s:originTrace" v="n:700871696606814482" />
                              </node>
                              <node concept="3oM_SD" id="LT" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                                <uo k="s:originTrace" v="n:700871696606814483" />
                              </node>
                              <node concept="3oM_SD" id="LU" role="1PaTwD">
                                <property role="3oM_SC" value="node&lt;AbstractConceptDeclaration&gt;," />
                                <uo k="s:originTrace" v="n:700871696606814484" />
                              </node>
                              <node concept="3oM_SD" id="LV" role="1PaTwD">
                                <property role="3oM_SC" value="why" />
                                <uo k="s:originTrace" v="n:700871696606814485" />
                              </node>
                              <node concept="3oM_SD" id="LW" role="1PaTwD">
                                <property role="3oM_SC" value="can't" />
                                <uo k="s:originTrace" v="n:700871696606814486" />
                              </node>
                              <node concept="3oM_SD" id="LX" role="1PaTwD">
                                <property role="3oM_SC" value="I" />
                                <uo k="s:originTrace" v="n:700871696606814487" />
                              </node>
                              <node concept="3oM_SD" id="LY" role="1PaTwD">
                                <property role="3oM_SC" value="invoke" />
                                <uo k="s:originTrace" v="n:700871696606814488" />
                              </node>
                              <node concept="3oM_SD" id="LZ" role="1PaTwD">
                                <property role="3oM_SC" value="methods" />
                                <uo k="s:originTrace" v="n:700871696606814489" />
                              </node>
                              <node concept="3oM_SD" id="M0" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                                <uo k="s:originTrace" v="n:700871696606814490" />
                              </node>
                              <node concept="3oM_SD" id="M1" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                                <uo k="s:originTrace" v="n:700871696606814491" />
                              </node>
                              <node concept="3oM_SD" id="M2" role="1PaTwD">
                                <property role="3oM_SC" value="latter" />
                                <uo k="s:originTrace" v="n:700871696606814492" />
                              </node>
                              <node concept="3oM_SD" id="M3" role="1PaTwD">
                                <property role="3oM_SC" value="(used" />
                                <uo k="s:originTrace" v="n:700871696606814493" />
                              </node>
                              <node concept="3oM_SD" id="M4" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                                <uo k="s:originTrace" v="n:700871696606814494" />
                              </node>
                              <node concept="3oM_SD" id="M5" role="1PaTwD">
                                <property role="3oM_SC" value="workaround" />
                                <uo k="s:originTrace" v="n:700871696606814495" />
                              </node>
                              <node concept="3oM_SD" id="M6" role="1PaTwD">
                                <property role="3oM_SC" value="with" />
                                <uo k="s:originTrace" v="n:700871696606814496" />
                              </node>
                              <node concept="3oM_SD" id="M7" role="1PaTwD">
                                <property role="3oM_SC" value="node.conceptNode.asNode.methodCall," />
                                <uo k="s:originTrace" v="n:700871696606814497" />
                              </node>
                              <node concept="3oM_SD" id="M8" role="1PaTwD">
                                <property role="3oM_SC" value="which" />
                                <uo k="s:originTrace" v="n:700871696606814498" />
                              </node>
                              <node concept="3oM_SD" id="M9" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                                <uo k="s:originTrace" v="n:700871696606814499" />
                              </node>
                              <node concept="3oM_SD" id="Ma" role="1PaTwD">
                                <property role="3oM_SC" value="stupid)" />
                                <uo k="s:originTrace" v="n:700871696606814500" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="LO" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6302905782373066318" />
                            <node concept="37vLTI" id="Mb" role="3clFbG">
                              <uo k="s:originTrace" v="n:6302905782373066319" />
                              <node concept="2OqwBi" id="Mc" role="37vLTx">
                                <uo k="s:originTrace" v="n:6302905782373066320" />
                                <node concept="2OqwBi" id="Me" role="2Oq$k0">
                                  <uo k="s:originTrace" v="n:6302905782373066321" />
                                  <node concept="37vLTw" id="Mg" role="2Oq$k0">
                                    <ref role="3cqZAo" node="Lo" resolve="methods" />
                                    <uo k="s:originTrace" v="n:6302905782373066322" />
                                  </node>
                                  <node concept="3QWeyG" id="Mh" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:6302905782373066323" />
                                    <node concept="2OqwBi" id="Mi" role="576Qk">
                                      <uo k="s:originTrace" v="n:6302905782373066324" />
                                      <node concept="2OqwBi" id="Mj" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6302905782373066325" />
                                        <node concept="37vLTw" id="Ml" role="2Oq$k0">
                                          <ref role="3cqZAo" node="J0" resolve="defaultConceptTypeValue" />
                                          <uo k="s:originTrace" v="n:7363014363603053626" />
                                        </node>
                                        <node concept="3zqWPK" id="Mm" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:wrIPXhfIPX" resolve="getVisibleConceptMethods" />
                                          <uo k="s:originTrace" v="n:8085146484218857938" />
                                          <node concept="37vLTw" id="Mn" role="37wK5m">
                                            <ref role="3cqZAo" node="Ir" resolve="enclosingNode" />
                                            <uo k="s:originTrace" v="n:8085146484218857940" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3zZkjj" id="Mk" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6302905782373066329" />
                                        <node concept="1bVj0M" id="Mo" role="23t8la">
                                          <uo k="s:originTrace" v="n:6302905782373066330" />
                                          <node concept="3clFbS" id="Mp" role="1bW5cS">
                                            <uo k="s:originTrace" v="n:6302905782373066331" />
                                            <node concept="3clFbF" id="Mr" role="3cqZAp">
                                              <uo k="s:originTrace" v="n:6302905782373066332" />
                                              <node concept="3clFbC" id="Ms" role="3clFbG">
                                                <uo k="s:originTrace" v="n:6302905782373066333" />
                                                <node concept="3clFbT" id="Mt" role="3uHU7w">
                                                  <property role="3clFbU" value="false" />
                                                  <uo k="s:originTrace" v="n:6302905782373066334" />
                                                </node>
                                                <node concept="2OqwBi" id="Mu" role="3uHU7B">
                                                  <uo k="s:originTrace" v="n:6302905782373066335" />
                                                  <node concept="37vLTw" id="Mv" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="Mq" resolve="it" />
                                                    <uo k="s:originTrace" v="n:6302905782373066336" />
                                                  </node>
                                                  <node concept="3TrcHB" id="Mw" role="2OqNvi">
                                                    <ref role="3TsBF5" to="1i04:55xfRZxar9d" resolve="isStatic" />
                                                    <uo k="s:originTrace" v="n:6302905782373066337" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="gl6BB" id="Mq" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <uo k="s:originTrace" v="n:6847626768367732470" />
                                            <node concept="2jxLKc" id="Mx" role="1tU5fm">
                                              <uo k="s:originTrace" v="n:6847626768367732471" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="Mf" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6302905782373066340" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="Md" role="37vLTJ">
                                <ref role="3cqZAo" node="Lo" resolve="methods" />
                                <uo k="s:originTrace" v="n:6302905782373066341" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="LM" role="3clFbw">
                          <uo k="s:originTrace" v="n:6302905782373066342" />
                          <node concept="37vLTw" id="My" role="2Oq$k0">
                            <ref role="3cqZAo" node="IN" resolve="leftType" />
                            <uo k="s:originTrace" v="n:6302905782373066343" />
                          </node>
                          <node concept="1mIQ4w" id="Mz" role="2OqNvi">
                            <uo k="s:originTrace" v="n:6302905782373066344" />
                            <node concept="chp4Y" id="M$" role="cj9EA">
                              <ref role="cht4Q" to="tp25:h3THzq0" resolve="ConceptNodeType" />
                              <uo k="s:originTrace" v="n:6302905782373066345" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="Ip" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066346" />
                      </node>
                      <node concept="3cpWs6" id="Iq" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6302905782373066347" />
                        <node concept="2YIFZM" id="M_" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6302905782373142599" />
                          <node concept="37vLTw" id="MA" role="37wK5m">
                            <ref role="3cqZAo" node="Lo" resolve="methods" />
                            <uo k="s:originTrace" v="n:6302905782373146470" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="HZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6302905782373066148" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="HE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104840560" />
        </node>
      </node>
      <node concept="3uibUv" id="Hm" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104840560" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="MB">
    <property role="TrG5h" value="Node_IsRoleOperation_Constraints" />
    <uo k="s:originTrace" v="n:1213104847805" />
    <node concept="3Tm1VV" id="MC" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104847805" />
    </node>
    <node concept="3uibUv" id="MD" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104847805" />
    </node>
    <node concept="3clFbW" id="ME" role="jymVt">
      <uo k="s:originTrace" v="n:1213104847805" />
      <node concept="37vLTG" id="MH" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104847805" />
        <node concept="3uibUv" id="MK" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
      </node>
      <node concept="3cqZAl" id="MI" role="3clF45">
        <uo k="s:originTrace" v="n:1213104847805" />
      </node>
      <node concept="3clFbS" id="MJ" role="3clF47">
        <uo k="s:originTrace" v="n:1213104847805" />
        <node concept="XkiVB" id="ML" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104847805" />
          <node concept="1BaE9c" id="MN" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="Node_IsRoleOperation$X2" />
            <uo k="s:originTrace" v="n:1213104847805" />
            <node concept="2YIFZM" id="MP" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104847805" />
              <node concept="11gdke" id="MQ" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104847805" />
              </node>
              <node concept="11gdke" id="MR" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104847805" />
              </node>
              <node concept="11gdke" id="MS" role="37wK5m">
                <property role="11gdj1" value="10a67578ddeL" />
                <uo k="s:originTrace" v="n:1213104847805" />
              </node>
              <node concept="Xl_RD" id="MT" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" />
                <uo k="s:originTrace" v="n:1213104847805" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="MO" role="37wK5m">
            <ref role="3cqZAo" node="MH" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104847805" />
          </node>
        </node>
        <node concept="3clFbF" id="MM" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104847805" />
          <node concept="1rXfSq" id="MU" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104847805" />
            <node concept="2ShNRf" id="MV" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104847805" />
              <node concept="1pGfFk" id="MW" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="MY" resolve="Node_IsRoleOperation_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104847805" />
                <node concept="Xjq3P" id="MX" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="MF" role="jymVt">
      <uo k="s:originTrace" v="n:1213104847805" />
    </node>
    <node concept="312cEu" id="MG" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104847805" />
      <node concept="3clFbW" id="MY" role="jymVt">
        <uo k="s:originTrace" v="n:1213104847805" />
        <node concept="37vLTG" id="N1" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104847805" />
          <node concept="3uibUv" id="N4" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104847805" />
          </node>
        </node>
        <node concept="3cqZAl" id="N2" role="3clF45">
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
        <node concept="3clFbS" id="N3" role="3clF47">
          <uo k="s:originTrace" v="n:1213104847805" />
          <node concept="XkiVB" id="N5" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104847805" />
            <node concept="1BaE9c" id="N6" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="linkInParent$Cdxk" />
              <uo k="s:originTrace" v="n:1213104847805" />
              <node concept="2YIFZM" id="Na" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104847805" />
                <node concept="11gdke" id="Nb" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
                <node concept="11gdke" id="Nc" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
                <node concept="11gdke" id="Nd" role="37wK5m">
                  <property role="11gdj1" value="10a67578ddeL" />
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
                <node concept="11gdke" id="Ne" role="37wK5m">
                  <property role="11gdj1" value="10a675c34a9L" />
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
                <node concept="Xl_RD" id="Nf" role="37wK5m">
                  <property role="Xl_RC" value="linkInParent" />
                  <uo k="s:originTrace" v="n:1213104847805" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="N7" role="37wK5m">
              <ref role="3cqZAo" node="N1" resolve="container" />
              <uo k="s:originTrace" v="n:1213104847805" />
            </node>
            <node concept="3clFbT" id="N8" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104847805" />
            </node>
            <node concept="3clFbT" id="N9" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104847805" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="MZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104847805" />
        <node concept="3Tm1VV" id="Ng" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
        <node concept="3uibUv" id="Nh" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
        <node concept="2AHcQZ" id="Ni" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
        <node concept="3clFbS" id="Nj" role="3clF47">
          <uo k="s:originTrace" v="n:1213104847805" />
          <node concept="3cpWs6" id="Nl" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104847805" />
            <node concept="2ShNRf" id="Nm" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582797546" />
              <node concept="YeOm9" id="Nn" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582797546" />
                <node concept="1Y3b0j" id="No" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582797546" />
                  <node concept="3Tm1VV" id="Np" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582797546" />
                  </node>
                  <node concept="3clFb_" id="Nq" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582797546" />
                    <node concept="3Tm1VV" id="Ns" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                    <node concept="3uibUv" id="Nt" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                    <node concept="3clFbS" id="Nu" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                      <node concept="3cpWs6" id="Nw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797546" />
                        <node concept="2ShNRf" id="Nx" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582797546" />
                          <node concept="1pGfFk" id="Ny" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582797546" />
                            <node concept="Xl_RD" id="Nz" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582797546" />
                            </node>
                            <node concept="Xl_RD" id="N$" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582797546" />
                              <uo k="s:originTrace" v="n:6836281137582797546" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Nv" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Nr" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582797546" />
                    <node concept="3Tm1VV" id="N_" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                    <node concept="3uibUv" id="NA" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                    <node concept="37vLTG" id="NB" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                      <node concept="3uibUv" id="NE" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582797546" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="NC" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                      <node concept="3cpWs8" id="NF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797548" />
                        <node concept="3cpWsn" id="NH" role="3cpWs9">
                          <property role="TrG5h" value="conceptOfParent" />
                          <uo k="s:originTrace" v="n:6836281137582797549" />
                          <node concept="3Tqbb2" id="NI" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582797550" />
                          </node>
                          <node concept="2OqwBi" id="NJ" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582797551" />
                            <node concept="1DoJHT" id="NK" role="2Oq$k0">
                              <property role="1Dpdpm" value="getReferenceNode" />
                              <uo k="s:originTrace" v="n:6836281137582797552" />
                              <node concept="3uibUv" id="NM" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="NN" role="1EMhIo">
                                <ref role="3cqZAo" node="NB" resolve="_context" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="NL" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp25:gDBmUTw" resolve="conceptOfParent" />
                              <uo k="s:originTrace" v="n:6836281137582797553" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="NG" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797554" />
                        <node concept="2YIFZM" id="NO" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582797688" />
                          <node concept="2OqwBi" id="NP" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582797689" />
                            <node concept="37vLTw" id="NQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="NH" resolve="conceptOfParent" />
                              <uo k="s:originTrace" v="n:6836281137582797690" />
                            </node>
                            <node concept="3zqWPK" id="NR" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLp" resolve="getAggregationLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857948" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ND" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797546" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Nk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104847805" />
        </node>
      </node>
      <node concept="3uibUv" id="N0" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104847805" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="NS">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="PropertyAttributeQualifier_Constraints" />
    <uo k="s:originTrace" v="n:2788452359611885032" />
    <node concept="3Tm1VV" id="NT" role="1B3o_S">
      <uo k="s:originTrace" v="n:2788452359611885032" />
    </node>
    <node concept="3uibUv" id="NU" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2788452359611885032" />
    </node>
    <node concept="3clFbW" id="NV" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359611885032" />
      <node concept="37vLTG" id="NY" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2788452359611885032" />
        <node concept="3uibUv" id="O1" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
      </node>
      <node concept="3cqZAl" id="NZ" role="3clF45">
        <uo k="s:originTrace" v="n:2788452359611885032" />
      </node>
      <node concept="3clFbS" id="O0" role="3clF47">
        <uo k="s:originTrace" v="n:2788452359611885032" />
        <node concept="XkiVB" id="O2" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
          <node concept="1BaE9c" id="O4" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="PropertyAttributeQualifier$q9" />
            <uo k="s:originTrace" v="n:2788452359611885032" />
            <node concept="2YIFZM" id="O6" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2788452359611885032" />
              <node concept="11gdke" id="O7" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
              </node>
              <node concept="11gdke" id="O8" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
              </node>
              <node concept="11gdke" id="O9" role="37wK5m">
                <property role="11gdj1" value="58ea5217b045c9b9L" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
              </node>
              <node concept="Xl_RD" id="Oa" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.PropertyAttributeQualifier" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="O5" role="37wK5m">
            <ref role="3cqZAo" node="NY" resolve="initContext" />
            <uo k="s:originTrace" v="n:2788452359611885032" />
          </node>
        </node>
        <node concept="3clFbF" id="O3" role="3cqZAp">
          <uo k="s:originTrace" v="n:2788452359611885032" />
          <node concept="1rXfSq" id="Ob" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2788452359611885032" />
            <node concept="2ShNRf" id="Oc" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359611885032" />
              <node concept="1pGfFk" id="Od" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Of" resolve="PropertyAttributeQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
                <node concept="Xjq3P" id="Oe" role="37wK5m">
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NW" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359611885032" />
    </node>
    <node concept="312cEu" id="NX" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2788452359611885032" />
      <node concept="3clFbW" id="Of" role="jymVt">
        <uo k="s:originTrace" v="n:2788452359611885032" />
        <node concept="37vLTG" id="Oi" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
          <node concept="3uibUv" id="Ol" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359611885032" />
          </node>
        </node>
        <node concept="3cqZAl" id="Oj" role="3clF45">
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
        <node concept="3clFbS" id="Ok" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359611885032" />
          <node concept="XkiVB" id="Om" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359611885032" />
            <node concept="1BaE9c" id="On" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="attributeConcept$B5m0" />
              <uo k="s:originTrace" v="n:2788452359611885032" />
              <node concept="2YIFZM" id="Or" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2788452359611885032" />
                <node concept="11gdke" id="Os" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
                <node concept="11gdke" id="Ot" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
                <node concept="11gdke" id="Ou" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045c9b9L" />
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
                <node concept="11gdke" id="Ov" role="37wK5m">
                  <property role="11gdj1" value="58ea5217b045c9baL" />
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
                <node concept="Xl_RD" id="Ow" role="37wK5m">
                  <property role="Xl_RC" value="attributeConcept" />
                  <uo k="s:originTrace" v="n:2788452359611885032" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Oo" role="37wK5m">
              <ref role="3cqZAo" node="Oi" resolve="container" />
              <uo k="s:originTrace" v="n:2788452359611885032" />
            </node>
            <node concept="3clFbT" id="Op" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2788452359611885032" />
            </node>
            <node concept="3clFbT" id="Oq" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359611885032" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Og" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2788452359611885032" />
        <node concept="3Tm1VV" id="Ox" role="1B3o_S">
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
        <node concept="3uibUv" id="Oy" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
        <node concept="2AHcQZ" id="Oz" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
        <node concept="3clFbS" id="O$" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359611885032" />
          <node concept="3cpWs6" id="OA" role="3cqZAp">
            <uo k="s:originTrace" v="n:2788452359611885032" />
            <node concept="2ShNRf" id="OB" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582797692" />
              <node concept="YeOm9" id="OC" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582797692" />
                <node concept="1Y3b0j" id="OD" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582797692" />
                  <node concept="3Tm1VV" id="OE" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582797692" />
                  </node>
                  <node concept="3clFb_" id="OF" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582797692" />
                    <node concept="3Tm1VV" id="OH" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                    <node concept="3uibUv" id="OI" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                    <node concept="3clFbS" id="OJ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                      <node concept="3cpWs6" id="OL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797692" />
                        <node concept="2ShNRf" id="OM" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582797692" />
                          <node concept="1pGfFk" id="ON" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582797692" />
                            <node concept="Xl_RD" id="OO" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582797692" />
                            </node>
                            <node concept="Xl_RD" id="OP" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582797692" />
                              <uo k="s:originTrace" v="n:6836281137582797692" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="OK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="OG" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582797692" />
                    <node concept="3Tm1VV" id="OQ" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                    <node concept="3uibUv" id="OR" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                    <node concept="37vLTG" id="OS" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                      <node concept="3uibUv" id="OV" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582797692" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="OT" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                      <node concept="3clFbF" id="OW" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797694" />
                        <node concept="2YIFZM" id="OX" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582797959" />
                          <node concept="2YIFZM" id="OY" role="37wK5m">
                            <ref role="37wK5l" to="tpcn:6_gUeurcK7u" resolve="getApplicableAttributes" />
                            <ref role="1Pybhc" to="tpcn:6_gUeuqI_Vn" resolve="AttributeDesignTimeOperations" />
                            <uo k="s:originTrace" v="n:6836281137582797960" />
                            <node concept="1PxgMI" id="OZ" role="37wK5m">
                              <property role="1BlNFB" value="true" />
                              <uo k="s:originTrace" v="n:6836281137582797961" />
                              <node concept="1eOMI4" id="P1" role="1m5AlR">
                                <uo k="s:originTrace" v="n:6836281137582797962" />
                                <node concept="3K4zz7" id="P3" role="1eOMHV">
                                  <uo k="s:originTrace" v="n:6836281137582797963" />
                                  <node concept="1DoJHT" id="P4" role="3K4E3e">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:6836281137582797964" />
                                    <node concept="3uibUv" id="P7" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="P8" role="1EMhIo">
                                      <ref role="3cqZAo" node="OS" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="P5" role="3K4Cdx">
                                    <uo k="s:originTrace" v="n:6836281137582797965" />
                                    <node concept="1DoJHT" id="P9" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582797966" />
                                      <node concept="3uibUv" id="Pb" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="Pc" role="1EMhIo">
                                        <ref role="3cqZAo" node="OS" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="3w_OXm" id="Pa" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582797967" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="P6" role="3K4GZi">
                                    <uo k="s:originTrace" v="n:6836281137582797968" />
                                    <node concept="1DoJHT" id="Pd" role="2Oq$k0">
                                      <property role="1Dpdpm" value="getReferenceNode" />
                                      <uo k="s:originTrace" v="n:6836281137582797969" />
                                      <node concept="3uibUv" id="Pf" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="Pg" role="1EMhIo">
                                        <ref role="3cqZAo" node="OS" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="Pe" role="2OqNvi">
                                      <uo k="s:originTrace" v="n:6836281137582797970" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="chp4Y" id="P2" role="3oSUPX">
                                <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                                <uo k="s:originTrace" v="n:6836281137582797972" />
                              </node>
                            </node>
                            <node concept="2tJFMh" id="P0" role="37wK5m">
                              <uo k="s:originTrace" v="n:8525822767680264396" />
                              <node concept="ZC_QK" id="Ph" role="2tJFKM">
                                <ref role="2aWVGs" to="tpck:2ULFgo8_XDm" resolve="PropertyAttribute" />
                                <uo k="s:originTrace" v="n:8525822767680264395" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="OU" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797692" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="O_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2788452359611885032" />
        </node>
      </node>
      <node concept="3uibUv" id="Oh" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2788452359611885032" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Pi">
    <property role="3GE5qa" value="reference" />
    <property role="TrG5h" value="PropertyIdRefExpression_Constraints" />
    <uo k="s:originTrace" v="n:2644386474302392176" />
    <node concept="3Tm1VV" id="Pj" role="1B3o_S">
      <uo k="s:originTrace" v="n:2644386474302392176" />
    </node>
    <node concept="3uibUv" id="Pk" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2644386474302392176" />
    </node>
    <node concept="3clFbW" id="Pl" role="jymVt">
      <uo k="s:originTrace" v="n:2644386474302392176" />
      <node concept="37vLTG" id="Po" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2644386474302392176" />
        <node concept="3uibUv" id="Pr" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
      </node>
      <node concept="3cqZAl" id="Pp" role="3clF45">
        <uo k="s:originTrace" v="n:2644386474302392176" />
      </node>
      <node concept="3clFbS" id="Pq" role="3clF47">
        <uo k="s:originTrace" v="n:2644386474302392176" />
        <node concept="XkiVB" id="Ps" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
          <node concept="1BaE9c" id="Pu" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="PropertyIdRefExpression$qp" />
            <uo k="s:originTrace" v="n:2644386474302392176" />
            <node concept="2YIFZM" id="Pw" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2644386474302392176" />
              <node concept="11gdke" id="Px" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
              </node>
              <node concept="11gdke" id="Py" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
              </node>
              <node concept="11gdke" id="Pz" role="37wK5m">
                <property role="11gdj1" value="24b2bf7ce1a42fa0L" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
              </node>
              <node concept="Xl_RD" id="P$" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Pv" role="37wK5m">
            <ref role="3cqZAo" node="Po" resolve="initContext" />
            <uo k="s:originTrace" v="n:2644386474302392176" />
          </node>
        </node>
        <node concept="3clFbF" id="Pt" role="3cqZAp">
          <uo k="s:originTrace" v="n:2644386474302392176" />
          <node concept="1rXfSq" id="P_" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2644386474302392176" />
            <node concept="2ShNRf" id="PA" role="37wK5m">
              <uo k="s:originTrace" v="n:2644386474302392176" />
              <node concept="1pGfFk" id="PB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="PD" resolve="PropertyIdRefExpression_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
                <node concept="Xjq3P" id="PC" role="37wK5m">
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Pm" role="jymVt">
      <uo k="s:originTrace" v="n:2644386474302392176" />
    </node>
    <node concept="312cEu" id="Pn" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2644386474302392176" />
      <node concept="3clFbW" id="PD" role="jymVt">
        <uo k="s:originTrace" v="n:2644386474302392176" />
        <node concept="37vLTG" id="PG" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
          <node concept="3uibUv" id="PJ" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2644386474302392176" />
          </node>
        </node>
        <node concept="3cqZAl" id="PH" role="3clF45">
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
        <node concept="3clFbS" id="PI" role="3clF47">
          <uo k="s:originTrace" v="n:2644386474302392176" />
          <node concept="XkiVB" id="PK" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2644386474302392176" />
            <node concept="1BaE9c" id="PL" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="propertyDeclaration$D5H1" />
              <uo k="s:originTrace" v="n:2644386474302392176" />
              <node concept="2YIFZM" id="PP" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2644386474302392176" />
                <node concept="11gdke" id="PQ" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
                <node concept="11gdke" id="PR" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
                <node concept="11gdke" id="PS" role="37wK5m">
                  <property role="11gdj1" value="24b2bf7ce1a42fa0L" />
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
                <node concept="11gdke" id="PT" role="37wK5m">
                  <property role="11gdj1" value="24b2bf7ce1a42fa2L" />
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
                <node concept="Xl_RD" id="PU" role="37wK5m">
                  <property role="Xl_RC" value="propertyDeclaration" />
                  <uo k="s:originTrace" v="n:2644386474302392176" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="PM" role="37wK5m">
              <ref role="3cqZAo" node="PG" resolve="container" />
              <uo k="s:originTrace" v="n:2644386474302392176" />
            </node>
            <node concept="3clFbT" id="PN" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2644386474302392176" />
            </node>
            <node concept="3clFbT" id="PO" role="37wK5m">
              <uo k="s:originTrace" v="n:2644386474302392176" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="PE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2644386474302392176" />
        <node concept="3Tm1VV" id="PV" role="1B3o_S">
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
        <node concept="3uibUv" id="PW" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
        <node concept="2AHcQZ" id="PX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
        <node concept="3clFbS" id="PY" role="3clF47">
          <uo k="s:originTrace" v="n:2644386474302392176" />
          <node concept="3cpWs6" id="Q0" role="3cqZAp">
            <uo k="s:originTrace" v="n:2644386474302392176" />
            <node concept="2ShNRf" id="Q1" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799265" />
              <node concept="YeOm9" id="Q2" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799265" />
                <node concept="1Y3b0j" id="Q3" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799265" />
                  <node concept="3Tm1VV" id="Q4" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799265" />
                  </node>
                  <node concept="3clFb_" id="Q5" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799265" />
                    <node concept="3Tm1VV" id="Q7" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                    <node concept="3uibUv" id="Q8" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                    <node concept="3clFbS" id="Q9" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                      <node concept="3cpWs6" id="Qb" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799265" />
                        <node concept="2ShNRf" id="Qc" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799265" />
                          <node concept="1pGfFk" id="Qd" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799265" />
                            <node concept="Xl_RD" id="Qe" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799265" />
                            </node>
                            <node concept="Xl_RD" id="Qf" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799265" />
                              <uo k="s:originTrace" v="n:6836281137582799265" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Qa" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Q6" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799265" />
                    <node concept="3Tm1VV" id="Qg" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                    <node concept="3uibUv" id="Qh" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                    <node concept="37vLTG" id="Qi" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                      <node concept="3uibUv" id="Ql" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799265" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Qj" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                      <node concept="3clFbF" id="Qm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799267" />
                        <node concept="2YIFZM" id="Qn" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582799296" />
                          <node concept="2OqwBi" id="Qo" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582799297" />
                            <node concept="2OqwBi" id="Qp" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582799298" />
                              <node concept="1DoJHT" id="Qr" role="2Oq$k0">
                                <property role="1Dpdpm" value="getReferenceNode" />
                                <uo k="s:originTrace" v="n:6836281137582799299" />
                                <node concept="3uibUv" id="Qt" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="Qu" role="1EMhIo">
                                  <ref role="3cqZAo" node="Qi" resolve="_context" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="Qs" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:2iMJRNxD2Yx" resolve="conceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582799300" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="Qq" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218858003" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Qk" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799265" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="PZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2644386474302392176" />
        </node>
      </node>
      <node concept="3uibUv" id="PF" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2644386474302392176" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Qv">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="PropertyQualifier_Constraints" />
    <uo k="s:originTrace" v="n:2788452359612124352" />
    <node concept="3Tm1VV" id="Qw" role="1B3o_S">
      <uo k="s:originTrace" v="n:2788452359612124352" />
    </node>
    <node concept="3uibUv" id="Qx" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:2788452359612124352" />
    </node>
    <node concept="3clFbW" id="Qy" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359612124352" />
      <node concept="37vLTG" id="Q_" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:2788452359612124352" />
        <node concept="3uibUv" id="QC" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
      </node>
      <node concept="3cqZAl" id="QA" role="3clF45">
        <uo k="s:originTrace" v="n:2788452359612124352" />
      </node>
      <node concept="3clFbS" id="QB" role="3clF47">
        <uo k="s:originTrace" v="n:2788452359612124352" />
        <node concept="XkiVB" id="QD" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
          <node concept="1BaE9c" id="QF" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="PropertyQualifier$7l" />
            <uo k="s:originTrace" v="n:2788452359612124352" />
            <node concept="2YIFZM" id="QH" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:2788452359612124352" />
              <node concept="11gdke" id="QI" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
              </node>
              <node concept="11gdke" id="QJ" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
              </node>
              <node concept="11gdke" id="QK" role="37wK5m">
                <property role="11gdj1" value="26b292a5afc7ccadL" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
              </node>
              <node concept="Xl_RD" id="QL" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.PropertyQualifier" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="QG" role="37wK5m">
            <ref role="3cqZAo" node="Q_" resolve="initContext" />
            <uo k="s:originTrace" v="n:2788452359612124352" />
          </node>
        </node>
        <node concept="3clFbF" id="QE" role="3cqZAp">
          <uo k="s:originTrace" v="n:2788452359612124352" />
          <node concept="1rXfSq" id="QM" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:2788452359612124352" />
            <node concept="2ShNRf" id="QN" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359612124352" />
              <node concept="1pGfFk" id="QO" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="QQ" resolve="PropertyQualifier_Constraints.RD1" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
                <node concept="Xjq3P" id="QP" role="37wK5m">
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Qz" role="jymVt">
      <uo k="s:originTrace" v="n:2788452359612124352" />
    </node>
    <node concept="312cEu" id="Q$" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:2788452359612124352" />
      <node concept="3clFbW" id="QQ" role="jymVt">
        <uo k="s:originTrace" v="n:2788452359612124352" />
        <node concept="37vLTG" id="QT" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
          <node concept="3uibUv" id="QW" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359612124352" />
          </node>
        </node>
        <node concept="3cqZAl" id="QU" role="3clF45">
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
        <node concept="3clFbS" id="QV" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359612124352" />
          <node concept="XkiVB" id="QX" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:2788452359612124352" />
            <node concept="1BaE9c" id="QY" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="property$zWb1" />
              <uo k="s:originTrace" v="n:2788452359612124352" />
              <node concept="2YIFZM" id="R2" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:2788452359612124352" />
                <node concept="11gdke" id="R3" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
                <node concept="11gdke" id="R4" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
                <node concept="11gdke" id="R5" role="37wK5m">
                  <property role="11gdj1" value="26b292a5afc7ccadL" />
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
                <node concept="11gdke" id="R6" role="37wK5m">
                  <property role="11gdj1" value="26b292a5afc7ccafL" />
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
                <node concept="Xl_RD" id="R7" role="37wK5m">
                  <property role="Xl_RC" value="property" />
                  <uo k="s:originTrace" v="n:2788452359612124352" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="QZ" role="37wK5m">
              <ref role="3cqZAo" node="QT" resolve="container" />
              <uo k="s:originTrace" v="n:2788452359612124352" />
            </node>
            <node concept="3clFbT" id="R0" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:2788452359612124352" />
            </node>
            <node concept="3clFbT" id="R1" role="37wK5m">
              <uo k="s:originTrace" v="n:2788452359612124352" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="QR" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:2788452359612124352" />
        <node concept="3Tm1VV" id="R8" role="1B3o_S">
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
        <node concept="3uibUv" id="R9" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
        <node concept="2AHcQZ" id="Ra" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
        <node concept="3clFbS" id="Rb" role="3clF47">
          <uo k="s:originTrace" v="n:2788452359612124352" />
          <node concept="3cpWs6" id="Rd" role="3cqZAp">
            <uo k="s:originTrace" v="n:2788452359612124352" />
            <node concept="2ShNRf" id="Re" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800836" />
              <node concept="YeOm9" id="Rf" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800836" />
                <node concept="1Y3b0j" id="Rg" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800836" />
                  <node concept="3Tm1VV" id="Rh" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800836" />
                  </node>
                  <node concept="3clFb_" id="Ri" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800836" />
                    <node concept="3Tm1VV" id="Rk" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                    <node concept="3uibUv" id="Rl" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                    <node concept="3clFbS" id="Rm" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                      <node concept="3cpWs6" id="Ro" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800836" />
                        <node concept="2ShNRf" id="Rp" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800836" />
                          <node concept="1pGfFk" id="Rq" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800836" />
                            <node concept="Xl_RD" id="Rr" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800836" />
                            </node>
                            <node concept="Xl_RD" id="Rs" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800836" />
                              <uo k="s:originTrace" v="n:6836281137582800836" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Rn" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Rj" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800836" />
                    <node concept="3Tm1VV" id="Rt" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                    <node concept="3uibUv" id="Ru" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                    <node concept="37vLTG" id="Rv" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                      <node concept="3uibUv" id="Ry" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800836" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Rw" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                      <node concept="3clFbF" id="Rz" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800838" />
                        <node concept="2YIFZM" id="R$" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582800905" />
                          <node concept="2OqwBi" id="R_" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582800906" />
                            <node concept="2OqwBi" id="RA" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582800907" />
                              <node concept="3zqWPK" id="RC" role="2OqNvi">
                                <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                                <uo k="s:originTrace" v="n:8085146484218857975" />
                                <node concept="2OqwBi" id="RE" role="37wK5m">
                                  <uo k="s:originTrace" v="n:8085146484218857977" />
                                  <node concept="1DoJHT" id="RF" role="2Oq$k0">
                                    <property role="1Dpdpm" value="getContextNode" />
                                    <uo k="s:originTrace" v="n:8085146484218857978" />
                                    <node concept="3uibUv" id="RH" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="RI" role="1EMhIo">
                                      <ref role="3cqZAo" node="Rv" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="2Xjw5R" id="RG" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:8085146484218857979" />
                                    <node concept="1xMEDy" id="RJ" role="1xVPHs">
                                      <uo k="s:originTrace" v="n:8085146484218857980" />
                                      <node concept="chp4Y" id="RL" role="ri$Ld">
                                        <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                        <uo k="s:originTrace" v="n:8085146484218857981" />
                                      </node>
                                    </node>
                                    <node concept="1xIGOp" id="RK" role="1xVPHs">
                                      <uo k="s:originTrace" v="n:8085146484218857982" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="35c_gC" id="RD" role="2Oq$k0">
                                <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                                <uo k="s:originTrace" v="n:6836281137582800915" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="RB" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857983" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Rx" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800836" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Rc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:2788452359612124352" />
        </node>
      </node>
      <node concept="3uibUv" id="QS" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:2788452359612124352" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="RM">
    <property role="3GE5qa" value="enum" />
    <property role="TrG5h" value="SEnumOperationInvocation_Constraints" />
    <uo k="s:originTrace" v="n:1240930364461" />
    <node concept="3Tm1VV" id="RN" role="1B3o_S">
      <uo k="s:originTrace" v="n:1240930364461" />
    </node>
    <node concept="3uibUv" id="RO" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1240930364461" />
    </node>
    <node concept="3clFbW" id="RP" role="jymVt">
      <uo k="s:originTrace" v="n:1240930364461" />
      <node concept="37vLTG" id="RS" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1240930364461" />
        <node concept="3uibUv" id="RV" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
      </node>
      <node concept="3cqZAl" id="RT" role="3clF45">
        <uo k="s:originTrace" v="n:1240930364461" />
      </node>
      <node concept="3clFbS" id="RU" role="3clF47">
        <uo k="s:originTrace" v="n:1240930364461" />
        <node concept="XkiVB" id="RW" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1240930364461" />
          <node concept="1BaE9c" id="RY" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SEnumOperationInvocation$_F" />
            <uo k="s:originTrace" v="n:1240930364461" />
            <node concept="2YIFZM" id="S0" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1240930364461" />
              <node concept="11gdke" id="S1" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1240930364461" />
              </node>
              <node concept="11gdke" id="S2" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1240930364461" />
              </node>
              <node concept="11gdke" id="S3" role="37wK5m">
                <property role="11gdj1" value="120ed32e98bL" />
                <uo k="s:originTrace" v="n:1240930364461" />
              </node>
              <node concept="Xl_RD" id="S4" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SEnumOperationInvocation" />
                <uo k="s:originTrace" v="n:1240930364461" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="RZ" role="37wK5m">
            <ref role="3cqZAo" node="RS" resolve="initContext" />
            <uo k="s:originTrace" v="n:1240930364461" />
          </node>
        </node>
        <node concept="3clFbF" id="RX" role="3cqZAp">
          <uo k="s:originTrace" v="n:1240930364461" />
          <node concept="1rXfSq" id="S5" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1240930364461" />
            <node concept="2ShNRf" id="S6" role="37wK5m">
              <uo k="s:originTrace" v="n:1240930364461" />
              <node concept="1pGfFk" id="S7" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="S9" resolve="SEnumOperationInvocation_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1240930364461" />
                <node concept="Xjq3P" id="S8" role="37wK5m">
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="RQ" role="jymVt">
      <uo k="s:originTrace" v="n:1240930364461" />
    </node>
    <node concept="312cEu" id="RR" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1240930364461" />
      <node concept="3clFbW" id="S9" role="jymVt">
        <uo k="s:originTrace" v="n:1240930364461" />
        <node concept="37vLTG" id="Sc" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1240930364461" />
          <node concept="3uibUv" id="Sf" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1240930364461" />
          </node>
        </node>
        <node concept="3cqZAl" id="Sd" role="3clF45">
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
        <node concept="3clFbS" id="Se" role="3clF47">
          <uo k="s:originTrace" v="n:1240930364461" />
          <node concept="XkiVB" id="Sg" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1240930364461" />
            <node concept="1BaE9c" id="Sh" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="enumDeclaration$Ib70" />
              <uo k="s:originTrace" v="n:1240930364461" />
              <node concept="2YIFZM" id="Sl" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1240930364461" />
                <node concept="11gdke" id="Sm" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
                <node concept="11gdke" id="Sn" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
                <node concept="11gdke" id="So" role="37wK5m">
                  <property role="11gdj1" value="120ed32e98bL" />
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
                <node concept="11gdke" id="Sp" role="37wK5m">
                  <property role="11gdj1" value="120ed32e98cL" />
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
                <node concept="Xl_RD" id="Sq" role="37wK5m">
                  <property role="Xl_RC" value="enumDeclaration" />
                  <uo k="s:originTrace" v="n:1240930364461" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Si" role="37wK5m">
              <ref role="3cqZAo" node="Sc" resolve="container" />
              <uo k="s:originTrace" v="n:1240930364461" />
            </node>
            <node concept="3clFbT" id="Sj" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1240930364461" />
            </node>
            <node concept="3clFbT" id="Sk" role="37wK5m">
              <uo k="s:originTrace" v="n:1240930364461" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Sa" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1240930364461" />
        <node concept="3Tm1VV" id="Sr" role="1B3o_S">
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
        <node concept="3uibUv" id="Ss" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
        <node concept="2AHcQZ" id="St" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
        <node concept="3clFbS" id="Su" role="3clF47">
          <uo k="s:originTrace" v="n:1240930364461" />
          <node concept="3cpWs6" id="Sw" role="3cqZAp">
            <uo k="s:originTrace" v="n:1240930364461" />
            <node concept="2ShNRf" id="Sx" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582799473" />
              <node concept="YeOm9" id="Sy" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582799473" />
                <node concept="1Y3b0j" id="Sz" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582799473" />
                  <node concept="3Tm1VV" id="S$" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582799473" />
                  </node>
                  <node concept="3clFb_" id="S_" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582799473" />
                    <node concept="3Tm1VV" id="SB" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                    <node concept="3uibUv" id="SC" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                    <node concept="3clFbS" id="SD" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                      <node concept="3cpWs6" id="SF" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582799473" />
                        <node concept="2ShNRf" id="SG" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582799473" />
                          <node concept="1pGfFk" id="SH" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582799473" />
                            <node concept="Xl_RD" id="SI" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582799473" />
                            </node>
                            <node concept="Xl_RD" id="SJ" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582799473" />
                              <uo k="s:originTrace" v="n:6836281137582799473" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="SE" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="SA" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582799473" />
                    <node concept="3Tm1VV" id="SK" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                    <node concept="3uibUv" id="SL" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                    <node concept="37vLTG" id="SM" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                      <node concept="3uibUv" id="SP" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582799473" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="SN" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                      <node concept="3clFbF" id="SQ" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8792939823003123794" />
                        <node concept="2ShNRf" id="SR" role="3clFbG">
                          <uo k="s:originTrace" v="n:8792939823003123795" />
                          <node concept="1pGfFk" id="SS" role="2ShVmc">
                            <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                            <uo k="s:originTrace" v="n:8792939823003123796" />
                            <node concept="2OqwBi" id="ST" role="37wK5m">
                              <uo k="s:originTrace" v="n:8792939823003123797" />
                              <node concept="1DoJHT" id="SW" role="2Oq$k0">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:8792939823003123798" />
                                <node concept="3uibUv" id="SY" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="SZ" role="1EMhIo">
                                  <ref role="3cqZAo" node="SM" resolve="_context" />
                                </node>
                              </node>
                              <node concept="I4A8Y" id="SX" role="2OqNvi">
                                <uo k="s:originTrace" v="n:8792939823003123799" />
                              </node>
                            </node>
                            <node concept="3clFbT" id="SU" role="37wK5m">
                              <property role="3clFbU" value="true" />
                              <uo k="s:originTrace" v="n:8792939823003123800" />
                            </node>
                            <node concept="35c_gC" id="SV" role="37wK5m">
                              <ref role="35c_gD" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
                              <uo k="s:originTrace" v="n:8792939823003123801" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="SO" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582799473" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Sv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1240930364461" />
        </node>
      </node>
      <node concept="3uibUv" id="Sb" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1240930364461" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="T0">
    <property role="3GE5qa" value="enum.enumoperation" />
    <property role="TrG5h" value="SEnumOperation_Old_Constraints" />
    <uo k="s:originTrace" v="n:1240931364428" />
    <node concept="3Tm1VV" id="T1" role="1B3o_S">
      <uo k="s:originTrace" v="n:1240931364428" />
    </node>
    <node concept="3uibUv" id="T2" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1240931364428" />
    </node>
    <node concept="3clFbW" id="T3" role="jymVt">
      <uo k="s:originTrace" v="n:1240931364428" />
      <node concept="37vLTG" id="T6" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="3uibUv" id="T9" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1240931364428" />
        </node>
      </node>
      <node concept="3cqZAl" id="T7" role="3clF45">
        <uo k="s:originTrace" v="n:1240931364428" />
      </node>
      <node concept="3clFbS" id="T8" role="3clF47">
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="XkiVB" id="Ta" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1240931364428" />
          <node concept="1BaE9c" id="Tc" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SEnumOperation_Old$hZ" />
            <uo k="s:originTrace" v="n:1240931364428" />
            <node concept="2YIFZM" id="Te" role="1Bazha">
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getInterfaceConcept(long,long,long,java.lang.String)" resolve="getInterfaceConcept" />
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <uo k="s:originTrace" v="n:1240931364428" />
              <node concept="11gdke" id="Tf" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1240931364428" />
              </node>
              <node concept="11gdke" id="Tg" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1240931364428" />
              </node>
              <node concept="11gdke" id="Th" role="37wK5m">
                <property role="11gdj1" value="120ed37273dL" />
                <uo k="s:originTrace" v="n:1240931364428" />
              </node>
              <node concept="Xl_RD" id="Ti" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SEnumOperation_Old" />
                <uo k="s:originTrace" v="n:1240931364428" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Td" role="37wK5m">
            <ref role="3cqZAo" node="T6" resolve="initContext" />
            <uo k="s:originTrace" v="n:1240931364428" />
          </node>
        </node>
        <node concept="3clFbF" id="Tb" role="3cqZAp">
          <uo k="s:originTrace" v="n:1240931364428" />
          <node concept="1rXfSq" id="Tj" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1240931364428" />
            <node concept="2ShNRf" id="Tk" role="37wK5m">
              <uo k="s:originTrace" v="n:1240931364428" />
              <node concept="YeOm9" id="Tl" role="2ShVmc">
                <uo k="s:originTrace" v="n:1240931364428" />
                <node concept="1Y3b0j" id="Tm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1240931364428" />
                  <node concept="3Tm1VV" id="Tn" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1240931364428" />
                  </node>
                  <node concept="3clFb_" id="To" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1240931364428" />
                    <node concept="3Tm1VV" id="Tr" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1240931364428" />
                    </node>
                    <node concept="2AHcQZ" id="Ts" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1240931364428" />
                    </node>
                    <node concept="3uibUv" id="Tt" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1240931364428" />
                    </node>
                    <node concept="37vLTG" id="Tu" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1240931364428" />
                      <node concept="3uibUv" id="Tx" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                      <node concept="2AHcQZ" id="Ty" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="Tv" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1240931364428" />
                      <node concept="3uibUv" id="Tz" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                      <node concept="2AHcQZ" id="T$" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Tw" role="3clF47">
                      <uo k="s:originTrace" v="n:1240931364428" />
                      <node concept="3cpWs8" id="T_" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1240931364428" />
                        <node concept="3cpWsn" id="TE" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1240931364428" />
                          <node concept="10P_77" id="TF" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1240931364428" />
                          </node>
                          <node concept="1rXfSq" id="TG" role="33vP2m">
                            <ref role="37wK5l" node="T5" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1240931364428" />
                            <node concept="2OqwBi" id="TH" role="37wK5m">
                              <uo k="s:originTrace" v="n:1240931364428" />
                              <node concept="37vLTw" id="TL" role="2Oq$k0">
                                <ref role="3cqZAo" node="Tu" resolve="context" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                              <node concept="liA8E" id="TM" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="TI" role="37wK5m">
                              <uo k="s:originTrace" v="n:1240931364428" />
                              <node concept="37vLTw" id="TN" role="2Oq$k0">
                                <ref role="3cqZAo" node="Tu" resolve="context" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                              <node concept="liA8E" id="TO" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="TJ" role="37wK5m">
                              <uo k="s:originTrace" v="n:1240931364428" />
                              <node concept="37vLTw" id="TP" role="2Oq$k0">
                                <ref role="3cqZAo" node="Tu" resolve="context" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                              <node concept="liA8E" id="TQ" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="TK" role="37wK5m">
                              <uo k="s:originTrace" v="n:1240931364428" />
                              <node concept="37vLTw" id="TR" role="2Oq$k0">
                                <ref role="3cqZAo" node="Tu" resolve="context" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                              <node concept="liA8E" id="TS" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="TA" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                      <node concept="3clFbJ" id="TB" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1240931364428" />
                        <node concept="3clFbS" id="TT" role="3clFbx">
                          <uo k="s:originTrace" v="n:1240931364428" />
                          <node concept="3clFbF" id="TV" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1240931364428" />
                            <node concept="2OqwBi" id="TW" role="3clFbG">
                              <uo k="s:originTrace" v="n:1240931364428" />
                              <node concept="37vLTw" id="TX" role="2Oq$k0">
                                <ref role="3cqZAo" node="Tv" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                              </node>
                              <node concept="liA8E" id="TY" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1240931364428" />
                                <node concept="1dyn4i" id="TZ" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1240931364428" />
                                  <node concept="2ShNRf" id="U0" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1240931364428" />
                                    <node concept="1pGfFk" id="U1" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1240931364428" />
                                      <node concept="Xl_RD" id="U2" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:1240931364428" />
                                      </node>
                                      <node concept="Xl_RD" id="U3" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536563490" />
                                        <uo k="s:originTrace" v="n:1240931364428" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="TU" role="3clFbw">
                          <uo k="s:originTrace" v="n:1240931364428" />
                          <node concept="3y3z36" id="U4" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1240931364428" />
                            <node concept="10Nm6u" id="U6" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1240931364428" />
                            </node>
                            <node concept="37vLTw" id="U7" role="3uHU7B">
                              <ref role="3cqZAo" node="Tv" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1240931364428" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="U5" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1240931364428" />
                            <node concept="37vLTw" id="U8" role="3fr31v">
                              <ref role="3cqZAo" node="TE" resolve="result" />
                              <uo k="s:originTrace" v="n:1240931364428" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="TC" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1240931364428" />
                      </node>
                      <node concept="3clFbF" id="TD" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1240931364428" />
                        <node concept="37vLTw" id="U9" role="3clFbG">
                          <ref role="3cqZAo" node="TE" resolve="result" />
                          <uo k="s:originTrace" v="n:1240931364428" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="Tp" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1240931364428" />
                  </node>
                  <node concept="3uibUv" id="Tq" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1240931364428" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="T4" role="jymVt">
      <uo k="s:originTrace" v="n:1240931364428" />
    </node>
    <node concept="2YIFZL" id="T5" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1240931364428" />
      <node concept="10P_77" id="Ua" role="3clF45">
        <uo k="s:originTrace" v="n:1240931364428" />
      </node>
      <node concept="3Tm6S6" id="Ub" role="1B3o_S">
        <uo k="s:originTrace" v="n:1240931364428" />
      </node>
      <node concept="3clFbS" id="Uc" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536563491" />
        <node concept="3clFbF" id="Uh" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563492" />
          <node concept="2OqwBi" id="Ui" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536563493" />
            <node concept="37vLTw" id="Uj" role="2Oq$k0">
              <ref role="3cqZAo" node="Ue" resolve="parentNode" />
              <uo k="s:originTrace" v="n:1227128029536563494" />
            </node>
            <node concept="1mIQ4w" id="Uk" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536563495" />
              <node concept="chp4Y" id="Ul" role="cj9EA">
                <ref role="cht4Q" to="tp25:i3HcIAb" resolve="SEnumOperationInvocation" />
                <uo k="s:originTrace" v="n:1227128029536563496" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Ud" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="3uibUv" id="Um" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1240931364428" />
        </node>
      </node>
      <node concept="37vLTG" id="Ue" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="3uibUv" id="Un" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1240931364428" />
        </node>
      </node>
      <node concept="37vLTG" id="Uf" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="3uibUv" id="Uo" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1240931364428" />
        </node>
      </node>
      <node concept="37vLTG" id="Ug" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1240931364428" />
        <node concept="3uibUv" id="Up" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1240931364428" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Uq">
    <property role="3GE5qa" value="operation.enum" />
    <property role="TrG5h" value="SEnum_MemberOperation_Old_Constraints" />
    <uo k="s:originTrace" v="n:1240148885571" />
    <node concept="3Tm1VV" id="Ur" role="1B3o_S">
      <uo k="s:originTrace" v="n:1240148885571" />
    </node>
    <node concept="3uibUv" id="Us" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1240148885571" />
    </node>
    <node concept="3clFbW" id="Ut" role="jymVt">
      <uo k="s:originTrace" v="n:1240148885571" />
      <node concept="37vLTG" id="Uw" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1240148885571" />
        <node concept="3uibUv" id="Uz" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
      </node>
      <node concept="3cqZAl" id="Ux" role="3clF45">
        <uo k="s:originTrace" v="n:1240148885571" />
      </node>
      <node concept="3clFbS" id="Uy" role="3clF47">
        <uo k="s:originTrace" v="n:1240148885571" />
        <node concept="XkiVB" id="U$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1240148885571" />
          <node concept="1BaE9c" id="UA" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SEnum_MemberOperation_Old$my" />
            <uo k="s:originTrace" v="n:1240148885571" />
            <node concept="2YIFZM" id="UC" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1240148885571" />
              <node concept="11gdke" id="UD" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1240148885571" />
              </node>
              <node concept="11gdke" id="UE" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1240148885571" />
              </node>
              <node concept="11gdke" id="UF" role="37wK5m">
                <property role="11gdj1" value="120ed37e691L" />
                <uo k="s:originTrace" v="n:1240148885571" />
              </node>
              <node concept="Xl_RD" id="UG" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SEnum_MemberOperation_Old" />
                <uo k="s:originTrace" v="n:1240148885571" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="UB" role="37wK5m">
            <ref role="3cqZAo" node="Uw" resolve="initContext" />
            <uo k="s:originTrace" v="n:1240148885571" />
          </node>
        </node>
        <node concept="3clFbF" id="U_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1240148885571" />
          <node concept="1rXfSq" id="UH" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1240148885571" />
            <node concept="2ShNRf" id="UI" role="37wK5m">
              <uo k="s:originTrace" v="n:1240148885571" />
              <node concept="1pGfFk" id="UJ" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="UL" resolve="SEnum_MemberOperation_Old_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1240148885571" />
                <node concept="Xjq3P" id="UK" role="37wK5m">
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Uu" role="jymVt">
      <uo k="s:originTrace" v="n:1240148885571" />
    </node>
    <node concept="312cEu" id="Uv" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1240148885571" />
      <node concept="3clFbW" id="UL" role="jymVt">
        <uo k="s:originTrace" v="n:1240148885571" />
        <node concept="37vLTG" id="UO" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1240148885571" />
          <node concept="3uibUv" id="UR" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1240148885571" />
          </node>
        </node>
        <node concept="3cqZAl" id="UP" role="3clF45">
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
        <node concept="3clFbS" id="UQ" role="3clF47">
          <uo k="s:originTrace" v="n:1240148885571" />
          <node concept="XkiVB" id="US" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1240148885571" />
            <node concept="1BaE9c" id="UT" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="member$m3yw" />
              <uo k="s:originTrace" v="n:1240148885571" />
              <node concept="2YIFZM" id="UX" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1240148885571" />
                <node concept="11gdke" id="UY" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
                <node concept="11gdke" id="UZ" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
                <node concept="11gdke" id="V0" role="37wK5m">
                  <property role="11gdj1" value="120ed37e691L" />
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
                <node concept="11gdke" id="V1" role="37wK5m">
                  <property role="11gdj1" value="120ed37e692L" />
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
                <node concept="Xl_RD" id="V2" role="37wK5m">
                  <property role="Xl_RC" value="member" />
                  <uo k="s:originTrace" v="n:1240148885571" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="UU" role="37wK5m">
              <ref role="3cqZAo" node="UO" resolve="container" />
              <uo k="s:originTrace" v="n:1240148885571" />
            </node>
            <node concept="3clFbT" id="UV" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1240148885571" />
            </node>
            <node concept="3clFbT" id="UW" role="37wK5m">
              <uo k="s:originTrace" v="n:1240148885571" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="UM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1240148885571" />
        <node concept="3Tm1VV" id="V3" role="1B3o_S">
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
        <node concept="3uibUv" id="V4" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
        <node concept="2AHcQZ" id="V5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
        <node concept="3clFbS" id="V6" role="3clF47">
          <uo k="s:originTrace" v="n:1240148885571" />
          <node concept="3cpWs6" id="V8" role="3cqZAp">
            <uo k="s:originTrace" v="n:1240148885571" />
            <node concept="2ShNRf" id="V9" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582800917" />
              <node concept="YeOm9" id="Va" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582800917" />
                <node concept="1Y3b0j" id="Vb" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582800917" />
                  <node concept="3Tm1VV" id="Vc" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582800917" />
                  </node>
                  <node concept="3clFb_" id="Vd" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582800917" />
                    <node concept="3Tm1VV" id="Vf" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                    <node concept="3uibUv" id="Vg" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                    <node concept="3clFbS" id="Vh" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                      <node concept="3cpWs6" id="Vj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800917" />
                        <node concept="2ShNRf" id="Vk" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582800917" />
                          <node concept="1pGfFk" id="Vl" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582800917" />
                            <node concept="Xl_RD" id="Vm" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582800917" />
                            </node>
                            <node concept="Xl_RD" id="Vn" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582800917" />
                              <uo k="s:originTrace" v="n:6836281137582800917" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Vi" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="Ve" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582800917" />
                    <node concept="3Tm1VV" id="Vo" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                    <node concept="3uibUv" id="Vp" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                    <node concept="37vLTG" id="Vq" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                      <node concept="3uibUv" id="Vt" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582800917" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Vr" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                      <node concept="3cpWs8" id="Vu" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582801004" />
                        <node concept="3cpWsn" id="Vy" role="3cpWs9">
                          <property role="TrG5h" value="enclosingNode" />
                          <property role="3TUv4t" value="true" />
                          <uo k="s:originTrace" v="n:6836281137582801005" />
                          <node concept="3Tqbb2" id="Vz" role="1tU5fm">
                            <uo k="s:originTrace" v="n:6836281137582801006" />
                          </node>
                          <node concept="1eOMI4" id="V$" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582800994" />
                            <node concept="3K4zz7" id="V_" role="1eOMHV">
                              <uo k="s:originTrace" v="n:6836281137582800995" />
                              <node concept="1DoJHT" id="VA" role="3K4E3e">
                                <property role="1Dpdpm" value="getContextNode" />
                                <uo k="s:originTrace" v="n:6836281137582800996" />
                                <node concept="3uibUv" id="VD" role="1Ez5kq">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="37vLTw" id="VE" role="1EMhIo">
                                  <ref role="3cqZAo" node="Vq" resolve="_context" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="VB" role="3K4Cdx">
                                <uo k="s:originTrace" v="n:6836281137582800997" />
                                <node concept="1DoJHT" id="VF" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582800998" />
                                  <node concept="3uibUv" id="VH" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="VI" role="1EMhIo">
                                    <ref role="3cqZAo" node="Vq" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="VG" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582800999" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="VC" role="3K4GZi">
                                <uo k="s:originTrace" v="n:6836281137582801000" />
                                <node concept="1DoJHT" id="VJ" role="2Oq$k0">
                                  <property role="1Dpdpm" value="getReferenceNode" />
                                  <uo k="s:originTrace" v="n:6836281137582801001" />
                                  <node concept="3uibUv" id="VL" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="VM" role="1EMhIo">
                                    <ref role="3cqZAo" node="Vq" resolve="_context" />
                                  </node>
                                </node>
                                <node concept="1mfA1w" id="VK" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:6836281137582801002" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Vv" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800919" />
                        <node concept="3cpWsn" id="VN" role="3cpWs9">
                          <property role="TrG5h" value="enumNode" />
                          <uo k="s:originTrace" v="n:6836281137582800920" />
                          <node concept="3Tqbb2" id="VO" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:fKAxPRV" resolve="EnumerationDataTypeDeclaration_Old" />
                            <uo k="s:originTrace" v="n:6836281137582800921" />
                          </node>
                          <node concept="3K4zz7" id="VP" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582800922" />
                            <node concept="10Nm6u" id="VQ" role="3K4GZi">
                              <uo k="s:originTrace" v="n:6836281137582800923" />
                            </node>
                            <node concept="2OqwBi" id="VR" role="3K4Cdx">
                              <uo k="s:originTrace" v="n:6836281137582800924" />
                              <node concept="37vLTw" id="VT" role="2Oq$k0">
                                <ref role="3cqZAo" node="Vy" resolve="enclosingNode" />
                                <uo k="s:originTrace" v="n:6836281137582801007" />
                              </node>
                              <node concept="1mIQ4w" id="VU" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582800926" />
                                <node concept="chp4Y" id="VV" role="cj9EA">
                                  <ref role="cht4Q" to="tp25:i3HcIAb" resolve="SEnumOperationInvocation" />
                                  <uo k="s:originTrace" v="n:6836281137582800927" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="VS" role="3K4E3e">
                              <uo k="s:originTrace" v="n:6836281137582800928" />
                              <node concept="1PxgMI" id="VW" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6836281137582800929" />
                                <node concept="37vLTw" id="VY" role="1m5AlR">
                                  <ref role="3cqZAo" node="Vy" resolve="enclosingNode" />
                                  <uo k="s:originTrace" v="n:6836281137582801008" />
                                </node>
                                <node concept="chp4Y" id="VZ" role="3oSUPX">
                                  <ref role="cht4Q" to="tp25:i3HcIAb" resolve="SEnumOperationInvocation" />
                                  <uo k="s:originTrace" v="n:6836281137582800931" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="VX" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:i3HcIAc" resolve="enumDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582800932" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Vw" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800933" />
                        <node concept="3clFbS" id="W0" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582800934" />
                          <node concept="3cpWs6" id="W2" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582800935" />
                            <node concept="2YIFZM" id="W3" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:6836281137582801344" />
                              <node concept="2OqwBi" id="W4" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582801345" />
                                <node concept="37vLTw" id="W5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="VN" resolve="enumNode" />
                                  <uo k="s:originTrace" v="n:6836281137582801346" />
                                </node>
                                <node concept="3Tsc0h" id="W6" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpce:fKM5hVY" resolve="member" />
                                  <uo k="s:originTrace" v="n:6836281137582801347" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="W1" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582800939" />
                          <node concept="37vLTw" id="W7" role="3uHU7B">
                            <ref role="3cqZAo" node="VN" resolve="enumNode" />
                            <uo k="s:originTrace" v="n:6836281137582800940" />
                          </node>
                          <node concept="10Nm6u" id="W8" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582800941" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="Vx" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582800942" />
                        <node concept="2YIFZM" id="W9" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582801354" />
                          <node concept="2ShNRf" id="Wa" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582801355" />
                            <node concept="2T8Vx0" id="Wb" role="2ShVmc">
                              <uo k="s:originTrace" v="n:6836281137582801356" />
                              <node concept="2I9FWS" id="Wc" role="2T96Bj">
                                <ref role="2I9WkF" to="tpce:fKM4N6M" resolve="EnumerationMemberDeclaration_Old" />
                                <uo k="s:originTrace" v="n:6836281137582801357" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Vs" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582800917" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="V7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1240148885571" />
        </node>
      </node>
      <node concept="3uibUv" id="UN" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1240148885571" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Wd">
    <property role="TrG5h" value="SLinkAccess_Constraints" />
    <uo k="s:originTrace" v="n:1213104847488" />
    <node concept="3Tm1VV" id="We" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104847488" />
    </node>
    <node concept="3uibUv" id="Wf" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104847488" />
    </node>
    <node concept="3clFbW" id="Wg" role="jymVt">
      <uo k="s:originTrace" v="n:1213104847488" />
      <node concept="37vLTG" id="Wj" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104847488" />
        <node concept="3uibUv" id="Wm" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
      </node>
      <node concept="3cqZAl" id="Wk" role="3clF45">
        <uo k="s:originTrace" v="n:1213104847488" />
      </node>
      <node concept="3clFbS" id="Wl" role="3clF47">
        <uo k="s:originTrace" v="n:1213104847488" />
        <node concept="XkiVB" id="Wn" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104847488" />
          <node concept="1BaE9c" id="Wp" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SLinkAccess$Pk" />
            <uo k="s:originTrace" v="n:1213104847488" />
            <node concept="2YIFZM" id="Wr" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104847488" />
              <node concept="11gdke" id="Ws" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104847488" />
              </node>
              <node concept="11gdke" id="Wt" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104847488" />
              </node>
              <node concept="11gdke" id="Wu" role="37wK5m">
                <property role="11gdj1" value="108f96ea2caL" />
                <uo k="s:originTrace" v="n:1213104847488" />
              </node>
              <node concept="Xl_RD" id="Wv" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SLinkAccess" />
                <uo k="s:originTrace" v="n:1213104847488" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Wq" role="37wK5m">
            <ref role="3cqZAo" node="Wj" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104847488" />
          </node>
        </node>
        <node concept="3clFbF" id="Wo" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104847488" />
          <node concept="1rXfSq" id="Ww" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104847488" />
            <node concept="2ShNRf" id="Wx" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104847488" />
              <node concept="1pGfFk" id="Wy" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="W$" resolve="SLinkAccess_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104847488" />
                <node concept="Xjq3P" id="Wz" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Wh" role="jymVt">
      <uo k="s:originTrace" v="n:1213104847488" />
    </node>
    <node concept="312cEu" id="Wi" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104847488" />
      <node concept="3clFbW" id="W$" role="jymVt">
        <uo k="s:originTrace" v="n:1213104847488" />
        <node concept="37vLTG" id="WB" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104847488" />
          <node concept="3uibUv" id="WE" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104847488" />
          </node>
        </node>
        <node concept="3cqZAl" id="WC" role="3clF45">
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
        <node concept="3clFbS" id="WD" role="3clF47">
          <uo k="s:originTrace" v="n:1213104847488" />
          <node concept="XkiVB" id="WF" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104847488" />
            <node concept="1BaE9c" id="WG" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$zuOT" />
              <uo k="s:originTrace" v="n:1213104847488" />
              <node concept="2YIFZM" id="WK" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104847488" />
                <node concept="11gdke" id="WL" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
                <node concept="11gdke" id="WM" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
                <node concept="11gdke" id="WN" role="37wK5m">
                  <property role="11gdj1" value="108f96ea2caL" />
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
                <node concept="11gdke" id="WO" role="37wK5m">
                  <property role="11gdj1" value="108f974549cL" />
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
                <node concept="Xl_RD" id="WP" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:1213104847488" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="WH" role="37wK5m">
              <ref role="3cqZAo" node="WB" resolve="container" />
              <uo k="s:originTrace" v="n:1213104847488" />
            </node>
            <node concept="3clFbT" id="WI" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104847488" />
            </node>
            <node concept="3clFbT" id="WJ" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104847488" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="W_" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104847488" />
        <node concept="3Tm1VV" id="WQ" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
        <node concept="3uibUv" id="WR" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
        <node concept="2AHcQZ" id="WS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
        <node concept="3clFbS" id="WT" role="3clF47">
          <uo k="s:originTrace" v="n:1213104847488" />
          <node concept="3cpWs6" id="WV" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104847488" />
            <node concept="2ShNRf" id="WW" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582798316" />
              <node concept="YeOm9" id="WX" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582798316" />
                <node concept="1Y3b0j" id="WY" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582798316" />
                  <node concept="3Tm1VV" id="WZ" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582798316" />
                  </node>
                  <node concept="3clFb_" id="X0" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582798316" />
                    <node concept="3Tm1VV" id="X2" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                    <node concept="3uibUv" id="X3" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                    <node concept="3clFbS" id="X4" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                      <node concept="3cpWs6" id="X6" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798316" />
                        <node concept="2ShNRf" id="X7" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582798316" />
                          <node concept="1pGfFk" id="X8" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582798316" />
                            <node concept="Xl_RD" id="X9" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582798316" />
                            </node>
                            <node concept="Xl_RD" id="Xa" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582798316" />
                              <uo k="s:originTrace" v="n:6836281137582798316" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="X5" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="X1" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582798316" />
                    <node concept="3Tm1VV" id="Xb" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                    <node concept="3uibUv" id="Xc" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                    <node concept="37vLTG" id="Xd" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                      <node concept="3uibUv" id="Xg" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582798316" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="Xe" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                      <node concept="3SKdUt" id="Xh" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798318" />
                        <node concept="1PaTwC" id="Xn" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814501" />
                          <node concept="3oM_SD" id="Xo" role="1PaTwD">
                            <property role="3oM_SC" value="links" />
                            <uo k="s:originTrace" v="n:700871696606814502" />
                          </node>
                          <node concept="3oM_SD" id="Xp" role="1PaTwD">
                            <property role="3oM_SC" value="with" />
                            <uo k="s:originTrace" v="n:700871696606814503" />
                          </node>
                          <node concept="3oM_SD" id="Xq" role="1PaTwD">
                            <property role="3oM_SC" value="cardinality" />
                            <uo k="s:originTrace" v="n:700871696606814504" />
                          </node>
                          <node concept="3oM_SD" id="Xr" role="1PaTwD">
                            <property role="3oM_SC" value="1" />
                            <uo k="s:originTrace" v="n:700871696606814505" />
                          </node>
                          <node concept="3oM_SD" id="Xs" role="1PaTwD">
                            <property role="3oM_SC" value="or" />
                            <uo k="s:originTrace" v="n:700871696606814506" />
                          </node>
                          <node concept="3oM_SD" id="Xt" role="1PaTwD">
                            <property role="3oM_SC" value="0..1" />
                            <uo k="s:originTrace" v="n:700871696606814507" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Xi" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798320" />
                        <node concept="3cpWsn" id="Xu" role="3cpWs9">
                          <property role="TrG5h" value="enclosingDot" />
                          <uo k="s:originTrace" v="n:6836281137582798321" />
                          <node concept="3Tqbb2" id="Xv" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
                            <uo k="s:originTrace" v="n:6836281137582798322" />
                          </node>
                          <node concept="2OqwBi" id="Xw" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582798323" />
                            <node concept="1DoJHT" id="Xx" role="2Oq$k0">
                              <property role="1Dpdpm" value="getContextNode" />
                              <uo k="s:originTrace" v="n:6836281137582798361" />
                              <node concept="3uibUv" id="Xz" role="1Ez5kq">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                              <node concept="37vLTw" id="X$" role="1EMhIo">
                                <ref role="3cqZAo" node="Xd" resolve="_context" />
                              </node>
                            </node>
                            <node concept="2Xjw5R" id="Xy" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582798325" />
                              <node concept="1xMEDy" id="X_" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582798326" />
                                <node concept="chp4Y" id="XB" role="ri$Ld">
                                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                  <uo k="s:originTrace" v="n:6836281137582798327" />
                                </node>
                              </node>
                              <node concept="1xIGOp" id="XA" role="1xVPHs">
                                <uo k="s:originTrace" v="n:6836281137582798328" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="Xj" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798329" />
                        <node concept="3clFbS" id="XC" role="3clFbx">
                          <uo k="s:originTrace" v="n:6836281137582798330" />
                          <node concept="3cpWs6" id="XE" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582798331" />
                            <node concept="2ShNRf" id="XF" role="3cqZAk">
                              <uo k="s:originTrace" v="n:6467324209847803453" />
                              <node concept="1pGfFk" id="XG" role="2ShVmc">
                                <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                <uo k="s:originTrace" v="n:6467324209847805710" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="XD" role="3clFbw">
                          <uo k="s:originTrace" v="n:6836281137582798333" />
                          <node concept="10Nm6u" id="XH" role="3uHU7w">
                            <uo k="s:originTrace" v="n:6836281137582798334" />
                          </node>
                          <node concept="37vLTw" id="XI" role="3uHU7B">
                            <ref role="3cqZAo" node="Xu" resolve="enclosingDot" />
                            <uo k="s:originTrace" v="n:6836281137582798335" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Xk" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798336" />
                        <node concept="3cpWsn" id="XJ" role="3cpWs9">
                          <property role="TrG5h" value="dotOperandConcept" />
                          <uo k="s:originTrace" v="n:6836281137582798337" />
                          <node concept="2OqwBi" id="XK" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582798338" />
                            <node concept="3zqWPK" id="XM" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                              <uo k="s:originTrace" v="n:8085146484218857941" />
                              <node concept="37vLTw" id="XO" role="37wK5m">
                                <ref role="3cqZAo" node="Xu" resolve="enclosingDot" />
                                <uo k="s:originTrace" v="n:8085146484218857943" />
                              </node>
                            </node>
                            <node concept="35c_gC" id="XN" role="2Oq$k0">
                              <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                              <uo k="s:originTrace" v="n:6836281137582798341" />
                            </node>
                          </node>
                          <node concept="3Tqbb2" id="XL" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582798342" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="Xl" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798343" />
                        <node concept="3cpWsn" id="XP" role="3cpWs9">
                          <property role="TrG5h" value="links" />
                          <uo k="s:originTrace" v="n:6836281137582798344" />
                          <node concept="2OqwBi" id="XQ" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582798345" />
                            <node concept="37vLTw" id="XS" role="2Oq$k0">
                              <ref role="3cqZAo" node="XJ" resolve="dotOperandConcept" />
                              <uo k="s:originTrace" v="n:6836281137582798346" />
                            </node>
                            <node concept="3zqWPK" id="XT" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857944" />
                            </node>
                          </node>
                          <node concept="2I9FWS" id="XR" role="1tU5fm">
                            <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582798348" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="Xm" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798349" />
                        <node concept="2YIFZM" id="XU" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582798543" />
                          <node concept="2OqwBi" id="XV" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582798544" />
                            <node concept="37vLTw" id="XW" role="2Oq$k0">
                              <ref role="3cqZAo" node="XP" resolve="links" />
                              <uo k="s:originTrace" v="n:6836281137582798545" />
                            </node>
                            <node concept="3zZkjj" id="XX" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582798546" />
                              <node concept="1bVj0M" id="XY" role="23t8la">
                                <uo k="s:originTrace" v="n:6836281137582798547" />
                                <node concept="3clFbS" id="XZ" role="1bW5cS">
                                  <uo k="s:originTrace" v="n:6836281137582798548" />
                                  <node concept="3clFbF" id="Y1" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:6836281137582798549" />
                                    <node concept="2OqwBi" id="Y2" role="3clFbG">
                                      <uo k="s:originTrace" v="n:6836281137582798550" />
                                      <node concept="37vLTw" id="Y3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="Y0" resolve="it" />
                                        <uo k="s:originTrace" v="n:6836281137582798551" />
                                      </node>
                                      <node concept="3zqWPK" id="Y4" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                                        <uo k="s:originTrace" v="n:8085146484218857946" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="Y0" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <uo k="s:originTrace" v="n:6847626768367732472" />
                                  <node concept="2jxLKc" id="Y5" role="1tU5fm">
                                    <uo k="s:originTrace" v="n:6847626768367732473" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Xf" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582798316" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="WU" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104847488" />
        </node>
      </node>
      <node concept="3uibUv" id="WA" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104847488" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Y6">
    <property role="3GE5qa" value="operation.featureAccess" />
    <property role="TrG5h" value="SLinkImplicitSelect_Constraints" />
    <uo k="s:originTrace" v="n:8405512791876074475" />
    <node concept="3Tm1VV" id="Y7" role="1B3o_S">
      <uo k="s:originTrace" v="n:8405512791876074475" />
    </node>
    <node concept="3uibUv" id="Y8" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:8405512791876074475" />
    </node>
    <node concept="3clFbW" id="Y9" role="jymVt">
      <uo k="s:originTrace" v="n:8405512791876074475" />
      <node concept="37vLTG" id="Yd" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3uibUv" id="Yg" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
      <node concept="3cqZAl" id="Ye" role="3clF45">
        <uo k="s:originTrace" v="n:8405512791876074475" />
      </node>
      <node concept="3clFbS" id="Yf" role="3clF47">
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="XkiVB" id="Yh" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="1BaE9c" id="Yk" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SLinkImplicitSelect$sG" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
            <node concept="2YIFZM" id="Ym" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:8405512791876074475" />
              <node concept="11gdke" id="Yn" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
              </node>
              <node concept="11gdke" id="Yo" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
              </node>
              <node concept="11gdke" id="Yp" role="37wK5m">
                <property role="11gdj1" value="316f884c72a4157dL" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
              </node>
              <node concept="Xl_RD" id="Yq" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Yl" role="37wK5m">
            <ref role="3cqZAo" node="Yd" resolve="initContext" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
          </node>
        </node>
        <node concept="3clFbF" id="Yi" role="3cqZAp">
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="1rXfSq" id="Yr" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
            <node concept="2ShNRf" id="Ys" role="37wK5m">
              <uo k="s:originTrace" v="n:8405512791876074475" />
              <node concept="1pGfFk" id="Yt" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="Zm" resolve="SLinkImplicitSelect_Constraints.RD1" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
                <node concept="Xjq3P" id="Yu" role="37wK5m">
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Yj" role="3cqZAp">
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="1rXfSq" id="Yv" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
            <node concept="2ShNRf" id="Yw" role="37wK5m">
              <uo k="s:originTrace" v="n:8405512791876074475" />
              <node concept="YeOm9" id="Yx" role="2ShVmc">
                <uo k="s:originTrace" v="n:8405512791876074475" />
                <node concept="1Y3b0j" id="Yy" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                  <node concept="3Tm1VV" id="Yz" role="1B3o_S">
                    <uo k="s:originTrace" v="n:8405512791876074475" />
                  </node>
                  <node concept="3clFb_" id="Y$" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:8405512791876074475" />
                    <node concept="3Tm1VV" id="YB" role="1B3o_S">
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                    </node>
                    <node concept="2AHcQZ" id="YC" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                    </node>
                    <node concept="3uibUv" id="YD" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                    </node>
                    <node concept="37vLTG" id="YE" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                      <node concept="3uibUv" id="YH" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                      <node concept="2AHcQZ" id="YI" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="YF" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                      <node concept="3uibUv" id="YJ" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                      <node concept="2AHcQZ" id="YK" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="YG" role="3clF47">
                      <uo k="s:originTrace" v="n:8405512791876074475" />
                      <node concept="3cpWs8" id="YL" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                        <node concept="3cpWsn" id="YQ" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:8405512791876074475" />
                          <node concept="10P_77" id="YR" role="1tU5fm">
                            <uo k="s:originTrace" v="n:8405512791876074475" />
                          </node>
                          <node concept="1rXfSq" id="YS" role="33vP2m">
                            <ref role="37wK5l" node="Yc" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:8405512791876074475" />
                            <node concept="2OqwBi" id="YT" role="37wK5m">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                              <node concept="37vLTw" id="YX" role="2Oq$k0">
                                <ref role="3cqZAo" node="YE" resolve="context" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                              <node concept="liA8E" id="YY" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="YU" role="37wK5m">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                              <node concept="37vLTw" id="YZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="YE" resolve="context" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                              <node concept="liA8E" id="Z0" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="YV" role="37wK5m">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                              <node concept="37vLTw" id="Z1" role="2Oq$k0">
                                <ref role="3cqZAo" node="YE" resolve="context" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                              <node concept="liA8E" id="Z2" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="YW" role="37wK5m">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                              <node concept="37vLTw" id="Z3" role="2Oq$k0">
                                <ref role="3cqZAo" node="YE" resolve="context" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                              <node concept="liA8E" id="Z4" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="YM" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                      <node concept="3clFbJ" id="YN" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                        <node concept="3clFbS" id="Z5" role="3clFbx">
                          <uo k="s:originTrace" v="n:8405512791876074475" />
                          <node concept="3clFbF" id="Z7" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8405512791876074475" />
                            <node concept="2OqwBi" id="Z8" role="3clFbG">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                              <node concept="37vLTw" id="Z9" role="2Oq$k0">
                                <ref role="3cqZAo" node="YF" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                              </node>
                              <node concept="liA8E" id="Za" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:8405512791876074475" />
                                <node concept="1dyn4i" id="Zb" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:8405512791876074475" />
                                  <node concept="2ShNRf" id="Zc" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:8405512791876074475" />
                                    <node concept="1pGfFk" id="Zd" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:8405512791876074475" />
                                      <node concept="Xl_RD" id="Ze" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:8405512791876074475" />
                                      </node>
                                      <node concept="Xl_RD" id="Zf" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536563471" />
                                        <uo k="s:originTrace" v="n:8405512791876074475" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="Z6" role="3clFbw">
                          <uo k="s:originTrace" v="n:8405512791876074475" />
                          <node concept="3y3z36" id="Zg" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8405512791876074475" />
                            <node concept="10Nm6u" id="Zi" role="3uHU7w">
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                            </node>
                            <node concept="37vLTw" id="Zj" role="3uHU7B">
                              <ref role="3cqZAo" node="YF" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="Zh" role="3uHU7B">
                            <uo k="s:originTrace" v="n:8405512791876074475" />
                            <node concept="37vLTw" id="Zk" role="3fr31v">
                              <ref role="3cqZAo" node="YQ" resolve="result" />
                              <uo k="s:originTrace" v="n:8405512791876074475" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="YO" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                      </node>
                      <node concept="3clFbF" id="YP" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8405512791876074475" />
                        <node concept="37vLTw" id="Zl" role="3clFbG">
                          <ref role="3cqZAo" node="YQ" resolve="result" />
                          <uo k="s:originTrace" v="n:8405512791876074475" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="Y_" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:8405512791876074475" />
                  </node>
                  <node concept="3uibUv" id="YA" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:8405512791876074475" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ya" role="jymVt">
      <uo k="s:originTrace" v="n:8405512791876074475" />
    </node>
    <node concept="312cEu" id="Yb" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:8405512791876074475" />
      <node concept="3clFbW" id="Zm" role="jymVt">
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="37vLTG" id="Zp" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="3uibUv" id="Zs" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
          </node>
        </node>
        <node concept="3cqZAl" id="Zq" role="3clF45">
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
        <node concept="3clFbS" id="Zr" role="3clF47">
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="XkiVB" id="Zt" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:8405512791876074475" />
            <node concept="1BaE9c" id="Zu" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$FZO0" />
              <uo k="s:originTrace" v="n:8405512791876074475" />
              <node concept="2YIFZM" id="Zy" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:8405512791876074475" />
                <node concept="11gdke" id="Zz" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
                <node concept="11gdke" id="Z$" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
                <node concept="11gdke" id="Z_" role="37wK5m">
                  <property role="11gdj1" value="316f884c72a4157dL" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
                <node concept="11gdke" id="ZA" role="37wK5m">
                  <property role="11gdj1" value="316f884c72a41783L" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
                <node concept="Xl_RD" id="ZB" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:8405512791876074475" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Zv" role="37wK5m">
              <ref role="3cqZAo" node="Zp" resolve="container" />
              <uo k="s:originTrace" v="n:8405512791876074475" />
            </node>
            <node concept="3clFbT" id="Zw" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:8405512791876074475" />
            </node>
            <node concept="3clFbT" id="Zx" role="37wK5m">
              <uo k="s:originTrace" v="n:8405512791876074475" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Zn" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3Tm1VV" id="ZC" role="1B3o_S">
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
        <node concept="3uibUv" id="ZD" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
        <node concept="2AHcQZ" id="ZE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
        <node concept="3clFbS" id="ZF" role="3clF47">
          <uo k="s:originTrace" v="n:8405512791876074475" />
          <node concept="3cpWs6" id="ZH" role="3cqZAp">
            <uo k="s:originTrace" v="n:8405512791876074475" />
            <node concept="2ShNRf" id="ZI" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582798918" />
              <node concept="YeOm9" id="ZJ" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582798918" />
                <node concept="1Y3b0j" id="ZK" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582798918" />
                  <node concept="3Tm1VV" id="ZL" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582798918" />
                  </node>
                  <node concept="3clFb_" id="ZM" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582798918" />
                    <node concept="3Tm1VV" id="ZO" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                    <node concept="3uibUv" id="ZP" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                    <node concept="3clFbS" id="ZQ" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                      <node concept="3cpWs6" id="ZS" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798918" />
                        <node concept="2ShNRf" id="ZT" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582798918" />
                          <node concept="1pGfFk" id="ZU" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582798918" />
                            <node concept="Xl_RD" id="ZV" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582798918" />
                            </node>
                            <node concept="Xl_RD" id="ZW" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582798918" />
                              <uo k="s:originTrace" v="n:6836281137582798918" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="ZR" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="ZN" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582798918" />
                    <node concept="3Tm1VV" id="ZX" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                    <node concept="3uibUv" id="ZY" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                    <node concept="37vLTG" id="ZZ" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                      <node concept="3uibUv" id="102" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582798918" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="100" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                      <node concept="3clFbF" id="103" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582798920" />
                        <node concept="2YIFZM" id="104" role="3clFbG">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582799233" />
                          <node concept="2OqwBi" id="105" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582799234" />
                            <node concept="2OqwBi" id="106" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582799235" />
                              <node concept="3TrEf2" id="108" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:g$ehGDh" resolve="concept" />
                                <uo k="s:originTrace" v="n:6836281137582799236" />
                              </node>
                              <node concept="1PxgMI" id="109" role="2Oq$k0">
                                <uo k="s:originTrace" v="n:6836281137582799237" />
                                <node concept="2OqwBi" id="10a" role="1m5AlR">
                                  <uo k="s:originTrace" v="n:6836281137582799238" />
                                  <node concept="3TrEf2" id="10c" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp2q:gKA3Ige" resolve="elementType" />
                                    <uo k="s:originTrace" v="n:6836281137582799239" />
                                  </node>
                                  <node concept="1UaxmW" id="10d" role="2Oq$k0">
                                    <uo k="s:originTrace" v="n:6836281137582799240" />
                                    <node concept="1Yb3XT" id="10e" role="1Ub_4A">
                                      <property role="TrG5h" value="type" />
                                      <uo k="s:originTrace" v="n:6836281137582799241" />
                                      <node concept="2DMOqp" id="10g" role="1YbcFS">
                                        <uo k="s:originTrace" v="n:6836281137582799242" />
                                        <node concept="2c44tf" id="10h" role="HM535">
                                          <uo k="s:originTrace" v="n:6836281137582799243" />
                                          <node concept="A3Dl8" id="10i" role="2c44tc">
                                            <uo k="s:originTrace" v="n:6836281137582799244" />
                                            <node concept="3Tqbb2" id="10j" role="A3Ik2">
                                              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                                              <uo k="s:originTrace" v="n:6836281137582799245" />
                                              <node concept="3jrphi" id="10k" role="lGtFl">
                                                <property role="2qtEX8" value="concept" />
                                                <property role="3jrwYG" value="nodeType" />
                                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                                                <uo k="s:originTrace" v="n:6836281137582799246" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="10f" role="1Ub_4B">
                                      <uo k="s:originTrace" v="n:6836281137582799247" />
                                      <node concept="2OqwBi" id="10l" role="2Oq$k0">
                                        <uo k="s:originTrace" v="n:6836281137582799248" />
                                        <node concept="1PxgMI" id="10n" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <uo k="s:originTrace" v="n:6836281137582799249" />
                                          <node concept="1eOMI4" id="10p" role="1m5AlR">
                                            <uo k="s:originTrace" v="n:6836281137582799250" />
                                            <node concept="3K4zz7" id="10r" role="1eOMHV">
                                              <uo k="s:originTrace" v="n:6836281137582799251" />
                                              <node concept="1DoJHT" id="10s" role="3K4E3e">
                                                <property role="1Dpdpm" value="getContextNode" />
                                                <uo k="s:originTrace" v="n:6836281137582799252" />
                                                <node concept="3uibUv" id="10v" role="1Ez5kq">
                                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                </node>
                                                <node concept="37vLTw" id="10w" role="1EMhIo">
                                                  <ref role="3cqZAo" node="ZZ" resolve="_context" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="10t" role="3K4Cdx">
                                                <uo k="s:originTrace" v="n:6836281137582799253" />
                                                <node concept="1DoJHT" id="10x" role="2Oq$k0">
                                                  <property role="1Dpdpm" value="getReferenceNode" />
                                                  <uo k="s:originTrace" v="n:6836281137582799254" />
                                                  <node concept="3uibUv" id="10z" role="1Ez5kq">
                                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                  </node>
                                                  <node concept="37vLTw" id="10$" role="1EMhIo">
                                                    <ref role="3cqZAo" node="ZZ" resolve="_context" />
                                                  </node>
                                                </node>
                                                <node concept="3w_OXm" id="10y" role="2OqNvi">
                                                  <uo k="s:originTrace" v="n:6836281137582799255" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="10u" role="3K4GZi">
                                                <uo k="s:originTrace" v="n:6836281137582799256" />
                                                <node concept="1DoJHT" id="10_" role="2Oq$k0">
                                                  <property role="1Dpdpm" value="getReferenceNode" />
                                                  <uo k="s:originTrace" v="n:6836281137582799257" />
                                                  <node concept="3uibUv" id="10B" role="1Ez5kq">
                                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                                  </node>
                                                  <node concept="37vLTw" id="10C" role="1EMhIo">
                                                    <ref role="3cqZAo" node="ZZ" resolve="_context" />
                                                  </node>
                                                </node>
                                                <node concept="1mfA1w" id="10A" role="2OqNvi">
                                                  <uo k="s:originTrace" v="n:6836281137582799258" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="chp4Y" id="10q" role="3oSUPX">
                                            <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                            <uo k="s:originTrace" v="n:6836281137582799260" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="10o" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                                          <uo k="s:originTrace" v="n:6836281137582799261" />
                                        </node>
                                      </node>
                                      <node concept="3JvlWi" id="10m" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:6836281137582799262" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="chp4Y" id="10b" role="3oSUPX">
                                  <ref role="cht4Q" to="tp25:gzTqbfa" resolve="SNodeType" />
                                  <uo k="s:originTrace" v="n:6836281137582799263" />
                                </node>
                              </node>
                            </node>
                            <node concept="3zqWPK" id="107" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857973" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="101" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582798918" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="ZG" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
      <node concept="3uibUv" id="Zo" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
      </node>
    </node>
    <node concept="2YIFZL" id="Yc" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:8405512791876074475" />
      <node concept="10P_77" id="10D" role="3clF45">
        <uo k="s:originTrace" v="n:8405512791876074475" />
      </node>
      <node concept="3Tm6S6" id="10E" role="1B3o_S">
        <uo k="s:originTrace" v="n:8405512791876074475" />
      </node>
      <node concept="3clFbS" id="10F" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536563472" />
        <node concept="3clFbF" id="10K" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563473" />
          <node concept="2OqwBi" id="10L" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536563474" />
            <node concept="3x8VRR" id="10M" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536563475" />
            </node>
            <node concept="1UaxmW" id="10N" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536563476" />
              <node concept="1Yb3XT" id="10O" role="1Ub_4A">
                <property role="TrG5h" value="type" />
                <uo k="s:originTrace" v="n:1227128029536563477" />
                <node concept="2DMOqp" id="10Q" role="1YbcFS">
                  <uo k="s:originTrace" v="n:1227128029536563478" />
                  <node concept="2c44tf" id="10R" role="HM535">
                    <uo k="s:originTrace" v="n:1227128029536563479" />
                    <node concept="A3Dl8" id="10S" role="2c44tc">
                      <uo k="s:originTrace" v="n:1227128029536563480" />
                      <node concept="3Tqbb2" id="10T" role="A3Ik2">
                        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
                        <uo k="s:originTrace" v="n:1227128029536563481" />
                        <node concept="3jrphi" id="10U" role="lGtFl">
                          <property role="2qtEX8" value="concept" />
                          <property role="3jrwYG" value="nodeType" />
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                          <uo k="s:originTrace" v="n:1227128029536563482" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="10P" role="1Ub_4B">
                <uo k="s:originTrace" v="n:1227128029536563483" />
                <node concept="2OqwBi" id="10V" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536563484" />
                  <node concept="1PxgMI" id="10X" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <uo k="s:originTrace" v="n:1227128029536563485" />
                    <node concept="37vLTw" id="10Z" role="1m5AlR">
                      <ref role="3cqZAo" node="10H" resolve="parentNode" />
                      <uo k="s:originTrace" v="n:1227128029536563486" />
                    </node>
                    <node concept="chp4Y" id="110" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                      <uo k="s:originTrace" v="n:1227128029536563487" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="10Y" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                    <uo k="s:originTrace" v="n:1227128029536563488" />
                  </node>
                </node>
                <node concept="3JvlWi" id="10W" role="2OqNvi">
                  <uo k="s:originTrace" v="n:1227128029536563489" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="10G" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3uibUv" id="111" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
      <node concept="37vLTG" id="10H" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3uibUv" id="112" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
      <node concept="37vLTG" id="10I" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3uibUv" id="113" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
      <node concept="37vLTG" id="10J" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:8405512791876074475" />
        <node concept="3uibUv" id="114" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:8405512791876074475" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="115">
    <property role="TrG5h" value="SLinkListAccess_Constraints" />
    <uo k="s:originTrace" v="n:1213104855756" />
    <node concept="3Tm1VV" id="116" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104855756" />
    </node>
    <node concept="3uibUv" id="117" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104855756" />
    </node>
    <node concept="3clFbW" id="118" role="jymVt">
      <uo k="s:originTrace" v="n:1213104855756" />
      <node concept="37vLTG" id="11b" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104855756" />
        <node concept="3uibUv" id="11e" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
      </node>
      <node concept="3cqZAl" id="11c" role="3clF45">
        <uo k="s:originTrace" v="n:1213104855756" />
      </node>
      <node concept="3clFbS" id="11d" role="3clF47">
        <uo k="s:originTrace" v="n:1213104855756" />
        <node concept="XkiVB" id="11f" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104855756" />
          <node concept="1BaE9c" id="11h" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SLinkListAccess$oO" />
            <uo k="s:originTrace" v="n:1213104855756" />
            <node concept="2YIFZM" id="11j" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104855756" />
              <node concept="11gdke" id="11k" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104855756" />
              </node>
              <node concept="11gdke" id="11l" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104855756" />
              </node>
              <node concept="11gdke" id="11m" role="37wK5m">
                <property role="11gdj1" value="108f970c119L" />
                <uo k="s:originTrace" v="n:1213104855756" />
              </node>
              <node concept="Xl_RD" id="11n" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SLinkListAccess" />
                <uo k="s:originTrace" v="n:1213104855756" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="11i" role="37wK5m">
            <ref role="3cqZAo" node="11b" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104855756" />
          </node>
        </node>
        <node concept="3clFbF" id="11g" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104855756" />
          <node concept="1rXfSq" id="11o" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104855756" />
            <node concept="2ShNRf" id="11p" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104855756" />
              <node concept="1pGfFk" id="11q" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="11s" resolve="SLinkListAccess_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104855756" />
                <node concept="Xjq3P" id="11r" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="119" role="jymVt">
      <uo k="s:originTrace" v="n:1213104855756" />
    </node>
    <node concept="312cEu" id="11a" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104855756" />
      <node concept="3clFbW" id="11s" role="jymVt">
        <uo k="s:originTrace" v="n:1213104855756" />
        <node concept="37vLTG" id="11v" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104855756" />
          <node concept="3uibUv" id="11y" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104855756" />
          </node>
        </node>
        <node concept="3cqZAl" id="11w" role="3clF45">
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
        <node concept="3clFbS" id="11x" role="3clF47">
          <uo k="s:originTrace" v="n:1213104855756" />
          <node concept="XkiVB" id="11z" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104855756" />
            <node concept="1BaE9c" id="11$" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="link$RcG0" />
              <uo k="s:originTrace" v="n:1213104855756" />
              <node concept="2YIFZM" id="11C" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104855756" />
                <node concept="11gdke" id="11D" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
                <node concept="11gdke" id="11E" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
                <node concept="11gdke" id="11F" role="37wK5m">
                  <property role="11gdj1" value="108f970c119L" />
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
                <node concept="11gdke" id="11G" role="37wK5m">
                  <property role="11gdj1" value="108f974c962L" />
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
                <node concept="Xl_RD" id="11H" role="37wK5m">
                  <property role="Xl_RC" value="link" />
                  <uo k="s:originTrace" v="n:1213104855756" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="11_" role="37wK5m">
              <ref role="3cqZAo" node="11v" resolve="container" />
              <uo k="s:originTrace" v="n:1213104855756" />
            </node>
            <node concept="3clFbT" id="11A" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104855756" />
            </node>
            <node concept="3clFbT" id="11B" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104855756" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="11t" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104855756" />
        <node concept="3Tm1VV" id="11I" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
        <node concept="3uibUv" id="11J" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
        <node concept="2AHcQZ" id="11K" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
        <node concept="3clFbS" id="11L" role="3clF47">
          <uo k="s:originTrace" v="n:1213104855756" />
          <node concept="3cpWs6" id="11N" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104855756" />
            <node concept="2ShNRf" id="11O" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582802222" />
              <node concept="YeOm9" id="11P" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582802222" />
                <node concept="1Y3b0j" id="11Q" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582802222" />
                  <node concept="3Tm1VV" id="11R" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582802222" />
                  </node>
                  <node concept="3clFb_" id="11S" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582802222" />
                    <node concept="3Tm1VV" id="11U" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                    <node concept="3uibUv" id="11V" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                    <node concept="3clFbS" id="11W" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                      <node concept="3cpWs6" id="11Y" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802222" />
                        <node concept="2ShNRf" id="11Z" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582802222" />
                          <node concept="1pGfFk" id="120" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582802222" />
                            <node concept="Xl_RD" id="121" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582802222" />
                            </node>
                            <node concept="Xl_RD" id="122" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582802222" />
                              <uo k="s:originTrace" v="n:6836281137582802222" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="11X" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="11T" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582802222" />
                    <node concept="3Tm1VV" id="123" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                    <node concept="3uibUv" id="124" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                    <node concept="37vLTG" id="125" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                      <node concept="3uibUv" id="128" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582802222" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="126" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                      <node concept="3SKdUt" id="129" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802224" />
                        <node concept="1PaTwC" id="12d" role="1aUNEU">
                          <uo k="s:originTrace" v="n:700871696606814508" />
                          <node concept="3oM_SD" id="12e" role="1PaTwD">
                            <property role="3oM_SC" value="links" />
                            <uo k="s:originTrace" v="n:700871696606814509" />
                          </node>
                          <node concept="3oM_SD" id="12f" role="1PaTwD">
                            <property role="3oM_SC" value="with" />
                            <uo k="s:originTrace" v="n:700871696606814510" />
                          </node>
                          <node concept="3oM_SD" id="12g" role="1PaTwD">
                            <property role="3oM_SC" value="cardinality" />
                            <uo k="s:originTrace" v="n:700871696606814511" />
                          </node>
                          <node concept="3oM_SD" id="12h" role="1PaTwD">
                            <property role="3oM_SC" value="0..n" />
                            <uo k="s:originTrace" v="n:700871696606814512" />
                          </node>
                          <node concept="3oM_SD" id="12i" role="1PaTwD">
                            <property role="3oM_SC" value="or" />
                            <uo k="s:originTrace" v="n:700871696606814513" />
                          </node>
                          <node concept="3oM_SD" id="12j" role="1PaTwD">
                            <property role="3oM_SC" value="1..n" />
                            <uo k="s:originTrace" v="n:700871696606814514" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="12a" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802226" />
                        <node concept="3cpWsn" id="12k" role="3cpWs9">
                          <property role="TrG5h" value="dotOperandConcept" />
                          <uo k="s:originTrace" v="n:6836281137582802227" />
                          <node concept="3Tqbb2" id="12l" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582802228" />
                          </node>
                          <node concept="2OqwBi" id="12m" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582802229" />
                            <node concept="3zqWPK" id="12n" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                              <uo k="s:originTrace" v="n:8085146484218857950" />
                              <node concept="1PxgMI" id="12p" role="37wK5m">
                                <uo k="s:originTrace" v="n:8085146484218857952" />
                                <node concept="1eOMI4" id="12q" role="1m5AlR">
                                  <uo k="s:originTrace" v="n:8085146484218857953" />
                                  <node concept="3K4zz7" id="12s" role="1eOMHV">
                                    <uo k="s:originTrace" v="n:8085146484218857954" />
                                    <node concept="1DoJHT" id="12t" role="3K4E3e">
                                      <property role="1Dpdpm" value="getContextNode" />
                                      <uo k="s:originTrace" v="n:8085146484218857955" />
                                      <node concept="3uibUv" id="12w" role="1Ez5kq">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="12x" role="1EMhIo">
                                        <ref role="3cqZAo" node="125" resolve="_context" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="12u" role="3K4Cdx">
                                      <uo k="s:originTrace" v="n:8085146484218857956" />
                                      <node concept="1DoJHT" id="12y" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getReferenceNode" />
                                        <uo k="s:originTrace" v="n:8085146484218857957" />
                                        <node concept="3uibUv" id="12$" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="12_" role="1EMhIo">
                                          <ref role="3cqZAo" node="125" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="3w_OXm" id="12z" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8085146484218857958" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="12v" role="3K4GZi">
                                      <uo k="s:originTrace" v="n:8085146484218857959" />
                                      <node concept="1DoJHT" id="12A" role="2Oq$k0">
                                        <property role="1Dpdpm" value="getReferenceNode" />
                                        <uo k="s:originTrace" v="n:8085146484218857960" />
                                        <node concept="3uibUv" id="12C" role="1Ez5kq">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                        <node concept="37vLTw" id="12D" role="1EMhIo">
                                          <ref role="3cqZAo" node="125" resolve="_context" />
                                        </node>
                                      </node>
                                      <node concept="1mfA1w" id="12B" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8085146484218857961" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="chp4Y" id="12r" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                  <uo k="s:originTrace" v="n:8085146484218857962" />
                                </node>
                              </node>
                            </node>
                            <node concept="35c_gC" id="12o" role="2Oq$k0">
                              <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                              <uo k="s:originTrace" v="n:6836281137582802234" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="12b" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802235" />
                        <node concept="3cpWsn" id="12E" role="3cpWs9">
                          <property role="TrG5h" value="links" />
                          <uo k="s:originTrace" v="n:6836281137582802236" />
                          <node concept="2I9FWS" id="12F" role="1tU5fm">
                            <ref role="2I9WkF" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                            <uo k="s:originTrace" v="n:6836281137582802237" />
                          </node>
                          <node concept="2OqwBi" id="12G" role="33vP2m">
                            <uo k="s:originTrace" v="n:6836281137582802238" />
                            <node concept="3zqWPK" id="12H" role="2OqNvi">
                              <ref role="37wK5l" to="tpcn:hEwILKK" resolve="getLinkDeclarations" />
                              <uo k="s:originTrace" v="n:8085146484218857963" />
                            </node>
                            <node concept="37vLTw" id="12I" role="2Oq$k0">
                              <ref role="3cqZAo" node="12k" resolve="dotOperandConcept" />
                              <uo k="s:originTrace" v="n:6836281137582802240" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="12c" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582802241" />
                        <node concept="2YIFZM" id="12J" role="3cqZAk">
                          <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                          <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          <uo k="s:originTrace" v="n:6836281137582802620" />
                          <node concept="2OqwBi" id="12K" role="37wK5m">
                            <uo k="s:originTrace" v="n:6836281137582802621" />
                            <node concept="2OqwBi" id="12L" role="2Oq$k0">
                              <uo k="s:originTrace" v="n:6836281137582802622" />
                              <node concept="37vLTw" id="12N" role="2Oq$k0">
                                <ref role="3cqZAo" node="12E" resolve="links" />
                                <uo k="s:originTrace" v="n:6836281137582802623" />
                              </node>
                              <node concept="3zZkjj" id="12O" role="2OqNvi">
                                <uo k="s:originTrace" v="n:6836281137582802624" />
                                <node concept="1bVj0M" id="12P" role="23t8la">
                                  <uo k="s:originTrace" v="n:6836281137582802625" />
                                  <node concept="gl6BB" id="12Q" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <uo k="s:originTrace" v="n:6847626768367732474" />
                                    <node concept="2jxLKc" id="12S" role="1tU5fm">
                                      <uo k="s:originTrace" v="n:6847626768367732475" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="12R" role="1bW5cS">
                                    <uo k="s:originTrace" v="n:6836281137582802628" />
                                    <node concept="3clFbF" id="12T" role="3cqZAp">
                                      <uo k="s:originTrace" v="n:6836281137582802629" />
                                      <node concept="3fqX7Q" id="12U" role="3clFbG">
                                        <uo k="s:originTrace" v="n:6836281137582802630" />
                                        <node concept="2OqwBi" id="12V" role="3fr31v">
                                          <uo k="s:originTrace" v="n:6836281137582802631" />
                                          <node concept="3zqWPK" id="12W" role="2OqNvi">
                                            <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                                            <uo k="s:originTrace" v="n:8085146484218857965" />
                                          </node>
                                          <node concept="37vLTw" id="12X" role="2Oq$k0">
                                            <ref role="3cqZAo" node="12Q" resolve="it" />
                                            <uo k="s:originTrace" v="n:6836281137582802633" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="12M" role="2OqNvi">
                              <uo k="s:originTrace" v="n:6836281137582802634" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="127" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582802222" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="11M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104855756" />
        </node>
      </node>
      <node concept="3uibUv" id="11u" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104855756" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="12Y">
    <property role="TrG5h" value="SPropertyAccess_Constraints" />
    <uo k="s:originTrace" v="n:1213104840262" />
    <node concept="3Tm1VV" id="12Z" role="1B3o_S">
      <uo k="s:originTrace" v="n:1213104840262" />
    </node>
    <node concept="3uibUv" id="130" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1213104840262" />
    </node>
    <node concept="3clFbW" id="131" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840262" />
      <node concept="37vLTG" id="134" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1213104840262" />
        <node concept="3uibUv" id="137" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
      </node>
      <node concept="3cqZAl" id="135" role="3clF45">
        <uo k="s:originTrace" v="n:1213104840262" />
      </node>
      <node concept="3clFbS" id="136" role="3clF47">
        <uo k="s:originTrace" v="n:1213104840262" />
        <node concept="XkiVB" id="138" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1213104840262" />
          <node concept="1BaE9c" id="13a" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SPropertyAccess$d9" />
            <uo k="s:originTrace" v="n:1213104840262" />
            <node concept="2YIFZM" id="13c" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1213104840262" />
              <node concept="11gdke" id="13d" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1213104840262" />
              </node>
              <node concept="11gdke" id="13e" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1213104840262" />
              </node>
              <node concept="11gdke" id="13f" role="37wK5m">
                <property role="11gdj1" value="108f96cca6fL" />
                <uo k="s:originTrace" v="n:1213104840262" />
              </node>
              <node concept="Xl_RD" id="13g" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SPropertyAccess" />
                <uo k="s:originTrace" v="n:1213104840262" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="13b" role="37wK5m">
            <ref role="3cqZAo" node="134" resolve="initContext" />
            <uo k="s:originTrace" v="n:1213104840262" />
          </node>
        </node>
        <node concept="3clFbF" id="139" role="3cqZAp">
          <uo k="s:originTrace" v="n:1213104840262" />
          <node concept="1rXfSq" id="13h" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.record(jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor)" resolve="record" />
            <uo k="s:originTrace" v="n:1213104840262" />
            <node concept="2ShNRf" id="13i" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840262" />
              <node concept="1pGfFk" id="13j" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="13l" resolve="SPropertyAccess_Constraints.RD1" />
                <uo k="s:originTrace" v="n:1213104840262" />
                <node concept="Xjq3P" id="13k" role="37wK5m">
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="132" role="jymVt">
      <uo k="s:originTrace" v="n:1213104840262" />
    </node>
    <node concept="312cEu" id="133" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="RD1" />
      <uo k="s:originTrace" v="n:1213104840262" />
      <node concept="3clFbW" id="13l" role="jymVt">
        <uo k="s:originTrace" v="n:1213104840262" />
        <node concept="37vLTG" id="13o" role="3clF46">
          <property role="TrG5h" value="container" />
          <uo k="s:originTrace" v="n:1213104840262" />
          <node concept="3uibUv" id="13r" role="1tU5fm">
            <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840262" />
          </node>
        </node>
        <node concept="3cqZAl" id="13p" role="3clF45">
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
        <node concept="3clFbS" id="13q" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840262" />
          <node concept="XkiVB" id="13s" role="3cqZAp">
            <ref role="37wK5l" to="79pm:~BaseReferenceConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SReferenceLink,jetbrains.mps.smodel.runtime.ConstraintsDescriptor,boolean,boolean)" resolve="BaseReferenceConstraintsDescriptor" />
            <uo k="s:originTrace" v="n:1213104840262" />
            <node concept="1BaE9c" id="13t" role="37wK5m">
              <property role="1ouuDV" value="LINKS" />
              <property role="1BaxDp" value="property$UiOu" />
              <uo k="s:originTrace" v="n:1213104840262" />
              <node concept="2YIFZM" id="13x" role="1Bazha">
                <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getReferenceLink(long,long,long,long,java.lang.String)" resolve="getReferenceLink" />
                <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                <uo k="s:originTrace" v="n:1213104840262" />
                <node concept="11gdke" id="13y" role="37wK5m">
                  <property role="11gdj1" value="7866978ea0f04cc7L" />
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
                <node concept="11gdke" id="13z" role="37wK5m">
                  <property role="11gdj1" value="81bc4d213d9375e1L" />
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
                <node concept="11gdke" id="13$" role="37wK5m">
                  <property role="11gdj1" value="108f96cca6fL" />
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
                <node concept="11gdke" id="13_" role="37wK5m">
                  <property role="11gdj1" value="108f9727bcdL" />
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
                <node concept="Xl_RD" id="13A" role="37wK5m">
                  <property role="Xl_RC" value="property" />
                  <uo k="s:originTrace" v="n:1213104840262" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="13u" role="37wK5m">
              <ref role="3cqZAo" node="13o" resolve="container" />
              <uo k="s:originTrace" v="n:1213104840262" />
            </node>
            <node concept="3clFbT" id="13v" role="37wK5m">
              <property role="3clFbU" value="true" />
              <uo k="s:originTrace" v="n:1213104840262" />
            </node>
            <node concept="3clFbT" id="13w" role="37wK5m">
              <uo k="s:originTrace" v="n:1213104840262" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="13m" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getScopeProvider" />
        <property role="DiZV1" value="false" />
        <uo k="s:originTrace" v="n:1213104840262" />
        <node concept="3Tm1VV" id="13B" role="1B3o_S">
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
        <node concept="3uibUv" id="13C" role="3clF45">
          <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
        <node concept="2AHcQZ" id="13D" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
        <node concept="3clFbS" id="13E" role="3clF47">
          <uo k="s:originTrace" v="n:1213104840262" />
          <node concept="3cpWs6" id="13G" role="3cqZAp">
            <uo k="s:originTrace" v="n:1213104840262" />
            <node concept="2ShNRf" id="13H" role="3cqZAk">
              <uo k="s:originTrace" v="n:6836281137582797974" />
              <node concept="YeOm9" id="13I" role="2ShVmc">
                <uo k="s:originTrace" v="n:6836281137582797974" />
                <node concept="1Y3b0j" id="13J" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="79pl:~BaseScopeProvider.&lt;init&gt;()" resolve="BaseScopeProvider" />
                  <ref role="1Y3XeK" to="79pl:~BaseScopeProvider" resolve="BaseScopeProvider" />
                  <uo k="s:originTrace" v="n:6836281137582797974" />
                  <node concept="3Tm1VV" id="13K" role="1B3o_S">
                    <uo k="s:originTrace" v="n:6836281137582797974" />
                  </node>
                  <node concept="3clFb_" id="13L" role="jymVt">
                    <property role="TrG5h" value="getSearchScopeValidatorNode" />
                    <uo k="s:originTrace" v="n:6836281137582797974" />
                    <node concept="3Tm1VV" id="13N" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                    <node concept="3uibUv" id="13O" role="3clF45">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                    <node concept="3clFbS" id="13P" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                      <node concept="3cpWs6" id="13R" role="3cqZAp">
                        <uo k="s:originTrace" v="n:6836281137582797974" />
                        <node concept="2ShNRf" id="13S" role="3cqZAk">
                          <uo k="s:originTrace" v="n:6836281137582797974" />
                          <node concept="1pGfFk" id="13T" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                            <uo k="s:originTrace" v="n:6836281137582797974" />
                            <node concept="Xl_RD" id="13U" role="37wK5m">
                              <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                              <uo k="s:originTrace" v="n:6836281137582797974" />
                            </node>
                            <node concept="Xl_RD" id="13V" role="37wK5m">
                              <property role="Xl_RC" value="6836281137582797974" />
                              <uo k="s:originTrace" v="n:6836281137582797974" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="13Q" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="13M" role="jymVt">
                    <property role="TrG5h" value="createScope" />
                    <uo k="s:originTrace" v="n:6836281137582797974" />
                    <node concept="3Tm1VV" id="13W" role="1B3o_S">
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                    <node concept="3uibUv" id="13X" role="3clF45">
                      <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                    <node concept="37vLTG" id="13Y" role="3clF46">
                      <property role="TrG5h" value="_context" />
                      <property role="3TUv4t" value="true" />
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                      <node concept="3uibUv" id="141" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceConstraintsContext" resolve="ReferenceConstraintsContext" />
                        <uo k="s:originTrace" v="n:6836281137582797974" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="13Z" role="3clF47">
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                      <node concept="3cpWs8" id="142" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8095208975670932008" />
                        <node concept="3cpWsn" id="146" role="3cpWs9">
                          <property role="TrG5h" value="dotExpression" />
                          <uo k="s:originTrace" v="n:8095208975670932009" />
                          <node concept="3Tqbb2" id="147" role="1tU5fm">
                            <ref role="ehGHo" to="tpee:hqOqwz4" resolve="DotExpression" />
                            <uo k="s:originTrace" v="n:8095208975670932004" />
                          </node>
                          <node concept="10Nm6u" id="148" role="33vP2m">
                            <uo k="s:originTrace" v="n:8095208975671019021" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="143" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8095208975670939524" />
                        <node concept="3clFbS" id="149" role="3clFbx">
                          <uo k="s:originTrace" v="n:8095208975670939526" />
                          <node concept="3clFbF" id="14c" role="3cqZAp">
                            <uo k="s:originTrace" v="n:8095208975670944120" />
                            <node concept="37vLTI" id="14d" role="3clFbG">
                              <uo k="s:originTrace" v="n:8095208975670945592" />
                              <node concept="1PxgMI" id="14e" role="37vLTx">
                                <uo k="s:originTrace" v="n:8095208975670955498" />
                                <node concept="chp4Y" id="14g" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                  <uo k="s:originTrace" v="n:8095208975670955788" />
                                </node>
                                <node concept="1DoJHT" id="14h" role="1m5AlR">
                                  <property role="1Dpdpm" value="getContextNode" />
                                  <uo k="s:originTrace" v="n:8095208975670946079" />
                                  <node concept="3uibUv" id="14i" role="1Ez5kq">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="37vLTw" id="14j" role="1EMhIo">
                                    <ref role="3cqZAo" node="13Y" resolve="_context" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="14f" role="37vLTJ">
                                <ref role="3cqZAo" node="146" resolve="dotExpression" />
                                <uo k="s:originTrace" v="n:8095208975670944118" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="14a" role="3clFbw">
                          <uo k="s:originTrace" v="n:8095208975670941842" />
                          <node concept="10Nm6u" id="14k" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8095208975670942100" />
                          </node>
                          <node concept="1DoJHT" id="14l" role="3uHU7B">
                            <property role="1Dpdpm" value="getReferenceNode" />
                            <uo k="s:originTrace" v="n:8095208975670939794" />
                            <node concept="3uibUv" id="14m" role="1Ez5kq">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                            <node concept="37vLTw" id="14n" role="1EMhIo">
                              <ref role="3cqZAo" node="13Y" resolve="_context" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="14b" role="9aQIa">
                          <uo k="s:originTrace" v="n:8095208975670948292" />
                          <node concept="3clFbS" id="14o" role="9aQI4">
                            <uo k="s:originTrace" v="n:8095208975670948293" />
                            <node concept="3cpWs8" id="14p" role="3cqZAp">
                              <uo k="s:originTrace" v="n:8095208975670956772" />
                              <node concept="3cpWsn" id="14r" role="3cpWs9">
                                <property role="TrG5h" value="parent" />
                                <uo k="s:originTrace" v="n:8095208975670956773" />
                                <node concept="3Tqbb2" id="14s" role="1tU5fm">
                                  <uo k="s:originTrace" v="n:8095208975670956771" />
                                </node>
                                <node concept="2OqwBi" id="14t" role="33vP2m">
                                  <uo k="s:originTrace" v="n:8095208975670956774" />
                                  <node concept="1DoJHT" id="14u" role="2Oq$k0">
                                    <property role="1Dpdpm" value="getReferenceNode" />
                                    <uo k="s:originTrace" v="n:8095208975670956775" />
                                    <node concept="3uibUv" id="14w" role="1Ez5kq">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                    <node concept="37vLTw" id="14x" role="1EMhIo">
                                      <ref role="3cqZAo" node="13Y" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="1mfA1w" id="14v" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:8095208975670956776" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="14q" role="3cqZAp">
                              <uo k="s:originTrace" v="n:8095208975670958698" />
                              <node concept="3clFbS" id="14y" role="3clFbx">
                                <uo k="s:originTrace" v="n:8095208975670958700" />
                                <node concept="3clFbF" id="14_" role="3cqZAp">
                                  <uo k="s:originTrace" v="n:8095208975670962763" />
                                  <node concept="37vLTI" id="14A" role="3clFbG">
                                    <uo k="s:originTrace" v="n:8095208975670965276" />
                                    <node concept="1PxgMI" id="14B" role="37vLTx">
                                      <uo k="s:originTrace" v="n:8095208975670967939" />
                                      <node concept="chp4Y" id="14D" role="3oSUPX">
                                        <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                        <uo k="s:originTrace" v="n:8095208975670968427" />
                                      </node>
                                      <node concept="37vLTw" id="14E" role="1m5AlR">
                                        <ref role="3cqZAo" node="14r" resolve="parent" />
                                        <uo k="s:originTrace" v="n:8095208975670965762" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="14C" role="37vLTJ">
                                      <ref role="3cqZAo" node="146" resolve="dotExpression" />
                                      <uo k="s:originTrace" v="n:8095208975670962761" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="14z" role="3clFbw">
                                <uo k="s:originTrace" v="n:8095208975670960390" />
                                <node concept="37vLTw" id="14F" role="2Oq$k0">
                                  <ref role="3cqZAo" node="14r" resolve="parent" />
                                  <uo k="s:originTrace" v="n:8095208975670958980" />
                                </node>
                                <node concept="1mIQ4w" id="14G" role="2OqNvi">
                                  <uo k="s:originTrace" v="n:8095208975670961273" />
                                  <node concept="chp4Y" id="14H" role="cj9EA">
                                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                    <uo k="s:originTrace" v="n:8095208975670961555" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3eNFk2" id="14$" role="3eNLev">
                                <uo k="s:originTrace" v="n:8095208975670969667" />
                                <node concept="2OqwBi" id="14I" role="3eO9$A">
                                  <uo k="s:originTrace" v="n:8095208975670974878" />
                                  <node concept="37vLTw" id="14K" role="2Oq$k0">
                                    <ref role="3cqZAo" node="14r" resolve="parent" />
                                    <uo k="s:originTrace" v="n:8095208975670970911" />
                                  </node>
                                  <node concept="1mIQ4w" id="14L" role="2OqNvi">
                                    <uo k="s:originTrace" v="n:8095208975670975987" />
                                    <node concept="chp4Y" id="14M" role="cj9EA">
                                      <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                                      <uo k="s:originTrace" v="n:8095208975670976495" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="14J" role="3eOfB_">
                                  <uo k="s:originTrace" v="n:8095208975670969669" />
                                  <node concept="3clFbF" id="14N" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:8095208975670993885" />
                                    <node concept="37vLTI" id="14P" role="3clFbG">
                                      <uo k="s:originTrace" v="n:8095208975670996286" />
                                      <node concept="2OqwBi" id="14Q" role="37vLTx">
                                        <uo k="s:originTrace" v="n:8095208975670998125" />
                                        <node concept="37vLTw" id="14S" role="2Oq$k0">
                                          <ref role="3cqZAo" node="14r" resolve="parent" />
                                          <uo k="s:originTrace" v="n:8095208975670997019" />
                                        </node>
                                        <node concept="1mfA1w" id="14T" role="2OqNvi">
                                          <uo k="s:originTrace" v="n:8095208975670999541" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="14R" role="37vLTJ">
                                        <ref role="3cqZAo" node="14r" resolve="parent" />
                                        <uo k="s:originTrace" v="n:8095208975670993884" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="14O" role="3cqZAp">
                                    <uo k="s:originTrace" v="n:8095208975671002454" />
                                    <node concept="3clFbS" id="14U" role="3clFbx">
                                      <uo k="s:originTrace" v="n:8095208975671002456" />
                                      <node concept="3clFbF" id="14W" role="3cqZAp">
                                        <uo k="s:originTrace" v="n:8095208975671010403" />
                                        <node concept="37vLTI" id="14X" role="3clFbG">
                                          <uo k="s:originTrace" v="n:8095208975671010404" />
                                          <node concept="1PxgMI" id="14Y" role="37vLTx">
                                            <uo k="s:originTrace" v="n:8095208975671010405" />
                                            <node concept="chp4Y" id="150" role="3oSUPX">
                                              <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                              <uo k="s:originTrace" v="n:8095208975671010406" />
                                            </node>
                                            <node concept="37vLTw" id="151" role="1m5AlR">
                                              <ref role="3cqZAo" node="14r" resolve="parent" />
                                              <uo k="s:originTrace" v="n:8095208975671010407" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="14Z" role="37vLTJ">
                                            <ref role="3cqZAo" node="146" resolve="dotExpression" />
                                            <uo k="s:originTrace" v="n:8095208975671010408" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="14V" role="3clFbw">
                                      <uo k="s:originTrace" v="n:8095208975671005131" />
                                      <node concept="37vLTw" id="152" role="2Oq$k0">
                                        <ref role="3cqZAo" node="14r" resolve="parent" />
                                        <uo k="s:originTrace" v="n:8095208975671003182" />
                                      </node>
                                      <node concept="1mIQ4w" id="153" role="2OqNvi">
                                        <uo k="s:originTrace" v="n:8095208975671008202" />
                                        <node concept="chp4Y" id="154" role="cj9EA">
                                          <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                                          <uo k="s:originTrace" v="n:8095208975671008930" />
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
                      <node concept="3clFbH" id="144" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8095208975670984191" />
                      </node>
                      <node concept="3clFbJ" id="145" role="3cqZAp">
                        <uo k="s:originTrace" v="n:8095208975670985758" />
                        <node concept="3clFbS" id="155" role="3clFbx">
                          <uo k="s:originTrace" v="n:8095208975670985760" />
                          <node concept="3cpWs8" id="158" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582797976" />
                            <node concept="3cpWsn" id="15a" role="3cpWs9">
                              <property role="TrG5h" value="dotOperandConcept" />
                              <uo k="s:originTrace" v="n:6836281137582797977" />
                              <node concept="2OqwBi" id="15b" role="33vP2m">
                                <uo k="s:originTrace" v="n:6836281137582797978" />
                                <node concept="3zqWPK" id="15d" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:hEwJdFJ" resolve="getLeftNodeConcept" />
                                  <uo k="s:originTrace" v="n:8085146484218857930" />
                                  <node concept="37vLTw" id="15f" role="37wK5m">
                                    <ref role="3cqZAo" node="146" resolve="dotExpression" />
                                    <uo k="s:originTrace" v="n:8085146484218857932" />
                                  </node>
                                </node>
                                <node concept="35c_gC" id="15e" role="2Oq$k0">
                                  <ref role="35c_gD" to="tp25:g$eCIIG" resolve="SNodeOperation" />
                                  <uo k="s:originTrace" v="n:6836281137582797983" />
                                </node>
                              </node>
                              <node concept="3Tqbb2" id="15c" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                <uo k="s:originTrace" v="n:6836281137582797984" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="159" role="3cqZAp">
                            <uo k="s:originTrace" v="n:6836281137582797985" />
                            <node concept="2YIFZM" id="15g" role="3cqZAk">
                              <ref role="37wK5l" to="o8zo:3jEbQoczdCs" resolve="forResolvableElements" />
                              <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                              <uo k="s:originTrace" v="n:6836281137582798275" />
                              <node concept="2OqwBi" id="15h" role="37wK5m">
                                <uo k="s:originTrace" v="n:6836281137582798276" />
                                <node concept="37vLTw" id="15i" role="2Oq$k0">
                                  <ref role="3cqZAo" node="15a" resolve="dotOperandConcept" />
                                  <uo k="s:originTrace" v="n:6836281137582798277" />
                                </node>
                                <node concept="3zqWPK" id="15j" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:hEwILLM" resolve="getPropertyDeclarations" />
                                  <uo k="s:originTrace" v="n:8085146484218857933" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="156" role="3clFbw">
                          <uo k="s:originTrace" v="n:8095208975670988719" />
                          <node concept="10Nm6u" id="15k" role="3uHU7w">
                            <uo k="s:originTrace" v="n:8095208975670989431" />
                          </node>
                          <node concept="37vLTw" id="15l" role="3uHU7B">
                            <ref role="3cqZAo" node="146" resolve="dotExpression" />
                            <uo k="s:originTrace" v="n:8095208975670986527" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="157" role="9aQIa">
                          <uo k="s:originTrace" v="n:8095208975671020564" />
                          <node concept="3clFbS" id="15m" role="9aQI4">
                            <uo k="s:originTrace" v="n:8095208975671020565" />
                            <node concept="3cpWs6" id="15n" role="3cqZAp">
                              <uo k="s:originTrace" v="n:8095208975671022073" />
                              <node concept="2ShNRf" id="15o" role="3cqZAk">
                                <uo k="s:originTrace" v="n:8095208975671024330" />
                                <node concept="1pGfFk" id="15p" role="2ShVmc">
                                  <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
                                  <uo k="s:originTrace" v="n:4392855699315285415" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="140" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      <uo k="s:originTrace" v="n:6836281137582797974" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="13F" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          <uo k="s:originTrace" v="n:1213104840262" />
        </node>
      </node>
      <node concept="3uibUv" id="13n" role="1zkMxy">
        <ref role="3uigEE" to="79pm:~BaseReferenceConstraintsDescriptor" resolve="BaseReferenceConstraintsDescriptor" />
        <uo k="s:originTrace" v="n:1213104840262" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="15q">
    <property role="3GE5qa" value="operation" />
    <property role="TrG5h" value="SearchScope_ContainsOperation_Constraints" />
    <uo k="s:originTrace" v="n:1221170817280" />
    <node concept="3Tm1VV" id="15r" role="1B3o_S">
      <uo k="s:originTrace" v="n:1221170817280" />
    </node>
    <node concept="3uibUv" id="15s" role="1zkMxy">
      <ref role="3uigEE" to="79pm:~BaseConstraintsDescriptor" resolve="BaseConstraintsDescriptor" />
      <uo k="s:originTrace" v="n:1221170817280" />
    </node>
    <node concept="3clFbW" id="15t" role="jymVt">
      <uo k="s:originTrace" v="n:1221170817280" />
      <node concept="37vLTG" id="15w" role="3clF46">
        <property role="TrG5h" value="initContext" />
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="3uibUv" id="15z" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~ConstraintsDescriptorInitContext" resolve="ConstraintsDescriptorInitContext" />
          <uo k="s:originTrace" v="n:1221170817280" />
        </node>
      </node>
      <node concept="3cqZAl" id="15x" role="3clF45">
        <uo k="s:originTrace" v="n:1221170817280" />
      </node>
      <node concept="3clFbS" id="15y" role="3clF47">
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="XkiVB" id="15$" role="3cqZAp">
          <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.smodel.runtime.ConstraintsDescriptorInitContext)" resolve="BaseConstraintsDescriptor" />
          <uo k="s:originTrace" v="n:1221170817280" />
          <node concept="1BaE9c" id="15A" role="37wK5m">
            <property role="1ouuDV" value="CONCEPTS" />
            <property role="1BaxDp" value="SearchScope_ContainsOperation$mQ" />
            <uo k="s:originTrace" v="n:1221170817280" />
            <node concept="2YIFZM" id="15C" role="1Bazha">
              <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
              <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getConcept(long,long,long,java.lang.String)" resolve="getConcept" />
              <uo k="s:originTrace" v="n:1221170817280" />
              <node concept="11gdke" id="15D" role="37wK5m">
                <property role="11gdj1" value="7866978ea0f04cc7L" />
                <uo k="s:originTrace" v="n:1221170817280" />
              </node>
              <node concept="11gdke" id="15E" role="37wK5m">
                <property role="11gdj1" value="81bc4d213d9375e1L" />
                <uo k="s:originTrace" v="n:1221170817280" />
              </node>
              <node concept="11gdke" id="15F" role="37wK5m">
                <property role="11gdj1" value="11c536d2503L" />
                <uo k="s:originTrace" v="n:1221170817280" />
              </node>
              <node concept="Xl_RD" id="15G" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.smodel.structure.SearchScope_ContainsOperation" />
                <uo k="s:originTrace" v="n:1221170817280" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="15B" role="37wK5m">
            <ref role="3cqZAo" node="15w" resolve="initContext" />
            <uo k="s:originTrace" v="n:1221170817280" />
          </node>
        </node>
        <node concept="3clFbF" id="15_" role="3cqZAp">
          <uo k="s:originTrace" v="n:1221170817280" />
          <node concept="1rXfSq" id="15H" role="3clFbG">
            <ref role="37wK5l" to="79pm:~BaseConstraintsDescriptor.setCanBeChildConstraint(jetbrains.mps.smodel.runtime.ConstraintFunction)" resolve="setCanBeChildConstraint" />
            <uo k="s:originTrace" v="n:1221170817280" />
            <node concept="2ShNRf" id="15I" role="37wK5m">
              <uo k="s:originTrace" v="n:1221170817280" />
              <node concept="YeOm9" id="15J" role="2ShVmc">
                <uo k="s:originTrace" v="n:1221170817280" />
                <node concept="1Y3b0j" id="15K" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ze1i:~ConstraintFunction" resolve="ConstraintFunction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <uo k="s:originTrace" v="n:1221170817280" />
                  <node concept="3Tm1VV" id="15L" role="1B3o_S">
                    <uo k="s:originTrace" v="n:1221170817280" />
                  </node>
                  <node concept="3clFb_" id="15M" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="invoke" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <uo k="s:originTrace" v="n:1221170817280" />
                    <node concept="3Tm1VV" id="15P" role="1B3o_S">
                      <uo k="s:originTrace" v="n:1221170817280" />
                    </node>
                    <node concept="2AHcQZ" id="15Q" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      <uo k="s:originTrace" v="n:1221170817280" />
                    </node>
                    <node concept="3uibUv" id="15R" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      <uo k="s:originTrace" v="n:1221170817280" />
                    </node>
                    <node concept="37vLTG" id="15S" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <uo k="s:originTrace" v="n:1221170817280" />
                      <node concept="3uibUv" id="15V" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                      <node concept="2AHcQZ" id="15W" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="15T" role="3clF46">
                      <property role="TrG5h" value="checkingNodeContext" />
                      <uo k="s:originTrace" v="n:1221170817280" />
                      <node concept="3uibUv" id="15X" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                      <node concept="2AHcQZ" id="15Y" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="15U" role="3clF47">
                      <uo k="s:originTrace" v="n:1221170817280" />
                      <node concept="3cpWs8" id="15Z" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1221170817280" />
                        <node concept="3cpWsn" id="164" role="3cpWs9">
                          <property role="TrG5h" value="result" />
                          <uo k="s:originTrace" v="n:1221170817280" />
                          <node concept="10P_77" id="165" role="1tU5fm">
                            <uo k="s:originTrace" v="n:1221170817280" />
                          </node>
                          <node concept="1rXfSq" id="166" role="33vP2m">
                            <ref role="37wK5l" node="15v" resolve="staticCanBeAChild" />
                            <uo k="s:originTrace" v="n:1221170817280" />
                            <node concept="2OqwBi" id="167" role="37wK5m">
                              <uo k="s:originTrace" v="n:1221170817280" />
                              <node concept="37vLTw" id="16b" role="2Oq$k0">
                                <ref role="3cqZAo" node="15S" resolve="context" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                              <node concept="liA8E" id="16c" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getNode()" resolve="getNode" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="168" role="37wK5m">
                              <uo k="s:originTrace" v="n:1221170817280" />
                              <node concept="37vLTw" id="16d" role="2Oq$k0">
                                <ref role="3cqZAo" node="15S" resolve="context" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                              <node concept="liA8E" id="16e" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getParentNode()" resolve="getParentNode" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="169" role="37wK5m">
                              <uo k="s:originTrace" v="n:1221170817280" />
                              <node concept="37vLTw" id="16f" role="2Oq$k0">
                                <ref role="3cqZAo" node="15S" resolve="context" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                              <node concept="liA8E" id="16g" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getConcept()" resolve="getConcept" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="16a" role="37wK5m">
                              <uo k="s:originTrace" v="n:1221170817280" />
                              <node concept="37vLTw" id="16h" role="2Oq$k0">
                                <ref role="3cqZAo" node="15S" resolve="context" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                              <node concept="liA8E" id="16i" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~ConstraintContext_CanBeChild.getLink()" resolve="getLink" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="160" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                      <node concept="3clFbJ" id="161" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1221170817280" />
                        <node concept="3clFbS" id="16j" role="3clFbx">
                          <uo k="s:originTrace" v="n:1221170817280" />
                          <node concept="3clFbF" id="16l" role="3cqZAp">
                            <uo k="s:originTrace" v="n:1221170817280" />
                            <node concept="2OqwBi" id="16m" role="3clFbG">
                              <uo k="s:originTrace" v="n:1221170817280" />
                              <node concept="37vLTw" id="16n" role="2Oq$k0">
                                <ref role="3cqZAo" node="15T" resolve="checkingNodeContext" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                              </node>
                              <node concept="liA8E" id="16o" role="2OqNvi">
                                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setBreakingNode" />
                                <uo k="s:originTrace" v="n:1221170817280" />
                                <node concept="1dyn4i" id="16p" role="37wK5m">
                                  <property role="1dyqJU" value="canBeChildBreakingPoint" />
                                  <uo k="s:originTrace" v="n:1221170817280" />
                                  <node concept="2ShNRf" id="16q" role="1dyrYi">
                                    <uo k="s:originTrace" v="n:1221170817280" />
                                    <node concept="1pGfFk" id="16r" role="2ShVmc">
                                      <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                                      <uo k="s:originTrace" v="n:1221170817280" />
                                      <node concept="Xl_RD" id="16s" role="37wK5m">
                                        <property role="Xl_RC" value="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" />
                                        <uo k="s:originTrace" v="n:1221170817280" />
                                      </node>
                                      <node concept="Xl_RD" id="16t" role="37wK5m">
                                        <property role="Xl_RC" value="1227128029536563520" />
                                        <uo k="s:originTrace" v="n:1221170817280" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Wc70l" id="16k" role="3clFbw">
                          <uo k="s:originTrace" v="n:1221170817280" />
                          <node concept="3y3z36" id="16u" role="3uHU7w">
                            <uo k="s:originTrace" v="n:1221170817280" />
                            <node concept="10Nm6u" id="16w" role="3uHU7w">
                              <uo k="s:originTrace" v="n:1221170817280" />
                            </node>
                            <node concept="37vLTw" id="16x" role="3uHU7B">
                              <ref role="3cqZAo" node="15T" resolve="checkingNodeContext" />
                              <uo k="s:originTrace" v="n:1221170817280" />
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="16v" role="3uHU7B">
                            <uo k="s:originTrace" v="n:1221170817280" />
                            <node concept="37vLTw" id="16y" role="3fr31v">
                              <ref role="3cqZAo" node="164" resolve="result" />
                              <uo k="s:originTrace" v="n:1221170817280" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="162" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1221170817280" />
                      </node>
                      <node concept="3clFbF" id="163" role="3cqZAp">
                        <uo k="s:originTrace" v="n:1221170817280" />
                        <node concept="37vLTw" id="16z" role="3clFbG">
                          <ref role="3cqZAo" node="164" resolve="result" />
                          <uo k="s:originTrace" v="n:1221170817280" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="15N" role="2Ghqu4">
                    <ref role="3uigEE" to="ze1i:~ConstraintContext_CanBeChild" resolve="ConstraintContext_CanBeChild" />
                    <uo k="s:originTrace" v="n:1221170817280" />
                  </node>
                  <node concept="3uibUv" id="15O" role="2Ghqu4">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    <uo k="s:originTrace" v="n:1221170817280" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="15u" role="jymVt">
      <uo k="s:originTrace" v="n:1221170817280" />
    </node>
    <node concept="2YIFZL" id="15v" role="jymVt">
      <property role="TrG5h" value="staticCanBeAChild" />
      <uo k="s:originTrace" v="n:1221170817280" />
      <node concept="10P_77" id="16$" role="3clF45">
        <uo k="s:originTrace" v="n:1221170817280" />
      </node>
      <node concept="3Tm6S6" id="16_" role="1B3o_S">
        <uo k="s:originTrace" v="n:1221170817280" />
      </node>
      <node concept="3clFbS" id="16A" role="3clF47">
        <uo k="s:originTrace" v="n:1227128029536563521" />
        <node concept="3clFbJ" id="16F" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563522" />
          <node concept="3clFbS" id="16H" role="3clFbx">
            <uo k="s:originTrace" v="n:1227128029536563523" />
            <node concept="3cpWs6" id="16J" role="3cqZAp">
              <uo k="s:originTrace" v="n:1227128029536563524" />
              <node concept="3clFbT" id="16K" role="3cqZAk">
                <property role="3clFbU" value="false" />
                <uo k="s:originTrace" v="n:1227128029536563525" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="16I" role="3clFbw">
            <uo k="s:originTrace" v="n:1227128029536563526" />
            <node concept="2OqwBi" id="16L" role="3fr31v">
              <uo k="s:originTrace" v="n:1227128029536563527" />
              <node concept="37vLTw" id="16M" role="2Oq$k0">
                <ref role="3cqZAo" node="16C" resolve="parentNode" />
                <uo k="s:originTrace" v="n:1227128029536563528" />
              </node>
              <node concept="1mIQ4w" id="16N" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536563529" />
                <node concept="chp4Y" id="16O" role="cj9EA">
                  <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                  <uo k="s:originTrace" v="n:1227128029536563530" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16G" role="3cqZAp">
          <uo k="s:originTrace" v="n:1227128029536563531" />
          <node concept="2OqwBi" id="16P" role="3clFbG">
            <uo k="s:originTrace" v="n:1227128029536563532" />
            <node concept="2OqwBi" id="16Q" role="2Oq$k0">
              <uo k="s:originTrace" v="n:1227128029536563533" />
              <node concept="2OqwBi" id="16S" role="2Oq$k0">
                <uo k="s:originTrace" v="n:1227128029536563534" />
                <node concept="1PxgMI" id="16U" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:1227128029536563535" />
                  <node concept="37vLTw" id="16W" role="1m5AlR">
                    <ref role="3cqZAo" node="16C" resolve="parentNode" />
                    <uo k="s:originTrace" v="n:1227128029536563536" />
                  </node>
                  <node concept="chp4Y" id="16X" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:hqOqwz4" resolve="DotExpression" />
                    <uo k="s:originTrace" v="n:1227128029536563537" />
                  </node>
                </node>
                <node concept="3TrEf2" id="16V" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOq$gm" resolve="operand" />
                  <uo k="s:originTrace" v="n:1227128029536563538" />
                </node>
              </node>
              <node concept="3JvlWi" id="16T" role="2OqNvi">
                <uo k="s:originTrace" v="n:1227128029536563539" />
              </node>
            </node>
            <node concept="1mIQ4w" id="16R" role="2OqNvi">
              <uo k="s:originTrace" v="n:1227128029536563540" />
              <node concept="chp4Y" id="16Y" role="cj9EA">
                <ref role="cht4Q" to="tp25:hLiUZJy" resolve="SearchScopeType" />
                <uo k="s:originTrace" v="n:1227128029536563541" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="16B" role="3clF46">
        <property role="TrG5h" value="node" />
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="3uibUv" id="16Z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1221170817280" />
        </node>
      </node>
      <node concept="37vLTG" id="16C" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="3uibUv" id="170" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          <uo k="s:originTrace" v="n:1221170817280" />
        </node>
      </node>
      <node concept="37vLTG" id="16D" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="3uibUv" id="171" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
          <uo k="s:originTrace" v="n:1221170817280" />
        </node>
      </node>
      <node concept="37vLTG" id="16E" role="3clF46">
        <property role="TrG5h" value="link" />
        <uo k="s:originTrace" v="n:1221170817280" />
        <node concept="3uibUv" id="172" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
          <uo k="s:originTrace" v="n:1221170817280" />
        </node>
      </node>
    </node>
  </node>
</model>

