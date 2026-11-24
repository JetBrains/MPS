<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590346(jetbrains.mps.lang.pattern.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tp2b" ref="r:00000000-0000-4000-0000-011c8959033f(jetbrains.mps.lang.pattern.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tp27" ref="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="tp3k" ref="r:00000000-0000-4000-0000-011c8959034c(jetbrains.mps.lang.quotation.generator.baseLanguage.template.main@generator)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="ii9q" ref="r:1dca5eee-6e62-48f8-9e94-dbbe31be2456(jetbrains.mps.lang.quotation.behavior)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="lg" index="5jKBG">
        <child id="1510949579266801461" name="sourceNodeQuery" index="5jGum" />
      </concept>
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="lg" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="7473026166162327259" name="dropAttrubuteRule" index="CYSdJ" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="5005282049925926521" name="jetbrains.mps.lang.generator.structure.TemplateArgumentParameterExpression" flags="nn" index="v3LJS">
        <reference id="5005282049925926522" name="parameter" index="v3LJV" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
        <child id="1722980698497626405" name="actualArgument" index="v9R3O" />
      </concept>
      <concept id="2880994019885263148" name="jetbrains.mps.lang.generator.structure.LoopMacroNamespaceAccessor" flags="ng" index="$GB7w">
        <property id="1501378878163388321" name="variable" index="26SvY3" />
      </concept>
      <concept id="7473026166162297915" name="jetbrains.mps.lang.generator.structure.DropAttributeRule" flags="lg" index="CY16f">
        <property id="1515402509390413598" name="applyToSubConcepts" index="2MXbmj" />
        <reference id="7473026166162297918" name="applicableConcept" index="CY16a" />
        <child id="7473026166162322215" name="condition" index="CY7qj" />
      </concept>
      <concept id="7473026166162297926" name="jetbrains.mps.lang.generator.structure.DropAttributeRule_Condition" flags="ig" index="CY17M" />
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="lg" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="7898029224680692134" name="description" index="2n97ot" />
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="1048903277989260815" name="jetbrains.mps.lang.generator.structure.TemplateArgumentVarRefExpression2" flags="ng" index="1mL9RQ">
        <reference id="1048903277989260816" name="vardecl" index="1mL9RD" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="lg" index="1pdMLZ">
        <child id="1168281849769" name="sourceNodeQuery" index="31$UT" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099209" name="type" index="1ps_xK" />
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ngI" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167756221419" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_templatePropertyValue" flags="nn" index="3zGtF$" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="ig" index="3NFfHV" />
      <concept id="4035562641222622437" name="jetbrains.mps.lang.generator.structure.TemplateArgumentQuery" flags="in" index="1UU6SM" />
      <concept id="4035562641222585520" name="jetbrains.mps.lang.generator.structure.TemplateArgumentQueryExpression" flags="nn" index="1UUvTB">
        <child id="4035562641222618754" name="query" index="1UU7Ll" />
      </concept>
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="lg" index="1W57fq">
        <child id="1194989344771" name="alternativeConsequence" index="UU_$l" />
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="lg" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1187483539462121947" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateIndexedName" flags="nn" index="32eq0B">
        <property id="1187483539462194806" name="skipFirstIndex" index="32f$Ya" />
        <child id="1187483539462121948" name="baseName" index="32eq0w" />
        <child id="1187483539462121949" name="contextNode" index="32eq0x" />
      </concept>
      <concept id="5190093307972723402" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ParameterRef" flags="nn" index="3cR$yn">
        <reference id="5190093307972736266" name="parameter" index="3cRzXn" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1048903277984174662" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef2" flags="nn" index="1psM6Z">
        <reference id="1048903277984174663" name="vardecl" index="1psM6Y" />
      </concept>
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
        <child id="7256306938026143676" name="child" index="2aWVGa" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
      <concept id="1178870617262" name="jetbrains.mps.lang.typesystem.structure.CoerceExpression" flags="nn" index="1UaxmW">
        <child id="1178870894644" name="pattern" index="1Ub_4A" />
        <child id="1178870894645" name="nodeToCoerce" index="1Ub_4B" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="937236280924494202" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticInnerClassConcept" flags="ig" index="267m8k" />
      <concept id="7738261905749564104" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticInnerClassExpression" flags="nn" index="Gg0VW">
        <child id="7738261905749564105" name="innerClass" index="Gg0VX" />
        <child id="7738261905749582030" name="inner" index="GhZjU" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1803469493727536395" name="jetbrains.mps.lang.smodel.structure.OperationParm_StopConceptList" flags="ng" index="hTh3S">
        <child id="1803469493727536396" name="concept" index="hTh3Z" />
      </concept>
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="7504436213544206332" name="jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" flags="nn" index="2NL2c5" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1205861725686" name="jetbrains.mps.lang.smodel.structure.Node_IsAttributeOperation" flags="nn" index="32XrjI" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="8564914671171209694" name="jetbrains.mps.lang.smodel.structure.PropertyDeserializeExpression" flags="ng" index="3crr_t">
        <reference id="6373819377346114474" name="datatype" index="1LgM_u" />
        <child id="8564914671171209696" name="parameter" index="3crr_z" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
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
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="bUwia" id="h68c7Q9">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <node concept="CY16f" id="60IK8dTirhg" role="CYSdJ">
      <property role="2MXbmj" value="true" />
      <ref role="CY16a" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
      <node concept="CY17M" id="60IK8dTirtt" role="CY7qj">
        <node concept="3clFbS" id="60IK8dTirtu" role="2VODD2">
          <node concept="3clFbF" id="60IK8dTiru5" role="3cqZAp">
            <node concept="3y3z36" id="60IK8dTirTF" role="3clFbG">
              <node concept="10Nm6u" id="60IK8dTirVi" role="3uHU7w" />
              <node concept="2OqwBi" id="60IK8dTirvO" role="3uHU7B">
                <node concept="30H73N" id="60IK8dTiru4" role="2Oq$k0" />
                <node concept="2Xjw5R" id="60IK8dTiry9" role="2OqNvi">
                  <node concept="1xMEDy" id="60IK8dTiryb" role="1xVPHs">
                    <node concept="chp4Y" id="60IK8dTirXv" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="CY16f" id="60IK8dTirmi" role="CYSdJ">
      <property role="2MXbmj" value="true" />
      <ref role="CY16a" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
      <node concept="CY17M" id="60IK8dTis1V" role="CY7qj">
        <node concept="3clFbS" id="60IK8dTis1W" role="2VODD2">
          <node concept="3clFbF" id="60IK8dTis2y" role="3cqZAp">
            <node concept="3y3z36" id="60IK8dTis2z" role="3clFbG">
              <node concept="10Nm6u" id="60IK8dTis2$" role="3uHU7w" />
              <node concept="2OqwBi" id="60IK8dTis2_" role="3uHU7B">
                <node concept="30H73N" id="60IK8dTis2A" role="2Oq$k0" />
                <node concept="2Xjw5R" id="60IK8dTis2B" role="2OqNvi">
                  <node concept="1xMEDy" id="60IK8dTis2C" role="1xVPHs">
                    <node concept="chp4Y" id="60IK8dTis2D" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="CY16f" id="1M8Dg9YXenF" role="CYSdJ">
      <property role="2MXbmj" value="true" />
      <ref role="CY16a" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
      <node concept="CY17M" id="1M8Dg9YXenG" role="CY7qj">
        <node concept="3clFbS" id="1M8Dg9YXenH" role="2VODD2">
          <node concept="3clFbF" id="1M8Dg9YXenI" role="3cqZAp">
            <node concept="3y3z36" id="1M8Dg9YXenJ" role="3clFbG">
              <node concept="10Nm6u" id="1M8Dg9YXenK" role="3uHU7w" />
              <node concept="2OqwBi" id="1M8Dg9YXenL" role="3uHU7B">
                <node concept="30H73N" id="1M8Dg9YXenM" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1M8Dg9YXenN" role="2OqNvi">
                  <node concept="1xMEDy" id="1M8Dg9YXenO" role="1xVPHs">
                    <node concept="chp4Y" id="1M8Dg9YXenP" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="CY16f" id="1M8Dg9YXfbf" role="CYSdJ">
      <property role="2MXbmj" value="true" />
      <ref role="CY16a" to="tp3t:gyDMOun" resolve="WildcardPattern" />
      <node concept="CY17M" id="1M8Dg9YXfbg" role="CY7qj">
        <node concept="3clFbS" id="1M8Dg9YXfbh" role="2VODD2">
          <node concept="3clFbF" id="1M8Dg9YXfbi" role="3cqZAp">
            <node concept="3y3z36" id="1M8Dg9YXfbj" role="3clFbG">
              <node concept="10Nm6u" id="1M8Dg9YXfbk" role="3uHU7w" />
              <node concept="2OqwBi" id="1M8Dg9YXfbl" role="3uHU7B">
                <node concept="30H73N" id="1M8Dg9YXfbm" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1M8Dg9YXfbn" role="2OqNvi">
                  <node concept="1xMEDy" id="1M8Dg9YXfbo" role="1xVPHs">
                    <node concept="chp4Y" id="1M8Dg9YXfbp" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="CY16f" id="60IK8dTiBNh" role="CYSdJ">
      <property role="2MXbmj" value="true" />
      <ref role="CY16a" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
      <node concept="CY17M" id="60IK8dTiBTw" role="CY7qj">
        <node concept="3clFbS" id="60IK8dTiBTx" role="2VODD2">
          <node concept="3clFbF" id="60IK8dTiBTy" role="3cqZAp">
            <node concept="3y3z36" id="60IK8dTiBTz" role="3clFbG">
              <node concept="10Nm6u" id="60IK8dTiBT$" role="3uHU7w" />
              <node concept="2OqwBi" id="60IK8dTiBT_" role="3uHU7B">
                <node concept="30H73N" id="60IK8dTiBTA" role="2Oq$k0" />
                <node concept="2Xjw5R" id="60IK8dTiBTB" role="2OqNvi">
                  <node concept="1xMEDy" id="60IK8dTiBTC" role="1xVPHs">
                    <node concept="chp4Y" id="60IK8dTiBTD" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="7Qbh0xggLTM" role="3lj3bC">
      <ref role="30HIoZ" to="tp3t:gyDMOuh" resolve="PatternExpression" />
      <ref role="3lhOvi" node="7Qbh0xggN0h" resolve="map_PatternExpression" />
      <ref role="2sgKRv" node="hG00Ilc" resolve="patternClass" />
      <node concept="30G5F_" id="7Qbh0xggLTO" role="30HLyM">
        <node concept="3clFbS" id="7Qbh0xggLTP" role="2VODD2">
          <node concept="3SKdUt" id="1Gd1YUjEFF4" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnXgE" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnXgF" role="1PaTwD">
                <property role="3oM_SC" value="hence" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgG" role="1PaTwD">
                <property role="3oM_SC" value="inheritors" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgH" role="1PaTwD">
                <property role="3oM_SC" value="==" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgI" role="1PaTwD">
                <property role="3oM_SC" value="false" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgJ" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgK" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgL" role="1PaTwD">
                <property role="3oM_SC" value="handle" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgM" role="1PaTwD">
                <property role="3oM_SC" value="OrPatternClause" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgN" role="1PaTwD">
                <property role="3oM_SC" value="which" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgO" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1Gd1YUjEJGG" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnXgP" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnXgQ" role="1PaTwD">
                <property role="3oM_SC" value="handled" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgR" role="1PaTwD">
                <property role="3oM_SC" value="inside" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgS" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgT" role="1PaTwD">
                <property role="3oM_SC" value="template" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgU" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgV" role="1PaTwD">
                <property role="3oM_SC" value="top-most" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgW" role="1PaTwD">
                <property role="3oM_SC" value="PatternExpression" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1Gd1YUjEJO6" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnXgX" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnXgY" role="1PaTwD">
                <property role="3oM_SC" value="If" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXgZ" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh0" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh1" role="1PaTwD">
                <property role="3oM_SC" value="reasonable" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh2" role="1PaTwD">
                <property role="3oM_SC" value="subconcepts," />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh3" role="1PaTwD">
                <property role="3oM_SC" value="might" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh4" role="1PaTwD">
                <property role="3oM_SC" value="need" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh5" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh6" role="1PaTwD">
                <property role="3oM_SC" value="check" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1Gd1YUjEJST" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnXh7" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnXh8" role="1PaTwD">
                <property role="3oM_SC" value="!node.isInstanceOf(OrPatternClause)" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXh9" role="1PaTwD">
                <property role="3oM_SC" value="instead" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="1Gd1YUjEJXi" role="3cqZAp" />
          <node concept="3clFbF" id="7Qbh0xggMBS" role="3cqZAp">
            <node concept="3clFbT" id="1rn1PxN0iXB" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7Qbh0xggQaX" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:gyDMOuh" resolve="PatternExpression" />
      <node concept="gft3U" id="60IK8dTiaPg" role="1lVwrX">
        <node concept="2ShNRf" id="60IK8dTiaQa" role="gfFT$">
          <node concept="1pGfFk" id="60IK8dTihlk" role="2ShVmc">
            <ref role="37wK5l" node="7Qbh0xgh5b3" resolve="map_PatternExpression" />
            <node concept="10Nm6u" id="60IK8dTihlt" role="37wK5m">
              <node concept="29HgVG" id="60IK8dTihlF" role="lGtFl">
                <node concept="3NFfHV" id="60IK8dTihlG" role="3NFExx">
                  <node concept="3clFbS" id="60IK8dTihlH" role="2VODD2">
                    <node concept="3clFbF" id="60IK8dTihlN" role="3cqZAp">
                      <node concept="2OqwBi" id="60IK8dTihlI" role="3clFbG">
                        <node concept="3TrEf2" id="60IK8dTihlL" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:7Qbh0xggLjd" resolve="pattern" />
                        </node>
                        <node concept="30H73N" id="60IK8dTihlM" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="1Gd1YUjGm5A" role="37wK5m">
              <node concept="2b32R4" id="1Gd1YUjGm6J" role="lGtFl">
                <node concept="3JmXsc" id="1Gd1YUjGm6M" role="2P8S$">
                  <node concept="3clFbS" id="1Gd1YUjGm6N" role="2VODD2">
                    <node concept="3clFbF" id="1Gd1YUjGm6T" role="3cqZAp">
                      <node concept="2OqwBi" id="1Gd1YUjGoaI" role="3clFbG">
                        <node concept="2OqwBi" id="1Gd1YUjGmHa" role="2Oq$k0">
                          <node concept="2OqwBi" id="1Gd1YUjGmHb" role="2Oq$k0">
                            <node concept="30H73N" id="1Gd1YUjGmHc" role="2Oq$k0" />
                            <node concept="2Rf3mk" id="1Gd1YUjGmHd" role="2OqNvi">
                              <node concept="1xMEDy" id="1Gd1YUjGmHe" role="1xVPHs">
                                <node concept="chp4Y" id="1Gd1YUjGmHf" role="ri$Ld">
                                  <ref role="cht4Q" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="13MTOL" id="1Gd1YUjGmHg" role="2OqNvi">
                            <ref role="13MTZf" to="tp3t:2vRmfyWqGFe" resolve="clause" />
                          </node>
                        </node>
                        <node concept="13MTOL" id="1Gd1YUjGoht" role="2OqNvi">
                          <ref role="13MTZf" to="tp3t:7Qbh0xggLjd" resolve="pattern" />
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
    <node concept="3aamgX" id="1WOIZPJv2p$" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:2HXXnvZIQE5" resolve="PatternVariableReference" />
      <node concept="j$656" id="1WOIZPJv3Zl" role="1lVwrX">
        <ref role="v9R2y" node="1WOIZPJv2D3" resolve="PatternVariabeleReferenceTemplate" />
      </node>
    </node>
    <node concept="3aamgX" id="2JppxAbPC2t" role="3acgRq">
      <property role="36QftV" value="true" />
      <property role="2n97ot" value="When a quotation is copied, we don't want OrPatternVariableReference to stay there" />
      <ref role="30HIoZ" to="tp3t:3GJnBG73j5W" resolve="OrPatternVariableReference" />
      <node concept="b5Tf3" id="2JppxAbPC3E" role="1lVwrX" />
    </node>
    <node concept="3aamgX" id="2JppxAbPbZB" role="3acgRq">
      <property role="2n97ot" value="OrPattern requires special handling as though they are attributes, sometime they are used directly as nodes. Ancestor check is here not to break old templates (just in case, until we drop them); OrPattern that are atrtibutes are handled below." />
      <ref role="30HIoZ" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
      <node concept="b5Tf3" id="2JppxAbPfvy" role="1lVwrX" />
      <node concept="30G5F_" id="2JppxAbPc0z" role="30HLyM">
        <node concept="3clFbS" id="2JppxAbPc0$" role="2VODD2">
          <node concept="3clFbF" id="2JppxAbPcI7" role="3cqZAp">
            <node concept="1Wc70l" id="2JppxAbPfn4" role="3clFbG">
              <node concept="3fqX7Q" id="2JppxAbPdot" role="3uHU7B">
                <node concept="2OqwBi" id="2JppxAbPdov" role="3fr31v">
                  <node concept="30H73N" id="2JppxAbPdow" role="2Oq$k0" />
                  <node concept="32XrjI" id="2JppxAbPdox" role="2OqNvi" />
                </node>
              </node>
              <node concept="3y3z36" id="2JppxAbPfnn" role="3uHU7w">
                <node concept="10Nm6u" id="2JppxAbPfno" role="3uHU7w" />
                <node concept="2OqwBi" id="2JppxAbPfnp" role="3uHU7B">
                  <node concept="30H73N" id="2JppxAbPfnq" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="2JppxAbPfnr" role="2OqNvi">
                    <node concept="1xMEDy" id="2JppxAbPfns" role="1xVPHs">
                      <node concept="chp4Y" id="2JppxAbPfnt" role="ri$Ld">
                        <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
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
    <node concept="2rT7sh" id="hG00Ilc" role="2rTMjI">
      <property role="TrG5h" value="patternClass" />
      <ref role="2rTdP9" to="tp3t:gyDMOuh" resolve="PatternExpression" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="2rT7sh" id="hG0dmEm" role="2rTMjI">
      <property role="TrG5h" value="matchMethodParameter" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
    </node>
    <node concept="2rT7sh" id="hG0dmEn" role="2rTMjI">
      <property role="TrG5h" value="patternNodeToStatementList" />
    </node>
    <node concept="2rT7sh" id="hG0dBQR" role="2rTMjI">
      <property role="TrG5h" value="antiquotationParameters" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
    </node>
    <node concept="2rT7sh" id="hG0dBQS" role="2rTMjI">
      <property role="TrG5h" value="childVar" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="hG0dDAa" role="2rTMjI">
      <property role="TrG5h" value="patternConstructor" />
    </node>
    <node concept="2rT7sh" id="hG0dDAb" role="2rTMjI">
      <property role="TrG5h" value="nodeToMatch" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="hG0dDAs" role="2rTMjI">
      <property role="TrG5h" value="antiquotations" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="hG0dErc" role="2rTMjI">
      <property role="TrG5h" value="patternVarField" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="4p0PUucAGPk" role="2rTMjI">
      <property role="TrG5h" value="childRoleVar" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="4h6rxfX4ks9" role="2rTMjI">
      <property role="TrG5h" value="actionParameter" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
      <ref role="2rTdP9" to="tp3t:gyDMOuh" resolve="PatternExpression" />
    </node>
    <node concept="2rT7sh" id="4dzCQkRH0fQ" role="2rTMjI">
      <property role="TrG5h" value="orPattern" />
      <ref role="2rTdP9" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="1Gd1YUjETip" role="2rTMjI">
      <property role="TrG5h" value="disjunctToMatcher" />
      <ref role="2rTdP9" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="1Gd1YUjFi0$" role="2rTMjI">
      <property role="TrG5h" value="disjunctToPatternNode" />
      <ref role="2rTdP9" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
    </node>
    <node concept="3aamgX" id="3fHwAfrxgyu" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:53SOuJl2VUK" resolve="PatternBuilderClassifierMember" />
      <node concept="1Koe21" id="3fHwAfrxhhq" role="1lVwrX">
        <node concept="312cEu" id="3fHwAfrxhhw" role="1Koe22">
          <property role="TrG5h" value="EnclosingClass" />
          <node concept="2tJIrI" id="3fHwAfryx_v" role="jymVt">
            <node concept="raruj" id="3fHwAfryxQV" role="lGtFl" />
            <node concept="5jKBG" id="3fHwAfryxR8" role="lGtFl">
              <ref role="v9R2y" node="2g69lt1_GCm" resolve="reduce_PatternBuilder_Class" />
            </node>
          </node>
          <node concept="3Tm1VV" id="3fHwAfrxhhx" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1tcvH6aZQ5t" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
      <node concept="j$656" id="1tcvH6aZQ5u" role="1lVwrX">
        <ref role="v9R2y" node="1tcvH6aZQ5r" resolve="reduce_PatternSwitchStatement" />
      </node>
      <node concept="30G5F_" id="1tcvH6b0fvu" role="30HLyM">
        <node concept="3clFbS" id="1tcvH6b0fvv" role="2VODD2">
          <node concept="3clFbF" id="1tcvH6b0fzu" role="3cqZAp">
            <node concept="2OqwBi" id="1tcvH6b0hl2" role="3clFbG">
              <node concept="2OqwBi" id="1tcvH6b0fNi" role="2Oq$k0">
                <node concept="30H73N" id="1tcvH6b0fzt" role="2Oq$k0" />
                <node concept="3Tsc0h" id="1tcvH6b0g0a" role="2OqNvi">
                  <ref role="3TtcxE" to="tp3t:59YAasRsvgL" resolve="case" />
                </node>
              </node>
              <node concept="2HxqBE" id="1tcvH6b0irq" role="2OqNvi">
                <node concept="1bVj0M" id="1tcvH6b0irs" role="23t8la">
                  <node concept="3clFbS" id="1tcvH6b0irt" role="1bW5cS">
                    <node concept="3clFbF" id="1tcvH6b0iCX" role="3cqZAp">
                      <node concept="2OqwBi" id="1tcvH6b0iSq" role="3clFbG">
                        <node concept="37vLTw" id="1tcvH6b0iCW" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0Wlf" resolve="it" />
                        </node>
                        <node concept="1mIQ4w" id="1tcvH6b0j1p" role="2OqNvi">
                          <node concept="chp4Y" id="1tcvH6b0j60" role="cj9EA">
                            <ref role="cht4Q" to="tp3t:1tcvH6aAzgm" resolve="PatternSwitchCase" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0Wlf" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0Wlg" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="64p9aapA1Or" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
      <node concept="1Koe21" id="64p9aapA1Os" role="1lVwrX">
        <node concept="9aQIb" id="64p9aapA1Ot" role="1Koe22">
          <node concept="3clFbS" id="64p9aapA1Ou" role="9aQI4">
            <node concept="3cpWs8" id="64p9aapA1Ov" role="3cqZAp">
              <node concept="3cpWsn" id="64p9aapA1Ow" role="3cpWs9">
                <property role="TrG5h" value="nodeToMatch" />
                <node concept="3uibUv" id="64p9aapA1Ox" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="64p9aapA1Oy" role="3cqZAp">
              <node concept="2YIFZM" id="64p9aapA1O$" role="3clFbG">
                <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                <ref role="1Pybhc" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                <node concept="37vLTw" id="64p9aapA1O_" role="37wK5m">
                  <ref role="3cqZAo" node="64p9aapA1Ow" resolve="nodeToMatch" />
                  <node concept="1ZhdrF" id="64p9aapA1OA" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="64p9aapA1OB" role="3$ytzL">
                      <node concept="3clFbS" id="64p9aapA1OC" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapA1OD" role="3cqZAp">
                          <node concept="2OqwBi" id="64p9aapA1OE" role="3clFbG">
                            <node concept="1iwH7S" id="64p9aapA1OF" role="2Oq$k0" />
                            <node concept="1iwH70" id="64p9aapA1OG" role="2OqNvi">
                              <ref role="1iwH77" node="1tcvH6b5RBT" resolve="patternSwitchVariable" />
                              <node concept="2OqwBi" id="64p9aapA1OH" role="1iwH7V">
                                <node concept="30H73N" id="64p9aapA1OI" role="2Oq$k0" />
                                <node concept="2Xjw5R" id="64p9aapA1OJ" role="2OqNvi">
                                  <node concept="1xMEDy" id="64p9aapA1OK" role="1xVPHs">
                                    <node concept="chp4Y" id="64p9aapA1OL" role="ri$Ld">
                                      <ref role="cht4Q" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
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
                <node concept="1ZhdrF" id="64p9aapA1OM" role="lGtFl">
                  <property role="2qtEX8" value="classConcept" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" />
                  <node concept="3$xsQk" id="64p9aapA1ON" role="3$ytzL">
                    <node concept="3clFbS" id="64p9aapA1OO" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapA1OP" role="3cqZAp">
                        <node concept="2OqwBi" id="64p9aapA1OQ" role="3clFbG">
                          <node concept="1iwH7S" id="64p9aapA1OR" role="2Oq$k0" />
                          <node concept="1iwH70" id="64p9aapA1OS" role="2OqNvi">
                            <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                            <node concept="2OqwBi" id="64p9aapA1OT" role="1iwH7V">
                              <node concept="2OqwBi" id="64p9aapA1OU" role="2Oq$k0">
                                <node concept="30H73N" id="64p9aapA1OV" role="2Oq$k0" />
                                <node concept="3TrEf2" id="64p9aapA1OW" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                </node>
                              </node>
                              <node concept="2Xjw5R" id="64p9aapA1OX" role="2OqNvi">
                                <node concept="1xMEDy" id="64p9aapA1OY" role="1xVPHs">
                                  <node concept="chp4Y" id="64p9aapA1OZ" role="ri$Ld">
                                    <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
                <node concept="1ZhdrF" id="64p9aapA1P0" role="lGtFl">
                  <property role="2qtEX8" value="baseMethodDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                  <node concept="3$xsQk" id="64p9aapA1P1" role="3$ytzL">
                    <node concept="3clFbS" id="64p9aapA1P2" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapA1P3" role="3cqZAp">
                        <node concept="2OqwBi" id="64p9aapA1P4" role="3clFbG">
                          <node concept="1iwH7S" id="64p9aapA1P5" role="2Oq$k0" />
                          <node concept="1iwH70" id="64p9aapA1P6" role="2OqNvi">
                            <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                            <node concept="2OqwBi" id="64p9aapA1P7" role="1iwH7V">
                              <node concept="30H73N" id="64p9aapA1P8" role="2Oq$k0" />
                              <node concept="3TrEf2" id="64p9aapA1P9" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="64p9aapBwEG" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="64p9aapA1Pd" role="30HLyM">
        <node concept="3clFbS" id="64p9aapA1Pe" role="2VODD2">
          <node concept="3clFbF" id="64p9aapA1Pf" role="3cqZAp">
            <node concept="2OqwBi" id="64p9aapA9vv" role="3clFbG">
              <node concept="2OqwBi" id="64p9aapA6qs" role="2Oq$k0">
                <node concept="2OqwBi" id="64p9aapA4eR" role="2Oq$k0">
                  <node concept="2OqwBi" id="64p9aapA1Pm" role="2Oq$k0">
                    <node concept="2OqwBi" id="64p9aapA1Pn" role="2Oq$k0">
                      <node concept="30H73N" id="64p9aapA1Po" role="2Oq$k0" />
                      <node concept="3TrEf2" id="64p9aapA1Pp" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="2Xjw5R" id="64p9aapA1Pq" role="2OqNvi">
                      <node concept="1xMEDy" id="64p9aapA1Pr" role="1xVPHs">
                        <node concept="chp4Y" id="64p9aapA1Ps" role="ri$Ld">
                          <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="64p9aapA4gQ" role="2OqNvi">
                    <node concept="1xMEDy" id="64p9aapA4gS" role="1xVPHs">
                      <node concept="chp4Y" id="64p9aapA4_5" role="ri$Ld">
                        <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="64p9aapA7R7" role="2OqNvi">
                  <node concept="1bVj0M" id="64p9aapA7R9" role="23t8la">
                    <node concept="3clFbS" id="64p9aapA7Ra" role="1bW5cS">
                      <node concept="3clFbF" id="64p9aapA7XZ" role="3cqZAp">
                        <node concept="3clFbC" id="64p9aapA8Nf" role="3clFbG">
                          <node concept="2OqwBi" id="64p9aapA8Za" role="3uHU7w">
                            <node concept="30H73N" id="64p9aapA8Wz" role="2Oq$k0" />
                            <node concept="3TrEf2" id="64p9aapA939" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="64p9aapA8pt" role="3uHU7B">
                            <node concept="37vLTw" id="64p9aapA7XY" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0Wlh" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="64p9aapA8$H" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0Wlh" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0Wli" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="64p9aapA9YK" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5sDn0On89rU" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
      <node concept="1Koe21" id="5sDn0On8abm" role="1lVwrX">
        <node concept="9aQIb" id="5sDn0On8abs" role="1Koe22">
          <node concept="3clFbS" id="5sDn0On8abt" role="9aQI4">
            <node concept="3cpWs8" id="1Hz5j8LYYCs" role="3cqZAp">
              <node concept="3cpWsn" id="1Hz5j8LYYCv" role="3cpWs9">
                <property role="TrG5h" value="nodeToMatch" />
                <node concept="3uibUv" id="1Hz5j8LYYCw" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="gc7z5AJpAN" role="3cqZAp">
              <node concept="2OqwBi" id="gc7z5ANyTI" role="3clFbG">
                <node concept="2YIFZM" id="gc7z5AJpU3" role="2Oq$k0">
                  <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                  <ref role="1Pybhc" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                  <node concept="37vLTw" id="1Hz5j8LYZVW" role="37wK5m">
                    <ref role="3cqZAo" node="1Hz5j8LYYCv" resolve="nodeToMatch" />
                    <node concept="1ZhdrF" id="1Hz5j8LZ0d8" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="1Hz5j8LZ0d9" role="3$ytzL">
                        <node concept="3clFbS" id="1Hz5j8LZ0da" role="2VODD2">
                          <node concept="3clFbF" id="1Hz5j8LZ0uX" role="3cqZAp">
                            <node concept="2OqwBi" id="1Hz5j8LZ0Dv" role="3clFbG">
                              <node concept="1iwH7S" id="1Hz5j8LZ0uW" role="2Oq$k0" />
                              <node concept="1iwH70" id="1Hz5j8LZ0IT" role="2OqNvi">
                                <ref role="1iwH77" node="1tcvH6b5RBT" resolve="patternSwitchVariable" />
                                <node concept="2OqwBi" id="1Hz5j8LZ1et" role="1iwH7V">
                                  <node concept="30H73N" id="1Hz5j8LZ0QF" role="2Oq$k0" />
                                  <node concept="2Xjw5R" id="1Hz5j8LZ67t" role="2OqNvi">
                                    <node concept="1xMEDy" id="1Hz5j8LZ67v" role="1xVPHs">
                                      <node concept="chp4Y" id="1Hz5j8LZ6aT" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
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
                  <node concept="1ZhdrF" id="gc7z5AJqlc" role="lGtFl">
                    <property role="2qtEX8" value="classConcept" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" />
                    <node concept="3$xsQk" id="gc7z5AJqld" role="3$ytzL">
                      <node concept="3clFbS" id="gc7z5AJqle" role="2VODD2">
                        <node concept="3clFbF" id="gc7z5AJxCc" role="3cqZAp">
                          <node concept="2OqwBi" id="gc7z5AJxCd" role="3clFbG">
                            <node concept="1iwH7S" id="gc7z5AJxCe" role="2Oq$k0" />
                            <node concept="1iwH70" id="gc7z5AJxCf" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="gc7z5AJywG" role="1iwH7V">
                                <node concept="2OqwBi" id="gc7z5AJxCg" role="2Oq$k0">
                                  <node concept="30H73N" id="gc7z5AJxCh" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="gc7z5AJxCi" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="2Xjw5R" id="gc7z5AJyHc" role="2OqNvi">
                                  <node concept="1xMEDy" id="gc7z5AJyHe" role="1xVPHs">
                                    <node concept="chp4Y" id="gc7z5AJyKC" role="ri$Ld">
                                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
                  <node concept="1ZhdrF" id="gc7z5AJsZP" role="lGtFl">
                    <property role="2qtEX8" value="baseMethodDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                    <node concept="3$xsQk" id="gc7z5AJsZQ" role="3$ytzL">
                      <node concept="3clFbS" id="gc7z5AJsZR" role="2VODD2">
                        <node concept="3clFbF" id="gc7z5AJtez" role="3cqZAp">
                          <node concept="2OqwBi" id="gc7z5AJte$" role="3clFbG">
                            <node concept="1iwH7S" id="gc7z5AJte_" role="2Oq$k0" />
                            <node concept="1iwH70" id="gc7z5AJteA" role="2OqNvi">
                              <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                              <node concept="2OqwBi" id="gc7z5AJteB" role="1iwH7V">
                                <node concept="30H73N" id="gc7z5AJteC" role="2Oq$k0" />
                                <node concept="3TrEf2" id="gc7z5AJteD" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5ANLgz" role="lGtFl" />
                <node concept="liA8E" id="6S2S2q5nVFQ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Optional.orElse(java.lang.Object)" resolve="orElse" />
                  <node concept="10Nm6u" id="6S2S2q5nWod" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="6XhBjWIKU3c" role="30HLyM">
        <node concept="3clFbS" id="6XhBjWIKU3d" role="2VODD2">
          <node concept="3clFbF" id="6XhBjWIKUul" role="3cqZAp">
            <node concept="3fqX7Q" id="6XhBjWIKYUM" role="3clFbG">
              <node concept="2OqwBi" id="6XhBjWIKYUO" role="3fr31v">
                <node concept="2OqwBi" id="6XhBjWIKYUP" role="2Oq$k0">
                  <node concept="30H73N" id="6XhBjWIKYUQ" role="2Oq$k0" />
                  <node concept="z$bX8" id="6XhBjWIKYUR" role="2OqNvi" />
                </node>
                <node concept="3JPx81" id="6XhBjWIKYUS" role="2OqNvi">
                  <node concept="2OqwBi" id="6XhBjWIKYUT" role="25WWJ7">
                    <node concept="2OqwBi" id="6XhBjWIKYUU" role="2Oq$k0">
                      <node concept="30H73N" id="6XhBjWIKYUV" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6XhBjWIKYUW" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                      </node>
                    </node>
                    <node concept="2Xjw5R" id="6XhBjWIKYUX" role="2OqNvi">
                      <node concept="1xMEDy" id="6XhBjWIKYUY" role="1xVPHs">
                        <node concept="chp4Y" id="6XhBjWIKYUZ" role="ri$Ld">
                          <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
    <node concept="3aamgX" id="6XhBjWIKZ3x" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
      <node concept="1Koe21" id="6XhBjWIKZ3y" role="1lVwrX">
        <node concept="9aQIb" id="6XhBjWIL2ao" role="1Koe22">
          <node concept="3clFbS" id="6XhBjWIL2ap" role="9aQI4">
            <node concept="3cpWs8" id="6XhBjWIL5GI" role="3cqZAp">
              <node concept="3cpWsn" id="6XhBjWIL5GJ" role="3cpWs9">
                <property role="TrG5h" value="nodeToMatch" />
                <node concept="3uibUv" id="6XhBjWIL5GK" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6XhBjWIL28U" role="3cqZAp">
              <node concept="2YIFZM" id="6XhBjWIL57d" role="3clFbG">
                <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.getWithDefault(java.util.Optional,java.lang.Object)" resolve="getWithDefault" />
                <ref role="1Pybhc" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                <node concept="2YIFZM" id="6XhBjWIL57e" role="37wK5m">
                  <ref role="1Pybhc" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                  <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                  <node concept="37vLTw" id="6XhBjWIL57f" role="37wK5m">
                    <ref role="3cqZAo" node="6XhBjWIL5GJ" resolve="nodeToMatch" />
                    <node concept="1ZhdrF" id="6XhBjWIL57g" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="6XhBjWIL57h" role="3$ytzL">
                        <node concept="3clFbS" id="6XhBjWIL57i" role="2VODD2">
                          <node concept="3clFbF" id="6XhBjWIL57j" role="3cqZAp">
                            <node concept="2OqwBi" id="6XhBjWIL57k" role="3clFbG">
                              <node concept="1iwH7S" id="6XhBjWIL57l" role="2Oq$k0" />
                              <node concept="1iwH70" id="6XhBjWIL57m" role="2OqNvi">
                                <ref role="1iwH77" node="1tcvH6b5RBT" resolve="patternSwitchVariable" />
                                <node concept="2OqwBi" id="6XhBjWIL57n" role="1iwH7V">
                                  <node concept="30H73N" id="6XhBjWIL57o" role="2Oq$k0" />
                                  <node concept="2Xjw5R" id="6XhBjWIL57p" role="2OqNvi">
                                    <node concept="1xMEDy" id="6XhBjWIL57q" role="1xVPHs">
                                      <node concept="chp4Y" id="6XhBjWIL57r" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
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
                  <node concept="1ZhdrF" id="6XhBjWIL57s" role="lGtFl">
                    <property role="2qtEX8" value="classConcept" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" />
                    <node concept="3$xsQk" id="6XhBjWIL57t" role="3$ytzL">
                      <node concept="3clFbS" id="6XhBjWIL57u" role="2VODD2">
                        <node concept="3clFbF" id="6XhBjWIL57v" role="3cqZAp">
                          <node concept="2OqwBi" id="6XhBjWIL57w" role="3clFbG">
                            <node concept="1iwH7S" id="6XhBjWIL57x" role="2Oq$k0" />
                            <node concept="1iwH70" id="6XhBjWIL57y" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="6XhBjWIL57z" role="1iwH7V">
                                <node concept="2OqwBi" id="6XhBjWIL57$" role="2Oq$k0">
                                  <node concept="30H73N" id="6XhBjWIL57_" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6XhBjWIL57A" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="2Xjw5R" id="6XhBjWIL57B" role="2OqNvi">
                                  <node concept="1xMEDy" id="6XhBjWIL57C" role="1xVPHs">
                                    <node concept="chp4Y" id="6XhBjWIL57D" role="ri$Ld">
                                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
                  <node concept="1ZhdrF" id="6XhBjWIL57E" role="lGtFl">
                    <property role="2qtEX8" value="baseMethodDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                    <node concept="3$xsQk" id="6XhBjWIL57F" role="3$ytzL">
                      <node concept="3clFbS" id="6XhBjWIL57G" role="2VODD2">
                        <node concept="3clFbF" id="6XhBjWIL57H" role="3cqZAp">
                          <node concept="2OqwBi" id="6XhBjWIL57I" role="3clFbG">
                            <node concept="1iwH7S" id="6XhBjWIL57J" role="2Oq$k0" />
                            <node concept="1iwH70" id="6XhBjWIL57K" role="2OqNvi">
                              <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                              <node concept="2OqwBi" id="6XhBjWIL57L" role="1iwH7V">
                                <node concept="30H73N" id="6XhBjWIL57M" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6XhBjWIL57N" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="6XhBjWIL57O" role="37wK5m">
                  <node concept="1sPUBX" id="64p9aapYxEp" role="lGtFl">
                    <ref role="v9R2y" node="64p9aapY$ge" resolve="PatternBuilderVariable_default" />
                    <node concept="3NFfHV" id="64p9aapYxOv" role="1sPUBK">
                      <node concept="3clFbS" id="64p9aapYxOw" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapYy1t" role="3cqZAp">
                          <node concept="2OqwBi" id="64p9aapYy9R" role="3clFbG">
                            <node concept="30H73N" id="64p9aapYy1s" role="2Oq$k0" />
                            <node concept="3TrEf2" id="64p9aapYyjT" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="6XhBjWIL57P" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="6XhBjWIKZ4j" role="30HLyM">
        <node concept="3clFbS" id="6XhBjWIKZ4k" role="2VODD2">
          <node concept="3clFbF" id="4IBroifHcyF" role="3cqZAp">
            <node concept="2OqwBi" id="4IBroifHd3s" role="3clFbG">
              <node concept="2OqwBi" id="4IBroifHcyH" role="2Oq$k0">
                <node concept="2OqwBi" id="4IBroifHcyI" role="2Oq$k0">
                  <node concept="30H73N" id="4IBroifHcyJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4IBroifHcyK" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="4IBroifHcyL" role="2OqNvi">
                  <node concept="1xMEDy" id="4IBroifHcyM" role="1xVPHs">
                    <node concept="chp4Y" id="4IBroifHcyN" role="ri$Ld">
                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1BlSNk" id="4IBroifHdfb" role="2OqNvi">
                <ref role="1BmUXE" to="tp3t:7KQFBrEtJoV" resolve="InlinePatternProvider" />
                <ref role="1Bn3mz" to="tp3t:7KQFBrEtJoX" resolve="pattern" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4IBroifHdAu" role="3acgRq">
      <ref role="30HIoZ" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
      <node concept="1Koe21" id="4IBroifHdAv" role="1lVwrX">
        <node concept="9aQIb" id="4IBroifHdAw" role="1Koe22">
          <node concept="3clFbS" id="4IBroifHdAx" role="9aQI4">
            <node concept="3cpWs8" id="4IBroifHdAy" role="3cqZAp">
              <node concept="3cpWsn" id="4IBroifHdAz" role="3cpWs9">
                <property role="TrG5h" value="nodeToMatch" />
                <node concept="3uibUv" id="4IBroifHdA$" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4IBroifHdA_" role="3cqZAp">
              <node concept="2YIFZM" id="4IBroifHdAA" role="3clFbG">
                <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.getWithDefault(java.util.Optional,java.lang.Object)" resolve="getWithDefault" />
                <ref role="1Pybhc" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                <node concept="2YIFZM" id="4IBroifHdAB" role="37wK5m">
                  <ref role="1Pybhc" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                  <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                  <node concept="37vLTw" id="4IBroifHdAC" role="37wK5m">
                    <ref role="3cqZAo" node="4IBroifHdAz" resolve="nodeToMatch" />
                    <node concept="1ZhdrF" id="4IBroifHdAD" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="4IBroifHdAE" role="3$ytzL">
                        <node concept="3clFbS" id="4IBroifHdAF" role="2VODD2">
                          <node concept="3clFbF" id="4IBroifHdAG" role="3cqZAp">
                            <node concept="2OqwBi" id="4IBroifHdAH" role="3clFbG">
                              <node concept="1iwH7S" id="4IBroifHdAI" role="2Oq$k0" />
                              <node concept="1iwH70" id="4IBroifHdAJ" role="2OqNvi">
                                <ref role="1iwH77" node="4IBroifH9ag" resolve="nodeToMatchVariableL" />
                                <node concept="2OqwBi" id="4IBroifHeSl" role="1iwH7V">
                                  <node concept="2OqwBi" id="4IBroifHeSm" role="2Oq$k0">
                                    <node concept="30H73N" id="4IBroifHeSn" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4IBroifHeSo" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                    </node>
                                  </node>
                                  <node concept="2Xjw5R" id="4IBroifHeSp" role="2OqNvi">
                                    <node concept="1xMEDy" id="4IBroifHeSq" role="1xVPHs">
                                      <node concept="chp4Y" id="4IBroifHeSr" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
                  <node concept="1ZhdrF" id="4IBroifHdAP" role="lGtFl">
                    <property role="2qtEX8" value="classConcept" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" />
                    <node concept="3$xsQk" id="4IBroifHdAQ" role="3$ytzL">
                      <node concept="3clFbS" id="4IBroifHdAR" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifHdAS" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifHdAT" role="3clFbG">
                            <node concept="1iwH7S" id="4IBroifHdAU" role="2Oq$k0" />
                            <node concept="1iwH70" id="4IBroifHdAV" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="4IBroifHdAW" role="1iwH7V">
                                <node concept="2OqwBi" id="4IBroifHdAX" role="2Oq$k0">
                                  <node concept="30H73N" id="4IBroifHdAY" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="4IBroifHdAZ" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="2Xjw5R" id="4IBroifHdB0" role="2OqNvi">
                                  <node concept="1xMEDy" id="4IBroifHdB1" role="1xVPHs">
                                    <node concept="chp4Y" id="4IBroifHdB2" role="ri$Ld">
                                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
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
                  <node concept="1ZhdrF" id="4IBroifHdB3" role="lGtFl">
                    <property role="2qtEX8" value="baseMethodDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                    <node concept="3$xsQk" id="4IBroifHdB4" role="3$ytzL">
                      <node concept="3clFbS" id="4IBroifHdB5" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifHdB6" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifHdB7" role="3clFbG">
                            <node concept="1iwH7S" id="4IBroifHdB8" role="2Oq$k0" />
                            <node concept="1iwH70" id="4IBroifHdB9" role="2OqNvi">
                              <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                              <node concept="2OqwBi" id="4IBroifHdBa" role="1iwH7V">
                                <node concept="30H73N" id="4IBroifHdBb" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4IBroifHdBc" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="4IBroifHdBd" role="37wK5m">
                  <node concept="1sPUBX" id="4IBroifHdBe" role="lGtFl">
                    <ref role="v9R2y" node="64p9aapY$ge" resolve="PatternBuilderVariable_default" />
                    <node concept="3NFfHV" id="4IBroifHdBf" role="1sPUBK">
                      <node concept="3clFbS" id="4IBroifHdBg" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifHdBh" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifHdBi" role="3clFbG">
                            <node concept="30H73N" id="4IBroifHdBj" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4IBroifHdBk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="4IBroifHdBl" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4IBroifHdBm" role="30HLyM">
        <node concept="3clFbS" id="4IBroifHdBn" role="2VODD2">
          <node concept="3clFbF" id="4IBroifHdBo" role="3cqZAp">
            <node concept="2OqwBi" id="4IBroifHdBp" role="3clFbG">
              <node concept="2OqwBi" id="4IBroifHdBq" role="2Oq$k0">
                <node concept="2OqwBi" id="4IBroifHdBr" role="2Oq$k0">
                  <node concept="30H73N" id="4IBroifHdBs" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4IBroifHdBt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="4IBroifHdBu" role="2OqNvi">
                  <node concept="1xMEDy" id="4IBroifHdBv" role="1xVPHs">
                    <node concept="chp4Y" id="4IBroifHdBw" role="ri$Ld">
                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1BlSNk" id="4IBroifHdBx" role="2OqNvi">
                <ref role="1BmUXE" to="tp3t:53SOuJl2VUK" resolve="PatternBuilderClassifierMember" />
                <ref role="1Bn3mz" to="tp3t:53SOuJl2VUN" resolve="pattern" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="2g69lt1CLmx" role="2rTMjI">
      <property role="TrG5h" value="patternNodeVarL" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
      <ref role="2rTdP9" to="tp3t:2g69lt1BJHK" resolve="PatternVariableNode" />
    </node>
    <node concept="2rT7sh" id="1tcvH6auGgs" role="2rTMjI">
      <property role="TrG5h" value="patternPropVarL" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
      <ref role="2rTdP9" to="tp3t:63LzO9stD_y" resolve="PatternVariableProperty" />
    </node>
    <node concept="2rT7sh" id="1Hz5j8LQJw5" role="2rTMjI">
      <property role="TrG5h" value="rootNodeVarL" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
      <ref role="2rTdP9" to="tp3t:2r4rhgaDx1I" resolve="PatternBuilderVariable" />
    </node>
    <node concept="2rT7sh" id="5sDn0On8q_M" role="2rTMjI">
      <property role="TrG5h" value="patternVarMethL" />
      <ref role="2rTdP9" to="tp3t:2r4rhgaDx1I" resolve="PatternBuilderVariable" />
      <ref role="2rZz_L" to="tpee:fIYIFWa" resolve="StaticMethodDeclaration" />
    </node>
    <node concept="2rT7sh" id="4IBroifH9ag" role="2rTMjI">
      <property role="TrG5h" value="nodeToMatchVariableL" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
      <ref role="2rTdP9" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
    </node>
    <node concept="2rT7sh" id="7KQFBrEx8w7" role="2rTMjI">
      <property role="TrG5h" value="patternClassL" />
      <ref role="2rTdP9" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="2rT7sh" id="1tcvH6b5RBT" role="2rTMjI">
      <property role="TrG5h" value="patternSwitchVariable" />
      <ref role="2rTdP9" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="7KQFBrExXHR" role="2rTMjI">
      <property role="TrG5h" value="patternCaseVariable" />
      <ref role="2rZz_L" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
      <ref role="2rTdP9" to="tp3t:1tcvH6b5INV" resolve="AbstractPatternProvider" />
    </node>
  </node>
  <node concept="jVnub" id="h68Ga$4">
    <property role="TrG5h" value="PatternVariableType_switch" />
    <node concept="3aamgX" id="h68Gde0" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
      <node concept="j$656" id="h68H3sP" role="1lVwrX">
        <ref role="v9R2y" node="h68GzBY" resolve="PatternVariableType_SNode" />
      </node>
    </node>
    <node concept="3aamgX" id="h68Ggah" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:gyEdBcq" resolve="ListPattern" />
      <node concept="j$656" id="h68H50t" role="1lVwrX">
        <ref role="v9R2y" node="h68GI7u" resolve="PatternVariableType_ListSNode" />
      </node>
    </node>
    <node concept="3aamgX" id="h68GjvF" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:gyDMOud" resolve="AsPattern" />
      <node concept="j$656" id="h68H5ZH" role="1lVwrX">
        <ref role="v9R2y" node="h68GzBY" resolve="PatternVariableType_SNode" />
      </node>
    </node>
    <node concept="3aamgX" id="5MqQDJMwlGQ" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:3OYWvKo5cHk" resolve="ActionAsPattern" />
      <node concept="j$656" id="5MqQDJMwlGS" role="1lVwrX">
        <ref role="v9R2y" node="h68GzBY" resolve="PatternVariableType_SNode" />
      </node>
    </node>
    <node concept="3aamgX" id="h68Gkmp" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
      <node concept="j$656" id="h68HbaM" role="1lVwrX">
        <ref role="v9R2y" node="h68GzBY" resolve="PatternVariableType_SNode" />
      </node>
    </node>
    <node concept="3aamgX" id="h68Glwp" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
      <node concept="j$656" id="h68HcfD" role="1lVwrX">
        <ref role="v9R2y" node="h68GQcD" resolve="PatternVariableType_String" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h68GzBY">
    <property role="TrG5h" value="PatternVariableType_SNode" />
    <node concept="3uibUv" id="h68GE1V" role="13RCb5">
      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      <node concept="raruj" id="h68GEFG" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h68GI7u">
    <property role="TrG5h" value="PatternVariableType_ListSNode" />
    <node concept="3uibUv" id="h68GI7v" role="13RCb5">
      <ref role="3uigEE" to="33ny:~List" resolve="List" />
      <node concept="raruj" id="h68GI7w" role="lGtFl" />
      <node concept="3uibUv" id="h68GMVq" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h68GQcD">
    <property role="TrG5h" value="PatternVariableType_String" />
    <node concept="17QB3L" id="hP39TNQ" role="13RCb5">
      <node concept="raruj" id="hP39TNR" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="1WOIZPJv2D3">
    <property role="TrG5h" value="PatternVariabeleReferenceTemplate" />
    <ref role="3gUMe" to="tp3t:2HXXnvZIQE5" resolve="PatternVariableReference" />
    <node concept="312cEu" id="1WOIZPJv2D5" role="13RCb5">
      <property role="TrG5h" value="F" />
      <node concept="3clFbW" id="1WOIZPJv2D7" role="jymVt">
        <node concept="3cqZAl" id="1WOIZPJv2D8" role="3clF45" />
        <node concept="3Tm1VV" id="1WOIZPJv2D9" role="1B3o_S" />
        <node concept="3clFbS" id="1WOIZPJv2Da" role="3clF47" />
      </node>
      <node concept="3clFb_" id="1WOIZPJv2Db" role="jymVt">
        <property role="TrG5h" value="getFieldValue" />
        <node concept="3Tm1VV" id="1WOIZPJv2Dd" role="1B3o_S" />
        <node concept="3clFbS" id="1WOIZPJv2De" role="3clF47">
          <node concept="3cpWs6" id="1WOIZPJv2Dm" role="3cqZAp">
            <node concept="10Nm6u" id="1WOIZPJv2Do" role="3cqZAk" />
          </node>
        </node>
        <node concept="37vLTG" id="1WOIZPJv2Dj" role="3clF46">
          <property role="TrG5h" value="fieldName" />
          <node concept="3uibUv" id="1WOIZPJv2Dk" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3uibUv" id="1WOIZPJv2Dl" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFb_" id="1WOIZPJv2Df" role="jymVt">
        <property role="TrG5h" value="f" />
        <node concept="3Tm1VV" id="1WOIZPJv2Dh" role="1B3o_S" />
        <node concept="3cqZAl" id="1WOIZPJv2Dg" role="3clF45" />
        <node concept="3clFbS" id="1WOIZPJv2Di" role="3clF47">
          <node concept="3cpWs8" id="6hGPyQf5U8g" role="3cqZAp">
            <node concept="3cpWsn" id="6hGPyQf5U8h" role="3cpWs9">
              <property role="TrG5h" value="o" />
              <node concept="3uibUv" id="6hGPyQf5U8i" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="10QFUN" id="6hGPyQf5U8k" role="33vP2m">
                <node concept="1rXfSq" id="4hiugqyz8zx" role="10QFUP">
                  <ref role="37wK5l" node="1WOIZPJv2Db" resolve="getFieldValue" />
                  <node concept="Xl_RD" id="6hGPyQf5U8m" role="37wK5m">
                    <property role="Xl_RC" value="ab" />
                    <node concept="17Uvod" id="6hGPyQf5U8n" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6hGPyQf5U8o" role="3zH0cK">
                        <node concept="3clFbS" id="6hGPyQf5U8p" role="2VODD2">
                          <node concept="3clFbF" id="6hGPyQf5U8q" role="3cqZAp">
                            <node concept="2YIFZM" id="6hGPyQf63f2" role="3clFbG">
                              <ref role="1Pybhc" to="tp2b:53CRRPogNTW" resolve="PatternVarsUtil" />
                              <ref role="37wK5l" to="tp2b:53CRRPogNU2" resolve="getFieldName" />
                              <node concept="2OqwBi" id="6hGPyQf63f3" role="37wK5m">
                                <node concept="3TrEf2" id="6hGPyQf63f6" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2HXXnvZIQE6" resolve="variable" />
                                </node>
                                <node concept="30H73N" id="6hGPyQf63f4" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6hGPyQf5U8w" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <node concept="29HgVG" id="6hGPyQf5U8C" role="lGtFl">
                    <node concept="3NFfHV" id="6hGPyQf5U8D" role="3NFExx">
                      <node concept="3clFbS" id="6hGPyQf5U8E" role="2VODD2">
                        <node concept="3clFbF" id="6hGPyQf5U8F" role="3cqZAp">
                          <node concept="2OqwBi" id="6hGPyQf5Zm5" role="3clFbG">
                            <node concept="2OqwBi" id="6hGPyQf5U8H" role="2Oq$k0">
                              <node concept="30H73N" id="6hGPyQf5U8G" role="2Oq$k0" />
                              <node concept="3TrEf2" id="6hGPyQf5Zm4" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3t:2HXXnvZIQE6" resolve="variable" />
                              </node>
                            </node>
                            <node concept="3JvlWi" id="6hGPyQf5Zm9" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="6hGPyQf5U8x" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1WOIZPJv2D6" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="7Qbh0xggN0h">
    <property role="TrG5h" value="map_PatternExpression" />
    <node concept="3clFbW" id="7Qbh0xgh5b3" role="jymVt">
      <node concept="3cqZAl" id="7Qbh0xgh5b5" role="3clF45" />
      <node concept="3Tm1VV" id="7Qbh0xgh5b6" role="1B3o_S" />
      <node concept="3clFbS" id="7Qbh0xgh5b7" role="3clF47">
        <node concept="XkiVB" id="1Gd1YUjEhgx" role="3cqZAp">
          <ref role="37wK5l" to="7jhi:~GeneratedMatcher.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,boolean)" resolve="GeneratedMatcher" />
          <node concept="37vLTw" id="1Gd1YUjEhj3" role="37wK5m">
            <ref role="3cqZAo" node="7Qbh0xgh5bC" resolve="patternNode" />
          </node>
          <node concept="3clFbT" id="1Gd1YUjEdiI" role="37wK5m">
            <property role="3clFbU" value="false" />
            <node concept="17Uvod" id="1Gd1YUjEdiJ" role="lGtFl">
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
              <property role="2qtEX9" value="value" />
              <node concept="3zFVjK" id="1Gd1YUjEdiK" role="3zH0cK">
                <node concept="3clFbS" id="1Gd1YUjEdiL" role="2VODD2">
                  <node concept="3SKdUt" id="1Gd1YUjEdiM" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXha" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXhb" role="1PaTwD">
                        <property role="3oM_SC" value="there's" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhc" role="1PaTwD">
                        <property role="3oM_SC" value="only" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhd" role="1PaTwD">
                        <property role="3oM_SC" value="one" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhe" role="1PaTwD">
                        <property role="3oM_SC" value="dubious" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhf" role="1PaTwD">
                        <property role="3oM_SC" value="use" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhg" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhh" role="1PaTwD">
                        <property role="3oM_SC" value="hasAntiquotations()" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhi" role="1PaTwD">
                        <property role="3oM_SC" value="method," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhj" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhk" role="1PaTwD">
                        <property role="3oM_SC" value="TS," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhl" role="1PaTwD">
                        <property role="3oM_SC" value="where" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="1Gd1YUjEdiO" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXhm" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXhn" role="1PaTwD">
                        <property role="3oM_SC" value="it" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXho" role="1PaTwD">
                        <property role="3oM_SC" value="refuses" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhp" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhq" role="1PaTwD">
                        <property role="3oM_SC" value="coerce" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhr" role="1PaTwD">
                        <property role="3oM_SC" value="types" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhs" role="1PaTwD">
                        <property role="3oM_SC" value="matched" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXht" role="1PaTwD">
                        <property role="3oM_SC" value="against" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhu" role="1PaTwD">
                        <property role="3oM_SC" value="patterns" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhv" role="1PaTwD">
                        <property role="3oM_SC" value="with" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhw" role="1PaTwD">
                        <property role="3oM_SC" value="antiquotations." />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhx" role="1PaTwD">
                        <property role="3oM_SC" value="Nobody" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhy" role="1PaTwD">
                        <property role="3oM_SC" value="knows" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXhz" role="1PaTwD">
                        <property role="3oM_SC" value="why." />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1Gd1YUjEdiQ" role="3cqZAp">
                    <node concept="2OqwBi" id="1Gd1YUjEdiR" role="3clFbG">
                      <node concept="2OqwBi" id="1Gd1YUjEdiS" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Gd1YUjEdiT" role="2Oq$k0">
                          <node concept="2OqwBi" id="1Gd1YUjEdiU" role="2Oq$k0">
                            <node concept="30H73N" id="1Gd1YUjEdiV" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Gd1YUjEdiW" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:7Qbh0xggLjd" resolve="pattern" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="1Gd1YUjEdiX" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                          </node>
                        </node>
                        <node concept="2Rf3mk" id="1Gd1YUjEdiY" role="2OqNvi">
                          <node concept="1xMEDy" id="1Gd1YUjEdiZ" role="1xVPHs">
                            <node concept="chp4Y" id="1Gd1YUjEdj0" role="ri$Ld">
                              <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="1Gd1YUjEdj1" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Gd1YUjECfH" role="3cqZAp" />
        <node concept="3cpWs8" id="1Gd1YUjELUt" role="3cqZAp">
          <node concept="3cpWsn" id="1Gd1YUjELUu" role="3cpWs9">
            <property role="TrG5h" value="disjunct" />
            <node concept="3uibUv" id="1Gd1YUjELUv" role="1tU5fm">
              <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
            </node>
            <node concept="17Uvod" id="1Gd1YUjESQX" role="lGtFl">
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <property role="2qtEX9" value="name" />
              <node concept="3zFVjK" id="1Gd1YUjESQY" role="3zH0cK">
                <node concept="3clFbS" id="1Gd1YUjESQZ" role="2VODD2">
                  <node concept="3clFbF" id="1Gd1YUjESSe" role="3cqZAp">
                    <node concept="3cpWs3" id="1Gd1YUjESZ4" role="3clFbG">
                      <node concept="$GB7w" id="2wfHeYRCkc7" role="3uHU7w">
                        <property role="26SvY3" value="1jlY2aid0uu/index" />
                      </node>
                      <node concept="3zGtF$" id="1Gd1YUjFwl5" role="3uHU7B" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1Gd1YUjG2_L" role="33vP2m">
              <node concept="1pGfFk" id="1Gd1YUjG2UR" role="2ShVmc">
                <ref role="37wK5l" to="7jhi:~NodeMatcher.&lt;init&gt;(jetbrains.mps.lang.pattern.ValueContainer)" resolve="NodeMatcher" />
                <node concept="37vLTw" id="1Gd1YUjG2WR" role="37wK5m">
                  <ref role="3cqZAo" to="7jhi:~GeneratedMatcher.myValues" resolve="myValues" />
                </node>
              </node>
            </node>
            <node concept="2ZBi8u" id="7zRBRvFHEjQ" role="lGtFl">
              <ref role="2rW$FS" node="1Gd1YUjETip" resolve="disjunctToMatcher" />
            </node>
          </node>
          <node concept="1WS0z7" id="1Gd1YUjESva" role="lGtFl">
            <node concept="3JmXsc" id="1Gd1YUjESvd" role="3Jn$fo">
              <node concept="3clFbS" id="1Gd1YUjESve" role="2VODD2">
                <node concept="3SKdUt" id="7zRBRvFHEqM" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXh$" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXh_" role="1PaTwD">
                      <property role="3oM_SC" value="NOTE:" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhA" role="1PaTwD">
                      <property role="3oM_SC" value="DO" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhB" role="1PaTwD">
                      <property role="3oM_SC" value="NOT" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhC" role="1PaTwD">
                      <property role="3oM_SC" value="TRY" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhD" role="1PaTwD">
                      <property role="3oM_SC" value="TO" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhE" role="1PaTwD">
                      <property role="3oM_SC" value="SET" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhF" role="1PaTwD">
                      <property role="3oM_SC" value="MappingLabel" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhG" role="1PaTwD">
                      <property role="3oM_SC" value="here," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhH" role="1PaTwD">
                      <property role="3oM_SC" value="leave" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhI" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhJ" role="1PaTwD">
                      <property role="3oM_SC" value="at" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhK" role="1PaTwD">
                      <property role="3oM_SC" value="nested," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhL" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhM" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhN" role="1PaTwD">
                      <property role="3oM_SC" value="need" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7zRBRvFHEBE" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXhO" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXhP" role="1PaTwD">
                      <property role="3oM_SC" value="LocalVariableDeclaration," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhQ" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhR" role="1PaTwD">
                      <property role="3oM_SC" value="LVDStatement" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXhS" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1Gd1YUjFhEP" role="3cqZAp">
                  <node concept="2OqwBi" id="1Gd1YUjFhGq" role="3clFbG">
                    <node concept="1iwH7S" id="1Gd1YUjFhEG" role="2Oq$k0" />
                    <node concept="1psM6Z" id="25JZ4W_7IOb" role="2OqNvi">
                      <ref role="1psM6Y" node="25JZ4W_7IO9" resolve="disjunctionPatterns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Gd1YUjG56Q" role="3cqZAp">
          <node concept="2ShNRf" id="1Gd1YUjG56M" role="3clFbG">
            <node concept="1pGfFk" id="1Gd1YUjG5CQ" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            </node>
          </node>
          <node concept="1WS0z7" id="1Gd1YUjG5IS" role="lGtFl">
            <node concept="3JmXsc" id="1Gd1YUjG5IU" role="3Jn$fo">
              <node concept="3clFbS" id="1Gd1YUjG5IW" role="2VODD2">
                <node concept="3clFbF" id="1Gd1YUjG2tU" role="3cqZAp">
                  <node concept="2OqwBi" id="1Gd1YUjG2vv" role="3clFbG">
                    <node concept="1iwH7S" id="1Gd1YUjG2tT" role="2Oq$k0" />
                    <node concept="1psM6Z" id="25JZ4W_7IOc" role="2OqNvi">
                      <ref role="1psM6Y" node="25JZ4W_7IO9" resolve="disjunctionPatterns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="1Gd1YUjG5D9" role="lGtFl">
            <ref role="v9R2y" node="1Gd1YUjFJgH" resolve="reduce_PatternExpression2NodeMatcherStatements" />
          </node>
        </node>
        <node concept="3clFbH" id="1Gd1YUjG6g1" role="3cqZAp" />
        <node concept="3clFbF" id="1Gd1YUjG5Dc" role="3cqZAp">
          <node concept="2ShNRf" id="1Gd1YUjG5Dd" role="3clFbG">
            <node concept="1pGfFk" id="1Gd1YUjG5De" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            </node>
          </node>
          <node concept="5jKBG" id="1Gd1YUjG5Df" role="lGtFl">
            <ref role="v9R2y" node="1Gd1YUjFJgH" resolve="reduce_PatternExpression2NodeMatcherStatements" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Qbh0xgh5bC" role="3clF46">
        <property role="TrG5h" value="patternNode" />
        <node concept="3Tqbb2" id="7Qbh0xgh5bB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1Gd1YUjFhJm" role="3clF46">
        <property role="TrG5h" value="orClause" />
        <node concept="3Tqbb2" id="1Gd1YUjFhOA" role="1tU5fm" />
        <node concept="1WS0z7" id="1Gd1YUjFvIj" role="lGtFl">
          <ref role="2rW$FS" node="1Gd1YUjFi0$" resolve="disjunctToPatternNode" />
          <node concept="3JmXsc" id="1Gd1YUjFvIr" role="3Jn$fo">
            <node concept="3clFbS" id="1Gd1YUjFvIz" role="2VODD2">
              <node concept="3clFbF" id="1Gd1YUjFvO8" role="3cqZAp">
                <node concept="2OqwBi" id="1Gd1YUjFhS1" role="3clFbG">
                  <node concept="1iwH7S" id="1Gd1YUjFhQq" role="2Oq$k0" />
                  <node concept="1psM6Z" id="25JZ4W_7IOd" role="2OqNvi">
                    <ref role="1psM6Y" node="25JZ4W_7IO9" resolve="disjunctionPatterns" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="1Gd1YUjFvUR" role="lGtFl">
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <property role="2qtEX9" value="name" />
          <node concept="3zFVjK" id="1Gd1YUjFvUS" role="3zH0cK">
            <node concept="3clFbS" id="1Gd1YUjFvUT" role="2VODD2">
              <node concept="3clFbF" id="1Gd1YUjFvVZ" role="3cqZAp">
                <node concept="3cpWs3" id="1Gd1YUjFw8_" role="3clFbG">
                  <node concept="$GB7w" id="2wfHeYRCkca" role="3uHU7w">
                    <property role="26SvY3" value="1jlY2aid0uu/index" />
                  </node>
                  <node concept="3zGtF$" id="1Gd1YUjFw5E" role="3uHU7B" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1Gd1YUjF_yT" role="jymVt" />
    <node concept="3clFb_" id="1Gd1YUjDLyg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="performActions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1Gd1YUjDLyh" role="1B3o_S" />
      <node concept="3cqZAl" id="1Gd1YUjDLyj" role="3clF45" />
      <node concept="37vLTG" id="1Gd1YUjDLyk" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1Gd1YUjDLyl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1Gd1YUjDLym" role="3clF47">
        <node concept="3clFbH" id="1Gd1YUjDY$B" role="3cqZAp">
          <node concept="2b32R4" id="1Gd1YUjDY$U" role="lGtFl">
            <node concept="3JmXsc" id="1Gd1YUjDY$X" role="2P8S$">
              <node concept="3clFbS" id="1Gd1YUjDY$Y" role="2VODD2">
                <node concept="3clFbF" id="1Gd1YUjDYA$" role="3cqZAp">
                  <node concept="2OqwBi" id="1Gd1YUjE008" role="3clFbG">
                    <node concept="2OqwBi" id="1Gd1YUjDYAA" role="2Oq$k0">
                      <node concept="30H73N" id="1Gd1YUjDYAB" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="1Gd1YUjDYAC" role="2OqNvi">
                        <node concept="1xMEDy" id="1Gd1YUjDYAD" role="1xVPHs">
                          <node concept="chp4Y" id="1Gd1YUjDYAE" role="ri$Ld">
                            <ref role="cht4Q" to="tp3t:3OYWvKo5cHk" resolve="ActionAsPattern" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="13MTOL" id="1Gd1YUjE38M" role="2OqNvi">
                      <ref role="13MTZf" to="tp3t:3OYWvKo5cHp" resolve="action" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1Gd1YUjDLyn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="1W57fq" id="1Gd1YUjE3sT" role="lGtFl">
        <node concept="3IZrLx" id="1Gd1YUjE3sV" role="3IZSJc">
          <node concept="3clFbS" id="1Gd1YUjE3sX" role="2VODD2">
            <node concept="3clFbF" id="1Gd1YUjE3vl" role="3cqZAp">
              <node concept="2OqwBi" id="1Gd1YUjE4B3" role="3clFbG">
                <node concept="2OqwBi" id="1Gd1YUjE3zg" role="2Oq$k0">
                  <node concept="30H73N" id="1Gd1YUjE3vk" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="1Gd1YUjE3Es" role="2OqNvi">
                    <node concept="1xMEDy" id="1Gd1YUjE3Eu" role="1xVPHs">
                      <node concept="chp4Y" id="1Gd1YUjE3If" role="ri$Ld">
                        <ref role="cht4Q" to="tp3t:3OYWvKo5cHk" resolve="ActionAsPattern" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="1Gd1YUjE68t" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="7Qbh0xggN0j" role="lGtFl">
      <ref role="n9lRv" to="tp3t:gyDMOuh" resolve="PatternExpression" />
    </node>
    <node concept="1ps_y7" id="25JZ4W_7IOa" role="lGtFl">
      <node concept="1ps_xZ" id="25JZ4W_7IO9" role="1ps_xO">
        <property role="TrG5h" value="disjunctionPatterns" />
        <node concept="A3Dl8" id="1Gd1YUjELHO" role="1ps_xK">
          <node concept="3Tqbb2" id="1Gd1YUjELJQ" role="A3Ik2">
            <ref role="ehGHo" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
          </node>
        </node>
        <node concept="2jfdEK" id="1Gd1YUjECkS" role="1ps_xN">
          <node concept="3clFbS" id="1Gd1YUjECkU" role="2VODD2">
            <node concept="3clFbF" id="1Gd1YUjEClu" role="3cqZAp">
              <node concept="2OqwBi" id="1Gd1YUjEGM0" role="3clFbG">
                <node concept="2OqwBi" id="1Gd1YUjECoZ" role="2Oq$k0">
                  <node concept="30H73N" id="1Gd1YUjEClt" role="2Oq$k0" />
                  <node concept="2Rf3mk" id="1Gd1YUjECvM" role="2OqNvi">
                    <node concept="1xMEDy" id="1Gd1YUjECvO" role="1xVPHs">
                      <node concept="chp4Y" id="1Gd1YUjECyQ" role="ri$Ld">
                        <ref role="cht4Q" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="13MTOL" id="1Gd1YUjEIct" role="2OqNvi">
                  <ref role="13MTZf" to="tp3t:2vRmfyWqGFe" resolve="clause" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="7Qbh0xggWRy" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="7Qbh0xggWRz" role="3zH0cK">
        <node concept="3clFbS" id="7Qbh0xggWR$" role="2VODD2">
          <node concept="3clFbF" id="7Qbh0xggWSI" role="3cqZAp">
            <node concept="2OqwBi" id="7Qbh0xggXdy" role="3clFbG">
              <node concept="1iwH7S" id="7Qbh0xggWSH" role="2Oq$k0" />
              <node concept="2piZGk" id="7Qbh0xggXeK" role="2OqNvi">
                <node concept="Xl_RD" id="7Qbh0xggXfO" role="2piZGb">
                  <property role="Xl_RC" value="Pattern_" />
                </node>
                <node concept="2OqwBi" id="4MsJhMdl2MD" role="2pr8EU">
                  <node concept="30H73N" id="4MsJhMdl2G1" role="2Oq$k0" />
                  <node concept="2Rxl7S" id="4MsJhMdl2WY" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1Gd1YUjEgTd" role="1zkMxy">
      <ref role="3uigEE" to="7jhi:~GeneratedMatcher" resolve="GeneratedMatcher" />
    </node>
  </node>
  <node concept="13MO4I" id="7Qbh0xgh8Ed">
    <property role="TrG5h" value="reduce_ToNodeMatcher" />
    <node concept="1N15co" id="6wyfy1abxK4" role="1s_3oS">
      <property role="TrG5h" value="topNode" />
      <node concept="3Tqbb2" id="6wyfy1abxKg" role="1N15GL" />
    </node>
    <node concept="3clFb_" id="6wyfy1abz49" role="13RCb5">
      <property role="TrG5h" value="aaa" />
      <node concept="3cqZAl" id="6wyfy1abz4b" role="3clF45" />
      <node concept="3Tm1VV" id="6wyfy1abz4c" role="1B3o_S" />
      <node concept="3clFbS" id="6wyfy1abz4d" role="3clF47">
        <node concept="3cpWs8" id="1Gd1YUjFELi" role="3cqZAp">
          <node concept="3cpWsn" id="1Gd1YUjFELj" role="3cpWs9">
            <property role="TrG5h" value="myValues" />
            <node concept="3uibUv" id="1Gd1YUjFELk" role="1tU5fm">
              <ref role="3uigEE" to="7jhi:~ValueContainer" resolve="ValueContainer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wyfy1abz4o" role="3cqZAp">
          <node concept="3cpWsn" id="6wyfy1abz4p" role="3cpWs9">
            <property role="TrG5h" value="myTopMatcher" />
            <node concept="3uibUv" id="6wyfy1abz4q" role="1tU5fm">
              <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
            </node>
            <node concept="10Nm6u" id="6wyfy1abzvu" role="33vP2m" />
          </node>
        </node>
        <node concept="3SKdUt" id="1Gd1YUjFWku" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXnXhT" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXnXhU" role="1PaTwD">
              <property role="3oM_SC" value="array" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXhV" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXhW" role="1PaTwD">
              <property role="3oM_SC" value="merely" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXhX" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXhY" role="1PaTwD">
              <property role="3oM_SC" value="way" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXhZ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi0" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi1" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi2" role="1PaTwD">
              <property role="3oM_SC" value="template" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi3" role="1PaTwD">
              <property role="3oM_SC" value="fragments" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi4" role="1PaTwD">
              <property role="3oM_SC" value="(expressions)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi5" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi6" role="1PaTwD">
              <property role="3oM_SC" value="under" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi7" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXi8" role="1PaTwD">
              <property role="3oM_SC" value="parent" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1Gd1YUjFXMZ" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXnXi9" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXnXia" role="1PaTwD">
              <property role="3oM_SC" value="though" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXib" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXic" role="1PaTwD">
              <property role="3oM_SC" value="seems" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXid" role="1PaTwD">
              <property role="3oM_SC" value="we'd" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXie" role="1PaTwD">
              <property role="3oM_SC" value="better" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXif" role="1PaTwD">
              <property role="3oM_SC" value="relax" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXig" role="1PaTwD">
              <property role="3oM_SC" value="check_TemplateDeclaration" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXih" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXii" role="1PaTwD">
              <property role="3oM_SC" value="allow" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXij" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXik" role="1PaTwD">
              <property role="3oM_SC" value="role" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXil" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXim" role="1PaTwD">
              <property role="3oM_SC" value="different" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXin" role="1PaTwD">
              <property role="3oM_SC" value="(albight" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXio" role="1PaTwD">
              <property role="3oM_SC" value="compatible)" />
            </node>
            <node concept="3oM_SD" id="ATZLwXnXip" role="1PaTwD">
              <property role="3oM_SC" value="parents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Gd1YUjFVRi" role="3cqZAp">
          <node concept="2ShNRf" id="1Gd1YUjFUBS" role="3clFbG">
            <node concept="3g6Rrh" id="1Gd1YUjFUWK" role="2ShVmc">
              <node concept="3uibUv" id="1Gd1YUjFUMm" role="3g7fb8">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="2OqwBi" id="1Gd1YUjFVl_" role="3g7hyw">
                <node concept="2OqwBi" id="1Gd1YUjFVlA" role="2Oq$k0">
                  <node concept="37vLTw" id="1Gd1YUjFVlB" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wyfy1abz4p" resolve="myTopMatcher" />
                    <node concept="5jKBG" id="1Gd1YUjFVlC" role="lGtFl">
                      <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
                      <node concept="3NFfHV" id="1Gd1YUjFVlD" role="5jGum">
                        <node concept="3clFbS" id="1Gd1YUjFVlE" role="2VODD2">
                          <node concept="3clFbF" id="1Gd1YUjFVlF" role="3cqZAp">
                            <node concept="2OqwBi" id="1Gd1YUjFVlG" role="3clFbG">
                              <node concept="30H73N" id="1Gd1YUjFVlH" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Gd1YUjFVlI" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="1Gd1YUjFVlJ" role="v9R3O">
                        <ref role="v3LJV" node="6wyfy1abxK4" resolve="topNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1Gd1YUjFVlK" role="2OqNvi">
                    <ref role="37wK5l" to="7jhi:~NodeMatcher.child(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="child" />
                    <node concept="10Nm6u" id="4L5lkpK7dbW" role="37wK5m">
                      <node concept="1sPUBX" id="4L5lkpK7dbX" role="lGtFl">
                        <ref role="v9R2y" to="tp27:7jb4LXp9xud" resolve="switch_AggregationIdentity_SContainmentLink" />
                        <node concept="3NFfHV" id="4L5lkpK7dbY" role="1sPUBK">
                          <node concept="3clFbS" id="4L5lkpK7dbZ" role="2VODD2">
                            <node concept="3cpWs8" id="4L5lkpK7dc2" role="3cqZAp">
                              <node concept="3cpWsn" id="4L5lkpK7dc3" role="3cpWs9">
                                <property role="TrG5h" value="id" />
                                <node concept="3Tqbb2" id="4L5lkpK7dc4" role="1tU5fm">
                                  <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                                </node>
                                <node concept="2ShNRf" id="4L5lkpK7dc5" role="33vP2m">
                                  <node concept="3zrR0B" id="4L5lkpK7dc6" role="2ShVmc">
                                    <node concept="3Tqbb2" id="4L5lkpK7dc7" role="3zrR0E">
                                      <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4L5lkpK7dc8" role="3cqZAp">
                              <node concept="2OqwBi" id="4L5lkpK7dc9" role="3clFbG">
                                <node concept="37vLTw" id="4L5lkpK7dca" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4L5lkpK7dc3" resolve="id" />
                                </node>
                                <node concept="3zqWPK" id="70OdufORfSA" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:7jb4LXp8VsD" resolve="setLink" />
                                  <node concept="2OqwBi" id="70OdufORfSC" role="37wK5m">
                                    <node concept="30H73N" id="70OdufORfSD" role="2Oq$k0" />
                                    <node concept="2NL2c5" id="70OdufORfSE" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4L5lkpK7dcf" role="3cqZAp">
                              <node concept="37vLTw" id="4L5lkpK7dcg" role="3cqZAk">
                                <ref role="3cqZAo" node="4L5lkpK7dc3" resolve="id" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1Gd1YUjFVlV" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~ChildMatcher.at(int)" resolve="at" />
                  <node concept="3cmrfG" id="1Gd1YUjFVlW" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1Gd1YUjFVlX" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1Gd1YUjFVlY" role="3zH0cK">
                        <node concept="3clFbS" id="1Gd1YUjFVlZ" role="2VODD2">
                          <node concept="3clFbF" id="1Gd1YUjFVm0" role="3cqZAp">
                            <node concept="2OqwBi" id="1Gd1YUjFVm1" role="3clFbG">
                              <node concept="30H73N" id="1Gd1YUjFVm2" role="2Oq$k0" />
                              <node concept="2bSWHS" id="1Gd1YUjFVm3" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1Gd1YUjFVm4" role="lGtFl" />
                <node concept="1W57fq" id="1Gd1YUjFVm5" role="lGtFl">
                  <node concept="3IZrLx" id="1Gd1YUjFVm6" role="3IZSJc">
                    <node concept="3clFbS" id="1Gd1YUjFVm7" role="2VODD2">
                      <node concept="3clFbF" id="1Gd1YUjFVm8" role="3cqZAp">
                        <node concept="3y3z36" id="1Gd1YUjFVm9" role="3clFbG">
                          <node concept="v3LJS" id="1Gd1YUjFVma" role="3uHU7w">
                            <ref role="v3LJV" node="6wyfy1abxK4" resolve="topNode" />
                          </node>
                          <node concept="30H73N" id="1Gd1YUjFVmb" role="3uHU7B" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1Gd1YUjFVab" role="3g7hyw">
                <ref role="3cqZAo" node="6wyfy1abz4p" resolve="myTopMatcher" />
                <node concept="raruj" id="1Gd1YUjFVac" role="lGtFl" />
                <node concept="1ZhdrF" id="1Gd1YUjFVad" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <property role="2qtEX8" value="variableDeclaration" />
                  <node concept="3$xsQk" id="1Gd1YUjFVae" role="3$ytzL">
                    <node concept="3clFbS" id="1Gd1YUjFVaf" role="2VODD2">
                      <node concept="3clFbF" id="1Gd1YUjFVag" role="3cqZAp">
                        <node concept="2OqwBi" id="1Gd1YUjFVah" role="3clFbG">
                          <node concept="1iwH7S" id="1Gd1YUjFVai" role="2Oq$k0" />
                          <node concept="1iwH70" id="1Gd1YUjFVaj" role="2OqNvi">
                            <ref role="1iwH77" node="1Gd1YUjETip" resolve="disjunctToMatcher" />
                            <node concept="1PxgMI" id="1Gd1YUjFVak" role="1iwH7V">
                              <property role="1BlNFB" value="true" />
                              <node concept="2OqwBi" id="4tPQHKlo_XH" role="1m5AlR">
                                <node concept="2OqwBi" id="1Gd1YUjFVal" role="2Oq$k0">
                                  <node concept="30H73N" id="1Gd1YUjFVam" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="1Gd1YUjFVan" role="2OqNvi" />
                                </node>
                                <node concept="1mfA1w" id="4tPQHKloA0w" role="2OqNvi" />
                              </node>
                              <node concept="chp4Y" id="714IaVdH1x9" role="3oSUPX">
                                <ref role="cht4Q" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="1Gd1YUjFVao" role="lGtFl">
                  <node concept="3IZrLx" id="1Gd1YUjFVap" role="3IZSJc">
                    <node concept="3clFbS" id="1Gd1YUjFVaq" role="2VODD2">
                      <node concept="3SKdUt" id="1Gd1YUjFVar" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXnXiq" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXnXir" role="1PaTwD">
                            <property role="3oM_SC" value="OrPatternClause" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXis" role="1PaTwD">
                            <property role="3oM_SC" value="is" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXit" role="1PaTwD">
                            <property role="3oM_SC" value="distinct" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiu" role="1PaTwD">
                            <property role="3oM_SC" value="case" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiv" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiw" role="1PaTwD">
                            <property role="3oM_SC" value="PatternExpression," />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="1Gd1YUjFVat" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXnXix" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXnXiy" role="1PaTwD">
                            <property role="3oM_SC" value="nested" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiz" role="1PaTwD">
                            <property role="3oM_SC" value="inside" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXi$" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXi_" role="1PaTwD">
                            <property role="3oM_SC" value="the" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiA" role="1PaTwD">
                            <property role="3oM_SC" value="latter," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiB" role="1PaTwD">
                            <property role="3oM_SC" value="and" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiC" role="1PaTwD">
                            <property role="3oM_SC" value="there's" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiD" role="1PaTwD">
                            <property role="3oM_SC" value="local" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiE" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiF" role="1PaTwD">
                            <property role="3oM_SC" value="we" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiG" role="1PaTwD">
                            <property role="3oM_SC" value="shall" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiH" role="1PaTwD">
                            <property role="3oM_SC" value="reference." />
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="1Gd1YUjFZ7v" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXnXiI" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXnXiJ" role="1PaTwD">
                            <property role="3oM_SC" value="PatternExpression" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiK" role="1PaTwD">
                            <property role="3oM_SC" value="owns" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiL" role="1PaTwD">
                            <property role="3oM_SC" value="Quotation," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiM" role="1PaTwD">
                            <property role="3oM_SC" value="which" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiN" role="1PaTwD">
                            <property role="3oM_SC" value="in" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiO" role="1PaTwD">
                            <property role="3oM_SC" value="turn" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiP" role="1PaTwD">
                            <property role="3oM_SC" value="supplies" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiQ" role="1PaTwD">
                            <property role="3oM_SC" value="quoted" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiR" role="1PaTwD">
                            <property role="3oM_SC" value="node" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiS" role="1PaTwD">
                            <property role="3oM_SC" value="==" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiT" role="1PaTwD">
                            <property role="3oM_SC" value="topNode," />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiU" role="1PaTwD">
                            <property role="3oM_SC" value="hence" />
                          </node>
                          <node concept="3oM_SD" id="ATZLwXnXiV" role="1PaTwD">
                            <property role="3oM_SC" value="parent.parent" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1Gd1YUjFVav" role="3cqZAp">
                        <node concept="1Wc70l" id="1Gd1YUjFVaw" role="3clFbG">
                          <node concept="2OqwBi" id="1Gd1YUjFVax" role="3uHU7w">
                            <node concept="2OqwBi" id="1Gd1YUjFVay" role="2Oq$k0">
                              <node concept="2OqwBi" id="1Gd1YUjFZuY" role="2Oq$k0">
                                <node concept="30H73N" id="1Gd1YUjFVaz" role="2Oq$k0" />
                                <node concept="1mfA1w" id="1Gd1YUjFZCK" role="2OqNvi" />
                              </node>
                              <node concept="1mfA1w" id="1Gd1YUjFVa$" role="2OqNvi" />
                            </node>
                            <node concept="1mIQ4w" id="1Gd1YUjFVa_" role="2OqNvi">
                              <node concept="chp4Y" id="1Gd1YUjFVaA" role="cj9EA">
                                <ref role="cht4Q" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1Gd1YUjFVaB" role="3uHU7B">
                            <node concept="30H73N" id="1Gd1YUjFVaC" role="3uHU7B" />
                            <node concept="v3LJS" id="1Gd1YUjFVaD" role="3uHU7w">
                              <ref role="v3LJV" node="6wyfy1abxK4" resolve="topNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1Gd1YUjFUYC" role="3g7hyw">
                <ref role="3cqZAo" node="6wyfy1abz4p" resolve="myTopMatcher" />
                <node concept="raruj" id="1Gd1YUjFUYD" role="lGtFl" />
                <node concept="1W57fq" id="1Gd1YUjFUYE" role="lGtFl">
                  <node concept="3IZrLx" id="1Gd1YUjFUYF" role="3IZSJc">
                    <node concept="3clFbS" id="1Gd1YUjFUYG" role="2VODD2">
                      <node concept="3SKdUt" id="1Gd1YUjG0jq" role="3cqZAp">
                        <node concept="1PaTwC" id="ATZLwXnXiW" role="1aUNEU">
                          <node concept="3oM_SD" id="ATZLwXnXiX" role="1PaTwD">
                            <property role="3oM_SC" value="(PatternExpression|OrPatternClause)-&gt;Quotation-&gt;topNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1Gd1YUjFUYH" role="3cqZAp">
                        <node concept="1Wc70l" id="1Gd1YUjFUYI" role="3clFbG">
                          <node concept="3fqX7Q" id="1Gd1YUjFUYJ" role="3uHU7w">
                            <node concept="2OqwBi" id="1Gd1YUjFZTP" role="3fr31v">
                              <node concept="2OqwBi" id="1Gd1YUjFZTQ" role="2Oq$k0">
                                <node concept="2OqwBi" id="1Gd1YUjFZTR" role="2Oq$k0">
                                  <node concept="30H73N" id="1Gd1YUjFZTS" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="1Gd1YUjFZTT" role="2OqNvi" />
                                </node>
                                <node concept="1mfA1w" id="1Gd1YUjFZTU" role="2OqNvi" />
                              </node>
                              <node concept="1mIQ4w" id="1Gd1YUjFZTV" role="2OqNvi">
                                <node concept="chp4Y" id="1Gd1YUjFZTW" role="cj9EA">
                                  <ref role="cht4Q" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1Gd1YUjFUYQ" role="3uHU7B">
                            <node concept="30H73N" id="1Gd1YUjFUYR" role="3uHU7B" />
                            <node concept="v3LJS" id="1Gd1YUjFUYS" role="3uHU7w">
                              <ref role="v3LJV" node="6wyfy1abxK4" resolve="topNode" />
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
  <node concept="jVnub" id="7Qbh0xgh8Ef">
    <property role="TrG5h" value="switch_Pattern2NodeMatcher" />
    <node concept="1N15co" id="6wyfy1abnO4" role="1s_3oS">
      <property role="TrG5h" value="topNode" />
      <node concept="3Tqbb2" id="6wyfy1abnRW" role="1N15GL" />
    </node>
    <node concept="3aamgX" id="7Qbh0xgh8Eg" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:gyEdBcq" resolve="ListPattern" />
      <node concept="gft3U" id="6wyfy1abADg" role="1lVwrX">
        <node concept="2OqwBi" id="6wyfy1abADh" role="gfFT$">
          <node concept="1eOMI4" id="6wyfy1abADi" role="2Oq$k0">
            <node concept="10QFUN" id="6wyfy1abADj" role="1eOMHV">
              <node concept="3uibUv" id="4tPQHKln1eF" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~ChildMatcher" resolve="ChildMatcher" />
              </node>
              <node concept="10Nm6u" id="6wyfy1abADl" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="6wyfy1abADm" role="lGtFl">
              <ref role="v9R2y" node="4tPQHKlmW3I" resolve="reduce_ToChildMatcher" />
              <node concept="3NFfHV" id="6wyfy1abADn" role="5jGum">
                <node concept="3clFbS" id="6wyfy1abADo" role="2VODD2">
                  <node concept="3cpWs6" id="6wyfy1abADp" role="3cqZAp">
                    <node concept="2OqwBi" id="6wyfy1abADq" role="3cqZAk">
                      <node concept="30H73N" id="6wyfy1abADr" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6wyfy1abADs" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="v3LJS" id="6wyfy1abADt" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="6wyfy1abADu" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~ChildMatcher.capture(java.lang.String)" resolve="capture" />
            <node concept="Xl_RD" id="6wyfy1abADv" role="37wK5m">
              <property role="Xl_RC" value="" />
              <node concept="17Uvod" id="6wyfy1abADw" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="6wyfy1abADx" role="3zH0cK">
                  <node concept="3clFbS" id="6wyfy1abADy" role="2VODD2">
                    <node concept="3clFbF" id="6wyfy1abADz" role="3cqZAp">
                      <node concept="2OqwBi" id="6wyfy1abAD$" role="3clFbG">
                        <node concept="30H73N" id="6wyfy1abAD_" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6wyfy1abADA" role="2OqNvi">
                          <ref role="3TsBF5" to="tp3t:gyDMOuk" resolve="varName" />
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
    <node concept="3aamgX" id="7Qbh0xgh91A" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
      <node concept="1Koe21" id="7Qbh0xgh951" role="1lVwrX">
        <node concept="2OqwBi" id="7Qbh0xgh957" role="1Koe22">
          <node concept="1eOMI4" id="7Qbh0xgh95m" role="2Oq$k0">
            <node concept="10QFUN" id="7Qbh0xgh95j" role="1eOMHV">
              <node concept="3uibUv" id="7Qbh0xgh95_" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="10Nm6u" id="7Qbh0xgh95L" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="6wyfy1abDEh" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
              <node concept="v3LJS" id="6wyfy1abDIO" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
              <node concept="3NFfHV" id="6wyfy1abDLa" role="5jGum">
                <node concept="3clFbS" id="6wyfy1abDLb" role="2VODD2">
                  <node concept="3clFbF" id="6wyfy1abDSx" role="3cqZAp">
                    <node concept="2OqwBi" id="6wyfy1abDVx" role="3clFbG">
                      <node concept="30H73N" id="6wyfy1abDSw" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6wyfy1abE1s" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="liA8E" id="7Qbh0xgh96K" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~NodeMatcher.propertyValue(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="propertyValue" />
            <node concept="10Nm6u" id="7Qbh0xgh970" role="37wK5m">
              <node concept="5jKBG" id="za$VMvkOeF" role="lGtFl">
                <ref role="v9R2y" to="tp27:5ZE7FBZ0xn2" resolve="reduce_PropertyId_SProperty" />
                <node concept="3NFfHV" id="7Qbh0xgh9G8" role="5jGum">
                  <node concept="3clFbS" id="7Qbh0xgh9G9" role="2VODD2">
                    <node concept="3cpWs8" id="7Qbh0xghaDw" role="3cqZAp">
                      <node concept="3cpWsn" id="7Qbh0xghaDx" role="3cpWs9">
                        <property role="TrG5h" value="pid" />
                        <node concept="3Tqbb2" id="7Qbh0xghaDu" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                        </node>
                        <node concept="2OqwBi" id="7Qbh0xghaDy" role="33vP2m">
                          <node concept="2OqwBi" id="7Qbh0xghaDz" role="2Oq$k0">
                            <node concept="1iwH7S" id="7Qbh0xghaD$" role="2Oq$k0" />
                            <node concept="1r8y6K" id="7Qbh0xghaD_" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="7Qbh0xghaDA" role="2OqNvi">
                            <ref role="I8UWU" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Qbh0xgh9Vc" role="3cqZAp">
                      <node concept="2OqwBi" id="7Qbh0xghaIa" role="3clFbG">
                        <node concept="37vLTw" id="7Qbh0xghaDB" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Qbh0xghaDx" resolve="pid" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORfSF" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:5ZE7FBYZ2jW" resolve="setProperty" />
                          <node concept="2OqwBi" id="70OdufORfSH" role="37wK5m">
                            <node concept="30H73N" id="70OdufORfSI" role="2Oq$k0" />
                            <node concept="3zqWPK" id="47jP3PjRldx" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7Qbh0xghaUc" role="3cqZAp">
                      <node concept="37vLTw" id="7Qbh0xghaVU" role="3cqZAk">
                        <ref role="3cqZAo" node="7Qbh0xghaDx" resolve="pid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="7Qbh0xgh97J" role="37wK5m">
              <property role="Xl_RC" value="" />
              <node concept="17Uvod" id="7Qbh0xgh98d" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="7Qbh0xgh98e" role="3zH0cK">
                  <node concept="3clFbS" id="7Qbh0xgh98f" role="2VODD2">
                    <node concept="3clFbF" id="7Qbh0xgh99n" role="3cqZAp">
                      <node concept="2OqwBi" id="7Qbh0xgh9cS" role="3clFbG">
                        <node concept="30H73N" id="7Qbh0xgh99m" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7Qbh0xgh9oq" role="2OqNvi">
                          <ref role="3TsBF5" to="tp3t:gyDMOum" resolve="varName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ZhdrF" id="6fyCUqkFfru" role="lGtFl">
              <property role="2qtEX8" value="baseMethodDeclaration" />
              <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
              <node concept="3$xsQk" id="6fyCUqkFfrv" role="3$ytzL">
                <node concept="3clFbS" id="6fyCUqkFfrw" role="2VODD2">
                  <node concept="3clFbJ" id="6fyCUqkFhuc" role="3cqZAp">
                    <node concept="2OqwBi" id="6fyCUqkFkvV" role="3clFbw">
                      <node concept="30H73N" id="6fyCUqkFjuW" role="2Oq$k0" />
                      <node concept="3TrcHB" id="6fyCUqkFmII" role="2OqNvi">
                        <ref role="3TsBF5" to="tp3r:1SDkaf46SBG" resolve="stringValueMigrated" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6fyCUqkFhue" role="3clFbx">
                      <node concept="3cpWs6" id="6fyCUqkFA7X" role="3cqZAp">
                        <node concept="2tJFMh" id="6fyCUqkFpum" role="3cqZAk">
                          <node concept="ZC_QK" id="6fyCUqkFrCw" role="2tJFKM">
                            <ref role="2aWVGs" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
                            <node concept="ZC_QK" id="6fyCUqkFvQJ" role="2aWVGa">
                              <ref role="2aWVGs" to="7jhi:~NodeMatcher.propertyValue(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="propertyValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="6fyCUqkF$0D" role="9aQIa">
                      <node concept="3clFbS" id="6fyCUqkF$0E" role="9aQI4">
                        <node concept="3cpWs6" id="6fyCUqkFCdE" role="3cqZAp">
                          <node concept="2tJFMh" id="6fyCUqkFCdF" role="3cqZAk">
                            <node concept="ZC_QK" id="6fyCUqkFCdG" role="2tJFKM">
                              <ref role="2aWVGs" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
                              <node concept="ZC_QK" id="6fyCUqkFEmE" role="2aWVGa">
                                <ref role="2aWVGs" to="7jhi:~NodeMatcher.property(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="property" />
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
          <node concept="raruj" id="6wyfy1abDw2" role="lGtFl" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6wyfy1aboAX" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
      <node concept="gft3U" id="6wyfy1aboSi" role="1lVwrX">
        <node concept="2OqwBi" id="6wyfy1aboSo" role="gfFT$">
          <node concept="1eOMI4" id="6wyfy1abwHb" role="2Oq$k0">
            <node concept="10QFUN" id="6wyfy1abwH8" role="1eOMHV">
              <node concept="3uibUv" id="6wyfy1abwHq" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="10Nm6u" id="6wyfy1abwHA" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="6wyfy1abxD3" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
              <node concept="3NFfHV" id="6wyfy1abxHn" role="5jGum">
                <node concept="3clFbS" id="6wyfy1abxHo" role="2VODD2">
                  <node concept="3cpWs6" id="6wyfy1abydR" role="3cqZAp">
                    <node concept="2OqwBi" id="6wyfy1abyia" role="3cqZAk">
                      <node concept="30H73N" id="6wyfy1abyf0" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6wyfy1abyoc" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="v3LJS" id="6wyfy1abxOD" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="6wyfy1abwJl" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~NodeMatcher.association(org.jetbrains.mps.openapi.language.SReferenceLink,java.lang.String)" resolve="association" />
            <node concept="10Nm6u" id="6wyfy1abwJ_" role="37wK5m">
              <node concept="5jKBG" id="za$VMvkOeG" role="lGtFl">
                <ref role="v9R2y" to="tp27:7jb4LXp9gY9" resolve="reduce_ReferenceLinkId_SReferenceLink" />
                <node concept="3NFfHV" id="6wyfy1abx6N" role="5jGum">
                  <node concept="3clFbS" id="6wyfy1abx6O" role="2VODD2">
                    <node concept="3cpWs8" id="776YOYGWlTR" role="3cqZAp">
                      <node concept="3cpWsn" id="776YOYGWlTS" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="776YOYGWlKr" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                        </node>
                        <node concept="2OqwBi" id="776YOYGWlTT" role="33vP2m">
                          <node concept="2OqwBi" id="776YOYGWlTU" role="2Oq$k0">
                            <node concept="1iwH7S" id="776YOYGWlTV" role="2Oq$k0" />
                            <node concept="1r8y6K" id="776YOYGWlTW" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="776YOYGWlTX" role="2OqNvi">
                            <ref role="I8UWU" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="776YOYGWmm_" role="3cqZAp">
                      <node concept="2OqwBi" id="776YOYGWm$E" role="3clFbG">
                        <node concept="37vLTw" id="776YOYGWmmz" role="2Oq$k0">
                          <ref role="3cqZAo" node="776YOYGWlTS" resolve="id" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORfSM" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:7jb4LXp9a6q" resolve="setReference" />
                          <node concept="2OqwBi" id="70OdufORfSO" role="37wK5m">
                            <node concept="30H73N" id="70OdufORfSP" role="2Oq$k0" />
                            <node concept="3zqWPK" id="47jP3PjRldz" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="776YOYGWm8l" role="3cqZAp">
                      <node concept="37vLTw" id="776YOYGWm8n" role="3cqZAk">
                        <ref role="3cqZAo" node="776YOYGWlTS" resolve="id" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="776YOYGWzoY" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="6wyfy1abwKk" role="37wK5m">
              <property role="Xl_RC" value="" />
              <node concept="17Uvod" id="6wyfy1abwKL" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="6wyfy1abwKM" role="3zH0cK">
                  <node concept="3clFbS" id="6wyfy1abwKN" role="2VODD2">
                    <node concept="3clFbF" id="6wyfy1abwLU" role="3cqZAp">
                      <node concept="2OqwBi" id="6wyfy1abwPr" role="3clFbG">
                        <node concept="30H73N" id="6wyfy1abwLT" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6wyfy1abwVE" role="2OqNvi">
                          <ref role="3TsBF5" to="tp3t:gzjrwU$" resolve="varName" />
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
    <node concept="3aamgX" id="6wyfy1aboJ_" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:gyDMOun" resolve="WildcardPattern" />
      <node concept="gft3U" id="5VyyigDhSOy" role="1lVwrX">
        <node concept="2OqwBi" id="5VyyigDhSOz" role="gfFT$">
          <node concept="1eOMI4" id="5VyyigDhSO$" role="2Oq$k0">
            <node concept="10QFUN" id="5VyyigDhSO_" role="1eOMHV">
              <node concept="3uibUv" id="5VyyigDhSOA" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="10Nm6u" id="5VyyigDhSOB" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="5VyyigDhSOC" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
              <node concept="3NFfHV" id="5VyyigDhSOD" role="5jGum">
                <node concept="3clFbS" id="5VyyigDhSOE" role="2VODD2">
                  <node concept="3cpWs6" id="5VyyigDhSOF" role="3cqZAp">
                    <node concept="2OqwBi" id="5VyyigDhSOG" role="3cqZAk">
                      <node concept="30H73N" id="5VyyigDhSOH" role="2Oq$k0" />
                      <node concept="1mfA1w" id="5VyyigDhSOI" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="v3LJS" id="5VyyigDhSOJ" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="5VyyigDhSOK" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~NodeMatcher.any()" resolve="any" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7Qbh0xghbcu" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
      <node concept="gft3U" id="6wyfy1abA3W" role="1lVwrX">
        <node concept="2OqwBi" id="6wyfy1abA3X" role="gfFT$">
          <node concept="1eOMI4" id="6wyfy1abA3Y" role="2Oq$k0">
            <node concept="10QFUN" id="6wyfy1abA3Z" role="1eOMHV">
              <node concept="3uibUv" id="6wyfy1abA40" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="10Nm6u" id="6wyfy1abA41" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="6wyfy1abA42" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
              <node concept="3NFfHV" id="6wyfy1abA43" role="5jGum">
                <node concept="3clFbS" id="6wyfy1abA44" role="2VODD2">
                  <node concept="3cpWs6" id="6wyfy1abA45" role="3cqZAp">
                    <node concept="2OqwBi" id="6wyfy1abA46" role="3cqZAk">
                      <node concept="30H73N" id="6wyfy1abA47" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6wyfy1abA48" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="v3LJS" id="6wyfy1abA49" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="6wyfy1abA4a" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~NodeMatcher.capture(java.lang.String)" resolve="capture" />
            <node concept="Xl_RD" id="6wyfy1abAiR" role="37wK5m">
              <property role="Xl_RC" value="" />
              <node concept="17Uvod" id="6wyfy1abAiS" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="6wyfy1abAiT" role="3zH0cK">
                  <node concept="3clFbS" id="6wyfy1abAiU" role="2VODD2">
                    <node concept="3clFbF" id="6wyfy1abAiV" role="3cqZAp">
                      <node concept="2OqwBi" id="6wyfy1abAiW" role="3clFbG">
                        <node concept="30H73N" id="6wyfy1abAiX" role="2Oq$k0" />
                        <node concept="3TrcHB" id="6wyfy1abAiY" role="2OqNvi">
                          <ref role="3TsBF5" to="tp3t:gyDMOuk" resolve="varName" />
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
      <node concept="30G5F_" id="1Gd1YUjEAi4" role="30HLyM">
        <node concept="3clFbS" id="1Gd1YUjEAi5" role="2VODD2">
          <node concept="3SKdUt" id="1Gd1YUjEAZH" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXnXjd" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXnXje" role="1PaTwD">
                <property role="3oM_SC" value="under" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXjf" role="1PaTwD">
                <property role="3oM_SC" value="OrPattern," />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXjg" role="1PaTwD">
                <property role="3oM_SC" value="OrPatternVariableReference" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXjh" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXji" role="1PaTwD">
                <property role="3oM_SC" value="reduced" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXjj" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="ATZLwXnXjk" role="1PaTwD">
                <property role="3oM_SC" value="capture()" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Gd1YUjEAq7" role="3cqZAp">
            <node concept="3fqX7Q" id="1Gd1YUjEAW7" role="3clFbG">
              <node concept="2OqwBi" id="1Gd1YUjEAW9" role="3fr31v">
                <node concept="2OqwBi" id="1Gd1YUjEAWa" role="2Oq$k0">
                  <node concept="30H73N" id="1Gd1YUjEAWb" role="2Oq$k0" />
                  <node concept="1mfA1w" id="1Gd1YUjEAWc" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="1Gd1YUjEAWd" role="2OqNvi">
                  <node concept="chp4Y" id="1Gd1YUjEAWe" role="cj9EA">
                    <ref role="cht4Q" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Gd1YUjEB4R" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:3GJnBG73j5W" resolve="OrPatternVariableReference" />
      <node concept="gft3U" id="1Gd1YUjEBwr" role="1lVwrX">
        <node concept="2OqwBi" id="1Gd1YUjEBws" role="gfFT$">
          <node concept="1eOMI4" id="1Gd1YUjEBwt" role="2Oq$k0">
            <node concept="10QFUN" id="1Gd1YUjEBwu" role="1eOMHV">
              <node concept="3uibUv" id="1Gd1YUjEBwv" role="10QFUM">
                <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
              </node>
              <node concept="10Nm6u" id="1Gd1YUjEBww" role="10QFUP" />
            </node>
            <node concept="5jKBG" id="1Gd1YUjEBwx" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
              <node concept="3NFfHV" id="1Gd1YUjEBwy" role="5jGum">
                <node concept="3clFbS" id="1Gd1YUjEBwz" role="2VODD2">
                  <node concept="3SKdUt" id="4tPQHKlortR" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXjl" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXjm" role="1PaTwD">
                        <property role="3oM_SC" value="OrPatternVariableReference" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjn" role="1PaTwD">
                        <property role="3oM_SC" value="is" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjo" role="1PaTwD">
                        <property role="3oM_SC" value="an" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjp" role="1PaTwD">
                        <property role="3oM_SC" value="Expression," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjq" role="1PaTwD">
                        <property role="3oM_SC" value="not" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjr" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjs" role="1PaTwD">
                        <property role="3oM_SC" value="NodeAttribute," />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4tPQHKloryF" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXjt" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXju" role="1PaTwD">
                        <property role="3oM_SC" value="thus" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjv" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjw" role="1PaTwD">
                        <property role="3oM_SC" value="need" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjx" role="1PaTwD">
                        <property role="3oM_SC" value="accessor" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjy" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjz" role="1PaTwD">
                        <property role="3oM_SC" value="this" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXj$" role="1PaTwD">
                        <property role="3oM_SC" value="node," />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXj_" role="1PaTwD">
                        <property role="3oM_SC" value="not" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjA" role="1PaTwD">
                        <property role="3oM_SC" value="its" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjB" role="1PaTwD">
                        <property role="3oM_SC" value="parent" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjC" role="1PaTwD">
                        <property role="3oM_SC" value="(as" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjD" role="1PaTwD">
                        <property role="3oM_SC" value="we" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjE" role="1PaTwD">
                        <property role="3oM_SC" value="do" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjF" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjG" role="1PaTwD">
                        <property role="3oM_SC" value="Attributes)" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1Gd1YUjEBw$" role="3cqZAp">
                    <node concept="30H73N" id="1Gd1YUjEBwA" role="3cqZAk" />
                  </node>
                </node>
              </node>
              <node concept="v3LJS" id="1Gd1YUjEBwC" role="v9R3O">
                <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
              </node>
            </node>
          </node>
          <node concept="liA8E" id="1Gd1YUjEBwD" role="2OqNvi">
            <ref role="37wK5l" to="7jhi:~NodeMatcher.capture(java.lang.String)" resolve="capture" />
            <node concept="Xl_RD" id="1Gd1YUjEBwE" role="37wK5m">
              <property role="Xl_RC" value="" />
              <node concept="17Uvod" id="1Gd1YUjEBwF" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="1Gd1YUjEBwG" role="3zH0cK">
                  <node concept="3clFbS" id="1Gd1YUjEBwH" role="2VODD2">
                    <node concept="3clFbF" id="1Gd1YUjEBwI" role="3cqZAp">
                      <node concept="2OqwBi" id="1Gd1YUjEBwJ" role="3clFbG">
                        <node concept="2OqwBi" id="1Gd1YUjEBKd" role="2Oq$k0">
                          <node concept="30H73N" id="1Gd1YUjEBwK" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Gd1YUjEBO_" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3t:3GJnBG73j5X" resolve="declaration" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="1Gd1YUjEBXb" role="2OqNvi">
                          <ref role="3TsBF5" to="tp3t:gyDMOuk" resolve="varName" />
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
    <node concept="3aamgX" id="1Gd1YUjEYpp" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
      <node concept="gft3U" id="1Gd1YUjFanl" role="1lVwrX">
        <node concept="2VYdi" id="1Gd1YUjFann" role="gfFT$">
          <node concept="1ps_y7" id="25JZ4W_7IOf" role="lGtFl">
            <node concept="1ps_xZ" id="25JZ4W_7IOe" role="1ps_xO">
              <property role="TrG5h" value="disjunctClause" />
              <node concept="2I9FWS" id="1Gd1YUjFotb" role="1ps_xK">
                <ref role="2I9WkF" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
              </node>
              <node concept="2jfdEK" id="1Gd1YUjFnnC" role="1ps_xN">
                <node concept="3clFbS" id="1Gd1YUjFnnE" role="2VODD2">
                  <node concept="3SKdUt" id="1Gd1YUjFuLT" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXjH" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXjI" role="1PaTwD">
                        <property role="3oM_SC" value="nature" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjJ" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjK" role="1PaTwD">
                        <property role="3oM_SC" value="template" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjL" role="1PaTwD">
                        <property role="3oM_SC" value="language" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjM" role="1PaTwD">
                        <property role="3oM_SC" value="dictates" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjN" role="1PaTwD">
                        <property role="3oM_SC" value="generation" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjO" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjP" role="1PaTwD">
                        <property role="3oM_SC" value="right" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjQ" role="1PaTwD">
                        <property role="3oM_SC" value="to" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjR" role="1PaTwD">
                        <property role="3oM_SC" value="left" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="1Gd1YUjFv6K" role="3cqZAp">
                    <node concept="1PaTwC" id="ATZLwXnXjS" role="1aUNEU">
                      <node concept="3oM_SD" id="ATZLwXnXjT" role="1PaTwD">
                        <property role="3oM_SC" value="while" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjU" role="1PaTwD">
                        <property role="3oM_SC" value="order" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjV" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjW" role="1PaTwD">
                        <property role="3oM_SC" value="disjunct" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjX" role="1PaTwD">
                        <property role="3oM_SC" value="registration" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjY" role="1PaTwD">
                        <property role="3oM_SC" value="shall" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXjZ" role="1PaTwD">
                        <property role="3oM_SC" value="match" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXk0" role="1PaTwD">
                        <property role="3oM_SC" value="that" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXk1" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXk2" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="ATZLwXnXk3" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1Gd1YUjFnWU" role="3cqZAp">
                    <node concept="2OqwBi" id="1Gd1YUjFnWW" role="3clFbG">
                      <node concept="2OqwBi" id="1Gd1YUjFnWX" role="2Oq$k0">
                        <node concept="30H73N" id="1Gd1YUjFnWY" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1Gd1YUjFnWZ" role="2OqNvi">
                          <ref role="3TtcxE" to="tp3t:2vRmfyWqGFe" resolve="clause" />
                        </node>
                      </node>
                      <node concept="35Qw8J" id="1Gd1YUjFnX0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="1Gd1YUjFaw1" role="lGtFl">
            <ref role="v9R2y" node="1Gd1YUjF3hX" resolve="reduce_ToNodeMatcher_Disjunct" />
            <node concept="v3LJS" id="1Gd1YUjFaw4" role="v9R3O">
              <ref role="v3LJV" node="6wyfy1abnO4" resolve="topNode" />
            </node>
            <node concept="2OqwBi" id="1Gd1YUjFrjK" role="v9R3O">
              <node concept="1mL9RQ" id="25JZ4W_7IOg" role="2Oq$k0">
                <ref role="1mL9RD" node="25JZ4W_7IOe" resolve="disjunctClause" />
              </node>
              <node concept="7r0gD" id="1Gd1YUjFsRZ" role="2OqNvi">
                <node concept="3cmrfG" id="1Gd1YUjFsSF" role="7T0AP">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3NFfHV" id="1Gd1YUjFjkk" role="5jGum">
              <node concept="3clFbS" id="1Gd1YUjFjkl" role="2VODD2">
                <node concept="3clFbF" id="1Gd1YUjFjlu" role="3cqZAp">
                  <node concept="2OqwBi" id="1Gd1YUjFoZz" role="3clFbG">
                    <node concept="2OqwBi" id="1Gd1YUjFoXk" role="2Oq$k0">
                      <node concept="1iwH7S" id="1Gd1YUjFoWf" role="2Oq$k0" />
                      <node concept="1psM6Z" id="25JZ4W_7IOh" role="2OqNvi">
                        <ref role="1psM6Y" node="25JZ4W_7IOe" resolve="disjunctClause" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="1Gd1YUjFqAu" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="1Gd1YUjFEdi" role="jxRDz">
      <node concept="1lLz0L" id="1Gd1YUjFEnA" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Unknown element to match under PatternExpression" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1Gd1YUjF3hX">
    <property role="TrG5h" value="reduce_ToNodeMatcher_Disjunct" />
    <ref role="3gUMe" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
    <node concept="1N15co" id="1Gd1YUjF5Y4" role="1s_3oS">
      <property role="TrG5h" value="topNode" />
      <node concept="3Tqbb2" id="1Gd1YUjF5Y5" role="1N15GL" />
    </node>
    <node concept="1N15co" id="1Gd1YUjF5Ua" role="1s_3oS">
      <property role="TrG5h" value="tail" />
      <node concept="A3Dl8" id="1Gd1YUjF5Ug" role="1N15GL">
        <node concept="3Tqbb2" id="1Gd1YUjF5Uy" role="A3Ik2">
          <ref role="ehGHo" to="tp3t:4dzCQkRGb9g" resolve="OrPatternClause" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1Gd1YUjF8MS" role="13RCb5">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="aaa" />
      <node concept="3clFbS" id="1Gd1YUjF8MV" role="3clF47">
        <node concept="3cpWs8" id="1Gd1YUjF9jl" role="3cqZAp">
          <node concept="3cpWsn" id="1Gd1YUjF9jm" role="3cpWs9">
            <property role="TrG5h" value="disjunct" />
            <node concept="3uibUv" id="1Gd1YUjF9jn" role="1tU5fm">
              <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1Gd1YUjF9v4" role="3cqZAp" />
        <node concept="3clFbF" id="1Gd1YUjF8Rm" role="3cqZAp">
          <node concept="2OqwBi" id="1Gd1YUjF5Yv" role="3clFbG">
            <node concept="1eOMI4" id="1Gd1YUjF5YQ" role="2Oq$k0">
              <node concept="10QFUN" id="1Gd1YUjF5YN" role="1eOMHV">
                <node concept="3uibUv" id="1Gd1YUjF5Z5" role="10QFUM">
                  <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
                </node>
                <node concept="10Nm6u" id="1Gd1YUjF5Zh" role="10QFUP" />
              </node>
              <node concept="1W57fq" id="7zRBRvFJOuK" role="lGtFl">
                <node concept="3IZrLx" id="7zRBRvFJOuM" role="3IZSJc">
                  <node concept="3clFbS" id="7zRBRvFJOuO" role="2VODD2">
                    <node concept="3clFbF" id="1Gd1YUjF62N" role="3cqZAp">
                      <node concept="2OqwBi" id="1Gd1YUjF65G" role="3clFbG">
                        <node concept="v3LJS" id="1Gd1YUjF62M" role="2Oq$k0">
                          <ref role="v3LJV" node="1Gd1YUjF5Ua" resolve="tail" />
                        </node>
                        <node concept="3GX2aA" id="1Gd1YUjF69J" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gft3U" id="1Gd1YUjF6cy" role="UU_$l">
                  <node concept="10Nm6u" id="1Gd1YUjF6cT" role="gfFT$">
                    <node concept="5jKBG" id="1Gd1YUjF6d4" role="lGtFl">
                      <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
                      <node concept="v3LJS" id="1Gd1YUjF6dd" role="v9R3O">
                        <ref role="v3LJV" node="1Gd1YUjF5Y4" resolve="topNode" />
                      </node>
                      <node concept="3NFfHV" id="1Gd1YUjF6dV" role="5jGum">
                        <node concept="3clFbS" id="1Gd1YUjF6dW" role="2VODD2">
                          <node concept="3SKdUt" id="1Gd1YUjF6ua" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXnXk4" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXnXk5" role="1PaTwD">
                                <property role="3oM_SC" value="OrPattern" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk6" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk7" role="1PaTwD">
                                <property role="3oM_SC" value="parent" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk8" role="1PaTwD">
                                <property role="3oM_SC" value="of" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk9" role="1PaTwD">
                                <property role="3oM_SC" value="OrPatternClause" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXka" role="1PaTwD">
                                <property role="3oM_SC" value="being" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkb" role="1PaTwD">
                                <property role="3oM_SC" value="processed," />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="1Gd1YUjF6yM" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXnXkc" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXnXkd" role="1PaTwD">
                                <property role="3oM_SC" value="and" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXke" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkf" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkg" role="1PaTwD">
                                <property role="3oM_SC" value="one" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkh" role="1PaTwD">
                                <property role="3oM_SC" value="we" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXki" role="1PaTwD">
                                <property role="3oM_SC" value="shall" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkj" role="1PaTwD">
                                <property role="3oM_SC" value="navigate" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkk" role="1PaTwD">
                                <property role="3oM_SC" value="matcher" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkl" role="1PaTwD">
                                <property role="3oM_SC" value="to," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkm" role="1PaTwD">
                                <property role="3oM_SC" value="if" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkn" role="1PaTwD">
                                <property role="3oM_SC" value="it's" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXko" role="1PaTwD">
                                <property role="3oM_SC" value="used" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkp" role="1PaTwD">
                                <property role="3oM_SC" value="in" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkq" role="1PaTwD">
                                <property role="3oM_SC" value="place" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkr" role="1PaTwD">
                                <property role="3oM_SC" value="for" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXks" role="1PaTwD">
                                <property role="3oM_SC" value="a" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkt" role="1PaTwD">
                                <property role="3oM_SC" value="node." />
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="7zRBRvFJPFS" role="3cqZAp">
                            <node concept="1PaTwC" id="ATZLwXnXku" role="1aUNEU">
                              <node concept="3oM_SD" id="ATZLwXnXkv" role="1PaTwD">
                                <property role="3oM_SC" value="however," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkw" role="1PaTwD">
                                <property role="3oM_SC" value="the" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkx" role="1PaTwD">
                                <property role="3oM_SC" value="right" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXky" role="1PaTwD">
                                <property role="3oM_SC" value="way" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkz" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk$" role="1PaTwD">
                                <property role="3oM_SC" value="to" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXk_" role="1PaTwD">
                                <property role="3oM_SC" value="use" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkA" role="1PaTwD">
                                <property role="3oM_SC" value="it" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkB" role="1PaTwD">
                                <property role="3oM_SC" value="as" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkC" role="1PaTwD">
                                <property role="3oM_SC" value="attribute," />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkD" role="1PaTwD">
                                <property role="3oM_SC" value="thus" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkE" role="1PaTwD">
                                <property role="3oM_SC" value="we" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkF" role="1PaTwD">
                                <property role="3oM_SC" value="account" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkG" role="1PaTwD">
                                <property role="3oM_SC" value="for" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkH" role="1PaTwD">
                                <property role="3oM_SC" value="both" />
                              </node>
                              <node concept="3oM_SD" id="ATZLwXnXkI" role="1PaTwD">
                                <property role="3oM_SC" value="cases" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="7zRBRvFJW6M" role="3cqZAp">
                            <node concept="3cpWsn" id="7zRBRvFJW6N" role="3cpWs9">
                              <property role="TrG5h" value="orPattern" />
                              <node concept="3Tqbb2" id="7zRBRvFJW6J" role="1tU5fm" />
                              <node concept="2OqwBi" id="7zRBRvFJW6O" role="33vP2m">
                                <node concept="30H73N" id="7zRBRvFJW6P" role="2Oq$k0" />
                                <node concept="1mfA1w" id="7zRBRvFJW6Q" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="7zRBRvFJWfz" role="3cqZAp">
                            <node concept="3K4zz7" id="7zRBRvFJWoI" role="3cqZAk">
                              <node concept="37vLTw" id="7zRBRvFJWuN" role="3K4GZi">
                                <ref role="3cqZAo" node="7zRBRvFJW6N" resolve="orPattern" />
                              </node>
                              <node concept="2OqwBi" id="7zRBRvFJWrS" role="3K4E3e">
                                <node concept="37vLTw" id="7zRBRvFJWpZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7zRBRvFJW6N" resolve="orPattern" />
                                </node>
                                <node concept="1mfA1w" id="7zRBRvFJWu$" role="2OqNvi" />
                              </node>
                              <node concept="2OqwBi" id="7zRBRvFJPU2" role="3K4Cdx">
                                <node concept="37vLTw" id="7zRBRvFJW6R" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7zRBRvFJW6N" resolve="orPattern" />
                                </node>
                                <node concept="32XrjI" id="7zRBRvFJPWA" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="5jKBG" id="1Gd1YUjF6AB" role="lGtFl">
                <ref role="v9R2y" node="1Gd1YUjF3hX" resolve="reduce_ToNodeMatcher_Disjunct" />
                <node concept="v3LJS" id="1Gd1YUjF6Ci" role="v9R3O">
                  <ref role="v3LJV" node="1Gd1YUjF5Y4" resolve="topNode" />
                </node>
                <node concept="2OqwBi" id="1Gd1YUjF7uX" role="v9R3O">
                  <node concept="v3LJS" id="1Gd1YUjF6H$" role="2Oq$k0">
                    <ref role="v3LJV" node="1Gd1YUjF5Ua" resolve="tail" />
                  </node>
                  <node concept="7r0gD" id="1Gd1YUjF8pz" role="2OqNvi">
                    <node concept="3cmrfG" id="1Gd1YUjF8sI" role="7T0AP">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3NFfHV" id="1Gd1YUjF6Xj" role="5jGum">
                  <node concept="3clFbS" id="1Gd1YUjF6Xk" role="2VODD2">
                    <node concept="3SKdUt" id="1Gd1YUjF8Fn" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXnXkJ" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXnXkK" role="1PaTwD">
                          <property role="3oM_SC" value="handle" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkL" role="1PaTwD">
                          <property role="3oM_SC" value="next" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkM" role="1PaTwD">
                          <property role="3oM_SC" value="clause," />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkN" role="1PaTwD">
                          <property role="3oM_SC" value="pass" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkO" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkP" role="1PaTwD">
                          <property role="3oM_SC" value="tail" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkQ" role="1PaTwD">
                          <property role="3oM_SC" value="stripped" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkR" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkS" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkT" role="1PaTwD">
                          <property role="3oM_SC" value="value" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkU" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkV" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkW" role="1PaTwD">
                          <property role="3oM_SC" value="next" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXnXkX" role="1PaTwD">
                          <property role="3oM_SC" value="level" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1Gd1YUjF7c$" role="3cqZAp">
                      <node concept="2OqwBi" id="1Gd1YUjF7ff" role="3clFbG">
                        <node concept="v3LJS" id="1Gd1YUjF7cz" role="2Oq$k0">
                          <ref role="v3LJV" node="1Gd1YUjF5Ua" resolve="tail" />
                        </node>
                        <node concept="1uHKPH" id="1Gd1YUjF86c" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1Gd1YUjF610" role="2OqNvi">
              <ref role="37wK5l" to="7jhi:~NodeMatcher.disjunct(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.lang.pattern.NodeMatcher)" resolve="disjunct" />
              <node concept="37vLTw" id="1Gd1YUjF9z8" role="37wK5m">
                <ref role="3cqZAo" node="1Gd1YUjF9nu" resolve="patternNode" />
                <node concept="1ZhdrF" id="1Gd1YUjFi$m" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <property role="2qtEX8" value="variableDeclaration" />
                  <node concept="3$xsQk" id="1Gd1YUjFi$n" role="3$ytzL">
                    <node concept="3clFbS" id="1Gd1YUjFi$o" role="2VODD2">
                      <node concept="3clFbF" id="1Gd1YUjFiHN" role="3cqZAp">
                        <node concept="2OqwBi" id="1Gd1YUjFiJm" role="3clFbG">
                          <node concept="1iwH7S" id="1Gd1YUjFiHM" role="2Oq$k0" />
                          <node concept="1iwH70" id="1Gd1YUjFiKH" role="2OqNvi">
                            <ref role="1iwH77" node="1Gd1YUjFi0$" resolve="disjunctToPatternNode" />
                            <node concept="30H73N" id="1Gd1YUjFiOf" role="1iwH7V" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1Gd1YUjF9E5" role="37wK5m">
                <ref role="3cqZAo" node="1Gd1YUjF9jm" resolve="disjunct" />
                <node concept="1ZhdrF" id="1Gd1YUjF9Ne" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <property role="2qtEX8" value="variableDeclaration" />
                  <node concept="3$xsQk" id="1Gd1YUjF9Nf" role="3$ytzL">
                    <node concept="3clFbS" id="1Gd1YUjF9Ng" role="2VODD2">
                      <node concept="3clFbF" id="1Gd1YUjF9Rm" role="3cqZAp">
                        <node concept="2OqwBi" id="1Gd1YUjF0T9" role="3clFbG">
                          <node concept="1iwH7S" id="1Gd1YUjF0R_" role="2Oq$k0" />
                          <node concept="1iwH70" id="1Gd1YUjF0Uw" role="2OqNvi">
                            <ref role="1iwH77" node="1Gd1YUjETip" resolve="disjunctToMatcher" />
                            <node concept="30H73N" id="1Gd1YUjF9XC" role="1iwH7V" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="1Gd1YUjF95T" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1Gd1YUjF8N9" role="3clF45" />
      <node concept="3Tm1VV" id="1Gd1YUjF8MX" role="1B3o_S" />
      <node concept="37vLTG" id="1Gd1YUjF9nu" role="3clF46">
        <property role="TrG5h" value="patternNode" />
        <node concept="3uibUv" id="1Gd1YUjF9nt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1Gd1YUjFJgH">
    <property role="TrG5h" value="reduce_PatternExpression2NodeMatcherStatements" />
    <ref role="3gUMe" to="tp3t:gyDMOuh" resolve="PatternExpression" />
    <node concept="9aQIb" id="1Gd1YUjFYdT" role="13RCb5">
      <node concept="3clFbS" id="1Gd1YUjFYdV" role="9aQI4">
        <node concept="3clFbF" id="1Gd1YUjFLFa" role="3cqZAp">
          <node concept="2ShNRf" id="1Gd1YUjFLFb" role="3clFbG">
            <node concept="1pGfFk" id="1Gd1YUjFLFc" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            </node>
            <node concept="1sPUBX" id="1Gd1YUjFLFd" role="lGtFl">
              <ref role="v9R2y" node="7Qbh0xgh8Ef" resolve="switch_Pattern2NodeMatcher" />
              <node concept="1mL9RQ" id="25JZ4W_7IOk" role="v9R3O">
                <ref role="1mL9RD" node="25JZ4W_7IOi" resolve="quotedNode" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="1Gd1YUjFLYY" role="lGtFl" />
          <node concept="1ps_y7" id="25JZ4W_7IOj" role="lGtFl">
            <node concept="1ps_xZ" id="25JZ4W_7IOi" role="1ps_xO">
              <property role="TrG5h" value="quotedNode" />
              <node concept="3Tqbb2" id="1Gd1YUjFLFo" role="1ps_xK" />
              <node concept="2jfdEK" id="1Gd1YUjFLFg" role="1ps_xN">
                <node concept="3clFbS" id="1Gd1YUjFLFh" role="2VODD2">
                  <node concept="3clFbF" id="1Gd1YUjFLFi" role="3cqZAp">
                    <node concept="2OqwBi" id="1Gd1YUjFLFj" role="3clFbG">
                      <node concept="2OqwBi" id="1Gd1YUjFLFk" role="2Oq$k0">
                        <node concept="30H73N" id="1Gd1YUjFLFl" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1Gd1YUjFLFm" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:7Qbh0xggLjd" resolve="pattern" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="1Gd1YUjFLFn" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="1Gd1YUjFLFp" role="lGtFl">
            <node concept="3JmXsc" id="1Gd1YUjFLFq" role="3Jn$fo">
              <node concept="3clFbS" id="1Gd1YUjFLFr" role="2VODD2">
                <node concept="3SKdUt" id="4tPQHKlnZ7m" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXkY" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXkZ" role="1PaTwD">
                      <property role="3oM_SC" value="under" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl0" role="1PaTwD">
                      <property role="3oM_SC" value="OrPattern," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl1" role="1PaTwD">
                      <property role="3oM_SC" value="they" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl2" role="1PaTwD">
                      <property role="3oM_SC" value="use" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl3" role="1PaTwD">
                      <property role="3oM_SC" value="OrPatternVariableReference" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl4" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl5" role="1PaTwD">
                      <property role="3oM_SC" value="capture" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl6" role="1PaTwD">
                      <property role="3oM_SC" value="values" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl7" role="1PaTwD">
                      <property role="3oM_SC" value="instead" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl8" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl9" role="1PaTwD">
                      <property role="3oM_SC" value="PatternVariableDeclaration" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXla" role="1PaTwD">
                      <property role="3oM_SC" value="used" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlb" role="1PaTwD">
                      <property role="3oM_SC" value="elsewhere" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4tPQHKlnZ$H" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXlc" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXld" role="1PaTwD">
                      <property role="3oM_SC" value="(declarations" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXle" role="1PaTwD">
                      <property role="3oM_SC" value="are" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlf" role="1PaTwD">
                      <property role="3oM_SC" value="owned" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlg" role="1PaTwD">
                      <property role="3oM_SC" value="by" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlh" role="1PaTwD">
                      <property role="3oM_SC" value="OrPattern" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXli" role="1PaTwD">
                      <property role="3oM_SC" value="instance)." />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlj" role="1PaTwD">
                      <property role="3oM_SC" value="Don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlk" role="1PaTwD">
                      <property role="3oM_SC" value="blame" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXll" role="1PaTwD">
                      <property role="3oM_SC" value="me," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlm" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXln" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlo" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlp" role="1PaTwD">
                      <property role="3oM_SC" value="way" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlq" role="1PaTwD">
                      <property role="3oM_SC" value="someone" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlr" role="1PaTwD">
                      <property role="3oM_SC" value="else" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXls" role="1PaTwD">
                      <property role="3oM_SC" value="think" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlt" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlu" role="1PaTwD">
                      <property role="3oM_SC" value="smart" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7zRBRvFJoGT" role="3cqZAp" />
                <node concept="3SKdUt" id="7zRBRvFJnAZ" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXlv" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXlw" role="1PaTwD">
                      <property role="3oM_SC" value="We" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlx" role="1PaTwD">
                      <property role="3oM_SC" value="don't" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXly" role="1PaTwD">
                      <property role="3oM_SC" value="go" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlz" role="1PaTwD">
                      <property role="3oM_SC" value="deeper" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl$" role="1PaTwD">
                      <property role="3oM_SC" value="than" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXl_" role="1PaTwD">
                      <property role="3oM_SC" value="OrPattern" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlA" role="1PaTwD">
                      <property role="3oM_SC" value="as" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlB" role="1PaTwD">
                      <property role="3oM_SC" value="there's" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlC" role="1PaTwD">
                      <property role="3oM_SC" value="distinct" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlD" role="1PaTwD">
                      <property role="3oM_SC" value="handling" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlE" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlF" role="1PaTwD">
                      <property role="3oM_SC" value="OrPatternClause" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlG" role="1PaTwD">
                      <property role="3oM_SC" value="(which" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlH" role="1PaTwD">
                      <property role="3oM_SC" value="effectively" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlI" role="1PaTwD">
                      <property role="3oM_SC" value="excludes" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlJ" role="1PaTwD">
                      <property role="3oM_SC" value="PVD" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlK" role="1PaTwD">
                      <property role="3oM_SC" value="under" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlL" role="1PaTwD">
                      <property role="3oM_SC" value="OrPattern)" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7zRBRvFJzIC" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXlM" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXlN" role="1PaTwD">
                      <property role="3oM_SC" value="Since" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlO" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlP" role="1PaTwD">
                      <property role="3oM_SC" value="ends" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlQ" role="1PaTwD">
                      <property role="3oM_SC" value="here," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlR" role="1PaTwD">
                      <property role="3oM_SC" value="in" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlS" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlT" role="1PaTwD">
                      <property role="3oM_SC" value="template," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlU" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlV" role="1PaTwD">
                      <property role="3oM_SC" value="look" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlW" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlX" role="1PaTwD">
                      <property role="3oM_SC" value="OrPatternVariableReference" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlY" role="1PaTwD">
                      <property role="3oM_SC" value="right" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXlZ" role="1PaTwD">
                      <property role="3oM_SC" value="away." />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4tPQHKlnWtB" role="3cqZAp">
                  <node concept="3cpWsn" id="4tPQHKlnWtC" role="3cpWs9">
                    <property role="TrG5h" value="d" />
                    <node concept="2I9FWS" id="4tPQHKlnWto" role="1tU5fm">
                      <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    </node>
                    <node concept="2OqwBi" id="4tPQHKlnWtD" role="33vP2m">
                      <node concept="2OqwBi" id="4tPQHKlnWtE" role="2Oq$k0">
                        <node concept="1iwH7S" id="4tPQHKlnWtF" role="2Oq$k0" />
                        <node concept="1psM6Z" id="25JZ4W_7IOl" role="2OqNvi">
                          <ref role="1psM6Y" node="25JZ4W_7IOi" resolve="quotedNode" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="4tPQHKlnWtH" role="2OqNvi">
                        <node concept="3gmYPX" id="4tPQHKlnWtI" role="1xVPHs">
                          <node concept="3gn64h" id="4tPQHKlnWtJ" role="3gmYPZ">
                            <ref role="3gnhBz" to="tp3t:gyDMOuf" resolve="Pattern" />
                          </node>
                          <node concept="3gn64h" id="4tPQHKlnWtK" role="3gmYPZ">
                            <ref role="3gnhBz" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
                          </node>
                          <node concept="3gn64h" id="4tPQHKlnWtL" role="3gmYPZ">
                            <ref role="3gnhBz" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
                          </node>
                          <node concept="3gn64h" id="4tPQHKlnWtM" role="3gmYPZ">
                            <ref role="3gnhBz" to="tp3t:3GJnBG73j5W" resolve="OrPatternVariableReference" />
                          </node>
                        </node>
                        <node concept="hTh3S" id="7zRBRvFI1z8" role="1xVPHs">
                          <node concept="3gn64h" id="7zRBRvFI2gC" role="hTh3Z">
                            <ref role="3gnhBz" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7zRBRvFJ2m8" role="3cqZAp">
                  <node concept="3cpWsn" id="7zRBRvFJ2m9" role="3cpWs9">
                    <property role="TrG5h" value="orPattern" />
                    <node concept="A3Dl8" id="7zRBRvFJ2lA" role="1tU5fm">
                      <node concept="3Tqbb2" id="7zRBRvFJ2lD" role="A3Ik2">
                        <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7zRBRvFJ2mb" role="33vP2m">
                      <node concept="2OqwBi" id="7zRBRvFJ2mc" role="2Oq$k0">
                        <node concept="1iwH7S" id="7zRBRvFJ2md" role="2Oq$k0" />
                        <node concept="1psM6Z" id="25JZ4W_7IOm" role="2OqNvi">
                          <ref role="1psM6Y" node="25JZ4W_7IOi" resolve="quotedNode" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="7zRBRvFJ2mf" role="2OqNvi">
                        <node concept="1xMEDy" id="7zRBRvFJ2mg" role="1xVPHs">
                          <node concept="chp4Y" id="7zRBRvFJ2mh" role="ri$Ld">
                            <ref role="cht4Q" to="tp3t:2vRmfyWqEE4" resolve="OrPattern" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4tPQHKlo0S1" role="3cqZAp">
                  <node concept="2OqwBi" id="4tPQHKlo1b$" role="3cqZAk">
                    <node concept="37vLTw" id="4tPQHKlo0Us" role="2Oq$k0">
                      <ref role="3cqZAo" node="4tPQHKlnWtC" resolve="d" />
                    </node>
                    <node concept="4Tj9Z" id="7zRBRvFJAa0" role="2OqNvi">
                      <node concept="37vLTw" id="7zRBRvFJAcx" role="576Qk">
                        <ref role="3cqZAo" node="7zRBRvFJ2m9" resolve="orPattern" />
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
  <node concept="13MO4I" id="4tPQHKlmW3I">
    <property role="TrG5h" value="reduce_ToChildMatcher" />
    <node concept="1N15co" id="4tPQHKlmWtS" role="1s_3oS">
      <property role="TrG5h" value="topNode" />
      <node concept="3Tqbb2" id="4tPQHKlmWtT" role="1N15GL" />
    </node>
    <node concept="2OqwBi" id="4tPQHKlmWu8" role="13RCb5">
      <node concept="1eOMI4" id="4tPQHKlmWu9" role="2Oq$k0">
        <node concept="10QFUN" id="4tPQHKlmWua" role="1eOMHV">
          <node concept="3uibUv" id="4tPQHKlmWub" role="10QFUM">
            <ref role="3uigEE" to="7jhi:~NodeMatcher" resolve="NodeMatcher" />
          </node>
          <node concept="10Nm6u" id="4tPQHKlmWuc" role="10QFUP" />
        </node>
        <node concept="5jKBG" id="4tPQHKlmWud" role="lGtFl">
          <ref role="v9R2y" node="7Qbh0xgh8Ed" resolve="reduce_ToNodeMatcher" />
          <node concept="3NFfHV" id="4tPQHKlmWue" role="5jGum">
            <node concept="3clFbS" id="4tPQHKlmWuf" role="2VODD2">
              <node concept="3cpWs6" id="4tPQHKlmWug" role="3cqZAp">
                <node concept="2OqwBi" id="4tPQHKlmWuh" role="3cqZAk">
                  <node concept="30H73N" id="4tPQHKlmWui" role="2Oq$k0" />
                  <node concept="1mfA1w" id="4tPQHKlmWuj" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="v3LJS" id="4tPQHKlmWuk" role="v9R3O">
            <ref role="v3LJV" node="4tPQHKlmWtS" resolve="topNode" />
          </node>
        </node>
      </node>
      <node concept="liA8E" id="4tPQHKlmWul" role="2OqNvi">
        <ref role="37wK5l" to="7jhi:~NodeMatcher.child(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="child" />
        <node concept="10Nm6u" id="4tPQHKlmWum" role="37wK5m">
          <node concept="1sPUBX" id="4L5lkpK77e5" role="lGtFl">
            <ref role="v9R2y" to="tp27:7jb4LXp9xud" resolve="switch_AggregationIdentity_SContainmentLink" />
            <node concept="3NFfHV" id="4L5lkpK77u$" role="1sPUBK">
              <node concept="3clFbS" id="4L5lkpK77u_" role="2VODD2">
                <node concept="3SKdUt" id="4tPQHKlmWus" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXm0" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXm1" role="1PaTwD">
                      <property role="3oM_SC" value="Here" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm2" role="1PaTwD">
                      <property role="3oM_SC" value="we" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm3" role="1PaTwD">
                      <property role="3oM_SC" value="assume" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm4" role="1PaTwD">
                      <property role="3oM_SC" value="ListPattern" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm5" role="1PaTwD">
                      <property role="3oM_SC" value="could" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm6" role="1PaTwD">
                      <property role="3oM_SC" value="not" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm7" role="1PaTwD">
                      <property role="3oM_SC" value="be" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm8" role="1PaTwD">
                      <property role="3oM_SC" value="applied" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXm9" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXma" role="1PaTwD">
                      <property role="3oM_SC" value="top-most" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmb" role="1PaTwD">
                      <property role="3oM_SC" value="node" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmc" role="1PaTwD">
                      <property role="3oM_SC" value="(as" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmd" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXme" role="1PaTwD">
                      <property role="3oM_SC" value="needs" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmf" role="1PaTwD">
                      <property role="3oM_SC" value="a" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmg" role="1PaTwD">
                      <property role="3oM_SC" value="list" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmh" role="1PaTwD">
                      <property role="3oM_SC" value="of" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmi" role="1PaTwD">
                      <property role="3oM_SC" value="children," />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmj" role="1PaTwD">
                      <property role="3oM_SC" value="while" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmk" role="1PaTwD">
                      <property role="3oM_SC" value="quotation" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXml" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmm" role="1PaTwD">
                      <property role="3oM_SC" value="single" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXmn" role="1PaTwD">
                      <property role="3oM_SC" value="node)" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4L5lkpK73k9" role="3cqZAp">
                  <node concept="3cpWsn" id="4L5lkpK73kc" role="3cpWs9">
                    <property role="TrG5h" value="id" />
                    <node concept="3Tqbb2" id="4L5lkpK73k7" role="1tU5fm">
                      <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                    </node>
                    <node concept="2ShNRf" id="4L5lkpK73W4" role="33vP2m">
                      <node concept="3zrR0B" id="4L5lkpK73W2" role="2ShVmc">
                        <node concept="3Tqbb2" id="4L5lkpK73W3" role="3zrR0E">
                          <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4L5lkpK74ge" role="3cqZAp">
                  <node concept="2OqwBi" id="4L5lkpK74w7" role="3clFbG">
                    <node concept="37vLTw" id="4L5lkpK74gc" role="2Oq$k0">
                      <ref role="3cqZAo" node="4L5lkpK73kc" resolve="id" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORfST" role="2OqNvi">
                      <ref role="37wK5l" to="tpeu:7jb4LXp8VsD" resolve="setLink" />
                      <node concept="2OqwBi" id="70OdufORfSV" role="37wK5m">
                        <node concept="30H73N" id="70OdufORfSW" role="2Oq$k0" />
                        <node concept="2NL2c5" id="70OdufORfSX" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4L5lkpK76yg" role="3cqZAp">
                  <node concept="37vLTw" id="4L5lkpK76LT" role="3cqZAk">
                    <ref role="3cqZAo" node="4L5lkpK73kc" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4tPQHKln1Oo" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="64p9aapO2$9">
    <property role="3GE5qa" value="light" />
    <property role="TrG5h" value="PatternBuilder_getterMethods" />
    <ref role="3gUMe" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
    <node concept="312cEu" id="64p9aapO6V9" role="13RCb5">
      <property role="TrG5h" value="C" />
      <node concept="2YIFZL" id="64p9aapO2$b" role="jymVt">
        <property role="TrG5h" value="getVar" />
        <node concept="3clFbS" id="64p9aapO2$c" role="3clF47">
          <node concept="3cpWs6" id="64p9aapO2$d" role="3cqZAp">
            <node concept="10Nm6u" id="64p9aapO2$e" role="3cqZAk" />
            <node concept="1sPUBX" id="64p9aapO2$f" role="lGtFl">
              <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
              <node concept="30H73N" id="64p9aapO2$g" role="v9R3O" />
              <node concept="30H73N" id="64p9aapO2$h" role="v9R3O" />
              <node concept="1mL9RQ" id="64p9aapO2$i" role="v9R3O">
                <ref role="1mL9RD" node="64p9aapO2_f" resolve="optional" />
              </node>
              <node concept="3NFfHV" id="64p9aapO2$j" role="1sPUBK">
                <node concept="3clFbS" id="64p9aapO2$k" role="2VODD2">
                  <node concept="3clFbF" id="64p9aapO2$l" role="3cqZAp">
                    <node concept="2OqwBi" id="64p9aapO2$m" role="3clFbG">
                      <node concept="30H73N" id="64p9aapO2$n" role="2Oq$k0" />
                      <node concept="1mfA1w" id="64p9aapO2$o" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="64p9aapO2$p" role="3clF46">
          <property role="TrG5h" value="rootNode" />
          <node concept="3uibUv" id="64p9aapO2$q" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2ZBi8u" id="64p9aapO2$r" role="lGtFl">
            <ref role="2rW$FS" node="1Hz5j8LQJw5" resolve="rootNodeVarL" />
          </node>
        </node>
        <node concept="3Tm1VV" id="64p9aapO2$s" role="1B3o_S" />
        <node concept="17Uvod" id="64p9aapO2$t" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="64p9aapO2$u" role="3zH0cK">
            <node concept="3clFbS" id="64p9aapO2$v" role="2VODD2">
              <node concept="3clFbF" id="64p9aapO2$w" role="3cqZAp">
                <node concept="3cpWs3" id="64p9aapO2$x" role="3clFbG">
                  <node concept="Xl_RD" id="64p9aapO2$y" role="3uHU7B">
                    <property role="Xl_RC" value="get" />
                  </node>
                  <node concept="2YIFZM" id="64p9aapO2$z" role="3uHU7w">
                    <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                    <ref role="37wK5l" to="18ew:~NameUtil.capitalize(java.lang.String)" resolve="capitalize" />
                    <node concept="2OqwBi" id="64p9aapO2$$" role="37wK5m">
                      <node concept="30H73N" id="64p9aapO2$_" role="2Oq$k0" />
                      <node concept="3TrcHB" id="64p9aapO2$A" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="64p9aapO2$K" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="64p9aapO2$L" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            <node concept="29HgVG" id="64p9aapO2$M" role="lGtFl">
              <node concept="3NFfHV" id="64p9aapO2$N" role="3NFExx">
                <node concept="3clFbS" id="64p9aapO2$O" role="2VODD2">
                  <node concept="3clFbF" id="64p9aapO2$P" role="3cqZAp">
                    <node concept="1UaxmW" id="64p9aapO2$Q" role="3clFbG">
                      <node concept="1YaCAy" id="64p9aapO2$R" role="1Ub_4A">
                        <property role="TrG5h" value="classifierType" />
                        <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
                      </node>
                      <node concept="2OqwBi" id="64p9aapO2$S" role="1Ub_4B">
                        <node concept="30H73N" id="64p9aapO2$T" role="2Oq$k0" />
                        <node concept="3JvlWi" id="64p9aapO2$U" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="64p9aapO2$V" role="lGtFl">
            <node concept="3IZrLx" id="64p9aapO2$W" role="3IZSJc">
              <node concept="3clFbS" id="64p9aapO2$X" role="2VODD2">
                <node concept="3clFbF" id="64p9aapO2$Y" role="3cqZAp">
                  <node concept="2OqwBi" id="64p9aapO2$Z" role="3clFbG">
                    <node concept="1iwH7S" id="64p9aapO2_0" role="2Oq$k0" />
                    <node concept="1psM6Z" id="64p9aapO2_1" role="2OqNvi">
                      <ref role="1psM6Y" node="64p9aapO2_f" resolve="optional" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="gft3U" id="64p9aapO2_2" role="UU_$l">
              <node concept="3uibUv" id="64p9aapO2_3" role="gfFT$">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                <node concept="29HgVG" id="64p9aapO2_4" role="lGtFl">
                  <node concept="3NFfHV" id="64p9aapO2_5" role="3NFExx">
                    <node concept="3clFbS" id="64p9aapO2_6" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapO2_7" role="3cqZAp">
                        <node concept="1UaxmW" id="64p9aapO2_8" role="3clFbG">
                          <node concept="1YaCAy" id="64p9aapO2_9" role="1Ub_4A">
                            <property role="TrG5h" value="classifierType" />
                            <ref role="1YaFvo" to="tpee:g7uibYu" resolve="ClassifierType" />
                          </node>
                          <node concept="2OqwBi" id="64p9aapO2_a" role="1Ub_4B">
                            <node concept="30H73N" id="64p9aapO2_b" role="2Oq$k0" />
                            <node concept="3JvlWi" id="64p9aapO2_c" role="2OqNvi" />
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
        <node concept="2AHcQZ" id="64p9aapO2_d" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="raruj" id="64p9aapO4iU" role="lGtFl" />
        <node concept="1WS0z7" id="64p9aapO2$B" role="lGtFl">
          <ref role="2rW$FS" node="5sDn0On8q_M" resolve="patternVarMethL" />
          <node concept="3JmXsc" id="64p9aapO2$C" role="3Jn$fo">
            <node concept="3clFbS" id="64p9aapO2$D" role="2VODD2">
              <node concept="3clFbF" id="64p9aapO2$E" role="3cqZAp">
                <node concept="2OqwBi" id="64p9aapO2$F" role="3clFbG">
                  <node concept="3zqWPK" id="70OdufORfSY" role="2OqNvi">
                    <ref role="37wK5l" to="tp2b:PFUECvO1RN" resolve="getVariables" />
                  </node>
                  <node concept="30H73N" id="64p9aapO2$I" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ps_y7" id="64p9aapO2_e" role="lGtFl">
          <node concept="1ps_xZ" id="64p9aapO2_f" role="1ps_xO">
            <property role="TrG5h" value="optional" />
            <node concept="2jfdEK" id="64p9aapO2_g" role="1ps_xN">
              <node concept="3clFbS" id="64p9aapO2_h" role="2VODD2">
                <node concept="3clFbF" id="64p9aapO2_i" role="3cqZAp">
                  <node concept="2OqwBi" id="64p9aapO2_j" role="3clFbG">
                    <node concept="2OqwBi" id="64p9aapO2_k" role="2Oq$k0">
                      <node concept="2OqwBi" id="64p9aapO2_l" role="2Oq$k0">
                        <node concept="2OqwBi" id="64p9aapO2_m" role="2Oq$k0">
                          <node concept="30H73N" id="64p9aapO2_n" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="64p9aapO2_o" role="2OqNvi">
                            <node concept="1xMEDy" id="64p9aapO2_p" role="1xVPHs">
                              <node concept="chp4Y" id="64p9aapO2_q" role="ri$Ld">
                                <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2Rf3mk" id="64p9aapO2_r" role="2OqNvi">
                          <node concept="1xMEDy" id="64p9aapO2_s" role="1xVPHs">
                            <node concept="chp4Y" id="64p9aapO2_t" role="ri$Ld">
                              <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="64p9aapO2_u" role="2OqNvi">
                        <node concept="1bVj0M" id="64p9aapO2_v" role="23t8la">
                          <node concept="3clFbS" id="64p9aapO2_w" role="1bW5cS">
                            <node concept="3clFbF" id="64p9aapO2_x" role="3cqZAp">
                              <node concept="3clFbC" id="64p9aapO2_y" role="3clFbG">
                                <node concept="30H73N" id="64p9aapO2_z" role="3uHU7w" />
                                <node concept="2OqwBi" id="64p9aapO2_$" role="3uHU7B">
                                  <node concept="37vLTw" id="64p9aapO2__" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0Wlj" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="64p9aapO2_A" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="5W7E4fV0Wlj" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5W7E4fV0Wlk" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="64p9aapO2_D" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="10P_77" id="64p9aapO2_E" role="1ps_xK" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="64p9aapO6Va" role="1B3o_S" />
      <node concept="3uibUv" id="64p9aapRxY$" role="1zkMxy">
        <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="64p9aapRYX7">
    <property role="3GE5qa" value="light" />
    <property role="TrG5h" value="PatternBuilder_constructorBody" />
    <ref role="3gUMe" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
    <node concept="9aQIb" id="64p9aapRZKl" role="13RCb5">
      <node concept="3clFbS" id="64p9aapRZKm" role="9aQI4">
        <node concept="3cpWs8" id="7Diwtz7VTvc" role="3cqZAp">
          <node concept="3cpWsn" id="7Diwtz7VTvd" role="3cpWs9">
            <property role="TrG5h" value="facade" />
            <node concept="2YIFZM" id="7Diwtz7VTve" role="33vP2m">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="3uibUv" id="7Diwtz7VTvf" role="1tU5fm">
              <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
          </node>
          <node concept="raruj" id="64p9aapS0Jt" role="lGtFl" />
          <node concept="1W57fq" id="7vKHTLu27G7" role="lGtFl">
            <node concept="3IZrLx" id="7vKHTLu27G8" role="3IZSJc">
              <node concept="3clFbS" id="7vKHTLu27G9" role="2VODD2">
                <node concept="3clFbF" id="7vKHTLu27KY" role="3cqZAp">
                  <node concept="2OqwBi" id="7vKHTLu2aCA" role="3clFbG">
                    <node concept="2OqwBi" id="7vKHTLu27ZV" role="2Oq$k0">
                      <node concept="30H73N" id="7vKHTLu27KX" role="2Oq$k0" />
                      <node concept="2Rf3mk" id="7vKHTLu28ei" role="2OqNvi">
                        <node concept="1xMEDy" id="7vKHTLu28ek" role="1xVPHs">
                          <node concept="chp4Y" id="7vKHTLu28te" role="ri$Ld">
                            <ref role="cht4Q" to="tp3r:76efOMRCfEj" resolve="NodeBuilderRef" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3GX2aA" id="7vKHTLu2cn5" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2g69lt1AbTg" role="3cqZAp">
          <node concept="3cpWsn" id="2g69lt1AbTh" role="3cpWs9">
            <property role="TrG5h" value="rootBuilder" />
            <node concept="3uibUv" id="2g69lt1AeJI" role="1tU5fm">
              <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
            </node>
            <node concept="2OqwBi" id="2g69lt1_Q6L" role="33vP2m">
              <node concept="2ShNRf" id="7f9nSP4_uah" role="2Oq$k0">
                <node concept="1pGfFk" id="7f9nSP4_uUT" role="2ShVmc">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.&lt;init&gt;()" resolve="NodeMatcherBuilder" />
                </node>
              </node>
              <node concept="liA8E" id="2g69lt1_QkP" role="2OqNvi">
                <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                <node concept="10Nm6u" id="2g69lt1_QD9" role="37wK5m" />
                <node concept="1sPUBX" id="2g69lt1_So1" role="lGtFl">
                  <ref role="v9R2y" to="tp3k:7vKHTLu4rZM" resolve="NodeBuilder_childInit" />
                  <node concept="10Nm6u" id="7vKHTLu81M4" role="v9R3O" />
                  <node concept="2YIFZM" id="7vKHTLu85Hy" role="v9R3O">
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                    <node concept="3uibUv" id="7vKHTLu88RK" role="3PaCim">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                  <node concept="3NFfHV" id="2g69lt1A0CE" role="1sPUBK">
                    <node concept="3clFbS" id="2g69lt1A0CF" role="2VODD2">
                      <node concept="3clFbF" id="2g69lt1A0OC" role="3cqZAp">
                        <node concept="30H73N" id="2g69lt1A0OB" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1pdMLZ" id="1vKiq7cpt88" role="lGtFl">
              <node concept="3NFfHV" id="1vKiq7cpt8w" role="31$UT">
                <node concept="3clFbS" id="1vKiq7cpt8x" role="2VODD2">
                  <node concept="3clFbF" id="1vKiq7cptbt" role="3cqZAp">
                    <node concept="2OqwBi" id="1vKiq7cptkq" role="3clFbG">
                      <node concept="30H73N" id="1vKiq7cptbs" role="2Oq$k0" />
                      <node concept="3TrEf2" id="64p9aapS3fi" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZBi8u" id="nQfYv_gO2R" role="lGtFl">
              <ref role="2rW$FS" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
            </node>
            <node concept="17Uvod" id="S4WnV2MEaI" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="S4WnV2MEaJ" role="3zH0cK">
                <node concept="3clFbS" id="S4WnV2MEaK" role="2VODD2">
                  <node concept="3clFbF" id="S4WnV2KXWD" role="3cqZAp">
                    <node concept="2OqwBi" id="S4WnV2KYcv" role="3clFbG">
                      <node concept="1iwH7S" id="S4WnV2KXWB" role="2Oq$k0" />
                      <node concept="32eq0B" id="S4WnV2MBOp" role="2OqNvi">
                        <node concept="Xl_RD" id="S4WnV2MBOY" role="32eq0w">
                          <property role="Xl_RC" value="n" />
                        </node>
                        <node concept="2OqwBi" id="S4WnV2MCbR" role="32eq0x">
                          <node concept="30H73N" id="S4WnV2MBYz" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="S4WnV2MCrh" role="2OqNvi">
                            <node concept="1xMEDy" id="S4WnV2MCrj" role="1xVPHs">
                              <node concept="chp4Y" id="S4WnV2MCsc" role="ri$Ld">
                                <ref role="cht4Q" to="tp3r:S4WnV2LSOY" resolve="INodeBuilderContainer" />
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
          <node concept="raruj" id="64p9aapS0JH" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="7vKHTLu7NUE" role="3cqZAp">
          <node concept="2ShNRf" id="7vKHTLu7NUF" role="3clFbG">
            <node concept="1pGfFk" id="7vKHTLu7NUG" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
          <node concept="raruj" id="64p9aapS0zp" role="lGtFl" />
          <node concept="1WS0z7" id="7vKHTLu7NUI" role="lGtFl">
            <node concept="3JmXsc" id="7vKHTLu7NUJ" role="3Jn$fo">
              <node concept="3clFbS" id="7vKHTLu7NUK" role="2VODD2">
                <node concept="3clFbF" id="7vKHTLu7NUL" role="3cqZAp">
                  <node concept="2OqwBi" id="7vKHTLu7NUM" role="3clFbG">
                    <node concept="2OqwBi" id="7vKHTLu8h_n" role="2Oq$k0">
                      <node concept="30H73N" id="7vKHTLu7NUN" role="2Oq$k0" />
                      <node concept="3TrEf2" id="64p9aapS3sv" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2g69lt1_USR" role="2OqNvi">
                      <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1sPUBX" id="7vKHTLu7NUP" role="lGtFl">
            <ref role="v9R2y" to="tp3k:4ZyFrBZxoNr" resolve="NodeBuilder_value" />
            <node concept="1UUvTB" id="7vKHTLu7NUQ" role="v9R3O">
              <node concept="1UU6SM" id="7vKHTLu7NUR" role="1UU7Ll">
                <node concept="3clFbS" id="7vKHTLu7NUS" role="2VODD2">
                  <node concept="3clFbF" id="7vKHTLu7NUT" role="3cqZAp">
                    <node concept="1PxgMI" id="7vKHTLu7NUU" role="3clFbG">
                      <property role="1BlNFB" value="true" />
                      <node concept="2OqwBi" id="7vKHTLu7NUV" role="1m5AlR">
                        <node concept="30H73N" id="7vKHTLu7NUW" role="2Oq$k0" />
                        <node concept="1mfA1w" id="7vKHTLu7NUX" role="2OqNvi" />
                      </node>
                      <node concept="chp4Y" id="7vKHTLu7NUY" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
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
  <node concept="jVnub" id="7KQFBrExfYI">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="PatternSwitchCase_switchType" />
    <node concept="3aamgX" id="7KQFBrExfYJ" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:1tcvH6b5INW" resolve="LocalPatternReference" />
      <node concept="1Koe21" id="7KQFBrExfYK" role="1lVwrX">
        <node concept="9aQIb" id="7KQFBrExfYL" role="1Koe22">
          <node concept="3clFbS" id="7KQFBrExfYM" role="9aQI4">
            <node concept="3cpWs8" id="7KQFBrExiDh" role="3cqZAp">
              <node concept="3cpWsn" id="7KQFBrExiDi" role="3cpWs9">
                <property role="TrG5h" value="t" />
                <node concept="3uibUv" id="7KQFBrExiDj" role="1tU5fm">
                  <ref role="3uigEE" node="7KQFBrEtVAb" resolve="GeneratedPattern" />
                  <node concept="raruj" id="7KQFBrExiPZ" role="lGtFl" />
                  <node concept="1ZhdrF" id="7KQFBrExiQ0" role="lGtFl">
                    <property role="2qtEX8" value="classifier" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107535904670/1107535924139" />
                    <node concept="3$xsQk" id="7KQFBrExiQ1" role="3$ytzL">
                      <node concept="3clFbS" id="7KQFBrExiQ2" role="2VODD2">
                        <node concept="3clFbF" id="7KQFBrExiSb" role="3cqZAp">
                          <node concept="2OqwBi" id="7KQFBrExiSc" role="3clFbG">
                            <node concept="1iwH7S" id="7KQFBrExiSd" role="2Oq$k0" />
                            <node concept="1iwH70" id="7KQFBrExiSe" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="7KQFBrExjKM" role="1iwH7V">
                                <node concept="2OqwBi" id="7KQFBrExiSf" role="2Oq$k0">
                                  <node concept="30H73N" id="7KQFBrExiSg" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7KQFBrExjwH" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:1tcvH6b5INX" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="7KQFBrExkkq" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:53SOuJl2VUN" resolve="pattern" />
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
    <node concept="3aamgX" id="7KQFBrExg0t" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:7KQFBrEtJoV" resolve="InlinePatternProvider" />
      <node concept="1Koe21" id="7KQFBrExlMQ" role="1lVwrX">
        <node concept="9aQIb" id="7KQFBrExlMR" role="1Koe22">
          <node concept="3clFbS" id="7KQFBrExlMS" role="9aQI4">
            <node concept="3cpWs8" id="7KQFBrExlMT" role="3cqZAp">
              <node concept="3cpWsn" id="7KQFBrExlMU" role="3cpWs9">
                <property role="TrG5h" value="t" />
                <node concept="3uibUv" id="7KQFBrExlMV" role="1tU5fm">
                  <ref role="3uigEE" node="7KQFBrEtVAb" resolve="GeneratedPattern" />
                  <node concept="raruj" id="7KQFBrExlMW" role="lGtFl" />
                  <node concept="1ZhdrF" id="7KQFBrExlMX" role="lGtFl">
                    <property role="2qtEX8" value="classifier" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107535904670/1107535924139" />
                    <node concept="3$xsQk" id="7KQFBrExlMY" role="3$ytzL">
                      <node concept="3clFbS" id="7KQFBrExlMZ" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapHG9i" role="3cqZAp">
                          <node concept="2OqwBi" id="2r4rhgaC2Ds" role="3clFbG">
                            <node concept="1iwH7S" id="2r4rhgaC2p_" role="2Oq$k0" />
                            <node concept="1iwH70" id="2r4rhgaC2M$" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="2r4rhgaC3yF" role="1iwH7V">
                                <node concept="30H73N" id="2r4rhgaC3dX" role="2Oq$k0" />
                                <node concept="3TrEf2" id="2r4rhgaC3Ou" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:7KQFBrEtJoX" resolve="pattern" />
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
    <node concept="j$LIH" id="7KQFBrExg2h" role="jxRDz">
      <node concept="1lLz0L" id="7KQFBrExg2i" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="unexpected pattern provider" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2g69lt1Bjqx">
    <property role="TrG5h" value="NodeBuilderNode_ClassifierType_pattern" />
    <property role="3GE5qa" value="light" />
    <ref role="phYkn" to="tp3k:2g69lt1AUA8" resolve="NodeBuilderNode_ClassifierType" />
    <node concept="3aamgX" id="2g69lt1Bjqy" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
      <node concept="gft3U" id="2g69lt1BkDm" role="1lVwrX">
        <node concept="3uibUv" id="2g69lt1BkE4" role="gfFT$">
          <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
        </node>
      </node>
      <node concept="30G5F_" id="2g69lt1BjqA" role="30HLyM">
        <node concept="3clFbS" id="2g69lt1BjqB" role="2VODD2">
          <node concept="3clFbF" id="2g69lt1Bjuz" role="3cqZAp">
            <node concept="2OqwBi" id="2g69lt1Bkh_" role="3clFbG">
              <node concept="2OqwBi" id="2g69lt1BjIn" role="2Oq$k0">
                <node concept="30H73N" id="2g69lt1Bjuy" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2g69lt1BjYJ" role="2OqNvi">
                  <node concept="1xMEDy" id="2g69lt1BjYL" role="1xVPHs">
                    <node concept="chp4Y" id="2g69lt1BjZF" role="ri$Ld">
                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="2g69lt1Bkwi" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="64p9aapYtic">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="DataType_default" />
    <node concept="3aamgX" id="64p9aapYtid" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
      <node concept="gft3U" id="64p9aapYuKF" role="1lVwrX">
        <node concept="10Nm6u" id="64p9aapYuPt" role="gfFT$" />
      </node>
      <node concept="30G5F_" id="64p9aapYtiX" role="30HLyM">
        <node concept="3clFbS" id="64p9aapYtiY" role="2VODD2">
          <node concept="3clFbF" id="64p9aapYtmU" role="3cqZAp">
            <node concept="2OqwBi" id="64p9aapYuiw" role="3clFbG">
              <node concept="30H73N" id="64p9aapYtmT" role="2Oq$k0" />
              <node concept="1QLmlb" id="64p9aapYu_E" role="2OqNvi">
                <node concept="ZC_QK" id="64p9aapYuJD" role="1QLmnL">
                  <ref role="2aWVGs" to="tpck:fKAOsGN" resolve="string" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="64p9aapYvus" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
      <node concept="gft3U" id="64p9aapYvut" role="1lVwrX">
        <node concept="3cmrfG" id="64p9aapYwsc" role="gfFT$">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
      <node concept="30G5F_" id="64p9aapYvuv" role="30HLyM">
        <node concept="3clFbS" id="64p9aapYvuw" role="2VODD2">
          <node concept="3clFbF" id="64p9aapYvux" role="3cqZAp">
            <node concept="2OqwBi" id="64p9aapYvuy" role="3clFbG">
              <node concept="30H73N" id="64p9aapYvuz" role="2Oq$k0" />
              <node concept="1QLmlb" id="64p9aapYvu$" role="2OqNvi">
                <node concept="ZC_QK" id="64p9aapYvCV" role="1QLmnL">
                  <ref role="2aWVGs" to="tpck:fKAQMTA" resolve="integer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="64p9aapYvLj" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:fKQkHSB" resolve="PrimitiveDataTypeDeclaration" />
      <node concept="gft3U" id="64p9aapYvLk" role="1lVwrX">
        <node concept="3clFbT" id="64p9aapYwsm" role="gfFT$" />
      </node>
      <node concept="30G5F_" id="64p9aapYvLm" role="30HLyM">
        <node concept="3clFbS" id="64p9aapYvLn" role="2VODD2">
          <node concept="3clFbF" id="64p9aapYvLo" role="3cqZAp">
            <node concept="2OqwBi" id="64p9aapYvLp" role="3clFbG">
              <node concept="30H73N" id="64p9aapYvLq" role="2Oq$k0" />
              <node concept="1QLmlb" id="64p9aapYvLr" role="2OqNvi">
                <node concept="ZC_QK" id="64p9aapYvXr" role="1QLmnL">
                  <ref role="2aWVGs" to="tpck:fKAQMTB" resolve="boolean" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="64p9aapYtih" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
      <node concept="gft3U" id="64p9aapYuPy" role="1lVwrX">
        <node concept="10Nm6u" id="64p9aapYuPz" role="gfFT$" />
      </node>
    </node>
    <node concept="3aamgX" id="64p9aapYtin" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
      <node concept="gft3U" id="64p9aapYuPD" role="1lVwrX">
        <node concept="10Nm6u" id="64p9aapYuPE" role="gfFT$" />
      </node>
    </node>
    <node concept="j$LIH" id="64p9aapYwgM" role="jxRDz">
      <node concept="1lLz0L" id="64p9aapYws8" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="unexpected datatype" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="64p9aapY$ge">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="PatternBuilderVariable_default" />
    <node concept="3aamgX" id="64p9aapY_4r" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:63LzO9stD_y" resolve="PatternVariableProperty" />
      <node concept="gft3U" id="64p9aapY_V_" role="1lVwrX">
        <node concept="10Nm6u" id="64p9aapY_Wc" role="gfFT$">
          <node concept="1sPUBX" id="64p9aapY_Wm" role="lGtFl">
            <ref role="v9R2y" node="64p9aapYtic" resolve="DataType_default" />
            <node concept="3NFfHV" id="64p9aapY_Wu" role="1sPUBK">
              <node concept="3clFbS" id="64p9aapY_Wv" role="2VODD2">
                <node concept="3clFbF" id="64p9aapY_WA" role="3cqZAp">
                  <node concept="2OqwBi" id="64p9aapYAVs" role="3clFbG">
                    <node concept="2OqwBi" id="64p9aapYAmR" role="2Oq$k0">
                      <node concept="1PxgMI" id="64p9aapYAbG" role="2Oq$k0">
                        <node concept="chp4Y" id="64p9aapYAcF" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                        </node>
                        <node concept="2OqwBi" id="64p9aapYA1m" role="1m5AlR">
                          <node concept="30H73N" id="64p9aapY_W_" role="2Oq$k0" />
                          <node concept="1mfA1w" id="64p9aapYA4q" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="64p9aapYAxN" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="64p9aapYBgI" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="64p9aapY_4v" role="30HLyM">
        <node concept="3clFbS" id="64p9aapY_4w" role="2VODD2">
          <node concept="3clFbF" id="64p9aapY_8s" role="3cqZAp">
            <node concept="2OqwBi" id="64p9aapY_p2" role="3clFbG">
              <node concept="30H73N" id="64p9aapY_8r" role="2Oq$k0" />
              <node concept="1BlSNk" id="64p9aapY_Ff" role="2OqNvi">
                <ref role="1BmUXE" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                <ref role="1Bn3mz" to="tp3r:1o$2SUuutyh" resolve="initValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="4IBroifFLrc" role="jxRDz">
      <node concept="10Nm6u" id="4IBroifFLrS" role="gfFT$" />
    </node>
  </node>
  <node concept="13MO4I" id="2g69lt1_GCm">
    <property role="TrG5h" value="reduce_PatternBuilder_Class" />
    <property role="3GE5qa" value="light" />
    <ref role="3gUMe" to="tp3t:53SOuJl2VUK" resolve="PatternBuilderClassifierMember" />
    <node concept="312cEu" id="2g69lt1_GCq" role="13RCb5">
      <property role="TrG5h" value="GeneratedPattern" />
      <node concept="3Tm1VV" id="76wO7zg7_Rv" role="1B3o_S" />
      <node concept="3uibUv" id="2g69lt1_H13" role="1zkMxy">
        <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
      </node>
      <node concept="3clFb_" id="4IBroifHJ55" role="jymVt">
        <property role="TrG5h" value="match" />
        <node concept="3Tm1VV" id="4IBroifHJ56" role="1B3o_S" />
        <node concept="10P_77" id="4IBroifHJ57" role="3clF45" />
        <node concept="37vLTG" id="4IBroifHJ58" role="3clF46">
          <property role="TrG5h" value="nodeToMatch" />
          <node concept="3uibUv" id="4IBroifHJ59" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2ZBi8u" id="4IBroifIq_f" role="lGtFl">
            <ref role="2rW$FS" node="4IBroifH9ag" resolve="nodeToMatchVariableL" />
          </node>
        </node>
        <node concept="3clFbS" id="4IBroifHJ5a" role="3clF47">
          <node concept="3cpWs8" id="64p9aapTuEv" role="3cqZAp">
            <node concept="3cpWsn" id="64p9aapTuEw" role="3cpWs9">
              <property role="TrG5h" value="externalExpression" />
              <node concept="10Nm6u" id="64p9aapTxcy" role="33vP2m">
                <node concept="29HgVG" id="64p9aapTxzf" role="lGtFl">
                  <node concept="3NFfHV" id="64p9aapTxAk" role="3NFExx">
                    <node concept="3clFbS" id="64p9aapTxAl" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapTxDP" role="3cqZAp">
                        <node concept="30H73N" id="64p9aapTxDO" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="64p9aapTwkJ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                <node concept="1sPUBX" id="64p9aapTwkK" role="lGtFl">
                  <ref role="v9R2y" to="tp3k:6XhBjWIJ4YS" resolve="NodeBuilderExternalParameterType" />
                  <node concept="3NFfHV" id="64p9aapTwkL" role="1sPUBK">
                    <node concept="3clFbS" id="64p9aapTwkM" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapTwkN" role="3cqZAp">
                        <node concept="30H73N" id="64p9aapTwkO" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="64p9aapTwuR" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="64p9aapTwuS" role="3zH0cK">
                  <node concept="3clFbS" id="64p9aapTwuT" role="2VODD2">
                    <node concept="3clFbF" id="64p9aapTwAZ" role="3cqZAp">
                      <node concept="3cpWs3" id="64p9aapTwB0" role="3clFbG">
                        <node concept="$GB7w" id="2wfHeYRCkcd" role="3uHU7w">
                          <property role="26SvY3" value="1jlY2aid0uu/index" />
                        </node>
                        <node concept="Xl_RD" id="64p9aapTwB4" role="3uHU7B">
                          <property role="Xl_RC" value="p" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZBi8u" id="64p9aapUkzx" role="lGtFl">
                <ref role="2rW$FS" to="tp3k:hG0dD_T" resolve="parametersFromExpressionsL" />
              </node>
            </node>
            <node concept="1WS0z7" id="64p9aapTuTR" role="lGtFl">
              <node concept="3JmXsc" id="64p9aapTuTU" role="3Jn$fo">
                <node concept="3clFbS" id="64p9aapTuTV" role="2VODD2">
                  <node concept="3clFbF" id="64p9aapTuU1" role="3cqZAp">
                    <node concept="2OqwBi" id="64p9aapTvD4" role="3clFbG">
                      <node concept="2OqwBi" id="64p9aapTuTW" role="2Oq$k0">
                        <node concept="3TrEf2" id="64p9aapTvk8" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                        </node>
                        <node concept="30H73N" id="64p9aapTuU0" role="2Oq$k0" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORfT0" role="2OqNvi">
                        <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="64p9aapS4d7" role="3cqZAp">
            <node concept="3cpWsn" id="64p9aapS4da" role="3cpWs9">
              <property role="TrG5h" value="rootBuilder" />
              <node concept="3uibUv" id="64p9aapS4db" role="1tU5fm">
                <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
              </node>
              <node concept="10Nm6u" id="64p9aapS58L" role="33vP2m" />
            </node>
            <node concept="5jKBG" id="64p9aapS5nM" role="lGtFl">
              <ref role="v9R2y" node="64p9aapRYX7" resolve="PatternBuilder_constructorBody" />
            </node>
          </node>
          <node concept="3clFbF" id="4ECTF8UOO6j" role="3cqZAp">
            <node concept="1rXfSq" id="4ECTF8UOO6h" role="3clFbG">
              <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.setMatcher(jetbrains.mps.lang.pattern.NodeMatcherBuilder$NodeMatcher)" resolve="setMatcher" />
              <node concept="2OqwBi" id="1vKiq7cpBUe" role="37wK5m">
                <node concept="37vLTw" id="2g69lt1AisA" role="2Oq$k0">
                  <ref role="3cqZAo" node="64p9aapS4da" resolve="rootBuilder" />
                  <node concept="1ZhdrF" id="64p9aapRXjJ" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="64p9aapRXjK" role="3$ytzL">
                      <node concept="3clFbS" id="64p9aapRXjL" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapRXmy" role="3cqZAp">
                          <node concept="2OqwBi" id="64p9aapRX$p" role="3clFbG">
                            <node concept="1iwH7S" id="64p9aapRXmx" role="2Oq$k0" />
                            <node concept="1iwH70" id="64p9aapRXCA" role="2OqNvi">
                              <ref role="1iwH77" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="64p9aapRXTy" role="1iwH7V">
                                <node concept="30H73N" id="64p9aapRXMj" role="2Oq$k0" />
                                <node concept="3TrEf2" id="64p9aapRY46" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2g69lt1_VxV" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.getMatcher()" resolve="getMatcher" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4IBroifHJ5b" role="3cqZAp">
            <node concept="1Wc70l" id="4IBroifHJ5c" role="3cqZAk">
              <node concept="3nyPlj" id="4IBroifHJ5d" role="3uHU7w">
                <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                <node concept="37vLTw" id="4IBroifHJ5e" role="37wK5m">
                  <ref role="3cqZAo" node="4IBroifHJ58" resolve="nodeToMatch" />
                </node>
              </node>
              <node concept="1rXfSq" id="4IBroifHJ5f" role="3uHU7B">
                <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.checkNotNull(java.util.Optional...)" resolve="checkNotNull" />
                <node concept="1rXfSq" id="4IBroifHJ5g" role="37wK5m">
                  <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                  <node concept="37vLTw" id="4IBroifHJ5h" role="37wK5m">
                    <ref role="3cqZAo" node="4IBroifHJ58" resolve="nodeToMatch" />
                  </node>
                  <node concept="1WS0z7" id="4IBroifHJ5i" role="lGtFl">
                    <node concept="3JmXsc" id="4IBroifHJ5j" role="3Jn$fo">
                      <node concept="3clFbS" id="4IBroifHJ5k" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifHJ5l" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifHJ5m" role="3clFbG">
                            <node concept="2OqwBi" id="4IBroifHJ5n" role="2Oq$k0">
                              <node concept="2OqwBi" id="4IBroifHJ5o" role="2Oq$k0">
                                <node concept="30H73N" id="4IBroifHJ5p" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4IBroifHJ5q" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORfT2" role="2OqNvi">
                                <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                              </node>
                            </node>
                            <node concept="3goQfb" id="4IBroifHJ5s" role="2OqNvi">
                              <node concept="1bVj0M" id="4IBroifHJ5t" role="23t8la">
                                <node concept="3clFbS" id="4IBroifHJ5u" role="1bW5cS">
                                  <node concept="3clFbF" id="4IBroifHJ5v" role="3cqZAp">
                                    <node concept="2OqwBi" id="4IBroifHJ5w" role="3clFbG">
                                      <node concept="37vLTw" id="4IBroifHJ5x" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0Wll" resolve="it" />
                                      </node>
                                      <node concept="2Rf3mk" id="4IBroifHJ5y" role="2OqNvi">
                                        <node concept="1xIGOp" id="4IBroifHJ5z" role="1xVPHs" />
                                        <node concept="1xMEDy" id="4IBroifHJ5$" role="1xVPHs">
                                          <node concept="chp4Y" id="4IBroifHJ5_" role="ri$Ld">
                                            <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0Wll" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="5W7E4fV0Wlm" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="4IBroifHJ5C" role="lGtFl">
                    <property role="2qtEX8" value="baseMethodDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                    <node concept="3$xsQk" id="4IBroifHJ5D" role="3$ytzL">
                      <node concept="3clFbS" id="4IBroifHJ5E" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifHJ5F" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifHJ5G" role="3clFbG">
                            <node concept="1iwH7S" id="4IBroifHJ5H" role="2Oq$k0" />
                            <node concept="1iwH70" id="4IBroifHJ5I" role="2OqNvi">
                              <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                              <node concept="2OqwBi" id="4IBroifHJ5J" role="1iwH7V">
                                <node concept="30H73N" id="4IBroifHJ5K" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4IBroifHJ5L" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
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
              <node concept="1W57fq" id="4IBroifHROI" role="lGtFl">
                <node concept="3IZrLx" id="4IBroifHROJ" role="3IZSJc">
                  <node concept="3clFbS" id="4IBroifHROK" role="2VODD2">
                    <node concept="3clFbF" id="4IBroifHJ5Q" role="3cqZAp">
                      <node concept="2OqwBi" id="4IBroifHJ5R" role="3clFbG">
                        <node concept="2OqwBi" id="4IBroifHJ5S" role="2Oq$k0">
                          <node concept="2OqwBi" id="4IBroifHJ5T" role="2Oq$k0">
                            <node concept="2OqwBi" id="4IBroifHJ5U" role="2Oq$k0">
                              <node concept="30H73N" id="4IBroifHJ5V" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4IBroifHJ5W" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="70OdufORfT4" role="2OqNvi">
                              <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                            </node>
                          </node>
                          <node concept="3goQfb" id="4IBroifHJ5Y" role="2OqNvi">
                            <node concept="1bVj0M" id="4IBroifHJ5Z" role="23t8la">
                              <node concept="3clFbS" id="4IBroifHJ60" role="1bW5cS">
                                <node concept="3clFbF" id="4IBroifHJ61" role="3cqZAp">
                                  <node concept="2OqwBi" id="4IBroifHJ62" role="3clFbG">
                                    <node concept="37vLTw" id="4IBroifHJ63" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Wln" resolve="it" />
                                    </node>
                                    <node concept="2Rf3mk" id="4IBroifHJ64" role="2OqNvi">
                                      <node concept="1xIGOp" id="4IBroifHJ65" role="1xVPHs" />
                                      <node concept="1xMEDy" id="4IBroifHJ66" role="1xVPHs">
                                        <node concept="chp4Y" id="4IBroifHJ67" role="ri$Ld">
                                          <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0Wln" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0Wlo" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3GX2aA" id="4IBroifHJ6a" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gft3U" id="4IBroifHT2J" role="UU_$l">
                  <node concept="3nyPlj" id="4IBroifHUuF" role="gfFT$">
                    <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                    <node concept="37vLTw" id="4IBroifHUuG" role="37wK5m">
                      <ref role="3cqZAo" node="4IBroifHJ58" resolve="nodeToMatch" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4IBroifHJ5M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2YIFZL" id="gc7z5AJmN0" role="jymVt">
        <property role="TrG5h" value="getVar" />
        <node concept="3clFbS" id="1Hz5j8LNe3P" role="3clF47">
          <node concept="3cpWs6" id="1Hz5j8LNe3S" role="3cqZAp">
            <node concept="10Nm6u" id="1Hz5j8LNmXo" role="3cqZAk" />
          </node>
        </node>
        <node concept="37vLTG" id="1Hz5j8LOQze" role="3clF46">
          <property role="TrG5h" value="rootNode" />
          <node concept="3uibUv" id="1Hz5j8LOSDb" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1Hz5j8LNe44" role="1B3o_S" />
        <node concept="3uibUv" id="64p9aapQdSM" role="3clF45">
          <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
          <node concept="3uibUv" id="64p9aapQgHP" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="5jKBG" id="64p9aapOo4i" role="lGtFl">
          <ref role="v9R2y" node="64p9aapO2$9" resolve="PatternBuilder_getterMethods" />
          <node concept="3NFfHV" id="64p9aapOqkD" role="5jGum">
            <node concept="3clFbS" id="64p9aapOqkE" role="2VODD2">
              <node concept="3clFbF" id="64p9aapOqlg" role="3cqZAp">
                <node concept="30H73N" id="64p9aapOqlf" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="3fHwAfrybDJ" role="lGtFl" />
      <node concept="17Uvod" id="3fHwAfryfLb" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="3fHwAfryfLc" role="3zH0cK">
          <node concept="3clFbS" id="3fHwAfryfLd" role="2VODD2">
            <node concept="3clFbF" id="6SIgRePaxK$" role="3cqZAp">
              <node concept="2OqwBi" id="6SIgRePayLA" role="3clFbG">
                <node concept="2OqwBi" id="6SIgRePaymO" role="2Oq$k0">
                  <node concept="1iwH7S" id="6SIgRePaxKz" role="2Oq$k0" />
                  <node concept="1psM6Z" id="6SIgRePaysj" role="2OqNvi">
                    <ref role="1psM6Y" node="64p9aapQ3fi" resolve="classMember" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfT6" role="2OqNvi">
                  <ref role="37wK5l" to="tp2b:6SIgReParNN" resolve="getGeneratedName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6XhBjWII$vY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
        <node concept="2B6LJw" id="6XhBjWIIE9s" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
          <node concept="Xl_RD" id="6XhBjWIIEaU" role="2B70Vg">
            <property role="Xl_RC" value="OptionalAssignedToNull" />
          </node>
        </node>
        <node concept="1W57fq" id="64p9aap_Qg1" role="lGtFl">
          <node concept="3IZrLx" id="64p9aap_Qg2" role="3IZSJc">
            <node concept="3clFbS" id="64p9aap_Qg3" role="2VODD2">
              <node concept="3clFbF" id="64p9aap_T76" role="3cqZAp">
                <node concept="2OqwBi" id="64p9aap_VsD" role="3clFbG">
                  <node concept="2OqwBi" id="64p9aapEYig" role="2Oq$k0">
                    <node concept="2OqwBi" id="64p9aap_Tk$" role="2Oq$k0">
                      <node concept="30H73N" id="64p9aap_T75" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORfT8" role="2OqNvi">
                        <ref role="37wK5l" to="tp2b:PFUECvO1RN" resolve="getVariables" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="64p9aapEZD8" role="2OqNvi">
                      <node concept="1bVj0M" id="64p9aapEZDa" role="23t8la">
                        <node concept="3clFbS" id="64p9aapEZDb" role="1bW5cS">
                          <node concept="3clFbF" id="64p9aapEZVd" role="3cqZAp">
                            <node concept="2OqwBi" id="64p9aapEZVf" role="3clFbG">
                              <node concept="2OqwBi" id="64p9aapEZVg" role="2Oq$k0">
                                <node concept="2OqwBi" id="64p9aapEZVh" role="2Oq$k0">
                                  <node concept="2OqwBi" id="64p9aapEZVi" role="2Oq$k0">
                                    <node concept="37vLTw" id="64p9aapF0v9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Wlr" resolve="var" />
                                    </node>
                                    <node concept="2Xjw5R" id="64p9aapEZVk" role="2OqNvi">
                                      <node concept="1xMEDy" id="64p9aapEZVl" role="1xVPHs">
                                        <node concept="chp4Y" id="64p9aapEZVm" role="ri$Ld">
                                          <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2Rf3mk" id="64p9aapEZVn" role="2OqNvi">
                                    <node concept="1xMEDy" id="64p9aapEZVo" role="1xVPHs">
                                      <node concept="chp4Y" id="64p9aapEZVp" role="ri$Ld">
                                        <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3zZkjj" id="64p9aapEZVq" role="2OqNvi">
                                  <node concept="1bVj0M" id="64p9aapEZVr" role="23t8la">
                                    <node concept="3clFbS" id="64p9aapEZVs" role="1bW5cS">
                                      <node concept="3clFbF" id="64p9aapEZVt" role="3cqZAp">
                                        <node concept="3clFbC" id="64p9aapEZVu" role="3clFbG">
                                          <node concept="37vLTw" id="64p9aapF0Vd" role="3uHU7w">
                                            <ref role="3cqZAo" node="5W7E4fV0Wlr" resolve="var" />
                                          </node>
                                          <node concept="2OqwBi" id="64p9aapEZVw" role="3uHU7B">
                                            <node concept="37vLTw" id="64p9aapEZVx" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5W7E4fV0Wlp" resolve="it" />
                                            </node>
                                            <node concept="3TrEf2" id="64p9aapEZVy" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="gl6BB" id="5W7E4fV0Wlp" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="5W7E4fV0Wlq" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3GX2aA" id="64p9aapEZV_" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wlr" role="1bW2Oz">
                          <property role="TrG5h" value="var" />
                          <node concept="2jxLKc" id="5W7E4fV0Wls" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="64p9aap_WOm" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1ps_y7" id="64p9aapQ3fh" role="lGtFl">
        <node concept="1ps_xZ" id="64p9aapQ3fi" role="1ps_xO">
          <property role="TrG5h" value="classMember" />
          <node concept="2jfdEK" id="64p9aapQ3fj" role="1ps_xN">
            <node concept="3clFbS" id="64p9aapQ3fk" role="2VODD2">
              <node concept="3clFbF" id="64p9aapQ4EP" role="3cqZAp">
                <node concept="30H73N" id="64p9aapQ4EO" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1pdMLZ" id="64p9aapPSOM" role="lGtFl">
        <ref role="2rW$FS" node="7KQFBrEx8w7" resolve="patternClassL" />
        <node concept="3NFfHV" id="64p9aapPTDp" role="31$UT">
          <node concept="3clFbS" id="64p9aapPTDq" role="2VODD2">
            <node concept="3clFbF" id="64p9aapPTDz" role="3cqZAp">
              <node concept="2OqwBi" id="64p9aapPV5p" role="3clFbG">
                <node concept="30H73N" id="64p9aapPTDy" role="2Oq$k0" />
                <node concept="3TrEf2" id="64p9aapPWE9" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3t:53SOuJl2VUN" resolve="pattern" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1tcvH6a$uCZ">
    <property role="3GE5qa" value="light" />
    <property role="TrG5h" value="NodeBuilder_childInit_pattern" />
    <ref role="phYkn" to="tp3k:7vKHTLu4rZM" resolve="NodeBuilder_childInit" />
    <node concept="1N15co" id="7vKHTLu4rZN" role="1s_3oS">
      <property role="TrG5h" value="targetConcept" />
      <node concept="3Tqbb2" id="7vKHTLu4rZO" role="1N15GL">
        <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
    <node concept="1N15co" id="7vKHTLu4rZT" role="1s_3oS">
      <property role="TrG5h" value="allowNull" />
      <node concept="3uibUv" id="7vKHTLu5MV1" role="1N15GL">
        <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
        <node concept="3uibUv" id="7vKHTLu5N7I" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7vKHTLu4rZX" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:2g69lt1BJHK" resolve="PatternVariableNode" />
      <node concept="1Koe21" id="7vKHTLu4rZY" role="1lVwrX">
        <node concept="3clFb_" id="7vKHTLu4rZZ" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="7vKHTLu4s00" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="7vKHTLu4s01" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="7vKHTLu4s02" role="3clF47">
            <node concept="3cpWs8" id="1tcvH6a$yKX" role="3cqZAp">
              <node concept="3cpWsn" id="1tcvH6a$yKY" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1tcvH6a$zwK" role="1tU5fm">
                  <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
                </node>
                <node concept="2ShNRf" id="1tcvH6a$Est" role="33vP2m">
                  <node concept="1pGfFk" id="1tcvH6a$Ess" role="2ShVmc">
                    <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.&lt;init&gt;()" resolve="NodeMatcherBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1tcvH6a$$K2" role="3cqZAp">
              <node concept="2OqwBi" id="1tcvH6a$_0B" role="3clFbG">
                <node concept="37vLTw" id="1tcvH6a$$K0" role="2Oq$k0">
                  <ref role="3cqZAo" node="1tcvH6a$yKY" resolve="builder" />
                </node>
                <node concept="liA8E" id="1tcvH6a$Cxh" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.init(jetbrains.mps.lang.pattern.NodeMatcherBuilder$NodeMatcher)" resolve="init" />
                  <node concept="2ShNRf" id="1tcvH6a$Cxi" role="37wK5m">
                    <node concept="1pGfFk" id="1tcvH6a$Cxj" role="2ShVmc">
                      <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder$NodeWildcardMatcher.&lt;init&gt;(boolean)" resolve="NodeMatcherBuilder.NodeWildcardMatcher" />
                      <node concept="3clFbT" id="1h7oXxydVWe" role="37wK5m">
                        <node concept="17Uvod" id="1h7oXxydW0x" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                          <node concept="3zFVjK" id="1h7oXxydW0y" role="3zH0cK">
                            <node concept="3clFbS" id="1h7oXxydW0z" role="2VODD2">
                              <node concept="3clFbF" id="1h7oXxye5lh" role="3cqZAp">
                                <node concept="2OqwBi" id="1h7oXxye5Cm" role="3clFbG">
                                  <node concept="v3LJS" id="1h7oXxye5ld" role="2Oq$k0">
                                    <ref role="v3LJV" node="7vKHTLu4rZT" resolve="allowNull" />
                                  </node>
                                  <node concept="liA8E" id="1h7oXxye5NU" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="1tcvH6a$CH9" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="7vKHTLu4s29" role="3clF45" />
          <node concept="3Tm1VV" id="7vKHTLu4s2a" role="1B3o_S" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="1tcvH6b5JfY">
    <property role="3GE5qa" value="switch" />
    <property role="TrG5h" value="PatternSwitchCase_switch" />
    <node concept="3aamgX" id="1tcvH6b5JfZ" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:1tcvH6b5INW" resolve="LocalPatternReference" />
      <node concept="1Koe21" id="1tcvH6b5K0P" role="1lVwrX">
        <node concept="9aQIb" id="1tcvH6b5K0V" role="1Koe22">
          <node concept="3clFbS" id="1tcvH6b5K0W" role="9aQI4">
            <node concept="3clFbF" id="4IBroifIUQF" role="3cqZAp">
              <node concept="2ShNRf" id="4IBroifIUQB" role="3clFbG">
                <node concept="HV5vD" id="4IBroifIWuz" role="2ShVmc">
                  <ref role="HV5vE" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                  <node concept="1ZhdrF" id="4IBroifIYaH" role="lGtFl">
                    <property role="2qtEX8" value="classifier" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/2820489544401957797/2820489544401957798" />
                    <node concept="3$xsQk" id="4IBroifIYaI" role="3$ytzL">
                      <node concept="3clFbS" id="4IBroifIYaJ" role="2VODD2">
                        <node concept="3clFbF" id="4IBroifIYkl" role="3cqZAp">
                          <node concept="2OqwBi" id="4IBroifIYkm" role="3clFbG">
                            <node concept="1iwH7S" id="4IBroifIYkn" role="2Oq$k0" />
                            <node concept="1iwH70" id="4IBroifIYko" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="4IBroifIYkp" role="1iwH7V">
                                <node concept="2OqwBi" id="4IBroifIYkq" role="2Oq$k0">
                                  <node concept="3TrEf2" id="4IBroifIYkr" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:1tcvH6b5INX" resolve="declaration" />
                                  </node>
                                  <node concept="30H73N" id="4IBroifIYks" role="2Oq$k0" />
                                </node>
                                <node concept="3TrEf2" id="4IBroifIYkt" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:53SOuJl2VUN" resolve="pattern" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="4IBroifIYew" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4d7byJt6MK0" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:6SIgReP4RfS" resolve="ExpressionPatternProvider" />
      <node concept="1Koe21" id="4d7byJt6MK1" role="1lVwrX">
        <node concept="9aQIb" id="4d7byJt6MK2" role="1Koe22">
          <node concept="3clFbS" id="4d7byJt6MK3" role="9aQI4">
            <node concept="3clFbF" id="4d7byJt6MK4" role="3cqZAp">
              <node concept="2ShNRf" id="4d7byJt6MK5" role="3clFbG">
                <node concept="HV5vD" id="4d7byJt6MK6" role="2ShVmc">
                  <ref role="HV5vE" node="2g69lt1_GCq" resolve="GeneratedPattern" />
                  <node concept="1ZhdrF" id="4d7byJt6MK7" role="lGtFl">
                    <property role="2qtEX8" value="classifier" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/2820489544401957797/2820489544401957798" />
                    <node concept="3$xsQk" id="4d7byJt6MK8" role="3$ytzL">
                      <node concept="3clFbS" id="4d7byJt6MK9" role="2VODD2">
                        <node concept="3clFbF" id="4d7byJt6MKa" role="3cqZAp">
                          <node concept="2OqwBi" id="4d7byJt6MKb" role="3clFbG">
                            <node concept="1iwH7S" id="4d7byJt6MKc" role="2Oq$k0" />
                            <node concept="1iwH70" id="4d7byJt6MKd" role="2OqNvi">
                              <ref role="1iwH77" node="7KQFBrEx8w7" resolve="patternClassL" />
                              <node concept="2OqwBi" id="4d7byJt6MKe" role="1iwH7V">
                                <node concept="2OqwBi" id="4d7byJt6MKf" role="2Oq$k0">
                                  <node concept="3TrEf2" id="76wO7zg6DrO" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:6SIgReP4Tzk" resolve="pattern" />
                                  </node>
                                  <node concept="1PxgMI" id="76wO7zg6D7R" role="2Oq$k0">
                                    <node concept="chp4Y" id="76wO7zg6D9U" role="3oSUPX">
                                      <ref role="cht4Q" to="tp3t:6SIgReP4Tro" resolve="QualifiedPatternReference" />
                                    </node>
                                    <node concept="2OqwBi" id="76wO7zg6CwV" role="1m5AlR">
                                      <node concept="30H73N" id="4d7byJt6MKh" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="76wO7zg6CIi" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3t:6SIgReP4RfT" resolve="expression" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="4d7byJt6Y7k" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3t:53SOuJl2VUN" resolve="pattern" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="4d7byJt6MKj" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4d7byJt7op$" role="30HLyM">
        <node concept="3clFbS" id="4d7byJt7op_" role="2VODD2">
          <node concept="3clFbF" id="4d7byJt7r6R" role="3cqZAp">
            <node concept="2OqwBi" id="4d7byJt7rG9" role="3clFbG">
              <node concept="2OqwBi" id="4d7byJt7rkl" role="2Oq$k0">
                <node concept="30H73N" id="4d7byJt7r6Q" role="2Oq$k0" />
                <node concept="3TrEf2" id="4d7byJt7rws" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3t:6SIgReP4RfT" resolve="expression" />
                </node>
              </node>
              <node concept="1mIQ4w" id="4d7byJt7rUr" role="2OqNvi">
                <node concept="chp4Y" id="4d7byJt7rX5" role="cj9EA">
                  <ref role="cht4Q" to="tp3t:6SIgReP4Tro" resolve="QualifiedPatternReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7KQFBrEtK4s" role="3aUrZf">
      <ref role="30HIoZ" to="tp3t:7KQFBrEtJoV" resolve="InlinePatternProvider" />
      <node concept="1Koe21" id="7KQFBrEtKIP" role="1lVwrX">
        <node concept="9aQIb" id="7KQFBrEtKIQ" role="1Koe22">
          <node concept="3clFbS" id="7KQFBrEtKIR" role="9aQI4">
            <node concept="3clFbF" id="7KQFBrEtV7$" role="3cqZAp">
              <node concept="15s5l7" id="64p9aapXdSV" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  GeneratedPattern(Object) (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643458]&quot;;" />
                <property role="huDt6" value="The reference  GeneratedPattern(Object) (baseMethodDeclaration) is out of search scope" />
              </node>
              <node concept="Gg0VW" id="7KQFBrEtV7t" role="3clFbG">
                <node concept="267m8k" id="7KQFBrEtVAb" role="Gg0VX">
                  <property role="2bfB8j" value="true" />
                  <property role="TrG5h" value="GeneratedPattern" />
                  <node concept="3clFbW" id="4vkApmqbhNt" role="jymVt">
                    <node concept="37vLTG" id="PFUECvRgTj" role="3clF46">
                      <property role="TrG5h" value="param" />
                      <node concept="17Uvod" id="PFUECvRgTl" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="PFUECvRgTm" role="3zH0cK">
                          <node concept="3clFbS" id="PFUECvRgTn" role="2VODD2">
                            <node concept="3clFbF" id="PFUECvRgTo" role="3cqZAp">
                              <node concept="3cpWs3" id="PFUECvRgTp" role="3clFbG">
                                <node concept="$GB7w" id="2wfHeYRCkcg" role="3uHU7w">
                                  <property role="26SvY3" value="1jlY2aid0uu/index" />
                                </node>
                                <node concept="Xl_RD" id="PFUECvRgTt" role="3uHU7B">
                                  <property role="Xl_RC" value="p" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1WS0z7" id="PFUECvRgTv" role="lGtFl">
                        <ref role="2rW$FS" to="tp3k:hG0dD_T" resolve="parametersFromExpressionsL" />
                        <node concept="3JmXsc" id="PFUECvRgTw" role="3Jn$fo">
                          <node concept="3clFbS" id="PFUECvRgTx" role="2VODD2">
                            <node concept="3clFbF" id="PFUECvRgTy" role="3cqZAp">
                              <node concept="2OqwBi" id="PFUECvRgT$" role="3clFbG">
                                <node concept="2OqwBi" id="6XhBjWIJglV" role="2Oq$k0">
                                  <node concept="30H73N" id="PFUECvRgT_" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6XhBjWIJp9s" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORfTa" role="2OqNvi">
                                  <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="6XhBjWIISdZ" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        <node concept="1sPUBX" id="6XhBjWIJ5Yw" role="lGtFl">
                          <ref role="v9R2y" to="tp3k:6XhBjWIJ4YS" resolve="NodeBuilderExternalParameterType" />
                          <node concept="3NFfHV" id="6XhBjWIJ67A" role="1sPUBK">
                            <node concept="3clFbS" id="6XhBjWIJ67B" role="2VODD2">
                              <node concept="3clFbF" id="6XhBjWIJ6p3" role="3cqZAp">
                                <node concept="30H73N" id="6XhBjWIJ6p2" role="3clFbG" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cqZAl" id="4vkApmqbhNv" role="3clF45" />
                    <node concept="3Tm1VV" id="4vkApmqbhNw" role="1B3o_S" />
                    <node concept="3clFbS" id="4vkApmqbhNx" role="3clF47">
                      <node concept="3cpWs8" id="64p9aapSK5g" role="3cqZAp">
                        <node concept="3cpWsn" id="64p9aapSK5h" role="3cpWs9">
                          <property role="TrG5h" value="rootBuilder" />
                          <node concept="3uibUv" id="64p9aapSK5i" role="1tU5fm">
                            <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
                          </node>
                          <node concept="10Nm6u" id="64p9aapSK5j" role="33vP2m" />
                        </node>
                        <node concept="5jKBG" id="64p9aapSK5k" role="lGtFl">
                          <ref role="v9R2y" node="64p9aapRYX7" resolve="PatternBuilder_constructorBody" />
                          <node concept="3NFfHV" id="64p9aapSKfU" role="5jGum">
                            <node concept="3clFbS" id="64p9aapSKfV" role="2VODD2">
                              <node concept="3clFbF" id="64p9aapSKi6" role="3cqZAp">
                                <node concept="30H73N" id="64p9aapSKi5" role="3clFbG" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="64p9aapSK5l" role="3cqZAp">
                        <node concept="1rXfSq" id="64p9aapSK5m" role="3clFbG">
                          <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.setMatcher(jetbrains.mps.lang.pattern.NodeMatcherBuilder$NodeMatcher)" resolve="setMatcher" />
                          <node concept="2OqwBi" id="64p9aapSK5n" role="37wK5m">
                            <node concept="37vLTw" id="64p9aapSK5o" role="2Oq$k0">
                              <ref role="3cqZAo" node="64p9aapSK5h" resolve="rootBuilder" />
                              <node concept="1ZhdrF" id="64p9aapSK5p" role="lGtFl">
                                <property role="2qtEX8" value="variableDeclaration" />
                                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                                <node concept="3$xsQk" id="64p9aapSK5q" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapSK5r" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapSK5s" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapSK5t" role="3clFbG">
                                        <node concept="1iwH7S" id="64p9aapSK5u" role="2Oq$k0" />
                                        <node concept="1iwH70" id="64p9aapSK5v" role="2OqNvi">
                                          <ref role="1iwH77" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
                                          <node concept="2OqwBi" id="64p9aapSK5w" role="1iwH7V">
                                            <node concept="30H73N" id="64p9aapSK5x" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="64p9aapSKyK" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="64p9aapSK5z" role="2OqNvi">
                              <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.getMatcher()" resolve="getMatcher" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1GYwYhsnwWa" role="jymVt">
                    <property role="TrG5h" value="match" />
                    <node concept="3Tm1VV" id="1GYwYhsnwWb" role="1B3o_S" />
                    <node concept="10P_77" id="1GYwYhsnwWd" role="3clF45" />
                    <node concept="37vLTG" id="1GYwYhsnwWe" role="3clF46">
                      <property role="TrG5h" value="nodeToMatch" />
                      <node concept="3uibUv" id="1GYwYhsnwWf" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1GYwYhsnwWg" role="3clF47">
                      <node concept="3cpWs6" id="1GYwYhsouGI" role="3cqZAp">
                        <node concept="1Wc70l" id="1GYwYhsouGJ" role="3cqZAk">
                          <node concept="3nyPlj" id="1GYwYhsouHj" role="3uHU7w">
                            <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                            <node concept="37vLTw" id="1GYwYhsouHk" role="37wK5m">
                              <ref role="3cqZAo" node="1GYwYhsnwWe" resolve="nodeToMatch" />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="1GYwYhsoTSQ" role="3uHU7B">
                            <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.checkNotNull(java.util.Optional...)" resolve="checkNotNull" />
                            <node concept="1rXfSq" id="1GYwYhsoTSR" role="37wK5m">
                              <ref role="37wK5l" node="gc7z5AJmN0" resolve="getVar" />
                              <node concept="37vLTw" id="1GYwYhsoTSS" role="37wK5m">
                                <ref role="3cqZAo" node="1GYwYhsnwWe" resolve="nodeToMatch" />
                              </node>
                              <node concept="1WS0z7" id="1GYwYhsoTST" role="lGtFl">
                                <node concept="3JmXsc" id="1GYwYhsoTSU" role="3Jn$fo">
                                  <node concept="3clFbS" id="1GYwYhsoTSV" role="2VODD2">
                                    <node concept="3clFbF" id="1GYwYhsoTSW" role="3cqZAp">
                                      <node concept="2OqwBi" id="1GYwYhsoTSX" role="3clFbG">
                                        <node concept="2OqwBi" id="1GYwYhsoTSY" role="2Oq$k0">
                                          <node concept="2OqwBi" id="1GYwYhsoTSZ" role="2Oq$k0">
                                            <node concept="30H73N" id="1GYwYhsoTT0" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="1GYwYhsoTT1" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                            </node>
                                          </node>
                                          <node concept="3zqWPK" id="70OdufORfTc" role="2OqNvi">
                                            <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                                          </node>
                                        </node>
                                        <node concept="3goQfb" id="1GYwYhsoTT3" role="2OqNvi">
                                          <node concept="1bVj0M" id="1GYwYhsoTT4" role="23t8la">
                                            <node concept="3clFbS" id="1GYwYhsoTT5" role="1bW5cS">
                                              <node concept="3clFbF" id="1GYwYhsoTT6" role="3cqZAp">
                                                <node concept="2OqwBi" id="1GYwYhsoTT7" role="3clFbG">
                                                  <node concept="37vLTw" id="1GYwYhsoTT8" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="5W7E4fV0Wlt" resolve="it" />
                                                  </node>
                                                  <node concept="2Rf3mk" id="1GYwYhsoTT9" role="2OqNvi">
                                                    <node concept="1xIGOp" id="1GYwYhsoTTa" role="1xVPHs" />
                                                    <node concept="1xMEDy" id="1GYwYhsoTTb" role="1xVPHs">
                                                      <node concept="chp4Y" id="1GYwYhsoTTc" role="ri$Ld">
                                                        <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="5W7E4fV0Wlt" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="5W7E4fV0Wlu" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1ZhdrF" id="1GYwYhsoTTf" role="lGtFl">
                                <property role="2qtEX8" value="baseMethodDeclaration" />
                                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                                <node concept="3$xsQk" id="1GYwYhsoTTg" role="3$ytzL">
                                  <node concept="3clFbS" id="1GYwYhsoTTh" role="2VODD2">
                                    <node concept="3clFbF" id="1GYwYhsoTTi" role="3cqZAp">
                                      <node concept="2OqwBi" id="1GYwYhsoTTj" role="3clFbG">
                                        <node concept="1iwH7S" id="1GYwYhsoTTk" role="2Oq$k0" />
                                        <node concept="1iwH70" id="1GYwYhsoTTl" role="2OqNvi">
                                          <ref role="1iwH77" node="5sDn0On8q_M" resolve="patternVarMethL" />
                                          <node concept="2OqwBi" id="1GYwYhsoTTm" role="1iwH7V">
                                            <node concept="30H73N" id="1GYwYhsoTTn" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="1GYwYhsoTTo" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
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
                    <node concept="2AHcQZ" id="1GYwYhsnwWh" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="1W57fq" id="1GYwYhsnxXm" role="lGtFl">
                      <node concept="3IZrLx" id="1GYwYhsnxXn" role="3IZSJc">
                        <node concept="3clFbS" id="1GYwYhsnxXo" role="2VODD2">
                          <node concept="3clFbF" id="1GYwYhsnyhW" role="3cqZAp">
                            <node concept="2OqwBi" id="1GYwYhsn_Jc" role="3clFbG">
                              <node concept="2OqwBi" id="1GYwYhsnzlF" role="2Oq$k0">
                                <node concept="2OqwBi" id="1GYwYhsnyTP" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1GYwYhsnyvq" role="2Oq$k0">
                                    <node concept="30H73N" id="1GYwYhsnyhV" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="1GYwYhsnyFD" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="70OdufORfTe" role="2OqNvi">
                                    <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                                  </node>
                                </node>
                                <node concept="3goQfb" id="1GYwYhsn$D_" role="2OqNvi">
                                  <node concept="1bVj0M" id="1GYwYhsn$DB" role="23t8la">
                                    <node concept="3clFbS" id="1GYwYhsn$DC" role="1bW5cS">
                                      <node concept="3clFbF" id="1GYwYhsn$KJ" role="3cqZAp">
                                        <node concept="2OqwBi" id="1GYwYhsn$SL" role="3clFbG">
                                          <node concept="37vLTw" id="1GYwYhsn$KI" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5W7E4fV0Wlv" resolve="it" />
                                          </node>
                                          <node concept="2Rf3mk" id="1GYwYhsn$Yz" role="2OqNvi">
                                            <node concept="1xIGOp" id="1GYwYhso49J" role="1xVPHs" />
                                            <node concept="1xMEDy" id="1GYwYhsn$Y_" role="1xVPHs">
                                              <node concept="chp4Y" id="1GYwYhsn_7W" role="ri$Ld">
                                                <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="gl6BB" id="5W7E4fV0Wlv" role="1bW2Oz">
                                      <property role="TrG5h" value="it" />
                                      <node concept="2jxLKc" id="5W7E4fV0Wlw" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3GX2aA" id="1GYwYhsnAfZ" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZL" id="64p9aapQVKd" role="jymVt">
                    <property role="TrG5h" value="getVar" />
                    <node concept="3clFbS" id="64p9aapQVKe" role="3clF47">
                      <node concept="3cpWs6" id="64p9aapQVKf" role="3cqZAp">
                        <node concept="10Nm6u" id="64p9aapQVKg" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="64p9aapQVKh" role="3clF46">
                      <property role="TrG5h" value="rootNode" />
                      <node concept="3uibUv" id="64p9aapQVKi" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="64p9aapQVKj" role="1B3o_S" />
                    <node concept="3uibUv" id="64p9aapQVKk" role="3clF45">
                      <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                      <node concept="3uibUv" id="64p9aapQVKl" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="5jKBG" id="64p9aapQVKm" role="lGtFl">
                      <ref role="v9R2y" node="64p9aapO2$9" resolve="PatternBuilder_getterMethods" />
                      <node concept="3NFfHV" id="64p9aapQVKn" role="5jGum">
                        <node concept="3clFbS" id="64p9aapQVKo" role="2VODD2">
                          <node concept="3clFbF" id="64p9aapQVKp" role="3cqZAp">
                            <node concept="30H73N" id="64p9aapQVKq" role="3clFbG" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm6S6" id="64p9aapWKAe" role="1B3o_S" />
                  <node concept="3uibUv" id="7KQFBrEu02J" role="1zkMxy">
                    <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                  </node>
                  <node concept="1pdMLZ" id="64p9aapLTa6" role="lGtFl">
                    <ref role="2rW$FS" node="7KQFBrEx8w7" resolve="patternClassL" />
                    <node concept="3NFfHV" id="64p9aapLTx8" role="31$UT">
                      <node concept="3clFbS" id="64p9aapLTx9" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapLTEN" role="3cqZAp">
                          <node concept="2OqwBi" id="64p9aapLTVF" role="3clFbG">
                            <node concept="30H73N" id="64p9aapLTEM" role="2Oq$k0" />
                            <node concept="3TrEf2" id="64p9aapLU9y" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:7KQFBrEtJoX" resolve="pattern" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="64p9aapGEnc" role="lGtFl">
                    <property role="2qtEX9" value="name" />
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <node concept="3zFVjK" id="64p9aapGEnd" role="3zH0cK">
                      <node concept="3clFbS" id="64p9aapGEne" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapGEQx" role="3cqZAp">
                          <node concept="2OqwBi" id="2r4rhgaCDa$" role="3clFbG">
                            <node concept="1iwH7S" id="2r4rhgaCD6g" role="2Oq$k0" />
                            <node concept="2piZGk" id="2r4rhgaCDgS" role="2OqNvi">
                              <node concept="Xl_RD" id="7KQFBrEvZ57" role="2piZGb">
                                <property role="Xl_RC" value="Pattern" />
                              </node>
                              <node concept="2OqwBi" id="2r4rhgaCJdE" role="2pr8EU">
                                <node concept="2OqwBi" id="2r4rhgaCDpd" role="2Oq$k0">
                                  <node concept="30H73N" id="2r4rhgaCDhh" role="2Oq$k0" />
                                  <node concept="z$bX8" id="2r4rhgaCDxt" role="2OqNvi">
                                    <node concept="1xMEDy" id="2r4rhgaCECJ" role="1xVPHs">
                                      <node concept="chp4Y" id="2r4rhgaCEDd" role="ri$Ld">
                                        <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1yVyf7" id="2r4rhgaCNcu" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="64p9aapVF44" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
                    <node concept="2B6LJw" id="64p9aapVF45" role="2B76xF">
                      <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
                      <node concept="Xl_RD" id="64p9aapVF46" role="2B70Vg">
                        <property role="Xl_RC" value="OptionalAssignedToNull" />
                      </node>
                    </node>
                    <node concept="1W57fq" id="64p9aapVF47" role="lGtFl">
                      <node concept="3IZrLx" id="64p9aapVF48" role="3IZSJc">
                        <node concept="3clFbS" id="64p9aapVF49" role="2VODD2">
                          <node concept="3clFbF" id="64p9aapVF4a" role="3cqZAp">
                            <node concept="2OqwBi" id="64p9aapVF4b" role="3clFbG">
                              <node concept="2OqwBi" id="64p9aapVF4c" role="2Oq$k0">
                                <node concept="2OqwBi" id="64p9aapVF4d" role="2Oq$k0">
                                  <node concept="30H73N" id="64p9aapVF4e" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="70OdufORfTg" role="2OqNvi">
                                    <ref role="37wK5l" to="tp2b:PFUECvO1RN" resolve="getVariables" />
                                  </node>
                                </node>
                                <node concept="3zZkjj" id="64p9aapVF4g" role="2OqNvi">
                                  <node concept="1bVj0M" id="64p9aapVF4h" role="23t8la">
                                    <node concept="3clFbS" id="64p9aapVF4i" role="1bW5cS">
                                      <node concept="3clFbF" id="64p9aapVF4j" role="3cqZAp">
                                        <node concept="2OqwBi" id="64p9aapVF4k" role="3clFbG">
                                          <node concept="2OqwBi" id="64p9aapVF4l" role="2Oq$k0">
                                            <node concept="2OqwBi" id="64p9aapVF4m" role="2Oq$k0">
                                              <node concept="2OqwBi" id="64p9aapVF4n" role="2Oq$k0">
                                                <node concept="37vLTw" id="64p9aapVF4o" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5W7E4fV0Wlz" resolve="var" />
                                                </node>
                                                <node concept="2Xjw5R" id="64p9aapVF4p" role="2OqNvi">
                                                  <node concept="1xMEDy" id="64p9aapVF4q" role="1xVPHs">
                                                    <node concept="chp4Y" id="64p9aapVF4r" role="ri$Ld">
                                                      <ref role="cht4Q" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2Rf3mk" id="64p9aapVF4s" role="2OqNvi">
                                                <node concept="1xMEDy" id="64p9aapVF4t" role="1xVPHs">
                                                  <node concept="chp4Y" id="64p9aapVF4u" role="ri$Ld">
                                                    <ref role="cht4Q" to="tp3t:2r4rhgaDx25" resolve="PatternBuilderVariableReference" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3zZkjj" id="64p9aapVF4v" role="2OqNvi">
                                              <node concept="1bVj0M" id="64p9aapVF4w" role="23t8la">
                                                <node concept="3clFbS" id="64p9aapVF4x" role="1bW5cS">
                                                  <node concept="3clFbF" id="64p9aapVF4y" role="3cqZAp">
                                                    <node concept="3clFbC" id="64p9aapVF4z" role="3clFbG">
                                                      <node concept="37vLTw" id="64p9aapVF4$" role="3uHU7w">
                                                        <ref role="3cqZAo" node="5W7E4fV0Wlz" resolve="var" />
                                                      </node>
                                                      <node concept="2OqwBi" id="64p9aapVF4_" role="3uHU7B">
                                                        <node concept="37vLTw" id="64p9aapVF4A" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="5W7E4fV0Wlx" resolve="it" />
                                                        </node>
                                                        <node concept="3TrEf2" id="64p9aapVF4B" role="2OqNvi">
                                                          <ref role="3Tt5mk" to="tp3t:2r4rhgaDx28" resolve="declaration" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="gl6BB" id="5W7E4fV0Wlx" role="1bW2Oz">
                                                  <property role="TrG5h" value="it" />
                                                  <node concept="2jxLKc" id="5W7E4fV0Wly" role="1tU5fm" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3GX2aA" id="64p9aapVF4E" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="gl6BB" id="5W7E4fV0Wlz" role="1bW2Oz">
                                      <property role="TrG5h" value="var" />
                                      <node concept="2jxLKc" id="5W7E4fV0Wl$" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3GX2aA" id="64p9aapVF4H" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="7KQFBrEu1CN" role="lGtFl" />
                <node concept="2ShNRf" id="7KQFBrEy7ap" role="GhZjU">
                  <node concept="1pGfFk" id="7KQFBrEy7aq" role="2ShVmc">
                    <ref role="37wK5l" node="4vkApmqbhNt" resolve="GeneratedPattern" />
                    <node concept="10Nm6u" id="6XhBjWIJz2j" role="37wK5m">
                      <node concept="1WS0z7" id="6XhBjWIJz2k" role="lGtFl">
                        <node concept="3JmXsc" id="6XhBjWIJz2l" role="3Jn$fo">
                          <node concept="3clFbS" id="6XhBjWIJz2m" role="2VODD2">
                            <node concept="3clFbF" id="6XhBjWIJz2n" role="3cqZAp">
                              <node concept="2OqwBi" id="6XhBjWIJz2o" role="3clFbG">
                                <node concept="2OqwBi" id="6XhBjWIJz2p" role="2Oq$k0">
                                  <node concept="2OqwBi" id="6XhBjWIJ$6N" role="2Oq$k0">
                                    <node concept="30H73N" id="6XhBjWIJz2r" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="64p9aapV5Wt" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3t:7KQFBrEtJoX" resolve="pattern" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="6XhBjWIJ$pv" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3t:2g69lt1$Kgh" resolve="builder" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORfTi" role="2OqNvi">
                                  <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="29HgVG" id="6XhBjWIJz2v" role="lGtFl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="1tcvH6b7lyG" role="jxRDz">
      <node concept="1lLz0L" id="1tcvH6b7lBU" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="unexpected pattern provider" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2g69lt1CwD_">
    <property role="3GE5qa" value="light" />
    <property role="TrG5h" value="NodeBuilder_value_pattern" />
    <ref role="phYkn" to="tp3k:4ZyFrBZxoNr" resolve="NodeBuilder_value" />
    <node concept="1N15co" id="69EpS29ZN7T" role="1s_3oS">
      <property role="TrG5h" value="nodeBuilderNode" />
      <node concept="3Tqbb2" id="69EpS29ZNKF" role="1N15GL">
        <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZ_g6E" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4ZyFrBZ_j4o" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZ_j4p" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZ_j9n" role="3cqZAp">
            <node concept="1Wc70l" id="4ZyFrBZ_j9o" role="3clFbG">
              <node concept="1Wc70l" id="1Hz5j8LM2_Q" role="3uHU7B">
                <node concept="3fqX7Q" id="1Hz5j8LM4TL" role="3uHU7w">
                  <node concept="2OqwBi" id="1Hz5j8LM4TN" role="3fr31v">
                    <node concept="2OqwBi" id="1Hz5j8LM4TO" role="2Oq$k0">
                      <node concept="30H73N" id="1Hz5j8LM4TP" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1Hz5j8LM4TQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfTk" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4ZyFrBZ_j9p" role="3uHU7B">
                  <node concept="2OqwBi" id="4ZyFrBZ_j9q" role="2Oq$k0">
                    <node concept="2OqwBi" id="4ZyFrBZ_j9r" role="2Oq$k0">
                      <node concept="30H73N" id="4ZyFrBZ_j9s" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4ZyFrBZ_j9t" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4ZyFrBZ_j9u" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3Ftr4R8wabv" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8wabw" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ZyFrBZ_j9x" role="3uHU7w">
                <node concept="2OqwBi" id="4ZyFrBZ_j9y" role="2Oq$k0">
                  <node concept="30H73N" id="4ZyFrBZ_j9z" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfTm" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4ZyFrBZ_j9_" role="2OqNvi">
                  <node concept="chp4Y" id="2g69lt1CCng" role="cj9EA">
                    <ref role="cht4Q" to="tp3t:2g69lt1BJHK" resolve="PatternVariableNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="2wAjnqF53KV" role="1lVwrX">
        <node concept="3clFb_" id="2wAjnqF53Uq" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="2wAjnqF54nf" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="2pd$B2ebyjl" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3qUE_q" id="2pd$B2ebyRs" role="11_B2D">
                <node concept="3uibUv" id="2pd$B2ebz3R" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2wAjnqF53Us" role="3clF47">
            <node concept="3cpWs8" id="2g69lt1CIoI" role="3cqZAp">
              <node concept="3cpWsn" id="2g69lt1CIoJ" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="2g69lt1CIoK" role="1tU5fm">
                  <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
                </node>
                <node concept="2ShNRf" id="2g69lt1CIxD" role="33vP2m">
                  <node concept="1pGfFk" id="2g69lt1CIxC" role="2ShVmc">
                    <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.&lt;init&gt;()" resolve="NodeMatcherBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4ZyFrBZ$dK1" role="3cqZAp">
              <node concept="2OqwBi" id="_E91paWTPt" role="3clFbG">
                <node concept="2OqwBi" id="4ZyFrBZ$dK2" role="2Oq$k0">
                  <node concept="37vLTw" id="4ZyFrBZ$dK4" role="2Oq$k0">
                    <ref role="3cqZAo" node="2g69lt1CIoJ" resolve="builder" />
                    <node concept="1ZhdrF" id="4ZyFrBZ$etm" role="lGtFl">
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <property role="2qtEX8" value="variableDeclaration" />
                      <node concept="3$xsQk" id="4ZyFrBZ$etn" role="3$ytzL">
                        <node concept="3clFbS" id="4ZyFrBZ$eto" role="2VODD2">
                          <node concept="3clFbF" id="69EpS29ZRmU" role="3cqZAp">
                            <node concept="2OqwBi" id="69EpS29ZRmV" role="3clFbG">
                              <node concept="1iwH7S" id="69EpS29ZRmW" role="2Oq$k0" />
                              <node concept="1iwH70" id="69EpS29ZRmX" role="2OqNvi">
                                <ref role="1iwH77" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
                                <node concept="2OqwBi" id="69EpS29ZRmY" role="1iwH7V">
                                  <node concept="1iwH7S" id="69EpS29ZRmZ" role="2Oq$k0" />
                                  <node concept="3cR$yn" id="69EpS29ZRn0" role="2OqNvi">
                                    <ref role="3cRzXn" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4ZyFrBZ$dK5" role="2OqNvi">
                    <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.forChild(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="forChild" />
                    <node concept="10Nm6u" id="4ZyFrBZ$dK6" role="37wK5m">
                      <node concept="5jKBG" id="za$VMvkOfT" role="lGtFl">
                        <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                        <node concept="3NFfHV" id="4ZyFrBZ$dK8" role="5jGum">
                          <node concept="3clFbS" id="4ZyFrBZ$dK9" role="2VODD2">
                            <node concept="3clFbF" id="4ZyFrBZ$dKa" role="3cqZAp">
                              <node concept="2OqwBi" id="7vKHTLu3TPQ" role="3clFbG">
                                <node concept="2OqwBi" id="7vKHTLu3TPR" role="2Oq$k0">
                                  <node concept="30H73N" id="7vKHTLu3TPS" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7vKHTLu3TPT" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORfTo" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2g69lt1CJO8" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.init(jetbrains.mps.lang.pattern.NodeMatcherBuilder$NodeMatcher)" resolve="init" />
                  <node concept="2ShNRf" id="2g69lt1CJQX" role="37wK5m">
                    <node concept="1pGfFk" id="2g69lt1CKe0" role="2ShVmc">
                      <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder$ListWildcardMatcher.&lt;init&gt;()" resolve="NodeMatcherBuilder.ListWildcardMatcher" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="2g69lt1zrmH" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="2wAjnqF54ay" role="3clF45" />
          <node concept="3Tm1VV" id="2wAjnqF53Uv" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1tcvH6auvst" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
      <node concept="30G5F_" id="1tcvH6auvJo" role="30HLyM">
        <node concept="3clFbS" id="1tcvH6auvJp" role="2VODD2">
          <node concept="3clFbF" id="1tcvH6auvJM" role="3cqZAp">
            <node concept="2OqwBi" id="1tcvH6auwk_" role="3clFbG">
              <node concept="2OqwBi" id="1tcvH6auvXg" role="2Oq$k0">
                <node concept="30H73N" id="1tcvH6auvJL" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORfTq" role="2OqNvi">
                  <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                </node>
              </node>
              <node concept="1mIQ4w" id="1tcvH6auwrY" role="2OqNvi">
                <node concept="chp4Y" id="1tcvH6auw_Z" role="cj9EA">
                  <ref role="cht4Q" to="tp3t:63LzO9stD_y" resolve="PatternVariableProperty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="1tcvH6auwEE" role="1lVwrX">
        <node concept="3clFb_" id="1tcvH6auwEF" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="1tcvH6auwEG" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="1tcvH6auwEH" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3qUE_q" id="1tcvH6auwEI" role="11_B2D">
                <node concept="3uibUv" id="1tcvH6auwEJ" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1tcvH6auwEK" role="3clF47">
            <node concept="3cpWs8" id="1tcvH6auwEL" role="3cqZAp">
              <node concept="3cpWsn" id="1tcvH6auwEM" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1tcvH6auwEN" role="1tU5fm">
                  <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
                </node>
                <node concept="2ShNRf" id="1tcvH6auwEO" role="33vP2m">
                  <node concept="1pGfFk" id="1tcvH6auwEP" role="2ShVmc">
                    <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.&lt;init&gt;()" resolve="NodeMatcherBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1tcvH6auwEV" role="3cqZAp">
              <node concept="2OqwBi" id="1tcvH6auwEW" role="3clFbG">
                <node concept="37vLTw" id="1tcvH6auwEY" role="2Oq$k0">
                  <ref role="3cqZAo" node="1tcvH6auwEM" resolve="builder" />
                  <node concept="1ZhdrF" id="1tcvH6auwEZ" role="lGtFl">
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <property role="2qtEX8" value="variableDeclaration" />
                    <node concept="3$xsQk" id="1tcvH6auwF0" role="3$ytzL">
                      <node concept="3clFbS" id="1tcvH6auwF1" role="2VODD2">
                        <node concept="3clFbF" id="1tcvH6auwF2" role="3cqZAp">
                          <node concept="2OqwBi" id="1tcvH6auwF3" role="3clFbG">
                            <node concept="1iwH7S" id="1tcvH6auwF4" role="2Oq$k0" />
                            <node concept="1iwH70" id="1tcvH6auwF5" role="2OqNvi">
                              <ref role="1iwH77" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="1tcvH6auwF6" role="1iwH7V">
                                <node concept="1iwH7S" id="1tcvH6auwF7" role="2Oq$k0" />
                                <node concept="3cR$yn" id="1tcvH6auwF8" role="2OqNvi">
                                  <ref role="3cRzXn" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1tcvH6auwFk" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.setPropertyVariable(org.jetbrains.mps.openapi.language.SProperty)" resolve="setPropertyVariable" />
                  <node concept="10Nm6u" id="1tcvH6auwFa" role="37wK5m">
                    <node concept="5jKBG" id="1tcvH6auwFb" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM88Ty" resolve="reduce_PropertyDeclaration_SProperty" />
                      <node concept="3NFfHV" id="1tcvH6auwFc" role="5jGum">
                        <node concept="3clFbS" id="1tcvH6auwFd" role="2VODD2">
                          <node concept="3clFbF" id="1tcvH6auwFe" role="3cqZAp">
                            <node concept="2OqwBi" id="1tcvH6auwFg" role="3clFbG">
                              <node concept="30H73N" id="1tcvH6auwFh" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1tcvH6au_bv" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="1tcvH6auwF$" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="1tcvH6auwF_" role="3clF45" />
          <node concept="3Tm1VV" id="1tcvH6auwFA" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1tcvH6avOMs" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="1tcvH6avOMt" role="30HLyM">
        <node concept="3clFbS" id="1tcvH6avOMu" role="2VODD2">
          <node concept="3clFbF" id="1tcvH6avOMv" role="3cqZAp">
            <node concept="1Wc70l" id="1tcvH6awFpk" role="3clFbG">
              <node concept="2OqwBi" id="1tcvH6avOMw" role="3uHU7w">
                <node concept="2OqwBi" id="1tcvH6avOMx" role="2Oq$k0">
                  <node concept="30H73N" id="1tcvH6avOMy" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfTs" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="1tcvH6avOM$" role="2OqNvi">
                  <node concept="chp4Y" id="1tcvH6avPUJ" role="cj9EA">
                    <ref role="cht4Q" to="tp3t:2g69lt1BJHK" resolve="PatternVariableNode" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1tcvH6awH$K" role="3uHU7B">
                <node concept="2OqwBi" id="1tcvH6awFCd" role="2Oq$k0">
                  <node concept="2OqwBi" id="1tcvH6awFCe" role="2Oq$k0">
                    <node concept="30H73N" id="1tcvH6awFCf" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1tcvH6awFCg" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1tcvH6awFCh" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                  </node>
                </node>
                <node concept="21noJN" id="1tcvH6awJw4" role="2OqNvi">
                  <node concept="21nZrQ" id="1tcvH6awJw6" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="1tcvH6avOMA" role="1lVwrX">
        <node concept="3clFb_" id="1tcvH6avOMB" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="1tcvH6avOMC" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="1tcvH6avOMD" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
              <node concept="3qUE_q" id="1tcvH6avOME" role="11_B2D">
                <node concept="3uibUv" id="1tcvH6avOMF" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1tcvH6avOMG" role="3clF47">
            <node concept="3cpWs8" id="1tcvH6avOMH" role="3cqZAp">
              <node concept="3cpWsn" id="1tcvH6avOMI" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="1tcvH6avOMJ" role="1tU5fm">
                  <ref role="3uigEE" to="7jhi:~NodeMatcherBuilder" resolve="NodeMatcherBuilder" />
                </node>
                <node concept="2ShNRf" id="1tcvH6avOMK" role="33vP2m">
                  <node concept="1pGfFk" id="1tcvH6avOML" role="2ShVmc">
                    <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.&lt;init&gt;()" resolve="NodeMatcherBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1tcvH6avOMR" role="3cqZAp">
              <node concept="2OqwBi" id="1tcvH6avOMS" role="3clFbG">
                <node concept="37vLTw" id="1tcvH6avOMT" role="2Oq$k0">
                  <ref role="3cqZAo" node="1tcvH6avOMI" resolve="builder" />
                  <node concept="1ZhdrF" id="1tcvH6avOMU" role="lGtFl">
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <property role="2qtEX8" value="variableDeclaration" />
                    <node concept="3$xsQk" id="1tcvH6avOMV" role="3$ytzL">
                      <node concept="3clFbS" id="1tcvH6avOMW" role="2VODD2">
                        <node concept="3clFbF" id="1tcvH6avOMX" role="3cqZAp">
                          <node concept="2OqwBi" id="1tcvH6avOMY" role="3clFbG">
                            <node concept="1iwH7S" id="1tcvH6avOMZ" role="2Oq$k0" />
                            <node concept="1iwH70" id="1tcvH6avON0" role="2OqNvi">
                              <ref role="1iwH77" to="tp3k:hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="1tcvH6avON1" role="1iwH7V">
                                <node concept="1iwH7S" id="1tcvH6avON2" role="2Oq$k0" />
                                <node concept="3cR$yn" id="1tcvH6avON3" role="2OqNvi">
                                  <ref role="3cRzXn" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1tcvH6avON4" role="2OqNvi">
                  <ref role="37wK5l" to="7jhi:~NodeMatcherBuilder.setReferenceVariable(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="setReferenceVariable" />
                  <node concept="10Nm6u" id="1tcvH6avON5" role="37wK5m">
                    <node concept="5jKBG" id="1tcvH6avON6" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                      <node concept="3NFfHV" id="1tcvH6avON7" role="5jGum">
                        <node concept="3clFbS" id="1tcvH6avON8" role="2VODD2">
                          <node concept="3clFbF" id="1tcvH6avON9" role="3cqZAp">
                            <node concept="2OqwBi" id="1tcvH6avONa" role="3clFbG">
                              <node concept="30H73N" id="1tcvH6avONb" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1tcvH6avQtm" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="1tcvH6avONq" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="1tcvH6avONr" role="3clF45" />
          <node concept="3Tm1VV" id="1tcvH6avONs" role="1B3o_S" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1tcvH6aZQ5r">
    <property role="TrG5h" value="reduce_PatternSwitchStatement" />
    <property role="3GE5qa" value="switch" />
    <ref role="3gUMe" to="tp3t:1tcvH6aAlHh" resolve="PatternSwitchStatement" />
    <node concept="9aQIb" id="1tcvH6aZR$c" role="13RCb5">
      <node concept="3clFbS" id="1tcvH6aZR$d" role="9aQI4">
        <node concept="3cpWs8" id="2r4rhgaB$4p" role="3cqZAp">
          <node concept="15s5l7" id="7S22xyoIUWn" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  GeneratedPattern (classifier) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;classifier&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643069]&quot;;" />
            <property role="huDt6" value="The reference  GeneratedPattern (classifier) is out of search scope" />
          </node>
          <node concept="3cpWsn" id="2r4rhgaB$4q" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="4ECTF8UMT8t" role="1tU5fm">
              <ref role="3uigEE" node="7KQFBrEtVAb" resolve="GeneratedPattern" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1tcvH6aZVDX" role="3cqZAp">
          <node concept="3cpWsn" id="1tcvH6aZVDY" role="3cpWs9">
            <property role="TrG5h" value="nodeToMatch" />
            <node concept="3uibUv" id="1tcvH6aZVDZ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="10Nm6u" id="1tcvH6aZVFG" role="33vP2m">
              <node concept="29HgVG" id="1tcvH6aZVFT" role="lGtFl">
                <node concept="3NFfHV" id="1tcvH6aZVFU" role="3NFExx">
                  <node concept="3clFbS" id="1tcvH6aZVFV" role="2VODD2">
                    <node concept="3clFbF" id="1tcvH6aZVG1" role="3cqZAp">
                      <node concept="2OqwBi" id="1tcvH6aZVFW" role="3clFbG">
                        <node concept="3TrEf2" id="1tcvH6aZVFZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:59YAasRsvgK" resolve="expression" />
                        </node>
                        <node concept="30H73N" id="1tcvH6aZVG0" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17Uvod" id="1tcvH6b3y8w" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="1tcvH6b3y8x" role="3zH0cK">
                <node concept="3clFbS" id="1tcvH6b3y8y" role="2VODD2">
                  <node concept="3clFbF" id="1tcvH6b3yin" role="3cqZAp">
                    <node concept="2OqwBi" id="1tcvH6b3yoq" role="3clFbG">
                      <node concept="1iwH7S" id="1tcvH6b3yim" role="2Oq$k0" />
                      <node concept="32eq0B" id="1tcvH6b3yt$" role="2OqNvi">
                        <property role="32f$Ya" value="true" />
                        <node concept="Xl_RD" id="1tcvH6b3yys" role="32eq0w">
                          <property role="Xl_RC" value="nodeToMatch" />
                        </node>
                        <node concept="2OqwBi" id="1tcvH6b3z0p" role="32eq0x">
                          <node concept="30H73N" id="1tcvH6b3yLX" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="1tcvH6b3zdp" role="2OqNvi">
                            <node concept="1xMEDy" id="1tcvH6b3zdr" role="1xVPHs">
                              <node concept="chp4Y" id="1tcvH6b3ziH" role="ri$Ld">
                                <ref role="cht4Q" to="tpee:i2fhoOR" resolve="IMethodLike" />
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
            <node concept="2ZBi8u" id="1tcvH6b5Roz" role="lGtFl">
              <ref role="2rW$FS" node="1tcvH6b5RBT" resolve="patternSwitchVariable" />
            </node>
          </node>
          <node concept="raruj" id="1tcvH6aZXNl" role="lGtFl" />
        </node>
        <node concept="3clFbJ" id="1tcvH6aZR$g" role="3cqZAp">
          <node concept="3clFbS" id="1tcvH6aZR$i" role="3clFbx">
            <node concept="29HgVG" id="1tcvH6b1adN" role="lGtFl">
              <node concept="3NFfHV" id="1tcvH6b1adP" role="3NFExx">
                <node concept="3clFbS" id="1tcvH6b1adQ" role="2VODD2">
                  <node concept="3clFbF" id="1tcvH6b1afL" role="3cqZAp">
                    <node concept="2OqwBi" id="1tcvH6b1dW6" role="3clFbG">
                      <node concept="2OqwBi" id="1tcvH6b1ccw" role="2Oq$k0">
                        <node concept="2OqwBi" id="1tcvH6b1arH" role="2Oq$k0">
                          <node concept="30H73N" id="1tcvH6b1afK" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="1tcvH6b1aQ9" role="2OqNvi">
                            <ref role="3TtcxE" to="tp3t:59YAasRsvgL" resolve="case" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="1tcvH6b1dkn" role="2OqNvi" />
                      </node>
                      <node concept="3TrEf2" id="1tcvH6b1eaC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3t:gVKbo18" resolve="body" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1tcvH6aZTv_" role="lGtFl" />
          <node concept="3eNFk2" id="1tcvH6b0Vgg" role="3eNLev">
            <node concept="1WS0z7" id="1tcvH6b0VF9" role="lGtFl">
              <node concept="3JmXsc" id="1tcvH6b0VFc" role="3Jn$fo">
                <node concept="3clFbS" id="1tcvH6b0VFd" role="2VODD2">
                  <node concept="3clFbF" id="1tcvH6b0VFj" role="3cqZAp">
                    <node concept="2OqwBi" id="1tcvH6b0YOZ" role="3clFbG">
                      <node concept="2OqwBi" id="1tcvH6b0VFe" role="2Oq$k0">
                        <node concept="3Tsc0h" id="1tcvH6b0VFh" role="2OqNvi">
                          <ref role="3TtcxE" to="tp3t:59YAasRsvgL" resolve="case" />
                        </node>
                        <node concept="30H73N" id="1tcvH6b0VFi" role="2Oq$k0" />
                      </node>
                      <node concept="7r0gD" id="1tcvH6b0Z9p" role="2OqNvi">
                        <node concept="3cmrfG" id="1tcvH6b0ZeN" role="7T0AP">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1tcvH6b1eCI" role="3eOfB_">
              <node concept="29HgVG" id="1tcvH6b1eCJ" role="lGtFl">
                <node concept="3NFfHV" id="1tcvH6b1eCK" role="3NFExx">
                  <node concept="3clFbS" id="1tcvH6b1eCL" role="2VODD2">
                    <node concept="3clFbF" id="1tcvH6b1eCM" role="3cqZAp">
                      <node concept="2OqwBi" id="1tcvH6b1eCN" role="3clFbG">
                        <node concept="30H73N" id="1tcvH6b1eCS" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1tcvH6b1eCV" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:gVKbo18" resolve="body" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2r4rhgaBCCP" role="3eO9$A">
              <node concept="liA8E" id="2r4rhgaBCD2" role="2OqNvi">
                <ref role="37wK5l" node="1GYwYhsnwWa" resolve="match" />
                <node concept="37vLTw" id="2r4rhgaBCD3" role="37wK5m">
                  <ref role="3cqZAo" node="1tcvH6aZVDY" resolve="nodeToMatch" />
                </node>
              </node>
              <node concept="37vLTw" id="S4WnV2NWj_" role="2Oq$k0">
                <ref role="3cqZAo" node="2r4rhgaB$4q" resolve="p" />
                <node concept="1sPUBX" id="S4WnV2NWjJ" role="lGtFl">
                  <ref role="v9R2y" node="1tcvH6b5JfY" resolve="PatternSwitchCase_switch" />
                  <node concept="3NFfHV" id="S4WnV2NWjK" role="1sPUBK">
                    <node concept="3clFbS" id="S4WnV2NWjL" role="2VODD2">
                      <node concept="3clFbF" id="S4WnV2NWjM" role="3cqZAp">
                        <node concept="2OqwBi" id="S4WnV2NWjN" role="3clFbG">
                          <node concept="30H73N" id="S4WnV2NWjO" role="2Oq$k0" />
                          <node concept="3TrEf2" id="S4WnV2NWjP" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3t:1tcvH6b5INO" resolve="pattern" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1tcvH6b1997" role="9aQIa">
            <node concept="3clFbS" id="1tcvH6b1998" role="9aQI4">
              <node concept="29HgVG" id="1tcvH6b1hHi" role="lGtFl">
                <node concept="3NFfHV" id="1tcvH6b1hHk" role="3NFExx">
                  <node concept="3clFbS" id="1tcvH6b1hHl" role="2VODD2">
                    <node concept="3clFbF" id="1tcvH6b1hJg" role="3cqZAp">
                      <node concept="2OqwBi" id="1tcvH6b1hVc" role="3clFbG">
                        <node concept="30H73N" id="1tcvH6b1hJf" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1tcvH6b1i81" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:5ffMBkaCcrg" resolve="defaultBlock" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="1Hz5j8M0HWk" role="lGtFl">
              <node concept="3IZrLx" id="1Hz5j8M0HWl" role="3IZSJc">
                <node concept="3clFbS" id="1Hz5j8M0HWm" role="2VODD2">
                  <node concept="3clFbF" id="1Hz5j8M0I0V" role="3cqZAp">
                    <node concept="2OqwBi" id="1Hz5j8M0Lud" role="3clFbG">
                      <node concept="2OqwBi" id="1Hz5j8M0IJx" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Hz5j8M0IgJ" role="2Oq$k0">
                          <node concept="30H73N" id="1Hz5j8M0I0U" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Hz5j8M0It$" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3t:5ffMBkaCcrg" resolve="defaultBlock" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1Hz5j8M0J2S" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                        </node>
                      </node>
                      <node concept="3GX2aA" id="1Hz5j8M0N_M" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="1tcvH6b6z53" role="lGtFl">
            <node concept="3IZrLx" id="1tcvH6b6z54" role="3IZSJc">
              <node concept="3clFbS" id="1tcvH6b6z55" role="2VODD2">
                <node concept="3clFbF" id="1tcvH6b6zgl" role="3cqZAp">
                  <node concept="2OqwBi" id="1tcvH6b6_4F" role="3clFbG">
                    <node concept="2OqwBi" id="1tcvH6b6zoF" role="2Oq$k0">
                      <node concept="30H73N" id="1tcvH6b6zgk" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="1tcvH6b6zqc" role="2OqNvi">
                        <ref role="3TtcxE" to="tp3t:59YAasRsvgL" resolve="case" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="1tcvH6b6AKG" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="gft3U" id="1tcvH6b6Bk9" role="UU_$l">
              <node concept="3clFbH" id="1tcvH6b6BOz" role="gfFT$">
                <node concept="2b32R4" id="1tcvH6b6Oyv" role="lGtFl">
                  <node concept="3JmXsc" id="1tcvH6b6Oyw" role="2P8S$">
                    <node concept="3clFbS" id="1tcvH6b6Oyx" role="2VODD2">
                      <node concept="3clFbF" id="1tcvH6b6O_h" role="3cqZAp">
                        <node concept="2OqwBi" id="1tcvH6b6P1W" role="3clFbG">
                          <node concept="2OqwBi" id="1tcvH6b6OGw" role="2Oq$k0">
                            <node concept="30H73N" id="1tcvH6b6O_g" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1tcvH6b6OMB" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3t:5ffMBkaCcrg" resolve="defaultBlock" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="1tcvH6b6PnO" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2r4rhgaBABL" role="3clFbw">
            <node concept="liA8E" id="2r4rhgaBBej" role="2OqNvi">
              <ref role="37wK5l" node="1GYwYhsnwWa" resolve="match" />
              <node concept="37vLTw" id="2r4rhgaBBfB" role="37wK5m">
                <ref role="3cqZAo" node="1tcvH6aZVDY" resolve="nodeToMatch" />
              </node>
            </node>
            <node concept="37vLTw" id="5sDn0OnfdxO" role="2Oq$k0">
              <ref role="3cqZAo" node="2r4rhgaB$4q" resolve="p" />
              <node concept="1pdMLZ" id="S4WnV2NRcx" role="lGtFl">
                <node concept="3NFfHV" id="S4WnV2NRe$" role="31$UT">
                  <node concept="3clFbS" id="S4WnV2NRe_" role="2VODD2">
                    <node concept="3clFbF" id="S4WnV2NRix" role="3cqZAp">
                      <node concept="2OqwBi" id="S4WnV2NTWj" role="3clFbG">
                        <node concept="2OqwBi" id="S4WnV2NRwm" role="2Oq$k0">
                          <node concept="30H73N" id="S4WnV2NRiw" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="S4WnV2NRJV" role="2OqNvi">
                            <ref role="3TtcxE" to="tp3t:59YAasRsvgL" resolve="case" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="S4WnV2NV$j" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="5sDn0OnfdxP" role="lGtFl">
                <ref role="v9R2y" node="1tcvH6b5JfY" resolve="PatternSwitchCase_switch" />
                <node concept="3NFfHV" id="5sDn0OnfdxQ" role="1sPUBK">
                  <node concept="3clFbS" id="5sDn0OnfdxR" role="2VODD2">
                    <node concept="3clFbF" id="5sDn0OnfdxS" role="3cqZAp">
                      <node concept="2OqwBi" id="5sDn0OnfdxT" role="3clFbG">
                        <node concept="30H73N" id="5sDn0OnfdxU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5sDn0OnfdxV" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3t:1tcvH6b5INO" resolve="pattern" />
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
  <node concept="jVnub" id="1Hz5j8LMXj4">
    <property role="3GE5qa" value="light" />
    <property role="TrG5h" value="PatternGet" />
    <node concept="1N15co" id="1Hz5j8LOWUS" role="1s_3oS">
      <property role="TrG5h" value="var" />
      <node concept="3Tqbb2" id="1Hz5j8LOXLy" role="1N15GL">
        <ref role="ehGHo" to="tp3t:2r4rhgaDx1I" resolve="PatternBuilderVariable" />
      </node>
    </node>
    <node concept="1N15co" id="1Hz5j8LPIUe" role="1s_3oS">
      <property role="TrG5h" value="child" />
      <node concept="3Tqbb2" id="1Hz5j8LPJtv" role="1N15GL" />
    </node>
    <node concept="1N15co" id="64p9aapBSAU" role="1s_3oS">
      <property role="TrG5h" value="optional" />
      <node concept="10P_77" id="64p9aapBVfR" role="1N15GL" />
    </node>
    <node concept="3aamgX" id="1Hz5j8LMXj5" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="1Koe21" id="1Hz5j8LNzFS" role="1lVwrX">
        <node concept="9aQIb" id="1Hz5j8LNzFY" role="1Koe22">
          <node concept="3clFbS" id="1Hz5j8LNzFZ" role="9aQI4">
            <node concept="3cpWs8" id="1Hz5j8LNzG9" role="3cqZAp">
              <node concept="3cpWsn" id="1Hz5j8LNzGc" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="1Hz5j8LNzG7" role="1tU5fm">
                  <ref role="ehGHo" to="tp25:5zEkxuKhrAP" resolve="NodeAttributeQualifier" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1Hz5j8LNzGq" role="3cqZAp">
              <node concept="2OqwBi" id="1Hz5j8LNzMV" role="3clFbG">
                <node concept="37vLTw" id="1Hz5j8LNzGo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Hz5j8LNzGc" resolve="b" />
                  <node concept="1sPUBX" id="1Hz5j8LN$6N" role="lGtFl">
                    <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                    <node concept="v3LJS" id="1Hz5j8LOY2W" role="v9R3O">
                      <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                    </node>
                    <node concept="30H73N" id="1Hz5j8LPQNZ" role="v9R3O" />
                    <node concept="v3LJS" id="64p9aapBXV1" role="v9R3O">
                      <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                    </node>
                    <node concept="3NFfHV" id="1Hz5j8LN$71" role="1sPUBK">
                      <node concept="3clFbS" id="1Hz5j8LN$72" role="2VODD2">
                        <node concept="3clFbF" id="1Hz5j8LN$93" role="3cqZAp">
                          <node concept="2OqwBi" id="1Hz5j8LN$jK" role="3clFbG">
                            <node concept="30H73N" id="1Hz5j8LN$92" role="2Oq$k0" />
                            <node concept="1mfA1w" id="1Hz5j8LN$tJ" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1Hz5j8LN$1j" role="lGtFl" />
                <node concept="3TrEf2" id="1Hz5j8LSZAE" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp25:5zEkxuKhrAQ" resolve="attributeConcept" />
                  <node concept="1ZhdrF" id="1Hz5j8LT074" role="lGtFl">
                    <property role="2qtEX8" value="link" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056143562/1138056516764" />
                    <node concept="3$xsQk" id="1Hz5j8LT075" role="3$ytzL">
                      <node concept="3clFbS" id="1Hz5j8LT076" role="2VODD2">
                        <node concept="3clFbF" id="1Hz5j8LT0hs" role="3cqZAp">
                          <node concept="2OqwBi" id="1Hz5j8LT0uz" role="3clFbG">
                            <node concept="30H73N" id="1Hz5j8LT0hr" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Hz5j8LT0CQ" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
      <node concept="30G5F_" id="1Hz5j8LT0V8" role="30HLyM">
        <node concept="3clFbS" id="1Hz5j8LT0V9" role="2VODD2">
          <node concept="3clFbF" id="1Hz5j8LT18_" role="3cqZAp">
            <node concept="1Wc70l" id="gc7z5AMaG$" role="3clFbG">
              <node concept="3y3z36" id="gc7z5AMaUq" role="3uHU7B">
                <node concept="v3LJS" id="gc7z5AMc2D" role="3uHU7w">
                  <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                </node>
                <node concept="v3LJS" id="gc7z5AMaMV" role="3uHU7B">
                  <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Hz5j8LT1PF" role="3uHU7w">
                <node concept="2OqwBi" id="1Hz5j8LT1mP" role="2Oq$k0">
                  <node concept="30H73N" id="1Hz5j8LT18$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1Hz5j8LT1$n" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfTu" role="2OqNvi">
                  <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Hz5j8LT0Iv" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="1Koe21" id="1Hz5j8LT0Iw" role="1lVwrX">
        <node concept="9aQIb" id="1Hz5j8LT0Ix" role="1Koe22">
          <node concept="3clFbS" id="1Hz5j8LT0Iy" role="9aQI4">
            <node concept="3cpWs8" id="1Hz5j8LT0Iz" role="3cqZAp">
              <node concept="3cpWsn" id="1Hz5j8LT0I$" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="1Hz5j8LT0I_" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1Hz5j8LT0IA" role="3cqZAp">
              <node concept="2OqwBi" id="1Hz5j8LT0IB" role="3clFbG">
                <node concept="37vLTw" id="1Hz5j8LT0IC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Hz5j8LT0I$" resolve="b" />
                  <node concept="1sPUBX" id="1Hz5j8LT0ID" role="lGtFl">
                    <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                    <node concept="v3LJS" id="1Hz5j8LT0IE" role="v9R3O">
                      <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                    </node>
                    <node concept="30H73N" id="1Hz5j8LT0IF" role="v9R3O" />
                    <node concept="v3LJS" id="64p9aapC0bB" role="v9R3O">
                      <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                    </node>
                    <node concept="3NFfHV" id="1Hz5j8LT0IG" role="1sPUBK">
                      <node concept="3clFbS" id="1Hz5j8LT0IH" role="2VODD2">
                        <node concept="3clFbF" id="1Hz5j8LT0II" role="3cqZAp">
                          <node concept="2OqwBi" id="1Hz5j8LT0IJ" role="3clFbG">
                            <node concept="30H73N" id="1Hz5j8LT0IK" role="2Oq$k0" />
                            <node concept="1mfA1w" id="1Hz5j8LT0IL" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1Hz5j8LT0IM" role="lGtFl" />
                <node concept="3Tsc0h" id="1Hz5j8LT5ff" role="2OqNvi">
                  <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                  <node concept="1ZhdrF" id="1Hz5j8LT5v3" role="lGtFl">
                    <property role="2qtEX8" value="link" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393/1138056546658" />
                    <node concept="3$xsQk" id="1Hz5j8LT5v4" role="3$ytzL">
                      <node concept="3clFbS" id="1Hz5j8LT5v5" role="2VODD2">
                        <node concept="3clFbF" id="1Hz5j8LT5Jx" role="3cqZAp">
                          <node concept="2OqwBi" id="1Hz5j8LT5SQ" role="3clFbG">
                            <node concept="30H73N" id="1Hz5j8LT5Jw" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Hz5j8LT64n" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
      <node concept="30G5F_" id="1Hz5j8LT2V9" role="30HLyM">
        <node concept="3clFbS" id="1Hz5j8LT2Va" role="2VODD2">
          <node concept="3clFbF" id="1Hz5j8LT353" role="3cqZAp">
            <node concept="1Wc70l" id="gc7z5AMcsW" role="3clFbG">
              <node concept="3y3z36" id="gc7z5AMcAh" role="3uHU7B">
                <node concept="v3LJS" id="gc7z5AMdJF" role="3uHU7w">
                  <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                </node>
                <node concept="v3LJS" id="gc7z5AMcuu" role="3uHU7B">
                  <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                </node>
              </node>
              <node concept="3fqX7Q" id="1Hz5j8LT477" role="3uHU7w">
                <node concept="2OqwBi" id="1Hz5j8LT479" role="3fr31v">
                  <node concept="2OqwBi" id="1Hz5j8LT47a" role="2Oq$k0">
                    <node concept="30H73N" id="1Hz5j8LT47b" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1Hz5j8LT47c" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfTw" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="gc7z5AMe7u" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="1Koe21" id="gc7z5AMe7v" role="1lVwrX">
        <node concept="312cEu" id="gc7z5AMgya" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5AMgyb" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3uibUv" id="gc7z5AMgyc" role="3clF45">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3Tm1VV" id="gc7z5AMgyd" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5AMgye" role="3clF47">
              <node concept="3cpWs8" id="gc7z5AMgyf" role="3cqZAp">
                <node concept="3cpWsn" id="gc7z5AMgyg" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="gc7z5AMgyh" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="gc7z5AMgyi" role="33vP2m">
                    <ref role="3cqZAo" node="gc7z5AMgyg" resolve="container" />
                    <node concept="1sPUBX" id="gc7z5AMgyj" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="gc7z5AMgyk" role="1sPUBK">
                        <node concept="3clFbS" id="gc7z5AMgyl" role="2VODD2">
                          <node concept="3clFbF" id="gc7z5AMgym" role="3cqZAp">
                            <node concept="2OqwBi" id="gc7z5AMgyn" role="3clFbG">
                              <node concept="30H73N" id="gc7z5AMgyo" role="2Oq$k0" />
                              <node concept="1mfA1w" id="gc7z5AMgyp" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="gc7z5AMgyq" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="gc7z5AMgyr" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapC2YO" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5AMgys" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="gc7z5AMgyt" role="3cqZAp">
                <node concept="3K4zz7" id="gc7z5AMgyu" role="3cqZAk">
                  <node concept="10Nm6u" id="6S2S2q5nLds" role="3K4E3e" />
                  <node concept="2YIFZM" id="6S2S2q5nzP4" role="3K4GZi">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2YIFZM" id="6S2S2q5nzP5" role="37wK5m">
                      <ref role="1Pybhc" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                      <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.getNullableHead(java.lang.Iterable)" resolve="getNullableHead" />
                      <node concept="2OqwBi" id="6S2S2q5nzP6" role="37wK5m">
                        <node concept="37vLTw" id="6S2S2q5nzP7" role="2Oq$k0">
                          <ref role="3cqZAo" node="gc7z5AMgyg" resolve="container" />
                        </node>
                        <node concept="liA8E" id="6S2S2q5nzP8" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                          <node concept="359W_D" id="6S2S2q5nzP9" role="37wK5m">
                            <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                            <node concept="1ZhdrF" id="6S2S2q5nzPa" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                              <node concept="3$xsQk" id="6S2S2q5nzPb" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nzPc" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nzPd" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nzPe" role="3clFbG">
                                      <node concept="2OqwBi" id="6S2S2q5nzPf" role="2Oq$k0">
                                        <node concept="3TrEf2" id="6S2S2q5nzPg" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                        </node>
                                        <node concept="30H73N" id="6S2S2q5nzPh" role="2Oq$k0" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfTy" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="6S2S2q5nzPj" role="lGtFl">
                              <property role="2qtEX8" value="linkDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                              <node concept="3$xsQk" id="6S2S2q5nzPk" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nzPl" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nzPm" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nzPn" role="3clFbG">
                                      <node concept="30H73N" id="6S2S2q5nzPo" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="6S2S2q5nzPp" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                  <node concept="3clFbC" id="gc7z5AMgyP" role="3K4Cdx">
                    <node concept="10Nm6u" id="gc7z5AMgyQ" role="3uHU7w" />
                    <node concept="37vLTw" id="gc7z5AMgyR" role="3uHU7B">
                      <ref role="3cqZAo" node="gc7z5AMgyg" resolve="container" />
                    </node>
                  </node>
                  <node concept="1W57fq" id="64p9aapBRp0" role="lGtFl">
                    <node concept="3IZrLx" id="64p9aapBRp1" role="3IZSJc">
                      <node concept="3clFbS" id="64p9aapBRp2" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapCjsX" role="3cqZAp">
                          <node concept="v3LJS" id="64p9aapCjsW" role="3clFbG">
                            <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="64p9aapCj$N" role="UU_$l">
                      <node concept="2YIFZM" id="64p9aapCoNX" role="gfFT$">
                        <ref role="1Pybhc" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                        <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.getNullableHead(java.lang.Iterable)" resolve="getNullableHead" />
                        <node concept="2OqwBi" id="64p9aapCoNY" role="37wK5m">
                          <node concept="37vLTw" id="64p9aapCoNZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="gc7z5AMgyg" resolve="container" />
                          </node>
                          <node concept="liA8E" id="64p9aapCoO0" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                            <node concept="359W_D" id="64p9aapCoO1" role="37wK5m">
                              <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                              <node concept="1ZhdrF" id="64p9aapCoO2" role="lGtFl">
                                <property role="2qtEX8" value="conceptDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                                <node concept="3$xsQk" id="64p9aapCoO3" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapCoO4" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapCoO5" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapCoO6" role="3clFbG">
                                        <node concept="2OqwBi" id="64p9aapCoO7" role="2Oq$k0">
                                          <node concept="3TrEf2" id="64p9aapCoO8" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                          </node>
                                          <node concept="30H73N" id="64p9aapCoO9" role="2Oq$k0" />
                                        </node>
                                        <node concept="3zqWPK" id="70OdufORfT$" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1ZhdrF" id="64p9aapCoOb" role="lGtFl">
                                <property role="2qtEX8" value="linkDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                                <node concept="3$xsQk" id="64p9aapCoOc" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapCoOd" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapCoOe" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapCoOf" role="3clFbG">
                                        <node concept="30H73N" id="64p9aapCoOg" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="64p9aapCoOh" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                <node concept="raruj" id="gc7z5AMgyS" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5AMgyT" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5AMgyU" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AMe7U" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AMe7V" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AMe7W" role="3cqZAp">
            <node concept="1Wc70l" id="gc7z5AOyeQ" role="3clFbG">
              <node concept="2OqwBi" id="gc7z5AOIAO" role="3uHU7w">
                <node concept="2OqwBi" id="gc7z5AOBfY" role="2Oq$k0">
                  <node concept="2OqwBi" id="gc7z5AO_lp" role="2Oq$k0">
                    <node concept="30H73N" id="gc7z5AO$5a" role="2Oq$k0" />
                    <node concept="3TrEf2" id="gc7z5AOAgq" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="gc7z5AOH3X" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                  </node>
                </node>
                <node concept="21noJN" id="gc7z5AOKzt" role="2OqNvi">
                  <node concept="21nZrQ" id="gc7z5AOKzv" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="gc7z5AMe7X" role="3uHU7B">
                <node concept="3clFbC" id="gc7z5AMf0w" role="3uHU7B">
                  <node concept="v3LJS" id="gc7z5AMe80" role="3uHU7B">
                    <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                  </node>
                  <node concept="v3LJS" id="gc7z5AMe7Z" role="3uHU7w">
                    <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                  </node>
                </node>
                <node concept="2OqwBi" id="gc7z5AMe81" role="3uHU7w">
                  <node concept="2OqwBi" id="gc7z5AMe82" role="2Oq$k0">
                    <node concept="30H73N" id="gc7z5AMe83" role="2Oq$k0" />
                    <node concept="3TrEf2" id="gc7z5AMe84" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfTA" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="gc7z5AMqcD" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="1Koe21" id="gc7z5AMqcE" role="1lVwrX">
        <node concept="312cEu" id="gc7z5AMqcF" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5AMqcG" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3uibUv" id="gc7z5AMqcH" role="3clF45">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3Tm1VV" id="gc7z5AMqcI" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5AMqcJ" role="3clF47">
              <node concept="3cpWs8" id="gc7z5AMqcK" role="3cqZAp">
                <node concept="3cpWsn" id="gc7z5AMqcL" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="gc7z5AMqcM" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="gc7z5AMqcN" role="33vP2m">
                    <ref role="3cqZAo" node="gc7z5AMqcL" resolve="container" />
                    <node concept="1sPUBX" id="gc7z5AMqcO" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="gc7z5AMqcP" role="1sPUBK">
                        <node concept="3clFbS" id="gc7z5AMqcQ" role="2VODD2">
                          <node concept="3clFbF" id="gc7z5AMqcR" role="3cqZAp">
                            <node concept="2OqwBi" id="gc7z5AMqcS" role="3clFbG">
                              <node concept="30H73N" id="gc7z5AMqcT" role="2Oq$k0" />
                              <node concept="1mfA1w" id="gc7z5AMqcU" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="gc7z5AMqcV" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="gc7z5AMqcW" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapChU4" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5AMqcX" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="gc7z5AMqcY" role="3cqZAp">
                <node concept="3K4zz7" id="gc7z5AMqcZ" role="3cqZAk">
                  <node concept="10Nm6u" id="6S2S2q5nMaz" role="3K4E3e" />
                  <node concept="2YIFZM" id="6S2S2q5nA0m" role="3K4GZi">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2YIFZM" id="6S2S2q5nA0n" role="37wK5m">
                      <ref role="37wK5l" to="18ew:~IterableUtil.covariant(java.lang.Iterable)" resolve="covariant" />
                      <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                      <node concept="2OqwBi" id="6S2S2q5nA0o" role="37wK5m">
                        <node concept="37vLTw" id="6S2S2q5nA0p" role="2Oq$k0">
                          <ref role="3cqZAo" node="gc7z5AMqcL" resolve="container" />
                        </node>
                        <node concept="liA8E" id="6S2S2q5nA0q" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                          <node concept="359W_D" id="6S2S2q5nA0r" role="37wK5m">
                            <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                            <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                            <node concept="1ZhdrF" id="6S2S2q5nA0s" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                              <node concept="3$xsQk" id="6S2S2q5nA0t" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nA0u" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nA0v" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nA0w" role="3clFbG">
                                      <node concept="2OqwBi" id="6S2S2q5nA0x" role="2Oq$k0">
                                        <node concept="3TrEf2" id="6S2S2q5nA0y" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                        </node>
                                        <node concept="30H73N" id="6S2S2q5nA0z" role="2Oq$k0" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfTC" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="6S2S2q5nA0_" role="lGtFl">
                              <property role="2qtEX8" value="linkDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                              <node concept="3$xsQk" id="6S2S2q5nA0A" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nA0B" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nA0C" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nA0D" role="3clFbG">
                                      <node concept="30H73N" id="6S2S2q5nA0E" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="6S2S2q5nA0F" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                  <node concept="3clFbC" id="gc7z5AMqdn" role="3K4Cdx">
                    <node concept="10Nm6u" id="gc7z5AMqdo" role="3uHU7w" />
                    <node concept="37vLTw" id="gc7z5AMqdp" role="3uHU7B">
                      <ref role="3cqZAo" node="gc7z5AMqcL" resolve="container" />
                    </node>
                  </node>
                  <node concept="1W57fq" id="64p9aapCnoK" role="lGtFl">
                    <node concept="3IZrLx" id="64p9aapCnoL" role="3IZSJc">
                      <node concept="3clFbS" id="64p9aapCnoM" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapConU" role="3cqZAp">
                          <node concept="v3LJS" id="64p9aapConT" role="3clFbG">
                            <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="64p9aapCosd" role="UU_$l">
                      <node concept="2YIFZM" id="64p9aapEA0u" role="gfFT$">
                        <ref role="37wK5l" to="18ew:~IterableUtil.covariant(java.lang.Iterable)" resolve="covariant" />
                        <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                        <node concept="2OqwBi" id="64p9aapEA0v" role="37wK5m">
                          <node concept="37vLTw" id="64p9aapEA0w" role="2Oq$k0">
                            <ref role="3cqZAo" node="gc7z5AMqcL" resolve="container" />
                          </node>
                          <node concept="liA8E" id="64p9aapEA0x" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                            <node concept="359W_D" id="64p9aapEA0y" role="37wK5m">
                              <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                              <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                              <node concept="1ZhdrF" id="64p9aapEA0z" role="lGtFl">
                                <property role="2qtEX8" value="conceptDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                                <node concept="3$xsQk" id="64p9aapEA0$" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapEA0_" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapEA0A" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapEA0B" role="3clFbG">
                                        <node concept="2OqwBi" id="64p9aapEA0C" role="2Oq$k0">
                                          <node concept="3TrEf2" id="64p9aapEA0D" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                          </node>
                                          <node concept="30H73N" id="64p9aapEA0E" role="2Oq$k0" />
                                        </node>
                                        <node concept="3zqWPK" id="70OdufORfTE" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1ZhdrF" id="64p9aapEA0G" role="lGtFl">
                                <property role="2qtEX8" value="linkDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                                <node concept="3$xsQk" id="64p9aapEA0H" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapEA0I" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapEA0J" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapEA0K" role="3clFbG">
                                        <node concept="30H73N" id="64p9aapEA0L" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="64p9aapEA0M" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                <node concept="raruj" id="gc7z5AMqdq" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5AMqdr" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5AMqds" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AMqdt" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AMqdu" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AMqdv" role="3cqZAp">
            <node concept="1Wc70l" id="gc7z5AMqdw" role="3clFbG">
              <node concept="3clFbC" id="gc7z5AMqdx" role="3uHU7B">
                <node concept="v3LJS" id="gc7z5AMqdy" role="3uHU7B">
                  <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                </node>
                <node concept="v3LJS" id="gc7z5AMqdz" role="3uHU7w">
                  <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                </node>
              </node>
              <node concept="3fqX7Q" id="gc7z5AMrSm" role="3uHU7w">
                <node concept="2OqwBi" id="gc7z5AMrSo" role="3fr31v">
                  <node concept="2OqwBi" id="gc7z5AMrSp" role="2Oq$k0">
                    <node concept="30H73N" id="gc7z5AMrSq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="gc7z5AMrSr" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfTG" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="gc7z5AOMe7" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="1Koe21" id="gc7z5AOMe8" role="1lVwrX">
        <node concept="312cEu" id="gc7z5AOMe9" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5AOMea" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3uibUv" id="gc7z5AOMeb" role="3clF45">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3Tm1VV" id="gc7z5AOMec" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5AOMed" role="3clF47">
              <node concept="3cpWs8" id="gc7z5AOMee" role="3cqZAp">
                <node concept="3cpWsn" id="gc7z5AOMef" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="gc7z5AOMeg" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="gc7z5AOMeh" role="33vP2m">
                    <ref role="3cqZAo" node="gc7z5AOMef" resolve="container" />
                    <node concept="1sPUBX" id="gc7z5AOMei" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="gc7z5AOMej" role="1sPUBK">
                        <node concept="3clFbS" id="gc7z5AOMek" role="2VODD2">
                          <node concept="3clFbF" id="gc7z5AOMel" role="3cqZAp">
                            <node concept="2OqwBi" id="gc7z5AOMem" role="3clFbG">
                              <node concept="30H73N" id="gc7z5AOMen" role="2Oq$k0" />
                              <node concept="1mfA1w" id="gc7z5AOMeo" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="gc7z5AOMep" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="gc7z5AOMeq" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapC5wp" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5AOMer" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="gc7z5AOMes" role="3cqZAp">
                <node concept="3K4zz7" id="gc7z5AOMet" role="3cqZAk">
                  <node concept="10Nm6u" id="6S2S2q5nOcz" role="3K4E3e" />
                  <node concept="2YIFZM" id="6S2S2q5nB6F" role="3K4GZi">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2OqwBi" id="6S2S2q5nB6G" role="37wK5m">
                      <node concept="37vLTw" id="6S2S2q5nB6H" role="2Oq$k0">
                        <ref role="3cqZAo" node="gc7z5AOMef" resolve="container" />
                      </node>
                      <node concept="liA8E" id="6S2S2q5nB6I" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                        <node concept="359W_D" id="6S2S2q5nB6J" role="37wK5m">
                          <ref role="359W_E" to="tpee:fz7vLUo" resolve="VariableReference" />
                          <ref role="359W_F" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                          <node concept="1ZhdrF" id="6S2S2q5nB6K" role="lGtFl">
                            <property role="2qtEX8" value="conceptDeclaration" />
                            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                            <node concept="3$xsQk" id="6S2S2q5nB6L" role="3$ytzL">
                              <node concept="3clFbS" id="6S2S2q5nB6M" role="2VODD2">
                                <node concept="3clFbF" id="6S2S2q5nB6N" role="3cqZAp">
                                  <node concept="2OqwBi" id="6S2S2q5nB6O" role="3clFbG">
                                    <node concept="2OqwBi" id="6S2S2q5nB6P" role="2Oq$k0">
                                      <node concept="3TrEf2" id="6S2S2q5nB6Q" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                      </node>
                                      <node concept="30H73N" id="6S2S2q5nB6R" role="2Oq$k0" />
                                    </node>
                                    <node concept="3zqWPK" id="70OdufORfTI" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1ZhdrF" id="6S2S2q5nB6T" role="lGtFl">
                            <property role="2qtEX8" value="linkDeclaration" />
                            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                            <node concept="3$xsQk" id="6S2S2q5nB6U" role="3$ytzL">
                              <node concept="3clFbS" id="6S2S2q5nB6V" role="2VODD2">
                                <node concept="3clFbF" id="6S2S2q5nB6W" role="3cqZAp">
                                  <node concept="2OqwBi" id="6S2S2q5nB6X" role="3clFbG">
                                    <node concept="30H73N" id="6S2S2q5nB6Y" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="6S2S2q5nB6Z" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                  <node concept="3clFbC" id="gc7z5AOMeP" role="3K4Cdx">
                    <node concept="10Nm6u" id="gc7z5AOMeQ" role="3uHU7w" />
                    <node concept="37vLTw" id="gc7z5AOMeR" role="3uHU7B">
                      <ref role="3cqZAo" node="gc7z5AOMef" resolve="container" />
                    </node>
                  </node>
                  <node concept="1W57fq" id="64p9aapCr4H" role="lGtFl">
                    <node concept="3IZrLx" id="64p9aapCr4I" role="3IZSJc">
                      <node concept="3clFbS" id="64p9aapCr4J" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapCsLX" role="3cqZAp">
                          <node concept="v3LJS" id="64p9aapCsLW" role="3clFbG">
                            <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="64p9aapCsQg" role="UU_$l">
                      <node concept="2OqwBi" id="64p9aapCsT8" role="gfFT$">
                        <node concept="37vLTw" id="64p9aapCsT9" role="2Oq$k0">
                          <ref role="3cqZAo" node="gc7z5AOMef" resolve="container" />
                        </node>
                        <node concept="liA8E" id="64p9aapCsTa" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                          <node concept="359W_D" id="64p9aapCsTb" role="37wK5m">
                            <ref role="359W_E" to="tpee:fz7vLUo" resolve="VariableReference" />
                            <ref role="359W_F" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                            <node concept="1ZhdrF" id="64p9aapCsTc" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                              <node concept="3$xsQk" id="64p9aapCsTd" role="3$ytzL">
                                <node concept="3clFbS" id="64p9aapCsTe" role="2VODD2">
                                  <node concept="3clFbF" id="64p9aapCsTf" role="3cqZAp">
                                    <node concept="2OqwBi" id="64p9aapCsTg" role="3clFbG">
                                      <node concept="2OqwBi" id="64p9aapCsTh" role="2Oq$k0">
                                        <node concept="3TrEf2" id="64p9aapCsTi" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                        </node>
                                        <node concept="30H73N" id="64p9aapCsTj" role="2Oq$k0" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfTK" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="64p9aapCsTl" role="lGtFl">
                              <property role="2qtEX8" value="linkDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                              <node concept="3$xsQk" id="64p9aapCsTm" role="3$ytzL">
                                <node concept="3clFbS" id="64p9aapCsTn" role="2VODD2">
                                  <node concept="3clFbF" id="64p9aapCsTo" role="3cqZAp">
                                    <node concept="2OqwBi" id="64p9aapCsTp" role="3clFbG">
                                      <node concept="30H73N" id="64p9aapCsTq" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="64p9aapCsTr" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
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
                <node concept="raruj" id="gc7z5AOMeS" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5AOMeT" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5AOMeU" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AOMeV" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AOMeW" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AOMeX" role="3cqZAp">
            <node concept="1Wc70l" id="gc7z5AOMeY" role="3clFbG">
              <node concept="2OqwBi" id="gc7z5AOMeZ" role="3uHU7w">
                <node concept="2OqwBi" id="gc7z5AOMf0" role="2Oq$k0">
                  <node concept="2OqwBi" id="gc7z5AOMf1" role="2Oq$k0">
                    <node concept="30H73N" id="gc7z5AOMf2" role="2Oq$k0" />
                    <node concept="3TrEf2" id="gc7z5AOMf3" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="gc7z5AOMf4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                  </node>
                </node>
                <node concept="21noJN" id="gc7z5AOMf5" role="2OqNvi">
                  <node concept="21nZrQ" id="gc7z5AOMf6" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="gc7z5AOMf8" role="3uHU7B">
                <node concept="v3LJS" id="gc7z5AOMf9" role="3uHU7B">
                  <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                </node>
                <node concept="v3LJS" id="gc7z5AOMfa" role="3uHU7w">
                  <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Hz5j8LWx7z" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
      <node concept="1Koe21" id="1Hz5j8LWx7$" role="1lVwrX">
        <node concept="312cEu" id="gc7z5ALr4H" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5ALrpO" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3uibUv" id="gc7z5AM4Kn" role="3clF45">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3Tm1VV" id="gc7z5ALrpR" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5ALrpS" role="3clF47">
              <node concept="3cpWs8" id="1Hz5j8LWx7B" role="3cqZAp">
                <node concept="3cpWsn" id="1Hz5j8LWx7C" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="gc7z5AM0fu" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="37vLTw" id="1Hz5j8LWx7G" role="33vP2m">
                    <ref role="3cqZAo" node="1Hz5j8LWx7C" resolve="container" />
                    <node concept="1sPUBX" id="1Hz5j8LWx7I" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="1Hz5j8LWx7J" role="1sPUBK">
                        <node concept="3clFbS" id="1Hz5j8LWx7K" role="2VODD2">
                          <node concept="3clFbF" id="1Hz5j8LWx7L" role="3cqZAp">
                            <node concept="2OqwBi" id="1Hz5j8LWx7M" role="3clFbG">
                              <node concept="30H73N" id="1Hz5j8LWx7N" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Hz5j8LWx7O" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="1Hz5j8LWx7P" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="1Hz5j8LWx7Q" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapC7s4" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5AM2NA" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="gc7z5AM3Lo" role="3cqZAp">
                <node concept="3K4zz7" id="gc7z5ALVSX" role="3cqZAk">
                  <node concept="10Nm6u" id="6S2S2q5nPaF" role="3K4E3e" />
                  <node concept="2YIFZM" id="6S2S2q5nDhN" role="3K4GZi">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="3crr_t" id="6S2S2q5nDhO" role="37wK5m">
                      <ref role="1LgM_u" to="tpck:fKAOsGN" resolve="string" />
                      <node concept="2OqwBi" id="6S2S2q5nDhP" role="3crr_z">
                        <node concept="37vLTw" id="6S2S2q5nDhQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="1Hz5j8LWx7C" resolve="container" />
                        </node>
                        <node concept="liA8E" id="6S2S2q5nDhR" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                          <node concept="355D3s" id="6S2S2q5nDhS" role="37wK5m">
                            <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                            <node concept="1ZhdrF" id="6S2S2q5nDhT" role="lGtFl">
                              <property role="2qtEX8" value="conceptDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386081" />
                              <node concept="3$xsQk" id="6S2S2q5nDhU" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nDhV" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nDhW" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nDhX" role="3clFbG">
                                      <node concept="2OqwBi" id="6S2S2q5nDhY" role="2Oq$k0">
                                        <node concept="30H73N" id="6S2S2q5nDhZ" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="6S2S2q5nDi0" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                        </node>
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORfTM" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:2OF3rgRewqT" resolve="getConceptDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1ZhdrF" id="6S2S2q5nDi2" role="lGtFl">
                              <property role="2qtEX8" value="propertyDeclaration" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386082" />
                              <node concept="3$xsQk" id="6S2S2q5nDi3" role="3$ytzL">
                                <node concept="3clFbS" id="6S2S2q5nDi4" role="2VODD2">
                                  <node concept="3clFbF" id="6S2S2q5nDi5" role="3cqZAp">
                                    <node concept="2OqwBi" id="6S2S2q5nDi6" role="3clFbG">
                                      <node concept="30H73N" id="6S2S2q5nDi7" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="6S2S2q5nDi8" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1ZhdrF" id="6S2S2q5nDi9" role="lGtFl">
                        <property role="2qtEX8" value="datatype" />
                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/8564914671171209694/6373819377346114474" />
                        <node concept="3$xsQk" id="6S2S2q5nDia" role="3$ytzL">
                          <node concept="3clFbS" id="6S2S2q5nDib" role="2VODD2">
                            <node concept="3clFbF" id="6S2S2q5nDic" role="3cqZAp">
                              <node concept="2OqwBi" id="6S2S2q5nDid" role="3clFbG">
                                <node concept="2OqwBi" id="6S2S2q5nDie" role="2Oq$k0">
                                  <node concept="30H73N" id="6S2S2q5nDif" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6S2S2q5nDig" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="6S2S2q5nDih" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="gc7z5ALUYE" role="3K4Cdx">
                    <node concept="10Nm6u" id="gc7z5ALVSs" role="3uHU7w" />
                    <node concept="37vLTw" id="gc7z5ALSw8" role="3uHU7B">
                      <ref role="3cqZAo" node="1Hz5j8LWx7C" resolve="container" />
                    </node>
                  </node>
                  <node concept="1W57fq" id="64p9aapCv9o" role="lGtFl">
                    <node concept="3IZrLx" id="64p9aapCv9p" role="3IZSJc">
                      <node concept="3clFbS" id="64p9aapCv9q" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapCwh4" role="3cqZAp">
                          <node concept="v3LJS" id="64p9aapCwh3" role="3clFbG">
                            <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="64p9aapCwoU" role="UU_$l">
                      <node concept="3crr_t" id="64p9aapDVjs" role="gfFT$">
                        <ref role="1LgM_u" to="tpck:fKAOsGN" resolve="string" />
                        <node concept="2OqwBi" id="64p9aapDVjt" role="3crr_z">
                          <node concept="37vLTw" id="64p9aapDVju" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Hz5j8LWx7C" resolve="container" />
                          </node>
                          <node concept="liA8E" id="64p9aapDVjv" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="355D3s" id="64p9aapDVjw" role="37wK5m">
                              <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                              <node concept="1ZhdrF" id="64p9aapDVjx" role="lGtFl">
                                <property role="2qtEX8" value="conceptDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386081" />
                                <node concept="3$xsQk" id="64p9aapDVjy" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapDVjz" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapDVj$" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapDVj_" role="3clFbG">
                                        <node concept="2OqwBi" id="64p9aapDVjA" role="2Oq$k0">
                                          <node concept="30H73N" id="64p9aapDVjB" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="64p9aapDVjC" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                          </node>
                                        </node>
                                        <node concept="3zqWPK" id="70OdufORfTO" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:2OF3rgRewqT" resolve="getConceptDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1ZhdrF" id="64p9aapDVjE" role="lGtFl">
                                <property role="2qtEX8" value="propertyDeclaration" />
                                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386082" />
                                <node concept="3$xsQk" id="64p9aapDVjF" role="3$ytzL">
                                  <node concept="3clFbS" id="64p9aapDVjG" role="2VODD2">
                                    <node concept="3clFbF" id="64p9aapDVjH" role="3cqZAp">
                                      <node concept="2OqwBi" id="64p9aapDVjI" role="3clFbG">
                                        <node concept="30H73N" id="64p9aapDVjJ" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="64p9aapDVjK" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1ZhdrF" id="64p9aapDVjL" role="lGtFl">
                          <property role="2qtEX8" value="datatype" />
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/8564914671171209694/6373819377346114474" />
                          <node concept="3$xsQk" id="64p9aapDVjM" role="3$ytzL">
                            <node concept="3clFbS" id="64p9aapDVjN" role="2VODD2">
                              <node concept="3clFbF" id="64p9aapDVjO" role="3cqZAp">
                                <node concept="2OqwBi" id="64p9aapDVjP" role="3clFbG">
                                  <node concept="2OqwBi" id="64p9aapDVjQ" role="2Oq$k0">
                                    <node concept="30H73N" id="64p9aapDVjR" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="64p9aapDVjS" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="64p9aapDVjT" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
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
                <node concept="raruj" id="gc7z5AM5nj" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5ALr4I" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5ALrpp" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AM5CE" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AM5CF" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AM6E4" role="3cqZAp">
            <node concept="3clFbC" id="gc7z5AM6RO" role="3clFbG">
              <node concept="v3LJS" id="gc7z5AM7Kg" role="3uHU7w">
                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
              </node>
              <node concept="v3LJS" id="gc7z5AM6E3" role="3uHU7B">
                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Hz5j8LOwQk" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
      <node concept="1Koe21" id="1Hz5j8LOwQl" role="1lVwrX">
        <node concept="9aQIb" id="1Hz5j8LOwQm" role="1Koe22">
          <node concept="3clFbS" id="1Hz5j8LOwQn" role="9aQI4">
            <node concept="3cpWs8" id="1Hz5j8LOwQo" role="3cqZAp">
              <node concept="3cpWsn" id="1Hz5j8LOwQp" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="1Hz5j8LOwQq" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1Hz5j8LOwQr" role="3cqZAp">
              <node concept="2OqwBi" id="1Hz5j8LONZx" role="3clFbG">
                <node concept="1PxgMI" id="1Hz5j8LOSSa" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="1Hz5j8LOTcO" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    <node concept="1ZhdrF" id="1Hz5j8LOTky" role="lGtFl">
                      <property role="2qtEX8" value="conceptDeclaration" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1177026924588/1177026940964" />
                      <node concept="3$xsQk" id="1Hz5j8LOTkz" role="3$ytzL">
                        <node concept="3clFbS" id="1Hz5j8LOTk$" role="2VODD2">
                          <node concept="3clFbF" id="1Hz5j8LOTwA" role="3cqZAp">
                            <node concept="2OqwBi" id="1Hz5j8LOTIB" role="3clFbG">
                              <node concept="30H73N" id="1Hz5j8LOTw_" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1Hz5j8LOTUl" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="1Hz5j8LOSSv" role="lGtFl" />
                  <node concept="37vLTw" id="1Hz5j8LOwQt" role="1m5AlR">
                    <ref role="3cqZAo" node="1Hz5j8LOwQp" resolve="b" />
                    <node concept="1sPUBX" id="1Hz5j8LOwQv" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="1Hz5j8LOwQw" role="1sPUBK">
                        <node concept="3clFbS" id="1Hz5j8LOwQx" role="2VODD2">
                          <node concept="3clFbF" id="1Hz5j8LOwQy" role="3cqZAp">
                            <node concept="2OqwBi" id="1Hz5j8LOwQz" role="3clFbG">
                              <node concept="30H73N" id="1Hz5j8LOwQ$" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1Hz5j8LOwQ_" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="1Hz5j8LOYq_" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="1Hz5j8LPRvc" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapC9XC" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="1Hz5j8LOO5S" role="2OqNvi">
                  <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Hz5j8LPDK1" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
      <node concept="1Koe21" id="1Hz5j8LPDK2" role="1lVwrX">
        <node concept="312cEu" id="gc7z5AL2o$" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5AL2zl" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3cqZAl" id="gc7z5AL2zn" role="3clF45" />
            <node concept="3Tm1VV" id="gc7z5AL2zo" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5AL2zp" role="3clF47">
              <node concept="3cpWs8" id="1Hz5j8LPDK5" role="3cqZAp">
                <node concept="3cpWsn" id="1Hz5j8LPDK6" role="3cpWs9">
                  <property role="TrG5h" value="b" />
                  <node concept="2I9FWS" id="1Hz5j8LPEwc" role="1tU5fm">
                    <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="gc7z5AL4pB" role="3cqZAp">
                <node concept="2YIFZM" id="1GYwYhsprlF" role="3clFbG">
                  <ref role="37wK5l" to="7jhi:~AbstractGeneratedPattern.getNullableElement(java.util.List,int)" resolve="getNullableElement" />
                  <ref role="1Pybhc" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
                  <node concept="37vLTw" id="1GYwYhsprlG" role="37wK5m">
                    <ref role="3cqZAo" node="1Hz5j8LPDK6" resolve="b" />
                    <node concept="1sPUBX" id="1GYwYhsprlH" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="1GYwYhsprlI" role="1sPUBK">
                        <node concept="3clFbS" id="1GYwYhsprlJ" role="2VODD2">
                          <node concept="3clFbF" id="1GYwYhsprlK" role="3cqZAp">
                            <node concept="2OqwBi" id="1GYwYhsprlL" role="3clFbG">
                              <node concept="30H73N" id="1GYwYhsprlM" role="2Oq$k0" />
                              <node concept="1mfA1w" id="1GYwYhsprlN" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="1GYwYhsprlO" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="1GYwYhsprlP" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapCbSb" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1GYwYhsprlQ" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1GYwYhsprlR" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="1GYwYhsprlS" role="3zH0cK">
                        <node concept="3clFbS" id="1GYwYhsprlT" role="2VODD2">
                          <node concept="3clFbF" id="1GYwYhsprlU" role="3cqZAp">
                            <node concept="2OqwBi" id="1GYwYhsprlV" role="3clFbG">
                              <node concept="v3LJS" id="1GYwYhsprlW" role="2Oq$k0">
                                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                              </node>
                              <node concept="2bSWHS" id="1GYwYhsprlX" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="1GYwYhspCWM" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5AL2o_" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5AL2z5" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AM8ax" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AM8ay" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AM9ch" role="3cqZAp">
            <node concept="3y3z36" id="gc7z5AM9kT" role="3clFbG">
              <node concept="v3LJS" id="gc7z5AM9AS" role="3uHU7w">
                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
              </node>
              <node concept="v3LJS" id="gc7z5AM9cg" role="3uHU7B">
                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="gc7z5AMt6B" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
      <node concept="1Koe21" id="gc7z5AMt6C" role="1lVwrX">
        <node concept="312cEu" id="gc7z5AMw_F" role="1Koe22">
          <property role="TrG5h" value="A" />
          <node concept="3clFb_" id="gc7z5AMw_G" role="jymVt">
            <property role="TrG5h" value="sdf" />
            <node concept="3uibUv" id="gc7z5AMw_H" role="3clF45">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="3Tm1VV" id="gc7z5AMw_I" role="1B3o_S" />
            <node concept="3clFbS" id="gc7z5AMw_J" role="3clF47">
              <node concept="3cpWs8" id="gc7z5AMw_K" role="3cqZAp">
                <node concept="3cpWsn" id="gc7z5AMw_L" role="3cpWs9">
                  <property role="TrG5h" value="container" />
                  <node concept="3uibUv" id="gc7z5AM$Ar" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="gc7z5AMA2O" role="11_B2D">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="gc7z5AMw_N" role="33vP2m">
                    <ref role="3cqZAo" node="gc7z5AMw_L" resolve="container" />
                    <node concept="1sPUBX" id="gc7z5AMw_O" role="lGtFl">
                      <ref role="v9R2y" node="1Hz5j8LMXj4" resolve="PatternGet" />
                      <node concept="3NFfHV" id="gc7z5AMw_P" role="1sPUBK">
                        <node concept="3clFbS" id="gc7z5AMw_Q" role="2VODD2">
                          <node concept="3clFbF" id="gc7z5AMw_R" role="3cqZAp">
                            <node concept="2OqwBi" id="gc7z5AMw_S" role="3clFbG">
                              <node concept="30H73N" id="gc7z5AMw_T" role="2Oq$k0" />
                              <node concept="1mfA1w" id="gc7z5AMw_U" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="v3LJS" id="gc7z5AMw_V" role="v9R3O">
                        <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                      </node>
                      <node concept="30H73N" id="gc7z5AMw_W" role="v9R3O" />
                      <node concept="v3LJS" id="64p9aapCfOz" role="v9R3O">
                        <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="gc7z5AMw_X" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="gc7z5AMw_Y" role="3cqZAp">
                <node concept="3K4zz7" id="gc7z5AMw_Z" role="3cqZAk">
                  <node concept="3eOSWO" id="gc7z5AMJKm" role="3K4Cdx">
                    <node concept="3cmrfG" id="gc7z5AMKEx" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                      <node concept="17Uvod" id="gc7z5AML_T" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="gc7z5AML_U" role="3zH0cK">
                          <node concept="3clFbS" id="gc7z5AML_V" role="2VODD2">
                            <node concept="3clFbF" id="gc7z5AMNsN" role="3cqZAp">
                              <node concept="2OqwBi" id="gc7z5AMNNR" role="3clFbG">
                                <node concept="v3LJS" id="gc7z5AMNsM" role="2Oq$k0">
                                  <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                                </node>
                                <node concept="2bSWHS" id="gc7z5AMQ25" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="gc7z5AMDQ7" role="3uHU7B">
                      <node concept="37vLTw" id="gc7z5AMwAo" role="2Oq$k0">
                        <ref role="3cqZAo" node="gc7z5AMw_L" resolve="container" />
                      </node>
                      <node concept="liA8E" id="gc7z5AMFpQ" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6S2S2q5nEou" role="3K4E3e">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2OqwBi" id="6S2S2q5nEov" role="37wK5m">
                      <node concept="37vLTw" id="6S2S2q5nEow" role="2Oq$k0">
                        <ref role="3cqZAo" node="gc7z5AMw_L" resolve="container" />
                      </node>
                      <node concept="liA8E" id="6S2S2q5nEox" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="6S2S2q5nEoy" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                          <node concept="17Uvod" id="6S2S2q5nEoz" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                            <node concept="3zFVjK" id="6S2S2q5nEo$" role="3zH0cK">
                              <node concept="3clFbS" id="6S2S2q5nEo_" role="2VODD2">
                                <node concept="3clFbF" id="6S2S2q5nEoA" role="3cqZAp">
                                  <node concept="2OqwBi" id="6S2S2q5nEoB" role="3clFbG">
                                    <node concept="v3LJS" id="6S2S2q5nEoC" role="2Oq$k0">
                                      <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                                    </node>
                                    <node concept="2bSWHS" id="6S2S2q5nEoD" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6S2S2q5nR7I" role="3K4GZi" />
                  <node concept="1W57fq" id="64p9aapCyLY" role="lGtFl">
                    <node concept="3IZrLx" id="64p9aapCyLZ" role="3IZSJc">
                      <node concept="3clFbS" id="64p9aapCyM0" role="2VODD2">
                        <node concept="3clFbF" id="64p9aapC$R_" role="3cqZAp">
                          <node concept="v3LJS" id="64p9aapC$R$" role="3clFbG">
                            <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="64p9aapC$Wx" role="UU_$l">
                      <node concept="2OqwBi" id="64p9aapCB1y" role="gfFT$">
                        <node concept="37vLTw" id="64p9aapCB1z" role="2Oq$k0">
                          <ref role="3cqZAo" node="gc7z5AMw_L" resolve="container" />
                        </node>
                        <node concept="liA8E" id="64p9aapCB1$" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="64p9aapCB1_" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                            <node concept="17Uvod" id="64p9aapCB1A" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                              <node concept="3zFVjK" id="64p9aapCB1B" role="3zH0cK">
                                <node concept="3clFbS" id="64p9aapCB1C" role="2VODD2">
                                  <node concept="3clFbF" id="64p9aapCB1D" role="3cqZAp">
                                    <node concept="2OqwBi" id="64p9aapCB1E" role="3clFbG">
                                      <node concept="v3LJS" id="64p9aapCB1F" role="2Oq$k0">
                                        <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
                                      </node>
                                      <node concept="2bSWHS" id="64p9aapCB1G" role="2OqNvi" />
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
                <node concept="raruj" id="gc7z5AMwAp" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="gc7z5AMwAq" role="1B3o_S" />
          <node concept="3uibUv" id="gc7z5AMwAr" role="1zkMxy">
            <ref role="3uigEE" to="7jhi:~AbstractGeneratedPattern" resolve="AbstractGeneratedPattern" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5AMt78" role="30HLyM">
        <node concept="3clFbS" id="gc7z5AMt79" role="2VODD2">
          <node concept="3clFbF" id="gc7z5AMt7a" role="3cqZAp">
            <node concept="3clFbC" id="gc7z5AMuAB" role="3clFbG">
              <node concept="v3LJS" id="gc7z5AMt7d" role="3uHU7B">
                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
              </node>
              <node concept="v3LJS" id="gc7z5AMt7c" role="3uHU7w">
                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1Hz5j8LOO89" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
      <node concept="1Koe21" id="1Hz5j8LOO8a" role="1lVwrX">
        <node concept="9aQIb" id="1Hz5j8LOO8b" role="1Koe22">
          <node concept="3clFbS" id="1Hz5j8LOO8c" role="9aQI4">
            <node concept="3cpWs8" id="1Hz5j8LOO8d" role="3cqZAp">
              <node concept="3cpWsn" id="1Hz5j8LOO8e" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="1Hz5j8LOO8f" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1Hz5j8LOO8g" role="3cqZAp">
              <node concept="2OqwBi" id="1Hz5j8LOO8h" role="3clFbG">
                <node concept="37vLTw" id="1Hz5j8LOO8i" role="2Oq$k0">
                  <ref role="3cqZAo" node="1Hz5j8LOO8e" resolve="b" />
                  <node concept="raruj" id="1Hz5j8LOO8j" role="lGtFl" />
                  <node concept="1ZhdrF" id="1Hz5j8LOVaY" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="1Hz5j8LOVaZ" role="3$ytzL">
                      <node concept="3clFbS" id="1Hz5j8LOVb0" role="2VODD2">
                        <node concept="3clFbF" id="1Hz5j8LOVxz" role="3cqZAp">
                          <node concept="2OqwBi" id="1Hz5j8LOVG5" role="3clFbG">
                            <node concept="1iwH7S" id="1Hz5j8LOVxu" role="2Oq$k0" />
                            <node concept="1iwH70" id="1Hz5j8LOVLv" role="2OqNvi">
                              <ref role="1iwH77" node="1Hz5j8LQJw5" resolve="rootNodeVarL" />
                              <node concept="v3LJS" id="1Hz5j8LOYCP" role="1iwH7V">
                                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="1Hz5j8LOO8r" role="2OqNvi">
                  <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="gc7z5APNOV" role="30HLyM">
        <node concept="3clFbS" id="gc7z5APNOW" role="2VODD2">
          <node concept="3clFbF" id="gc7z5APNPl" role="3cqZAp">
            <node concept="3y3z36" id="gc7z5APPW7" role="3clFbG">
              <node concept="v3LJS" id="gc7z5APNPk" role="3uHU7B">
                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
              </node>
              <node concept="v3LJS" id="gc7z5APOXH" role="3uHU7w">
                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="gc7z5APLm5" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3t:2g69lt1$JCp" resolve="PatternBuilder" />
      <node concept="1Koe21" id="gc7z5APLm6" role="1lVwrX">
        <node concept="9aQIb" id="gc7z5APLm7" role="1Koe22">
          <node concept="3clFbS" id="gc7z5APLm8" role="9aQI4">
            <node concept="3cpWs8" id="gc7z5APLm9" role="3cqZAp">
              <node concept="3cpWsn" id="gc7z5APLma" role="3cpWs9">
                <property role="TrG5h" value="b" />
                <node concept="3Tqbb2" id="gc7z5APLmb" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="gc7z5APTCU" role="3cqZAp">
              <node concept="raruj" id="gc7z5APVDn" role="lGtFl" />
              <node concept="2YIFZM" id="6S2S2q5nFwy" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                <node concept="37vLTw" id="6S2S2q5nFwz" role="37wK5m">
                  <ref role="3cqZAo" node="gc7z5APLma" resolve="b" />
                  <node concept="1ZhdrF" id="6S2S2q5nFw$" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="6S2S2q5nFw_" role="3$ytzL">
                      <node concept="3clFbS" id="6S2S2q5nFwA" role="2VODD2">
                        <node concept="3clFbF" id="6S2S2q5nFwB" role="3cqZAp">
                          <node concept="2OqwBi" id="6S2S2q5nFwC" role="3clFbG">
                            <node concept="1iwH7S" id="6S2S2q5nFwD" role="2Oq$k0" />
                            <node concept="1iwH70" id="6S2S2q5nFwE" role="2OqNvi">
                              <ref role="1iwH77" node="1Hz5j8LQJw5" resolve="rootNodeVarL" />
                              <node concept="v3LJS" id="6S2S2q5nFwF" role="1iwH7V">
                                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="64p9aapEh1h" role="lGtFl">
                  <node concept="3IZrLx" id="64p9aapEh1i" role="3IZSJc">
                    <node concept="3clFbS" id="64p9aapEh1j" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapEh8u" role="3cqZAp">
                        <node concept="v3LJS" id="64p9aapEh8t" role="3clFbG">
                          <ref role="v3LJV" node="64p9aapBSAU" resolve="optional" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gft3U" id="64p9aapEhcA" role="UU_$l">
                    <node concept="37vLTw" id="64p9aapEhfc" role="gfFT$">
                      <ref role="3cqZAo" node="gc7z5APLma" resolve="b" />
                      <node concept="1ZhdrF" id="64p9aapEhfd" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="64p9aapEhfe" role="3$ytzL">
                          <node concept="3clFbS" id="64p9aapEhff" role="2VODD2">
                            <node concept="3clFbF" id="64p9aapEhfg" role="3cqZAp">
                              <node concept="2OqwBi" id="64p9aapEhfh" role="3clFbG">
                                <node concept="1iwH7S" id="64p9aapEhfi" role="2Oq$k0" />
                                <node concept="1iwH70" id="64p9aapEhfj" role="2OqNvi">
                                  <ref role="1iwH77" node="1Hz5j8LQJw5" resolve="rootNodeVarL" />
                                  <node concept="v3LJS" id="64p9aapEhfk" role="1iwH7V">
                                    <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
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
      <node concept="30G5F_" id="gc7z5APRyX" role="30HLyM">
        <node concept="3clFbS" id="gc7z5APRyY" role="2VODD2">
          <node concept="3clFbF" id="gc7z5APRAU" role="3cqZAp">
            <node concept="3clFbC" id="gc7z5APRJy" role="3clFbG">
              <node concept="v3LJS" id="gc7z5APSDn" role="3uHU7w">
                <ref role="v3LJV" node="1Hz5j8LOWUS" resolve="var" />
              </node>
              <node concept="v3LJS" id="gc7z5APRAT" role="3uHU7B">
                <ref role="v3LJV" node="1Hz5j8LPIUe" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="1Hz5j8LNQ3d" role="jxRDz">
      <node concept="1lLz0L" id="1Hz5j8LNQ3S" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="unknown concept" />
      </node>
    </node>
  </node>
</model>

