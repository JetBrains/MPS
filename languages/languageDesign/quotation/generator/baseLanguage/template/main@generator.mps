<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959034c(jetbrains.mps.lang.quotation.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wg2h" ref="r:b7e75e21-5f04-43f4-94cb-24c612b5504a(jetbrains.mps.lang.quotation.generator.baseLanguage.template.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="ii9q" ref="r:1dca5eee-6e62-48f8-9e94-dbbe31be2456(jetbrains.mps.lang.quotation.behavior)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="tp27" ref="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
    <import index="6vmh" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.builder(MPS.Core/)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
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
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
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
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <property id="7556128013608567747" name="private" index="2om86B" />
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
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="lg" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
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
      <concept id="1217889960776" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase" flags="nn" index="2fTw9j">
        <child id="1217890689512" name="userKey" index="2fWi3N" />
      </concept>
      <concept id="1217894033795" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess" flags="nn" index="2g92yo" />
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1187483539462121947" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateIndexedName" flags="nn" index="32eq0B">
        <property id="1187483539462194806" name="skipFirstIndex" index="32f$Ya" />
        <child id="1187483539462121948" name="baseName" index="32eq0w" />
        <child id="1187483539462121949" name="contextNode" index="32eq0x" />
      </concept>
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
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
      <concept id="1217282130234" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputModel" flags="nn" index="1FEO0x" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="3585982959253588676" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticMethodExpression" flags="nn" index="2Tav94">
        <child id="3585982959253588677" name="inner" index="2Tav95" />
        <child id="3585982959253588678" name="method" index="2Tav96" />
      </concept>
      <concept id="3585982959253821850" name="jetbrains.mps.baseLanguageInternal.structure.ExtractStaticMethod_CallExpression" flags="nn" index="2TbA4q" />
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="8564914671171067370" name="jetbrains.mps.lang.smodel.structure.PropertySerializeExpression" flags="ng" index="3csAPD">
        <reference id="8822815258147051351" name="datatype" index="uGbzG" />
        <child id="8564914671171120345" name="parameter" index="3csLLq" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="6407023681583040688" name="jetbrains.mps.lang.smodel.structure.AllAttributeQualifier" flags="ng" index="3CFTEB" />
      <concept id="6407023681583040953" name="jetbrains.mps.lang.smodel.structure.PropertyAttributeQualifier" flags="ng" index="3CFTII">
        <reference id="6407023681583040954" name="attributeConcept" index="3CFTIH" />
        <child id="6407023681583040955" name="propertyQualifier" index="3CFTIG" />
      </concept>
      <concept id="6407023681583036855" name="jetbrains.mps.lang.smodel.structure.LinkAttributeQualifier" flags="ng" index="3CFYIw">
        <reference id="6407023681583036856" name="attributeConcept" index="3CFYIJ" />
        <child id="6407023681583038098" name="linkQualifier" index="3CFYM5" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="13MO4I" id="hqc8hm6">
    <property role="TrG5h" value="QuotedNode_to_statementList" />
    <ref role="3gUMe" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1N15co" id="1WT1RVIEcqH" role="1s_3oS">
      <property role="TrG5h" value="quotation" />
      <node concept="3Tqbb2" id="1WT1RVIEcqI" role="1N15GL">
        <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
      </node>
    </node>
    <node concept="3clFb_" id="hqc8hm7" role="13RCb5">
      <property role="TrG5h" value="method" />
      <node concept="3cqZAl" id="hqc8hm8" role="3clF45" />
      <node concept="3clFbS" id="hqc8hm9" role="3clF47">
        <node concept="3cpWs8" id="hvkXAZw" role="3cqZAp">
          <node concept="3cpWsn" id="hvkXAZx" role="3cpWs9">
            <property role="TrG5h" value="_node_" />
            <node concept="3uibUv" id="Ygr8xILzu0" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1WT1RVIEpGt" role="3cqZAp">
          <node concept="3cpWsn" id="1WT1RVIEpGu" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="1WT1RVIEpGv" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1WT1RVIEybk" role="3cqZAp">
          <node concept="raruj" id="1cJuMHFswG" role="lGtFl" />
          <node concept="1W57fq" id="1WT1RVIFaHz" role="lGtFl">
            <node concept="3IZrLx" id="hqc8hsZ" role="3IZSJc">
              <node concept="3clFbS" id="hqc8ht0" role="2VODD2">
                <node concept="3clFbF" id="E_ws3Y3KDR" role="3cqZAp">
                  <node concept="2OqwBi" id="E_ws3Y3P5U" role="3clFbG">
                    <node concept="2HxqBE" id="E_ws3Y3Spu" role="2OqNvi">
                      <node concept="1bVj0M" id="E_ws3Y3Spw" role="23t8la">
                        <node concept="3clFbS" id="E_ws3Y3Spx" role="1bW5cS">
                          <node concept="3clFbF" id="E_ws3Y3UzD" role="3cqZAp">
                            <node concept="3fqX7Q" id="E_ws3Y3UzB" role="3clFbG">
                              <node concept="1eOMI4" id="3$myXoLqpOb" role="3fr31v">
                                <node concept="22lmx$" id="hqc8htd" role="1eOMHV">
                                  <node concept="2OqwBi" id="hxx$OHp" role="3uHU7w">
                                    <node concept="1mIQ4w" id="hqc8htg" role="2OqNvi">
                                      <node concept="chp4Y" id="hqc8hth" role="cj9EA">
                                        <ref role="cht4Q" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="E_ws3Y45Pk" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Wqh" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="hxx_2L2" role="3uHU7B">
                                    <node concept="37vLTw" id="E_ws3Y42q0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0Wqh" resolve="it" />
                                    </node>
                                    <node concept="1mIQ4w" id="hqc8htk" role="2OqNvi">
                                      <node concept="chp4Y" id="hqc8htl" role="cj9EA">
                                        <ref role="cht4Q" to="tp3r:hqc44po" resolve="Antiquotation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wqh" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wqi" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="E_ws3Y3KID" role="2Oq$k0">
                      <node concept="32TBzR" id="E_ws3Y3MtV" role="2OqNvi" />
                      <node concept="30H73N" id="E_ws3Y3KDP" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="1WT1RVIEEiu" role="lGtFl">
            <ref role="v9R2y" node="1WT1RVIBX0T" resolve="nodeBuilder" />
            <node concept="2OqwBi" id="1WT1RVIENPQ" role="v9R3O">
              <node concept="1iwH7S" id="1WT1RVIEKrE" role="2Oq$k0" />
              <node concept="3cR$yn" id="1WT1RVIERYH" role="2OqNvi">
                <ref role="3cRzXn" node="1WT1RVIEcqH" resolve="quotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="hqc8htr" role="3cqZAp">
          <node concept="3clFbS" id="hqc8hts" role="9aQI4">
            <node concept="3clFbF" id="hqc8htt" role="3cqZAp">
              <node concept="37vLTI" id="hqc8htu" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTAzl" role="37vLTJ">
                  <ref role="3cqZAo" node="hvkXAZx" resolve="_node_" />
                  <node concept="1ZhdrF" id="hvkY67i" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="hvkY67j" role="3$ytzL">
                      <node concept="3clFbS" id="hvkY67k" role="2VODD2">
                        <node concept="3clFbF" id="hvkYtKe" role="3cqZAp">
                          <node concept="2OqwBi" id="hHmQfd3" role="3clFbG">
                            <node concept="1iwH7S" id="hHmQfd5" role="2Oq$k0" />
                            <node concept="1iwH70" id="hHmQfdm" role="2OqNvi">
                              <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                              <node concept="30H73N" id="hvkYtKh" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10QFUN" id="hqc8htw" role="37vLTx">
                  <node concept="37vLTw" id="2BHiRxgmDvG" role="10QFUP">
                    <ref role="3cqZAo" node="hqc8hz1" resolve="expr" />
                    <node concept="1ZhdrF" id="hqc8hty" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="hqc8htz" role="3$ytzL">
                        <node concept="3clFbS" id="hqc8ht$" role="2VODD2">
                          <node concept="3cpWs8" id="hqc8htG" role="3cqZAp">
                            <node concept="3cpWsn" id="hqc8htH" role="3cpWs9">
                              <property role="TrG5h" value="antiquotation" />
                              <node concept="3Tqbb2" id="hqc8htI" role="1tU5fm">
                                <ref role="ehGHo" to="tp3r:hqc44po" resolve="Antiquotation" />
                              </node>
                              <node concept="2OqwBi" id="7Nrs$T2OZwZ" role="33vP2m">
                                <node concept="2OqwBi" id="7Nrs$T2OXST" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7Nrs$T2OWZr" role="2Oq$k0">
                                    <node concept="30H73N" id="7Nrs$T2OWWd" role="2Oq$k0" />
                                    <node concept="32TBzR" id="7Nrs$T2OXd1" role="2OqNvi" />
                                  </node>
                                  <node concept="v3k3i" id="7Nrs$T2OYXE" role="2OqNvi">
                                    <node concept="chp4Y" id="7Nrs$T2OZ7O" role="v3oSu">
                                      <ref role="cht4Q" to="tp3r:hqc44po" resolve="Antiquotation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="7Nrs$T2P01L" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="hqc8hu3" role="3cqZAp">
                            <node concept="3clFbC" id="hqc8hu4" role="3clFbw">
                              <node concept="10Nm6u" id="hqc8hu5" role="3uHU7w" />
                              <node concept="37vLTw" id="3GM_nagTz1A" role="3uHU7B">
                                <ref role="3cqZAo" node="hqc8htH" resolve="antiquotation" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="hqc8hu7" role="3clFbx">
                              <node concept="3cpWs6" id="hqc8hu8" role="3cqZAp">
                                <node concept="10Nm6u" id="hqc8hu9" role="3cqZAk" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="hqc8hua" role="3cqZAp">
                            <node concept="2OqwBi" id="hHmQfdI" role="3cqZAk">
                              <node concept="1iwH7S" id="hHmQfdK" role="2Oq$k0" />
                              <node concept="1iwH70" id="hHmQfdL" role="2OqNvi">
                                <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                                <node concept="2OqwBi" id="hxx$DHy" role="1iwH7V">
                                  <node concept="37vLTw" id="3GM_nagTtY3" role="2Oq$k0">
                                    <ref role="3cqZAo" node="hqc8htH" resolve="antiquotation" />
                                  </node>
                                  <node concept="3TrEf2" id="hv_d7Kp" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="i2suFvi" role="10QFUM" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hqErf6Z" role="3cqZAp">
              <node concept="3y3z36" id="E_ws3YgSPn" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT$04" role="3uHU7B">
                  <ref role="3cqZAo" node="hvkXAZx" resolve="_node_" />
                  <node concept="1ZhdrF" id="E_ws3YgPKf" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="E_ws3YgPKg" role="3$ytzL">
                      <node concept="3clFbS" id="E_ws3YgPKh" role="2VODD2">
                        <node concept="3clFbF" id="E_ws3YgPKi" role="3cqZAp">
                          <node concept="2OqwBi" id="E_ws3YgPKj" role="3clFbG">
                            <node concept="1iwH7S" id="E_ws3YgPKk" role="2Oq$k0" />
                            <node concept="1iwH70" id="E_ws3YgPKl" role="2OqNvi">
                              <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                              <node concept="30H73N" id="E_ws3YgPKm" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="E_ws3YgVtl" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="hqErf70" role="3clFbx">
                <node concept="3clFbF" id="hqErjzk" role="3cqZAp">
                  <node concept="2OqwBi" id="hHmSlLV" role="3clFbG">
                    <node concept="liA8E" id="hHmSlLW" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                      <node concept="10Nm6u" id="4ToIrUjQD0_" role="37wK5m">
                        <node concept="5jKBG" id="za$VMvkOfJ" role="lGtFl">
                          <ref role="v9R2y" to="tp27:7jb4LXp9xsD" resolve="reduce_ContainmentLinkId_SContainmentLink" />
                          <node concept="3NFfHV" id="4ToIrUjQDqV" role="5jGum">
                            <node concept="3clFbS" id="4ToIrUjQDqW" role="2VODD2">
                              <node concept="3cpWs8" id="776YOYGVRrN" role="3cqZAp">
                                <node concept="3cpWsn" id="776YOYGVRrO" role="3cpWs9">
                                  <property role="TrG5h" value="cid" />
                                  <node concept="3Tqbb2" id="776YOYGVRrP" role="1tU5fm">
                                    <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                                  </node>
                                  <node concept="2OqwBi" id="776YOYGVRrQ" role="33vP2m">
                                    <node concept="2OqwBi" id="776YOYGVRrR" role="2Oq$k0">
                                      <node concept="1iwH7S" id="776YOYGVRrS" role="2Oq$k0" />
                                      <node concept="1r8y6K" id="776YOYGVRrT" role="2OqNvi" />
                                    </node>
                                    <node concept="I8ghe" id="776YOYGVRrU" role="2OqNvi">
                                      <ref role="I8UWU" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="776YOYGVRtQ" role="3cqZAp">
                                <node concept="2OqwBi" id="776YOYGVRFS" role="3clFbG">
                                  <node concept="37vLTw" id="776YOYGVRtO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="776YOYGVRrO" resolve="cid" />
                                  </node>
                                  <node concept="3zqWPK" id="70OdufORg3t" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:7jb4LXp8VsD" resolve="setLink" />
                                    <node concept="2OqwBi" id="70OdufORg3v" role="37wK5m">
                                      <node concept="2JrnkZ" id="70OdufORg3w" role="2Oq$k0">
                                        <node concept="30H73N" id="70OdufORg3x" role="2JrQYb" />
                                      </node>
                                      <node concept="liA8E" id="70OdufORg3y" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="776YOYGVSGC" role="3cqZAp">
                                <node concept="37vLTw" id="776YOYGVSGE" role="3cqZAk">
                                  <ref role="3cqZAo" node="776YOYGVRrO" resolve="cid" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="3ztslReWoLc" role="37wK5m">
                        <ref role="37wK5l" to="i8bi:3ztslReVIVs" resolve="copyIfNecessary" />
                        <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                        <node concept="37vLTw" id="3ztslReWoLd" role="37wK5m">
                          <ref role="3cqZAo" node="hvkXAZx" resolve="_node_" />
                          <node concept="1ZhdrF" id="3ztslReWoLe" role="lGtFl">
                            <property role="2qtEX8" value="variableDeclaration" />
                            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                            <node concept="3$xsQk" id="3ztslReWoLf" role="3$ytzL">
                              <node concept="3clFbS" id="3ztslReWoLg" role="2VODD2">
                                <node concept="3clFbF" id="3ztslReWoLh" role="3cqZAp">
                                  <node concept="2OqwBi" id="3ztslReWoLi" role="3clFbG">
                                    <node concept="1iwH7S" id="3ztslReWoLj" role="2Oq$k0" />
                                    <node concept="1iwH70" id="3ztslReWoLk" role="2OqNvi">
                                      <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                                      <node concept="30H73N" id="3ztslReWoLl" role="1iwH7V" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2XuYaFIdZrt" role="2Oq$k0">
                      <ref role="3cqZAo" node="1WT1RVIEpGu" resolve="parent" />
                      <node concept="1ZhdrF" id="2XuYaFIe0mE" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="hqErjzo" role="3$ytzL">
                          <node concept="3clFbS" id="hqErjzp" role="2VODD2">
                            <node concept="3clFbF" id="hvl4Ksc" role="3cqZAp">
                              <node concept="2OqwBi" id="hHmQfdE" role="3clFbG">
                                <node concept="1iwH7S" id="hHmQfdG" role="2Oq$k0" />
                                <node concept="1iwH70" id="hHmQfdH" role="2OqNvi">
                                  <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                                  <node concept="2OqwBi" id="hxx$XgW" role="1iwH7V">
                                    <node concept="30H73N" id="hvl4Ksh" role="2Oq$k0" />
                                    <node concept="1mfA1w" id="hvl4Ksg" role="2OqNvi" />
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
          <node concept="raruj" id="1cJuMHFvz3" role="lGtFl" />
          <node concept="1W57fq" id="hqc8hwg" role="lGtFl">
            <node concept="3IZrLx" id="hqc8hwh" role="3IZSJc">
              <node concept="3clFbS" id="hqc8hwi" role="2VODD2">
                <node concept="3clFbF" id="E_ws3Y3cgU" role="3cqZAp">
                  <node concept="2OqwBi" id="E_ws3Y3gvD" role="3clFbG">
                    <node concept="2HwmR7" id="E_ws3Y3iSc" role="2OqNvi">
                      <node concept="1bVj0M" id="E_ws3Y3iSe" role="23t8la">
                        <node concept="3clFbS" id="E_ws3Y3iSf" role="1bW5cS">
                          <node concept="3clFbF" id="E_ws3Y3kBy" role="3cqZAp">
                            <node concept="2OqwBi" id="E_ws3Y3kVC" role="3clFbG">
                              <node concept="1mIQ4w" id="E_ws3Y3mK7" role="2OqNvi">
                                <node concept="chp4Y" id="E_ws3Y3osm" role="cj9EA">
                                  <ref role="cht4Q" to="tp3r:hqc44po" resolve="Antiquotation" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="E_ws3Y3kBx" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wqj" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wqj" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wqk" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="E_ws3Y3clG" role="2Oq$k0">
                      <node concept="32TBzR" id="E_ws3Y3dZF" role="2OqNvi" />
                      <node concept="30H73N" id="E_ws3Y3cgS" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="hqc8hxx" role="3cqZAp">
          <node concept="10QFUN" id="2XuYaFIe6du" role="1DdaDG">
            <node concept="2I9FWS" id="2XuYaFIe6dv" role="10QFUM" />
            <node concept="37vLTw" id="2XuYaFIe6dw" role="10QFUP">
              <ref role="3cqZAo" node="hqc8hz1" resolve="expr" />
              <node concept="1ZhdrF" id="2XuYaFIe6dx" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="2XuYaFIe6dy" role="3$ytzL">
                  <node concept="3clFbS" id="2XuYaFIe6dz" role="2VODD2">
                    <node concept="3cpWs8" id="2XuYaFIe6d$" role="3cqZAp">
                      <node concept="3cpWsn" id="2XuYaFIe6d_" role="3cpWs9">
                        <property role="TrG5h" value="antiquotation" />
                        <node concept="3Tqbb2" id="2XuYaFIe6dA" role="1tU5fm">
                          <ref role="ehGHo" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                        </node>
                        <node concept="10Nm6u" id="2XuYaFIe6dB" role="33vP2m" />
                      </node>
                    </node>
                    <node concept="1DcWWT" id="2XuYaFIe6dC" role="3cqZAp">
                      <node concept="2OqwBi" id="2XuYaFIe6dD" role="1DdaDG">
                        <node concept="30H73N" id="2XuYaFIe6dE" role="2Oq$k0" />
                        <node concept="32TBzR" id="2XuYaFIe6dF" role="2OqNvi" />
                      </node>
                      <node concept="3cpWsn" id="2XuYaFIe6dG" role="1Duv9x">
                        <property role="TrG5h" value="child" />
                        <node concept="3Tqbb2" id="2XuYaFIe6dH" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="2XuYaFIe6dI" role="2LFqv$">
                        <node concept="3clFbJ" id="2XuYaFIe6dJ" role="3cqZAp">
                          <node concept="2OqwBi" id="2XuYaFIe6dK" role="3clFbw">
                            <node concept="37vLTw" id="2XuYaFIe6dL" role="2Oq$k0">
                              <ref role="3cqZAo" node="2XuYaFIe6dG" resolve="child" />
                            </node>
                            <node concept="1mIQ4w" id="2XuYaFIe6dM" role="2OqNvi">
                              <node concept="chp4Y" id="2XuYaFIe6dN" role="cj9EA">
                                <ref role="cht4Q" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="2XuYaFIe6dO" role="3clFbx">
                            <node concept="3clFbF" id="2XuYaFIe6dP" role="3cqZAp">
                              <node concept="37vLTI" id="2XuYaFIe6dQ" role="3clFbG">
                                <node concept="37vLTw" id="2XuYaFIe6dR" role="37vLTJ">
                                  <ref role="3cqZAo" node="2XuYaFIe6d_" resolve="antiquotation" />
                                </node>
                                <node concept="1PxgMI" id="2XuYaFIe6dS" role="37vLTx">
                                  <node concept="37vLTw" id="2XuYaFIe6dT" role="1m5AlR">
                                    <ref role="3cqZAo" node="2XuYaFIe6dG" resolve="child" />
                                  </node>
                                  <node concept="chp4Y" id="2XuYaFIe6dU" role="3oSUPX">
                                    <ref role="cht4Q" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3zACq4" id="2XuYaFIe6dV" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2XuYaFIe6dW" role="3cqZAp">
                      <node concept="3clFbC" id="2XuYaFIe6dX" role="3clFbw">
                        <node concept="10Nm6u" id="2XuYaFIe6dY" role="3uHU7w" />
                        <node concept="37vLTw" id="2XuYaFIe6dZ" role="3uHU7B">
                          <ref role="3cqZAo" node="2XuYaFIe6d_" resolve="antiquotation" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2XuYaFIe6e0" role="3clFbx">
                        <node concept="3cpWs6" id="2XuYaFIe6e1" role="3cqZAp">
                          <node concept="10Nm6u" id="2XuYaFIe6e2" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2XuYaFIe6e3" role="3cqZAp">
                      <node concept="2OqwBi" id="2XuYaFIe6e4" role="3cqZAk">
                        <node concept="1iwH7S" id="2XuYaFIe6e5" role="2Oq$k0" />
                        <node concept="1iwH70" id="2XuYaFIe6e6" role="2OqNvi">
                          <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                          <node concept="2OqwBi" id="2XuYaFIe6e7" role="1iwH7V">
                            <node concept="37vLTw" id="2XuYaFIe6e8" role="2Oq$k0">
                              <ref role="3cqZAo" node="2XuYaFIe6d_" resolve="antiquotation" />
                            </node>
                            <node concept="3TrEf2" id="2XuYaFIe6e9" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
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
          <node concept="3cpWsn" id="hqc8hxz" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="i2s1z5e" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="hqc8hx_" role="2LFqv$">
            <node concept="3clFbF" id="hqc8hxA" role="3cqZAp">
              <node concept="2OqwBi" id="hHmSkR2" role="3clFbG">
                <node concept="liA8E" id="hHmSkR3" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="10Nm6u" id="4ToIrUjQFq4" role="37wK5m">
                    <node concept="5jKBG" id="za$VMvkOfK" role="lGtFl">
                      <ref role="v9R2y" to="tp27:7jb4LXp9xsD" resolve="reduce_ContainmentLinkId_SContainmentLink" />
                      <node concept="3NFfHV" id="4ToIrUjQFq6" role="5jGum">
                        <node concept="3clFbS" id="4ToIrUjQFq7" role="2VODD2">
                          <node concept="3cpWs8" id="776YOYGVSOk" role="3cqZAp">
                            <node concept="3cpWsn" id="776YOYGVSOl" role="3cpWs9">
                              <property role="TrG5h" value="cid" />
                              <node concept="3Tqbb2" id="776YOYGVSOm" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                              </node>
                              <node concept="2OqwBi" id="776YOYGVSOn" role="33vP2m">
                                <node concept="2OqwBi" id="776YOYGVSOo" role="2Oq$k0">
                                  <node concept="1iwH7S" id="776YOYGVSOp" role="2Oq$k0" />
                                  <node concept="1r8y6K" id="776YOYGVSOq" role="2OqNvi" />
                                </node>
                                <node concept="I8ghe" id="776YOYGVSOr" role="2OqNvi">
                                  <ref role="I8UWU" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="776YOYGVSOs" role="3cqZAp">
                            <node concept="2OqwBi" id="776YOYGVSOt" role="3clFbG">
                              <node concept="37vLTw" id="776YOYGVSOu" role="2Oq$k0">
                                <ref role="3cqZAo" node="776YOYGVSOl" resolve="cid" />
                              </node>
                              <node concept="3zqWPK" id="70OdufORg3z" role="2OqNvi">
                                <ref role="37wK5l" to="tpeu:7jb4LXp8VsD" resolve="setLink" />
                                <node concept="2OqwBi" id="70OdufORg3_" role="37wK5m">
                                  <node concept="2JrnkZ" id="70OdufORg3A" role="2Oq$k0">
                                    <node concept="30H73N" id="70OdufORg3B" role="2JrQYb" />
                                  </node>
                                  <node concept="liA8E" id="70OdufORg3C" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="776YOYGVSO$" role="3cqZAp">
                            <node concept="37vLTw" id="776YOYGVSO_" role="3cqZAk">
                              <ref role="3cqZAo" node="776YOYGVSOl" resolve="cid" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3ztslReWpuQ" role="37wK5m">
                    <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                    <ref role="37wK5l" to="i8bi:3ztslReVIVs" resolve="copyIfNecessary" />
                    <node concept="37vLTw" id="3ztslReWpuR" role="37wK5m">
                      <ref role="3cqZAo" node="hqc8hxz" resolve="child" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2XuYaFIdQAF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1WT1RVIEpGu" resolve="parent" />
                  <node concept="1ZhdrF" id="2XuYaFIdRys" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="hqc8hxE" role="3$ytzL">
                      <node concept="3clFbS" id="hqc8hxF" role="2VODD2">
                        <node concept="3clFbF" id="hvl7FLl" role="3cqZAp">
                          <node concept="2OqwBi" id="hHmQfeP" role="3clFbG">
                            <node concept="1iwH7S" id="hHmQfeR" role="2Oq$k0" />
                            <node concept="1iwH70" id="hHmQfeS" role="2OqNvi">
                              <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                              <node concept="2OqwBi" id="hxx_66A" role="1iwH7V">
                                <node concept="30H73N" id="hvl7FLq" role="2Oq$k0" />
                                <node concept="1mfA1w" id="hvl7FLp" role="2OqNvi" />
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
          <node concept="raruj" id="1cJuMHFz$1" role="lGtFl" />
          <node concept="1W57fq" id="1cJuMHFB62" role="lGtFl">
            <node concept="3IZrLx" id="hqc8hyD" role="3IZSJc">
              <node concept="3clFbS" id="hqc8hyE" role="2VODD2">
                <node concept="3clFbF" id="E_ws3Y3tGZ" role="3cqZAp">
                  <node concept="2OqwBi" id="E_ws3Y3xXF" role="3clFbG">
                    <node concept="2HwmR7" id="E_ws3Y3_eB" role="2OqNvi">
                      <node concept="1bVj0M" id="E_ws3Y3_eD" role="23t8la">
                        <node concept="3clFbS" id="E_ws3Y3_eE" role="1bW5cS">
                          <node concept="3clFbF" id="E_ws3Y3AXz" role="3cqZAp">
                            <node concept="2OqwBi" id="E_ws3Y3BhD" role="3clFbG">
                              <node concept="1mIQ4w" id="E_ws3Y3Dak" role="2OqNvi">
                                <node concept="chp4Y" id="E_ws3Y3ET9" role="cj9EA">
                                  <ref role="cht4Q" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="E_ws3Y3AXy" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wql" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wql" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wqm" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="E_ws3Y3tLL" role="2Oq$k0">
                      <node concept="32TBzR" id="E_ws3Y3vum" role="2OqNvi" />
                      <node concept="30H73N" id="E_ws3Y3tGX" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="hqc8hz1" role="3clF46">
        <property role="TrG5h" value="expr" />
        <node concept="3uibUv" id="E_ws3Y3525" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3Tm1VV" id="hqc8hz3" role="1B3o_S" />
    </node>
  </node>
  <node concept="bUwia" id="hqc8hz4">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <property role="3GE5qa" value="container" />
    <node concept="3aamgX" id="hqc8hzr" role="3acgRq">
      <ref role="30HIoZ" to="tp3r:hqc44pp" resolve="Quotation" />
      <node concept="j$656" id="5ZE7FBYWdOy" role="1lVwrX">
        <ref role="v9R2y" node="SVCbzOGqde" resolve="Quotation_to_staticMethodCall" />
      </node>
    </node>
    <node concept="3aamgX" id="RRzwLnBq68" role="3acgRq">
      <ref role="30HIoZ" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
      <node concept="j$656" id="RRzwLnBqeR" role="1lVwrX">
        <ref role="v9R2y" node="RRzwLnBq6a" resolve="NodeBuilder_to_methodCall" />
      </node>
    </node>
    <node concept="2rT7sh" id="hG0dD_T" role="2rTMjI">
      <property role="TrG5h" value="parametersFromExpressionsL" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
      <ref role="2rTdP9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="2rT7sh" id="2pd$B2dB0O3" role="2rTMjI">
      <property role="TrG5h" value="parametersFromExpressionsQ" />
      <ref role="2rZz_L" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
      <ref role="2rTdP9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="2rT7sh" id="hG0dEqV" role="2rTMjI">
      <property role="TrG5h" value="nodeVariableL" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
      <ref role="2rTdP9" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
    </node>
    <node concept="2rT7sh" id="3ztslReWusd" role="2rTMjI">
      <property role="TrG5h" value="nodeVariableQ" />
      <property role="2om86B" value="true" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
      <ref role="2rTdP9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="13MO4I" id="SVCbzOGqde">
    <property role="TrG5h" value="Quotation_to_staticMethodCall" />
    <property role="3GE5qa" value="container" />
    <ref role="3gUMe" to="tp3r:hqc44pp" resolve="Quotation" />
    <node concept="2Tav94" id="SVCbzOGy7b" role="13RCb5">
      <node concept="2TbA4q" id="SVCbzOGzLV" role="2Tav95">
        <ref role="37wK5l" node="SVCbzOGy7c" resolve="_quotation_createNode" />
        <node concept="3cmrfG" id="SVCbzOGD$a" role="37wK5m">
          <property role="3cmrfH" value="4" />
          <node concept="2b32R4" id="7kq1ReKzgEB" role="lGtFl">
            <node concept="3JmXsc" id="7kq1ReKzgED" role="2P8S$">
              <node concept="3clFbS" id="7kq1ReKzgEF" role="2VODD2">
                <node concept="3cpWs8" id="7kq1ReKzi1p" role="3cqZAp">
                  <node concept="3cpWsn" id="7kq1ReKzi1q" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="2I9FWS" id="7kq1ReKzi1r" role="1tU5fm" />
                    <node concept="2ShNRf" id="7kq1ReKzi1s" role="33vP2m">
                      <node concept="2T8Vx0" id="7kq1ReKzi1t" role="2ShVmc">
                        <node concept="2I9FWS" id="7kq1ReKzi1u" role="2T96Bj" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5ZE7FBYVo$v" role="3cqZAp">
                  <node concept="3cpWsn" id="5ZE7FBYVo$w" role="3cpWs9">
                    <property role="TrG5h" value="quotation" />
                    <node concept="3Tqbb2" id="5ZE7FBYVo$u" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                    <node concept="30H73N" id="5ZE7FBYVz1F" role="33vP2m" />
                  </node>
                </node>
                <node concept="3clFbJ" id="7kq1ReKzi1v" role="3cqZAp">
                  <node concept="3y3z36" id="7kq1ReKzi1w" role="3clFbw">
                    <node concept="10Nm6u" id="7kq1ReKzi1x" role="3uHU7w" />
                    <node concept="2OqwBi" id="7kq1ReKzi1y" role="3uHU7B">
                      <node concept="3TrEf2" id="7kq1ReKzkCE" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                      </node>
                      <node concept="37vLTw" id="5ZE7FBYVo$$" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7kq1ReKzi1_" role="3clFbx">
                    <node concept="3clFbF" id="7kq1ReKzi1A" role="3cqZAp">
                      <node concept="2OqwBi" id="7kq1ReKzi1B" role="3clFbG">
                        <node concept="37vLTw" id="7kq1ReKzi1C" role="2Oq$k0">
                          <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="7kq1ReKzi1D" role="2OqNvi">
                          <node concept="2OqwBi" id="7kq1ReKzi1E" role="25WWJ7">
                            <node concept="3TrEf2" id="7kq1ReKzi1G" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                            </node>
                            <node concept="37vLTw" id="5ZE7FBYVo$_" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6fcdXHodUaZ" role="3eNLev">
                    <node concept="3clFbS" id="6fcdXHodUb1" role="3eOfB_">
                      <node concept="3clFbF" id="6fcdXHodYzF" role="3cqZAp">
                        <node concept="2OqwBi" id="6fcdXHodYzG" role="3clFbG">
                          <node concept="37vLTw" id="6fcdXHodYzH" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="6fcdXHodYzI" role="2OqNvi">
                            <node concept="2OqwBi" id="6fcdXHoe1G1" role="25WWJ7">
                              <node concept="2OqwBi" id="6fcdXHodYzJ" role="2Oq$k0">
                                <node concept="3TrEf2" id="6fcdXHoe04n" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                </node>
                                <node concept="37vLTw" id="6fcdXHodYzL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="6fcdXHoe3rm" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6fcdXHodV$W" role="3eO9$A">
                      <node concept="10Nm6u" id="6fcdXHodV$X" role="3uHU7w" />
                      <node concept="2OqwBi" id="6fcdXHodV$Y" role="3uHU7B">
                        <node concept="3TrEf2" id="6fcdXHodX9z" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                        </node>
                        <node concept="37vLTw" id="6fcdXHodV_0" role="2Oq$k0">
                          <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7kq1ReKzi1H" role="3cqZAp">
                  <node concept="3y3z36" id="7kq1ReKzi1I" role="3clFbw">
                    <node concept="10Nm6u" id="7kq1ReKzi1J" role="3uHU7w" />
                    <node concept="2OqwBi" id="7kq1ReKzi1K" role="3uHU7B">
                      <node concept="3TrEf2" id="7kq1ReKzi1L" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                      </node>
                      <node concept="37vLTw" id="5ZE7FBYVo$A" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7kq1ReKzi1N" role="3clFbx">
                    <node concept="3clFbF" id="7kq1ReKzi1O" role="3cqZAp">
                      <node concept="2OqwBi" id="7kq1ReKzi1P" role="3clFbG">
                        <node concept="37vLTw" id="7kq1ReKzi1Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="7kq1ReKzi1R" role="2OqNvi">
                          <node concept="2OqwBi" id="7kq1ReKzi1S" role="25WWJ7">
                            <node concept="3TrEf2" id="7kq1ReKzi1T" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                            </node>
                            <node concept="37vLTw" id="5ZE7FBYVo$B" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6fcdXHofrlG" role="3eNLev">
                    <node concept="3y3z36" id="6fcdXHofG2R" role="3eO9$A">
                      <node concept="10Nm6u" id="6fcdXHofG3c" role="3uHU7w" />
                      <node concept="2OqwBi" id="6fcdXHofCCk" role="3uHU7B">
                        <node concept="2OqwBi" id="6fcdXHof_hb" role="2Oq$k0">
                          <node concept="37vLTw" id="6fcdXHofzDV" role="2Oq$k0">
                            <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                          </node>
                          <node concept="3TrEf2" id="6fcdXHofAXT" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6fcdXHofEqs" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6fcdXHofrlI" role="3eOfB_">
                      <node concept="3clFbF" id="6fcdXHofsOu" role="3cqZAp">
                        <node concept="2OqwBi" id="6fcdXHofsOv" role="3clFbG">
                          <node concept="37vLTw" id="6fcdXHofsOw" role="2Oq$k0">
                            <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="6fcdXHofsOx" role="2OqNvi">
                            <node concept="2OqwBi" id="6fcdXHofwg4" role="25WWJ7">
                              <node concept="2OqwBi" id="6fcdXHofsOy" role="2Oq$k0">
                                <node concept="3TrEf2" id="6fcdXHofu_1" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                </node>
                                <node concept="37vLTw" id="6fcdXHofsO$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="6fcdXHofy3Q" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="7kq1ReKzi1V" role="3cqZAp">
                  <node concept="3cpWsn" id="7kq1ReKzi1W" role="1Duv9x">
                    <property role="TrG5h" value="child" />
                    <node concept="3Tqbb2" id="7kq1ReKzi1X" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7kq1ReKzi1Y" role="2LFqv$">
                    <node concept="3clFbF" id="7kq1ReKzi28" role="3cqZAp">
                      <node concept="2OqwBi" id="7kq1ReKzi29" role="3clFbG">
                        <node concept="37vLTw" id="7kq1ReKzi2a" role="2Oq$k0">
                          <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="7kq1ReKzi2b" role="2OqNvi">
                          <node concept="2OqwBi" id="7kq1ReKzumY" role="25WWJ7">
                            <node concept="37vLTw" id="7kq1ReKzumZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7kq1ReKzi1W" resolve="child" />
                            </node>
                            <node concept="3TrEf2" id="7kq1ReKzun0" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7kq1ReKzi2h" role="1DdaDG">
                    <node concept="2Rf3mk" id="7kq1ReKzoT$" role="2OqNvi">
                      <node concept="1xMEDy" id="7kq1ReKzoTA" role="1xVPHs">
                        <node concept="chp4Y" id="7kq1ReKzpIX" role="ri$Ld">
                          <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5ZE7FBYVo$C" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ZE7FBYVo$w" resolve="quotation" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7kq1ReKzi2k" role="3cqZAp">
                  <node concept="37vLTw" id="7kq1ReKzi2l" role="3cqZAk">
                    <ref role="3cqZAo" node="7kq1ReKzi1q" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="SVCbzOGy7c" role="2Tav96">
        <property role="TrG5h" value="_quotation_createNode" />
        <node concept="3Tm6S6" id="SVCbzOVHm_" role="1B3o_S" />
        <node concept="3Tqbb2" id="SVCbzOG_qV" role="3clF45" />
        <node concept="37vLTG" id="SVCbzOG$LI" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="3uibUv" id="SVCbzOG$LJ" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="1WS0z7" id="SVCbzOG$LK" role="lGtFl">
            <ref role="2rW$FS" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
            <node concept="3JmXsc" id="SVCbzOG$LL" role="3Jn$fo">
              <node concept="3clFbS" id="SVCbzOG$LM" role="2VODD2">
                <node concept="3cpWs8" id="SVCbzOG$LN" role="3cqZAp">
                  <node concept="3cpWsn" id="SVCbzOG$LO" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="2I9FWS" id="SVCbzOG$LP" role="1tU5fm" />
                    <node concept="2ShNRf" id="SVCbzOG$LQ" role="33vP2m">
                      <node concept="2T8Vx0" id="SVCbzOG$LR" role="2ShVmc">
                        <node concept="2I9FWS" id="SVCbzOG$LS" role="2T96Bj" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="SVCbzOG$LT" role="3cqZAp">
                  <node concept="3y3z36" id="SVCbzOG$LU" role="3clFbw">
                    <node concept="10Nm6u" id="SVCbzOG$LV" role="3uHU7w" />
                    <node concept="2OqwBi" id="SVCbzOG$LW" role="3uHU7B">
                      <node concept="30H73N" id="SVCbzOG$LX" role="2Oq$k0" />
                      <node concept="3TrEf2" id="SVCbzOG$LY" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="SVCbzOG$LZ" role="3clFbx">
                    <node concept="3clFbF" id="SVCbzOG$M0" role="3cqZAp">
                      <node concept="2OqwBi" id="SVCbzOG$M1" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTrQz" role="2Oq$k0">
                          <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="SVCbzOG$M3" role="2OqNvi">
                          <node concept="2OqwBi" id="SVCbzOG$M4" role="25WWJ7">
                            <node concept="30H73N" id="SVCbzOG$M5" role="2Oq$k0" />
                            <node concept="3TrEf2" id="SVCbzOG$M6" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6fcdXHoecgV" role="3eNLev">
                    <node concept="3clFbS" id="6fcdXHoecgX" role="3eOfB_">
                      <node concept="3clFbF" id="6fcdXHoeqDH" role="3cqZAp">
                        <node concept="2OqwBi" id="6fcdXHoeqDI" role="3clFbG">
                          <node concept="37vLTw" id="6fcdXHoeqDJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="6fcdXHoeqDK" role="2OqNvi">
                            <node concept="2OqwBi" id="6fcdXHoe$sh" role="25WWJ7">
                              <node concept="2OqwBi" id="6fcdXHoeqDL" role="2Oq$k0">
                                <node concept="30H73N" id="6fcdXHoeqDM" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6fcdXHoexc9" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="6fcdXHoeCkF" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6fcdXHoefAu" role="3eO9$A">
                      <node concept="10Nm6u" id="6fcdXHoefAv" role="3uHU7w" />
                      <node concept="2OqwBi" id="6fcdXHoefAw" role="3uHU7B">
                        <node concept="30H73N" id="6fcdXHoefAx" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHoenko" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="SVCbzOG$M7" role="3cqZAp">
                  <node concept="3y3z36" id="SVCbzOG$M8" role="3clFbw">
                    <node concept="10Nm6u" id="SVCbzOG$M9" role="3uHU7w" />
                    <node concept="2OqwBi" id="SVCbzOG$Ma" role="3uHU7B">
                      <node concept="3TrEf2" id="SVCbzOG$Mb" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                      </node>
                      <node concept="30H73N" id="SVCbzOG$Mc" role="2Oq$k0" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="SVCbzOG$Md" role="3clFbx">
                    <node concept="3clFbF" id="SVCbzOG$Me" role="3cqZAp">
                      <node concept="2OqwBi" id="SVCbzOG$Mf" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTwAL" role="2Oq$k0">
                          <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="SVCbzOG$Mh" role="2OqNvi">
                          <node concept="2OqwBi" id="SVCbzOG$Mi" role="25WWJ7">
                            <node concept="3TrEf2" id="SVCbzOG$Mj" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                            </node>
                            <node concept="30H73N" id="SVCbzOG$Mk" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="6fcdXHofHAE" role="3eNLev">
                    <node concept="3y3z36" id="6fcdXHog3WR" role="3eO9$A">
                      <node concept="10Nm6u" id="6fcdXHog3Xc" role="3uHU7w" />
                      <node concept="2OqwBi" id="6fcdXHofWGk" role="3uHU7B">
                        <node concept="2OqwBi" id="6fcdXHofOWO" role="2Oq$k0">
                          <node concept="30H73N" id="6fcdXHofL8E" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6fcdXHofTrx" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6fcdXHog0qu" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6fcdXHofHAG" role="3eOfB_">
                      <node concept="3clFbF" id="6fcdXHog87z" role="3cqZAp">
                        <node concept="2OqwBi" id="6fcdXHog87$" role="3clFbG">
                          <node concept="37vLTw" id="6fcdXHog87_" role="2Oq$k0">
                            <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                          </node>
                          <node concept="TSZUe" id="6fcdXHog87A" role="2OqNvi">
                            <node concept="2OqwBi" id="6fcdXHogiX0" role="25WWJ7">
                              <node concept="2OqwBi" id="6fcdXHog87B" role="2Oq$k0">
                                <node concept="3TrEf2" id="6fcdXHogfCx" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                </node>
                                <node concept="30H73N" id="6fcdXHog87D" role="2Oq$k0" />
                              </node>
                              <node concept="3TrEf2" id="6fcdXHogmwZ" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="SVCbzOG$Ml" role="3cqZAp">
                  <node concept="3cpWsn" id="SVCbzOG$Mm" role="1Duv9x">
                    <property role="TrG5h" value="child" />
                    <node concept="3Tqbb2" id="SVCbzOG$Mn" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="SVCbzOG$Mo" role="2LFqv$">
                    <node concept="3clFbF" id="SVCbzOG$Mr" role="3cqZAp">
                      <node concept="2OqwBi" id="SVCbzOG$Ms" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTxO5" role="2Oq$k0">
                          <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="SVCbzOG$Mu" role="2OqNvi">
                          <node concept="2OqwBi" id="SVCbzOG$Mv" role="25WWJ7">
                            <node concept="37vLTw" id="3GM_nagTuG_" role="2Oq$k0">
                              <ref role="3cqZAo" node="SVCbzOG$Mm" resolve="child" />
                            </node>
                            <node concept="3TrEf2" id="SVCbzOG$My" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="SVCbzOG$MB" role="1DdaDG">
                    <node concept="30H73N" id="SVCbzOG$MC" role="2Oq$k0" />
                    <node concept="2Rf3mk" id="7kq1ReKz_kl" role="2OqNvi">
                      <node concept="1xMEDy" id="7kq1ReKz_kn" role="1xVPHs">
                        <node concept="chp4Y" id="7kq1ReKzBmt" role="ri$Ld">
                          <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="SVCbzOG$ME" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTyhn" role="3cqZAk">
                    <ref role="3cqZAo" node="SVCbzOG$LO" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="SVCbzOG$MG" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="SVCbzOG$MH" role="3zH0cK">
              <node concept="3clFbS" id="SVCbzOG$MI" role="2VODD2">
                <node concept="3SKdUt" id="SVCbzOG$MJ" role="3cqZAp">
                  <node concept="1PaTwC" id="ATZLwXnXSr" role="1aUNEU">
                    <node concept="3oM_SD" id="ATZLwXnXSs" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSt" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSu" role="1PaTwD">
                      <property role="3oM_SC" value="'node'" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSv" role="1PaTwD">
                      <property role="3oM_SC" value="expression" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSw" role="1PaTwD">
                      <property role="3oM_SC" value="may" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSx" role="1PaTwD">
                      <property role="3oM_SC" value="have" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSy" role="1PaTwD">
                      <property role="3oM_SC" value="been" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSz" role="1PaTwD">
                      <property role="3oM_SC" value="already" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXS$" role="1PaTwD">
                      <property role="3oM_SC" value="mapped" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXS_" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSA" role="1PaTwD">
                      <property role="3oM_SC" value="unique" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSB" role="1PaTwD">
                      <property role="3oM_SC" value="name" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSC" role="1PaTwD">
                      <property role="3oM_SC" value="created" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSD" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="ATZLwXnXSE" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7Nrs$T2KSrC" role="3cqZAp">
                  <node concept="3cpWsn" id="7Nrs$T2KSrD" role="3cpWs9">
                    <property role="TrG5h" value="key" />
                    <node concept="17QB3L" id="7Nrs$T2KSqV" role="1tU5fm" />
                    <node concept="3cpWs3" id="7Nrs$T2KSrE" role="33vP2m">
                      <node concept="2OqwBi" id="7Nrs$T2KSrF" role="3uHU7w">
                        <node concept="2OqwBi" id="7Nrs$T2KSrG" role="2Oq$k0">
                          <node concept="liA8E" id="7Nrs$T2KSrH" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="7Nrs$T2KSrI" role="2Oq$k0">
                            <node concept="30H73N" id="7Nrs$T2KSrJ" role="2JrQYb" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7Nrs$T2KSrK" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7Nrs$T2KSrL" role="3uHU7B">
                        <property role="Xl_RC" value="parameterFromExpressions_" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="SVCbzOG$ML" role="3cqZAp">
                  <node concept="3cpWsn" id="SVCbzOG$MM" role="3cpWs9">
                    <property role="TrG5h" value="uniqName" />
                    <node concept="17QB3L" id="SVCbzOG$MN" role="1tU5fm" />
                    <node concept="10QFUN" id="SVCbzOG$MO" role="33vP2m">
                      <node concept="17QB3L" id="SVCbzOG$MP" role="10QFUM" />
                      <node concept="2OqwBi" id="SVCbzOG$MQ" role="10QFUP">
                        <node concept="1iwH7S" id="SVCbzOG$MR" role="2Oq$k0" />
                        <node concept="2g92yo" id="SVCbzOG$MS" role="2OqNvi">
                          <node concept="37vLTw" id="7Nrs$T2KSrM" role="2fWi3N">
                            <ref role="3cqZAo" node="7Nrs$T2KSrD" resolve="key" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="SVCbzOG$N1" role="3cqZAp">
                  <node concept="37vLTI" id="SVCbzOG$N2" role="3clFbG">
                    <node concept="3K4zz7" id="SVCbzOG$N3" role="37vLTx">
                      <node concept="3y3z36" id="SVCbzOG$N4" role="3K4Cdx">
                        <node concept="10Nm6u" id="SVCbzOG$N5" role="3uHU7w" />
                        <node concept="37vLTw" id="3GM_nagTy7W" role="3uHU7B">
                          <ref role="3cqZAo" node="SVCbzOG$MM" resolve="uniqName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTy8d" role="3K4E3e">
                        <ref role="3cqZAo" node="SVCbzOG$MM" resolve="uniqName" />
                      </node>
                      <node concept="3cpWs3" id="SVCbzOG$N8" role="3K4GZi">
                        <node concept="Xl_RD" id="SVCbzOG$N9" role="3uHU7B">
                          <property role="Xl_RC" value="parameter_" />
                        </node>
                        <node concept="2YIFZM" id="5ZE7FBYVCG$" role="3uHU7w">
                          <ref role="37wK5l" to="wg2h:6wtORYsNMtU" resolve="genQuotationNodeId" />
                          <ref role="1Pybhc" to="wg2h:6wtORYsNMtO" resolve="QuotationUtil" />
                          <node concept="1iwH7S" id="5ZE7FBYVCG_" role="37wK5m" />
                          <node concept="2OqwBi" id="5ZE7FBYW6L3" role="37wK5m">
                            <node concept="1iwH7S" id="5ZE7FBYW558" role="2Oq$k0" />
                            <node concept="1psM6Z" id="25JZ4W_7IQX" role="2OqNvi">
                              <ref role="1psM6Y" node="25JZ4W_7IQV" resolve="inputNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagT$J4" role="37vLTJ">
                      <ref role="3cqZAo" node="SVCbzOG$MM" resolve="uniqName" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="SVCbzOG$Ne" role="3cqZAp">
                  <node concept="37vLTI" id="SVCbzOG$Nf" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTtFt" role="37vLTx">
                      <ref role="3cqZAo" node="SVCbzOG$MM" resolve="uniqName" />
                    </node>
                    <node concept="2OqwBi" id="SVCbzOG$Nh" role="37vLTJ">
                      <node concept="1iwH7S" id="SVCbzOG$Ni" role="2Oq$k0" />
                      <node concept="2g92yo" id="SVCbzOG$Nj" role="2OqNvi">
                        <node concept="37vLTw" id="7Nrs$T2KSrN" role="2fWi3N">
                          <ref role="3cqZAo" node="7Nrs$T2KSrD" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="SVCbzOG$Ns" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTxN$" role="3clFbG">
                    <ref role="3cqZAo" node="SVCbzOG$MM" resolve="uniqName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="SVCbzOGy7f" role="3clF47">
          <node concept="3cpWs8" id="SVCbzOGB06" role="3cqZAp">
            <node concept="3cpWsn" id="SVCbzOGB07" role="3cpWs9">
              <property role="TrG5h" value="_node_" />
              <node concept="3uibUv" id="SVCbzOGB08" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="17Uvod" id="SVCbzOGB09" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="SVCbzOGB0a" role="3zH0cK">
                  <node concept="3clFbS" id="SVCbzOGB0b" role="2VODD2">
                    <node concept="3cpWs6" id="SVCbzOGB0c" role="3cqZAp">
                      <node concept="3cpWs3" id="SVCbzOGB0d" role="3cqZAk">
                        <node concept="Xl_RD" id="SVCbzOGB0e" role="3uHU7B">
                          <property role="Xl_RC" value="quotedNode_" />
                        </node>
                        <node concept="2YIFZM" id="SVCbzOGB0f" role="3uHU7w">
                          <ref role="1Pybhc" to="wg2h:6wtORYsNMtO" resolve="QuotationUtil" />
                          <ref role="37wK5l" to="wg2h:6wtORYsNMtU" resolve="genQuotationNodeId" />
                          <node concept="1iwH7S" id="SVCbzOGB0g" role="37wK5m" />
                          <node concept="2OqwBi" id="7Nrs$T2KLRk" role="37wK5m">
                            <node concept="1iwH7S" id="7Nrs$T2KL04" role="2Oq$k0" />
                            <node concept="1psM6Z" id="25JZ4W_7IQY" role="2OqNvi">
                              <ref role="1psM6Y" node="25JZ4W_7IQV" resolve="inputNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZBi8u" id="E_ws3XnMx1" role="lGtFl">
                <ref role="2rW$FS" node="3ztslReWusd" resolve="nodeVariableQ" />
              </node>
              <node concept="10Nm6u" id="SVCbzOGB0n" role="33vP2m" />
            </node>
            <node concept="1WS0z7" id="SVCbzOGB0o" role="lGtFl">
              <node concept="3JmXsc" id="SVCbzOGB0p" role="3Jn$fo">
                <node concept="3clFbS" id="SVCbzOGB0q" role="2VODD2">
                  <node concept="3cpWs8" id="SVCbzOGB0r" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB0s" role="3cpWs9">
                      <property role="TrG5h" value="root" />
                      <node concept="3Tqbb2" id="SVCbzOGB0t" role="1tU5fm" />
                      <node concept="2OqwBi" id="SVCbzOGB0u" role="33vP2m">
                        <node concept="30H73N" id="SVCbzOGB0v" role="2Oq$k0" />
                        <node concept="3TrEf2" id="SVCbzOGB0w" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB0x" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB0y" role="3cpWs9">
                      <property role="TrG5h" value="result" />
                      <node concept="2I9FWS" id="SVCbzOGB0z" role="1tU5fm" />
                      <node concept="2ShNRf" id="SVCbzOGB0$" role="33vP2m">
                        <node concept="2T8Vx0" id="SVCbzOGB0_" role="2ShVmc">
                          <node concept="2I9FWS" id="SVCbzOGB0A" role="2T96Bj" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB0B" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB0C" role="3cpWs9">
                      <property role="TrG5h" value="frontier" />
                      <node concept="2I9FWS" id="SVCbzOGB0D" role="1tU5fm" />
                      <node concept="2ShNRf" id="SVCbzOGB0E" role="33vP2m">
                        <node concept="2T8Vx0" id="SVCbzOGB0F" role="2ShVmc">
                          <node concept="2I9FWS" id="SVCbzOGB0G" role="2T96Bj" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="SVCbzOGB0H" role="3cqZAp">
                    <node concept="2OqwBi" id="SVCbzOGB0I" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTzGo" role="2Oq$k0">
                        <ref role="3cqZAo" node="SVCbzOGB0y" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="SVCbzOGB0K" role="2OqNvi">
                        <node concept="37vLTw" id="3GM_nagTtb0" role="25WWJ7">
                          <ref role="3cqZAo" node="SVCbzOGB0s" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="SVCbzOGB0M" role="3cqZAp">
                    <node concept="2OqwBi" id="SVCbzOGB0N" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTr8E" role="2Oq$k0">
                        <ref role="3cqZAo" node="SVCbzOGB0C" resolve="frontier" />
                      </node>
                      <node concept="TSZUe" id="SVCbzOGB0P" role="2OqNvi">
                        <node concept="37vLTw" id="3GM_nagT$dD" role="25WWJ7">
                          <ref role="3cqZAo" node="SVCbzOGB0s" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB0R" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB0S" role="3cpWs9">
                      <property role="TrG5h" value="newFrontier" />
                      <node concept="2I9FWS" id="SVCbzOGB0T" role="1tU5fm" />
                      <node concept="2ShNRf" id="SVCbzOGB0U" role="33vP2m">
                        <node concept="2T8Vx0" id="SVCbzOGB0V" role="2ShVmc">
                          <node concept="2I9FWS" id="SVCbzOGB0W" role="2T96Bj" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="SVCbzOGB0X" role="3cqZAp">
                    <node concept="2OqwBi" id="SVCbzOGB0Y" role="2$JKZa">
                      <node concept="37vLTw" id="3GM_nagTzzk" role="2Oq$k0">
                        <ref role="3cqZAo" node="SVCbzOGB0C" resolve="frontier" />
                      </node>
                      <node concept="3GX2aA" id="SVCbzOGB10" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="SVCbzOGB11" role="2LFqv$">
                      <node concept="1DcWWT" id="SVCbzOGB12" role="3cqZAp">
                        <node concept="37vLTw" id="3GM_nagTwQE" role="1DdaDG">
                          <ref role="3cqZAo" node="SVCbzOGB0C" resolve="frontier" />
                        </node>
                        <node concept="3cpWsn" id="SVCbzOGB14" role="1Duv9x">
                          <property role="TrG5h" value="node" />
                          <node concept="3Tqbb2" id="SVCbzOGB15" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="SVCbzOGB16" role="2LFqv$">
                          <node concept="1DcWWT" id="SVCbzOGB17" role="3cqZAp">
                            <node concept="2OqwBi" id="SVCbzOGB18" role="1DdaDG">
                              <node concept="37vLTw" id="3GM_nagTzim" role="2Oq$k0">
                                <ref role="3cqZAo" node="SVCbzOGB14" resolve="node" />
                              </node>
                              <node concept="32TBzR" id="SVCbzOGB1a" role="2OqNvi" />
                            </node>
                            <node concept="3cpWsn" id="SVCbzOGB1b" role="1Duv9x">
                              <property role="TrG5h" value="child" />
                              <node concept="3Tqbb2" id="SVCbzOGB1c" role="1tU5fm" />
                            </node>
                            <node concept="3clFbS" id="SVCbzOGB1d" role="2LFqv$">
                              <node concept="3clFbJ" id="SVCbzOGB1e" role="3cqZAp">
                                <node concept="3fqX7Q" id="SVCbzOGB1f" role="3clFbw">
                                  <node concept="2OqwBi" id="SVCbzOGB1g" role="3fr31v">
                                    <node concept="37vLTw" id="3GM_nagTx_u" role="2Oq$k0">
                                      <ref role="3cqZAo" node="SVCbzOGB1b" resolve="child" />
                                    </node>
                                    <node concept="1mIQ4w" id="SVCbzOGB1i" role="2OqNvi">
                                      <node concept="chp4Y" id="SVCbzOGB1j" role="cj9EA">
                                        <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="SVCbzOGB1k" role="3clFbx">
                                  <node concept="3clFbF" id="SVCbzOGB1l" role="3cqZAp">
                                    <node concept="2OqwBi" id="SVCbzOGB1m" role="3clFbG">
                                      <node concept="37vLTw" id="3GM_nagTs$J" role="2Oq$k0">
                                        <ref role="3cqZAo" node="SVCbzOGB0y" resolve="result" />
                                      </node>
                                      <node concept="TSZUe" id="SVCbzOGB1o" role="2OqNvi">
                                        <node concept="37vLTw" id="3GM_nagTxlS" role="25WWJ7">
                                          <ref role="3cqZAo" node="SVCbzOGB1b" resolve="child" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="SVCbzOGB1q" role="3cqZAp">
                                    <node concept="2OqwBi" id="SVCbzOGB1r" role="3clFbG">
                                      <node concept="37vLTw" id="3GM_nagTwUp" role="2Oq$k0">
                                        <ref role="3cqZAo" node="SVCbzOGB0S" resolve="newFrontier" />
                                      </node>
                                      <node concept="TSZUe" id="SVCbzOGB1t" role="2OqNvi">
                                        <node concept="37vLTw" id="3GM_nagTzME" role="25WWJ7">
                                          <ref role="3cqZAo" node="SVCbzOGB1b" resolve="child" />
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
                      <node concept="3clFbF" id="SVCbzOGB1v" role="3cqZAp">
                        <node concept="37vLTI" id="SVCbzOGB1w" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTraw" role="37vLTx">
                            <ref role="3cqZAo" node="SVCbzOGB0S" resolve="newFrontier" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTyo_" role="37vLTJ">
                            <ref role="3cqZAo" node="SVCbzOGB0C" resolve="frontier" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="SVCbzOGB1z" role="3cqZAp">
                        <node concept="37vLTI" id="SVCbzOGB1$" role="3clFbG">
                          <node concept="2ShNRf" id="SVCbzOGB1_" role="37vLTx">
                            <node concept="2T8Vx0" id="SVCbzOGB1A" role="2ShVmc">
                              <node concept="2I9FWS" id="SVCbzOGB1B" role="2T96Bj" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTAdk" role="37vLTJ">
                            <ref role="3cqZAo" node="SVCbzOGB0S" resolve="newFrontier" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="SVCbzOGB1D" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTtHD" role="3cqZAk">
                      <ref role="3cqZAo" node="SVCbzOGB0y" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2XuYaFIgksJ" role="3cqZAp">
            <node concept="5jKBG" id="2XuYaFIgsL6" role="lGtFl">
              <ref role="v9R2y" node="hqc8hm6" resolve="QuotedNode_to_statementList" />
              <node concept="30H73N" id="2XuYaFIgOEi" role="v9R3O" />
              <node concept="3NFfHV" id="E_ws3X_egQ" role="5jGum">
                <node concept="3clFbS" id="E_ws3X_egR" role="2VODD2">
                  <node concept="3clFbF" id="E_ws3X_eOs" role="3cqZAp">
                    <node concept="2OqwBi" id="E_ws3X_eWA" role="3clFbG">
                      <node concept="3TrEf2" id="E_ws3X_fFX" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                      </node>
                      <node concept="30H73N" id="7kq1ReKp4$J" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Lb1CYjEU6Z" role="3cqZAp">
            <node concept="2OqwBi" id="1Lb1CYjEVsQ" role="3clFbG">
              <node concept="37vLTw" id="1Lb1CYjEU71" role="2Oq$k0">
                <ref role="3cqZAo" node="SVCbzOGB07" resolve="_node_" />
                <node concept="1ZhdrF" id="1Lb1CYjEU72" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1Lb1CYjEU73" role="3$ytzL">
                    <node concept="3clFbS" id="1Lb1CYjEU74" role="2VODD2">
                      <node concept="3clFbF" id="1Lb1CYjEU75" role="3cqZAp">
                        <node concept="2OqwBi" id="1Lb1CYjEU76" role="3clFbG">
                          <node concept="1iwH7S" id="1Lb1CYjEU77" role="2Oq$k0" />
                          <node concept="1iwH70" id="1Lb1CYjEU78" role="2OqNvi">
                            <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                            <node concept="2OqwBi" id="1Lb1CYjNFQ8" role="1iwH7V">
                              <node concept="30H73N" id="1Lb1CYjEU7b" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1Lb1CYjOw8k" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:1Lb1CYjFiv5" resolve="sourceNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1Lb1CYjEWgc" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                <node concept="10Nm6u" id="1Lb1CYjOz43" role="37wK5m">
                  <node concept="5jKBG" id="za$VMvkOfL" role="lGtFl">
                    <ref role="v9R2y" to="tp27:7jb4LXp9gY9" resolve="reduce_ReferenceLinkId_SReferenceLink" />
                    <node concept="3NFfHV" id="1Lb1CYjOzPS" role="5jGum">
                      <node concept="3clFbS" id="1Lb1CYjOzPT" role="2VODD2">
                        <node concept="3clFbF" id="1Lb1CYjOzRc" role="3cqZAp">
                          <node concept="2OqwBi" id="1Lb1CYjOzUX" role="3clFbG">
                            <node concept="3TrEf2" id="6SzyDXOUL0f" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:6SzyDXOU94N" resolve="linkId" />
                            </node>
                            <node concept="30H73N" id="1Lb1CYjOzRb" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTzwW" role="37wK5m">
                  <ref role="3cqZAo" node="SVCbzOGB07" resolve="_node_" />
                  <node concept="1ZhdrF" id="5CFnob0Pbis" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="5CFnob0Pbit" role="3$ytzL">
                      <node concept="3clFbS" id="5CFnob0Pbiu" role="2VODD2">
                        <node concept="3clFbF" id="5CFnob0Pbiv" role="3cqZAp">
                          <node concept="2OqwBi" id="5CFnob0Pbiw" role="3clFbG">
                            <node concept="1iwH7S" id="5CFnob0Pbix" role="2Oq$k0" />
                            <node concept="1iwH70" id="5CFnob0Pbiy" role="2OqNvi">
                              <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                              <node concept="2OqwBi" id="1Lb1CYjOxoZ" role="1iwH7V">
                                <node concept="30H73N" id="5CFnob0Pbi_" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1Lb1CYjOyLF" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:1Lb1CYjFiuW" resolve="targetNode" />
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
            <node concept="1WS0z7" id="1Lb1CYjEY6d" role="lGtFl">
              <node concept="3JmXsc" id="1Lb1CYjEY6g" role="3Jn$fo">
                <node concept="3clFbS" id="1Lb1CYjEY6h" role="2VODD2">
                  <node concept="3cpWs8" id="SVCbzOGB2w" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB2x" role="3cpWs9">
                      <property role="TrG5h" value="root" />
                      <node concept="3Tqbb2" id="SVCbzOGB2y" role="1tU5fm" />
                      <node concept="2OqwBi" id="SVCbzOGB2z" role="33vP2m">
                        <node concept="30H73N" id="SVCbzOGB2$" role="2Oq$k0" />
                        <node concept="3TrEf2" id="SVCbzOGB2_" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB2A" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB2B" role="3cpWs9">
                      <property role="TrG5h" value="result" />
                      <node concept="_YKpA" id="1Lb1CYjN8l1" role="1tU5fm">
                        <node concept="3Tqbb2" id="1Lb1CYjNbqj" role="_ZDj9">
                          <ref role="ehGHo" to="tp3r:1Lb1CYjFf8C" resolve="GeneratorInternal_InternalReferenceHolder" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1Lb1CYjNfGq" role="33vP2m">
                        <node concept="Tc6Ow" id="1Lb1CYjNfsm" role="2ShVmc">
                          <node concept="3Tqbb2" id="1Lb1CYjNfsn" role="HW$YZ">
                            <ref role="ehGHo" to="tp3r:1Lb1CYjFf8C" resolve="GeneratorInternal_InternalReferenceHolder" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB2G" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB2H" role="3cpWs9">
                      <property role="TrG5h" value="frontier" />
                      <node concept="_YKpA" id="1Lb1CYjNhLb" role="1tU5fm">
                        <node concept="3Tqbb2" id="1Lb1CYjNj53" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="1Lb1CYjNoFo" role="33vP2m">
                        <node concept="Tc6Ow" id="1Lb1CYjNodU" role="2ShVmc">
                          <node concept="3Tqbb2" id="1Lb1CYjNodV" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="SVCbzOGB2M" role="3cqZAp">
                    <node concept="2OqwBi" id="SVCbzOGB2N" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTx2b" role="2Oq$k0">
                        <ref role="3cqZAo" node="SVCbzOGB2H" resolve="frontier" />
                      </node>
                      <node concept="TSZUe" id="SVCbzOGB2P" role="2OqNvi">
                        <node concept="37vLTw" id="3GM_nagTwi2" role="25WWJ7">
                          <ref role="3cqZAo" node="SVCbzOGB2x" resolve="root" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="SVCbzOGB2R" role="3cqZAp">
                    <node concept="3cpWsn" id="SVCbzOGB2S" role="3cpWs9">
                      <property role="TrG5h" value="newFrontier" />
                      <node concept="_YKpA" id="1Lb1CYjNtcx" role="1tU5fm">
                        <node concept="3Tqbb2" id="1Lb1CYjNtcy" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="1Lb1CYjNwVJ" role="33vP2m">
                        <node concept="Tc6Ow" id="1Lb1CYjNwVK" role="2ShVmc">
                          <node concept="3Tqbb2" id="1Lb1CYjNwVL" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="SVCbzOGB2X" role="3cqZAp">
                    <node concept="2OqwBi" id="SVCbzOGB2Y" role="2$JKZa">
                      <node concept="37vLTw" id="3GM_nagT_tW" role="2Oq$k0">
                        <ref role="3cqZAo" node="SVCbzOGB2H" resolve="frontier" />
                      </node>
                      <node concept="3GX2aA" id="SVCbzOGB30" role="2OqNvi" />
                    </node>
                    <node concept="3clFbS" id="SVCbzOGB31" role="2LFqv$">
                      <node concept="1DcWWT" id="SVCbzOGB32" role="3cqZAp">
                        <node concept="37vLTw" id="3GM_nagTufS" role="1DdaDG">
                          <ref role="3cqZAo" node="SVCbzOGB2H" resolve="frontier" />
                        </node>
                        <node concept="3cpWsn" id="SVCbzOGB34" role="1Duv9x">
                          <property role="TrG5h" value="node" />
                          <node concept="3Tqbb2" id="SVCbzOGB35" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="SVCbzOGB36" role="2LFqv$">
                          <node concept="1DcWWT" id="SVCbzOGB37" role="3cqZAp">
                            <node concept="2OqwBi" id="SVCbzOGB38" role="1DdaDG">
                              <node concept="37vLTw" id="3GM_nagTw4g" role="2Oq$k0">
                                <ref role="3cqZAo" node="SVCbzOGB34" resolve="node" />
                              </node>
                              <node concept="32TBzR" id="SVCbzOGB3a" role="2OqNvi" />
                            </node>
                            <node concept="3cpWsn" id="SVCbzOGB3b" role="1Duv9x">
                              <property role="TrG5h" value="child" />
                              <node concept="3Tqbb2" id="SVCbzOGB3c" role="1tU5fm" />
                            </node>
                            <node concept="3clFbS" id="SVCbzOGB3d" role="2LFqv$">
                              <node concept="3clFbJ" id="SVCbzOGB3e" role="3cqZAp">
                                <node concept="3fqX7Q" id="SVCbzOGB3f" role="3clFbw">
                                  <node concept="2OqwBi" id="SVCbzOGB3g" role="3fr31v">
                                    <node concept="37vLTw" id="3GM_nagTAF3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                    </node>
                                    <node concept="1mIQ4w" id="SVCbzOGB3i" role="2OqNvi">
                                      <node concept="chp4Y" id="SVCbzOGB3j" role="cj9EA">
                                        <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="SVCbzOGB3k" role="3clFbx">
                                  <node concept="1DcWWT" id="SVCbzOGB3l" role="3cqZAp">
                                    <node concept="2OqwBi" id="SVCbzOGB3m" role="1DdaDG">
                                      <node concept="2JrnkZ" id="SVCbzOGB3n" role="2Oq$k0">
                                        <node concept="37vLTw" id="3GM_nagTzf0" role="2JrQYb">
                                          <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="SVCbzOGB3p" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                                      </node>
                                    </node>
                                    <node concept="3cpWsn" id="SVCbzOGB3q" role="1Duv9x">
                                      <property role="TrG5h" value="reference" />
                                      <node concept="3uibUv" id="SVCbzOGB3r" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="SVCbzOGB3s" role="2LFqv$">
                                      <node concept="3clFbJ" id="SVCbzOGB3t" role="3cqZAp">
                                        <node concept="22lmx$" id="1Lb1CYjEAjv" role="3clFbw">
                                          <node concept="3y3z36" id="1Lb1CYjEEcB" role="3uHU7w">
                                            <node concept="10Nm6u" id="1Lb1CYjEEt4" role="3uHU7w" />
                                            <node concept="2OqwBi" id="1Lb1CYjEC4G" role="3uHU7B">
                                              <node concept="37vLTw" id="1Lb1CYjEBNQ" role="2Oq$k0">
                                                <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                              </node>
                                              <node concept="3CFZ6_" id="1Lb1CYjECSb" role="2OqNvi">
                                                <node concept="3CFYIy" id="1Lb1CYjEDpp" role="3CFYIz">
                                                  <ref role="3CFYIx" to="tp3r:hqc44pu" resolve="ListAntiquotation" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="22lmx$" id="SVCbzOGB3u" role="3uHU7B">
                                            <node concept="3y3z36" id="SVCbzOGB3_" role="3uHU7B">
                                              <node concept="2OqwBi" id="SVCbzOGB3A" role="3uHU7B">
                                                <node concept="37vLTw" id="3GM_nagTA89" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                                </node>
                                                <node concept="3CFZ6_" id="SVCbzOGB3C" role="2OqNvi">
                                                  <node concept="3CFYIw" id="SVCbzOGB3D" role="3CFYIz">
                                                    <ref role="3CFYIJ" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
                                                    <node concept="25Kdxt" id="SVCbzOGB3E" role="3CFYM5">
                                                      <node concept="2OqwBi" id="SVCbzOGB3F" role="25KhWn">
                                                        <node concept="37vLTw" id="3GM_nagTzC1" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="SVCbzOGB3q" resolve="reference" />
                                                        </node>
                                                        <node concept="liA8E" id="SVCbzOGB3H" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="10Nm6u" id="SVCbzOGB3I" role="3uHU7w" />
                                            </node>
                                            <node concept="3y3z36" id="SVCbzOGB3v" role="3uHU7w">
                                              <node concept="2OqwBi" id="SVCbzOGB3x" role="3uHU7B">
                                                <node concept="37vLTw" id="3GM_nagTwKG" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                                </node>
                                                <node concept="3CFZ6_" id="SVCbzOGB3z" role="2OqNvi">
                                                  <node concept="3CFYIy" id="SVCbzOGB3$" role="3CFYIz">
                                                    <ref role="3CFYIx" to="tp3r:hqc44po" resolve="Antiquotation" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="10Nm6u" id="SVCbzOGB3w" role="3uHU7w" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="SVCbzOGB3J" role="3clFbx">
                                          <node concept="3N13vt" id="SVCbzOGB3K" role="3cqZAp" />
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="SVCbzOGB4g" role="3cqZAp">
                                        <node concept="3cpWsn" id="SVCbzOGB4h" role="3cpWs9">
                                          <property role="TrG5h" value="targetNode" />
                                          <node concept="3Tqbb2" id="SVCbzOGB4i" role="1tU5fm" />
                                          <node concept="2OqwBi" id="SVCbzOGB4j" role="33vP2m">
                                            <node concept="37vLTw" id="3GM_nagTuof" role="2Oq$k0">
                                              <ref role="3cqZAo" node="SVCbzOGB3q" resolve="reference" />
                                            </node>
                                            <node concept="liA8E" id="SVCbzOGB4l" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="SVCbzOGB4m" role="3cqZAp">
                                        <node concept="3clFbS" id="SVCbzOGB4n" role="3clFbx">
                                          <node concept="3cpWs8" id="SVCbzOGB4o" role="3cqZAp">
                                            <node concept="3cpWsn" id="SVCbzOGB4p" role="3cpWs9">
                                              <property role="TrG5h" value="referenceNode" />
                                              <node concept="3Tqbb2" id="SVCbzOGB4q" role="1tU5fm">
                                                <ref role="ehGHo" to="tp3r:1Lb1CYjFf8C" resolve="GeneratorInternal_InternalReferenceHolder" />
                                              </node>
                                              <node concept="2OqwBi" id="SVCbzOGB4r" role="33vP2m">
                                                <node concept="2OqwBi" id="SVCbzOGB4s" role="2Oq$k0">
                                                  <node concept="1iwH7S" id="SVCbzOGB4t" role="2Oq$k0" />
                                                  <node concept="1FEO0x" id="SVCbzOGB4u" role="2OqNvi" />
                                                </node>
                                                <node concept="I8ghe" id="SVCbzOGB4v" role="2OqNvi">
                                                  <ref role="I8UWU" to="tp3r:1Lb1CYjFf8C" resolve="GeneratorInternal_InternalReferenceHolder" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWs8" id="6SzyDXOUwTB" role="3cqZAp">
                                            <node concept="3cpWsn" id="6SzyDXOUwTC" role="3cpWs9">
                                              <property role="TrG5h" value="rid" />
                                              <node concept="3Tqbb2" id="6SzyDXOUwDd" role="1tU5fm">
                                                <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                                              </node>
                                              <node concept="2OqwBi" id="6SzyDXOUwTD" role="33vP2m">
                                                <node concept="2OqwBi" id="6SzyDXOUwTE" role="2Oq$k0">
                                                  <node concept="37vLTw" id="6SzyDXOUwTF" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="SVCbzOGB4p" resolve="referenceNode" />
                                                  </node>
                                                  <node concept="3TrEf2" id="6SzyDXOUwTG" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tp3r:6SzyDXOU94N" resolve="linkId" />
                                                  </node>
                                                </node>
                                                <node concept="zfrQC" id="6SzyDXOUwTH" role="2OqNvi" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="6SzyDXOU6lh" role="3cqZAp">
                                            <node concept="2OqwBi" id="6SzyDXOUxH4" role="3clFbG">
                                              <node concept="37vLTw" id="6SzyDXOUwTI" role="2Oq$k0">
                                                <ref role="3cqZAo" node="6SzyDXOUwTC" resolve="rid" />
                                              </node>
                                              <node concept="3zqWPK" id="70OdufORg3D" role="2OqNvi">
                                                <ref role="37wK5l" to="tpeu:7jb4LXp9a6q" resolve="setReference" />
                                                <node concept="2OqwBi" id="70OdufORg3F" role="37wK5m">
                                                  <node concept="37vLTw" id="70OdufORg3G" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="SVCbzOGB3q" resolve="reference" />
                                                  </node>
                                                  <node concept="liA8E" id="70OdufORg3H" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="1Lb1CYjMV9y" role="3cqZAp">
                                            <node concept="37vLTI" id="1Lb1CYjMXAK" role="3clFbG">
                                              <node concept="37vLTw" id="1Lb1CYjMYn9" role="37vLTx">
                                                <ref role="3cqZAo" node="SVCbzOGB4h" resolve="targetNode" />
                                              </node>
                                              <node concept="2OqwBi" id="1Lb1CYjMVH2" role="37vLTJ">
                                                <node concept="37vLTw" id="1Lb1CYjMV9w" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="SVCbzOGB4p" resolve="referenceNode" />
                                                </node>
                                                <node concept="3TrEf2" id="1Lb1CYjMWH4" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tp3r:1Lb1CYjFiuW" resolve="targetNode" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="1Lb1CYjMZRs" role="3cqZAp">
                                            <node concept="37vLTI" id="1Lb1CYjN2mV" role="3clFbG">
                                              <node concept="37vLTw" id="1Lb1CYjN2Zh" role="37vLTx">
                                                <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                              </node>
                                              <node concept="2OqwBi" id="1Lb1CYjN0FP" role="37vLTJ">
                                                <node concept="37vLTw" id="1Lb1CYjMZRq" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="SVCbzOGB4p" resolve="referenceNode" />
                                                </node>
                                                <node concept="3TrEf2" id="1Lb1CYjN1GP" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tp3r:1Lb1CYjFiv5" resolve="sourceNode" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="SVCbzOGB4R" role="3cqZAp">
                                            <node concept="2OqwBi" id="SVCbzOGB4S" role="3clFbG">
                                              <node concept="37vLTw" id="3GM_nagTv5U" role="2Oq$k0">
                                                <ref role="3cqZAo" node="SVCbzOGB2B" resolve="result" />
                                              </node>
                                              <node concept="TSZUe" id="SVCbzOGB4U" role="2OqNvi">
                                                <node concept="37vLTw" id="3GM_nagTxxz" role="25WWJ7">
                                                  <ref role="3cqZAo" node="SVCbzOGB4p" resolve="referenceNode" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbC" id="SVCbzOGB4W" role="3clFbw">
                                          <node concept="2OqwBi" id="SVCbzOGB4X" role="3uHU7w">
                                            <node concept="37vLTw" id="3GM_nagT_iX" role="2Oq$k0">
                                              <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
                                            </node>
                                            <node concept="2Xjw5R" id="SVCbzOGB4Z" role="2OqNvi">
                                              <node concept="1xMEDy" id="SVCbzOGB50" role="1xVPHs">
                                                <node concept="chp4Y" id="SVCbzOGB51" role="ri$Ld">
                                                  <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="SVCbzOGB52" role="3uHU7B">
                                            <node concept="37vLTw" id="3GM_nagTtkn" role="2Oq$k0">
                                              <ref role="3cqZAo" node="SVCbzOGB4h" resolve="targetNode" />
                                            </node>
                                            <node concept="2Xjw5R" id="SVCbzOGB54" role="2OqNvi">
                                              <node concept="1xMEDy" id="SVCbzOGB55" role="1xVPHs">
                                                <node concept="chp4Y" id="SVCbzOGB56" role="ri$Ld">
                                                  <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="SVCbzOGB57" role="3cqZAp">
                                    <node concept="2OqwBi" id="SVCbzOGB58" role="3clFbG">
                                      <node concept="37vLTw" id="3GM_nagTzAq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="SVCbzOGB2S" resolve="newFrontier" />
                                      </node>
                                      <node concept="TSZUe" id="SVCbzOGB5a" role="2OqNvi">
                                        <node concept="37vLTw" id="3GM_nagTszy" role="25WWJ7">
                                          <ref role="3cqZAo" node="SVCbzOGB3b" resolve="child" />
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
                      <node concept="3clFbF" id="SVCbzOGB5c" role="3cqZAp">
                        <node concept="37vLTI" id="SVCbzOGB5d" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTvfl" role="37vLTx">
                            <ref role="3cqZAo" node="SVCbzOGB2S" resolve="newFrontier" />
                          </node>
                          <node concept="37vLTw" id="3GM_nagTwme" role="37vLTJ">
                            <ref role="3cqZAo" node="SVCbzOGB2H" resolve="frontier" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="SVCbzOGB5g" role="3cqZAp">
                        <node concept="37vLTI" id="SVCbzOGB5h" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTucI" role="37vLTJ">
                            <ref role="3cqZAo" node="SVCbzOGB2S" resolve="newFrontier" />
                          </node>
                          <node concept="2ShNRf" id="1Lb1CYjN$HR" role="37vLTx">
                            <node concept="Tc6Ow" id="1Lb1CYjN$HN" role="2ShVmc">
                              <node concept="3Tqbb2" id="1Lb1CYjN$HO" role="HW$YZ" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="SVCbzOGB5m" role="3cqZAp">
                    <node concept="37vLTw" id="3GM_nagTu7t" role="3cqZAk">
                      <ref role="3cqZAo" node="SVCbzOGB2B" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="SVCbzOGB5o" role="3cqZAp">
            <node concept="37vLTw" id="E_ws3XLZn5" role="3cqZAk">
              <ref role="3cqZAo" node="SVCbzOGB07" resolve="_node_" />
              <node concept="1ZhdrF" id="E_ws3XLZX0" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="E_ws3XLZX1" role="3$ytzL">
                  <node concept="3clFbS" id="E_ws3XLZX2" role="2VODD2">
                    <node concept="3clFbF" id="E_ws3XM1zk" role="3cqZAp">
                      <node concept="2OqwBi" id="E_ws3XM1zm" role="3clFbG">
                        <node concept="1iwH7S" id="E_ws3XM1zn" role="2Oq$k0" />
                        <node concept="1iwH70" id="E_ws3XM1zo" role="2OqNvi">
                          <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                          <node concept="2OqwBi" id="E_ws3XM2gZ" role="1iwH7V">
                            <node concept="3TrEf2" id="E_ws3XM2u1" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                            </node>
                            <node concept="30H73N" id="E_ws3XM279" role="2Oq$k0" />
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
        <node concept="17Uvod" id="SVCbzOJT20" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="SVCbzOJT21" role="3zH0cK">
            <node concept="3clFbS" id="SVCbzOJT22" role="2VODD2">
              <node concept="3clFbF" id="3YWZWnqc8pi" role="3cqZAp">
                <node concept="2OqwBi" id="3YWZWnqc8pC" role="3clFbG">
                  <node concept="1iwH7S" id="3YWZWnqc8pj" role="2Oq$k0" />
                  <node concept="2piZGk" id="3YWZWnqc8pH" role="2OqNvi">
                    <node concept="2OqwBi" id="GdSDg9BAJY" role="2pr8EU">
                      <node concept="30H73N" id="5Y7fH33iVRx" role="2Oq$k0" />
                      <node concept="2Rxl7S" id="GdSDg9BAK0" role="2OqNvi" />
                    </node>
                    <node concept="3zGtF$" id="SVCbzOJV3Z" role="2piZGb" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="SVCbzOGy7x" role="lGtFl" />
      <node concept="1ps_y7" id="25JZ4W_7IQW" role="lGtFl">
        <node concept="1ps_xZ" id="25JZ4W_7IQV" role="1ps_xO">
          <property role="TrG5h" value="inputNode" />
          <node concept="3Tqbb2" id="5ZE7FBYVXZ2" role="1ps_xK">
            <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
          </node>
          <node concept="2jfdEK" id="5ZE7FBYVITk" role="1ps_xN">
            <node concept="3clFbS" id="5ZE7FBYVITm" role="2VODD2">
              <node concept="3clFbF" id="5ZE7FBYVXYb" role="3cqZAp">
                <node concept="30H73N" id="5ZE7FBYVXYa" role="3clFbG" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="RRzwLnBq6a">
    <property role="TrG5h" value="NodeBuilder_to_methodCall" />
    <property role="3GE5qa" value="container" />
    <ref role="3gUMe" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
    <node concept="2Tav94" id="nQfYv_gi_W" role="13RCb5">
      <node concept="2YIFZL" id="nQfYv_gi_X" role="2Tav96">
        <property role="TrG5h" value="createNode" />
        <node concept="37vLTG" id="nQfYv_giAc" role="3clF46">
          <property role="TrG5h" value="modelToCreate" />
          <node concept="3uibUv" id="2pd$B2e9NMd" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
          <node concept="1W57fq" id="2pd$B2e5_mA" role="lGtFl">
            <node concept="3IZrLx" id="2pd$B2e5_mB" role="3IZSJc">
              <node concept="3clFbS" id="2pd$B2e5_mC" role="2VODD2">
                <node concept="3clFbF" id="2pd$B2e5Cik" role="3cqZAp">
                  <node concept="22lmx$" id="6fcdXHodpXW" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHodsPb" role="3uHU7w">
                      <node concept="2OqwBi" id="6fcdXHodrHH" role="2Oq$k0">
                        <node concept="30H73N" id="6fcdXHodr0h" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHodshj" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6fcdXHoduiZ" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="2pd$B2e5QGj" role="3uHU7B">
                      <node concept="2OqwBi" id="2pd$B2e5Hoa" role="2Oq$k0">
                        <node concept="30H73N" id="2pd$B2e5Cij" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2pd$B2e5NpU" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="2pd$B2e5ZSy" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pdMLZ" id="6fcdXHoqIZn" role="lGtFl">
            <ref role="2rW$FS" node="hG0dD_T" resolve="parametersFromExpressionsL" />
            <node concept="3NFfHV" id="6fcdXHoqJyO" role="31$UT">
              <node concept="3clFbS" id="6fcdXHoqJyP" role="2VODD2">
                <node concept="3clFbF" id="6fcdXHoqK6q" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHoqMYg" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHoqKZU" role="2Oq$k0">
                      <node concept="30H73N" id="6fcdXHoqK6p" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6fcdXHoqMpP" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6fcdXHoqNL7" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6fcdXHopQov" role="3clF46">
          <property role="TrG5h" value="nodeId" />
          <node concept="3uibUv" id="6fcdXHopUTp" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="1W57fq" id="6fcdXHopQoA" role="lGtFl">
            <node concept="3IZrLx" id="6fcdXHopQoB" role="3IZSJc">
              <node concept="3clFbS" id="6fcdXHopQoC" role="2VODD2">
                <node concept="3clFbF" id="6fcdXHopQoD" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHopQoF" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHopTb1" role="2Oq$k0">
                      <node concept="2OqwBi" id="6fcdXHopQoG" role="2Oq$k0">
                        <node concept="30H73N" id="6fcdXHopQoH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHopQoI" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6fcdXHopTHT" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="6fcdXHopQoJ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1pdMLZ" id="6fcdXHoqQmM" role="lGtFl">
            <ref role="2rW$FS" node="hG0dD_T" resolve="parametersFromExpressionsL" />
            <node concept="3NFfHV" id="6fcdXHoqRuz" role="31$UT">
              <node concept="3clFbS" id="6fcdXHoqRu$" role="2VODD2">
                <node concept="3clFbF" id="6fcdXHoqS2J" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHoqTZE" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHoqSxl" role="2Oq$k0">
                      <node concept="30H73N" id="6fcdXHoqS2I" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6fcdXHoqT66" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6fcdXHoqVee" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="nQfYv_giAa" role="3clF45" />
        <node concept="3Tm6S6" id="nQfYv_giAb" role="1B3o_S" />
        <node concept="3clFbS" id="nQfYv_giA0" role="3clF47">
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
          <node concept="3cpWs8" id="4nmoJNOO1t" role="3cqZAp">
            <node concept="3cpWsn" id="4nmoJNOO1u" role="3cpWs9">
              <property role="TrG5h" value="rootBuilder" />
              <node concept="3uibUv" id="4nmoJNOO1v" role="1tU5fm">
                <ref role="3uigEE" to="6vmh:~SNodeBuilder" resolve="SNodeBuilder" />
              </node>
              <node concept="17Uvod" id="4nmoJNOO1w" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="4nmoJNOO1x" role="3zH0cK">
                  <node concept="3clFbS" id="4nmoJNOO1y" role="2VODD2">
                    <node concept="3clFbF" id="S4WnV2L6qm" role="3cqZAp">
                      <node concept="2OqwBi" id="S4WnV2L6qn" role="3clFbG">
                        <node concept="1iwH7S" id="S4WnV2L6qo" role="2Oq$k0" />
                        <node concept="32eq0B" id="S4WnV2Mebg" role="2OqNvi">
                          <node concept="Xl_RD" id="S4WnV2Megf" role="32eq0w">
                            <property role="Xl_RC" value="n" />
                          </node>
                          <node concept="2OqwBi" id="S4WnV2MeAH" role="32eq0x">
                            <node concept="30H73N" id="S4WnV2MelV" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="S4WnV2MeZw" role="2OqNvi">
                              <node concept="1xMEDy" id="S4WnV2MeZy" role="1xVPHs">
                                <node concept="chp4Y" id="S4WnV2Mf3Q" role="ri$Ld">
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
              <node concept="1pdMLZ" id="4nmoJNOO1D" role="lGtFl">
                <node concept="3NFfHV" id="4nmoJNOO1E" role="31$UT">
                  <node concept="3clFbS" id="4nmoJNOO1F" role="2VODD2">
                    <node concept="3clFbF" id="4nmoJNOO1G" role="3cqZAp">
                      <node concept="2OqwBi" id="4nmoJNOO1H" role="3clFbG">
                        <node concept="30H73N" id="4nmoJNOO1I" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4nmoJNOO1J" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZBi8u" id="4nmoJNOO1K" role="lGtFl">
                <ref role="2rW$FS" node="hG0dEqV" resolve="nodeVariableL" />
              </node>
              <node concept="2OqwBi" id="4nmoJNOO1L" role="33vP2m">
                <node concept="2ShNRf" id="4nmoJNOO1M" role="2Oq$k0">
                  <node concept="1pGfFk" id="4nmoJNOO1N" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodeBuilder" />
                    <node concept="37vLTw" id="4nmoJNOO1O" role="37wK5m">
                      <ref role="3cqZAo" node="nQfYv_giAc" resolve="modelToCreate" />
                      <node concept="1ZhdrF" id="4nmoJNOO1P" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="4nmoJNOO1Q" role="3$ytzL">
                          <node concept="3clFbS" id="4nmoJNOO1R" role="2VODD2">
                            <node concept="3cpWs8" id="4nmoJNOO1S" role="3cqZAp">
                              <node concept="3cpWsn" id="4nmoJNOO1T" role="3cpWs9">
                                <property role="TrG5h" value="modelToCreate" />
                                <node concept="3Tqbb2" id="4nmoJNOO1U" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                                </node>
                                <node concept="3K4zz7" id="4nmoJNOO1V" role="33vP2m">
                                  <node concept="2OqwBi" id="4nmoJNOO1W" role="3K4Cdx">
                                    <node concept="2OqwBi" id="4nmoJNOO1X" role="2Oq$k0">
                                      <node concept="3TrEf2" id="4nmoJNOO1Y" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                                      </node>
                                      <node concept="2OqwBi" id="4nmoJNOO1Z" role="2Oq$k0">
                                        <node concept="1iwH7S" id="4nmoJNOO20" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="4nmoJNOO21" role="2OqNvi">
                                          <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3x8VRR" id="4nmoJNOO22" role="2OqNvi" />
                                  </node>
                                  <node concept="2OqwBi" id="4nmoJNOO23" role="3K4E3e">
                                    <node concept="3TrEf2" id="4nmoJNOO24" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                                    </node>
                                    <node concept="2OqwBi" id="4nmoJNOO25" role="2Oq$k0">
                                      <node concept="1iwH7S" id="4nmoJNOO26" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="4nmoJNOO27" role="2OqNvi">
                                        <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="4nmoJNOO28" role="3K4GZi">
                                    <node concept="2OqwBi" id="4nmoJNOO29" role="2Oq$k0">
                                      <node concept="3TrEf2" id="4nmoJNOO2a" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                                      </node>
                                      <node concept="2OqwBi" id="4nmoJNOO2b" role="2Oq$k0">
                                        <node concept="1iwH7S" id="4nmoJNOO2c" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="4nmoJNOO2d" role="2OqNvi">
                                          <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="4nmoJNOO2e" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4nmoJNOO2f" role="3cqZAp">
                              <node concept="2OqwBi" id="4nmoJNOO2g" role="3cqZAk">
                                <node concept="1iwH7S" id="4nmoJNOO2h" role="2Oq$k0" />
                                <node concept="1iwH70" id="4nmoJNOO2i" role="2OqNvi">
                                  <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                  <node concept="37vLTw" id="4nmoJNOO2j" role="1iwH7V">
                                    <ref role="3cqZAo" node="4nmoJNOO1T" resolve="modelToCreate" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="4nmoJNOO2k" role="lGtFl">
                        <node concept="3IZrLx" id="4nmoJNOO2l" role="3IZSJc">
                          <node concept="3clFbS" id="4nmoJNOO2m" role="2VODD2">
                            <node concept="3clFbF" id="4nmoJNOO2n" role="3cqZAp">
                              <node concept="22lmx$" id="4nmoJNOO2o" role="3clFbG">
                                <node concept="2OqwBi" id="4nmoJNOO2p" role="3uHU7B">
                                  <node concept="2OqwBi" id="4nmoJNOO2q" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4nmoJNOO2r" role="2Oq$k0">
                                      <node concept="1iwH7S" id="4nmoJNOO2s" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="4nmoJNOO2t" role="2OqNvi">
                                        <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="4nmoJNOO2u" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                                    </node>
                                  </node>
                                  <node concept="3x8VRR" id="4nmoJNOO2v" role="2OqNvi" />
                                </node>
                                <node concept="2OqwBi" id="4nmoJNOO2w" role="3uHU7w">
                                  <node concept="2OqwBi" id="4nmoJNOO2x" role="2Oq$k0">
                                    <node concept="3TrEf2" id="4nmoJNOO2y" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                                    </node>
                                    <node concept="2OqwBi" id="4nmoJNOO2z" role="2Oq$k0">
                                      <node concept="1iwH7S" id="4nmoJNOO2$" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="4nmoJNOO2_" role="2OqNvi">
                                        <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3x8VRR" id="4nmoJNOO2A" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4nmoJNOO2B" role="37wK5m">
                      <ref role="3cqZAo" node="6fcdXHopQov" resolve="nodeId" />
                      <node concept="1ZhdrF" id="4nmoJNOO2C" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="4nmoJNOO2D" role="3$ytzL">
                          <node concept="3clFbS" id="4nmoJNOO2E" role="2VODD2">
                            <node concept="3cpWs6" id="4nmoJNOO2F" role="3cqZAp">
                              <node concept="2OqwBi" id="4nmoJNOO2G" role="3cqZAk">
                                <node concept="1iwH7S" id="4nmoJNOO2H" role="2Oq$k0" />
                                <node concept="1iwH70" id="4nmoJNOO2I" role="2OqNvi">
                                  <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                  <node concept="2OqwBi" id="4nmoJNOO2J" role="1iwH7V">
                                    <node concept="2OqwBi" id="4nmoJNOO2K" role="2Oq$k0">
                                      <node concept="3TrEf2" id="4nmoJNOO2L" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                                      </node>
                                      <node concept="2OqwBi" id="4nmoJNOO2M" role="2Oq$k0">
                                        <node concept="1iwH7S" id="4nmoJNOO2N" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="4nmoJNOO2O" role="2OqNvi">
                                          <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="4nmoJNOO2P" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="4nmoJNOO2Q" role="lGtFl">
                        <node concept="3IZrLx" id="4nmoJNOO2R" role="3IZSJc">
                          <node concept="3clFbS" id="4nmoJNOO2S" role="2VODD2">
                            <node concept="3clFbF" id="4nmoJNOO2T" role="3cqZAp">
                              <node concept="2OqwBi" id="4nmoJNOO2U" role="3clFbG">
                                <node concept="2OqwBi" id="4nmoJNOO2V" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4nmoJNOO2W" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4nmoJNOO2X" role="2Oq$k0">
                                      <node concept="1iwH7S" id="4nmoJNOO2Y" role="2Oq$k0" />
                                      <node concept="1psM6Z" id="4nmoJNOO2Z" role="2OqNvi">
                                        <ref role="1psM6Y" node="4nmoJNOO3I" resolve="container" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="4nmoJNOO30" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="4nmoJNOO31" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                                  </node>
                                </node>
                                <node concept="3x8VRR" id="4nmoJNOO32" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4nmoJNOO33" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~SNodeBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                  <node concept="10Nm6u" id="4nmoJNOO34" role="37wK5m" />
                  <node concept="1sPUBX" id="4nmoJNOO35" role="lGtFl">
                    <ref role="v9R2y" node="7vKHTLu4rZM" resolve="NodeBuilder_childInit" />
                    <node concept="10Nm6u" id="4nmoJNOO36" role="v9R3O" />
                    <node concept="2YIFZM" id="4nmoJNOO37" role="v9R3O">
                      <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                      <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                      <node concept="3uibUv" id="4nmoJNOO38" role="3PaCim">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ps_y7" id="4nmoJNOO39" role="lGtFl">
              <node concept="1ps_xZ" id="4nmoJNOO3I" role="1ps_xO">
                <property role="TrG5h" value="container" />
                <node concept="2jfdEK" id="4nmoJNOO3J" role="1ps_xN">
                  <node concept="3clFbS" id="4nmoJNOO3K" role="2VODD2">
                    <node concept="3clFbF" id="4nmoJNOO3L" role="3cqZAp">
                      <node concept="30H73N" id="4nmoJNOO3M" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7vKHTLu7NUE" role="3cqZAp">
            <node concept="2ShNRf" id="7vKHTLu7NUF" role="3clFbG">
              <node concept="1pGfFk" id="7vKHTLu7NUG" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
            <node concept="1WS0z7" id="7vKHTLu7NUI" role="lGtFl">
              <node concept="3JmXsc" id="7vKHTLu7NUJ" role="3Jn$fo">
                <node concept="3clFbS" id="7vKHTLu7NUK" role="2VODD2">
                  <node concept="3clFbF" id="7vKHTLu7NUL" role="3cqZAp">
                    <node concept="2OqwBi" id="7vKHTLu7NUM" role="3clFbG">
                      <node concept="2OqwBi" id="7vKHTLu8h_n" role="2Oq$k0">
                        <node concept="30H73N" id="7vKHTLu7NUN" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7vKHTLu8hLp" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7vKHTLu8il1" role="2OqNvi">
                        <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="7vKHTLu7NUP" role="lGtFl">
              <ref role="v9R2y" node="4ZyFrBZxoNr" resolve="NodeBuilder_value" />
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
          <node concept="3cpWs6" id="69EpS29Yx8H" role="3cqZAp">
            <node concept="2OqwBi" id="1vKiq7cpBUe" role="3cqZAk">
              <node concept="37vLTw" id="69EpS29Yx8I" role="2Oq$k0">
                <ref role="3cqZAo" node="4nmoJNOO1u" resolve="rootBuilder" />
                <node concept="1ZhdrF" id="1vKiq7cq4Kd" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1vKiq7cq4Ke" role="3$ytzL">
                    <node concept="3clFbS" id="1vKiq7cq4Kf" role="2VODD2">
                      <node concept="3clFbF" id="69EpS29Yx8M" role="3cqZAp">
                        <node concept="1PxgMI" id="69EpS29Yx8N" role="3clFbG">
                          <node concept="2OqwBi" id="69EpS29Yx8O" role="1m5AlR">
                            <node concept="1iwH7S" id="69EpS29Yx8P" role="2Oq$k0" />
                            <node concept="1iwH70" id="69EpS29Yx8Q" role="2OqNvi">
                              <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="69EpS29Yx8R" role="1iwH7V">
                                <node concept="30H73N" id="69EpS29Yx8S" role="2Oq$k0" />
                                <node concept="3TrEf2" id="69EpS29Yx8T" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="chp4Y" id="714IaVdGYLX" role="3oSUPX">
                            <ref role="cht4Q" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4nmoJNP1w_" role="2OqNvi">
                <ref role="37wK5l" to="6vmh:~SNodeBuilder.getResult()" resolve="getResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="nQfYv_giFR" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="nQfYv_giFS" role="3zH0cK">
            <node concept="3clFbS" id="nQfYv_giFT" role="2VODD2">
              <node concept="3clFbF" id="nQfYv_giGd" role="3cqZAp">
                <node concept="2OqwBi" id="nQfYv_giGz" role="3clFbG">
                  <node concept="1iwH7S" id="nQfYv_giGe" role="2Oq$k0" />
                  <node concept="2piZGk" id="nQfYv_giGD" role="2OqNvi">
                    <node concept="3cpWs3" id="nQfYv_giGQ" role="2piZGb">
                      <node concept="Xl_RD" id="nQfYv_giGF" role="3uHU7B">
                        <property role="Xl_RC" value="create" />
                      </node>
                      <node concept="2OqwBi" id="nQfYv_giI6" role="3uHU7w">
                        <node concept="2OqwBi" id="nQfYv_giHE" role="2Oq$k0">
                          <node concept="2OqwBi" id="nQfYv_giHe" role="2Oq$k0">
                            <node concept="30H73N" id="nQfYv_giGT" role="2Oq$k0" />
                            <node concept="3TrEf2" id="nQfYv_giHk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="nQfYv_giHK" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="nQfYv_giIc" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="30H73N" id="nQfYv_giId" role="2pr8EU" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="PFUECvRgTj" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="17Uvod" id="PFUECvRgTl" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="PFUECvRgTm" role="3zH0cK">
              <node concept="3clFbS" id="PFUECvRgTn" role="2VODD2">
                <node concept="3clFbF" id="PFUECvRgTo" role="3cqZAp">
                  <node concept="3cpWs3" id="PFUECvRgTp" role="3clFbG">
                    <node concept="$GB7w" id="2wfHeYRCkcj" role="3uHU7w">
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
            <ref role="2rW$FS" node="hG0dD_T" resolve="parametersFromExpressionsL" />
            <node concept="3JmXsc" id="PFUECvRgTw" role="3Jn$fo">
              <node concept="3clFbS" id="PFUECvRgTx" role="2VODD2">
                <node concept="3clFbF" id="PFUECvRgTy" role="3cqZAp">
                  <node concept="2OqwBi" id="PFUECvRgT$" role="3clFbG">
                    <node concept="2OqwBi" id="6XhBjWIJglV" role="2Oq$k0">
                      <node concept="30H73N" id="PFUECvRgT_" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6XhBjWIJgYK" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORg3I" role="2OqNvi">
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
              <ref role="v9R2y" node="6XhBjWIJ4YS" resolve="NodeBuilderExternalParameterType" />
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
      </node>
      <node concept="2TbA4q" id="nQfYv_giDF" role="2Tav95">
        <ref role="37wK5l" node="nQfYv_gi_X" resolve="createNode" />
        <node concept="10Nm6u" id="2pd$B2e9Xys" role="37wK5m">
          <node concept="1W57fq" id="2pd$B2ea2ho" role="lGtFl">
            <node concept="3IZrLx" id="2pd$B2ea2hp" role="3IZSJc">
              <node concept="3clFbS" id="2pd$B2ea2hq" role="2VODD2">
                <node concept="3clFbF" id="2pd$B2eaIfu" role="3cqZAp">
                  <node concept="22lmx$" id="6fcdXHodk3L" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHodn$f" role="3uHU7w">
                      <node concept="2OqwBi" id="6fcdXHodndz" role="2Oq$k0">
                        <node concept="30H73N" id="6fcdXHodmZ8" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHodnmx" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6fcdXHodnHx" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="2pd$B2eaIfv" role="3uHU7B">
                      <node concept="2OqwBi" id="2pd$B2eaIfw" role="2Oq$k0">
                        <node concept="30H73N" id="2pd$B2eaIfx" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2pd$B2eaIfy" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="2pd$B2eaIfz" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="2pd$B2eaOLy" role="lGtFl">
            <node concept="3NFfHV" id="2pd$B2eaUSi" role="3NFExx">
              <node concept="3clFbS" id="2pd$B2eaUSj" role="2VODD2">
                <node concept="3clFbJ" id="6fcdXHodo45" role="3cqZAp">
                  <node concept="3clFbS" id="6fcdXHodo47" role="3clFbx">
                    <node concept="3cpWs6" id="6fcdXHodot$" role="3cqZAp">
                      <node concept="2OqwBi" id="6fcdXHodov4" role="3cqZAk">
                        <node concept="30H73N" id="6fcdXHodov5" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHodov6" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="6fcdXHodos_" role="3clFbw">
                    <node concept="10Nm6u" id="6fcdXHodosN" role="3uHU7w" />
                    <node concept="2OqwBi" id="2pd$B2eaUSr" role="3uHU7B">
                      <node concept="30H73N" id="2pd$B2eaUSs" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2pd$B2eaUSt" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Ev" resolve="modelToCreate_old" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2pd$B2eaUSp" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHodpcy" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHodoGS" role="2Oq$k0">
                      <node concept="30H73N" id="6fcdXHodowX" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6fcdXHodoUW" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6fcdXHodplX" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="10Nm6u" id="6fcdXHopZ$I" role="37wK5m">
          <node concept="1W57fq" id="6fcdXHopZ$J" role="lGtFl">
            <node concept="3IZrLx" id="6fcdXHopZ$K" role="3IZSJc">
              <node concept="3clFbS" id="6fcdXHopZ$L" role="2VODD2">
                <node concept="3clFbF" id="6fcdXHopZ$M" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHopZ$O" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHoq0oa" role="2Oq$k0">
                      <node concept="2OqwBi" id="6fcdXHopZ$P" role="2Oq$k0">
                        <node concept="30H73N" id="6fcdXHopZ$Q" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6fcdXHopZ$R" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="6fcdXHoq0xP" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="6fcdXHopZ$S" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="6fcdXHopZ$Y" role="lGtFl">
            <node concept="3NFfHV" id="6fcdXHopZ$Z" role="3NFExx">
              <node concept="3clFbS" id="6fcdXHopZ_0" role="2VODD2">
                <node concept="3clFbF" id="6fcdXHopZ_c" role="3cqZAp">
                  <node concept="2OqwBi" id="6fcdXHopZ_d" role="3clFbG">
                    <node concept="2OqwBi" id="6fcdXHopZ_e" role="2Oq$k0">
                      <node concept="30H73N" id="6fcdXHopZ_f" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6fcdXHopZ_g" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64UeST" resolve="modelToCreate" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6fcdXHoq0Ha" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="10Nm6u" id="gc7z5AFm68" role="37wK5m">
          <node concept="1WS0z7" id="gc7z5AFm69" role="lGtFl">
            <node concept="3JmXsc" id="gc7z5AFm6a" role="3Jn$fo">
              <node concept="3clFbS" id="gc7z5AFm6b" role="2VODD2">
                <node concept="3clFbF" id="gc7z5AFm6c" role="3cqZAp">
                  <node concept="2OqwBi" id="gc7z5AFm6e" role="3clFbG">
                    <node concept="2OqwBi" id="6XhBjWIJtXY" role="2Oq$k0">
                      <node concept="30H73N" id="gc7z5AFm6g" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6XhBjWIJume" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi2$Eu" resolve="quotedNode" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORg3K" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:RRzwLnBxZy" resolve="getExternalExpressions" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="gc7z5AFm6Z" role="lGtFl" />
        </node>
      </node>
      <node concept="raruj" id="nQfYv_giDB" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="4ZyFrBZxoNr">
    <property role="TrG5h" value="NodeBuilder_value" />
    <node concept="j$LIH" id="4ZyFrBZArUw" role="jxRDz">
      <node concept="1lLz0L" id="4ZyFrBZAsVU" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Illegal initializer in NodeBuilder" />
      </node>
    </node>
    <node concept="1N15co" id="69EpS29ZN7T" role="1s_3oS">
      <property role="TrG5h" value="nodeBuilderNode" />
      <node concept="3Tqbb2" id="69EpS29ZNKF" role="1N15GL">
        <ref role="ehGHo" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZxQeI" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
      <node concept="30G5F_" id="4IuFl2KU2q3" role="30HLyM">
        <node concept="3clFbS" id="4IuFl2KU2q4" role="2VODD2">
          <node concept="3clFbF" id="4IuFl2JwAfK" role="3cqZAp">
            <node concept="1Wc70l" id="MyKVmw$Vq5" role="3clFbG">
              <node concept="2OqwBi" id="4IuFl2JwBvW" role="3uHU7w">
                <node concept="35c_gC" id="4IuFl2JwBvX" role="2Oq$k0">
                  <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
                <node concept="3zqWPK" id="70OdufORg3M" role="2OqNvi">
                  <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                  <node concept="2OqwBi" id="70OdufORg3O" role="37wK5m">
                    <node concept="1PxgMI" id="70OdufORg3P" role="2Oq$k0">
                      <node concept="chp4Y" id="70OdufORg3Q" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                      </node>
                      <node concept="2OqwBi" id="70OdufORg3R" role="1m5AlR">
                        <node concept="30H73N" id="70OdufORg3S" role="2Oq$k0" />
                        <node concept="2qgKlT" id="70OdufORg3T" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="70OdufORg3U" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:63LzO9stH8r" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MyKVmw$W4Y" role="3uHU7B">
                <node concept="2OqwBi" id="MyKVmw$VF1" role="2Oq$k0">
                  <node concept="30H73N" id="MyKVmw$VF2" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORg3X" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="MyKVmw$WjY" role="2OqNvi">
                  <node concept="chp4Y" id="MyKVmw$W_g" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="4IuFl2JwpIo" role="1lVwrX">
        <node concept="3clFb_" id="4IuFl2Jwq9w" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="4IuFl2JwqFF" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="4IuFl2JwqN_" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="3clFbS" id="4IuFl2Jwq9y" role="3clF47">
            <node concept="3cpWs8" id="4nmoJNOVTX" role="3cqZAp">
              <node concept="3cpWsn" id="nQfYv_giIo" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="2ShNRf" id="7f9nSP4_uah" role="33vP2m">
                  <node concept="1pGfFk" id="7f9nSP4_uUT" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
                <node concept="3uibUv" id="4nmoJNOXkx" role="1tU5fm">
                  <ref role="3uigEE" to="6vmh:~AbstractNodeBuilder" resolve="AbstractNodeBuilder" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4ZyFrBZxZDC" role="3cqZAp">
              <node concept="2OqwBi" id="4ZyFrBZxZDD" role="3clFbG">
                <node concept="37vLTw" id="4ZyFrBZxZDF" role="2Oq$k0">
                  <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
                  <node concept="1ZhdrF" id="4ZyFrBZy0dy" role="lGtFl">
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <property role="2qtEX8" value="variableDeclaration" />
                    <node concept="3$xsQk" id="4ZyFrBZy0dz" role="3$ytzL">
                      <node concept="3clFbS" id="4ZyFrBZy0d$" role="2VODD2">
                        <node concept="3clFbF" id="69EpS29ZRhG" role="3cqZAp">
                          <node concept="2OqwBi" id="69EpS29ZRhH" role="3clFbG">
                            <node concept="1iwH7S" id="69EpS29ZRhI" role="2Oq$k0" />
                            <node concept="1iwH70" id="69EpS29ZRhJ" role="2OqNvi">
                              <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="69EpS29ZRhK" role="1iwH7V">
                                <node concept="1iwH7S" id="69EpS29ZRhL" role="2Oq$k0" />
                                <node concept="3cR$yn" id="69EpS29ZRhM" role="2OqNvi">
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
                <node concept="liA8E" id="4ZyFrBZxZDG" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="10Nm6u" id="4ZyFrBZxZDH" role="37wK5m">
                    <node concept="5jKBG" id="za$VMvkOfN" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM88Ty" resolve="reduce_PropertyDeclaration_SProperty" />
                      <node concept="3NFfHV" id="4ZyFrBZxZDJ" role="5jGum">
                        <node concept="3clFbS" id="4ZyFrBZxZDK" role="2VODD2">
                          <node concept="3clFbF" id="4ZyFrBZxZDL" role="3cqZAp">
                            <node concept="2OqwBi" id="4ZyFrBZxZDM" role="3clFbG">
                              <node concept="30H73N" id="4ZyFrBZxZDN" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4ZyFrBZxZDO" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3csAPD" id="64p9aapZB74" role="37wK5m">
                    <ref role="uGbzG" to="tpck:fKAOsGN" resolve="string" />
                    <node concept="37vLTw" id="3vKXY3RM2IH" role="3csLLq">
                      <ref role="3cqZAo" node="4IuFl2JwqFF" resolve="param" />
                      <node concept="1ZhdrF" id="3vKXY3RM2II" role="lGtFl">
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <property role="2qtEX8" value="variableDeclaration" />
                        <node concept="3$xsQk" id="3vKXY3RM2IJ" role="3$ytzL">
                          <node concept="3clFbS" id="3vKXY3RM2IK" role="2VODD2">
                            <node concept="3clFbF" id="3vKXY3RM2IL" role="3cqZAp">
                              <node concept="2OqwBi" id="3vKXY3RM2IM" role="3clFbG">
                                <node concept="1iwH7S" id="3vKXY3RM2IN" role="2Oq$k0" />
                                <node concept="1iwH70" id="3vKXY3RM2IO" role="2OqNvi">
                                  <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                  <node concept="2OqwBi" id="3vKXY3RM2IP" role="1iwH7V">
                                    <node concept="30H73N" id="3vKXY3RM2IQ" role="2Oq$k0" />
                                    <node concept="3zqWPK" id="70OdufORg3Z" role="2OqNvi">
                                      <ref role="37wK5l" to="ii9q:MyKVmwIJUM" resolve="getInitValueInternal" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1ZhdrF" id="64p9aapZEA9" role="lGtFl">
                      <property role="2qtEX8" value="datatype" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/8564914671171067370/8822815258147051351" />
                      <node concept="3$xsQk" id="64p9aapZEAa" role="3$ytzL">
                        <node concept="3clFbS" id="64p9aapZEAb" role="2VODD2">
                          <node concept="3clFbF" id="64p9aapZEEL" role="3cqZAp">
                            <node concept="2OqwBi" id="64p9aapZF05" role="3clFbG">
                              <node concept="2OqwBi" id="64p9aapZEQ3" role="2Oq$k0">
                                <node concept="30H73N" id="64p9aapZEEK" role="2Oq$k0" />
                                <node concept="3TrEf2" id="64p9aapZERL" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="64p9aapZF4l" role="2OqNvi">
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
              <node concept="raruj" id="4IuFl2JwqjT" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="4IuFl2Jwqs0" role="3clF45" />
          <node concept="3Tm1VV" id="4IuFl2Jwq9_" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4IuFl2KU323" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
      <node concept="30G5F_" id="4IuFl2KU32W" role="30HLyM">
        <node concept="3clFbS" id="4IuFl2KU32X" role="2VODD2">
          <node concept="3clFbF" id="4IuFl2KU32Y" role="3cqZAp">
            <node concept="1Wc70l" id="MyKVmw_3Sv" role="3clFbG">
              <node concept="3fqX7Q" id="4IuFl2KU32Z" role="3uHU7w">
                <node concept="2OqwBi" id="4IuFl2KU330" role="3fr31v">
                  <node concept="35c_gC" id="4IuFl2KU331" role="2Oq$k0">
                    <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORg41" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                    <node concept="2OqwBi" id="70OdufORg43" role="37wK5m">
                      <node concept="1PxgMI" id="70OdufORg44" role="2Oq$k0">
                        <node concept="chp4Y" id="70OdufORg45" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                        </node>
                        <node concept="2OqwBi" id="70OdufORg46" role="1m5AlR">
                          <node concept="30H73N" id="70OdufORg47" role="2Oq$k0" />
                          <node concept="2qgKlT" id="70OdufORg48" role="2OqNvi">
                            <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="70OdufORg49" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:63LzO9stH8r" resolve="expression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="MyKVmw_45T" role="3uHU7B">
                <node concept="2OqwBi" id="MyKVmw_45U" role="2Oq$k0">
                  <node concept="30H73N" id="MyKVmw_45V" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORg4c" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvKUZ" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="MyKVmw_45X" role="2OqNvi">
                  <node concept="chp4Y" id="MyKVmw_45Y" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="2wAjnqF59O9" role="1lVwrX">
        <node concept="3clFbF" id="4IuFl2KU329" role="gfFT$">
          <node concept="2OqwBi" id="4IuFl2KU32a" role="3clFbG">
            <node concept="37vLTw" id="4IuFl2KU32c" role="2Oq$k0">
              <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
              <node concept="1ZhdrF" id="4IuFl2KU32d" role="lGtFl">
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <property role="2qtEX8" value="variableDeclaration" />
                <node concept="3$xsQk" id="4IuFl2KU32e" role="3$ytzL">
                  <node concept="3clFbS" id="4IuFl2KU32f" role="2VODD2">
                    <node concept="3clFbF" id="4IuFl2KU32g" role="3cqZAp">
                      <node concept="2OqwBi" id="4IuFl2KU32h" role="3clFbG">
                        <node concept="1iwH7S" id="4IuFl2KU32i" role="2Oq$k0" />
                        <node concept="1iwH70" id="4IuFl2KU32j" role="2OqNvi">
                          <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                          <node concept="2OqwBi" id="4IuFl2KU32k" role="1iwH7V">
                            <node concept="1iwH7S" id="4IuFl2KU32l" role="2Oq$k0" />
                            <node concept="3cR$yn" id="4IuFl2KU32m" role="2OqNvi">
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
            <node concept="liA8E" id="4IuFl2KU32n" role="2OqNvi">
              <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="10Nm6u" id="4IuFl2KU32o" role="37wK5m">
                <node concept="5jKBG" id="za$VMvkOfP" role="lGtFl">
                  <ref role="v9R2y" to="tp27:5DcBNiM88Ty" resolve="reduce_PropertyDeclaration_SProperty" />
                  <node concept="3NFfHV" id="4IuFl2KU32q" role="5jGum">
                    <node concept="3clFbS" id="4IuFl2KU32r" role="2VODD2">
                      <node concept="3clFbF" id="4IuFl2KU32s" role="3cqZAp">
                        <node concept="2OqwBi" id="4IuFl2KU32t" role="3clFbG">
                          <node concept="30H73N" id="4IuFl2KU32u" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4IuFl2KU32v" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3csAPD" id="64p9aapZHxy" role="37wK5m">
                <ref role="uGbzG" to="tpck:fKAOsGN" resolve="string" />
                <node concept="1ZhdrF" id="64p9aapZJeK" role="lGtFl">
                  <property role="2qtEX8" value="datatype" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/8564914671171067370/8822815258147051351" />
                  <node concept="3$xsQk" id="64p9aapZJeL" role="3$ytzL">
                    <node concept="3clFbS" id="64p9aapZJeM" role="2VODD2">
                      <node concept="3clFbF" id="64p9aapZJKZ" role="3cqZAp">
                        <node concept="2OqwBi" id="64p9aapZK2s" role="3clFbG">
                          <node concept="2OqwBi" id="64p9aapZJQE" role="2Oq$k0">
                            <node concept="30H73N" id="64p9aapZJKY" role="2Oq$k0" />
                            <node concept="3TrEf2" id="64p9aapZJSg" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="64p9aapZK6$" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="4IuFl2KU32y" role="3csLLq">
                  <node concept="29HgVG" id="4IuFl2KU32M" role="lGtFl">
                    <node concept="3NFfHV" id="4IuFl2KU32N" role="3NFExx">
                      <node concept="3clFbS" id="4IuFl2KU32O" role="2VODD2">
                        <node concept="3clFbF" id="4IuFl2KU32P" role="3cqZAp">
                          <node concept="2OqwBi" id="4IuFl2KU32Q" role="3clFbG">
                            <node concept="30H73N" id="4IuFl2KU32R" role="2Oq$k0" />
                            <node concept="3zqWPK" id="70OdufORg4e" role="2OqNvi">
                              <ref role="37wK5l" to="ii9q:MyKVmwIJUM" resolve="getInitValueInternal" />
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
    <node concept="3aamgX" id="4ZyFrBZyfzQ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="gft3U" id="4ZyFrBZyqbX" role="1lVwrX">
        <node concept="3clFbF" id="4ZyFrBZyqk6" role="gfFT$">
          <node concept="2OqwBi" id="4ZyFrBZyqk7" role="3clFbG">
            <node concept="37vLTw" id="4ZyFrBZyqk9" role="2Oq$k0">
              <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
              <node concept="1ZhdrF" id="4ZyFrBZyr9_" role="lGtFl">
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <property role="2qtEX8" value="variableDeclaration" />
                <node concept="3$xsQk" id="4ZyFrBZyr9A" role="3$ytzL">
                  <node concept="3clFbS" id="4ZyFrBZyr9B" role="2VODD2">
                    <node concept="3clFbF" id="69EpS29ZRbw" role="3cqZAp">
                      <node concept="2OqwBi" id="69EpS29ZRbx" role="3clFbG">
                        <node concept="1iwH7S" id="69EpS29ZRby" role="2Oq$k0" />
                        <node concept="1iwH70" id="69EpS29ZRbz" role="2OqNvi">
                          <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                          <node concept="2OqwBi" id="69EpS29ZRb$" role="1iwH7V">
                            <node concept="1iwH7S" id="69EpS29ZRb_" role="2Oq$k0" />
                            <node concept="3cR$yn" id="69EpS29ZRbA" role="2OqNvi">
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
            <node concept="liA8E" id="4ZyFrBZyqka" role="2OqNvi">
              <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="setReference" />
              <node concept="10Nm6u" id="4ZyFrBZyqkb" role="37wK5m">
                <node concept="5jKBG" id="za$VMvkOfQ" role="lGtFl">
                  <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                  <node concept="3NFfHV" id="4ZyFrBZyqkd" role="5jGum">
                    <node concept="3clFbS" id="4ZyFrBZyqke" role="2VODD2">
                      <node concept="3clFbF" id="4ZyFrBZyqkf" role="3cqZAp">
                        <node concept="2OqwBi" id="7vKHTLu3U22" role="3clFbG">
                          <node concept="2OqwBi" id="7vKHTLu3U23" role="2Oq$k0">
                            <node concept="30H73N" id="7vKHTLu3U24" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7vKHTLu3U25" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORg4g" role="2OqNvi">
                            <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="1vKiq7coaw8" role="37wK5m">
                <node concept="1pGfFk" id="1vKiq7cocbN" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodePointer" />
                  <node concept="2OqwBi" id="4ZyFrBZyqkv" role="37wK5m">
                    <node concept="liA8E" id="4ZyFrBZyqkw" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                      <node concept="Xl_RD" id="4ZyFrBZyqkx" role="37wK5m">
                        <property role="Xl_RC" value="targetModel" />
                        <node concept="17Uvod" id="4ZyFrBZyqky" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="4ZyFrBZyqkz" role="3zH0cK">
                            <node concept="3clFbS" id="4ZyFrBZyqk$" role="2VODD2">
                              <node concept="3clFbF" id="4ZyFrBZyqk_" role="3cqZAp">
                                <node concept="2OqwBi" id="4ZyFrBZyqkA" role="3clFbG">
                                  <node concept="2OqwBi" id="4ZyFrBZyqkB" role="2Oq$k0">
                                    <node concept="liA8E" id="4ZyFrBZyqkC" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                    </node>
                                    <node concept="2OqwBi" id="4ZyFrBZyqkD" role="2Oq$k0">
                                      <node concept="2JrnkZ" id="4ZyFrBZyqkE" role="2Oq$k0">
                                        <node concept="2OqwBi" id="4ZyFrBZyqkF" role="2JrQYb">
                                          <node concept="1PxgMI" id="4ZyFrBZyqkG" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4ZyFrBZyqkH" role="1m5AlR">
                                              <node concept="30H73N" id="4ZyFrBZyqkI" role="2Oq$k0" />
                                              <node concept="3zqWPK" id="70OdufORg4i" role="2OqNvi">
                                                <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                              </node>
                                            </node>
                                            <node concept="chp4Y" id="714IaVdGYLO" role="3oSUPX">
                                              <ref role="cht4Q" to="tp3r:76efOMRCfEj" resolve="NodeBuilderRef" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="4ZyFrBZyqkK" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:76efOMRCfEl" resolve="target" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4ZyFrBZyqkL" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4ZyFrBZyqkM" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3VmV3z" id="69EpS2a0zSM" role="2Oq$k0">
                      <property role="3VnrPo" value="facade" />
                      <node concept="3uibUv" id="69EpS2a0zSN" role="3Vn4Tt">
                        <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4ZyFrBZyqkO" role="37wK5m">
                    <node concept="liA8E" id="4ZyFrBZyqkP" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeId(java.lang.String)" resolve="createNodeId" />
                      <node concept="Xl_RD" id="4ZyFrBZyqkQ" role="37wK5m">
                        <property role="Xl_RC" value="targetNodeId" />
                        <node concept="17Uvod" id="4ZyFrBZyqkR" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="4ZyFrBZyqkS" role="3zH0cK">
                            <node concept="3clFbS" id="4ZyFrBZyqkT" role="2VODD2">
                              <node concept="3clFbF" id="4ZyFrBZyqkU" role="3cqZAp">
                                <node concept="2OqwBi" id="4ZyFrBZyqkV" role="3clFbG">
                                  <node concept="2OqwBi" id="4ZyFrBZyqkW" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="4ZyFrBZyqkX" role="2Oq$k0">
                                      <node concept="2OqwBi" id="4ZyFrBZyqkY" role="2JrQYb">
                                        <node concept="1PxgMI" id="4ZyFrBZyqkZ" role="2Oq$k0">
                                          <node concept="2OqwBi" id="4ZyFrBZyql0" role="1m5AlR">
                                            <node concept="30H73N" id="4ZyFrBZyql1" role="2Oq$k0" />
                                            <node concept="3zqWPK" id="70OdufORg4k" role="2OqNvi">
                                              <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                            </node>
                                          </node>
                                          <node concept="chp4Y" id="714IaVdGYLP" role="3oSUPX">
                                            <ref role="cht4Q" to="tp3r:76efOMRCfEj" resolve="NodeBuilderRef" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="4ZyFrBZyql3" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tp3r:76efOMRCfEl" resolve="target" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4ZyFrBZyql4" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4ZyFrBZyql5" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3VmV3z" id="69EpS2a0wxd" role="2Oq$k0">
                      <property role="3VnrPo" value="facade" />
                      <node concept="3uibUv" id="69EpS2a0wWi" role="3Vn4Tt">
                        <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="4ZyFrBZyk0r" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZyk0s" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZyk5q" role="3cqZAp">
            <node concept="1Wc70l" id="4ZyFrBZynVg" role="3clFbG">
              <node concept="2OqwBi" id="4ZyFrBZyk5s" role="3uHU7B">
                <node concept="2OqwBi" id="4ZyFrBZyk5t" role="2Oq$k0">
                  <node concept="2OqwBi" id="4ZyFrBZyk5u" role="2Oq$k0">
                    <node concept="30H73N" id="4ZyFrBZyohi" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ZyFrBZyk5x" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="4ZyFrBZyk5y" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                  </node>
                </node>
                <node concept="21noJN" id="3Ftr4R8wabf" role="2OqNvi">
                  <node concept="21nZrQ" id="3Ftr4R8wabg" role="21noJM">
                    <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ZyFrBZyo36" role="3uHU7w">
                <node concept="2OqwBi" id="4ZyFrBZyo37" role="2Oq$k0">
                  <node concept="30H73N" id="4ZyFrBZyos8" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORg4m" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4ZyFrBZyo3a" role="2OqNvi">
                  <node concept="chp4Y" id="4ZyFrBZyo3b" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:76efOMRCfEj" resolve="NodeBuilderRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4ZyFrBZykfJ" role="3cqZAp" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZyVx2" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4ZyFrBZz5Zw" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZz5Zx" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZz624" role="3cqZAp">
            <node concept="1Wc70l" id="nhrStdSDZq" role="3clFbG">
              <node concept="1Wc70l" id="4ZyFrBZz6vm" role="3uHU7B">
                <node concept="2OqwBi" id="4ZyFrBZz626" role="3uHU7B">
                  <node concept="2OqwBi" id="4ZyFrBZz627" role="2Oq$k0">
                    <node concept="2OqwBi" id="4ZyFrBZz628" role="2Oq$k0">
                      <node concept="30H73N" id="4ZyFrBZz6f8" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4ZyFrBZz62b" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4ZyFrBZz62c" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3Ftr4R8wabh" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8wabi" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4ZyFrBZzbzv" role="3uHU7w">
                  <node concept="2OqwBi" id="4ZyFrBZzbzw" role="2Oq$k0">
                    <node concept="30H73N" id="4ZyFrBZze4s" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORg4o" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="4ZyFrBZzbzz" role="2OqNvi">
                    <node concept="chp4Y" id="4ZyFrBZzbz$" role="cj9EA">
                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7GmLr0aWNiP" role="3uHU7w">
                <node concept="35c_gC" id="7GmLr0aWMoL" role="2Oq$k0">
                  <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
                <node concept="3zqWPK" id="70OdufORg4q" role="2OqNvi">
                  <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                  <node concept="2OqwBi" id="70OdufORg4s" role="37wK5m">
                    <node concept="1PxgMI" id="70OdufORg4t" role="2Oq$k0">
                      <node concept="chp4Y" id="70OdufORg4u" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                      </node>
                      <node concept="2OqwBi" id="70OdufORg4v" role="1m5AlR">
                        <node concept="30H73N" id="70OdufORg4w" role="2Oq$k0" />
                        <node concept="2qgKlT" id="70OdufORg4x" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="70OdufORg4y" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="2wAjnqF55Vg" role="1lVwrX">
        <node concept="3clFb_" id="2wAjnqF58dJ" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="3clFbS" id="2wAjnqF58dL" role="3clF47">
            <node concept="3clFbF" id="4ZyFrBZzcyK" role="3cqZAp">
              <node concept="2OqwBi" id="4ZyFrBZzcyL" role="3clFbG">
                <node concept="37vLTw" id="4ZyFrBZzcyN" role="2Oq$k0">
                  <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
                  <node concept="1ZhdrF" id="4ZyFrBZzd4K" role="lGtFl">
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <property role="2qtEX8" value="variableDeclaration" />
                    <node concept="3$xsQk" id="4ZyFrBZzd4L" role="3$ytzL">
                      <node concept="3clFbS" id="4ZyFrBZzd4M" role="2VODD2">
                        <node concept="3clFbF" id="69EpS29ZPQa" role="3cqZAp">
                          <node concept="2OqwBi" id="69EpS29ZPQc" role="3clFbG">
                            <node concept="1iwH7S" id="69EpS29ZPQd" role="2Oq$k0" />
                            <node concept="1iwH70" id="69EpS29ZPQe" role="2OqNvi">
                              <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="69EpS29ZPVr" role="1iwH7V">
                                <node concept="1iwH7S" id="69EpS29ZPT$" role="2Oq$k0" />
                                <node concept="3cR$yn" id="69EpS29ZQ9I" role="2OqNvi">
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
                <node concept="liA8E" id="4ZyFrBZzcyO" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                  <node concept="10Nm6u" id="4ZyFrBZzcyP" role="37wK5m">
                    <node concept="5jKBG" id="za$VMvkOfS" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                      <node concept="3NFfHV" id="4ZyFrBZzcyR" role="5jGum">
                        <node concept="3clFbS" id="4ZyFrBZzcyS" role="2VODD2">
                          <node concept="3clFbF" id="4ZyFrBZzcyT" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu3TYE" role="3clFbG">
                              <node concept="2OqwBi" id="7vKHTLu3TYF" role="2Oq$k0">
                                <node concept="30H73N" id="7vKHTLu3TYG" role="2Oq$k0" />
                                <node concept="3TrEf2" id="7vKHTLu3TYH" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORg4_" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4ZyFrBZzcyZ" role="37wK5m">
                    <ref role="3cqZAo" node="2wAjnqF58no" resolve="param" />
                    <node concept="1ZhdrF" id="4ZyFrBZzcz0" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="4ZyFrBZzcz1" role="3$ytzL">
                        <node concept="3clFbS" id="4ZyFrBZzcz2" role="2VODD2">
                          <node concept="3cpWs6" id="4ZyFrBZzcz3" role="3cqZAp">
                            <node concept="2OqwBi" id="4ZyFrBZzcz4" role="3cqZAk">
                              <node concept="1iwH7S" id="4ZyFrBZzcz5" role="2Oq$k0" />
                              <node concept="1iwH70" id="4ZyFrBZzcz6" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                <node concept="2OqwBi" id="4ZyFrBZzcz7" role="1iwH7V">
                                  <node concept="1PxgMI" id="4ZyFrBZzcz8" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4ZyFrBZzcz9" role="1m5AlR">
                                      <node concept="30H73N" id="4ZyFrBZzcza" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORg4B" role="2OqNvi">
                                        <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                      </node>
                                    </node>
                                    <node concept="chp4Y" id="714IaVdGYLS" role="3oSUPX">
                                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="4ZyFrBZzczc" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
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
              <node concept="raruj" id="2wAjnqF59dq" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="2wAjnqF58uh" role="3clF45" />
          <node concept="3Tm1VV" id="2wAjnqF58dO" role="1B3o_S" />
          <node concept="37vLTG" id="2wAjnqF58no" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="2pd$B2ebHyf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3n$5ZhDelw7" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="3n$5ZhDelw8" role="30HLyM">
        <node concept="3clFbS" id="3n$5ZhDelw9" role="2VODD2">
          <node concept="3clFbF" id="3n$5ZhDelwa" role="3cqZAp">
            <node concept="1Wc70l" id="3n$5ZhDelwb" role="3clFbG">
              <node concept="1Wc70l" id="3n$5ZhDelwc" role="3uHU7B">
                <node concept="2OqwBi" id="3n$5ZhDelwd" role="3uHU7B">
                  <node concept="2OqwBi" id="3n$5ZhDelwe" role="2Oq$k0">
                    <node concept="2OqwBi" id="3n$5ZhDelwf" role="2Oq$k0">
                      <node concept="30H73N" id="3n$5ZhDelwg" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3n$5ZhDelwh" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3n$5ZhDelwi" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3n$5ZhDelwj" role="2OqNvi">
                    <node concept="21nZrQ" id="3n$5ZhDelwk" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyn" resolve="reference" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3n$5ZhDelwl" role="3uHU7w">
                  <node concept="2OqwBi" id="3n$5ZhDelwm" role="2Oq$k0">
                    <node concept="30H73N" id="3n$5ZhDelwn" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORg4D" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="3n$5ZhDelwp" role="2OqNvi">
                    <node concept="chp4Y" id="3n$5ZhDelwq" role="cj9EA">
                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3n$5ZhDelwr" role="3uHU7w">
                <node concept="2OqwBi" id="3n$5ZhDelws" role="3fr31v">
                  <node concept="35c_gC" id="3n$5ZhDelwt" role="2Oq$k0">
                    <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                  </node>
                  <node concept="3zqWPK" id="70OdufORg4F" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                    <node concept="2OqwBi" id="70OdufORg4H" role="37wK5m">
                      <node concept="1PxgMI" id="70OdufORg4I" role="2Oq$k0">
                        <node concept="chp4Y" id="70OdufORg4J" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                        </node>
                        <node concept="2OqwBi" id="70OdufORg4K" role="1m5AlR">
                          <node concept="30H73N" id="70OdufORg4L" role="2Oq$k0" />
                          <node concept="2qgKlT" id="70OdufORg4M" role="2OqNvi">
                            <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="70OdufORg4N" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="3n$5ZhDelwA" role="1lVwrX">
        <node concept="3clFb_" id="3n$5ZhDelwB" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="3clFbS" id="3n$5ZhDelwC" role="3clF47">
            <node concept="3clFbF" id="3n$5ZhDelwD" role="3cqZAp">
              <node concept="2OqwBi" id="3n$5ZhDelwE" role="3clFbG">
                <node concept="37vLTw" id="3n$5ZhDelwF" role="2Oq$k0">
                  <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
                  <node concept="1ZhdrF" id="3n$5ZhDelwG" role="lGtFl">
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <property role="2qtEX8" value="variableDeclaration" />
                    <node concept="3$xsQk" id="3n$5ZhDelwH" role="3$ytzL">
                      <node concept="3clFbS" id="3n$5ZhDelwI" role="2VODD2">
                        <node concept="3clFbF" id="3n$5ZhDelwJ" role="3cqZAp">
                          <node concept="2OqwBi" id="3n$5ZhDelwK" role="3clFbG">
                            <node concept="1iwH7S" id="3n$5ZhDelwL" role="2Oq$k0" />
                            <node concept="1iwH70" id="3n$5ZhDelwM" role="2OqNvi">
                              <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                              <node concept="2OqwBi" id="3n$5ZhDelwN" role="1iwH7V">
                                <node concept="1iwH7S" id="3n$5ZhDelwO" role="2Oq$k0" />
                                <node concept="3cR$yn" id="3n$5ZhDelwP" role="2OqNvi">
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
                <node concept="liA8E" id="3n$5ZhDelwQ" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                  <node concept="10Nm6u" id="3n$5ZhDelwR" role="37wK5m">
                    <node concept="5jKBG" id="3n$5ZhDelwS" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                      <node concept="3NFfHV" id="3n$5ZhDelwT" role="5jGum">
                        <node concept="3clFbS" id="3n$5ZhDelwU" role="2VODD2">
                          <node concept="3clFbF" id="3n$5ZhDelwV" role="3cqZAp">
                            <node concept="2OqwBi" id="3n$5ZhDelwW" role="3clFbG">
                              <node concept="2OqwBi" id="3n$5ZhDelwX" role="2Oq$k0">
                                <node concept="30H73N" id="3n$5ZhDelwY" role="2Oq$k0" />
                                <node concept="3TrEf2" id="3n$5ZhDelwZ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORg4Q" role="2OqNvi">
                                <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="3n$5ZhDelx1" role="37wK5m">
                    <node concept="29HgVG" id="3n$5ZhDelx2" role="lGtFl">
                      <node concept="3NFfHV" id="3n$5ZhDelx3" role="3NFExx">
                        <node concept="3clFbS" id="3n$5ZhDelx4" role="2VODD2">
                          <node concept="3clFbF" id="3n$5ZhDelx5" role="3cqZAp">
                            <node concept="2OqwBi" id="3n$5ZhDelx6" role="3clFbG">
                              <node concept="1PxgMI" id="3n$5ZhDelx7" role="2Oq$k0">
                                <node concept="chp4Y" id="3n$5ZhDelx8" role="3oSUPX">
                                  <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                </node>
                                <node concept="2OqwBi" id="3n$5ZhDelx9" role="1m5AlR">
                                  <node concept="30H73N" id="3n$5ZhDelxa" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="70OdufORg4S" role="2OqNvi">
                                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="3n$5ZhDelxc" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="3n$5ZhDelxd" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="3n$5ZhDelxe" role="3clF45" />
          <node concept="3Tm1VV" id="3n$5ZhDelxf" role="1B3o_S" />
          <node concept="37vLTG" id="3n$5ZhDelxg" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="3n$5ZhDelxh" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4IuFl2J1x9x" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4IuFl2J1x9y" role="30HLyM">
        <node concept="3clFbS" id="4IuFl2J1x9z" role="2VODD2">
          <node concept="3clFbF" id="gLrprV2Wj1" role="3cqZAp">
            <node concept="1Wc70l" id="5OmbMbq8tp7" role="3clFbG">
              <node concept="1Wc70l" id="5OmbMbqcntN" role="3uHU7B">
                <node concept="1Wc70l" id="5OmbMbq8tp8" role="3uHU7B">
                  <node concept="2OqwBi" id="5OmbMbq8tp9" role="3uHU7B">
                    <node concept="2OqwBi" id="5OmbMbq8tpa" role="2Oq$k0">
                      <node concept="2OqwBi" id="5OmbMbq8tpb" role="2Oq$k0">
                        <node concept="30H73N" id="5OmbMbq8tpc" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5OmbMbq8tpd" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="5OmbMbq8tpe" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="21noJN" id="3Ftr4R8wabp" role="2OqNvi">
                      <node concept="21nZrQ" id="3Ftr4R8wabq" role="21noJM">
                        <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5OmbMbq8tph" role="3uHU7w">
                    <node concept="2OqwBi" id="5OmbMbq8tpi" role="2Oq$k0">
                      <node concept="30H73N" id="5OmbMbq8tpj" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORg4U" role="2OqNvi">
                        <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="5OmbMbq8tpl" role="2OqNvi">
                      <node concept="chp4Y" id="5OmbMbq8tpm" role="cj9EA">
                        <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="7GmLr0aWU5Z" role="3uHU7w">
                  <node concept="2OqwBi" id="7GmLr0aWU61" role="3fr31v">
                    <node concept="35c_gC" id="7GmLr0aWU62" role="2Oq$k0">
                      <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                    <node concept="3zqWPK" id="70OdufORg4W" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                      <node concept="2OqwBi" id="70OdufORg4Y" role="37wK5m">
                        <node concept="1PxgMI" id="70OdufORg4Z" role="2Oq$k0">
                          <node concept="chp4Y" id="70OdufORg50" role="3oSUPX">
                            <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                          </node>
                          <node concept="2OqwBi" id="70OdufORg51" role="1m5AlR">
                            <node concept="30H73N" id="70OdufORg52" role="2Oq$k0" />
                            <node concept="2qgKlT" id="70OdufORg53" role="2OqNvi">
                              <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="70OdufORg54" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5OmbMbqcoQ6" role="3uHU7w">
                <node concept="2OqwBi" id="5OmbMbqcoqs" role="3uHU7B">
                  <node concept="3zqWPK" id="70OdufORg57" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:i1LP2xI" resolve="getCompileTimeConstantValue" />
                    <node concept="2OqwBi" id="70OdufORg59" role="37wK5m">
                      <node concept="2JrnkZ" id="70OdufORg5a" role="2Oq$k0">
                        <node concept="2OqwBi" id="70OdufORg5b" role="2JrQYb">
                          <node concept="I4A8Y" id="70OdufORg5c" role="2OqNvi" />
                          <node concept="30H73N" id="70OdufORg5d" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="liA8E" id="70OdufORg5e" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5OmbMbqcoq$" role="2Oq$k0">
                    <node concept="1PxgMI" id="5OmbMbqcoq_" role="2Oq$k0">
                      <node concept="chp4Y" id="5OmbMbqcoqA" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                      </node>
                      <node concept="2OqwBi" id="5OmbMbqcoqB" role="1m5AlR">
                        <node concept="30H73N" id="5OmbMbqcoqC" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORg5f" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5OmbMbqcoqE" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="5OmbMbqcoqF" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="BNktPFyj0o" role="1lVwrX">
        <node concept="3clFb_" id="BNktPFyj0p" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="3clFbS" id="BNktPFyj0q" role="3clF47">
            <node concept="3clFbF" id="BNktPFyj0r" role="3cqZAp">
              <node concept="2OqwBi" id="BNktPFyjGn" role="3clFbG">
                <node concept="2OqwBi" id="BNktPFyj0s" role="2Oq$k0">
                  <node concept="37vLTw" id="BNktPFyj0t" role="2Oq$k0">
                    <ref role="3cqZAo" node="nQfYv_giIo" resolve="builder" />
                    <node concept="1ZhdrF" id="BNktPFyj0u" role="lGtFl">
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <property role="2qtEX8" value="variableDeclaration" />
                      <node concept="3$xsQk" id="BNktPFyj0v" role="3$ytzL">
                        <node concept="3clFbS" id="BNktPFyj0w" role="2VODD2">
                          <node concept="3clFbF" id="BNktPFyj0x" role="3cqZAp">
                            <node concept="2OqwBi" id="BNktPFyj0y" role="3clFbG">
                              <node concept="1iwH7S" id="BNktPFyj0z" role="2Oq$k0" />
                              <node concept="1iwH70" id="BNktPFyj0$" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                                <node concept="2OqwBi" id="BNktPFyj0_" role="1iwH7V">
                                  <node concept="1iwH7S" id="BNktPFyj0A" role="2Oq$k0" />
                                  <node concept="3cR$yn" id="BNktPFyj0B" role="2OqNvi">
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
                  <node concept="liA8E" id="BNktPFyj0C" role="2OqNvi">
                    <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.forChild(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="forChild" />
                    <node concept="10Nm6u" id="BNktPFyj0D" role="37wK5m">
                      <node concept="5jKBG" id="BNktPFyj0E" role="lGtFl">
                        <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                        <node concept="3NFfHV" id="BNktPFyj0F" role="5jGum">
                          <node concept="3clFbS" id="BNktPFyj0G" role="2VODD2">
                            <node concept="3clFbF" id="BNktPFyj0H" role="3cqZAp">
                              <node concept="2OqwBi" id="BNktPFyj0I" role="3clFbG">
                                <node concept="2OqwBi" id="BNktPFyj0J" role="2Oq$k0">
                                  <node concept="30H73N" id="BNktPFyj0K" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="BNktPFyj0L" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORg5h" role="2OqNvi">
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
                <node concept="liA8E" id="BNktPFykcw" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.initNull()" resolve="initNull" />
                </node>
              </node>
              <node concept="raruj" id="BNktPFyj0Z" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="BNktPFyj10" role="3clF45" />
          <node concept="3Tm1VV" id="BNktPFyj11" role="1B3o_S" />
          <node concept="37vLTG" id="BNktPFyj12" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="BNktPFyj13" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZA4J9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4ZyFrBZA6IX" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZA6IY" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZA6Lx" role="3cqZAp">
            <node concept="1Wc70l" id="5OmbMbq9SlN" role="3clFbG">
              <node concept="1eOMI4" id="5OmbMbqfqGT" role="3uHU7w">
                <node concept="22lmx$" id="7vKHTLu4bG2" role="1eOMHV">
                  <node concept="22lmx$" id="5OmbMbqfsGZ" role="3uHU7B">
                    <node concept="3fqX7Q" id="5OmbMbqfvsU" role="3uHU7B">
                      <node concept="2OqwBi" id="5OmbMbqfvsW" role="3fr31v">
                        <node concept="2OqwBi" id="5OmbMbqfvsX" role="2Oq$k0">
                          <node concept="30H73N" id="5OmbMbqfvsY" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORg5j" role="2OqNvi">
                            <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                          </node>
                        </node>
                        <node concept="1mIQ4w" id="5OmbMbqfvt0" role="2OqNvi">
                          <node concept="chp4Y" id="5OmbMbqfvt1" role="cj9EA">
                            <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7GmLr0aWU_i" role="3uHU7w">
                      <node concept="35c_gC" id="7GmLr0aWU_j" role="2Oq$k0">
                        <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                      </node>
                      <node concept="3zqWPK" id="70OdufORg5l" role="2OqNvi">
                        <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                        <node concept="2OqwBi" id="70OdufORg5n" role="37wK5m">
                          <node concept="1PxgMI" id="70OdufORg5o" role="2Oq$k0">
                            <node concept="chp4Y" id="70OdufORg5p" role="3oSUPX">
                              <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                            </node>
                            <node concept="2OqwBi" id="70OdufORg5q" role="1m5AlR">
                              <node concept="30H73N" id="70OdufORg5r" role="2Oq$k0" />
                              <node concept="2qgKlT" id="70OdufORg5s" role="2OqNvi">
                                <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="70OdufORg5t" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="7vKHTLu4ck0" role="3uHU7w">
                    <node concept="2OqwBi" id="7vKHTLu4ck1" role="3uHU7B">
                      <node concept="3zqWPK" id="70OdufORg5w" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i1LP2xI" resolve="getCompileTimeConstantValue" />
                        <node concept="2OqwBi" id="70OdufORg5y" role="37wK5m">
                          <node concept="2JrnkZ" id="70OdufORg5z" role="2Oq$k0">
                            <node concept="2OqwBi" id="70OdufORg5$" role="2JrQYb">
                              <node concept="I4A8Y" id="70OdufORg5_" role="2OqNvi" />
                              <node concept="30H73N" id="70OdufORg5A" role="2Oq$k0" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70OdufORg5B" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7vKHTLu4ck9" role="2Oq$k0">
                        <node concept="1PxgMI" id="7vKHTLu4cka" role="2Oq$k0">
                          <node concept="chp4Y" id="7vKHTLu4ckb" role="3oSUPX">
                            <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                          </node>
                          <node concept="2OqwBi" id="7vKHTLu4ckc" role="1m5AlR">
                            <node concept="30H73N" id="7vKHTLu4ckd" role="2Oq$k0" />
                            <node concept="3zqWPK" id="70OdufORg5C" role="2OqNvi">
                              <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7vKHTLu4ckf" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="7vKHTLu4ckg" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4IuFl2KUgbU" role="3uHU7B">
                <node concept="2OqwBi" id="4ZyFrBZA6L$" role="3uHU7B">
                  <node concept="2OqwBi" id="4ZyFrBZA6L_" role="2Oq$k0">
                    <node concept="2OqwBi" id="4ZyFrBZA6LA" role="2Oq$k0">
                      <node concept="30H73N" id="4ZyFrBZA6LB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4ZyFrBZA6LC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4ZyFrBZA6LD" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3Ftr4R8wabx" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8waby" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="4IuFl2KUhWg" role="3uHU7w">
                  <node concept="22lmx$" id="4IuFl2KUib6" role="1eOMHV">
                    <node concept="2OqwBi" id="4IuFl2KUiQR" role="3uHU7w">
                      <node concept="2OqwBi" id="4IuFl2KUioA" role="2Oq$k0">
                        <node concept="30H73N" id="4IuFl2KUij4" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORg5E" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                      <node concept="1mIQ4w" id="4IuFl2KUjs1" role="2OqNvi">
                        <node concept="chp4Y" id="4IuFl2KUjAP" role="cj9EA">
                          <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4IuFl2KUh6V" role="3uHU7B">
                      <node concept="2OqwBi" id="4IuFl2KUgrW" role="2Oq$k0">
                        <node concept="30H73N" id="4IuFl2KUgj5" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4IuFl2KUgOn" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORg5G" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="4ZyFrBZDOrc" role="1lVwrX">
        <node concept="9aQIb" id="7vKHTLu7jwP" role="gfFT$">
          <node concept="3clFbS" id="7vKHTLu7jwQ" role="9aQI4">
            <node concept="3clFbF" id="4ZyFrBZDL7a" role="3cqZAp">
              <node concept="1sPUBX" id="4ZyFrBZDL7s" role="lGtFl">
                <ref role="v9R2y" node="4ZyFrBZ_yy$" resolve="NodeBuilder_child" />
                <node concept="30H73N" id="7vKHTLu5y7Y" role="v9R3O" />
                <node concept="v3LJS" id="69EpS2a01eu" role="v9R3O">
                  <ref role="v3LJV" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                </node>
                <node concept="3clFbT" id="7vKHTLtYH6R" role="v9R3O" />
                <node concept="3clFbT" id="7vKHTLtZiJn" role="v9R3O">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="7vKHTLu68mX" role="v9R3O" />
                <node concept="3NFfHV" id="4IuFl2IUo$K" role="1sPUBK">
                  <node concept="3clFbS" id="4IuFl2IUo$L" role="2VODD2">
                    <node concept="3clFbF" id="4IuFl2IV$dG" role="3cqZAp">
                      <node concept="2OqwBi" id="4IuFl2IV$gi" role="3clFbG">
                        <node concept="30H73N" id="4IuFl2IV$dF" role="2Oq$k0" />
                        <node concept="3zqWPK" id="70OdufORg5I" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="4ZyFrBZDL7v" role="3clFbG">
                <node concept="1pGfFk" id="4ZyFrBZDL7w" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="7vKHTLu7jRs" role="lGtFl">
            <node concept="3IZrLx" id="7vKHTLu7jRt" role="3IZSJc">
              <node concept="3clFbS" id="7vKHTLu7jRu" role="2VODD2">
                <node concept="3clFbF" id="7vKHTLu7kOs" role="3cqZAp">
                  <node concept="2OqwBi" id="7vKHTLu7kOu" role="3clFbG">
                    <node concept="2OqwBi" id="7vKHTLu7kOv" role="2Oq$k0">
                      <node concept="1PxgMI" id="7vKHTLu7kOw" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="7vKHTLu7kOx" role="3oSUPX">
                          <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                        </node>
                        <node concept="2OqwBi" id="7vKHTLu7nYQ" role="1m5AlR">
                          <node concept="30H73N" id="7vKHTLu7kOy" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORg5K" role="2OqNvi">
                            <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                          </node>
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="7vKHTLu7n6X" role="2OqNvi">
                        <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="7vKHTLu7m_J" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="gft3U" id="7vKHTLu7mB6" role="UU_$l">
              <node concept="3clFbF" id="7vKHTLu7mKJ" role="gfFT$">
                <node concept="1sPUBX" id="7vKHTLu7mKK" role="lGtFl">
                  <ref role="v9R2y" node="4ZyFrBZ_yy$" resolve="NodeBuilder_child" />
                  <node concept="30H73N" id="7vKHTLu7mKL" role="v9R3O" />
                  <node concept="v3LJS" id="7vKHTLu7mKM" role="v9R3O">
                    <ref role="v3LJV" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                  </node>
                  <node concept="3clFbT" id="7vKHTLu7mKN" role="v9R3O" />
                  <node concept="3clFbT" id="7vKHTLu7mKO" role="v9R3O">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFbT" id="7vKHTLu7mKP" role="v9R3O" />
                  <node concept="3NFfHV" id="7vKHTLu7mKQ" role="1sPUBK">
                    <node concept="3clFbS" id="7vKHTLu7mKR" role="2VODD2">
                      <node concept="3clFbF" id="7vKHTLu7mKS" role="3cqZAp">
                        <node concept="2OqwBi" id="7vKHTLu7mKT" role="3clFbG">
                          <node concept="30H73N" id="7vKHTLu7mKU" role="2Oq$k0" />
                          <node concept="3zqWPK" id="70OdufORg5M" role="2OqNvi">
                            <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7vKHTLu7mKW" role="3clFbG">
                  <node concept="1pGfFk" id="7vKHTLu7mKX" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZ$5tp" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4ZyFrBZ$aSv" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZ$aSw" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZ$aXx" role="3cqZAp">
            <node concept="1Wc70l" id="4ZyFrBZ$b2V" role="3clFbG">
              <node concept="3fqX7Q" id="4ZyFrBZ$b2W" role="3uHU7w">
                <node concept="2OqwBi" id="4ZyFrBZ$b2X" role="3fr31v">
                  <node concept="2OqwBi" id="4ZyFrBZ$b2Y" role="2Oq$k0">
                    <node concept="30H73N" id="4ZyFrBZ$bzQ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ZyFrBZ$b30" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORg5O" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="4ZyFrBZ$aXu" role="3uHU7B">
                <node concept="2OqwBi" id="4ZyFrBZ$b32" role="3uHU7w">
                  <node concept="2OqwBi" id="4ZyFrBZ$b33" role="2Oq$k0">
                    <node concept="30H73N" id="4ZyFrBZ$bhl" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORg5Q" role="2OqNvi">
                      <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="4ZyFrBZ$b36" role="2OqNvi">
                    <node concept="chp4Y" id="4ZyFrBZ$b37" role="cj9EA">
                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4ZyFrBZ$csr" role="3uHU7B">
                  <node concept="2OqwBi" id="4ZyFrBZ$css" role="2Oq$k0">
                    <node concept="2OqwBi" id="4ZyFrBZ$cst" role="2Oq$k0">
                      <node concept="30H73N" id="4ZyFrBZ$cEr" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4ZyFrBZ$csw" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4ZyFrBZ$csx" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="21noJN" id="3Ftr4R8wabt" role="2OqNvi">
                    <node concept="21nZrQ" id="3Ftr4R8wabu" role="21noJM">
                      <ref role="21nZrZ" to="tpce:3Ftr4R6BFyo" resolve="aggregation" />
                    </node>
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
            <node concept="3cpWs8" id="4nmoJNP3tk" role="3cqZAp">
              <node concept="3cpWsn" id="4nmoJNP3tl" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="4nmoJNP3xJ" role="1tU5fm">
                  <ref role="3uigEE" to="6vmh:~SNodeBuilder" resolve="SNodeBuilder" />
                </node>
                <node concept="2ShNRf" id="4nmoJNP3yM" role="33vP2m">
                  <node concept="1pGfFk" id="4nmoJNP3yL" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4ZyFrBZ$dK1" role="3cqZAp">
              <node concept="2OqwBi" id="_E91paWTPt" role="3clFbG">
                <node concept="2OqwBi" id="4ZyFrBZ$dK2" role="2Oq$k0">
                  <node concept="37vLTw" id="4ZyFrBZ$dK4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nmoJNP3tl" resolve="builder" />
                    <node concept="1ZhdrF" id="4ZyFrBZ$etm" role="lGtFl">
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <property role="2qtEX8" value="variableDeclaration" />
                      <node concept="3$xsQk" id="4ZyFrBZ$etn" role="3$ytzL">
                        <node concept="3clFbS" id="4ZyFrBZ$eto" role="2VODD2">
                          <node concept="3clFbF" id="69EpS29ZRmU" role="3cqZAp">
                            <node concept="2OqwBi" id="69EpS29ZRmV" role="3clFbG">
                              <node concept="1iwH7S" id="69EpS29ZRmW" role="2Oq$k0" />
                              <node concept="1iwH70" id="69EpS29ZRmX" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
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
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.forChild(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="forChild" />
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
                                <node concept="3zqWPK" id="70OdufORg5S" role="2OqNvi">
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
                <node concept="liA8E" id="_E91paWUc$" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~SNodeBuilder.initNodeList(java.lang.Iterable,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="initNodeList" />
                  <node concept="37vLTw" id="_E91paWUh4" role="37wK5m">
                    <ref role="3cqZAo" node="2wAjnqF54nf" resolve="param" />
                    <node concept="1ZhdrF" id="_E91paWUh5" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="_E91paWUh6" role="3$ytzL">
                        <node concept="3clFbS" id="_E91paWUh7" role="2VODD2">
                          <node concept="3cpWs6" id="_E91paWUh8" role="3cqZAp">
                            <node concept="2OqwBi" id="_E91paWUh9" role="3cqZAk">
                              <node concept="1iwH7S" id="_E91paWUha" role="2Oq$k0" />
                              <node concept="1iwH70" id="_E91paWUhb" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                <node concept="2OqwBi" id="_E91paWUhc" role="1iwH7V">
                                  <node concept="1PxgMI" id="_E91paWUhd" role="2Oq$k0">
                                    <node concept="2OqwBi" id="_E91paWUhe" role="1m5AlR">
                                      <node concept="30H73N" id="_E91paWUhf" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORg5U" role="2OqNvi">
                                        <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                      </node>
                                    </node>
                                    <node concept="chp4Y" id="_E91paWUhh" role="3oSUPX">
                                      <ref role="cht4Q" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="_E91paWUhi" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="35c_gC" id="_E91paXboy" role="37wK5m">
                    <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    <node concept="1ZhdrF" id="_E91paXboz" role="lGtFl">
                      <property role="2qtEX8" value="conceptDeclaration" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474300074836/2644386474300074837" />
                      <node concept="3$xsQk" id="_E91paXbo$" role="3$ytzL">
                        <node concept="3clFbS" id="_E91paXbo_" role="2VODD2">
                          <node concept="3clFbF" id="_E91paXboA" role="3cqZAp">
                            <node concept="2OqwBi" id="_E91paXboB" role="3clFbG">
                              <node concept="2OqwBi" id="_E91paXboC" role="2Oq$k0">
                                <node concept="30H73N" id="_E91paXboD" role="2Oq$k0" />
                                <node concept="3TrEf2" id="_E91paXboE" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="_E91paXboF" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
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
    <node concept="3aamgX" id="4ZyFrBZ_g6E" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      <node concept="30G5F_" id="4ZyFrBZ_j4o" role="30HLyM">
        <node concept="3clFbS" id="4ZyFrBZ_j4p" role="2VODD2">
          <node concept="3clFbF" id="4ZyFrBZ_j9n" role="3cqZAp">
            <node concept="1Wc70l" id="4ZyFrBZ_j9o" role="3clFbG">
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
              <node concept="2OqwBi" id="4ZyFrBZ_j9x" role="3uHU7w">
                <node concept="2OqwBi" id="4ZyFrBZ_j9y" role="2Oq$k0">
                  <node concept="30H73N" id="4ZyFrBZ_j9z" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORg5W" role="2OqNvi">
                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="4ZyFrBZ_j9_" role="2OqNvi">
                  <node concept="chp4Y" id="4ZyFrBZ_j9A" role="cj9EA">
                    <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="4ZyFrBZ_lxq" role="1lVwrX">
        <node concept="9aQIb" id="4ZyFrBZ_lDI" role="1Koe22">
          <node concept="3clFbS" id="4ZyFrBZ_lDK" role="9aQI4">
            <node concept="3clFbF" id="7vKHTLtYivf" role="3cqZAp">
              <node concept="1sPUBX" id="7vKHTLtYivz" role="lGtFl">
                <ref role="v9R2y" node="4ZyFrBZ_yy$" resolve="NodeBuilder_child" />
                <node concept="30H73N" id="7vKHTLtYpXC" role="v9R3O" />
                <node concept="v3LJS" id="7vKHTLtYiv_" role="v9R3O">
                  <ref role="v3LJV" node="69EpS29ZN7T" resolve="nodeBuilderNode" />
                </node>
                <node concept="3clFbT" id="7vKHTLtYHke" role="v9R3O" />
                <node concept="3clFbT" id="7vKHTLtZjb7" role="v9R3O" />
                <node concept="3clFbT" id="7vKHTLu68y4" role="v9R3O">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3NFfHV" id="7vKHTLtYjlN" role="1sPUBK">
                  <node concept="3clFbS" id="7vKHTLtYjlO" role="2VODD2">
                    <node concept="3clFbF" id="7vKHTLtYmdd" role="3cqZAp">
                      <node concept="2OqwBi" id="7vKHTLtYopa" role="3clFbG">
                        <node concept="2OqwBi" id="7vKHTLtYmdf" role="2Oq$k0">
                          <node concept="1PxgMI" id="7vKHTLtYmdg" role="2Oq$k0">
                            <node concept="2OqwBi" id="7vKHTLtYmdh" role="1m5AlR">
                              <node concept="30H73N" id="7vKHTLtYmdi" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORg5Y" role="2OqNvi">
                                <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                              </node>
                            </node>
                            <node concept="chp4Y" id="7vKHTLtYmdk" role="3oSUPX">
                              <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="7vKHTLtYmdl" role="2OqNvi">
                            <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="7vKHTLtYpGb" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="7vKHTLtYivA" role="3clFbG">
                <node concept="1pGfFk" id="7vKHTLtYivB" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vKHTLtYiAW" role="3cqZAp">
              <node concept="1ps_y7" id="7vKHTLtYiAY" role="lGtFl">
                <node concept="1ps_xZ" id="7vKHTLtYiAZ" role="1ps_xO">
                  <property role="TrG5h" value="outer" />
                  <node concept="3Tqbb2" id="7vKHTLtYiB0" role="1ps_xK">
                    <ref role="ehGHo" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                  </node>
                  <node concept="2jfdEK" id="7vKHTLtYiB1" role="1ps_xN">
                    <node concept="3clFbS" id="7vKHTLtYiB2" role="2VODD2">
                      <node concept="3clFbF" id="7vKHTLtYiB3" role="3cqZAp">
                        <node concept="30H73N" id="7vKHTLtYiB4" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1WS0z7" id="7vKHTLtYiB5" role="lGtFl">
                <node concept="3JmXsc" id="7vKHTLtYiB6" role="3Jn$fo">
                  <node concept="3clFbS" id="7vKHTLtYiB7" role="2VODD2">
                    <node concept="3cpWs8" id="7vKHTLtYKqQ" role="3cqZAp">
                      <node concept="3cpWsn" id="7vKHTLtYKqR" role="3cpWs9">
                        <property role="TrG5h" value="initElements" />
                        <node concept="_YKpA" id="7vKHTLtYLiG" role="1tU5fm">
                          <node concept="3Tqbb2" id="7vKHTLtYLBB" role="_ZDj9">
                            <ref role="ehGHo" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="7vKHTLtYLJS" role="33vP2m">
                          <node concept="Tc6Ow" id="7vKHTLtYLJO" role="2ShVmc">
                            <node concept="3Tqbb2" id="7vKHTLtYLJP" role="HW$YZ">
                              <ref role="ehGHo" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
                            </node>
                            <node concept="2OqwBi" id="7vKHTLu00pf" role="I$8f6">
                              <node concept="1PxgMI" id="7vKHTLu00pg" role="2Oq$k0">
                                <node concept="2OqwBi" id="7vKHTLu00ph" role="1m5AlR">
                                  <node concept="30H73N" id="7vKHTLu00pi" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="70OdufORg60" role="2OqNvi">
                                    <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                                  </node>
                                </node>
                                <node concept="chp4Y" id="7vKHTLu00pk" role="3oSUPX">
                                  <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="7vKHTLu1hKn" role="2OqNvi">
                                <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7vKHTLtYiB8" role="3cqZAp">
                      <node concept="2OqwBi" id="7vKHTLtYMXU" role="3clFbG">
                        <node concept="37vLTw" id="7vKHTLtYKqZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7vKHTLtYKqR" resolve="initElements" />
                        </node>
                        <node concept="2Kt2Hk" id="7vKHTLtYNLX" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7vKHTLtYOsd" role="3cqZAp">
                      <node concept="37vLTw" id="7vKHTLtYP08" role="3cqZAk">
                        <ref role="3cqZAo" node="7vKHTLtYKqR" resolve="initElements" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="7vKHTLtYiBg" role="lGtFl">
                <ref role="v9R2y" node="4ZyFrBZ_yy$" resolve="NodeBuilder_child" />
                <node concept="1mL9RQ" id="7vKHTLtYiBh" role="v9R3O">
                  <ref role="1mL9RD" node="7vKHTLtYiAZ" resolve="outer" />
                </node>
                <node concept="1y4W85" id="7vKHTLu0Ig0" role="v9R3O">
                  <node concept="3cpWsd" id="7vKHTLu0KxY" role="1y58nS">
                    <node concept="3cmrfG" id="7vKHTLu0Ky1" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="7vKHTLu0IGo" role="3uHU7B">
                      <node concept="30H73N" id="7vKHTLu0Irh" role="2Oq$k0" />
                      <node concept="2bSWHS" id="7vKHTLu0Jcl" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7vKHTLu0ELy" role="1y566C">
                    <node concept="1PxgMI" id="7vKHTLu0ELz" role="2Oq$k0">
                      <node concept="2OqwBi" id="7vKHTLu0EL$" role="1m5AlR">
                        <node concept="1mL9RQ" id="7vKHTLu0G0r" role="2Oq$k0">
                          <ref role="1mL9RD" node="7vKHTLtYiAZ" resolve="outer" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORg62" role="2OqNvi">
                          <ref role="37wK5l" to="ii9q:1o$2SUuvJqx" resolve="getInitValue" />
                        </node>
                      </node>
                      <node concept="chp4Y" id="7vKHTLu0ELB" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7vKHTLu0ELC" role="2OqNvi">
                      <ref role="3TtcxE" to="tp3r:76efOMRCHWN" resolve="nodes" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbT" id="7vKHTLtYQhk" role="v9R3O">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="3clFbT" id="7vKHTLtZjhg" role="v9R3O" />
                <node concept="3clFbT" id="7vKHTLu68Ot" role="v9R3O">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
              <node concept="2ShNRf" id="7vKHTLtYiBj" role="3clFbG">
                <node concept="1pGfFk" id="7vKHTLtYiBk" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="7vKHTLu6UAo" role="lGtFl" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="4ZyFrBZ_yy$">
    <property role="TrG5h" value="NodeBuilder_child" />
    <node concept="1N15co" id="4ZyFrBZ_CN3" role="1s_3oS">
      <property role="TrG5h" value="link" />
      <node concept="3Tqbb2" id="4ZyFrBZ_CV_" role="1N15GL">
        <ref role="ehGHo" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
      </node>
    </node>
    <node concept="1N15co" id="69EpS29ZXx6" role="1s_3oS">
      <property role="TrG5h" value="nodeBuilderNode" />
      <node concept="3Tqbb2" id="69EpS29ZXx7" role="1N15GL">
        <ref role="ehGHo" to="tp3r:1o$2SUuutG0" resolve="NodeBuilderInitLinkValue" />
      </node>
    </node>
    <node concept="1N15co" id="7vKHTLtYrIR" role="1s_3oS">
      <property role="TrG5h" value="sibling" />
      <node concept="10P_77" id="7vKHTLtYrWV" role="1N15GL" />
    </node>
    <node concept="1N15co" id="7vKHTLtZ0Mf" role="1s_3oS">
      <property role="TrG5h" value="allowNull" />
      <node concept="10P_77" id="7vKHTLtZ1cq" role="1N15GL" />
    </node>
    <node concept="1N15co" id="7vKHTLu5MhO" role="1s_3oS">
      <property role="TrG5h" value="forceDeclare" />
      <node concept="10P_77" id="7vKHTLu5MSR" role="1N15GL" />
    </node>
    <node concept="3aamgX" id="4ZyFrBZA1n6" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
      <node concept="1Koe21" id="4ZyFrBZAfoJ" role="1lVwrX">
        <node concept="9aQIb" id="4ZyFrBZAfoP" role="1Koe22">
          <node concept="3clFbS" id="4ZyFrBZAfoR" role="9aQI4">
            <node concept="3cpWs8" id="1vKiq7cqbta" role="3cqZAp">
              <node concept="3cpWsn" id="1vKiq7cqbtb" role="3cpWs9">
                <property role="TrG5h" value="_node_" />
                <node concept="3uibUv" id="1vKiq7cqbtc" role="1tU5fm">
                  <ref role="3uigEE" to="6vmh:~AbstractNodeBuilder" resolve="AbstractNodeBuilder" />
                  <node concept="1sPUBX" id="2g69lt1AY0N" role="lGtFl">
                    <ref role="v9R2y" node="2g69lt1AUA8" resolve="NodeBuilderNode_ClassifierType" />
                  </node>
                </node>
                <node concept="17Uvod" id="1vKiq7cqbtd" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="1vKiq7cqbte" role="3zH0cK">
                    <node concept="3clFbS" id="1vKiq7cqbtf" role="2VODD2">
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
                <node concept="2ZBi8u" id="1vKiq7cqbtt" role="lGtFl">
                  <ref role="2rW$FS" node="hG0dEqV" resolve="nodeVariableL" />
                </node>
                <node concept="2OqwBi" id="7vKHTLu6vA6" role="33vP2m">
                  <node concept="2OqwBi" id="4ZyFrBZAfp5" role="2Oq$k0">
                    <node concept="37vLTw" id="4ZyFrBZAfp7" role="2Oq$k0">
                      <ref role="3cqZAo" node="1vKiq7cqbtb" resolve="_node_" />
                      <node concept="1ZhdrF" id="4ZyFrBZAfp8" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="4ZyFrBZAfp9" role="3$ytzL">
                          <node concept="3clFbS" id="4ZyFrBZAfpa" role="2VODD2">
                            <node concept="3clFbF" id="69EpS29ZYDa" role="3cqZAp">
                              <node concept="2OqwBi" id="69EpS29ZYDb" role="3clFbG">
                                <node concept="1iwH7S" id="69EpS29ZYDc" role="2Oq$k0" />
                                <node concept="1iwH70" id="69EpS29ZYDd" role="2OqNvi">
                                  <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                                  <node concept="2OqwBi" id="69EpS29ZYDe" role="1iwH7V">
                                    <node concept="1iwH7S" id="69EpS29ZYDf" role="2Oq$k0" />
                                    <node concept="3cR$yn" id="69EpS29ZYDg" role="2OqNvi">
                                      <ref role="3cRzXn" node="69EpS29ZXx6" resolve="nodeBuilderNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4ZyFrBZAfpl" role="2OqNvi">
                      <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.forChild(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="forChild" />
                      <node concept="10Nm6u" id="4ZyFrBZAfpm" role="37wK5m">
                        <node concept="5jKBG" id="za$VMvkOfV" role="lGtFl">
                          <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                          <node concept="3NFfHV" id="4ZyFrBZAfpo" role="5jGum">
                            <node concept="3clFbS" id="4ZyFrBZAfpp" role="2VODD2">
                              <node concept="3clFbF" id="4ZyFrBZAfpq" role="3cqZAp">
                                <node concept="2OqwBi" id="7vKHTLu66AP" role="3clFbG">
                                  <node concept="2OqwBi" id="4ZyFrBZAfps" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4ZyFrBZAfpt" role="2Oq$k0">
                                      <node concept="1iwH7S" id="4ZyFrBZAfpu" role="2Oq$k0" />
                                      <node concept="3cR$yn" id="4ZyFrBZAq5U" role="2OqNvi">
                                        <ref role="3cRzXn" node="4ZyFrBZ_CN3" resolve="link" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="4ZyFrBZAqCY" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                    </node>
                                  </node>
                                  <node concept="3zqWPK" id="70OdufORg64" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="7vKHTLtYCHd" role="lGtFl">
                        <node concept="3IZrLx" id="7vKHTLtYCHe" role="3IZSJc">
                          <node concept="3clFbS" id="7vKHTLtYCHf" role="2VODD2">
                            <node concept="3clFbF" id="7vKHTLtYCQw" role="3cqZAp">
                              <node concept="3fqX7Q" id="7vKHTLtYCQy" role="3clFbG">
                                <node concept="2OqwBi" id="7vKHTLtYCQz" role="3fr31v">
                                  <node concept="1iwH7S" id="7vKHTLtYCQ$" role="2Oq$k0" />
                                  <node concept="3cR$yn" id="7vKHTLtYCQ_" role="2OqNvi">
                                    <ref role="3cRzXn" node="7vKHTLtYrIR" resolve="sibling" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="7vKHTLtZcF$" role="UU_$l">
                          <node concept="15s5l7" id="7vKHTLtZcF_" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/1227128029536558606]&quot;;" />
                            <property role="huDt6" value="Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'" />
                          </node>
                          <node concept="15s5l7" id="7vKHTLtZcFA" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643899]&quot;;" />
                            <property role="huDt6" value="The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope" />
                          </node>
                          <node concept="15s5l7" id="3ieKUxvCOe4" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/1227128029536558606]&quot;;" />
                            <property role="huDt6" value="Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'" />
                          </node>
                          <node concept="15s5l7" id="3ieKUxvCOdU" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643899]&quot;;" />
                            <property role="huDt6" value="The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope" />
                          </node>
                          <node concept="liA8E" id="4nmoJNRofo" role="gfFT$">
                            <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.forSibling()" resolve="forSibling" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7vKHTLu6vTN" role="2OqNvi">
                    <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                    <node concept="10Nm6u" id="7vKHTLu6w5H" role="37wK5m" />
                    <node concept="1sPUBX" id="7vKHTLu6wj2" role="lGtFl">
                      <ref role="v9R2y" node="7vKHTLu4rZM" resolve="NodeBuilder_childInit" />
                      <node concept="2OqwBi" id="7vKHTLucGlV" role="v9R3O">
                        <node concept="2OqwBi" id="7vKHTLucFDq" role="2Oq$k0">
                          <node concept="v3LJS" id="7vKHTLucFqE" role="2Oq$k0">
                            <ref role="v3LJV" node="4ZyFrBZ_CN3" resolve="link" />
                          </node>
                          <node concept="3TrEf2" id="7vKHTLucG6U" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="7vKHTLucGL2" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="7vKHTLuaL8n" role="v9R3O">
                        <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                        <node concept="v3LJS" id="7vKHTLuaLeI" role="37wK5m">
                          <ref role="v3LJV" node="7vKHTLtZ0Mf" resolve="allowNull" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="7vKHTLu1CLs" role="lGtFl" />
              <node concept="1ps_y7" id="1vKiq7cqbuU" role="lGtFl">
                <node concept="1ps_xZ" id="1vKiq7cqbuV" role="1ps_xO">
                  <property role="TrG5h" value="container" />
                  <node concept="2jfdEK" id="1vKiq7cqbuW" role="1ps_xN">
                    <node concept="3clFbS" id="1vKiq7cqbuX" role="2VODD2">
                      <node concept="3clFbF" id="1vKiq7cqbuY" role="3cqZAp">
                        <node concept="2OqwBi" id="1vKiq7cqeqN" role="3clFbG">
                          <node concept="30H73N" id="1vKiq7cqbuZ" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="1vKiq7cqfvk" role="2OqNvi">
                            <node concept="1xMEDy" id="1vKiq7cqfvm" role="1xVPHs">
                              <node concept="chp4Y" id="1vKiq7cqfUh" role="ri$Ld">
                                <ref role="cht4Q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
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
            <node concept="3clFbF" id="7vKHTLu5_y1" role="3cqZAp">
              <node concept="2ShNRf" id="7vKHTLu5_y2" role="3clFbG">
                <node concept="1pGfFk" id="7vKHTLu5_y3" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
              <node concept="raruj" id="7vKHTLu5_y4" role="lGtFl" />
              <node concept="1WS0z7" id="7vKHTLu5_y5" role="lGtFl">
                <node concept="3JmXsc" id="7vKHTLu5_y6" role="3Jn$fo">
                  <node concept="3clFbS" id="7vKHTLu5_y7" role="2VODD2">
                    <node concept="3clFbF" id="7vKHTLu5_y8" role="3cqZAp">
                      <node concept="2OqwBi" id="7vKHTLu5_y9" role="3clFbG">
                        <node concept="1PxgMI" id="7vKHTLu5F75" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="7vKHTLu5F9F" role="3oSUPX">
                            <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                          </node>
                          <node concept="30H73N" id="7vKHTLu5EVe" role="1m5AlR" />
                        </node>
                        <node concept="3Tsc0h" id="7vKHTLu5_yb" role="2OqNvi">
                          <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="7vKHTLu5_yc" role="lGtFl">
                <ref role="v9R2y" node="4ZyFrBZxoNr" resolve="NodeBuilder_value" />
                <node concept="1UUvTB" id="7vKHTLu5_yd" role="v9R3O">
                  <node concept="1UU6SM" id="7vKHTLu5_ye" role="1UU7Ll">
                    <node concept="3clFbS" id="7vKHTLu5_yf" role="2VODD2">
                      <node concept="3clFbF" id="7vKHTLu5_yg" role="3cqZAp">
                        <node concept="1PxgMI" id="7vKHTLu5_yh" role="3clFbG">
                          <property role="1BlNFB" value="true" />
                          <node concept="2OqwBi" id="7vKHTLu5_yi" role="1m5AlR">
                            <node concept="30H73N" id="7vKHTLu5_yj" role="2Oq$k0" />
                            <node concept="1mfA1w" id="7vKHTLu5_yk" role="2OqNvi" />
                          </node>
                          <node concept="chp4Y" id="7vKHTLu5_yl" role="3oSUPX">
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
      <node concept="30G5F_" id="7vKHTLu5HJ4" role="30HLyM">
        <node concept="3clFbS" id="7vKHTLu5HJ5" role="2VODD2">
          <node concept="3clFbF" id="7vKHTLu5I5k" role="3cqZAp">
            <node concept="22lmx$" id="7vKHTLu5MfI" role="3clFbG">
              <node concept="v3LJS" id="7vKHTLu5ML6" role="3uHU7B">
                <ref role="v3LJV" node="7vKHTLu5MhO" resolve="forceDeclare" />
              </node>
              <node concept="2OqwBi" id="7vKHTLu5KTm" role="3uHU7w">
                <node concept="2OqwBi" id="7vKHTLu5J3Q" role="2Oq$k0">
                  <node concept="1PxgMI" id="7vKHTLu5IU0" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="7vKHTLu5IUV" role="3oSUPX">
                      <ref role="cht4Q" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                    </node>
                    <node concept="30H73N" id="7vKHTLu5I5j" role="1m5AlR" />
                  </node>
                  <node concept="3Tsc0h" id="7vKHTLu5Jfz" role="2OqNvi">
                    <ref role="3TtcxE" to="tp3r:4IP40Bi2KcV" resolve="values" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7vKHTLu5MaG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="4ZyFrBZAu3l" role="jxRDz">
      <node concept="1lLz0L" id="4ZyFrBZAufy" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Illegal child initializer in NodeBuilder" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZyFrBZ_yy_" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
      <node concept="1Koe21" id="2wAjnqF51co" role="1lVwrX">
        <node concept="3clFb_" id="2wAjnqF51iC" role="1Koe22">
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <property role="2aFKle" value="false" />
          <property role="TrG5h" value="meth" />
          <node concept="37vLTG" id="2wAjnqF51_G" role="3clF46">
            <property role="TrG5h" value="param" />
            <node concept="3uibUv" id="3ztslReWbXI" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="2wAjnqF51iE" role="3clF47">
            <node concept="3cpWs8" id="7vKHTLtYTpA" role="3cqZAp">
              <node concept="3cpWsn" id="7vKHTLtYTpB" role="3cpWs9">
                <property role="TrG5h" value="_node_" />
                <node concept="2ShNRf" id="7vKHTLu65pO" role="33vP2m">
                  <node concept="1pGfFk" id="7vKHTLu65pN" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
                <node concept="3uibUv" id="4nmoJNO_uI" role="1tU5fm">
                  <ref role="3uigEE" to="6vmh:~AbstractNodeBuilder" resolve="AbstractNodeBuilder" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vKHTLu4Lwq" role="3cqZAp">
              <node concept="2OqwBi" id="7vKHTLu4Lwr" role="3clFbG">
                <node concept="liA8E" id="7vKHTLu4Lwt" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                  <node concept="10Nm6u" id="7vKHTLu4Lwu" role="37wK5m" />
                  <node concept="1sPUBX" id="7vKHTLu4Lwv" role="lGtFl">
                    <ref role="v9R2y" node="7vKHTLu4rZM" resolve="NodeBuilder_childInit" />
                    <node concept="2OqwBi" id="7vKHTLu4Lww" role="v9R3O">
                      <node concept="2OqwBi" id="7vKHTLu4Lwx" role="2Oq$k0">
                        <node concept="v3LJS" id="7vKHTLu4Lwy" role="2Oq$k0">
                          <ref role="v3LJV" node="4ZyFrBZ_CN3" resolve="link" />
                        </node>
                        <node concept="3TrEf2" id="7vKHTLu4Lwz" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7vKHTLu4Lw$" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="7vKHTLu5PoX" role="v9R3O">
                      <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
                      <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                      <node concept="v3LJS" id="7vKHTLu5PrV" role="37wK5m">
                        <ref role="v3LJV" node="7vKHTLtZ0Mf" resolve="allowNull" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7vKHTLtYTpN" role="2Oq$k0">
                  <node concept="37vLTw" id="7vKHTLtYTpO" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vKHTLtYTpB" resolve="_node_" />
                    <node concept="1ZhdrF" id="7vKHTLtYTpP" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="7vKHTLtYTpQ" role="3$ytzL">
                        <node concept="3clFbS" id="7vKHTLtYTpR" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLtYTpS" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLtYTpT" role="3clFbG">
                              <node concept="1iwH7S" id="7vKHTLtYTpU" role="2Oq$k0" />
                              <node concept="1iwH70" id="7vKHTLtYTpV" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dEqV" resolve="nodeVariableL" />
                                <node concept="2OqwBi" id="7vKHTLtYTpW" role="1iwH7V">
                                  <node concept="1iwH7S" id="7vKHTLtYTpX" role="2Oq$k0" />
                                  <node concept="3cR$yn" id="7vKHTLtYTpY" role="2OqNvi">
                                    <ref role="3cRzXn" node="69EpS29ZXx6" resolve="nodeBuilderNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7vKHTLtYTpZ" role="2OqNvi">
                    <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.forChild(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="forChild" />
                    <node concept="10Nm6u" id="7vKHTLtYTq0" role="37wK5m">
                      <node concept="5jKBG" id="7vKHTLtYTq1" role="lGtFl">
                        <ref role="v9R2y" to="tp27:5DcBNiM8ykU" resolve="reduce_LinkDeclaration_SLink" />
                        <node concept="3NFfHV" id="7vKHTLtYTq2" role="5jGum">
                          <node concept="3clFbS" id="7vKHTLtYTq3" role="2VODD2">
                            <node concept="3clFbF" id="7vKHTLtYTq4" role="3cqZAp">
                              <node concept="2OqwBi" id="7vKHTLu65V4" role="3clFbG">
                                <node concept="2OqwBi" id="7vKHTLtYTq6" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7vKHTLtYTq7" role="2Oq$k0">
                                    <node concept="1iwH7S" id="7vKHTLtYTq8" role="2Oq$k0" />
                                    <node concept="3cR$yn" id="7vKHTLtYTq9" role="2OqNvi">
                                      <ref role="3cRzXn" node="4ZyFrBZ_CN3" resolve="link" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="7vKHTLtYTqa" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORg66" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:hEwIf_V" resolve="getGenuineLink" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1W57fq" id="7vKHTLtYTqb" role="lGtFl">
                      <node concept="3IZrLx" id="7vKHTLtYTqc" role="3IZSJc">
                        <node concept="3clFbS" id="7vKHTLtYTqd" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLtYTqe" role="3cqZAp">
                            <node concept="3fqX7Q" id="7vKHTLtYTqf" role="3clFbG">
                              <node concept="2OqwBi" id="7vKHTLtYTqg" role="3fr31v">
                                <node concept="1iwH7S" id="7vKHTLtYTqh" role="2Oq$k0" />
                                <node concept="3cR$yn" id="7vKHTLtYTqi" role="2OqNvi">
                                  <ref role="3cRzXn" node="7vKHTLtYrIR" resolve="sibling" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gft3U" id="7vKHTLtZbbJ" role="UU_$l">
                        <node concept="liA8E" id="4nmoJNRnuL" role="gfFT$">
                          <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.forSibling()" resolve="forSibling" />
                        </node>
                        <node concept="15s5l7" id="7vKHTLtZbJf" role="lGtFl">
                          <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/1227128029536558606]&quot;;" />
                          <property role="huDt6" value="Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'" />
                        </node>
                        <node concept="15s5l7" id="7vKHTLtZbgZ" role="lGtFl">
                          <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643899]&quot;;" />
                          <property role="huDt6" value="The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope" />
                        </node>
                        <node concept="15s5l7" id="3ieKUxvCOdB" role="lGtFl">
                          <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;constraints (cannot be child)&quot;;FLAVOUR_MESSAGE=&quot;Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/1227128029536558606]&quot;;" />
                          <property role="huDt6" value="Node 'forSibling():SNodeBuilder' cannot be child of node '&lt;in-line template&gt;'" />
                        </node>
                        <node concept="15s5l7" id="3ieKUxvCOdj" role="lGtFl">
                          <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/6836281137582643899]&quot;;" />
                          <property role="huDt6" value="The reference  forSibling():SNodeBuilder (baseMethodDeclaration) is out of search scope" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="7vKHTLu4LwA" role="lGtFl" />
            </node>
          </node>
          <node concept="3cqZAl" id="2wAjnqF51rL" role="3clF45" />
          <node concept="3Tm1VV" id="2wAjnqF51iH" role="1B3o_S" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="7vKHTLu4rZM">
    <property role="TrG5h" value="NodeBuilder_childInit" />
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
      <ref role="30HIoZ" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
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
            <node concept="3clFbF" id="7vKHTLu4s1B" role="3cqZAp">
              <node concept="2OqwBi" id="7vKHTLu4s1C" role="3clFbG">
                <node concept="2ShNRf" id="7vKHTLu4ySj" role="2Oq$k0">
                  <node concept="1pGfFk" id="7vKHTLu4z7w" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="7vKHTLu4s1E" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~SNodeBuilder.initNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SAbstractConcept,boolean)" resolve="initNode" />
                  <node concept="37vLTw" id="7vKHTLu4s1F" role="37wK5m">
                    <ref role="3cqZAo" node="7vKHTLu4s00" resolve="param" />
                    <node concept="1ZhdrF" id="7vKHTLu4s1G" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="7vKHTLu4s1H" role="3$ytzL">
                        <node concept="3clFbS" id="7vKHTLu4s1I" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s1J" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu4s1K" role="3clFbG">
                              <node concept="1iwH7S" id="7vKHTLu4s1L" role="2Oq$k0" />
                              <node concept="1iwH70" id="7vKHTLu4s1M" role="2OqNvi">
                                <ref role="1iwH77" node="hG0dD_T" resolve="parametersFromExpressionsL" />
                                <node concept="2OqwBi" id="7vKHTLu4s1N" role="1iwH7V">
                                  <node concept="30H73N" id="7vKHTLu4s1O" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7vKHTLu4s1P" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="35c_gC" id="7vKHTLu4s1Q" role="37wK5m">
                    <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    <node concept="1ZhdrF" id="7vKHTLu4s1R" role="lGtFl">
                      <property role="2qtEX8" value="conceptDeclaration" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474300074836/2644386474300074837" />
                      <node concept="3$xsQk" id="7vKHTLu4s1S" role="3$ytzL">
                        <node concept="3clFbS" id="7vKHTLu4s1T" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s1U" role="3cqZAp">
                            <node concept="v3LJS" id="7vKHTLu4s1X" role="3clFbG">
                              <ref role="v3LJV" node="7vKHTLu4rZN" resolve="targetConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="7vKHTLu4s20" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <node concept="17Uvod" id="7vKHTLu4s21" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                      <node concept="3zFVjK" id="7vKHTLu4s22" role="3zH0cK">
                        <node concept="3clFbS" id="7vKHTLu4s23" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s24" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu5NTT" role="3clFbG">
                              <node concept="2OqwBi" id="7vKHTLu4s25" role="2Oq$k0">
                                <node concept="1iwH7S" id="7vKHTLu4s26" role="2Oq$k0" />
                                <node concept="3cR$yn" id="7vKHTLu4s27" role="2OqNvi">
                                  <ref role="3cRzXn" node="7vKHTLu4rZT" resolve="allowNull" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7vKHTLu5O7b" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="7vKHTLu4xog" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="7vKHTLu4s29" role="3clF45" />
          <node concept="3Tm1VV" id="7vKHTLu4s2a" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7vKHTLu4s2b" role="30HLyM">
        <node concept="3clFbS" id="7vKHTLu4s2c" role="2VODD2">
          <node concept="3clFbF" id="7vKHTLu4s2d" role="3cqZAp">
            <node concept="2OqwBi" id="7vKHTLu4s2e" role="3clFbG">
              <node concept="35c_gC" id="7vKHTLu4s2f" role="2Oq$k0">
                <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
              </node>
              <node concept="3zqWPK" id="70OdufORg68" role="2OqNvi">
                <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                <node concept="2OqwBi" id="70OdufORg6a" role="37wK5m">
                  <node concept="30H73N" id="70OdufORg6b" role="2Oq$k0" />
                  <node concept="3TrEf2" id="70OdufORg6c" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7vKHTLu4s2k" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
      <node concept="1Koe21" id="7vKHTLu4s2l" role="1lVwrX">
        <node concept="9aQIb" id="7vKHTLu4s2m" role="1Koe22">
          <node concept="3clFbS" id="7vKHTLu4s2n" role="9aQI4">
            <node concept="3clFbF" id="7vKHTLu4s3W" role="3cqZAp">
              <node concept="2OqwBi" id="7vKHTLu4s3X" role="3clFbG">
                <node concept="liA8E" id="7vKHTLu4s3Z" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~SNodeBuilder.initNode(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SAbstractConcept,boolean)" resolve="initNode" />
                  <node concept="10Nm6u" id="7vKHTLu4s40" role="37wK5m">
                    <node concept="29HgVG" id="7vKHTLu4s41" role="lGtFl">
                      <node concept="3NFfHV" id="7vKHTLu4s42" role="3NFExx">
                        <node concept="3clFbS" id="7vKHTLu4s43" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s44" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu4s45" role="3clFbG">
                              <node concept="30H73N" id="7vKHTLu4s46" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7vKHTLu4s47" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="35c_gC" id="7vKHTLu4s48" role="37wK5m">
                    <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
                    <node concept="1ZhdrF" id="7vKHTLu4s49" role="lGtFl">
                      <property role="2qtEX8" value="conceptDeclaration" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474300074836/2644386474300074837" />
                      <node concept="3$xsQk" id="7vKHTLu4s4a" role="3$ytzL">
                        <node concept="3clFbS" id="7vKHTLu4s4b" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s4c" role="3cqZAp">
                            <node concept="v3LJS" id="7vKHTLu4s4f" role="3clFbG">
                              <ref role="v3LJV" node="7vKHTLu4rZN" resolve="targetConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbT" id="7vKHTLu4s4i" role="37wK5m">
                    <property role="3clFbU" value="true" />
                    <node concept="17Uvod" id="7vKHTLu4s4j" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                      <node concept="3zFVjK" id="7vKHTLu4s4k" role="3zH0cK">
                        <node concept="3clFbS" id="7vKHTLu4s4l" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4s4m" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu5No9" role="3clFbG">
                              <node concept="2OqwBi" id="7vKHTLu4s4n" role="2Oq$k0">
                                <node concept="1iwH7S" id="7vKHTLu4s4o" role="2Oq$k0" />
                                <node concept="3cR$yn" id="7vKHTLu4s4p" role="2OqNvi">
                                  <ref role="3cRzXn" node="7vKHTLu4rZT" resolve="allowNull" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7vKHTLu5NBj" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="7vKHTLu4$yG" role="lGtFl" />
                </node>
                <node concept="2ShNRf" id="7vKHTLu4$v6" role="2Oq$k0">
                  <node concept="1pGfFk" id="7vKHTLu4$v7" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="7vKHTLu4s4r" role="30HLyM">
        <node concept="3clFbS" id="7vKHTLu4s4s" role="2VODD2">
          <node concept="3clFbF" id="7vKHTLu4s4t" role="3cqZAp">
            <node concept="3fqX7Q" id="7vKHTLu4s4u" role="3clFbG">
              <node concept="2OqwBi" id="7vKHTLu4s4v" role="3fr31v">
                <node concept="35c_gC" id="7vKHTLu4s4w" role="2Oq$k0">
                  <ref role="35c_gD" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
                </node>
                <node concept="3zqWPK" id="70OdufORg6d" role="2OqNvi">
                  <ref role="37wK5l" to="ii9q:4IuFl2JvP6C" resolve="isExpressionExternal" />
                  <node concept="2OqwBi" id="70OdufORg6f" role="37wK5m">
                    <node concept="30H73N" id="70OdufORg6g" role="2Oq$k0" />
                    <node concept="3TrEf2" id="70OdufORg6h" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:76efOMRCLcK" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7vKHTLu4s4_" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:4IP40Bi2$Ew" resolve="NodeBuilderNode" />
      <node concept="1Koe21" id="7vKHTLu4s4A" role="1lVwrX">
        <node concept="9aQIb" id="7vKHTLu4s4B" role="1Koe22">
          <node concept="3clFbS" id="7vKHTLu4s4C" role="9aQI4">
            <node concept="3cpWs8" id="4nmoJNOAqX" role="3cqZAp">
              <node concept="3cpWsn" id="4nmoJNOAqY" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="2ShNRf" id="4nmoJNOAqZ" role="33vP2m">
                  <node concept="1pGfFk" id="4nmoJNOAr0" role="2ShVmc">
                    <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;()" resolve="SNodeBuilder" />
                  </node>
                </node>
                <node concept="3uibUv" id="4nmoJNOAws" role="1tU5fm">
                  <ref role="3uigEE" to="6vmh:~AbstractNodeBuilder" resolve="AbstractNodeBuilder" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vKHTLu4BU8" role="3cqZAp">
              <node concept="2OqwBi" id="7vKHTLu4BU9" role="3clFbG">
                <node concept="liA8E" id="7vKHTLu4BUl" role="2OqNvi">
                  <ref role="37wK5l" to="6vmh:~AbstractNodeBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                  <node concept="10Nm6u" id="7vKHTLu4BUm" role="37wK5m">
                    <node concept="5jKBG" id="7vKHTLu4BUn" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
                      <node concept="3NFfHV" id="7vKHTLu4BUo" role="5jGum">
                        <node concept="3clFbS" id="7vKHTLu4BUp" role="2VODD2">
                          <node concept="3clFbF" id="7vKHTLu4BUq" role="3cqZAp">
                            <node concept="2OqwBi" id="7vKHTLu4BUr" role="3clFbG">
                              <node concept="30H73N" id="7vKHTLu4BUs" role="2Oq$k0" />
                              <node concept="3TrEf2" id="7vKHTLu4BUt" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:4IP40Bi2KaL" resolve="concept" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="7vKHTLu4DKb" role="lGtFl" />
                </node>
                <node concept="37vLTw" id="4nmoJNOAr1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nmoJNOAqY" resolve="builder" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="7vKHTLu4s6h" role="jxRDz">
      <node concept="1lLz0L" id="7vKHTLu4s6i" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Illegal child initializer in NodeBuilder" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2g69lt1AUA8">
    <property role="3GE5qa" value="container" />
    <property role="TrG5h" value="NodeBuilderNode_ClassifierType" />
    <node concept="3aamgX" id="2g69lt1AUA9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3r:7vKHTLu5SzY" resolve="NodeBuilderInitValueChild" />
      <node concept="gft3U" id="2g69lt1AUAd" role="1lVwrX">
        <node concept="3uibUv" id="2g69lt1AUAl" role="gfFT$">
          <ref role="3uigEE" to="6vmh:~SNodeBuilder" resolve="SNodeBuilder" />
        </node>
      </node>
      <node concept="30G5F_" id="2g69lt1B08a" role="30HLyM">
        <node concept="3clFbS" id="2g69lt1B08b" role="2VODD2">
          <node concept="3clFbF" id="2g69lt1B0c7" role="3cqZAp">
            <node concept="2OqwBi" id="2g69lt1B0Lr" role="3clFbG">
              <node concept="2OqwBi" id="2g69lt1B0oG" role="2Oq$k0">
                <node concept="30H73N" id="2g69lt1B0c6" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2g69lt1B0v$" role="2OqNvi">
                  <node concept="1xMEDy" id="2g69lt1B0vA" role="1xVPHs">
                    <node concept="chp4Y" id="2g69lt1B0xZ" role="ri$Ld">
                      <ref role="cht4Q" to="tp3r:4IP40Bi2$Et" resolve="NodeBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="2g69lt1B10d" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="2g69lt1BjpR" role="jxRDz">
      <node concept="1lLz0L" id="2g69lt1Bjqv" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="node builder used outside of supported container" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="6XhBjWIJ4YS">
    <property role="3GE5qa" value="container" />
    <property role="TrG5h" value="NodeBuilderExternalParameterType" />
    <node concept="3aamgX" id="6XhBjWIJ6V9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="gft3U" id="6XhBjWIJ7HX" role="1lVwrX">
        <node concept="3uibUv" id="6XhBjWIJ7J5" role="gfFT$">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="S4WnV2J8Do" role="lGtFl">
            <node concept="3NFfHV" id="S4WnV2J8Dq" role="3NFExx">
              <node concept="3clFbS" id="S4WnV2J8Dr" role="2VODD2">
                <node concept="3clFbF" id="S4WnV2J8WT" role="3cqZAp">
                  <node concept="2OqwBi" id="S4WnV2JauE" role="3clFbG">
                    <node concept="2OqwBi" id="S4WnV2J9PS" role="2Oq$k0">
                      <node concept="2OqwBi" id="S4WnV2J9iS" role="2Oq$k0">
                        <node concept="2OqwBi" id="S4WnV2J8Xo" role="2Oq$k0">
                          <node concept="30H73N" id="S4WnV2J8WO" role="2Oq$k0" />
                          <node concept="2Xjw5R" id="S4WnV2J8Yp" role="2OqNvi">
                            <node concept="1xMEDy" id="S4WnV2J8Yr" role="1xVPHs">
                              <node concept="chp4Y" id="S4WnV2J99j" role="ri$Ld">
                                <ref role="cht4Q" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="S4WnV2J9rT" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3r:4IP40Bi2KcA" resolve="property" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="S4WnV2Jad7" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORg6i" role="2OqNvi">
                      <ref role="37wK5l" to="tpcn:hEwI9ym" resolve="toBaseLanguageType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="6XhBjWIJ7iQ" role="30HLyM">
        <node concept="3clFbS" id="6XhBjWIJ7iR" role="2VODD2">
          <node concept="3clFbF" id="6XhBjWIJ7mM" role="3cqZAp">
            <node concept="22lmx$" id="PFUECvRgTF" role="3clFbG">
              <node concept="22lmx$" id="PFUECvRgTG" role="3uHU7B">
                <node concept="2OqwBi" id="PFUECvRgTH" role="3uHU7B">
                  <node concept="30H73N" id="6XhBjWIJ7w0" role="2Oq$k0" />
                  <node concept="1BlSNk" id="PFUECvRgTJ" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                    <ref role="1Bn3mz" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                  </node>
                </node>
                <node concept="2OqwBi" id="PFUECvRgTK" role="3uHU7w">
                  <node concept="30H73N" id="6XhBjWIJ7Ce" role="2Oq$k0" />
                  <node concept="1BlSNk" id="PFUECvRgTM" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:4IP40Bi2Kc_" resolve="NodeBuilderInitProperty" />
                    <ref role="1Bn3mz" to="tp3r:1o$2SUuutyh" resolve="initValue" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="PFUECvRgTN" role="3uHU7w">
                <node concept="30H73N" id="6XhBjWIJ7GR" role="2Oq$k0" />
                <node concept="1BlSNk" id="PFUECvRgTP" role="2OqNvi">
                  <ref role="1BmUXE" to="tp3r:63LzO9stH8q" resolve="NodeBuilderPropertyExpression" />
                  <ref role="1Bn3mz" to="tp3r:63LzO9stH8r" resolve="expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="6XhBjWIJ8hO" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="gft3U" id="6XhBjWIJ8hP" role="1lVwrX">
        <node concept="3uibUv" id="6XhBjWIJ90W" role="gfFT$">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="6XhBjWIJ915" role="11_B2D">
            <node concept="3uibUv" id="6XhBjWIJ91d" role="3qUE_r">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="6XhBjWIJ8hR" role="30HLyM">
        <node concept="3clFbS" id="6XhBjWIJ8hS" role="2VODD2">
          <node concept="3clFbF" id="6XhBjWIJ8hT" role="3cqZAp">
            <node concept="1Wc70l" id="PFUECvRgSO" role="3clFbG">
              <node concept="3fqX7Q" id="PFUECvRgSP" role="3uHU7w">
                <node concept="2OqwBi" id="PFUECvRgSQ" role="3fr31v">
                  <node concept="2OqwBi" id="PFUECvRgSR" role="2Oq$k0">
                    <node concept="1PxgMI" id="PFUECvRgSS" role="2Oq$k0">
                      <node concept="chp4Y" id="PFUECvRgST" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                      </node>
                      <node concept="2OqwBi" id="PFUECvRgSU" role="1m5AlR">
                        <node concept="2OqwBi" id="PFUECvRgSV" role="2Oq$k0">
                          <node concept="30H73N" id="6XhBjWIJ8Vm" role="2Oq$k0" />
                          <node concept="1mfA1w" id="PFUECvRgSX" role="2OqNvi" />
                        </node>
                        <node concept="1mfA1w" id="PFUECvRgSY" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="PFUECvRgSZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORg6k" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="PFUECvRgT1" role="3uHU7B">
                <node concept="2OqwBi" id="PFUECvRgT2" role="3uHU7B">
                  <node concept="30H73N" id="6XhBjWIJ8Cr" role="2Oq$k0" />
                  <node concept="1BlSNk" id="PFUECvRgT4" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    <ref role="1Bn3mz" to="tp3r:76efOMRCLcK" resolve="expression" />
                  </node>
                </node>
                <node concept="1eOMI4" id="PFUECvRgT5" role="3uHU7w">
                  <node concept="22lmx$" id="PFUECvRgT6" role="1eOMHV">
                    <node concept="2OqwBi" id="PFUECvRgT7" role="3uHU7B">
                      <node concept="2OqwBi" id="PFUECvRgT8" role="2Oq$k0">
                        <node concept="30H73N" id="6XhBjWIJ8Hs" role="2Oq$k0" />
                        <node concept="1mfA1w" id="PFUECvRgTa" role="2OqNvi" />
                      </node>
                      <node concept="1BlSNk" id="PFUECvRgTb" role="2OqNvi">
                        <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                        <ref role="1Bn3mz" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="PFUECvRgTc" role="3uHU7w">
                      <node concept="2OqwBi" id="PFUECvRgTd" role="2Oq$k0">
                        <node concept="30H73N" id="6XhBjWIJ8Q9" role="2Oq$k0" />
                        <node concept="1mfA1w" id="PFUECvRgTf" role="2OqNvi" />
                      </node>
                      <node concept="1BlSNk" id="PFUECvRgTg" role="2OqNvi">
                        <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                        <ref role="1Bn3mz" to="tp3r:1o$2SUuutG3" resolve="initValue" />
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
    <node concept="3aamgX" id="6XhBjWIJ91i" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="gft3U" id="6XhBjWIJ91j" role="1lVwrX">
        <node concept="3uibUv" id="6XhBjWIJ91k" role="gfFT$">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="30G5F_" id="6XhBjWIJ91n" role="30HLyM">
        <node concept="3clFbS" id="6XhBjWIJ91o" role="2VODD2">
          <node concept="3clFbF" id="6XhBjWIJ91p" role="3cqZAp">
            <node concept="22lmx$" id="PFUECvRgRM" role="3clFbG">
              <node concept="1Wc70l" id="PFUECvRgRN" role="3uHU7B">
                <node concept="1Wc70l" id="PFUECvRgRO" role="3uHU7B">
                  <node concept="2OqwBi" id="PFUECvRgRP" role="3uHU7B">
                    <node concept="30H73N" id="6XhBjWIJabM" role="2Oq$k0" />
                    <node concept="1BlSNk" id="PFUECvRgRR" role="2OqNvi">
                      <ref role="1BmUXE" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                      <ref role="1Bn3mz" to="tp3r:76efOMRCLcK" resolve="expression" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="PFUECvRgRS" role="3uHU7w">
                    <node concept="22lmx$" id="PFUECvRgRT" role="1eOMHV">
                      <node concept="2OqwBi" id="PFUECvRgRU" role="3uHU7B">
                        <node concept="2OqwBi" id="PFUECvRgRV" role="2Oq$k0">
                          <node concept="30H73N" id="6XhBjWIJaDB" role="2Oq$k0" />
                          <node concept="1mfA1w" id="PFUECvRgRX" role="2OqNvi" />
                        </node>
                        <node concept="1BlSNk" id="PFUECvRgRY" role="2OqNvi">
                          <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                          <ref role="1Bn3mz" to="tp3r:4IP40Bi2KcQ" resolve="expression" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="PFUECvRgRZ" role="3uHU7w">
                        <node concept="2OqwBi" id="PFUECvRgS0" role="2Oq$k0">
                          <node concept="30H73N" id="6XhBjWIJah5" role="2Oq$k0" />
                          <node concept="1mfA1w" id="PFUECvRgS2" role="2OqNvi" />
                        </node>
                        <node concept="1BlSNk" id="PFUECvRgS3" role="2OqNvi">
                          <ref role="1BmUXE" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                          <ref role="1Bn3mz" to="tp3r:1o$2SUuutG3" resolve="initValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="PFUECvRgS4" role="3uHU7w">
                  <node concept="2OqwBi" id="PFUECvRgS5" role="2Oq$k0">
                    <node concept="1PxgMI" id="PFUECvRgS6" role="2Oq$k0">
                      <node concept="chp4Y" id="PFUECvRgS7" role="3oSUPX">
                        <ref role="cht4Q" to="tp3r:4IP40Bi38Sq" resolve="NodeBuilderInitLink" />
                      </node>
                      <node concept="2OqwBi" id="PFUECvRgS8" role="1m5AlR">
                        <node concept="2OqwBi" id="PFUECvRgS9" role="2Oq$k0">
                          <node concept="30H73N" id="6XhBjWIJaiS" role="2Oq$k0" />
                          <node concept="1mfA1w" id="PFUECvRgSb" role="2OqNvi" />
                        </node>
                        <node concept="1mfA1w" id="PFUECvRgSc" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="PFUECvRgSd" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3r:4IP40Bi38Ss" resolve="link" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORg6m" role="2OqNvi">
                    <ref role="37wK5l" to="tpcn:hEwIfAt" resolve="isSingular" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="PFUECvRgSf" role="3uHU7w">
                <node concept="2OqwBi" id="PFUECvRgSg" role="3uHU7B">
                  <node concept="30H73N" id="6XhBjWIJal4" role="2Oq$k0" />
                  <node concept="1BlSNk" id="PFUECvRgSi" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:76efOMRCLcI" resolve="NodeBuilderExpression" />
                    <ref role="1Bn3mz" to="tp3r:76efOMRCLcK" resolve="expression" />
                  </node>
                </node>
                <node concept="2OqwBi" id="PFUECvRgSj" role="3uHU7w">
                  <node concept="2OqwBi" id="PFUECvRgSk" role="2Oq$k0">
                    <node concept="30H73N" id="6XhBjWIJaJ_" role="2Oq$k0" />
                    <node concept="1mfA1w" id="PFUECvRgSm" role="2OqNvi" />
                  </node>
                  <node concept="1BlSNk" id="PFUECvRgSn" role="2OqNvi">
                    <ref role="1BmUXE" to="tp3r:76efOMRCHWM" resolve="NodeBuilderList" />
                    <ref role="1Bn3mz" to="tp3r:76efOMRCHWN" resolve="nodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1WT1RVIBX0T">
    <property role="TrG5h" value="nodeBuilder" />
    <node concept="1N15co" id="1WT1RVIBXqE" role="1s_3oS">
      <property role="TrG5h" value="quotation" />
      <node concept="3Tqbb2" id="1WT1RVIBXCG" role="1N15GL">
        <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
      </node>
    </node>
    <node concept="9aQIb" id="1WT1RVICTyc" role="13RCb5">
      <node concept="3clFbS" id="1WT1RVICTyd" role="9aQI4">
        <node concept="3cpWs8" id="1WT1RVIE4Gm" role="3cqZAp">
          <node concept="3cpWsn" id="1WT1RVIE4Gp" role="3cpWs9">
            <property role="TrG5h" value="expr" />
            <node concept="3uibUv" id="1WT1RVIE4Gr" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1WT1RVIDPnv" role="3cqZAp">
          <node concept="3cpWsn" id="1WT1RVIDPnw" role="3cpWs9">
            <property role="TrG5h" value="_node_" />
            <node concept="3uibUv" id="1WT1RVIDPnx" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1WT1RVIDWCs" role="3cqZAp">
          <node concept="3cpWsn" id="1WT1RVIDWCt" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="1WT1RVIDWCu" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1WT1RVIDTDI" role="3cqZAp" />
        <node concept="3cpWs8" id="1WT1RVICTIL" role="3cqZAp">
          <node concept="3cpWsn" id="1WT1RVICTIM" role="3cpWs9">
            <property role="TrG5h" value="nb" />
            <node concept="3uibUv" id="1WT1RVICTIN" role="1tU5fm">
              <ref role="3uigEE" to="6vmh:~SNodeBuilder" resolve="SNodeBuilder" />
            </node>
            <node concept="2OqwBi" id="1WT1RVICTIO" role="33vP2m">
              <node concept="2ShNRf" id="1WT1RVICTIP" role="2Oq$k0">
                <node concept="1pGfFk" id="1WT1RVICTIQ" role="2ShVmc">
                  <ref role="37wK5l" to="6vmh:~SNodeBuilder.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodeBuilder" />
                  <node concept="10Nm6u" id="1WT1RVICTIR" role="37wK5m">
                    <node concept="1W57fq" id="1WT1RVICTIS" role="lGtFl">
                      <node concept="3IZrLx" id="1WT1RVICTIT" role="3IZSJc">
                        <node concept="3clFbS" id="1WT1RVICTIU" role="2VODD2">
                          <node concept="3clFbF" id="1WT1RVICTIV" role="3cqZAp">
                            <node concept="1Wc70l" id="1WT1RVICTIW" role="3clFbG">
                              <node concept="2OqwBi" id="1WT1RVICTIX" role="3uHU7B">
                                <node concept="3w_OXm" id="1WT1RVICTIY" role="2OqNvi" />
                                <node concept="2OqwBi" id="1WT1RVICTIZ" role="2Oq$k0">
                                  <node concept="3TrEf2" id="1WT1RVICTJ0" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                                  </node>
                                  <node concept="2OqwBi" id="1WT1RVIDKRT" role="2Oq$k0">
                                    <node concept="1iwH7S" id="1WT1RVIDKRU" role="2Oq$k0" />
                                    <node concept="3cR$yn" id="1WT1RVIDKRV" role="2OqNvi">
                                      <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1WT1RVICTJ4" role="3uHU7w">
                                <node concept="2OqwBi" id="1WT1RVICTJ5" role="2Oq$k0">
                                  <node concept="3TrEf2" id="1WT1RVICTJ6" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                  </node>
                                  <node concept="2OqwBi" id="1WT1RVIDL1$" role="2Oq$k0">
                                    <node concept="1iwH7S" id="1WT1RVIDL1_" role="2Oq$k0" />
                                    <node concept="3cR$yn" id="1WT1RVIDL1A" role="2OqNvi">
                                      <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="1WT1RVICTJa" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gft3U" id="1WT1RVICTJb" role="UU_$l">
                        <node concept="10QFUN" id="1WT1RVICTJc" role="gfFT$">
                          <node concept="3uibUv" id="1WT1RVICTJd" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                          <node concept="37vLTw" id="1WT1RVICTJe" role="10QFUP">
                            <ref role="3cqZAo" node="1WT1RVIE4Gp" resolve="expr" />
                            <node concept="1ZhdrF" id="1WT1RVICTJf" role="lGtFl">
                              <property role="2qtEX8" value="variableDeclaration" />
                              <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                              <node concept="3$xsQk" id="1WT1RVICTJg" role="3$ytzL">
                                <node concept="3clFbS" id="1WT1RVICTJh" role="2VODD2">
                                  <node concept="3cpWs8" id="1WT1RVICTJi" role="3cqZAp">
                                    <node concept="3cpWsn" id="1WT1RVICTJj" role="3cpWs9">
                                      <property role="TrG5h" value="modelToCreate_old" />
                                      <node concept="3Tqbb2" id="1WT1RVICTJk" role="1tU5fm">
                                        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                                      </node>
                                      <node concept="3K4zz7" id="1WT1RVICTJl" role="33vP2m">
                                        <node concept="2OqwBi" id="1WT1RVICTJm" role="3K4Cdx">
                                          <node concept="2OqwBi" id="1WT1RVICTJn" role="2Oq$k0">
                                            <node concept="3TrEf2" id="1WT1RVICTJo" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                                            </node>
                                            <node concept="2OqwBi" id="1WT1RVIDL9N" role="2Oq$k0">
                                              <node concept="1iwH7S" id="1WT1RVIDL9O" role="2Oq$k0" />
                                              <node concept="3cR$yn" id="1WT1RVIDL9P" role="2OqNvi">
                                                <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3x8VRR" id="1WT1RVICTJs" role="2OqNvi" />
                                        </node>
                                        <node concept="2OqwBi" id="1WT1RVICTJt" role="3K4E3e">
                                          <node concept="3TrEf2" id="1WT1RVICTJu" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:hqc44pr" resolve="modelToCreate_old" />
                                          </node>
                                          <node concept="2OqwBi" id="1WT1RVIDLN_" role="2Oq$k0">
                                            <node concept="1iwH7S" id="1WT1RVIDLNA" role="2Oq$k0" />
                                            <node concept="3cR$yn" id="1WT1RVIDLNB" role="2OqNvi">
                                              <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="1WT1RVICTJy" role="3K4GZi">
                                          <node concept="2OqwBi" id="1WT1RVICTJz" role="2Oq$k0">
                                            <node concept="3TrEf2" id="1WT1RVICTJ$" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                            </node>
                                            <node concept="2OqwBi" id="1WT1RVIDLVc" role="2Oq$k0">
                                              <node concept="1iwH7S" id="1WT1RVIDLVd" role="2Oq$k0" />
                                              <node concept="3cR$yn" id="1WT1RVIDLVe" role="2OqNvi">
                                                <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="1WT1RVICTJC" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1J" resolve="modelToCreate" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1WT1RVICTJD" role="3cqZAp">
                                    <node concept="2OqwBi" id="1WT1RVICTJE" role="3clFbG">
                                      <node concept="1iwH7S" id="1WT1RVICTJF" role="2Oq$k0" />
                                      <node concept="1iwH70" id="1WT1RVICTJG" role="2OqNvi">
                                        <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                                        <node concept="37vLTw" id="1WT1RVICTJH" role="1iwH7V">
                                          <ref role="3cqZAo" node="1WT1RVICTJj" resolve="modelToCreate_old" />
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
                  <node concept="10Nm6u" id="1WT1RVICTJI" role="37wK5m">
                    <node concept="1W57fq" id="1WT1RVICTJJ" role="lGtFl">
                      <node concept="3IZrLx" id="1WT1RVICTJK" role="3IZSJc">
                        <node concept="3clFbS" id="1WT1RVICTJL" role="2VODD2">
                          <node concept="3clFbF" id="1WT1RVICTJM" role="3cqZAp">
                            <node concept="22lmx$" id="1WT1RVICTJN" role="3clFbG">
                              <node concept="3y3z36" id="1WT1RVICTJO" role="3uHU7B">
                                <node concept="2OqwBi" id="1WT1RVICTJP" role="3uHU7B">
                                  <node concept="3TrEf2" id="1WT1RVICTJT" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3r:hqc44pq" resolve="quotedNode" />
                                  </node>
                                  <node concept="2OqwBi" id="1WT1RVIDMOZ" role="2Oq$k0">
                                    <node concept="1iwH7S" id="1WT1RVIDMP0" role="2Oq$k0" />
                                    <node concept="3cR$yn" id="1WT1RVIDMP1" role="2OqNvi">
                                      <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="30H73N" id="1WT1RVIDN5W" role="3uHU7w" />
                              </node>
                              <node concept="1Wc70l" id="1WT1RVICTJX" role="3uHU7w">
                                <node concept="2OqwBi" id="1WT1RVICTJY" role="3uHU7w">
                                  <node concept="3w_OXm" id="1WT1RVICTJZ" role="2OqNvi" />
                                  <node concept="2OqwBi" id="1WT1RVICTK0" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1WT1RVICTK1" role="2Oq$k0">
                                      <node concept="3TrEf2" id="1WT1RVICTK2" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                      </node>
                                      <node concept="2OqwBi" id="1WT1RVIDMbo" role="2Oq$k0">
                                        <node concept="1iwH7S" id="1WT1RVIDMbp" role="2Oq$k0" />
                                        <node concept="3cR$yn" id="1WT1RVIDMbq" role="2OqNvi">
                                          <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="1WT1RVICTK6" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1WT1RVICTK7" role="3uHU7B">
                                  <node concept="3w_OXm" id="1WT1RVICTK8" role="2OqNvi" />
                                  <node concept="2OqwBi" id="1WT1RVICTK9" role="2Oq$k0">
                                    <node concept="3TrEf2" id="1WT1RVICTKa" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                                    </node>
                                    <node concept="2OqwBi" id="1WT1RVIDM3l" role="2Oq$k0">
                                      <node concept="1iwH7S" id="1WT1RVIDM3m" role="2Oq$k0" />
                                      <node concept="3cR$yn" id="1WT1RVIDM3n" role="2OqNvi">
                                        <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gft3U" id="1WT1RVICTKe" role="UU_$l">
                        <node concept="10QFUN" id="1WT1RVICTKf" role="gfFT$">
                          <node concept="3uibUv" id="1WT1RVICTKg" role="10QFUM">
                            <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                          </node>
                          <node concept="37vLTw" id="1WT1RVICTKh" role="10QFUP">
                            <ref role="3cqZAo" node="1WT1RVIE4Gp" resolve="expr" />
                            <node concept="1ZhdrF" id="1WT1RVICTKi" role="lGtFl">
                              <property role="2qtEX8" value="variableDeclaration" />
                              <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                              <node concept="3$xsQk" id="1WT1RVICTKj" role="3$ytzL">
                                <node concept="3clFbS" id="1WT1RVICTKk" role="2VODD2">
                                  <node concept="3cpWs8" id="1WT1RVICTKl" role="3cqZAp">
                                    <node concept="3cpWsn" id="1WT1RVICTKm" role="3cpWs9">
                                      <property role="TrG5h" value="nodeId" />
                                      <node concept="3Tqbb2" id="1WT1RVICTKn" role="1tU5fm">
                                        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                                      </node>
                                      <node concept="3K4zz7" id="1WT1RVICTKo" role="33vP2m">
                                        <node concept="2OqwBi" id="1WT1RVICTKp" role="3K4Cdx">
                                          <node concept="2OqwBi" id="1WT1RVICTKq" role="2Oq$k0">
                                            <node concept="3TrEf2" id="1WT1RVICTKr" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                                            </node>
                                            <node concept="2OqwBi" id="1WT1RVIDNTf" role="2Oq$k0">
                                              <node concept="1iwH7S" id="1WT1RVIDNTg" role="2Oq$k0" />
                                              <node concept="3cR$yn" id="1WT1RVIDNTh" role="2OqNvi">
                                                <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3x8VRR" id="1WT1RVICTKv" role="2OqNvi" />
                                        </node>
                                        <node concept="2OqwBi" id="1WT1RVICTKw" role="3K4E3e">
                                          <node concept="3TrEf2" id="1WT1RVICTKx" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:2KyHUfrw9K5" resolve="nodeId_old" />
                                          </node>
                                          <node concept="2OqwBi" id="1WT1RVIDN7u" role="2Oq$k0">
                                            <node concept="1iwH7S" id="1WT1RVIDN7v" role="2Oq$k0" />
                                            <node concept="3cR$yn" id="1WT1RVIDN7w" role="2OqNvi">
                                              <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="1WT1RVICTK_" role="3K4GZi">
                                          <node concept="2OqwBi" id="1WT1RVICTKA" role="2Oq$k0">
                                            <node concept="3TrEf2" id="1WT1RVICTKB" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp3r:2S6ZQ64QxqC" resolve="modelToCreate" />
                                            </node>
                                            <node concept="2OqwBi" id="1WT1RVIDNLe" role="2Oq$k0">
                                              <node concept="1iwH7S" id="1WT1RVIDNLf" role="2Oq$k0" />
                                              <node concept="3cR$yn" id="1WT1RVIDNLg" role="2OqNvi">
                                                <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="1WT1RVICTKF" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp3r:2S6ZQ64Qx1K" resolve="nodeId" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="1WT1RVICTKG" role="3cqZAp">
                                    <node concept="2OqwBi" id="1WT1RVICTKH" role="3clFbG">
                                      <node concept="1iwH7S" id="1WT1RVICTKI" role="2Oq$k0" />
                                      <node concept="1iwH70" id="1WT1RVICTKJ" role="2OqNvi">
                                        <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                                        <node concept="37vLTw" id="1WT1RVICTKK" role="1iwH7V">
                                          <ref role="3cqZAo" node="1WT1RVICTKm" resolve="nodeId" />
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
              <node concept="liA8E" id="1WT1RVICTKL" role="2OqNvi">
                <ref role="37wK5l" to="6vmh:~SNodeBuilder.init(org.jetbrains.mps.openapi.language.SConcept)" resolve="init" />
                <node concept="10Nm6u" id="1WT1RVICTKM" role="37wK5m">
                  <node concept="1sPUBX" id="1WT1RVICTKN" role="lGtFl">
                    <ref role="v9R2y" to="tp27:5ZE7FBZ0tYc" resolve="switch_ConceptIdentity_SConcept" />
                    <node concept="3NFfHV" id="1WT1RVICTKO" role="1sPUBK">
                      <node concept="3clFbS" id="1WT1RVICTKP" role="2VODD2">
                        <node concept="3cpWs8" id="1WT1RVICTKQ" role="3cqZAp">
                          <node concept="3cpWsn" id="1WT1RVICTKR" role="3cpWs9">
                            <property role="TrG5h" value="originalNode" />
                            <node concept="3Tqbb2" id="1WT1RVICTKS" role="1tU5fm" />
                            <node concept="2OqwBi" id="1WT1RVICTKX" role="33vP2m">
                              <node concept="1iwH7S" id="1WT1RVICTKY" role="2Oq$k0" />
                              <node concept="12$id9" id="3IQV2NHMain" role="2OqNvi">
                                <node concept="30H73N" id="3IQV2NHMaRb" role="12$y8L" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1WT1RVICTL1" role="3cqZAp">
                          <node concept="3clFbS" id="1WT1RVICTL2" role="3clFbx">
                            <node concept="3clFbF" id="1WT1RVICTL3" role="3cqZAp">
                              <node concept="37vLTI" id="1WT1RVICTL4" role="3clFbG">
                                <node concept="30H73N" id="1WT1RVICTL5" role="37vLTx" />
                                <node concept="37vLTw" id="1WT1RVICTL6" role="37vLTJ">
                                  <ref role="3cqZAo" node="1WT1RVICTKR" resolve="originalNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1WT1RVICTL7" role="3clFbw">
                            <node concept="10Nm6u" id="1WT1RVICTL8" role="3uHU7w" />
                            <node concept="37vLTw" id="1WT1RVICTL9" role="3uHU7B">
                              <ref role="3cqZAo" node="1WT1RVICTKR" resolve="originalNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1WT1RVICTLa" role="3cqZAp">
                          <node concept="3cpWsn" id="1WT1RVICTLb" role="3cpWs9">
                            <property role="TrG5h" value="c" />
                            <node concept="3Tqbb2" id="1WT1RVICTLc" role="1tU5fm">
                              <ref role="ehGHo" to="tp25:5ZE7FBYYQZB" resolve="ConceptId" />
                            </node>
                            <node concept="2ShNRf" id="1WT1RVICTLd" role="33vP2m">
                              <node concept="3zrR0B" id="1WT1RVICTLe" role="2ShVmc">
                                <node concept="3Tqbb2" id="1WT1RVICTLf" role="3zrR0E">
                                  <ref role="ehGHo" to="tp25:5ZE7FBYYQZB" resolve="ConceptId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1WT1RVICTLg" role="3cqZAp">
                          <node concept="2OqwBi" id="1WT1RVICTLh" role="3clFbG">
                            <node concept="37vLTw" id="1WT1RVICTLi" role="2Oq$k0">
                              <ref role="3cqZAo" node="1WT1RVICTLb" resolve="c" />
                            </node>
                            <node concept="3zqWPK" id="70OdufORg6o" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:5ZE7FBYYR6j" resolve="setConcept" />
                              <node concept="2OqwBi" id="70OdufORg6q" role="37wK5m">
                                <node concept="37vLTw" id="70OdufORg6r" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1WT1RVICTKR" resolve="originalNode" />
                                </node>
                                <node concept="2yIwOk" id="70OdufORg6s" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1WT1RVICTLn" role="3cqZAp">
                          <node concept="37vLTw" id="1WT1RVICTLo" role="3cqZAk">
                            <ref role="3cqZAo" node="1WT1RVICTLb" resolve="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17Uvod" id="1WT1RVICTLp" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="1WT1RVICTLq" role="3zH0cK">
                <node concept="3clFbS" id="1WT1RVICTLr" role="2VODD2">
                  <node concept="3clFbF" id="1WT1RVICTLs" role="3cqZAp">
                    <node concept="2OqwBi" id="1WT1RVICTLt" role="3clFbG">
                      <node concept="1iwH7S" id="1WT1RVICTLu" role="2Oq$k0" />
                      <node concept="32eq0B" id="1WT1RVICTLv" role="2OqNvi">
                        <property role="32f$Ya" value="true" />
                        <node concept="Xl_RD" id="1WT1RVICTLz" role="32eq0w">
                          <property role="Xl_RC" value="nb" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVIDKg1" role="32eq0x">
                          <node concept="1iwH7S" id="1WT1RVIDKg2" role="2Oq$k0" />
                          <node concept="3cR$yn" id="1WT1RVIDKg3" role="2OqNvi">
                            <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDjt$" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="1WT1RVICTL$" role="3cqZAp">
          <node concept="37vLTI" id="1WT1RVICTL_" role="3clFbG">
            <node concept="2OqwBi" id="1WT1RVICTLA" role="37vLTx">
              <node concept="37vLTw" id="1WT1RVICTLB" role="2Oq$k0">
                <ref role="3cqZAo" node="1WT1RVICTIM" resolve="nb" />
              </node>
              <node concept="liA8E" id="1WT1RVICTLC" role="2OqNvi">
                <ref role="37wK5l" to="6vmh:~SNodeBuilder.getResult()" resolve="getResult" />
              </node>
            </node>
            <node concept="37vLTw" id="1WT1RVICTLD" role="37vLTJ">
              <ref role="3cqZAo" node="1WT1RVIDPnw" resolve="_node_" />
              <node concept="1ZhdrF" id="1WT1RVICTLE" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="1WT1RVICTLF" role="3$ytzL">
                  <node concept="3clFbS" id="1WT1RVICTLG" role="2VODD2">
                    <node concept="3clFbF" id="1WT1RVICTLH" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTLI" role="3clFbG">
                        <node concept="1iwH7S" id="1WT1RVICTLJ" role="2Oq$k0" />
                        <node concept="1iwH70" id="1WT1RVICTLK" role="2OqNvi">
                          <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                          <node concept="30H73N" id="1WT1RVIDOz6" role="1iwH7V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDl6R" role="lGtFl" />
        </node>
        <node concept="3clFbF" id="1WT1RVICTLO" role="3cqZAp">
          <node concept="2OqwBi" id="1WT1RVICTLP" role="3clFbG">
            <node concept="37vLTw" id="1WT1RVICTLQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1WT1RVICTIM" resolve="nb" />
            </node>
            <node concept="liA8E" id="1WT1RVICTLR" role="2OqNvi">
              <ref role="37wK5l" to="6vmh:~SNodeBuilder.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="10Nm6u" id="1WT1RVICTLS" role="37wK5m">
                <node concept="5jKBG" id="1WT1RVICTLT" role="lGtFl">
                  <ref role="v9R2y" to="tp27:5ZE7FBZ0xn2" resolve="reduce_PropertyId_SProperty" />
                  <node concept="3NFfHV" id="1WT1RVICTLU" role="5jGum">
                    <node concept="3clFbS" id="1WT1RVICTLV" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTLW" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTLX" role="3clFbG">
                          <node concept="30H73N" id="1WT1RVICTLY" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1WT1RVICTLZ" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:1pFEQ4ZrQcU" resolve="propertyIdentity" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1WT1RVICTM0" role="37wK5m">
                <property role="Xl_RC" value="propertyValue" />
                <node concept="17Uvod" id="1WT1RVICTM1" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1WT1RVICTM2" role="3zH0cK">
                    <node concept="3clFbS" id="1WT1RVICTM3" role="2VODD2">
                      <node concept="3cpWs8" id="1WT1RVICTM4" role="3cqZAp">
                        <node concept="3cpWsn" id="1WT1RVICTM5" role="3cpWs9">
                          <property role="TrG5h" value="value" />
                          <node concept="3uibUv" id="1WT1RVICTM6" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="2OqwBi" id="1WT1RVICTM7" role="33vP2m">
                            <node concept="30H73N" id="1WT1RVICTM8" role="2Oq$k0" />
                            <node concept="3TrcHB" id="1WT1RVICTM9" role="2OqNvi">
                              <ref role="3TsBF5" to="tp3r:7hIo0WbQAvT" resolve="propertyValue" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1WT1RVICTMa" role="3cqZAp">
                        <node concept="2YIFZM" id="1WT1RVICTMb" role="3cqZAk">
                          <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                          <ref role="37wK5l" to="18ew:~NameUtil.escapeString(java.lang.String)" resolve="escapeString" />
                          <node concept="37vLTw" id="1WT1RVICTMc" role="37wK5m">
                            <ref role="3cqZAo" node="1WT1RVICTM5" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDlOY" role="lGtFl" />
          <node concept="1WS0z7" id="1WT1RVICTMd" role="lGtFl">
            <node concept="3JmXsc" id="1WT1RVICTMe" role="3Jn$fo">
              <node concept="3clFbS" id="1WT1RVICTMf" role="2VODD2">
                <node concept="3cpWs8" id="1WT1RVICTMg" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTMh" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <property role="3TUv4t" value="true" />
                    <node concept="_YKpA" id="1WT1RVICTMi" role="1tU5fm">
                      <node concept="3Tqbb2" id="1WT1RVICTMj" role="_ZDj9">
                        <ref role="ehGHo" to="tp3r:7hIo0WbQAv7" resolve="GeneratorInternal_PropertyDescriptor" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1WT1RVICTMk" role="33vP2m">
                      <node concept="Tc6Ow" id="1WT1RVICTMl" role="2ShVmc">
                        <node concept="3Tqbb2" id="1WT1RVICTMm" role="HW$YZ">
                          <ref role="ehGHo" to="tp3r:7hIo0WbQAv7" resolve="GeneratorInternal_PropertyDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="1WT1RVICTMn" role="3cqZAp">
                  <node concept="2OqwBi" id="1WT1RVICTMo" role="2GsD0m">
                    <node concept="liA8E" id="1WT1RVICTMp" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
                    </node>
                    <node concept="2JrnkZ" id="1WT1RVICTMq" role="2Oq$k0">
                      <node concept="30H73N" id="1WT1RVICTMr" role="2JrQYb" />
                    </node>
                  </node>
                  <node concept="2GrKxI" id="1WT1RVICTMs" role="2Gsz3X">
                    <property role="TrG5h" value="property" />
                  </node>
                  <node concept="3clFbS" id="1WT1RVICTMt" role="2LFqv$">
                    <node concept="3clFbJ" id="1WT1RVICTMu" role="3cqZAp">
                      <node concept="3clFbS" id="1WT1RVICTMv" role="3clFbx">
                        <node concept="3N13vt" id="1WT1RVICTMw" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="1WT1RVICTMx" role="3clFbw">
                        <node concept="2OqwBi" id="1WT1RVICTMy" role="2Oq$k0">
                          <node concept="30H73N" id="1WT1RVICTMz" role="2Oq$k0" />
                          <node concept="3CFZ6_" id="1WT1RVICTM$" role="2OqNvi">
                            <node concept="3CFTII" id="1WT1RVICTM_" role="3CFYIz">
                              <ref role="3CFTIH" to="tp3r:hqEMmm7" resolve="PropertyAntiquotation" />
                              <node concept="25Kdxt" id="1WT1RVICTMA" role="3CFTIG">
                                <node concept="2GrUjf" id="1WT1RVICTMB" role="25KhWn">
                                  <ref role="2Gs0qQ" node="1WT1RVICTMs" resolve="property" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3x8VRR" id="1WT1RVICTMC" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTMD" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTME" role="3cpWs9">
                        <property role="TrG5h" value="propertyNode" />
                        <node concept="3Tqbb2" id="1WT1RVICTMF" role="1tU5fm">
                          <ref role="ehGHo" to="tp3r:7hIo0WbQAv7" resolve="GeneratorInternal_PropertyDescriptor" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTMG" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTMH" role="2Oq$k0">
                            <node concept="1iwH7S" id="1WT1RVICTMI" role="2Oq$k0" />
                            <node concept="1FEO0x" id="1WT1RVICTMJ" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="1WT1RVICTMK" role="2OqNvi">
                            <ref role="I8UWU" to="tp3r:7hIo0WbQAv7" resolve="GeneratorInternal_PropertyDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTML" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTMM" role="3cpWs9">
                        <property role="TrG5h" value="pid" />
                        <node concept="3Tqbb2" id="1WT1RVICTMN" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTMO" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTMP" role="2Oq$k0">
                            <node concept="1iwH7S" id="1WT1RVICTMQ" role="2Oq$k0" />
                            <node concept="1FEO0x" id="1WT1RVICTMR" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="1WT1RVICTMS" role="2OqNvi">
                            <ref role="I8UWU" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTMT" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTMU" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTMV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTMM" resolve="pid" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORg6t" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:5ZE7FBYZ2jW" resolve="setProperty" />
                          <node concept="2GrUjf" id="70OdufORg6v" role="37wK5m">
                            <ref role="2Gs0qQ" node="1WT1RVICTMs" resolve="property" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTMY" role="3cqZAp">
                      <node concept="37vLTI" id="1WT1RVICTMZ" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTN0" role="37vLTx">
                          <ref role="3cqZAo" node="1WT1RVICTMM" resolve="pid" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTN1" role="37vLTJ">
                          <node concept="37vLTw" id="1WT1RVICTN2" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTME" resolve="propertyNode" />
                          </node>
                          <node concept="3TrEf2" id="1WT1RVICTN3" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:1pFEQ4ZrQcU" resolve="propertyIdentity" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTN4" role="3cqZAp">
                      <node concept="37vLTI" id="1WT1RVICTN5" role="3clFbG">
                        <node concept="2OqwBi" id="1WT1RVICTN6" role="37vLTJ">
                          <node concept="37vLTw" id="1WT1RVICTN7" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTME" resolve="propertyNode" />
                          </node>
                          <node concept="3TrcHB" id="1WT1RVICTN8" role="2OqNvi">
                            <ref role="3TsBF5" to="tp3r:7hIo0WbQAvT" resolve="propertyValue" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTN9" role="37vLTx">
                          <node concept="liA8E" id="1WT1RVICTNa" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                            <node concept="2GrUjf" id="1WT1RVICTNb" role="37wK5m">
                              <ref role="2Gs0qQ" node="1WT1RVICTMs" resolve="property" />
                            </node>
                          </node>
                          <node concept="2JrnkZ" id="1WT1RVICTNc" role="2Oq$k0">
                            <node concept="30H73N" id="1WT1RVICTNd" role="2JrQYb" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTNe" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTNf" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTNg" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTMh" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="1WT1RVICTNh" role="2OqNvi">
                          <node concept="37vLTw" id="1WT1RVICTNi" role="25WWJ7">
                            <ref role="3cqZAo" node="1WT1RVICTME" resolve="propertyNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1WT1RVICTNj" role="3cqZAp">
                  <node concept="37vLTw" id="1WT1RVICTNk" role="3cqZAk">
                    <ref role="3cqZAo" node="1WT1RVICTMh" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1WT1RVICTNl" role="3cqZAp">
          <node concept="raruj" id="1WT1RVIDmrK" role="lGtFl" />
          <node concept="1WS0z7" id="1WT1RVICTNm" role="lGtFl">
            <node concept="3JmXsc" id="1WT1RVICTNn" role="3Jn$fo">
              <node concept="3clFbS" id="1WT1RVICTNo" role="2VODD2">
                <node concept="3clFbF" id="1WT1RVICTNp" role="3cqZAp">
                  <node concept="2OqwBi" id="1WT1RVICTNq" role="3clFbG">
                    <node concept="2OqwBi" id="1WT1RVICTNr" role="2Oq$k0">
                      <node concept="2OqwBi" id="1WT1RVICTNs" role="2Oq$k0">
                        <node concept="30H73N" id="1WT1RVICTNt" role="2Oq$k0" />
                        <node concept="3CFZ6_" id="1WT1RVICTNu" role="2OqNvi">
                          <node concept="3CFTEB" id="1WT1RVICTNv" role="3CFYIz" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1WT1RVICTNw" role="2OqNvi">
                        <node concept="chp4Y" id="1WT1RVICTNx" role="v3oSu">
                          <ref role="cht4Q" to="tp3r:hqEMmm7" resolve="PropertyAntiquotation" />
                        </node>
                      </node>
                    </node>
                    <node concept="2S7cBI" id="1WT1RVICTNy" role="2OqNvi">
                      <node concept="1bVj0M" id="1WT1RVICTNz" role="23t8la">
                        <node concept="3clFbS" id="1WT1RVICTN$" role="1bW5cS">
                          <node concept="3clFbF" id="1WT1RVICTN_" role="3cqZAp">
                            <node concept="2OqwBi" id="1WT1RVICTNA" role="3clFbG">
                              <node concept="2OqwBi" id="1WT1RVICTNB" role="2Oq$k0">
                                <node concept="37vLTw" id="1WT1RVICTNC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5W7E4fV0Wqn" resolve="it" />
                                </node>
                                <node concept="3zqWPK" id="70OdufORg6w" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1WT1RVICTNE" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wqn" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wqo" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="1nlBCl" id="1WT1RVICTNH" role="2S7zOq">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="1WT1RVICTNI" role="3clFbG">
            <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
            <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.setPropertyValue(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty,java.lang.Object)" resolve="setPropertyValue" />
            <node concept="2JrnkZ" id="1WT1RVICTNJ" role="37wK5m">
              <node concept="37vLTw" id="1WT1RVICTNK" role="2JrQYb">
                <ref role="3cqZAo" node="1WT1RVIDPnw" resolve="_node_" />
                <node concept="1ZhdrF" id="1WT1RVICTNL" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1WT1RVICTNM" role="3$ytzL">
                    <node concept="3clFbS" id="1WT1RVICTNN" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTNO" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTNP" role="3clFbG">
                          <node concept="1iwH70" id="1WT1RVICTNQ" role="2OqNvi">
                            <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                            <node concept="$GB7w" id="1WT1RVICTNR" role="1iwH7V">
                              <property role="26SvY3" value="1jlY2aid0ut/inputNode" />
                            </node>
                          </node>
                          <node concept="1iwH7S" id="1WT1RVICTNS" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="1WT1RVICTNT" role="37wK5m">
              <node concept="5jKBG" id="1WT1RVICTNU" role="lGtFl">
                <ref role="v9R2y" to="tp27:5ZE7FBZ0xn2" resolve="reduce_PropertyId_SProperty" />
                <node concept="3NFfHV" id="1WT1RVICTNV" role="5jGum">
                  <node concept="3clFbS" id="1WT1RVICTNW" role="2VODD2">
                    <node concept="3cpWs8" id="1WT1RVICTNX" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTNY" role="3cpWs9">
                        <property role="TrG5h" value="pid" />
                        <node concept="3Tqbb2" id="1WT1RVICTNZ" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTO0" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTO1" role="2Oq$k0">
                            <node concept="1iwH7S" id="1WT1RVICTO2" role="2Oq$k0" />
                            <node concept="1FEO0x" id="1WT1RVICTO3" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="1WT1RVICTO4" role="2OqNvi">
                            <ref role="I8UWU" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTO5" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTO6" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTO7" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTNY" resolve="pid" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORg6y" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:5ZE7FBYZ2jW" resolve="setProperty" />
                          <node concept="2OqwBi" id="70OdufORg6$" role="37wK5m">
                            <node concept="30H73N" id="70OdufORg6_" role="2Oq$k0" />
                            <node concept="2qgKlT" id="70OdufORg6A" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1WT1RVICTOc" role="3cqZAp">
                      <node concept="37vLTw" id="1WT1RVICTOd" role="3cqZAk">
                        <ref role="3cqZAo" node="1WT1RVICTNY" resolve="pid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10QFUN" id="1WT1RVICTOe" role="37wK5m">
              <node concept="37vLTw" id="1WT1RVICTOf" role="10QFUP">
                <ref role="3cqZAo" node="1WT1RVIE4Gp" resolve="expr" />
                <node concept="1ZhdrF" id="1WT1RVICTOg" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1WT1RVICTOh" role="3$ytzL">
                    <node concept="3clFbS" id="1WT1RVICTOi" role="2VODD2">
                      <node concept="3cpWs6" id="1WT1RVICTOj" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTOk" role="3cqZAk">
                          <node concept="1iwH7S" id="1WT1RVICTOl" role="2Oq$k0" />
                          <node concept="1iwH70" id="1WT1RVICTOm" role="2OqNvi">
                            <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                            <node concept="2OqwBi" id="1WT1RVICTOn" role="1iwH7V">
                              <node concept="30H73N" id="1WT1RVICTOo" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1WT1RVICTOp" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17QB3L" id="1WT1RVICTOq" role="10QFUM">
                <node concept="29HgVG" id="1WT1RVICTOr" role="lGtFl">
                  <node concept="3NFfHV" id="1WT1RVICTOs" role="3NFExx">
                    <node concept="3clFbS" id="1WT1RVICTOt" role="2VODD2">
                      <node concept="3cpWs8" id="1WT1RVICTOu" role="3cqZAp">
                        <node concept="3cpWsn" id="1WT1RVICTOv" role="3cpWs9">
                          <property role="TrG5h" value="dataType" />
                          <node concept="3Tqbb2" id="1WT1RVICTOw" role="1tU5fm">
                            <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
                          </node>
                          <node concept="2OqwBi" id="1WT1RVICTOx" role="33vP2m">
                            <node concept="2OqwBi" id="1WT1RVICTOy" role="2Oq$k0">
                              <node concept="30H73N" id="1WT1RVICTOz" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORg6D" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:121FNPYBLc9" resolve="getPropertyDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="1WT1RVICTO_" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1WT1RVICTOA" role="3cqZAp">
                        <node concept="2YIFZM" id="1WT1RVICTOB" role="3clFbG">
                          <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
                          <ref role="37wK5l" to="tpeq:4uA70LEglme" resolve="datatypeBLType" />
                          <node concept="37vLTw" id="1WT1RVICTOC" role="37wK5m">
                            <ref role="3cqZAo" node="1WT1RVICTOv" resolve="dataType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="1WT1RVICTOD" role="lGtFl">
              <node concept="3IZrLx" id="1WT1RVICTOE" role="3IZSJc">
                <node concept="3clFbS" id="1WT1RVICTOF" role="2VODD2">
                  <node concept="3clFbF" id="1WT1RVICTOG" role="3cqZAp">
                    <node concept="2OqwBi" id="1WT1RVICTOH" role="3clFbG">
                      <node concept="3TrcHB" id="1WT1RVICTOI" role="2OqNvi">
                        <ref role="3TsBF5" to="tp3r:1SDkaf46SBG" resolve="stringValueMigrated" />
                      </node>
                      <node concept="30H73N" id="1WT1RVICTOJ" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gft3U" id="1WT1RVICTOK" role="UU_$l">
                <node concept="2YIFZM" id="1WT1RVICTOL" role="gfFT$">
                  <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.setProperty(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                  <node concept="2JrnkZ" id="1WT1RVICTOM" role="37wK5m">
                    <node concept="37vLTw" id="1WT1RVICTON" role="2JrQYb">
                      <ref role="3cqZAo" node="1WT1RVIDPnw" resolve="_node_" />
                      <node concept="1ZhdrF" id="1WT1RVICTOO" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="1WT1RVICTOP" role="3$ytzL">
                          <node concept="3clFbS" id="1WT1RVICTOQ" role="2VODD2">
                            <node concept="3clFbF" id="1WT1RVICTOR" role="3cqZAp">
                              <node concept="2OqwBi" id="1WT1RVICTOS" role="3clFbG">
                                <node concept="1iwH70" id="1WT1RVICTOT" role="2OqNvi">
                                  <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                                  <node concept="$GB7w" id="1WT1RVICTOU" role="1iwH7V">
                                    <property role="26SvY3" value="1jlY2aid0ut/inputNode" />
                                  </node>
                                </node>
                                <node concept="1iwH7S" id="1WT1RVICTOV" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1WT1RVICTOW" role="37wK5m">
                    <node concept="5jKBG" id="1WT1RVICTOX" role="lGtFl">
                      <ref role="v9R2y" to="tp27:5ZE7FBZ0xn2" resolve="reduce_PropertyId_SProperty" />
                      <node concept="3NFfHV" id="1WT1RVICTOY" role="5jGum">
                        <node concept="3clFbS" id="1WT1RVICTOZ" role="2VODD2">
                          <node concept="3cpWs8" id="1WT1RVICTP0" role="3cqZAp">
                            <node concept="3cpWsn" id="1WT1RVICTP1" role="3cpWs9">
                              <property role="TrG5h" value="pid" />
                              <node concept="3Tqbb2" id="1WT1RVICTP2" role="1tU5fm">
                                <ref role="ehGHo" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                              </node>
                              <node concept="2OqwBi" id="1WT1RVICTP3" role="33vP2m">
                                <node concept="2OqwBi" id="1WT1RVICTP4" role="2Oq$k0">
                                  <node concept="1iwH7S" id="1WT1RVICTP5" role="2Oq$k0" />
                                  <node concept="1FEO0x" id="1WT1RVICTP6" role="2OqNvi" />
                                </node>
                                <node concept="I8ghe" id="1WT1RVICTP7" role="2OqNvi">
                                  <ref role="I8UWU" to="tp25:5ZE7FBYZ2ds" resolve="PropertyId" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1WT1RVICTP8" role="3cqZAp">
                            <node concept="2OqwBi" id="1WT1RVICTP9" role="3clFbG">
                              <node concept="37vLTw" id="1WT1RVICTPa" role="2Oq$k0">
                                <ref role="3cqZAo" node="1WT1RVICTP1" resolve="pid" />
                              </node>
                              <node concept="3zqWPK" id="70OdufORg6F" role="2OqNvi">
                                <ref role="37wK5l" to="tpeu:5ZE7FBYZ2jW" resolve="setProperty" />
                                <node concept="2OqwBi" id="70OdufORg6H" role="37wK5m">
                                  <node concept="30H73N" id="70OdufORg6I" role="2Oq$k0" />
                                  <node concept="2qgKlT" id="70OdufORg6J" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1WT1RVICTPf" role="3cqZAp">
                            <node concept="37vLTw" id="1WT1RVICTPg" role="3cqZAk">
                              <ref role="3cqZAo" node="1WT1RVICTP1" resolve="pid" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="1WT1RVICTPh" role="37wK5m">
                    <node concept="37vLTw" id="1WT1RVICTPi" role="10QFUP">
                      <ref role="3cqZAo" node="1WT1RVIE4Gp" resolve="expr" />
                      <node concept="1ZhdrF" id="1WT1RVICTPj" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="1WT1RVICTPk" role="3$ytzL">
                          <node concept="3clFbS" id="1WT1RVICTPl" role="2VODD2">
                            <node concept="3cpWs6" id="1WT1RVICTPm" role="3cqZAp">
                              <node concept="2OqwBi" id="1WT1RVICTPn" role="3cqZAk">
                                <node concept="1iwH7S" id="1WT1RVICTPo" role="2Oq$k0" />
                                <node concept="1iwH70" id="1WT1RVICTPp" role="2OqNvi">
                                  <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                                  <node concept="2OqwBi" id="1WT1RVICTPq" role="1iwH7V">
                                    <node concept="30H73N" id="1WT1RVICTPr" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="1WT1RVICTPs" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17QB3L" id="1WT1RVICTPt" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1WT1RVICTPu" role="3cqZAp">
          <node concept="2OqwBi" id="1WT1RVICTPv" role="3clFbG">
            <node concept="37vLTw" id="1WT1RVICTPw" role="2Oq$k0">
              <ref role="3cqZAo" node="1WT1RVICTIM" resolve="nb" />
            </node>
            <node concept="liA8E" id="1WT1RVICTPx" role="2OqNvi">
              <ref role="37wK5l" to="6vmh:~SNodeBuilder.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,java.lang.String)" resolve="setReference" />
              <node concept="10Nm6u" id="1WT1RVICTPy" role="37wK5m">
                <node concept="5jKBG" id="1WT1RVICTPz" role="lGtFl">
                  <ref role="v9R2y" to="tp27:7jb4LXp9gY9" resolve="reduce_ReferenceLinkId_SReferenceLink" />
                  <node concept="3NFfHV" id="1WT1RVICTP$" role="5jGum">
                    <node concept="3clFbS" id="1WT1RVICTP_" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTPA" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTPB" role="3clFbG">
                          <node concept="3TrEf2" id="1WT1RVICTPC" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3r:6SzyDXOU94S" resolve="linkId" />
                          </node>
                          <node concept="30H73N" id="1WT1RVICTPD" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1WT1RVICTPE" role="37wK5m">
                <property role="Xl_RC" value="targetNodeId" />
                <node concept="17Uvod" id="1WT1RVICTPF" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1WT1RVICTPG" role="3zH0cK">
                    <node concept="3clFbS" id="1WT1RVICTPH" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTPI" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTPJ" role="3clFbG">
                          <node concept="30H73N" id="1WT1RVICTPK" role="2Oq$k0" />
                          <node concept="3TrcHB" id="1WT1RVICTPL" role="2OqNvi">
                            <ref role="3TsBF5" to="tp3r:2jfSSa$vTsZ" resolve="targetNodeId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDoK5" role="lGtFl" />
          <node concept="1WS0z7" id="1WT1RVICTPM" role="lGtFl">
            <node concept="3JmXsc" id="1WT1RVICTPN" role="3Jn$fo">
              <node concept="3clFbS" id="1WT1RVICTPO" role="2VODD2">
                <node concept="3cpWs8" id="1WT1RVICTPP" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTPQ" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <property role="3TUv4t" value="true" />
                    <node concept="_YKpA" id="1WT1RVICTPR" role="1tU5fm">
                      <node concept="3Tqbb2" id="1WT1RVICTPS" role="_ZDj9">
                        <ref role="ehGHo" to="tp3r:2jfSSa$vTsX" resolve="GeneratorInternal_ReferenceDescriptor" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1WT1RVICTPT" role="33vP2m">
                      <node concept="Tc6Ow" id="1WT1RVICTPU" role="2ShVmc">
                        <node concept="3Tqbb2" id="1WT1RVICTPV" role="HW$YZ">
                          <ref role="ehGHo" to="tp3r:2jfSSa$vTsX" resolve="GeneratorInternal_ReferenceDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1WT1RVICTQ5" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTQ6" role="3cpWs9">
                    <property role="TrG5h" value="originalNode" />
                    <node concept="3Tqbb2" id="1WT1RVICTQ7" role="1tU5fm" />
                    <node concept="2OqwBi" id="3IQV2NHM2dr" role="33vP2m">
                      <node concept="1iwH7S" id="3IQV2NHM1tC" role="2Oq$k0" />
                      <node concept="12$id9" id="3IQV2NHM2VK" role="2OqNvi">
                        <node concept="30H73N" id="3IQV2NHM45t" role="12$y8L" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1WT1RVICTQb" role="3cqZAp">
                  <node concept="3clFbS" id="1WT1RVICTQc" role="3clFbx">
                    <node concept="3clFbF" id="1WT1RVICTQd" role="3cqZAp">
                      <node concept="37vLTI" id="1WT1RVICTQe" role="3clFbG">
                        <node concept="30H73N" id="1WT1RVICTQf" role="37vLTx" />
                        <node concept="37vLTw" id="1WT1RVICTQg" role="37vLTJ">
                          <ref role="3cqZAo" node="1WT1RVICTQ6" resolve="originalNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1WT1RVICTQh" role="3clFbw">
                    <node concept="10Nm6u" id="1WT1RVICTQi" role="3uHU7w" />
                    <node concept="37vLTw" id="1WT1RVICTQj" role="3uHU7B">
                      <ref role="3cqZAo" node="1WT1RVICTQ6" resolve="originalNode" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1WT1RVICTQk" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTQl" role="3cpWs9">
                    <property role="TrG5h" value="pf" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="1WT1RVICTQm" role="1tU5fm">
                      <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                    </node>
                    <node concept="2YIFZM" id="1WT1RVICTQn" role="33vP2m">
                      <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1WT1RVICTQo" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTQp" role="3cpWs9">
                    <property role="TrG5h" value="originalAncestor" />
                    <node concept="3Tqbb2" id="1WT1RVICTQq" role="1tU5fm">
                      <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
                    </node>
                    <node concept="2OqwBi" id="1WT1RVICTQr" role="33vP2m">
                      <node concept="2Xjw5R" id="1WT1RVICTQs" role="2OqNvi">
                        <node concept="1xMEDy" id="1WT1RVICTQt" role="1xVPHs">
                          <node concept="chp4Y" id="1WT1RVICTQu" role="ri$Ld">
                            <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1WT1RVICTQv" role="2Oq$k0">
                        <ref role="3cqZAo" node="1WT1RVICTQ6" resolve="originalNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="1WT1RVICTQw" role="3cqZAp">
                  <node concept="2OqwBi" id="1WT1RVICTQx" role="2GsD0m">
                    <node concept="liA8E" id="1WT1RVICTQy" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
                    </node>
                    <node concept="2JrnkZ" id="1WT1RVICTQz" role="2Oq$k0">
                      <node concept="37vLTw" id="1WT1RVICTQ$" role="2JrQYb">
                        <ref role="3cqZAo" node="1WT1RVICTQ6" resolve="originalNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="2GrKxI" id="1WT1RVICTQ_" role="2Gsz3X">
                    <property role="TrG5h" value="ref" />
                  </node>
                  <node concept="3clFbS" id="1WT1RVICTQA" role="2LFqv$">
                    <node concept="3clFbJ" id="1WT1RVICTQB" role="3cqZAp">
                      <node concept="3clFbS" id="1WT1RVICTQC" role="3clFbx">
                        <node concept="3N13vt" id="1WT1RVICTQD" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="1WT1RVICTQE" role="3clFbw">
                        <node concept="2OqwBi" id="1WT1RVICTQF" role="2Oq$k0">
                          <node concept="30H73N" id="1WT1RVICTQG" role="2Oq$k0" />
                          <node concept="3CFZ6_" id="1WT1RVICTQH" role="2OqNvi">
                            <node concept="3CFYIw" id="1WT1RVICTQI" role="3CFYIz">
                              <ref role="3CFYIJ" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
                              <node concept="25Kdxt" id="1WT1RVICTQJ" role="3CFYM5">
                                <node concept="2OqwBi" id="1WT1RVICTQK" role="25KhWn">
                                  <node concept="liA8E" id="1WT1RVICTQL" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                                  </node>
                                  <node concept="2GrUjf" id="1WT1RVICTQM" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="1WT1RVICTQ_" resolve="ref" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3x8VRR" id="1WT1RVICTQN" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTQO" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTQP" role="3cpWs9">
                        <property role="TrG5h" value="targetNode" />
                        <node concept="3Tqbb2" id="1WT1RVICTQQ" role="1tU5fm" />
                        <node concept="1eOMI4" id="1WT1RVICTQR" role="33vP2m">
                          <node concept="10QFUN" id="1WT1RVICTQS" role="1eOMHV">
                            <node concept="2OqwBi" id="1WT1RVICTQT" role="10QFUP">
                              <node concept="2GrUjf" id="1WT1RVICTQU" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="1WT1RVICTQ_" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="1WT1RVICTQV" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                              </node>
                            </node>
                            <node concept="3Tqbb2" id="1WT1RVICTQW" role="10QFUM" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTQX" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTQY" role="3cpWs9">
                        <property role="TrG5h" value="targetAncestor" />
                        <node concept="3Tqbb2" id="1WT1RVICTQZ" role="1tU5fm">
                          <ref role="ehGHo" to="tp3r:hqc44pp" resolve="Quotation" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTR0" role="33vP2m">
                          <node concept="37vLTw" id="1WT1RVICTR1" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTQP" resolve="targetNode" />
                          </node>
                          <node concept="2Xjw5R" id="1WT1RVICTR2" role="2OqNvi">
                            <node concept="1xMEDy" id="1WT1RVICTR3" role="1xVPHs">
                              <node concept="chp4Y" id="1WT1RVICTR4" role="ri$Ld">
                                <ref role="cht4Q" to="tp3r:hqc44pp" resolve="Quotation" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTR5" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTR6" role="3cpWs9">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="innerQuotationRef" />
                        <node concept="10P_77" id="1WT1RVICTR7" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1WT1RVICTR8" role="3cqZAp">
                      <node concept="3clFbS" id="1WT1RVICTR9" role="3clFbx">
                        <node concept="3clFbF" id="1WT1RVICTRa" role="3cqZAp">
                          <node concept="37vLTI" id="1WT1RVICTRb" role="3clFbG">
                            <node concept="37vLTw" id="1WT1RVICTRc" role="37vLTJ">
                              <ref role="3cqZAo" node="1WT1RVICTR6" resolve="innerQuotationRef" />
                            </node>
                            <node concept="3clFbC" id="1WT1RVICTRd" role="37vLTx">
                              <node concept="37vLTw" id="1WT1RVICTRe" role="3uHU7w">
                                <ref role="3cqZAo" node="1WT1RVICTQp" resolve="originalAncestor" />
                              </node>
                              <node concept="37vLTw" id="1WT1RVICTRf" role="3uHU7B">
                                <ref role="3cqZAo" node="1WT1RVICTQY" resolve="targetAncestor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="1WT1RVICTRg" role="3clFbw">
                        <node concept="10Nm6u" id="1WT1RVICTRh" role="3uHU7w" />
                        <node concept="37vLTw" id="1WT1RVICTRi" role="3uHU7B">
                          <ref role="3cqZAo" node="1WT1RVICTQY" resolve="targetAncestor" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="1WT1RVICTRj" role="9aQIa">
                        <node concept="3clFbS" id="1WT1RVICTRk" role="9aQI4">
                          <node concept="3SKdUt" id="1WT1RVICTRl" role="3cqZAp">
                            <node concept="1PaTwC" id="1WT1RVICTRm" role="1aUNEU">
                              <node concept="3oM_SD" id="1WT1RVICTRn" role="1PaTwD">
                                <property role="3oM_SC" value="target" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRo" role="1PaTwD">
                                <property role="3oM_SC" value="node" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRp" role="1PaTwD">
                                <property role="3oM_SC" value="is" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRq" role="1PaTwD">
                                <property role="3oM_SC" value="not" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRr" role="1PaTwD">
                                <property role="3oM_SC" value="under" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRs" role="1PaTwD">
                                <property role="3oM_SC" value="any" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRt" role="1PaTwD">
                                <property role="3oM_SC" value="quotation," />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRu" role="1PaTwD">
                                <property role="3oM_SC" value="two" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRv" role="1PaTwD">
                                <property role="3oM_SC" value="possible" />
                              </node>
                              <node concept="3oM_SD" id="1WT1RVICTRw" role="1PaTwD">
                                <property role="3oM_SC" value="cases:" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="1WT1RVICTRx" role="3cqZAp">
                            <node concept="3clFbS" id="1WT1RVICTRy" role="3clFbx">
                              <node concept="3SKdUt" id="1WT1RVICTRz" role="3cqZAp">
                                <node concept="1PaTwC" id="1WT1RVICTR$" role="1aUNEU">
                                  <node concept="3oM_SD" id="1WT1RVICTR_" role="1PaTwD">
                                    <property role="3oM_SC" value="1)" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRA" role="1PaTwD">
                                    <property role="3oM_SC" value="source" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRB" role="1PaTwD">
                                    <property role="3oM_SC" value="node" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRC" role="1PaTwD">
                                    <property role="3oM_SC" value="is" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRD" role="1PaTwD">
                                    <property role="3oM_SC" value="not" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRE" role="1PaTwD">
                                    <property role="3oM_SC" value="under" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRF" role="1PaTwD">
                                    <property role="3oM_SC" value="quotation," />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRG" role="1PaTwD">
                                    <property role="3oM_SC" value="the" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRH" role="1PaTwD">
                                    <property role="3oM_SC" value="case" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRI" role="1PaTwD">
                                    <property role="3oM_SC" value="for" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRJ" role="1PaTwD">
                                    <property role="3oM_SC" value="regular" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRK" role="1PaTwD">
                                    <property role="3oM_SC" value="nodes" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRL" role="1PaTwD">
                                    <property role="3oM_SC" value="wrapped" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRM" role="1PaTwD">
                                    <property role="3oM_SC" value="into" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRN" role="1PaTwD">
                                    <property role="3oM_SC" value="quotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3SKdUt" id="1WT1RVICTRO" role="3cqZAp">
                                <node concept="1PaTwC" id="1WT1RVICTRP" role="1aUNEU">
                                  <node concept="3oM_SD" id="1WT1RVICTRQ" role="1PaTwD">
                                    <property role="3oM_SC" value="(e.g." />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRR" role="1PaTwD">
                                    <property role="3oM_SC" value="pattern" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRS" role="1PaTwD">
                                    <property role="3oM_SC" value="test" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRT" role="1PaTwD">
                                    <property role="3oM_SC" value="lang" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRU" role="1PaTwD">
                                    <property role="3oM_SC" value="wraps" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRV" role="1PaTwD">
                                    <property role="3oM_SC" value="a" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRW" role="1PaTwD">
                                    <property role="3oM_SC" value="regular" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRX" role="1PaTwD">
                                    <property role="3oM_SC" value="nodeToMatch" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRY" role="1PaTwD">
                                    <property role="3oM_SC" value="into" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTRZ" role="1PaTwD">
                                    <property role="3oM_SC" value="quotation)" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3SKdUt" id="1WT1RVICTS0" role="3cqZAp">
                                <node concept="1PaTwC" id="1WT1RVICTS1" role="1aUNEU">
                                  <node concept="3oM_SD" id="1WT1RVICTS2" role="1PaTwD">
                                    <property role="3oM_SC" value="I" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS3" role="1PaTwD">
                                    <property role="3oM_SC" value="can't" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS4" role="1PaTwD">
                                    <property role="3oM_SC" value="come" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS5" role="1PaTwD">
                                    <property role="3oM_SC" value="up" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS6" role="1PaTwD">
                                    <property role="3oM_SC" value="with" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS7" role="1PaTwD">
                                    <property role="3oM_SC" value="a" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS8" role="1PaTwD">
                                    <property role="3oM_SC" value="solution," />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTS9" role="1PaTwD">
                                    <property role="3oM_SC" value="here's" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSa" role="1PaTwD">
                                    <property role="3oM_SC" value="a" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSb" role="1PaTwD">
                                    <property role="3oM_SC" value="hack:" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSc" role="1PaTwD">
                                    <property role="3oM_SC" value="assume" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSd" role="1PaTwD">
                                    <property role="3oM_SC" value="if" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSe" role="1PaTwD">
                                    <property role="3oM_SC" value="roots" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSf" role="1PaTwD">
                                    <property role="3oM_SC" value="match," />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSg" role="1PaTwD">
                                    <property role="3oM_SC" value="then" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3SKdUt" id="1WT1RVICTSh" role="3cqZAp">
                                <node concept="1PaTwC" id="1WT1RVICTSi" role="1aUNEU">
                                  <node concept="3oM_SD" id="1WT1RVICTSj" role="1PaTwD">
                                    <property role="3oM_SC" value="this" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSk" role="1PaTwD">
                                    <property role="3oM_SC" value="is" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSl" role="1PaTwD">
                                    <property role="3oM_SC" value="reference" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSm" role="1PaTwD">
                                    <property role="3oM_SC" value="to" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSn" role="1PaTwD">
                                    <property role="3oM_SC" value="quotation" />
                                  </node>
                                  <node concept="3oM_SD" id="1WT1RVICTSo" role="1PaTwD">
                                    <property role="3oM_SC" value="internals" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1WT1RVICTSp" role="3cqZAp">
                                <node concept="37vLTI" id="1WT1RVICTSq" role="3clFbG">
                                  <node concept="3clFbC" id="1WT1RVICTSr" role="37vLTx">
                                    <node concept="2OqwBi" id="1WT1RVICTSs" role="3uHU7w">
                                      <node concept="37vLTw" id="1WT1RVICTSt" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1WT1RVICTQ6" resolve="originalNode" />
                                      </node>
                                      <node concept="2Rxl7S" id="1WT1RVICTSu" role="2OqNvi" />
                                    </node>
                                    <node concept="2OqwBi" id="1WT1RVICTSv" role="3uHU7B">
                                      <node concept="37vLTw" id="1WT1RVICTSw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1WT1RVICTQP" resolve="targetNode" />
                                      </node>
                                      <node concept="2Rxl7S" id="1WT1RVICTSx" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1WT1RVICTSy" role="37vLTJ">
                                    <ref role="3cqZAo" node="1WT1RVICTR6" resolve="innerQuotationRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="1WT1RVICTSz" role="3clFbw">
                              <node concept="10Nm6u" id="1WT1RVICTS$" role="3uHU7w" />
                              <node concept="37vLTw" id="1WT1RVICTS_" role="3uHU7B">
                                <ref role="3cqZAo" node="1WT1RVICTQp" resolve="originalAncestor" />
                              </node>
                            </node>
                            <node concept="9aQIb" id="1WT1RVICTSA" role="9aQIa">
                              <node concept="3clFbS" id="1WT1RVICTSB" role="9aQI4">
                                <node concept="3SKdUt" id="1WT1RVICTSC" role="3cqZAp">
                                  <node concept="1PaTwC" id="1WT1RVICTSD" role="1aUNEU">
                                    <node concept="3oM_SD" id="1WT1RVICTSE" role="1PaTwD">
                                      <property role="3oM_SC" value="2)" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSF" role="1PaTwD">
                                      <property role="3oM_SC" value="source" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSG" role="1PaTwD">
                                      <property role="3oM_SC" value="node" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSH" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSI" role="1PaTwD">
                                      <property role="3oM_SC" value="under" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSJ" role="1PaTwD">
                                      <property role="3oM_SC" value="quotation," />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSK" role="1PaTwD">
                                      <property role="3oM_SC" value="target" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSL" role="1PaTwD">
                                      <property role="3oM_SC" value="node" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSM" role="1PaTwD">
                                      <property role="3oM_SC" value="is" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSN" role="1PaTwD">
                                      <property role="3oM_SC" value="external" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSO" role="1PaTwD">
                                      <property role="3oM_SC" value="to" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSP" role="1PaTwD">
                                      <property role="3oM_SC" value="the" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSQ" role="1PaTwD">
                                      <property role="3oM_SC" value="quotation" />
                                    </node>
                                    <node concept="3oM_SD" id="1WT1RVICTSR" role="1PaTwD">
                                      <property role="3oM_SC" value="then" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1WT1RVICTSS" role="3cqZAp">
                                  <node concept="37vLTI" id="1WT1RVICTST" role="3clFbG">
                                    <node concept="3clFbT" id="1WT1RVICTSU" role="37vLTx">
                                      <property role="3clFbU" value="false" />
                                    </node>
                                    <node concept="37vLTw" id="1WT1RVICTSV" role="37vLTJ">
                                      <ref role="3cqZAo" node="1WT1RVICTR6" resolve="innerQuotationRef" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1WT1RVICTSW" role="3cqZAp">
                      <node concept="3clFbS" id="1WT1RVICTSX" role="3clFbx">
                        <node concept="3N13vt" id="1WT1RVICTSY" role="3cqZAp" />
                      </node>
                      <node concept="37vLTw" id="1WT1RVICTSZ" role="3clFbw">
                        <ref role="3cqZAo" node="1WT1RVICTR6" resolve="innerQuotationRef" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="1WT1RVICTT0" role="3cqZAp" />
                    <node concept="3SKdUt" id="1WT1RVICTT1" role="3cqZAp" />
                    <node concept="3SKdUt" id="1WT1RVICTT2" role="3cqZAp">
                      <node concept="1PaTwC" id="1WT1RVICTT3" role="1aUNEU">
                        <node concept="3oM_SD" id="1WT1RVICTT4" role="1PaTwD">
                          <property role="3oM_SC" value="thus" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTT5" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTT6" role="1PaTwD">
                          <property role="3oM_SC" value="compare" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTT7" role="1PaTwD">
                          <property role="3oM_SC" value="ancestor" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTT8" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTT9" role="1PaTwD">
                          <property role="3oM_SC" value="current(transient)" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTa" role="1PaTwD">
                          <property role="3oM_SC" value="node" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTb" role="1PaTwD">
                          <property role="3oM_SC" value="-" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTc" role="1PaTwD">
                          <property role="3oM_SC" value="assuming" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTd" role="1PaTwD">
                          <property role="3oM_SC" value="reference" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTe" role="1PaTwD">
                          <property role="3oM_SC" value="targets" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTf" role="1PaTwD">
                          <property role="3oM_SC" value="get" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTg" role="1PaTwD">
                          <property role="3oM_SC" value="updated" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTh" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTi" role="1PaTwD">
                          <property role="3oM_SC" value="point" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTj" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTk" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTl" role="1PaTwD">
                          <property role="3oM_SC" value="same" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTm" role="1PaTwD">
                          <property role="3oM_SC" value="model." />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1WT1RVICTTn" role="3cqZAp">
                      <node concept="3clFbS" id="1WT1RVICTTo" role="3clFbx">
                        <node concept="3N13vt" id="1WT1RVICTTp" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="1WT1RVICTTq" role="3clFbw">
                        <node concept="3y3z36" id="1WT1RVICTTr" role="3uHU7B">
                          <node concept="37vLTw" id="1WT1RVICTTs" role="3uHU7B">
                            <ref role="3cqZAo" node="1WT1RVICTQY" resolve="targetAncestor" />
                          </node>
                          <node concept="10Nm6u" id="1WT1RVICTTt" role="3uHU7w" />
                        </node>
                        <node concept="3clFbC" id="1WT1RVICTTu" role="3uHU7w">
                          <node concept="37vLTw" id="1WT1RVICTTv" role="3uHU7w">
                            <ref role="3cqZAo" node="1WT1RVICTQp" resolve="originalAncestor" />
                          </node>
                          <node concept="37vLTw" id="1WT1RVICTTw" role="3uHU7B">
                            <ref role="3cqZAo" node="1WT1RVICTQY" resolve="targetAncestor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTTx" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTTy" role="3cpWs9">
                        <property role="TrG5h" value="referenceNode" />
                        <node concept="3Tqbb2" id="1WT1RVICTTz" role="1tU5fm">
                          <ref role="ehGHo" to="tp3r:2jfSSa$vTsX" resolve="GeneratorInternal_ReferenceDescriptor" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTT$" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTT_" role="2Oq$k0">
                            <node concept="1iwH7S" id="1WT1RVICTTA" role="2Oq$k0" />
                            <node concept="1FEO0x" id="1WT1RVICTTB" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="1WT1RVICTTC" role="2OqNvi">
                            <ref role="I8UWU" to="tp3r:2jfSSa$vTsX" resolve="GeneratorInternal_ReferenceDescriptor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="1WT1RVICTTD" role="3cqZAp">
                      <node concept="1PaTwC" id="1WT1RVICTTE" role="1aUNEU">
                        <node concept="3oM_SD" id="1WT1RVICTTF" role="1PaTwD">
                          <property role="3oM_SC" value="Here" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTG" role="1PaTwD">
                          <property role="3oM_SC" value="used" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTH" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTI" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTJ" role="1PaTwD">
                          <property role="3oM_SC" value="code" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTK" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTL" role="1PaTwD">
                          <property role="3oM_SC" value="tried" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTM" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTN" role="1PaTwD">
                          <property role="3oM_SC" value="make" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTO" role="1PaTwD">
                          <property role="3oM_SC" value="reference" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTP" role="1PaTwD">
                          <property role="3oM_SC" value="up-to-date," />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTQ" role="1PaTwD">
                          <property role="3oM_SC" value="not" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTR" role="1PaTwD">
                          <property role="3oM_SC" value="like" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTS" role="1PaTwD">
                          <property role="3oM_SC" value="it" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTT" role="1PaTwD">
                          <property role="3oM_SC" value="was" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTU" role="1PaTwD">
                          <property role="3oM_SC" value="recorded" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTV" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTW" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTX" role="1PaTwD">
                          <property role="3oM_SC" value="model" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTY" role="1PaTwD">
                          <property role="3oM_SC" value="file" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTTZ" role="1PaTwD">
                          <property role="3oM_SC" value="(e.g." />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU0" role="1PaTwD">
                          <property role="3oM_SC" value="may" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU1" role="1PaTwD">
                          <property role="3oM_SC" value="have" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU2" role="1PaTwD">
                          <property role="3oM_SC" value="outdated" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU3" role="1PaTwD">
                          <property role="3oM_SC" value="name)" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="1WT1RVICTU4" role="3cqZAp">
                      <node concept="1PaTwC" id="1WT1RVICTU5" role="1aUNEU">
                        <node concept="3oM_SD" id="1WT1RVICTU6" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU7" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU8" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU9" role="1PaTwD">
                          <property role="3oM_SC" value="It" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUa" role="1PaTwD">
                          <property role="3oM_SC" value="was" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUb" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUc" role="1PaTwD">
                          <property role="3oM_SC" value="replacement" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUd" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUe" role="1PaTwD">
                          <property role="3oM_SC" value="smodel.SModelReference.update()" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUf" role="1PaTwD">
                          <property role="3oM_SC" value="call" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUg" role="1PaTwD">
                          <property role="3oM_SC" value="which" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUh" role="1PaTwD">
                          <property role="3oM_SC" value="used" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUi" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUj" role="1PaTwD">
                          <property role="3oM_SC" value="be" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUk" role="1PaTwD">
                          <property role="3oM_SC" value="here." />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="1WT1RVICTUl" role="3cqZAp">
                      <node concept="1PaTwC" id="1WT1RVICTUm" role="1aUNEU">
                        <node concept="3oM_SD" id="1WT1RVICTUn" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUo" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUp" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUq" role="1PaTwD">
                          <property role="3oM_SC" value="I" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUr" role="1PaTwD">
                          <property role="3oM_SC" value="see" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUs" role="1PaTwD">
                          <property role="3oM_SC" value="no" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUt" role="1PaTwD">
                          <property role="3oM_SC" value="reason" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUu" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUv" role="1PaTwD">
                          <property role="3oM_SC" value="update" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUw" role="1PaTwD">
                          <property role="3oM_SC" value="references" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUx" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUy" role="1PaTwD">
                          <property role="3oM_SC" value="way," />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUz" role="1PaTwD">
                          <property role="3oM_SC" value="and" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU$" role="1PaTwD">
                          <property role="3oM_SC" value="finally" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTU_" role="1PaTwD">
                          <property role="3oM_SC" value="I'm" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUA" role="1PaTwD">
                          <property role="3oM_SC" value="brave" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUB" role="1PaTwD">
                          <property role="3oM_SC" value="enough" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUC" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUD" role="1PaTwD">
                          <property role="3oM_SC" value="do" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTUE" role="1PaTwD">
                          <property role="3oM_SC" value="that" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1WT1RVICTUF" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTUG" role="3cpWs9">
                        <property role="TrG5h" value="rid" />
                        <node concept="3Tqbb2" id="1WT1RVICTUH" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTUI" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTUJ" role="2Oq$k0">
                            <node concept="37vLTw" id="1WT1RVICTUK" role="2Oq$k0">
                              <ref role="3cqZAo" node="1WT1RVICTTy" resolve="referenceNode" />
                            </node>
                            <node concept="3TrEf2" id="1WT1RVICTUL" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3r:6SzyDXOU94S" resolve="linkId" />
                            </node>
                          </node>
                          <node concept="zfrQC" id="1WT1RVICTUM" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTUN" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTUO" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTUP" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTUG" resolve="rid" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORg6M" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:7jb4LXp9a6q" resolve="setReference" />
                          <node concept="2OqwBi" id="70OdufORg6O" role="37wK5m">
                            <node concept="2GrUjf" id="70OdufORg6P" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1WT1RVICTQ_" resolve="ref" />
                            </node>
                            <node concept="liA8E" id="70OdufORg6Q" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTUU" role="3cqZAp">
                      <node concept="37vLTI" id="1WT1RVICTUV" role="3clFbG">
                        <node concept="2OqwBi" id="1WT1RVICTUW" role="37vLTJ">
                          <node concept="37vLTw" id="1WT1RVICTUX" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTTy" resolve="referenceNode" />
                          </node>
                          <node concept="3TrcHB" id="1WT1RVICTUY" role="2OqNvi">
                            <ref role="3TsBF5" to="tp3r:2jfSSa$vTsZ" resolve="targetNodeId" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTUZ" role="37vLTx">
                          <node concept="37vLTw" id="1WT1RVICTV0" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTQl" resolve="pf" />
                          </node>
                          <node concept="liA8E" id="1WT1RVICTV1" role="2OqNvi">
                            <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="asString" />
                            <node concept="3K4zz7" id="1WT1RVICTV2" role="37wK5m">
                              <node concept="3y3z36" id="1WT1RVICTV3" role="3K4Cdx">
                                <node concept="10Nm6u" id="1WT1RVICTV4" role="3uHU7w" />
                                <node concept="37vLTw" id="1WT1RVICTV5" role="3uHU7B">
                                  <ref role="3cqZAo" node="1WT1RVICTQP" resolve="targetNode" />
                                </node>
                              </node>
                              <node concept="2ShNRf" id="1WT1RVICTV6" role="3K4GZi">
                                <node concept="1pGfFk" id="1WT1RVICTV7" role="2ShVmc">
                                  <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodePointer" />
                                  <node concept="10QFUN" id="1WT1RVICTV8" role="37wK5m">
                                    <node concept="3uibUv" id="1WT1RVICTV9" role="10QFUM">
                                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                                    </node>
                                    <node concept="10Nm6u" id="1WT1RVICTVa" role="10QFUP" />
                                  </node>
                                  <node concept="10Nm6u" id="1WT1RVICTVb" role="37wK5m" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1WT1RVICTVc" role="3K4E3e">
                                <node concept="2JrnkZ" id="1WT1RVICTVd" role="2Oq$k0">
                                  <node concept="37vLTw" id="1WT1RVICTVe" role="2JrQYb">
                                    <ref role="3cqZAo" node="1WT1RVICTQP" resolve="targetNode" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1WT1RVICTVf" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="1WT1RVICTVg" role="3cqZAp">
                      <node concept="1PaTwC" id="1WT1RVICTVh" role="1aUNEU">
                        <node concept="3oM_SD" id="1WT1RVICTVi" role="1PaTwD">
                          <property role="3oM_SC" value="otherwise" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVj" role="1PaTwD">
                          <property role="3oM_SC" value="keep" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVk" role="1PaTwD">
                          <property role="3oM_SC" value="targetNodeId" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVl" role="1PaTwD">
                          <property role="3oM_SC" value="blank," />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVm" role="1PaTwD">
                          <property role="3oM_SC" value="just" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVn" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVo" role="1PaTwD">
                          <property role="3oM_SC" value="restore" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVp" role="1PaTwD">
                          <property role="3oM_SC" value="broken" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVq" role="1PaTwD">
                          <property role="3oM_SC" value="reference" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVr" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVs" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVt" role="1PaTwD">
                          <property role="3oM_SC" value="quotation" />
                        </node>
                        <node concept="3oM_SD" id="1WT1RVICTVu" role="1PaTwD">
                          <property role="3oM_SC" value="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTVv" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTVw" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTVx" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTPQ" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="1WT1RVICTVy" role="2OqNvi">
                          <node concept="37vLTw" id="1WT1RVICTVz" role="25WWJ7">
                            <ref role="3cqZAo" node="1WT1RVICTTy" resolve="referenceNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1WT1RVICTV$" role="3cqZAp">
                  <node concept="37vLTw" id="1WT1RVICTV_" role="3cqZAk">
                    <ref role="3cqZAo" node="1WT1RVICTPQ" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1WT1RVICTVA" role="3cqZAp">
          <node concept="2YIFZM" id="1WT1RVICTVB" role="3clFbG">
            <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
            <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.setReferenceTarget(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
            <node concept="2JrnkZ" id="1WT1RVICTVC" role="37wK5m">
              <node concept="37vLTw" id="1WT1RVICTVD" role="2JrQYb">
                <ref role="3cqZAo" node="1WT1RVIDPnw" resolve="_node_" />
                <node concept="1ZhdrF" id="1WT1RVICTVE" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1WT1RVICTVF" role="3$ytzL">
                    <node concept="3clFbS" id="1WT1RVICTVG" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTVH" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTVI" role="3clFbG">
                          <node concept="1iwH70" id="1WT1RVICTVJ" role="2OqNvi">
                            <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                            <node concept="$GB7w" id="1WT1RVICTVK" role="1iwH7V">
                              <property role="26SvY3" value="1jlY2aid0ut/inputNode" />
                            </node>
                          </node>
                          <node concept="1iwH7S" id="1WT1RVICTVL" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="1WT1RVICTVM" role="37wK5m">
              <node concept="5jKBG" id="1WT1RVICTVN" role="lGtFl">
                <ref role="v9R2y" to="tp27:7jb4LXp9gY9" resolve="reduce_ReferenceLinkId_SReferenceLink" />
                <node concept="3NFfHV" id="1WT1RVICTVO" role="5jGum">
                  <node concept="3clFbS" id="1WT1RVICTVP" role="2VODD2">
                    <node concept="3cpWs8" id="1WT1RVICTVQ" role="3cqZAp">
                      <node concept="3cpWsn" id="1WT1RVICTVR" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3Tqbb2" id="1WT1RVICTVS" role="1tU5fm">
                          <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                        </node>
                        <node concept="2OqwBi" id="1WT1RVICTVT" role="33vP2m">
                          <node concept="2OqwBi" id="1WT1RVICTVU" role="2Oq$k0">
                            <node concept="1iwH7S" id="1WT1RVICTVV" role="2Oq$k0" />
                            <node concept="1r8y6K" id="1WT1RVICTVW" role="2OqNvi" />
                          </node>
                          <node concept="I8ghe" id="1WT1RVICTVX" role="2OqNvi">
                            <ref role="I8UWU" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1WT1RVICTVY" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTVZ" role="3clFbG">
                        <node concept="37vLTw" id="1WT1RVICTW0" role="2Oq$k0">
                          <ref role="3cqZAo" node="1WT1RVICTVR" resolve="id" />
                        </node>
                        <node concept="3zqWPK" id="70OdufORg6R" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:7jb4LXp9a6q" resolve="setReference" />
                          <node concept="2OqwBi" id="70OdufORg6T" role="37wK5m">
                            <node concept="30H73N" id="70OdufORg6U" role="2Oq$k0" />
                            <node concept="2qgKlT" id="70OdufORg6V" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:1avfQ4BEFo6" resolve="getLink" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1WT1RVICTW5" role="3cqZAp">
                      <node concept="37vLTw" id="1WT1RVICTW6" role="3cqZAk">
                        <ref role="3cqZAo" node="1WT1RVICTVR" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10QFUN" id="1WT1RVICTW7" role="37wK5m">
              <node concept="37vLTw" id="1WT1RVICTW8" role="10QFUP">
                <ref role="3cqZAo" node="1WT1RVIE4Gp" resolve="expr" />
                <node concept="1ZhdrF" id="1WT1RVICTW9" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1WT1RVICTWa" role="3$ytzL">
                    <node concept="3clFbS" id="1WT1RVICTWb" role="2VODD2">
                      <node concept="3cpWs6" id="1WT1RVICTWc" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTWd" role="3cqZAk">
                          <node concept="1iwH7S" id="1WT1RVICTWe" role="2Oq$k0" />
                          <node concept="1iwH70" id="1WT1RVICTWf" role="2OqNvi">
                            <ref role="1iwH77" node="2pd$B2dB0O3" resolve="parametersFromExpressionsQ" />
                            <node concept="2OqwBi" id="1WT1RVICTWg" role="1iwH7V">
                              <node concept="30H73N" id="1WT1RVICTWh" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1WT1RVICTWi" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3r:hqc44pn" resolve="expression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="1WT1RVICTWj" role="10QFUM" />
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDpZv" role="lGtFl" />
          <node concept="1WS0z7" id="1WT1RVICTWk" role="lGtFl">
            <node concept="3JmXsc" id="1WT1RVICTWl" role="3Jn$fo">
              <node concept="3clFbS" id="1WT1RVICTWm" role="2VODD2">
                <node concept="3clFbF" id="1WT1RVICTWn" role="3cqZAp">
                  <node concept="2OqwBi" id="1WT1RVICTWo" role="3clFbG">
                    <node concept="2OqwBi" id="1WT1RVICTWp" role="2Oq$k0">
                      <node concept="2OqwBi" id="1WT1RVICTWq" role="2Oq$k0">
                        <node concept="30H73N" id="1WT1RVICTWr" role="2Oq$k0" />
                        <node concept="3CFZ6_" id="1WT1RVICTWs" role="2OqNvi">
                          <node concept="3CFTEB" id="1WT1RVICTWt" role="3CFYIz" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1WT1RVICTWu" role="2OqNvi">
                        <node concept="chp4Y" id="1WT1RVICTWv" role="v3oSu">
                          <ref role="cht4Q" to="tp3r:hqc44pt" resolve="ReferenceAntiquotation" />
                        </node>
                      </node>
                    </node>
                    <node concept="2S7cBI" id="1WT1RVICTWw" role="2OqNvi">
                      <node concept="1bVj0M" id="1WT1RVICTWx" role="23t8la">
                        <node concept="3clFbS" id="1WT1RVICTWy" role="1bW5cS">
                          <node concept="3clFbF" id="1WT1RVICTWz" role="3cqZAp">
                            <node concept="2OqwBi" id="1WT1RVICTW$" role="3clFbG">
                              <node concept="37vLTw" id="1WT1RVICTW_" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0Wqp" resolve="it" />
                              </node>
                              <node concept="3zqWPK" id="70OdufORg6Y" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:5gACAVBuLQd" resolve="getNameForReporting" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0Wqp" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0Wqq" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="1nlBCl" id="1WT1RVICTWD" role="2S7zOq">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1WT1RVIDA1C" role="3cqZAp">
          <node concept="raruj" id="1WT1RVIDDU3" role="lGtFl" />
          <node concept="1WS0z7" id="1WT1RVIDDUe" role="lGtFl">
            <node concept="3JmXsc" id="1WT1RVICTWI" role="3Jn$fo">
              <node concept="3clFbS" id="1WT1RVICTWJ" role="2VODD2">
                <node concept="3cpWs8" id="1WT1RVICTWK" role="3cqZAp">
                  <node concept="3cpWsn" id="1WT1RVICTWL" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="2I9FWS" id="1WT1RVICTWM" role="1tU5fm" />
                    <node concept="2ShNRf" id="1WT1RVICTWN" role="33vP2m">
                      <node concept="2T8Vx0" id="1WT1RVICTWO" role="2ShVmc">
                        <node concept="2I9FWS" id="1WT1RVICTWP" role="2T96Bj" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="1WT1RVICTWQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1WT1RVICTWR" role="1DdaDG">
                    <node concept="30H73N" id="1WT1RVICTWS" role="2Oq$k0" />
                    <node concept="32TBzR" id="1WT1RVICTWT" role="2OqNvi" />
                  </node>
                  <node concept="3cpWsn" id="1WT1RVICTWU" role="1Duv9x">
                    <property role="TrG5h" value="child" />
                    <node concept="3Tqbb2" id="1WT1RVICTWV" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="1WT1RVICTWW" role="2LFqv$">
                    <node concept="3clFbJ" id="1WT1RVICTWX" role="3cqZAp">
                      <node concept="3fqX7Q" id="1WT1RVICTWY" role="3clFbw">
                        <node concept="2OqwBi" id="1WT1RVICTWZ" role="3fr31v">
                          <node concept="37vLTw" id="1WT1RVICTX0" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTWU" resolve="child" />
                          </node>
                          <node concept="1mIQ4w" id="1WT1RVICTX1" role="2OqNvi">
                            <node concept="chp4Y" id="1WT1RVICTX2" role="cj9EA">
                              <ref role="cht4Q" to="tp3r:hqc44pm" resolve="AbstractAntiquotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1WT1RVICTX3" role="3clFbx">
                        <node concept="3clFbF" id="1WT1RVICTX4" role="3cqZAp">
                          <node concept="2OqwBi" id="1WT1RVICTX5" role="3clFbG">
                            <node concept="37vLTw" id="1WT1RVICTX6" role="2Oq$k0">
                              <ref role="3cqZAo" node="1WT1RVICTWL" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="1WT1RVICTX7" role="2OqNvi">
                              <node concept="37vLTw" id="1WT1RVICTX8" role="25WWJ7">
                                <ref role="3cqZAo" node="1WT1RVICTWU" resolve="child" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1WT1RVICTX9" role="3cqZAp">
                  <node concept="37vLTw" id="1WT1RVICTXa" role="3cqZAk">
                    <ref role="3cqZAo" node="1WT1RVICTWL" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="5jKBG" id="1WT1RVIDDU7" role="lGtFl">
            <ref role="v9R2y" node="hqc8hm6" resolve="QuotedNode_to_statementList" />
            <node concept="2OqwBi" id="2XuYaFIee4I" role="v9R3O">
              <node concept="1iwH7S" id="2XuYaFIed4V" role="2Oq$k0" />
              <node concept="3cR$yn" id="2XuYaFIeeKS" role="2OqNvi">
                <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1WT1RVICTXb" role="3cqZAp">
          <node concept="2OqwBi" id="1WT1RVICTXc" role="3clFbG">
            <node concept="37vLTw" id="1WT1RVICTXd" role="2Oq$k0">
              <ref role="3cqZAo" node="1WT1RVIDWCt" resolve="parent" />
              <node concept="1ZhdrF" id="1WT1RVICTXe" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="1WT1RVICTXf" role="3$ytzL">
                  <node concept="3clFbS" id="1WT1RVICTXg" role="2VODD2">
                    <node concept="3clFbF" id="1WT1RVICTXh" role="3cqZAp">
                      <node concept="2OqwBi" id="1WT1RVICTXi" role="3clFbG">
                        <node concept="1iwH7S" id="1WT1RVICTXj" role="2Oq$k0" />
                        <node concept="1iwH70" id="1WT1RVICTXk" role="2OqNvi">
                          <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                          <node concept="2OqwBi" id="1WT1RVICTXl" role="1iwH7V">
                            <node concept="30H73N" id="1WT1RVICTXm" role="2Oq$k0" />
                            <node concept="1mfA1w" id="1WT1RVICTXn" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1WT1RVICTXo" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
              <node concept="10Nm6u" id="1WT1RVICTXp" role="37wK5m">
                <node concept="5jKBG" id="1WT1RVICTXq" role="lGtFl">
                  <ref role="v9R2y" to="tp27:7jb4LXp9xsD" resolve="reduce_ContainmentLinkId_SContainmentLink" />
                  <node concept="3NFfHV" id="1WT1RVICTXr" role="5jGum">
                    <node concept="3clFbS" id="1WT1RVICTXs" role="2VODD2">
                      <node concept="3cpWs8" id="1WT1RVICTXt" role="3cqZAp">
                        <node concept="3cpWsn" id="1WT1RVICTXu" role="3cpWs9">
                          <property role="TrG5h" value="cid" />
                          <node concept="3Tqbb2" id="1WT1RVICTXv" role="1tU5fm">
                            <ref role="ehGHo" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                          </node>
                          <node concept="2OqwBi" id="1WT1RVICTXw" role="33vP2m">
                            <node concept="2OqwBi" id="1WT1RVICTXx" role="2Oq$k0">
                              <node concept="1iwH7S" id="1WT1RVICTXy" role="2Oq$k0" />
                              <node concept="1r8y6K" id="1WT1RVICTXz" role="2OqNvi" />
                            </node>
                            <node concept="I8ghe" id="1WT1RVICTX$" role="2OqNvi">
                              <ref role="I8UWU" to="tp25:7jb4LXp8VrB" resolve="ContainmentLinkId" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1WT1RVICTX_" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTXA" role="3clFbG">
                          <node concept="37vLTw" id="1WT1RVICTXB" role="2Oq$k0">
                            <ref role="3cqZAo" node="1WT1RVICTXu" resolve="cid" />
                          </node>
                          <node concept="3zqWPK" id="70OdufORg70" role="2OqNvi">
                            <ref role="37wK5l" to="tpeu:7jb4LXp8VsD" resolve="setLink" />
                            <node concept="2OqwBi" id="70OdufORg72" role="37wK5m">
                              <node concept="2JrnkZ" id="70OdufORg73" role="2Oq$k0">
                                <node concept="30H73N" id="70OdufORg74" role="2JrQYb" />
                              </node>
                              <node concept="liA8E" id="70OdufORg75" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="1WT1RVICTXH" role="3cqZAp">
                        <node concept="37vLTw" id="1WT1RVICTXI" role="3cqZAk">
                          <ref role="3cqZAo" node="1WT1RVICTXu" resolve="cid" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1WT1RVICTXJ" role="37wK5m">
                <ref role="3cqZAo" node="1WT1RVIDPnw" resolve="_node_" />
                <node concept="1ZhdrF" id="1WT1RVICTXK" role="lGtFl">
                  <property role="2qtEX8" value="variableDeclaration" />
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                  <node concept="3$xsQk" id="1WT1RVICTXL" role="3$ytzL">
                    <node concept="3clFbS" id="1WT1RVICTXM" role="2VODD2">
                      <node concept="3clFbF" id="1WT1RVICTXN" role="3cqZAp">
                        <node concept="2OqwBi" id="1WT1RVICTXO" role="3clFbG">
                          <node concept="1iwH70" id="1WT1RVICTXP" role="2OqNvi">
                            <ref role="1iwH77" node="3ztslReWusd" resolve="nodeVariableQ" />
                            <node concept="30H73N" id="1WT1RVICTXQ" role="1iwH7V" />
                          </node>
                          <node concept="1iwH7S" id="1WT1RVICTXR" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="1WT1RVIDJmO" role="lGtFl" />
          <node concept="1W57fq" id="1WT1RVICTXS" role="lGtFl">
            <node concept="3IZrLx" id="1WT1RVICTXT" role="3IZSJc">
              <node concept="3clFbS" id="1WT1RVICTXU" role="2VODD2">
                <node concept="3clFbF" id="1WT1RVICTXV" role="3cqZAp">
                  <node concept="3y3z36" id="1WT1RVICTXW" role="3clFbG">
                    <node concept="2OqwBi" id="1WT1RVICTXX" role="3uHU7w">
                      <node concept="1iwH7S" id="1WT1RVICTXY" role="2Oq$k0" />
                      <node concept="3cR$yn" id="1WT1RVIDK80" role="2OqNvi">
                        <ref role="3cRzXn" node="1WT1RVIBXqE" resolve="quotation" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1WT1RVICTY0" role="3uHU7B">
                      <node concept="30H73N" id="1WT1RVICTY1" role="2Oq$k0" />
                      <node concept="1mfA1w" id="1WT1RVICTY2" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1WT1RVID36t" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

