<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902d8(jetbrains.mps.baseLanguage.unitTest.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="yqm7" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api(JUnit/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="4rfc" ref="r:3cf16c72-eb63-43af-9e50-31efa02178ea(jetbrains.mps.baseLanguage.unitTest.runtime)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533982221" name="jetbrains.mps.baseLanguage.structure.ShortType" flags="in" index="10N3zO" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="lg" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1226355936225" name="nullInputMessage" index="28wCFW" />
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
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
      <concept id="5324767449430213525" name="jetbrains.mps.lang.generator.structure.InsertCallSiteMacro" flags="lg" index="37f9Lt" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
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
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ngI" index="1s_3nv">
        <property id="1796073355504430601" name="needCallSite" index="1Lz$4U" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="ig" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="lg" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1172017222794" name="jetbrains.mps.baseLanguage.unitTest.structure.Fail" flags="nn" index="3xETmq" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176544042499" name="jetbrains.mps.lang.typesystem.structure.Node_TypeOperation" flags="nn" index="3JvlWi" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
    </language>
  </registry>
  <node concept="312cEu" id="h3sA56A">
    <property role="TrG5h" value="BTestCaseImpl" />
    <node concept="n94m4" id="h3sA56N" role="lGtFl">
      <ref role="n9lRv" to="tpe3:h3s_e$z" resolve="BTestCase" />
    </node>
    <node concept="17Uvod" id="h3sA56O" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="h3sA56P" role="3zH0cK">
        <node concept="3clFbS" id="h3sA56Q" role="2VODD2">
          <node concept="3cpWs6" id="h3sA56R" role="3cqZAp">
            <node concept="2OqwBi" id="hxx$YMi" role="3cqZAk">
              <node concept="30H73N" id="h3KBiCK" role="2Oq$k0" />
              <node concept="3TrcHB" id="hDfAPsw" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="h3sA56X" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      <node concept="29HgVG" id="h3sA56Y" role="lGtFl">
        <node concept="3NFfHV" id="h3sA56Z" role="3NFExx">
          <node concept="3clFbS" id="h3sA570" role="2VODD2">
            <node concept="3cpWs6" id="h3sA571" role="3cqZAp">
              <node concept="2OqwBi" id="hxx_6Qv" role="3cqZAk">
                <node concept="30H73N" id="h3sA573" role="2Oq$k0" />
                <node concept="3TrEf2" id="h3sA574" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="h9B3WBN" role="1B3o_S" />
    <node concept="2AHcQZ" id="7THlWl_mJc3" role="2AJF6D">
      <ref role="2AI5Lk" to="rjhg:~FixMethodOrder" resolve="FixMethodOrder" />
      <node concept="2b32R4" id="7THlWl_mJc5" role="lGtFl">
        <node concept="3JmXsc" id="7THlWl_mJc6" role="2P8S$">
          <node concept="3clFbS" id="7THlWl_mJc7" role="2VODD2">
            <node concept="3clFbF" id="7THlWl_mJ$D" role="3cqZAp">
              <node concept="2OqwBi" id="7THlWl_mJ$F" role="3clFbG">
                <node concept="30H73N" id="7THlWl_mJ$E" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7THlWl_mJ$J" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="7MSVDs3tQoI" role="2AJF6D">
      <ref role="2AI5Lk" to="rbkg:~ExtendWith" resolve="ExtendWith" />
      <node concept="1SXeKx" id="7MSVDs3tR0U" role="2B76xF">
        <ref role="2B6OnR" to="rbkg:~ExtendWith.value()" resolve="value" />
        <node concept="3VsKOn" id="7MSVDs3tWF2" role="2B70Vg">
          <ref role="3VsUkX" to="4rfc:5gsHVKCieoX" resolve="EnvironmentAwareExtension" />
        </node>
      </node>
      <node concept="1W57fq" id="6vgd21k5VxH" role="lGtFl">
        <node concept="3IZrLx" id="6vgd21k5VxI" role="3IZSJc">
          <node concept="3clFbS" id="6vgd21k5VxJ" role="2VODD2">
            <node concept="3clFbF" id="6vgd21k5WZd" role="3cqZAp">
              <node concept="2OqwBi" id="6vgd21k7eoS" role="3clFbG">
                <node concept="2OqwBi" id="6vgd21k5X2J" role="2Oq$k0">
                  <node concept="30H73N" id="6vgd21k5WZc" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdnA" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:59G_UM6ah0X" resolve="getAllSuperClassifiers" />
                  </node>
                </node>
                <node concept="2HwmR7" id="6vgd21k7gOP" role="2OqNvi">
                  <node concept="1bVj0M" id="6vgd21k7gOR" role="23t8la">
                    <node concept="3clFbS" id="6vgd21k7gOS" role="1bW5cS">
                      <node concept="3clFbF" id="6vgd21k7gUR" role="3cqZAp">
                        <node concept="2OqwBi" id="6vgd21k7kOk" role="3clFbG">
                          <node concept="Xl_RD" id="6vgd21k7jzv" role="2Oq$k0">
                            <property role="Xl_RC" value="jetbrains.mps.testbench.EnvironmentAwareTestCase" />
                          </node>
                          <node concept="liA8E" id="6vgd21k7lzL" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="6vgd21k7lYM" role="37wK5m">
                              <node concept="37vLTw" id="6vgd21k7lzR" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WVe" resolve="it" />
                              </node>
                              <node concept="3zqWPK" id="70OdufORdnC" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0WVe" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0WVf" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="4qmQLVZ4uh$" role="lGtFl">
      <property role="2qtEX9" value="abstractClass" />
      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068390468198/1075300953594" />
      <node concept="3zFVjK" id="4qmQLVZ4uhB" role="3zH0cK">
        <node concept="3clFbS" id="4qmQLVZ4uhC" role="2VODD2">
          <node concept="3clFbF" id="4qmQLVZ4uhD" role="3cqZAp">
            <node concept="2OqwBi" id="4qmQLVZ4uhE" role="3clFbG">
              <node concept="3TrcHB" id="4qmQLVZ4uhF" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
              </node>
              <node concept="30H73N" id="4qmQLVZ4uhG" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1v1xy0K00DW" role="jymVt">
      <property role="TrG5h" value="sfield" />
      <node concept="3Tm6S6" id="1v1xy0K00DY" role="1B3o_S" />
      <node concept="10Oyi0" id="1v1xy0K08ZP" role="1tU5fm" />
      <node concept="2b32R4" id="1v1xy0K0e3l" role="lGtFl">
        <node concept="3JmXsc" id="1v1xy0K0e3n" role="2P8S$">
          <node concept="3clFbS" id="1v1xy0K0e3p" role="2VODD2">
            <node concept="3clFbF" id="1v1xy0K0g$5" role="3cqZAp">
              <node concept="2OqwBi" id="1v1xy0K0gW0" role="3clFbG">
                <node concept="30H73N" id="1v1xy0K0g$4" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdnE" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:4_LVZ3pBr7M" resolve="staticFields" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1v1xy0K0bS8" role="jymVt">
      <property role="TrG5h" value="field" />
      <property role="3TUv4t" value="false" />
      <node concept="10Oyi0" id="1v1xy0K09a0" role="1tU5fm" />
      <node concept="3Tm6S6" id="1v1xy0K099Z" role="1B3o_S" />
      <node concept="2b32R4" id="1v1xy0K0eiI" role="lGtFl">
        <node concept="3JmXsc" id="1v1xy0K0eiK" role="2P8S$">
          <node concept="3clFbS" id="1v1xy0K0eiM" role="2VODD2">
            <node concept="3clFbF" id="1v1xy0K0xzw" role="3cqZAp">
              <node concept="2OqwBi" id="1v1xy0K0xUP" role="3clFbG">
                <node concept="30H73N" id="1v1xy0K0xzv" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdnG" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:4_LVZ3pC27C" resolve="fields" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="h3sA56B" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="h3sA56C" role="3clF45" />
      <node concept="3clFbS" id="h3sA56D" role="3clF47" />
      <node concept="2b32R4" id="h3sA56E" role="lGtFl">
        <node concept="3JmXsc" id="h3sA56F" role="2P8S$">
          <node concept="3clFbS" id="h3sA56G" role="2VODD2">
            <node concept="3cpWs6" id="h3sA56H" role="3cqZAp">
              <node concept="2OqwBi" id="hxx$F1Q" role="3cqZAk">
                <node concept="2OqwBi" id="hxx$ZoV" role="2Oq$k0">
                  <node concept="30H73N" id="h3sA56K" role="2Oq$k0" />
                  <node concept="3TrEf2" id="h3sA56L" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:h3s_e$$" resolve="testMethodList" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="hI0tKyJ" role="2OqNvi">
                  <ref role="3TtcxE" to="tpe3:h3s_gou" resolve="testMethod" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AOQnJ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="79C96s2c6_W" role="jymVt">
      <property role="TrG5h" value="setUp" />
      <node concept="3cqZAl" id="79C96s2c6_X" role="3clF45" />
      <node concept="3Tm1VV" id="79C96s2c6_Y" role="1B3o_S" />
      <node concept="3clFbS" id="79C96s2c6_Z" role="3clF47">
        <node concept="29HgVG" id="79C96s2c6Ai" role="lGtFl">
          <node concept="3NFfHV" id="79C96s2c6Aj" role="3NFExx">
            <node concept="3clFbS" id="79C96s2c6Ak" role="2VODD2">
              <node concept="3clFbF" id="79C96s2c6Al" role="3cqZAp">
                <node concept="2OqwBi" id="79C96s2c6As" role="3clFbG">
                  <node concept="2OqwBi" id="79C96s2c6An" role="2Oq$k0">
                    <node concept="30H73N" id="79C96s2c6Am" role="2Oq$k0" />
                    <node concept="3TrEf2" id="79C96s2c6Ar" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:79C96s2bXfz" resolve="beforeTest" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="79C96s2c6Aw" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="79C96s2c6A1" role="lGtFl">
        <node concept="3IZrLx" id="79C96s2c6A2" role="3IZSJc">
          <node concept="3clFbS" id="79C96s2c6A3" role="2VODD2">
            <node concept="3clFbF" id="79C96s2c6A4" role="3cqZAp">
              <node concept="2OqwBi" id="79C96s2c6Ab" role="3clFbG">
                <node concept="2OqwBi" id="79C96s2c6A6" role="2Oq$k0">
                  <node concept="30H73N" id="79C96s2c6A5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="79C96s2c6Aa" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:79C96s2bXfz" resolve="beforeTest" />
                  </node>
                </node>
                <node concept="3x8VRR" id="79C96s2c6Af" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1xA5AX3Bk5K" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~BeforeEach" resolve="BeforeEach" />
      </node>
    </node>
    <node concept="3clFb_" id="79C96s2c6AE" role="jymVt">
      <property role="TrG5h" value="tearDown" />
      <node concept="3cqZAl" id="79C96s2c6AF" role="3clF45" />
      <node concept="3Tm1VV" id="79C96s2c6AG" role="1B3o_S" />
      <node concept="3clFbS" id="79C96s2c6AH" role="3clF47">
        <node concept="29HgVG" id="79C96s2c6AI" role="lGtFl">
          <node concept="3NFfHV" id="79C96s2c6AJ" role="3NFExx">
            <node concept="3clFbS" id="79C96s2c6AK" role="2VODD2">
              <node concept="3clFbF" id="79C96s2c6AL" role="3cqZAp">
                <node concept="2OqwBi" id="79C96s2c6AM" role="3clFbG">
                  <node concept="2OqwBi" id="79C96s2c6AN" role="2Oq$k0">
                    <node concept="30H73N" id="79C96s2c6AO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="79C96s2c6B1" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:79C96s2bXf$" resolve="afterTest" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="79C96s2c6AQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="79C96s2c6AR" role="lGtFl">
        <node concept="3IZrLx" id="79C96s2c6AS" role="3IZSJc">
          <node concept="3clFbS" id="79C96s2c6AT" role="2VODD2">
            <node concept="3clFbF" id="79C96s2c6AU" role="3cqZAp">
              <node concept="2OqwBi" id="79C96s2c6AV" role="3clFbG">
                <node concept="2OqwBi" id="79C96s2c6AW" role="2Oq$k0">
                  <node concept="30H73N" id="79C96s2c6AX" role="2Oq$k0" />
                  <node concept="3TrEf2" id="79C96s2c6B0" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:79C96s2bXf$" resolve="afterTest" />
                  </node>
                </node>
                <node concept="3x8VRR" id="79C96s2c6AZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1xA5AX3Bmmc" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~AfterEach" resolve="AfterEach" />
      </node>
    </node>
    <node concept="3clFb_" id="h3vK4gV" role="jymVt">
      <property role="TrG5h" value="methods" />
      <node concept="3cqZAl" id="h3vK4gW" role="3clF45" />
      <node concept="3clFbS" id="h3vK4gX" role="3clF47" />
      <node concept="2b32R4" id="h3vK6Zz" role="lGtFl">
        <node concept="3JmXsc" id="h3vK6Z$" role="2P8S$">
          <node concept="3clFbS" id="h3vK6Z_" role="2VODD2">
            <node concept="3SKdUt" id="1xA5AX3SMmv" role="3cqZAp">
              <node concept="1PaTwC" id="1xA5AX3SMmw" role="1aUNEU">
                <node concept="3oM_SD" id="1xA5AX3SMmx" role="1PaTwD">
                  <property role="3oM_SC" value="BTestCase," />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMqM" role="1PaTwD">
                  <property role="3oM_SC" value="despite" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMqR" role="1PaTwD">
                  <property role="3oM_SC" value="being" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMrh" role="1PaTwD">
                  <property role="3oM_SC" value="ClassConcept," />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMs0" role="1PaTwD">
                  <property role="3oM_SC" value="still" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMsK" role="1PaTwD">
                  <property role="3oM_SC" value="uses" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMtd" role="1PaTwD">
                  <property role="3oM_SC" value="deprecated" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMtn" role="1PaTwD">
                  <property role="3oM_SC" value="roles" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1xA5AX3SMuC" role="3cqZAp">
              <node concept="1PaTwC" id="1xA5AX3SMuD" role="1aUNEU">
                <node concept="3oM_SD" id="1xA5AX3SMMF" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMMN" role="1PaTwD">
                  <property role="3oM_SC" value="keep" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMMS" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMNi" role="1PaTwD">
                  <property role="3oM_SC" value="methods/fields," />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMOX" role="1PaTwD">
                  <property role="3oM_SC" value="see" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMP5" role="1PaTwD">
                  <property role="3oM_SC" value="its" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMPQ" role="1PaTwD">
                  <property role="3oM_SC" value="editor" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMQk" role="1PaTwD">
                  <property role="3oM_SC" value="declaration." />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMRJ" role="1PaTwD">
                  <property role="3oM_SC" value="Therefore," />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMSf" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMT4" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMTi" role="1PaTwD">
                  <property role="3oM_SC" value="use" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="1xA5AX3SMUx" role="3cqZAp">
              <node concept="1PaTwC" id="1xA5AX3SMUy" role="1aUNEU">
                <node concept="3oM_SD" id="1xA5AX3SMUz" role="1PaTwD">
                  <property role="3oM_SC" value="members()," />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMZc" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="1xA5AX3SMZh" role="1PaTwD">
                  <property role="3oM_SC" value="member" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="h3vK9Ce" role="3cqZAp">
              <node concept="2OqwBi" id="1v1xy0K0OiJ" role="3cqZAk">
                <node concept="2OqwBi" id="1v1xy0K0FiW" role="2Oq$k0">
                  <node concept="2OqwBi" id="hxx$Vd4" role="2Oq$k0">
                    <node concept="3zqWPK" id="70OdufORdnI" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:1hodSy8nQmC" resolve="members" />
                    </node>
                    <node concept="30H73N" id="h3vKa28" role="2Oq$k0" />
                  </node>
                  <node concept="66VNe" id="1v1xy0K0H0N" role="2OqNvi">
                    <node concept="2OqwBi" id="1v1xy0K0HIu" role="576Qk">
                      <node concept="30H73N" id="1v1xy0K0HnA" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdnK" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:4_LVZ3pC27C" resolve="fields" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="66VNe" id="1v1xy0K0PEd" role="2OqNvi">
                  <node concept="2OqwBi" id="1v1xy0K0Qst" role="576Qk">
                    <node concept="30H73N" id="1v1xy0K0Q3T" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORdnM" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:4_LVZ3pBr7M" resolve="staticFields" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AOQrc" role="1B3o_S" />
    </node>
  </node>
  <node concept="bUwia" id="h3sA575">
    <property role="TrG5h" value="main_unitTest" />
    <node concept="3aamgX" id="h3vogXH" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3vlDh2" resolve="AssertEquals" />
      <node concept="j$656" id="h3vomye" role="1lVwrX">
        <ref role="v9R2y" node="h3vojpJ" resolve="reduce_AssertEquals" />
      </node>
    </node>
    <node concept="3aamgX" id="h3vFM9W" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3vFxO8" resolve="AssertFalse" />
      <node concept="j$656" id="h3vFUP1" role="1lVwrX">
        <ref role="v9R2y" node="h3vFRYi" resolve="reduce_AssertFalse" />
      </node>
    </node>
    <node concept="3aamgX" id="692cUnf6I4G" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:692cUnf6I3R" resolve="AssertIsNotNull" />
      <node concept="j$656" id="692cUnf6I4I" role="1lVwrX">
        <ref role="v9R2y" node="692cUnf6I4j" resolve="reduce_AssertInNotNull" />
      </node>
    </node>
    <node concept="3aamgX" id="h3yld7$" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3ykFEh" resolve="AssertIsNull" />
      <node concept="j$656" id="h3ylmf2" role="1lVwrX">
        <ref role="v9R2y" node="h3ylj3y" resolve="reduce_AssertIsNull" />
      </node>
    </node>
    <node concept="3aamgX" id="h3vN73c" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3vMLX3" resolve="AssertSame" />
      <node concept="j$656" id="h3vNdkM" role="1lVwrX">
        <ref role="v9R2y" node="h3vNand" resolve="reduce_AssertSame" />
      </node>
    </node>
    <node concept="3aamgX" id="h3$R7fd" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3$NIwG" resolve="AssertThrows" />
      <node concept="j$656" id="h3$Rf1G" role="1lVwrX">
        <ref role="v9R2y" node="h3$RboU" resolve="reduce_AssertThrows" />
      </node>
    </node>
    <node concept="3aamgX" id="h3vx7xC" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3vwNi3" resolve="AssertTrue" />
      <node concept="j$656" id="h3vxgl4" role="1lVwrX">
        <ref role="v9R2y" node="h3vxcQj" resolve="reduce_AssertTrue" />
      </node>
    </node>
    <node concept="3aamgX" id="h3xFKjb" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:h3xETia" resolve="Fail" />
      <node concept="j$656" id="h3xFOmU" role="1lVwrX">
        <ref role="v9R2y" node="h3xFLWl" resolve="reduce_Fail" />
      </node>
    </node>
    <node concept="3aamgX" id="h3sA576" role="3acgRq">
      <ref role="30HIoZ" to="tpe3:h3s$Bie" resolve="TestMethod" />
      <node concept="j$656" id="h3sA577" role="1lVwrX">
        <ref role="v9R2y" node="h3sA579" resolve="reduce_TestMethod" />
      </node>
    </node>
    <node concept="3lhOvk" id="h3sA578" role="3lj3bC">
      <ref role="3lhOvi" node="h3sA56A" resolve="BTestCaseImpl" />
      <ref role="30HIoZ" to="tpe3:h3s_e$z" resolve="BTestCase" />
    </node>
    <node concept="3aamgX" id="692cUnf6I4g" role="3acgRq">
      <property role="3GE5qa" value="assert" />
      <ref role="30HIoZ" to="tpe3:692cUnf6I3R" resolve="AssertIsNotNull" />
      <node concept="j$656" id="692cUnf6I4i" role="1lVwrX">
        <ref role="v9R2y" node="692cUnf6I4j" resolve="reduce_AssertInNotNull" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h3sA579">
    <property role="TrG5h" value="reduce_TestMethod" />
    <ref role="3gUMe" to="tpe3:h3s$Bie" resolve="TestMethod" />
    <node concept="3clFb_" id="h3sA57a" role="13RCb5">
      <property role="TrG5h" value="method" />
      <node concept="3clFbS" id="h3sA57b" role="3clF47">
        <node concept="3clFbF" id="h3sA57c" role="3cqZAp">
          <node concept="Xl_RD" id="h3sA57d" role="3clFbG">
            <property role="Xl_RC" value="statementList" />
          </node>
        </node>
        <node concept="29HgVG" id="h3sA57e" role="lGtFl">
          <node concept="3NFfHV" id="h3sA57f" role="3NFExx">
            <node concept="3clFbS" id="h3sA57g" role="2VODD2">
              <node concept="3clFbF" id="h8hkion" role="3cqZAp">
                <node concept="2OqwBi" id="hxx$VPf" role="3clFbG">
                  <node concept="30H73N" id="h3sA57k" role="2Oq$k0" />
                  <node concept="3TrEf2" id="h8hkk1T" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="h3sA57l" role="3clF45" />
      <node concept="raruj" id="h3sA57m" role="lGtFl" />
      <node concept="17Uvod" id="h3sA57n" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="h3sA57o" role="3zH0cK">
          <node concept="3clFbS" id="h3sA57p" role="2VODD2">
            <node concept="3clFbF" id="h8hmiW7" role="3cqZAp">
              <node concept="2OqwBi" id="hxx$NWO" role="3clFbG">
                <node concept="30H73N" id="h8hmiW8" role="2Oq$k0" />
                <node concept="3TrcHB" id="h8hmjSe" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="h3sA57w" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3Tm1VV" id="h9AOQsg" role="1B3o_S" />
      <node concept="2AHcQZ" id="7THlWl_mYjQ" role="2AJF6D">
        <ref role="2AI5Lk" to="rjhg:~FixMethodOrder" resolve="FixMethodOrder" />
        <node concept="2b32R4" id="7THlWl_mYjS" role="lGtFl">
          <node concept="3JmXsc" id="7THlWl_mYjT" role="2P8S$">
            <node concept="3clFbS" id="7THlWl_mYjU" role="2VODD2">
              <node concept="3clFbF" id="7THlWl_mYjV" role="3cqZAp">
                <node concept="2OqwBi" id="7THlWl_mYjX" role="3clFbG">
                  <node concept="30H73N" id="7THlWl_mYjW" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="7THlWl_mYk1" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1xA5AX3DTrO" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~Test" resolve="Test" />
        <node concept="1W57fq" id="1xA5AX3N9T3" role="lGtFl">
          <node concept="3IZrLx" id="1xA5AX3N9T6" role="3IZSJc">
            <node concept="3clFbS" id="1xA5AX3N9T7" role="2VODD2">
              <node concept="3SKdUt" id="1xA5AX3Nnl9" role="3cqZAp">
                <node concept="1PaTwC" id="1xA5AX3Nnla" role="1aUNEU">
                  <node concept="3oM_SD" id="1xA5AX3Nnlb" role="1PaTwD">
                    <property role="3oM_SC" value="there" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3Nnoz" role="1PaTwD">
                    <property role="3oM_SC" value="are" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnoV" role="1PaTwD">
                    <property role="3oM_SC" value="BTestCases" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnpC" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnpI" role="1PaTwD">
                    <property role="3oM_SC" value="explicit" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnpP" role="1PaTwD">
                    <property role="3oM_SC" value="JUnit4" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3Nnq_" role="1PaTwD">
                    <property role="3oM_SC" value="annotations," />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnrE" role="1PaTwD">
                    <property role="3oM_SC" value="e.g." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1xA5AX3Nntg" role="3cqZAp">
                <node concept="1PaTwC" id="1xA5AX3Nnth" role="1aUNEU">
                  <node concept="3oM_SD" id="1xA5AX3NnFo" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="1xA5AX3NnFt" role="1PaTwD">
                    <property role="3oM_SC" value="j.m.make.tests" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1xA5AX3N9Td" role="3cqZAp">
                <node concept="3fqX7Q" id="1xA5AX3Nn0K" role="3clFbG">
                  <node concept="2OqwBi" id="1xA5AX3Nn0M" role="3fr31v">
                    <node concept="2OqwBi" id="1xA5AX3Nn0N" role="2Oq$k0">
                      <node concept="2OqwBi" id="1xA5AX3Nn0O" role="2Oq$k0">
                        <node concept="30H73N" id="1xA5AX3Nn0P" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1xA5AX3Nn0Q" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                        </node>
                      </node>
                      <node concept="13MTOL" id="1xA5AX3Nn0R" role="2OqNvi">
                        <ref role="13MTZf" to="tpee:hiAI5P0" resolve="annotation" />
                      </node>
                    </node>
                    <node concept="2HwmR7" id="1xA5AX3Nn0S" role="2OqNvi">
                      <node concept="1bVj0M" id="1xA5AX3Nn0T" role="23t8la">
                        <node concept="3clFbS" id="1xA5AX3Nn0U" role="1bW5cS">
                          <node concept="3clFbF" id="1xA5AX3Nn0V" role="3cqZAp">
                            <node concept="2OqwBi" id="1xA5AX3Nn0W" role="3clFbG">
                              <node concept="37vLTw" id="1xA5AX3Nn0X" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WVg" resolve="it" />
                              </node>
                              <node concept="1QLmlb" id="1xA5AX3Nn0Y" role="2OqNvi">
                                <node concept="ZC_QK" id="1xA5AX3Nn0Z" role="1QLmnL">
                                  <ref role="2aWVGs" to="rjhg:~Test" resolve="Test" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0WVg" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0WVh" role="1tU5fm" />
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
  <node concept="13MO4I" id="h3vojpJ">
    <property role="TrG5h" value="reduce_AssertEquals" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3vlDh2" resolve="AssertEquals" />
    <node concept="3clFbF" id="h3vovNO" role="13RCb5">
      <node concept="2YIFZM" id="UtZ9hSL7jt" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertEquals(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertEquals" />
        <node concept="Xl_RD" id="UtZ9hSL7ju" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="UtZ9hSL7jv" role="lGtFl">
            <node concept="3IZrLx" id="UtZ9hSL7jw" role="3IZSJc">
              <node concept="3clFbS" id="UtZ9hSL7jx" role="2VODD2">
                <node concept="3clFbF" id="UtZ9hSL7jy" role="3cqZAp">
                  <node concept="2OqwBi" id="UtZ9hSL7jz" role="3clFbG">
                    <node concept="2OqwBi" id="UtZ9hSL7j$" role="2Oq$k0">
                      <node concept="2OqwBi" id="UtZ9hSL7j_" role="2Oq$k0">
                        <node concept="30H73N" id="UtZ9hSL7jA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="UtZ9hSL7jB" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="UtZ9hSL7jC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="UtZ9hSL7jD" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="UtZ9hSL7jE" role="lGtFl">
            <node concept="3NFfHV" id="UtZ9hSL7jF" role="3NFExx">
              <node concept="3clFbS" id="UtZ9hSL7jG" role="2VODD2">
                <node concept="3clFbF" id="UtZ9hSL7jH" role="3cqZAp">
                  <node concept="2OqwBi" id="UtZ9hSL7jI" role="3clFbG">
                    <node concept="2OqwBi" id="UtZ9hSL7jJ" role="2Oq$k0">
                      <node concept="30H73N" id="UtZ9hSL7jK" role="2Oq$k0" />
                      <node concept="3TrEf2" id="UtZ9hSL7jL" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="UtZ9hSL7jM" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="UtZ9hSL7jN" role="37wK5m">
          <property role="Xl_RC" value="expected" />
          <node concept="1sPUBX" id="1xA5AX3YLy9" role="lGtFl">
            <ref role="v9R2y" node="1xA5AX3YKAu" resolve="boxPrimitiveTypes" />
            <node concept="3NFfHV" id="1xA5AX3YLA5" role="1sPUBK">
              <node concept="3clFbS" id="1xA5AX3YLA6" role="2VODD2">
                <node concept="3cpWs8" id="1Zcerrmymxg" role="3cqZAp">
                  <node concept="3cpWsn" id="1Zcerrmymxh" role="3cpWs9">
                    <property role="TrG5h" value="type" />
                    <node concept="3Tqbb2" id="1Zcerrmymhd" role="1tU5fm" />
                    <node concept="2OqwBi" id="1Zcerrmymxi" role="33vP2m">
                      <node concept="2OqwBi" id="1Zcerrmymxj" role="2Oq$k0">
                        <node concept="30H73N" id="1Zcerrmymxk" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1Zcerrmymxl" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                        </node>
                      </node>
                      <node concept="3JvlWi" id="1Zcerrmymxm" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="1ZcerrmynpY" role="3cqZAp">
                  <node concept="1PaTwC" id="1ZcerrmynpZ" role="1aUNEU">
                    <node concept="3oM_SD" id="1Zcerrmynq0" role="1PaTwD">
                      <property role="3oM_SC" value="XXX" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmyns9" role="1PaTwD">
                      <property role="3oM_SC" value="this" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynsd" role="1PaTwD">
                      <property role="3oM_SC" value="is" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynsi" role="1PaTwD">
                      <property role="3oM_SC" value="just" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmyns$" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynt8" role="1PaTwD">
                      <property role="3oM_SC" value="avoid" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmyntC" role="1PaTwD">
                      <property role="3oM_SC" value="null" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmyntX" role="1PaTwD">
                      <property role="3oM_SC" value="input" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynuv" role="1PaTwD">
                      <property role="3oM_SC" value="for" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynuE" role="1PaTwD">
                      <property role="3oM_SC" value="the" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynv2" role="1PaTwD">
                      <property role="3oM_SC" value="switch" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="1ZcerrmynvV" role="3cqZAp">
                  <node concept="1PaTwC" id="1ZcerrmynvW" role="1aUNEU">
                    <node concept="3oM_SD" id="1ZcerrmynvX" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynww" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="1Zcerrmynw$" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynwD" role="1PaTwD">
                      <property role="3oM_SC" value="(it" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynBa" role="1PaTwD">
                      <property role="3oM_SC" value="doesn't" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynBh" role="1PaTwD">
                      <property role="3oM_SC" value="take" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynBL" role="1PaTwD">
                      <property role="3oM_SC" value="it" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynC6" role="1PaTwD">
                      <property role="3oM_SC" value="easy)" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynCC" role="1PaTwD">
                      <property role="3oM_SC" value="and" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynCN" role="1PaTwD">
                      <property role="3oM_SC" value="pass" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynDz" role="1PaTwD">
                      <property role="3oM_SC" value="any" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynDK" role="1PaTwD">
                      <property role="3oM_SC" value="value" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynDY" role="1PaTwD">
                      <property role="3oM_SC" value="to" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynEd" role="1PaTwD">
                      <property role="3oM_SC" value="get" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynEP" role="1PaTwD">
                      <property role="3oM_SC" value="switch's" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynFu" role="1PaTwD">
                      <property role="3oM_SC" value="default" />
                    </node>
                    <node concept="3oM_SD" id="1ZcerrmynG8" role="1PaTwD">
                      <property role="3oM_SC" value="triggered" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1xA5AX3YLPk" role="3cqZAp">
                  <node concept="3K4zz7" id="1ZcerrmymXu" role="3clFbG">
                    <node concept="37vLTw" id="1Zcerrmyn0t" role="3K4GZi">
                      <ref role="3cqZAo" node="1Zcerrmymxh" resolve="type" />
                    </node>
                    <node concept="3clFbC" id="1ZcerrmymHN" role="3K4Cdx">
                      <node concept="10Nm6u" id="1ZcerrmymVW" role="3uHU7w" />
                      <node concept="37vLTw" id="1Zcerrmymxn" role="3uHU7B">
                        <ref role="3cqZAo" node="1Zcerrmymxh" resolve="type" />
                      </node>
                    </node>
                    <node concept="30H73N" id="1ZcerrmymZ2" role="3K4E3e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="UtZ9hSL7jO" role="lGtFl">
            <node concept="3NFfHV" id="UtZ9hSL7jP" role="3NFExx">
              <node concept="3clFbS" id="UtZ9hSL7jQ" role="2VODD2">
                <node concept="3cpWs6" id="UtZ9hSL7jR" role="3cqZAp">
                  <node concept="2OqwBi" id="UtZ9hSL7jS" role="3cqZAk">
                    <node concept="30H73N" id="UtZ9hSL7jT" role="2Oq$k0" />
                    <node concept="3TrEf2" id="UtZ9hSL7jU" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="UtZ9hSL7jV" role="37wK5m">
          <property role="Xl_RC" value="actual" />
          <node concept="1sPUBX" id="1xA5AX3YNiU" role="lGtFl">
            <ref role="v9R2y" node="1xA5AX3YKAu" resolve="boxPrimitiveTypes" />
            <node concept="3NFfHV" id="1xA5AX3YNuf" role="1sPUBK">
              <node concept="3clFbS" id="1xA5AX3YNug" role="2VODD2">
                <node concept="3cpWs8" id="1Zcerrmyn3J" role="3cqZAp">
                  <node concept="3cpWsn" id="1Zcerrmyn3K" role="3cpWs9">
                    <property role="TrG5h" value="type" />
                    <node concept="3Tqbb2" id="1ZcerrmymgW" role="1tU5fm" />
                    <node concept="2OqwBi" id="1Zcerrmyn3L" role="33vP2m">
                      <node concept="2OqwBi" id="1Zcerrmyn3M" role="2Oq$k0">
                        <node concept="30H73N" id="1Zcerrmyn3N" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1Zcerrmyn3O" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                        </node>
                      </node>
                      <node concept="3JvlWi" id="1Zcerrmyn3P" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1xA5AX3YNHq" role="3cqZAp">
                  <node concept="3K4zz7" id="1ZcerrmyneT" role="3clFbG">
                    <node concept="37vLTw" id="1Zcerrmynmn" role="3K4GZi">
                      <ref role="3cqZAo" node="1Zcerrmyn3K" resolve="type" />
                    </node>
                    <node concept="3clFbC" id="1Zcerrmyn72" role="3K4Cdx">
                      <node concept="10Nm6u" id="1Zcerrmyn8z" role="3uHU7w" />
                      <node concept="37vLTw" id="1Zcerrmyn3Q" role="3uHU7B">
                        <ref role="3cqZAo" node="1Zcerrmyn3K" resolve="type" />
                      </node>
                    </node>
                    <node concept="30H73N" id="1ZcerrmynkW" role="3K4E3e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="UtZ9hSL7jW" role="lGtFl">
            <node concept="3NFfHV" id="UtZ9hSL7jX" role="3NFExx">
              <node concept="3clFbS" id="UtZ9hSL7jY" role="2VODD2">
                <node concept="3cpWs6" id="UtZ9hSL7jZ" role="3cqZAp">
                  <node concept="2OqwBi" id="UtZ9hSL7k0" role="3cqZAk">
                    <node concept="30H73N" id="UtZ9hSL7k1" role="2Oq$k0" />
                    <node concept="3TrEf2" id="UtZ9hSL7k2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3vozxT" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3vxcQj">
    <property role="TrG5h" value="reduce_AssertTrue" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3vwNi3" resolve="AssertTrue" />
    <node concept="3clFbF" id="h3vxiIU" role="13RCb5">
      <node concept="2YIFZM" id="h3vxknF" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
        <node concept="Xl_RD" id="692cUnf6U8x" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf6U8y" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf6U8z" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf6U8$" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6U8_" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6U8A" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6U8B" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf6U8C" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf6U8D" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf6U8E" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf6U8F" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf6U8G" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf6U8H" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6U8I" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6U8J" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6U8K" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6U8L" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6U8M" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf6U8N" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf6U8O" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf6U8P" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="h3vxniR" role="37wK5m">
          <property role="3clFbU" value="true" />
          <node concept="29HgVG" id="h3vxoUT" role="lGtFl">
            <node concept="3NFfHV" id="h3vxoUU" role="3NFExx">
              <node concept="3clFbS" id="h3vxoUV" role="2VODD2">
                <node concept="3cpWs6" id="h3vxpWR" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$T_Y" role="3cqZAk">
                    <node concept="30H73N" id="h3vxqtn" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h3vxrwy" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3vwVM7" resolve="condition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3vxlJP" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3vFRYi">
    <property role="TrG5h" value="reduce_AssertFalse" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3vFxO8" resolve="AssertFalse" />
    <node concept="3clFbF" id="h3vFX7j" role="13RCb5">
      <node concept="2YIFZM" id="h3vFY6N" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
        <node concept="Xl_RD" id="692cUnf6TM8" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf6TM9" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf6TMa" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf6TMb" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TMc" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TMd" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TMe" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf6TMf" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf6TMg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf6TMh" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf6TMi" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf6TMj" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf6TMk" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6TMl" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6TMm" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TMn" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TMo" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TMp" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf6TMq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf6TMr" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf6TMs" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbT" id="h3vFZvQ" role="37wK5m">
          <property role="3clFbU" value="true" />
          <node concept="29HgVG" id="h3vG0GM" role="lGtFl">
            <node concept="3NFfHV" id="h3vG0GN" role="3NFExx">
              <node concept="3clFbS" id="h3vG0GO" role="2VODD2">
                <node concept="3cpWs6" id="h3vG213" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx_5Wn" role="3cqZAk">
                    <node concept="30H73N" id="h3vG2pw" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h3vG34w" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3vFAPs" resolve="condition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3vFYyT" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3vNand">
    <property role="TrG5h" value="reduce_AssertSame" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3vMLX3" resolve="AssertSame" />
    <node concept="3clFbF" id="h3vNfvf" role="13RCb5">
      <node concept="2YIFZM" id="h3vNgBy" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertSame(java.lang.String,java.lang.Object,java.lang.Object)" resolve="assertSame" />
        <node concept="Xl_RD" id="692cUnf6TNc" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf6TNd" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf6TNe" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf6TNf" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TNg" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TNh" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TNi" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf6TNj" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf6TNk" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf6TNl" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf6TNm" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf6TNn" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf6TNo" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6TNp" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6TNq" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TNr" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TNs" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TNt" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf6TNu" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf6TNv" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf6TNw" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="h3vNka8" role="37wK5m">
          <property role="Xl_RC" value="expected" />
          <node concept="29HgVG" id="h3vNnZk" role="lGtFl">
            <node concept="3NFfHV" id="h3vNnZl" role="3NFExx">
              <node concept="3clFbS" id="h3vNnZm" role="2VODD2">
                <node concept="3cpWs6" id="h3vNp6D" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$VEH" role="3cqZAk">
                    <node concept="30H73N" id="h3vNpjR" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7jPoEeD_jQ9" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="h3vNlBE" role="37wK5m">
          <property role="Xl_RC" value="actual" />
          <node concept="29HgVG" id="h3vNryZ" role="lGtFl">
            <node concept="3NFfHV" id="h3vNrz0" role="3NFExx">
              <node concept="3clFbS" id="h3vNrz1" role="2VODD2">
                <node concept="3cpWs6" id="h3vNsE5" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx_0aJ" role="3cqZAk">
                    <node concept="30H73N" id="h3vNtci" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7jPoEeD_jQa" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3vNhjg" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3xFLWl">
    <property role="TrG5h" value="reduce_Fail" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3xETia" resolve="Fail" />
    <node concept="3clFbF" id="h3xFRgJ" role="13RCb5">
      <node concept="2YIFZM" id="h3xFS9q" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.fail(java.lang.String)" resolve="fail" />
        <node concept="Xl_RD" id="692cUnf72hy" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf72hC" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf72hD" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf72hE" role="2VODD2">
                <node concept="3clFbF" id="692cUnf72hR" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf72i3" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf72hY" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf72hT" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf72hS" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf72hX" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf72i2" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf72i7" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf72h_" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf72hA" role="3NFExx">
              <node concept="3clFbS" id="692cUnf72hB" role="2VODD2">
                <node concept="3clFbF" id="692cUnf72hF" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf72hM" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf72hH" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf72hG" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf72hL" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf72hQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3xFSzj" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3ylj3y">
    <property role="TrG5h" value="reduce_AssertIsNull" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3ykFEh" resolve="AssertIsNull" />
    <node concept="3clFbF" id="h3ylpCm" role="13RCb5">
      <node concept="2YIFZM" id="h3ylt6M" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertNull(java.lang.String,java.lang.Object)" resolve="assertNull" />
        <node concept="Xl_RD" id="692cUnf6TMO" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf6TMP" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf6TMQ" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf6TMR" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TMS" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TMT" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TMU" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf6TMV" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf6TMW" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf6TMX" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf6TMY" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf6TMZ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf6TN0" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6TN1" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6TN2" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TN3" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TN4" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TN5" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf6TN6" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf6TN7" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf6TN8" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="h3ylGGa" role="37wK5m">
          <property role="Xl_RC" value="expression" />
          <node concept="29HgVG" id="h3ylJrv" role="lGtFl">
            <node concept="3NFfHV" id="h3ylJrw" role="3NFExx">
              <node concept="3clFbS" id="h3ylJrx" role="2VODD2">
                <node concept="3cpWs6" id="h3ylKxQ" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$T4V" role="3cqZAk">
                    <node concept="30H73N" id="h3ylKS6" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h3ylLoA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3ykUcf" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3ylt_5" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="h3$RboU">
    <property role="TrG5h" value="reduce_AssertThrows" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:h3$NIwG" resolve="AssertThrows" />
    <node concept="3J1_TO" id="h3_k8lh" role="13RCb5">
      <node concept="3clFbS" id="h3_k8li" role="1zxBo7">
        <node concept="3clFbF" id="h3_k8lj" role="3cqZAp">
          <node concept="Xl_RD" id="h3_k8lk" role="3clFbG">
            <property role="Xl_RC" value="statement" />
          </node>
          <node concept="29HgVG" id="h3_k8ll" role="lGtFl">
            <node concept="3NFfHV" id="h3_k8lm" role="3NFExx">
              <node concept="3clFbS" id="h3_k8ln" role="2VODD2">
                <node concept="3cpWs6" id="h3_k8lo" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$Uv$" role="3cqZAk">
                    <node concept="30H73N" id="h3_k8lq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h3_k8lr" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3$Olsu" resolve="statement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3xETmq" id="h3_k8ls" role="3cqZAp">
          <node concept="3_1$Yv" id="h3_k8lt" role="3_9lra">
            <node concept="Xl_RD" id="h3_k8lu" role="3_1BAH">
              <property role="Xl_RC" value="message" />
            </node>
            <node concept="29HgVG" id="h3_k8lv" role="lGtFl">
              <node concept="3NFfHV" id="h3_k8lw" role="3NFExx">
                <node concept="3clFbS" id="h3_k8lx" role="2VODD2">
                  <node concept="3cpWs6" id="h3_k8ly" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx$E1t" role="3cqZAk">
                      <node concept="30H73N" id="h3_k8l$" role="2Oq$k0" />
                      <node concept="3TrEf2" id="h3_k8l_" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uVAMA" id="h3_k8lA" role="1zxBo5">
        <node concept="XOnhg" id="h3_k8lB" role="1zc67B">
          <property role="TrG5h" value="e" />
          <node concept="nSUau" id="cu$wgZzh$M9" role="1tU5fm">
            <node concept="3uibUv" id="h3_k8lC" role="nSUat">
              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              <node concept="29HgVG" id="h3_k8lD" role="lGtFl">
                <node concept="3NFfHV" id="h3_k8lE" role="3NFExx">
                  <node concept="3clFbS" id="h3_k8lF" role="2VODD2">
                    <node concept="3cpWs6" id="h3_k8lG" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$Pzi" role="3cqZAk">
                        <node concept="30H73N" id="h3_k8lI" role="2Oq$k0" />
                        <node concept="3TrEf2" id="h3_k8lJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3$Qgrf" resolve="exceptionType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="h3_k8lK" role="1zc67A">
          <node concept="3SKdUt" id="6pumIWoCG3j" role="3cqZAp">
            <node concept="1PaTwC" id="ATZLwXo4tJ" role="1aUNEU">
              <node concept="3oM_SD" id="ATZLwXo4tK" role="1PaTwD">
                <property role="3oM_SC" value="expected" />
              </node>
              <node concept="3oM_SD" id="ATZLwXo4tL" role="1PaTwD">
                <property role="3oM_SC" value="exception" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="h3_k8ZY" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="692cUnf6I4j">
    <property role="TrG5h" value="reduce_AssertInNotNull" />
    <property role="3GE5qa" value="assert" />
    <ref role="3gUMe" to="tpe3:692cUnf6I3R" resolve="AssertIsNotNull" />
    <node concept="3clFbF" id="692cUnf6I4l" role="13RCb5">
      <node concept="2YIFZM" id="692cUnf6I4x" role="3clFbG">
        <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
        <ref role="37wK5l" to="rjhg:~Assert.assertNotNull(java.lang.String,java.lang.Object)" resolve="assertNotNull" />
        <node concept="Xl_RD" id="692cUnf6TMu" role="37wK5m">
          <property role="Xl_RC" value="message" />
          <node concept="1W57fq" id="692cUnf6TMv" role="lGtFl">
            <node concept="3IZrLx" id="692cUnf6TMw" role="3IZSJc">
              <node concept="3clFbS" id="692cUnf6TMx" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TMy" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TMz" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TM$" role="2Oq$k0">
                      <node concept="2OqwBi" id="692cUnf6TM_" role="2Oq$k0">
                        <node concept="30H73N" id="692cUnf6TMA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="692cUnf6TMB" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="692cUnf6TMC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="692cUnf6TMD" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="692cUnf6TME" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6TMF" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6TMG" role="2VODD2">
                <node concept="3clFbF" id="692cUnf6TMH" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6TMI" role="3clFbG">
                    <node concept="2OqwBi" id="692cUnf6TMJ" role="2Oq$k0">
                      <node concept="30H73N" id="692cUnf6TMK" role="2Oq$k0" />
                      <node concept="3TrEf2" id="692cUnf6TML" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="692cUnf6TMM" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="692cUnf6I4y" role="37wK5m">
          <property role="Xl_RC" value="expression" />
          <node concept="29HgVG" id="692cUnf6I4z" role="lGtFl">
            <node concept="3NFfHV" id="692cUnf6I4$" role="3NFExx">
              <node concept="3clFbS" id="692cUnf6I4_" role="2VODD2">
                <node concept="3cpWs6" id="692cUnf6I4A" role="3cqZAp">
                  <node concept="2OqwBi" id="692cUnf6I4B" role="3cqZAk">
                    <node concept="30H73N" id="692cUnf6I4C" role="2Oq$k0" />
                    <node concept="3TrEf2" id="692cUnf6I4D" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:692cUnf6I3T" resolve="expression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="692cUnf6I4v" role="lGtFl" />
    </node>
  </node>
  <node concept="jVnub" id="1xA5AX3YKAu">
    <property role="3GE5qa" value="assert" />
    <property role="TrG5h" value="boxPrimitiveTypes" />
    <property role="1Lz$4U" value="true" />
    <node concept="3aamgX" id="1xA5AX3YKAv" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0OMvX" resolve="FloatType" />
      <node concept="gft3U" id="1xA5AX3YKLD" role="1lVwrX">
        <node concept="2YIFZM" id="1xA5AX3YL13" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Float.valueOf(float)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
          <node concept="2$xPTn" id="1xA5AX3YL1K" role="37wK5m">
            <property role="2$xPTl" value="0.0f" />
            <node concept="37f9Lt" id="1xA5AX3YL5x" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1xA5AX3YKEt" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0P56A" resolve="DoubleType" />
      <node concept="gft3U" id="1xA5AX3YKEz" role="1lVwrX">
        <node concept="2YIFZM" id="1xA5AX3YKK$" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Double.valueOf(double)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Double" resolve="Double" />
          <node concept="3b6qkQ" id="1xA5AX3YKKI" role="37wK5m">
            <property role="$nhwW" value="0.0" />
            <node concept="37f9Lt" id="1xA5AX3YL4L" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3X3_cD8FKEY" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0OyhT" resolve="IntegerType" />
      <node concept="gft3U" id="3X3_cD8FKEZ" role="1lVwrX">
        <node concept="2YIFZM" id="3X3_cD8FNm3" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Integer.valueOf(int)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
          <node concept="3cmrfG" id="3X3_cD8FNCt" role="37wK5m">
            <property role="3cmrfH" value="0" />
            <node concept="37f9Lt" id="3X3_cD8FNI7" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3X3_cD8Gjdb" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:fzcpWvN" resolve="LongType" />
      <node concept="gft3U" id="3X3_cD8Gjdc" role="1lVwrX">
        <node concept="2YIFZM" id="3X3_cD8Gjdd" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Long.valueOf(long)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
          <node concept="1adDum" id="3X3_cD8Gx_V" role="37wK5m">
            <property role="1adDun" value="0L" />
            <node concept="37f9Lt" id="3X3_cD8G_QP" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3X3_cD8GyjZ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0N3wd" resolve="ShortType" />
      <node concept="gft3U" id="3X3_cD8Gyk0" role="1lVwrX">
        <node concept="2YIFZM" id="3X3_cD8Gzgu" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Short.valueOf(short)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Short" resolve="Short" />
          <node concept="1eOMI4" id="3X3_cD8G$b5" role="37wK5m">
            <node concept="10QFUN" id="3X3_cD8G$b2" role="1eOMHV">
              <node concept="10N3zO" id="3X3_cD8G$s3" role="10QFUM" />
              <node concept="3cmrfG" id="3X3_cD8Gzgv" role="10QFUP">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="37f9Lt" id="3X3_cD8G_Zg" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="3X3_cD8Gys9" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0Pron" resolve="ByteType" />
      <node concept="gft3U" id="3X3_cD8Gysa" role="1lVwrX">
        <node concept="2YIFZM" id="3X3_cD8Gysb" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Byte.valueOf(byte)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Byte" resolve="Byte" />
          <node concept="1eOMI4" id="3X3_cD8G_aM" role="37wK5m">
            <node concept="10QFUN" id="3X3_cD8G_aJ" role="1eOMHV">
              <node concept="10PrrI" id="3X3_cD8IpMF" role="10QFUM" />
              <node concept="3cmrfG" id="3X3_cD8G$Xv" role="10QFUP">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="37f9Lt" id="3X3_cD8GA7W" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5e716dzMMU6" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:f_0PfwA" resolve="CharType" />
      <node concept="gft3U" id="5e716dzMMU7" role="1lVwrX">
        <node concept="2YIFZM" id="5e716dzMMU8" role="gfFT$">
          <ref role="37wK5l" to="wyt6:~Character.valueOf(char)" resolve="valueOf" />
          <ref role="1Pybhc" to="wyt6:~Character" resolve="Character" />
          <node concept="1eOMI4" id="5e716dzMMU9" role="37wK5m">
            <node concept="10QFUN" id="5e716dzMMUa" role="1eOMHV">
              <node concept="10Pfzv" id="5e716dzMRjS" role="10QFUM" />
              <node concept="3cmrfG" id="5e716dzMMUc" role="10QFUP">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="37f9Lt" id="5e716dzMMUd" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="147qglkuQA0" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpck:gw2VY9q" resolve="BaseConcept" />
      <node concept="gft3U" id="147qglkuQA1" role="1lVwrX">
        <node concept="10QFUN" id="147qglkuRb1" role="gfFT$">
          <node concept="3uibUv" id="147qglkuRHN" role="10QFUM">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="1eOMI4" id="147qglkuQA3" role="10QFUP">
            <node concept="10QFUN" id="147qglkuQA4" role="1eOMHV">
              <node concept="10PrrI" id="147qglkuQA5" role="10QFUM" />
              <node concept="3cmrfG" id="147qglkuQA6" role="10QFUP">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="37f9Lt" id="147qglkuQA7" role="lGtFl" />
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="147qglkuTrU" role="30HLyM">
        <node concept="3clFbS" id="147qglkuTrV" role="2VODD2">
          <node concept="3clFbF" id="147qglkuTwL" role="3cqZAp">
            <node concept="1Wc70l" id="147qgll$Q4A" role="3clFbG">
              <node concept="1Wc70l" id="147qgllBpLt" role="3uHU7B">
                <node concept="3fqX7Q" id="147qgllBmCD" role="3uHU7B">
                  <node concept="2OqwBi" id="147qgllBmCE" role="3fr31v">
                    <node concept="30H73N" id="147qgllBmCF" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="147qgllBmCG" role="2OqNvi">
                      <node concept="chp4Y" id="147qgllBmCH" role="cj9EA">
                        <ref role="cht4Q" to="tpee:f_0Nm5B" resolve="NullLiteral" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="147qgllBq5_" role="3uHU7w">
                  <node concept="2OqwBi" id="147qgllBq5A" role="3fr31v">
                    <node concept="30H73N" id="147qgllBq5B" role="2Oq$k0" />
                    <node concept="1mIQ4w" id="147qgllBq5C" role="2OqNvi">
                      <node concept="chp4Y" id="147qgllBq5D" role="cj9EA">
                        <ref role="cht4Q" to="tpee:fz3vP1H" resolve="Type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="147qglkuU6i" role="3uHU7w">
                <node concept="2OqwBi" id="147qglkuTK9" role="2Oq$k0">
                  <node concept="30H73N" id="147qglkuTwK" role="2Oq$k0" />
                  <node concept="3JvlWi" id="147qglkuTV5" role="2OqNvi" />
                </node>
                <node concept="3w_OXm" id="147qglkuUhn" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="1xA5AX3YL3z" role="jxRDz">
      <node concept="2tJIrI" id="7CAVoZg0xFT" role="gfFT$">
        <node concept="37f9Lt" id="7CAVoZg0xFZ" role="lGtFl" />
      </node>
    </node>
    <node concept="1lLz0L" id="1Zcerrmym7R" role="28wCFW">
      <property role="1lMjX7" value="h1lM37o/error" />
      <property role="1lLB17" value="Can not box null value" />
    </node>
  </node>
</model>

