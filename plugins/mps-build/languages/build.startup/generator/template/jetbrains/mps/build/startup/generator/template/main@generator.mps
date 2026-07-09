<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9eaefcec-a5af-4365-b04c-b6940eebe416(jetbrains.mps.build.startup.generator.template.main@generator)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="-1" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="s7om" ref="r:a930f08c-5447-4203-8f2e-507bb76fab12(jetbrains.mps.build.startup.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tgdw" ref="r:f9efd379-0776-49f3-ae79-8113b86e36ad(jetbrains.mps.build.startup.behavior)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="2txq" ref="r:2c8fa2a8-11a0-4729-bd56-47f702d30278(jetbrains.mps.build.mps.behavior)" />
    <import index="8ig8" ref="r:c3f8847b-5450-45d4-8ef0-445954b1dc9e(jetbrains.mps.ide.platform)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="7485977462274819189" name="jetbrains.mps.baseLanguage.structure.FormatOperation" flags="ng" index="2cAKMz">
        <child id="7485977462274819664" name="arguments" index="2cAKU6" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="2133624044437898907" name="jetbrains.mps.core.xml.structure.XmlDoctypeDeclaration" flags="ng" index="29q25o">
        <property id="2133624044437898910" name="doctypeName" index="29q25t" />
        <child id="2133624044438029120" name="externalId" index="29qyi3" />
      </concept>
      <concept id="2133624044438029119" name="jetbrains.mps.core.xml.structure.XmlExternalId" flags="ng" index="29qyjW">
        <property id="2133624044438029123" name="publicId" index="29qyi0" />
        <property id="2133624044438029125" name="isPublic" index="29qyi6" />
        <property id="2133624044438029124" name="systemId" index="29qyi7" />
      </concept>
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" flags="ng" index="2pNm8N">
        <child id="7604553062773674214" name="elements" index="BGLLu" />
      </concept>
      <concept id="6666499814681299064" name="jetbrains.mps.core.xml.structure.XmlComment" flags="nn" index="2pNm8U">
        <child id="1622293396949036151" name="lines" index="3o66t8" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <property id="6999033275467544021" name="shortEmptyNotation" index="qg3DV" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396949036126" name="jetbrains.mps.core.xml.structure.XmlCommentLine" flags="nn" index="3o66tx">
        <property id="1622293396949036127" name="text" index="3o66tw" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
        <child id="6666499814681299060" name="prolog" index="2pNm8Q" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="lg" index="5jKBG" />
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
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
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <property id="1177959072138" name="keepSourceRoot" index="13Pg2o" />
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ngI" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167756221419" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_templatePropertyValue" flags="nn" index="3zGtF$" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="lg" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="lg" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
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
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
    <language id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup">
      <concept id="1731640411964205218" name="jetbrains.mps.build.startup.structure.TextLine" flags="ng" index="2DRAP_">
        <property id="1731640411964798937" name="text" index="2DPR8u" />
      </concept>
      <concept id="1731640411964205180" name="jetbrains.mps.build.startup.structure.TextFile" flags="ng" index="2DRAQV">
        <child id="1731640411964205233" name="lines" index="2DRAPQ" />
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="bUwia" id="3nFPImNh4eu">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="54lRqzvuHD8" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="7Muxx6JToTa" resolve="Info.plist" />
    </node>
    <node concept="3lhOvk" id="54lRqzvuLtp" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="3T7P3nA9sus" resolve="mps.sh" />
    </node>
    <node concept="3lhOvk" id="54lRqzvuLtq" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="1w81suLRS6O" resolve="mps.bat" />
    </node>
    <node concept="3lhOvk" id="54lRqzvuHE4" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="1w81suM2oZF" resolve="mps.vmoptions" />
    </node>
    <node concept="3lhOvk" id="2lwFGYPagsc" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="2lwFGYPaBHW" resolve="mps64.vmoptions" />
    </node>
    <node concept="3lhOvk" id="6GoDrz8M4nn" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="6GoDrz8MKbK" resolve="product-info-windows-amd64.json" />
    </node>
    <node concept="3lhOvk" id="6GoDrz9v7vt" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="6GoDrz91lqQ" resolve="product-info-macos-amd64.json" />
    </node>
    <node concept="3lhOvk" id="6GoDrz91OUD" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true_" />
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="6GoDrz9v7vx" resolve="product-info-macos-aarch64.json" />
    </node>
    <node concept="3lhOvk" id="6GoDrz91gW5" role="3lj3bC">
      <ref role="30HIoZ" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
      <ref role="3lhOvi" node="6GoDrz91gW8" resolve="product-info-linux-amd64.json" />
    </node>
  </node>
  <node concept="2pMbU2" id="7Muxx6JToTa">
    <property role="TrG5h" value="Info.plist" />
    <node concept="3rIKKV" id="7Muxx6JToTb" role="2pMbU3">
      <node concept="2pNNFK" id="7Muxx6JToTi" role="2pNm8H">
        <property role="2pNNFO" value="plist" />
        <node concept="2pNm8U" id="4LIu2PC9hVz" role="3o6s8t">
          <node concept="3o66tx" id="4LIu2PC9icN" role="3o66t8">
            <property role="3o66tw" value="Generated by MPS" />
          </node>
        </node>
        <node concept="2pNUuL" id="7Muxx6JToTN" role="2pNNFR">
          <property role="2pNUuO" value="version" />
          <node concept="2pMdtt" id="7Muxx6JToTQ" role="2pMdts">
            <property role="2pMdty" value="1.0" />
          </node>
        </node>
        <node concept="2pNNFK" id="7Muxx6JTr_F" role="3o6s8t">
          <property role="2pNNFO" value="dict" />
          <node concept="2pNNFK" id="7Muxx6JTrAh" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAi" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleDevelopmentRegion" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAf" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAg" role="3o6s8t">
              <property role="3o6i5n" value="English" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrA1" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrA2" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleDocumentTypes" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrBg" role="3o6s8t">
            <property role="2pNNFO" value="array" />
            <node concept="2pNNFK" id="7Muxx6JTrBj" role="3o6s8t">
              <property role="2pNNFO" value="dict" />
              <node concept="2pNNFK" id="7Muxx6JTrBm" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7Muxx6JTrBp" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeExtensions" />
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBr" role="3o6s8t">
                <property role="2pNNFO" value="array" />
                <node concept="2pNNFK" id="7Muxx6JTrBw" role="3o6s8t">
                  <property role="2pNNFO" value="string" />
                  <node concept="3o6iSG" id="7Muxx6JTrBx" role="3o6s8t">
                    <property role="3o6i5n" value="mpr" />
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrB_" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7Muxx6JTrBA" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeIconFile" />
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBC" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="7Muxx6JTrBF" role="3o6s8t">
                  <property role="3o6i5n" value="mps.icns" />
                  <node concept="17Uvod" id="2g$3PZUpOjM" role="lGtFl">
                    <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="2g$3PZUpOjN" role="3zH0cK">
                      <node concept="3clFbS" id="2g$3PZUpOjO" role="2VODD2">
                        <node concept="3clFbJ" id="2g$3PZUpQG3" role="3cqZAp">
                          <node concept="3clFbS" id="2g$3PZUpQG4" role="3clFbx">
                            <node concept="3cpWs6" id="2g$3PZUpQG5" role="3cqZAp">
                              <node concept="3zGtF$" id="2g$3PZUpQG6" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2g$3PZUpQG7" role="3clFbw">
                            <node concept="2OqwBi" id="2g$3PZUpQG8" role="2Oq$k0">
                              <node concept="30H73N" id="2g$3PZUpQG9" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2g$3PZUpQGa" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3w_OXm" id="2g$3PZUpQGb" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="2g$3PZUpQGc" role="3cqZAp" />
                        <node concept="3clFbF" id="2g$3PZUpRQ8" role="3cqZAp">
                          <node concept="2YIFZM" id="2g$3PZUpRQa" role="3clFbG">
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="Xl_RD" id="2g$3PZUpRQb" role="37wK5m">
                              <property role="Xl_RC" value="%s.icns" />
                            </node>
                            <node concept="2OqwBi" id="2g$3PZUpRQc" role="37wK5m">
                              <node concept="2OqwBi" id="2g$3PZUpRQd" role="2Oq$k0">
                                <node concept="2OqwBi" id="2g$3PZUpRQe" role="2Oq$k0">
                                  <node concept="30H73N" id="2g$3PZUpRQf" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="2g$3PZUpRQg" role="2OqNvi">
                                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2g$3PZUpUb2" role="2OqNvi">
                                  <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORfLO" role="2OqNvi">
                                <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                                <node concept="10Nm6u" id="70OdufORfLQ" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBP" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7Muxx6JTrBQ" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeName" />
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBN" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="7Muxx6JTrBO" role="3o6s8t">
                  <property role="3o6i5n" value="JetBrains MPS Project" />
                  <node concept="17Uvod" id="2g$3PZUpULe" role="lGtFl">
                    <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="2g$3PZUpULf" role="3zH0cK">
                      <node concept="3clFbS" id="2g$3PZUpULg" role="2VODD2">
                        <node concept="3clFbJ" id="2g$3PZUpV1I" role="3cqZAp">
                          <node concept="3clFbS" id="2g$3PZUpV1J" role="3clFbx">
                            <node concept="3cpWs6" id="2g$3PZUpV1K" role="3cqZAp">
                              <node concept="3zGtF$" id="2g$3PZUpV1L" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2g$3PZUpV1M" role="3clFbw">
                            <node concept="2OqwBi" id="2g$3PZUpV1N" role="2Oq$k0">
                              <node concept="30H73N" id="2g$3PZUpV1O" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2g$3PZUpV1P" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3w_OXm" id="2g$3PZUpV1Q" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="2g$3PZUpV1R" role="3cqZAp" />
                        <node concept="3clFbF" id="2g$3PZUpV1S" role="3cqZAp">
                          <node concept="2YIFZM" id="2g$3PZUpV1T" role="3clFbG">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                            <node concept="Xl_RD" id="2g$3PZUpV1U" role="37wK5m">
                              <property role="Xl_RC" value="%s Project" />
                            </node>
                            <node concept="2OqwBi" id="2g$3PZUpV1V" role="37wK5m">
                              <node concept="2OqwBi" id="2g$3PZUpV1W" role="2Oq$k0">
                                <node concept="2OqwBi" id="2g$3PZUpV1X" role="2Oq$k0">
                                  <node concept="30H73N" id="2g$3PZUpV1Y" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="2g$3PZUpV1Z" role="2OqNvi">
                                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="2g$3PZUpXbc" role="2OqNvi">
                                  <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORfLR" role="2OqNvi">
                                <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                                <node concept="10Nm6u" id="70OdufORfLT" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBL" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7Muxx6JTrBM" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeRole" />
                </node>
              </node>
              <node concept="2pNNFK" id="7Muxx6JTrBJ" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="7Muxx6JTrBK" role="3o6s8t">
                  <property role="3o6i5n" value="Editor" />
                </node>
              </node>
            </node>
            <node concept="2pNNFK" id="7d8Y7G7OYvi" role="3o6s8t">
              <property role="2pNNFO" value="dict" />
              <node concept="2pNNFK" id="7d8Y7G7OYvA" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7d8Y7G7P49U" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeExtensions" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4a0" role="3o6s8t">
                <property role="2pNNFO" value="array" />
                <node concept="2pNNFK" id="7d8Y7G7P4a4" role="3o6s8t">
                  <property role="2pNNFO" value="string" />
                  <node concept="3o6iSG" id="7d8Y7G7P4a6" role="3o6s8t">
                    <property role="3o6i5n" value="*" />
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4af" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7d8Y7G7P4am" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeName" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4ax" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="7d8Y7G7P4aE" role="3o6s8t">
                  <property role="3o6i5n" value="All documents" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4aR" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7d8Y7G7P4b2" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeOSTypes" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4bu" role="3o6s8t">
                <property role="2pNNFO" value="array" />
                <node concept="2pNNFK" id="7d8Y7G7P4bw" role="3o6s8t">
                  <property role="2pNNFO" value="string" />
                  <node concept="3o6iSG" id="7d8Y7G7P4by" role="3o6s8t">
                    <property role="3o6i5n" value="****" />
                  </node>
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4c4" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7d8Y7G7P4cl" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeRole" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4bh" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="7d8Y7G7P4cn" role="3o6s8t">
                  <property role="3o6i5n" value="Editor" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4cH" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="7d8Y7G7P4d1" role="3o6s8t">
                  <property role="3o6i5n" value="LSTypeIsPackage" />
                </node>
              </node>
              <node concept="2pNNFK" id="7d8Y7G7P4dp" role="3o6s8t">
                <property role="2pNNFO" value="false" />
                <property role="qg3DV" value="true" />
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAp" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAq" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleExecutable" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAn" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAo" role="3o6s8t">
              <property role="3o6i5n" value="mps" />
              <node concept="17Uvod" id="2g$3PZU475b" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2g$3PZU475c" role="3zH0cK">
                  <node concept="3clFbS" id="2g$3PZU475d" role="2VODD2">
                    <node concept="3clFbJ" id="2g$3PZUpQqe" role="3cqZAp">
                      <node concept="3clFbS" id="2g$3PZUpQqf" role="3clFbx">
                        <node concept="3cpWs6" id="2g$3PZUpQqg" role="3cqZAp">
                          <node concept="3zGtF$" id="2g$3PZUpQqh" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2g$3PZUpQqi" role="3clFbw">
                        <node concept="2OqwBi" id="2g$3PZUpQqj" role="2Oq$k0">
                          <node concept="30H73N" id="2g$3PZUpQqk" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2g$3PZUpQql" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3w_OXm" id="2g$3PZUpQqm" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="2g$3PZUpQpQ" role="3cqZAp" />
                    <node concept="3clFbF" id="2g$3PZU47dA" role="3cqZAp">
                      <node concept="2OqwBi" id="2g$3PZU47dC" role="3clFbG">
                        <node concept="2OqwBi" id="2g$3PZU47dD" role="2Oq$k0">
                          <node concept="2OqwBi" id="2g$3PZU47dE" role="2Oq$k0">
                            <node concept="30H73N" id="2g$3PZU47dF" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2g$3PZU47dG" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2g$3PZU47dH" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORfLU" role="2OqNvi">
                          <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                          <node concept="10Nm6u" id="70OdufORfLW" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="2g$3PZUpXLr" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAl" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAm" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleIconFile" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAj" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAk" role="3o6s8t">
              <property role="3o6i5n" value="mps.icns" />
              <node concept="17Uvod" id="2g$3PZUpY3t" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2g$3PZUpY3u" role="3zH0cK">
                  <node concept="3clFbS" id="2g$3PZUpY3v" role="2VODD2">
                    <node concept="3clFbJ" id="2g$3PZUpYbV" role="3cqZAp">
                      <node concept="3clFbS" id="2g$3PZUpYbW" role="3clFbx">
                        <node concept="3cpWs6" id="2g$3PZUpYbX" role="3cqZAp">
                          <node concept="3zGtF$" id="2g$3PZUpYbY" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2g$3PZUpYbZ" role="3clFbw">
                        <node concept="2OqwBi" id="2g$3PZUpYc0" role="2Oq$k0">
                          <node concept="30H73N" id="2g$3PZUpYc1" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2g$3PZUpYc2" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3w_OXm" id="2g$3PZUpYc3" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="2g$3PZUpYc4" role="3cqZAp" />
                    <node concept="3clFbF" id="2g$3PZUpYc5" role="3cqZAp">
                      <node concept="2YIFZM" id="2g$3PZUpYc6" role="3clFbG">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                        <node concept="Xl_RD" id="2g$3PZUpYc7" role="37wK5m">
                          <property role="Xl_RC" value="%s.icns" />
                        </node>
                        <node concept="2OqwBi" id="2g$3PZUpYc8" role="37wK5m">
                          <node concept="2OqwBi" id="2g$3PZUpYc9" role="2Oq$k0">
                            <node concept="2OqwBi" id="2g$3PZUpYca" role="2Oq$k0">
                              <node concept="30H73N" id="2g$3PZUpYcb" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2g$3PZUpYcc" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2g$3PZUpYcd" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfLX" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                            <node concept="10Nm6u" id="70OdufORfLZ" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAd" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAe" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleInfoDictionaryVersion" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAb" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAc" role="3o6s8t">
              <property role="3o6i5n" value="6.0" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTr_O" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTr_S" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleName" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTr_P" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTr_W" role="3o6s8t">
              <property role="3o6i5n" value="MPS" />
              <node concept="17Uvod" id="2g$3PZUpYQD" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2g$3PZUpYQE" role="3zH0cK">
                  <node concept="3clFbS" id="2g$3PZUpYQF" role="2VODD2">
                    <node concept="3clFbJ" id="2g$3PZUpZ7y" role="3cqZAp">
                      <node concept="3clFbS" id="2g$3PZUpZ7z" role="3clFbx">
                        <node concept="3cpWs6" id="2g$3PZUpZ7$" role="3cqZAp">
                          <node concept="3zGtF$" id="2g$3PZUpZ7_" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2g$3PZUpZ7A" role="3clFbw">
                        <node concept="2OqwBi" id="2g$3PZUpZ7B" role="2Oq$k0">
                          <node concept="30H73N" id="2g$3PZUpZ7C" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2g$3PZUpZ7D" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3w_OXm" id="2g$3PZUpZ7E" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="2g$3PZUpZ7F" role="3cqZAp" />
                    <node concept="3clFbF" id="2g$3PZUq10c" role="3cqZAp">
                      <node concept="2OqwBi" id="2g$3PZUpZ7J" role="3clFbG">
                        <node concept="2OqwBi" id="2g$3PZUpZ7K" role="2Oq$k0">
                          <node concept="2OqwBi" id="2g$3PZUpZ7L" role="2Oq$k0">
                            <node concept="30H73N" id="2g$3PZUpZ7M" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2g$3PZUpZ7N" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2g$3PZUq2dw" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORfM0" role="2OqNvi">
                          <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                          <node concept="10Nm6u" id="70OdufORfM2" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrA9" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAa" role="3o6s8t">
              <property role="3o6i5n" value="CFBundlePackageType" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrA7" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrA8" role="3o6s8t">
              <property role="3o6i5n" value="APPL" />
            </node>
          </node>
          <node concept="2pNNFK" id="1jHlCUxjOY5" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="1jHlCUxjPD1" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleIdentifier" />
            </node>
          </node>
          <node concept="2pNNFK" id="1jHlCUxjRj2" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="1jHlCUxjRLX" role="3o6s8t">
              <property role="3o6i5n" value="com.jetbrains.mps" />
              <node concept="17Uvod" id="3MIlvyGcdeV" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <node concept="3zFVjK" id="3MIlvyGcdeW" role="3zH0cK">
                  <node concept="3clFbS" id="3MIlvyGcdeX" role="2VODD2">
                    <node concept="3cpWs8" id="3MIlvyGcFSU" role="3cqZAp">
                      <node concept="3cpWsn" id="3MIlvyGcFSV" role="3cpWs9">
                        <property role="TrG5h" value="branding" />
                        <node concept="3Tqbb2" id="3MIlvyGcFMP" role="1tU5fm">
                          <ref role="ehGHo" to="kdzh:6Iq8148eRud" resolve="BuildMps_Branding" />
                        </node>
                        <node concept="2OqwBi" id="3MIlvyGcFSW" role="33vP2m">
                          <node concept="30H73N" id="3MIlvyGcFSX" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3MIlvyGcFSY" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3MIlvyGcdj$" role="3cqZAp">
                      <node concept="3clFbS" id="3MIlvyGcdj_" role="3clFbx">
                        <node concept="3cpWs6" id="3MIlvyGcdjA" role="3cqZAp">
                          <node concept="3zGtF$" id="3MIlvyGcdjB" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3MIlvyGcdjC" role="3clFbw">
                        <node concept="37vLTw" id="3MIlvyGcFT0" role="2Oq$k0">
                          <ref role="3cqZAo" node="3MIlvyGcFSV" resolve="branding" />
                        </node>
                        <node concept="3w_OXm" id="3MIlvyGcdjG" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3MIlvyGcMHP" role="3cqZAp">
                      <node concept="3cpWsn" id="3MIlvyGcMHQ" role="3cpWs9">
                        <property role="TrG5h" value="macros" />
                        <node concept="3uibUv" id="3MIlvyGcM$2" role="1tU5fm">
                          <ref role="3uigEE" to="o3n2:5FtnUVJR86u" resolve="MacroHelper" />
                        </node>
                        <node concept="2OqwBi" id="3MIlvyGcMHR" role="33vP2m">
                          <node concept="2YIFZM" id="3MIlvyGcMHS" role="2Oq$k0">
                            <ref role="37wK5l" to="o3n2:19KdqCVerNJ" resolve="defaultContext" />
                            <ref role="1Pybhc" to="o3n2:4jjtc7WZOAv" resolve="Context" />
                            <node concept="1iwH7S" id="3MIlvyGcMHT" role="37wK5m" />
                          </node>
                          <node concept="liA8E" id="3MIlvyGcMHU" role="2OqNvi">
                            <ref role="37wK5l" to="o3n2:5DY7s5F3vd2" resolve="getMacros" />
                            <node concept="30H73N" id="3MIlvyGcMHV" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3MIlvyGcHS0" role="3cqZAp">
                      <node concept="3cpWsn" id="3MIlvyGcHS1" role="3cpWs9">
                        <property role="TrG5h" value="vendor" />
                        <node concept="17QB3L" id="3MIlvyGcHLh" role="1tU5fm" />
                        <node concept="3K4zz7" id="3MIlvyGcHS2" role="33vP2m">
                          <node concept="Xl_RD" id="3MIlvyGcHS3" role="3K4GZi">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="2OqwBi" id="3MIlvyGcHS4" role="3K4Cdx">
                            <node concept="2OqwBi" id="3MIlvyGcHS5" role="2Oq$k0">
                              <node concept="37vLTw" id="3MIlvyGcHS6" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MIlvyGcFSV" resolve="branding" />
                              </node>
                              <node concept="3TrEf2" id="3MIlvyGcHS7" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:5pqe9hg3trp" resolve="vendor" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="3MIlvyGcHS8" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="3MIlvyGcHS9" role="3K4E3e">
                            <node concept="2OqwBi" id="3MIlvyGcHSa" role="2Oq$k0">
                              <node concept="37vLTw" id="3MIlvyGcHSb" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MIlvyGcFSV" resolve="branding" />
                              </node>
                              <node concept="3TrEf2" id="3MIlvyGcHSc" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:5pqe9hg3trp" resolve="vendor" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="70OdufORfM3" role="2OqNvi">
                              <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                              <node concept="37vLTw" id="70OdufORfM5" role="37wK5m">
                                <ref role="3cqZAo" node="3MIlvyGcMHQ" resolve="macros" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3MIlvyGcMNS" role="3cqZAp">
                      <node concept="3cpWsn" id="3MIlvyGcMNT" role="3cpWs9">
                        <property role="TrG5h" value="product" />
                        <node concept="17QB3L" id="3MIlvyGcMNU" role="1tU5fm" />
                        <node concept="3K4zz7" id="3MIlvyGcMNV" role="33vP2m">
                          <node concept="Xl_RD" id="3MIlvyGcMNW" role="3K4GZi">
                            <property role="Xl_RC" value="" />
                          </node>
                          <node concept="2OqwBi" id="3MIlvyGcMNX" role="3K4Cdx">
                            <node concept="2OqwBi" id="3MIlvyGcMNY" role="2Oq$k0">
                              <node concept="37vLTw" id="3MIlvyGcMNZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MIlvyGcFSV" resolve="branding" />
                              </node>
                              <node concept="3TrEf2" id="3MIlvyGcNcj" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="3MIlvyGcMO1" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="3MIlvyGcMO2" role="3K4E3e">
                            <node concept="2OqwBi" id="3MIlvyGcMO3" role="2Oq$k0">
                              <node concept="37vLTw" id="3MIlvyGcMO4" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MIlvyGcFSV" resolve="branding" />
                              </node>
                              <node concept="3TrEf2" id="3MIlvyGcPo3" role="2OqNvi">
                                <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                              </node>
                            </node>
                            <node concept="3zqWPK" id="70OdufORfM6" role="2OqNvi">
                              <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                              <node concept="37vLTw" id="70OdufORfM8" role="37wK5m">
                                <ref role="3cqZAo" node="3MIlvyGcMHQ" resolve="macros" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3MIlvyGcdGR" role="3cqZAp">
                      <node concept="3cpWs3" id="3MIlvyGcQIY" role="3clFbG">
                        <node concept="1eOMI4" id="3MIlvyGcQPt" role="3uHU7w">
                          <node concept="3K4zz7" id="3MIlvyGcRDh" role="1eOMHV">
                            <node concept="3cpWs3" id="3MIlvyGcSyj" role="3K4E3e">
                              <node concept="2OqwBi" id="3MIlvyGcSOe" role="3uHU7w">
                                <node concept="37vLTw" id="3MIlvyGcSB6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3MIlvyGcMNT" resolve="product" />
                                </node>
                                <node concept="liA8E" id="3MIlvyGcT3C" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3MIlvyGcRI2" role="3uHU7B">
                                <property role="Xl_RC" value="." />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3MIlvyGcTh9" role="3K4GZi">
                              <property role="Xl_RC" value="" />
                            </node>
                            <node concept="2OqwBi" id="3MIlvyGcQYr" role="3K4Cdx">
                              <node concept="37vLTw" id="3MIlvyGcQTQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3MIlvyGcMNT" resolve="product" />
                              </node>
                              <node concept="17RvpY" id="3MIlvyGcRdH" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="3MIlvyGceol" role="3uHU7B">
                          <node concept="Xl_RD" id="3MIlvyGcdGQ" role="3uHU7B">
                            <property role="Xl_RC" value="com" />
                          </node>
                          <node concept="1eOMI4" id="3MIlvyGcJUh" role="3uHU7w">
                            <node concept="3K4zz7" id="3MIlvyGcJqv" role="1eOMHV">
                              <node concept="2OqwBi" id="3MIlvyGcTqJ" role="3K4Cdx">
                                <node concept="37vLTw" id="3MIlvyGcTqK" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3MIlvyGcHS1" resolve="vendor" />
                                </node>
                                <node concept="17RvpY" id="3MIlvyGcTyu" role="2OqNvi" />
                              </node>
                              <node concept="3cpWs3" id="3MIlvyGcTqN" role="3K4E3e">
                                <node concept="Xl_RD" id="3MIlvyGcTqO" role="3uHU7B">
                                  <property role="Xl_RC" value="." />
                                </node>
                                <node concept="2OqwBi" id="3MIlvyGcTqP" role="3uHU7w">
                                  <node concept="37vLTw" id="3MIlvyGcTqQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3MIlvyGcHS1" resolve="vendor" />
                                  </node>
                                  <node concept="liA8E" id="3MIlvyGcTqR" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="3MIlvyGcTqM" role="3K4GZi" />
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
          <node concept="2pNNFK" id="7Muxx6JTrA5" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrA6" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleSignature" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrA3" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrA4" role="3o6s8t">
              <property role="3o6i5n" value="????" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrA_" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAA" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleGetInfoString" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAz" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrA$" role="3o6s8t">
              <property role="3o6i5n" value="JetBrains MPS $version$" />
              <node concept="17Uvod" id="2g$3PZU47X6" role="lGtFl">
                <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="2g$3PZU47X7" role="3zH0cK">
                  <node concept="3clFbS" id="2g$3PZU47X8" role="2VODD2">
                    <node concept="3clFbJ" id="2g$3PZUq2WY" role="3cqZAp">
                      <node concept="3clFbS" id="2g$3PZUq2WZ" role="3clFbx">
                        <node concept="3cpWs6" id="2g$3PZUq2X0" role="3cqZAp">
                          <node concept="3zGtF$" id="2g$3PZUq2X1" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2g$3PZUq2X2" role="3clFbw">
                        <node concept="2OqwBi" id="2g$3PZUq2X3" role="2Oq$k0">
                          <node concept="30H73N" id="2g$3PZUq2X4" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2g$3PZUq2X5" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3w_OXm" id="2g$3PZUq2X6" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="2g$3PZUq2By" role="3cqZAp" />
                    <node concept="3clFbF" id="2g$3PZU485_" role="3cqZAp">
                      <node concept="3cpWs3" id="2g$3PZU48ve" role="3clFbG">
                        <node concept="2OqwBi" id="2g$3PZU4buW" role="3uHU7B">
                          <node concept="2OqwBi" id="2g$3PZU4avr" role="2Oq$k0">
                            <node concept="2OqwBi" id="2g$3PZU48Rj" role="2Oq$k0">
                              <node concept="30H73N" id="2g$3PZU48BO" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2g$3PZU49sm" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2g$3PZU4aUn" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfM9" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                            <node concept="10Nm6u" id="70OdufORfMb" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2g$3PZU485$" role="3uHU7w">
                          <property role="Xl_RC" value=" $version$" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAx" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAy" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleShortVersionString" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAv" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAw" role="3o6s8t">
              <property role="3o6i5n" value="$version$" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAt" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7Muxx6JTrAu" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleVersion" />
            </node>
          </node>
          <node concept="2pNNFK" id="7Muxx6JTrAr" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7Muxx6JTrAs" role="3o6s8t">
              <property role="3o6i5n" value="$build$" />
            </node>
          </node>
          <node concept="2pNNFK" id="1jHlCUxjSgW" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="1jHlCUxjSJT" role="3o6s8t">
              <property role="3o6i5n" value="LSApplicationCategoryType" />
            </node>
          </node>
          <node concept="2pNNFK" id="1jHlCUxjTeU" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="1jHlCUxjTHT" role="3o6s8t">
              <property role="3o6i5n" value="public.app-category.developer-tools" />
            </node>
          </node>
          <node concept="3o6iSG" id="1jHlCUxjQl9" role="3o6s8t" />
          <node concept="2pNNFK" id="4mEV01KDHMx" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="4mEV01KDHMz" role="3o6s8t">
              <property role="3o6i5n" value="NSHighResolutionCapable" />
            </node>
          </node>
          <node concept="2pNNFK" id="4mEV01KDHM_" role="3o6s8t">
            <property role="qg3DV" value="true" />
            <property role="2pNNFO" value="true" />
          </node>
          <node concept="3o6iSG" id="4A8SxGHvLOW" role="3o6s8t" />
          <node concept="2pNNFK" id="4A8SxGHvNkc" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="4A8SxGHvNNX" role="3o6s8t">
              <property role="3o6i5n" value="NSSupportsAutomaticGraphicsSwitching" />
            </node>
          </node>
          <node concept="2pNNFK" id="4A8SxGHvOjM" role="3o6s8t">
            <property role="2pNNFO" value="true" />
            <property role="qg3DV" value="true" />
          </node>
          <node concept="3o6iSG" id="4A8SxGHvMkF" role="3o6s8t" />
          <node concept="2pNNFK" id="7d8Y7G7OThC" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7d8Y7G7OTJM" role="3o6s8t">
              <property role="3o6i5n" value="LSArchitecturePriority" />
            </node>
          </node>
          <node concept="2pNNFK" id="7d8Y7G7OUe0" role="3o6s8t">
            <property role="2pNNFO" value="array" />
            <node concept="2pNNFK" id="7d8Y7G7OUGg" role="3o6s8t">
              <property role="2pNNFO" value="string" />
              <node concept="3o6iSG" id="7d8Y7G7OUGk" role="3o6s8t">
                <property role="3o6i5n" value="$platform$" />
              </node>
            </node>
          </node>
          <node concept="2pNNFK" id="7d8Y7G7OVaB" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7d8Y7G7OVCS" role="3o6s8t">
              <property role="3o6i5n" value="LSRequiresNativeExecution" />
            </node>
          </node>
          <node concept="2pNNFK" id="7d8Y7G7OW7d" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7d8Y7G7OW_w" role="3o6s8t">
              <property role="3o6i5n" value="YES" />
            </node>
          </node>
          <node concept="2pNNFK" id="7d8Y7G7OX3R" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="7d8Y7G7OXyc" role="3o6s8t">
              <property role="3o6i5n" value="LSMinimumSystemVersion" />
            </node>
          </node>
          <node concept="2pNNFK" id="7d8Y7G7OY0_" role="3o6s8t">
            <property role="2pNNFO" value="string" />
            <node concept="3o6iSG" id="7d8Y7G7OYuW" role="3o6s8t">
              <property role="3o6i5n" value="10.13" />
            </node>
          </node>
          <node concept="2pNNFK" id="1VQSNE2Hi" role="3o6s8t">
            <property role="2pNNFO" value="key" />
            <node concept="3o6iSG" id="1VQSNE3l1" role="3o6s8t">
              <property role="3o6i5n" value="CFBundleURLTypes" />
            </node>
          </node>
          <node concept="2pNNFK" id="1VQSNE3nS" role="3o6s8t">
            <property role="2pNNFO" value="array" />
            <node concept="2pNNFK" id="1VQSNE3qJ" role="3o6s8t">
              <property role="2pNNFO" value="dict" />
              <node concept="2pNNFK" id="1VQSNE3Ed" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="1VQSNE3Ef" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleTypeRole" />
                </node>
              </node>
              <node concept="2pNNFK" id="1VQSNE3TM" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="1VQSNE3TQ" role="3o6s8t">
                  <property role="3o6i5n" value="Editor" />
                </node>
              </node>
              <node concept="2pNNFK" id="1VQSNE49t" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="1VQSNE49z" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleURLName" />
                </node>
              </node>
              <node concept="2pNNFK" id="1VQSNE49H" role="3o6s8t">
                <property role="2pNNFO" value="string" />
                <node concept="3o6iSG" id="1VQSNE4pm" role="3o6s8t">
                  <property role="3o6i5n" value="Stacktrace" />
                </node>
              </node>
              <node concept="2pNNFK" id="1VQSNE4D5" role="3o6s8t">
                <property role="2pNNFO" value="key" />
                <node concept="3o6iSG" id="1VQSNE4Df" role="3o6s8t">
                  <property role="3o6i5n" value="CFBundleURLSchemes" />
                </node>
              </node>
              <node concept="2pNNFK" id="1VQSNE4T2" role="3o6s8t">
                <property role="2pNNFO" value="array" />
              </node>
            </node>
          </node>
          <node concept="3o6iSG" id="7d8Y7G7PQUw" role="3o6s8t" />
        </node>
      </node>
      <node concept="2pNm8N" id="7Muxx6JUpT8" role="2pNm8Q">
        <node concept="29q25o" id="1Qs9WekXUKL" role="BGLLu">
          <property role="29q25t" value="plist" />
          <node concept="29qyjW" id="1Qs9WekXUKN" role="29qyi3">
            <property role="29qyi0" value="-//Apple Computer//DTD PLIST 1.0//EN" />
            <property role="29qyi6" value="true" />
            <property role="29qyi7" value="http://www.apple.com/DTDs/PropertyList-1.0.dtd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="7Muxx6JToTd" role="lGtFl">
      <ref role="n9lRv" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    </node>
  </node>
  <node concept="2DRAQV" id="1w81suLRS6O">
    <property role="TrG5h" value="mps.bat" />
    <node concept="2DRAP_" id="1w81suLSqoE" role="2DRAPQ">
      <property role="2DPR8u" value="@ECHO OFF" />
    </node>
    <node concept="2DRAP_" id="1w81suLSqoH" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtElZzNj" role="2DRAPQ">
      <property role="2DPR8u" value="::----------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="1w81suLSqoL" role="2DRAPQ">
      <property role="2DPR8u" value=":: JetBrains MPS startup script." />
      <node concept="17Uvod" id="4eWOtElZC4Y" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtElZC4Z" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtElZC50" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJtkp" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJtkr" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJw_3" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJxql" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJvoZ" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJuaC" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJtJ5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJuGt" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJwat" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJDuw" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtElZCds" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtElZCdt" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="4eWOtElZCdu" role="37wK5m">
                  <property role="Xl_RC" value=":: %s startup script." />
                </node>
                <node concept="2OqwBi" id="4eWOtElZCdv" role="37wK5m">
                  <node concept="2OqwBi" id="4eWOtElZCdw" role="2Oq$k0">
                    <node concept="2OqwBi" id="4eWOtElZCdx" role="2Oq$k0">
                      <node concept="30H73N" id="4eWOtElZCdy" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4eWOtElZCdz" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4eWOtElZCd$" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMc" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMe" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1w81suLSqoQ" role="2DRAPQ">
      <property role="2DPR8u" value=":: Generated by MPS" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZ$Gy" role="2DRAPQ">
      <property role="2DPR8u" value="::----------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4u4Jh" role="2DRAPQ">
      <property role="2DPR8u" value="SET IDEA_PATHS_SELECTOR=" />
      <node concept="17Uvod" id="7C7qUK4u5SH" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="7C7qUK4u5SI" role="3zH0cK">
          <node concept="3clFbS" id="7C7qUK4u5SJ" role="2VODD2">
            <node concept="3clFbF" id="7C7qUK4u5TW" role="3cqZAp">
              <node concept="3cpWs3" id="7C7qUK4uXPW" role="3clFbG">
                <node concept="3zGtF$" id="7C7qUK4uXSV" role="3uHU7B" />
                <node concept="2OqwBi" id="7C7qUK4u5W_" role="3uHU7w">
                  <node concept="30H73N" id="7C7qUK4u5TV" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfMf" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1QEui$pn7AZ" role="2DRAPQ">
      <property role="2DPR8u" value="SET PRODUCT=%s" />
      <node concept="17Uvod" id="1QEui$pnbiI" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="1QEui$pnbiJ" role="3zH0cK">
          <node concept="3clFbS" id="1QEui$pnbiK" role="2VODD2">
            <node concept="3clFbF" id="1_qxE7kNM52" role="3cqZAp">
              <node concept="2OqwBi" id="1_qxE7kNMW4" role="3clFbG">
                <node concept="3zGtF$" id="1_qxE7kNM51" role="2Oq$k0" />
                <node concept="2cAKMz" id="1_qxE7kNNKe" role="2OqNvi">
                  <node concept="3K4zz7" id="1_qxE7kNPp0" role="2cAKU6">
                    <node concept="Xl_RD" id="1_qxE7kNPtd" role="3K4E3e">
                      <property role="Xl_RC" value="MPS" />
                    </node>
                    <node concept="2OqwBi" id="1QEui$pne$X" role="3K4Cdx">
                      <node concept="2OqwBi" id="1QEui$pne$Y" role="2Oq$k0">
                        <node concept="30H73N" id="1QEui$pne$Z" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1QEui$pne_0" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="1QEui$pne_1" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="1QEui$pne_6" role="3K4GZi">
                      <node concept="2OqwBi" id="1QEui$pne_7" role="2Oq$k0">
                        <node concept="2OqwBi" id="1QEui$pne_8" role="2Oq$k0">
                          <node concept="30H73N" id="1QEui$pne_9" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1QEui$pne_a" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1QEui$pne_b" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfMh" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfMj" role="37wK5m" />
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
    <node concept="2DRAP_" id="1w81suLSqoW" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtElZDYh" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZF4T" role="2DRAPQ">
      <property role="2DPR8u" value=":: Ensure IDE_HOME points to the directory where the IDE is installed." />
    </node>
    <node concept="2DRAP_" id="4eWOtElZGby" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZHic" role="2DRAPQ">
      <property role="2DPR8u" value="SET IDE_BIN_DIR=%~dp0" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZKrh" role="2DRAPQ">
      <property role="2DPR8u" value="FOR /F &quot;delims=&quot; %%i in (&quot;%IDE_BIN_DIR%\..&quot;) DO SET &quot;IDE_HOME=%%~fi&quot;" />
    </node>
    <node concept="2DRAP_" id="61awNsXLWq4" role="2DRAPQ" />
    <node concept="2DRAP_" id="61awNsXLYMH" role="2DRAPQ">
      <property role="2DPR8u" value="IF &quot;%IDE_BIN_DIR:~-8%&quot; == &quot;bin\win\&quot; (" />
    </node>
    <node concept="2DRAP_" id="61awNsXLZZ6" role="2DRAPQ">
      <property role="2DPR8u" value="  echo." />
    </node>
    <node concept="2DRAP_" id="61awNsXM1bw" role="2DRAPQ">
      <property role="2DPR8u" value="  echo    You are trying to run MPS from generic distribution" />
      <node concept="17Uvod" id="2g$3PZUpJI2" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="2g$3PZUpJI3" role="3zH0cK">
          <node concept="3clFbS" id="2g$3PZUpJI4" role="2VODD2">
            <node concept="3clFbJ" id="2g$3PZUpK7j" role="3cqZAp">
              <node concept="3clFbS" id="2g$3PZUpK7k" role="3clFbx">
                <node concept="3cpWs6" id="2g$3PZUpK7l" role="3cqZAp">
                  <node concept="3zGtF$" id="2g$3PZUpK7m" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="2g$3PZUpK7n" role="3clFbw">
                <node concept="2OqwBi" id="2g$3PZUpK7o" role="2Oq$k0">
                  <node concept="30H73N" id="2g$3PZUpK7p" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2g$3PZUpK7q" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="2g$3PZUpK7r" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="2g$3PZUpK7s" role="3cqZAp" />
            <node concept="3clFbF" id="2g$3PZUpK7t" role="3cqZAp">
              <node concept="2YIFZM" id="2g$3PZUpK7u" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="2g$3PZUpK7v" role="37wK5m">
                  <property role="Xl_RC" value="  echo    You are trying to run %s from generic distribution" />
                </node>
                <node concept="2OqwBi" id="2g$3PZUpK7w" role="37wK5m">
                  <node concept="2OqwBi" id="2g$3PZUpK7x" role="2Oq$k0">
                    <node concept="2OqwBi" id="2g$3PZUpK7y" role="2Oq$k0">
                      <node concept="30H73N" id="2g$3PZUpK7z" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2g$3PZUpK7$" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUpK7_" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMk" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMm" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="61awNsXM2nV" role="2DRAPQ">
      <property role="2DPR8u" value="  echo Please first copy content of &quot;%IDE_BIN_DIR%&quot;" />
    </node>
    <node concept="2DRAP_" id="61awNsXM3$n" role="2DRAPQ">
      <property role="2DPR8u" value="  echo into its parent directory (&quot;%IDE_BIN_DIR:~0,-4%&quot;^)" />
    </node>
    <node concept="2DRAP_" id="61awNsXM4KO" role="2DRAPQ">
      <property role="2DPR8u" value="  echo and then run mps.bat from there" />
      <node concept="17Uvod" id="2g$3PZUpJYD" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="2g$3PZUpJYE" role="3zH0cK">
          <node concept="3clFbS" id="2g$3PZUpJYF" role="2VODD2">
            <node concept="3clFbJ" id="2g$3PZUpKMh" role="3cqZAp">
              <node concept="3clFbS" id="2g$3PZUpKMi" role="3clFbx">
                <node concept="3cpWs6" id="2g$3PZUpKMj" role="3cqZAp">
                  <node concept="3zGtF$" id="2g$3PZUpKMk" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="2g$3PZUpKMl" role="3clFbw">
                <node concept="2OqwBi" id="2g$3PZUpKMm" role="2Oq$k0">
                  <node concept="30H73N" id="2g$3PZUpKMn" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2g$3PZUpKMo" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="2g$3PZUpKMp" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="2g$3PZUpKMq" role="3cqZAp" />
            <node concept="3clFbF" id="2g$3PZUpKMr" role="3cqZAp">
              <node concept="2YIFZM" id="2g$3PZUpKMs" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="2g$3PZUpKMt" role="37wK5m">
                  <property role="Xl_RC" value="  echo and then run %s.bat from there" />
                </node>
                <node concept="2OqwBi" id="2g$3PZUpKMu" role="37wK5m">
                  <node concept="2OqwBi" id="2g$3PZUpKMv" role="2Oq$k0">
                    <node concept="2OqwBi" id="2g$3PZUpKMw" role="2Oq$k0">
                      <node concept="30H73N" id="2g$3PZUpKMx" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2g$3PZUpKMy" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUpNHd" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMn" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMp" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="61awNsXM5Xi" role="2DRAPQ">
      <property role="2DPR8u" value="  echo." />
    </node>
    <node concept="2DRAP_" id="61awNsXM79L" role="2DRAPQ">
      <property role="2DPR8u" value="  pause" />
    </node>
    <node concept="2DRAP_" id="61awNsXM8mh" role="2DRAPQ">
      <property role="2DPR8u" value="  exit" />
    </node>
    <node concept="2DRAP_" id="61awNsXM9yM" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZLxX" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtElZL_W" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZMg5" role="2DRAPQ">
      <property role="2DPR8u" value=":: Locate a JDK installation directory which will be used to run the IDE." />
    </node>
    <node concept="2DRAP_" id="1w81suLSqpb" role="2DRAPQ">
      <property role="2DPR8u" value=":: Try (in order): MPS_JDK, mps%BITS%.exe.jdk, ..\jre, JDK_HOME, JAVA_HOME." />
      <node concept="17Uvod" id="4eWOtEm0Gwf" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm0Gwg" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm0Gwh" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJ$4A" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJ$4B" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJ$4C" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJ$4D" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJ$4E" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJ$4F" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJ$4G" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJ$4H" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJ$4I" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJEZU" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtEm0HAv" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm0HAw" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="4eWOtEm0HAx" role="37wK5m">
                  <property role="Xl_RC" value=":: Try (in order): %s_JDK, %s%%BITS%%.exe.jdk, ..\\jre, JDK_HOME, JAVA_HOME." />
                </node>
                <node concept="2OqwBi" id="4eWOtEm0HAy" role="37wK5m">
                  <node concept="2OqwBi" id="4eWOtEm0HAz" role="2Oq$k0">
                    <node concept="2OqwBi" id="4eWOtEm0HA$" role="2Oq$k0">
                      <node concept="30H73N" id="4eWOtEm0HA_" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4eWOtEm0HAA" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4eWOtEm0HAB" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMq" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMs" role="37wK5m" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ4SEO" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ4SEP" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ4SEQ" role="2Oq$k0">
                      <node concept="30H73N" id="RfNsRQ4SER" role="2Oq$k0" />
                      <node concept="3TrEf2" id="RfNsRQ4SES" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUpo_2" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMt" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMv" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="NkL_Hn1m9U" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="NkL_Hn1m9V" role="3zH0cK">
          <node concept="3clFbS" id="NkL_Hn1m9W" role="2VODD2">
            <node concept="3clFbJ" id="NkL_Hn1m9X" role="3cqZAp">
              <node concept="3clFbS" id="NkL_Hn1m9Y" role="3clFbx">
                <node concept="3cpWs6" id="NkL_Hn1m9Z" role="3cqZAp">
                  <node concept="3zGtF$" id="NkL_Hn1ma0" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="NkL_Hn1ma1" role="3clFbw">
                <node concept="2OqwBi" id="NkL_Hn1ma2" role="2Oq$k0">
                  <node concept="30H73N" id="NkL_Hn1ma3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="NkL_Hn1ma4" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="NkL_Hn1ma5" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="NkL_Hn1ma6" role="3cqZAp" />
            <node concept="3clFbF" id="NkL_Hn1ma7" role="3cqZAp">
              <node concept="2YIFZM" id="NkL_Hn1ma8" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="NkL_Hn1ma9" role="37wK5m">
                  <property role="Xl_RC" value=":: Try (in order): %s_JDK, %s%%BITS%%.exe.jdk, ..\\jre, JDK_HOME, JAVA_HOME." />
                </node>
                <node concept="2OqwBi" id="NkL_Hn1maa" role="37wK5m">
                  <node concept="2OqwBi" id="NkL_Hn1mab" role="2Oq$k0">
                    <node concept="2OqwBi" id="NkL_Hn1mac" role="2Oq$k0">
                      <node concept="30H73N" id="NkL_Hn1mad" role="2Oq$k0" />
                      <node concept="3TrEf2" id="NkL_Hn1mae" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="NkL_Hn1maf" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMw" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMy" role="37wK5m" />
                  </node>
                </node>
                <node concept="2OqwBi" id="NkL_Hn1mai" role="37wK5m">
                  <node concept="2OqwBi" id="NkL_Hn1maj" role="2Oq$k0">
                    <node concept="2OqwBi" id="NkL_Hn1mak" role="2Oq$k0">
                      <node concept="30H73N" id="NkL_Hn1mal" role="2Oq$k0" />
                      <node concept="3TrEf2" id="NkL_Hn1mam" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="NkL_Hn1man" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMz" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfM_" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtElZNmO" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZQFF" role="2DRAPQ">
      <property role="2DPR8u" value="SET JDK=" />
    </node>
    <node concept="2DRAP_" id="1QEui$pmG5o" role="2DRAPQ">
      <property role="2DPR8u" value="SET IDEA_VENDOR_NAME=JetBrains" />
      <node concept="17Uvod" id="1QEui$pmK4N" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="1QEui$pmK4O" role="3zH0cK">
          <node concept="3clFbS" id="1QEui$pmK4P" role="2VODD2">
            <node concept="3clFbJ" id="1QEui$pmNmh" role="3cqZAp">
              <node concept="3clFbS" id="1QEui$pmNmi" role="3clFbx">
                <node concept="3cpWs6" id="1QEui$pmNmj" role="3cqZAp">
                  <node concept="3zGtF$" id="1QEui$pmNmk" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="1QEui$pmNml" role="3clFbw">
                <node concept="2OqwBi" id="1QEui$pmNmm" role="2Oq$k0">
                  <node concept="30H73N" id="1QEui$pmNmn" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1QEui$pmNmo" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1QEui$pmNmp" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="1QEui$pmNmS" role="3cqZAp">
              <node concept="2YIFZM" id="1QEui$pmNmT" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="1QEui$pmNmU" role="37wK5m">
                  <property role="Xl_RC" value="SET IDEA_VENDOR_NAME=%s" />
                </node>
                <node concept="2OqwBi" id="6RvRF8fBZKb" role="37wK5m">
                  <node concept="2OqwBi" id="6RvRF8fBZbz" role="2Oq$k0">
                    <node concept="30H73N" id="6RvRF8fBYMd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6RvRF8fBZvW" role="2OqNvi">
                      <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMA" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:6RvRF8fBDEC" resolve="getVendor" />
                    <node concept="10Nm6u" id="70OdufORfMC" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtElZSZh" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtElZT3m" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%MPS_JDK%&quot; SET &quot;JDK=%MPS_JDK%&quot;" />
      <node concept="17Uvod" id="4eWOtEm0K9a" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm0K9b" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm0K9c" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJA0J" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJA0K" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJA0L" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJA0M" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJA0N" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJA0O" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJA0P" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJA0Q" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJA0R" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJAIK" role="3cqZAp" />
            <node concept="3cpWs8" id="4eWOtEm14o$" role="3cqZAp">
              <node concept="3cpWsn" id="4eWOtEm14o_" role="3cpWs9">
                <property role="TrG5h" value="productShortName" />
                <node concept="17QB3L" id="4eWOtEm14ox" role="1tU5fm" />
                <node concept="2OqwBi" id="4eWOtEm14oA" role="33vP2m">
                  <node concept="2OqwBi" id="4eWOtEm14oB" role="2Oq$k0">
                    <node concept="2OqwBi" id="4eWOtEm14oC" role="2Oq$k0">
                      <node concept="30H73N" id="4eWOtEm14oD" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4eWOtEm14oE" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4eWOtEm14oF" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMD" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMF" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4eWOtEm0LgY" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm0LgZ" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="4eWOtEm0Lh0" role="37wK5m">
                  <property role="Xl_RC" value="IF EXIST \&quot;%%%s_JDK%%\&quot; SET \&quot;JDK=%%%s_JDK%%\&quot;" />
                </node>
                <node concept="37vLTw" id="4eWOtEm14oI" role="37wK5m">
                  <ref role="3cqZAo" node="4eWOtEm14o_" resolve="productShortName" />
                </node>
                <node concept="37vLTw" id="4eWOtEm16$1" role="37wK5m">
                  <ref role="3cqZAo" node="4eWOtEm14o_" resolve="productShortName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtElZWnM" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JDK%&quot; GOTO check" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm01Yh" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm022u" role="2DRAPQ">
      <property role="2DPR8u" value="SET BITS=64" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm039q" role="2DRAPQ">
      <property role="2DPR8u" value="SET USER_JDK64_FILE=%APPDATA%\%IDEA_VENDOR_NAME%\MPS\mps%BITS%.exe.jdk" />
      <node concept="17Uvod" id="4eWOtEm0hdB" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm0hdC" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm0hdD" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJFIu" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJFIv" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJFIw" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJFIx" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJFIy" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJFIz" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJFI$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJFI_" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJFIA" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJG8S" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtEm0ihn" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm0iho" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="4eWOtEm0ihp" role="37wK5m">
                  <property role="Xl_RC" value="SET USER_JDK64_FILE=%%APPDATA%%\\%%IDEA_VENDOR_NAME%%\\%s\\%s%%BITS%%.exe.jdk" />
                </node>
                <node concept="2OqwBi" id="4eWOtEm0ihq" role="37wK5m">
                  <node concept="30H73N" id="4eWOtEm0ihr" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfMG" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ0HAp" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ0HAq" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ0HAr" role="2Oq$k0">
                      <node concept="30H73N" id="RfNsRQ0HAs" role="2Oq$k0" />
                      <node concept="3TrEf2" id="RfNsRQ0HAt" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUpn89" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMI" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMK" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtEm04gn" role="2DRAPQ">
      <property role="2DPR8u" value="SET BITS=" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm05nl" role="2DRAPQ">
      <property role="2DPR8u" value="SET USER_JDK_FILE=%APPDATA%\%IDEA_VENDOR_NAME%\MPS\mps%BITS%.exe.jdk" />
      <node concept="17Uvod" id="4eWOtEm0mAl" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm0mAm" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm0mAn" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJHa_" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJHaA" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJHaB" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJHaC" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJHaD" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJHaE" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJHaF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJHaG" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJHaH" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJGLJ" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtEm0mIT" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm0mIU" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="4eWOtEm0mIV" role="37wK5m">
                  <property role="Xl_RC" value="SET USER_JDK_FILE=%%APPDATA%%\\%%IDEA_VENDOR_NAME%%\\%s\\%s%%BITS%%.exe.jdk" />
                </node>
                <node concept="2OqwBi" id="4eWOtEm0mIW" role="37wK5m">
                  <node concept="30H73N" id="4eWOtEm0mIX" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfML" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ0KNr" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ0KNs" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ0KNt" role="2Oq$k0">
                      <node concept="30H73N" id="RfNsRQ0KNu" role="2Oq$k0" />
                      <node concept="3TrEf2" id="RfNsRQ0KNv" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUppZQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMN" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMP" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtEm06uk" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%USER_JDK64_FILE%&quot; (" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm07_k" role="2DRAPQ">
      <property role="2DPR8u" value="  SET /P JDK=&lt;%USER_JDK64_FILE%" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm08Gl" role="2DRAPQ">
      <property role="2DPR8u" value=") ELSE (" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm09Nn" role="2DRAPQ">
      <property role="2DPR8u" value="  IF EXIST &quot;%USER_JDK_FILE%&quot; SET /P JDK=&lt;%USER_JDK_FILE%" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0aUq" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0c58" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%JDK%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0dcd" role="2DRAPQ">
      <property role="2DPR8u" value="  IF NOT EXIST &quot;%JDK%&quot; SET &quot;JDK=%IDE_HOME%\%JDK%&quot;" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0ejj" role="2DRAPQ">
      <property role="2DPR8u" value="  IF EXIST &quot;%JDK%&quot; GOTO check" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0fqq" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0n$t" role="2DRAPQ" />
    <node concept="2DRAP_" id="2XRBtU2epmd" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%IDE_HOME%\jbr&quot; SET &quot;JDK=%IDE_HOME%\jbr&quot;" />
    </node>
    <node concept="2DRAP_" id="2XRBtU2epme" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JDK%&quot; GOTO check" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0r2h" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm0uqx" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JDK_HOME%&quot; SET &quot;JDK=%JDK_HOME%&quot;" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0v$J" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JDK%&quot; GOTO check" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0wIY" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm0wNO" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JAVA_HOME%&quot; SET &quot;JDK=%JAVA_HOME%&quot;" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0xY5" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm0y2X" role="2DRAPQ">
      <property role="2DPR8u" value=":check" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0zdg" role="2DRAPQ">
      <property role="2DPR8u" value="SET JAVA_EXE=%JDK%\bin\javaw.exe" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0_xT" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT EXIST &quot;%JAVA_EXE%&quot; (" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0AGf" role="2DRAPQ">
      <property role="2DPR8u" value="  ECHO ERROR: cannot start Jetbrains MPS." />
      <node concept="17Uvod" id="4eWOtEm0ZVA" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm0ZVB" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm0ZVC" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEJYLf" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEJYLg" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEJYLh" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEJYLi" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEJYLj" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEJYLk" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEJYLl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEJYLm" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEJYLn" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEJYKZ" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtEm10wJ" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm10wK" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="4eWOtEm10wL" role="37wK5m">
                  <property role="Xl_RC" value="  ECHO ERROR: cannot start %s." />
                </node>
                <node concept="2OqwBi" id="4eWOtEm10wM" role="37wK5m">
                  <node concept="2OqwBi" id="4eWOtEm10wN" role="2Oq$k0">
                    <node concept="2OqwBi" id="4eWOtEm10wO" role="2Oq$k0">
                      <node concept="30H73N" id="4eWOtEm10wP" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4eWOtEm10wQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4eWOtEm10wR" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMQ" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMS" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtEm0BQA" role="2DRAPQ">
      <property role="2DPR8u" value="  ECHO No JDK found. Please validate either MPS_JDK, JDK_HOME or JAVA_HOME points to valid JDK installation." />
      <node concept="17Uvod" id="4eWOtEm1044" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="4eWOtEm1045" role="3zH0cK">
          <node concept="3clFbS" id="4eWOtEm1046" role="2VODD2">
            <node concept="3clFbJ" id="mVos7TjtDM" role="3cqZAp">
              <node concept="3clFbS" id="mVos7TjtDN" role="3clFbx">
                <node concept="3cpWs6" id="mVos7TjtDO" role="3cqZAp">
                  <node concept="3zGtF$" id="mVos7TjtDP" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="mVos7TjtDQ" role="3clFbw">
                <node concept="2OqwBi" id="mVos7TjtDR" role="2Oq$k0">
                  <node concept="30H73N" id="mVos7TjtDS" role="2Oq$k0" />
                  <node concept="3TrEf2" id="mVos7TjtDT" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="mVos7TjtDU" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="mVos7TjsU_" role="3cqZAp" />
            <node concept="3clFbF" id="4eWOtEm12wH" role="3cqZAp">
              <node concept="2YIFZM" id="4eWOtEm12wI" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="4eWOtEm12wJ" role="37wK5m">
                  <property role="Xl_RC" value="  ECHO No JDK found. Please validate either %s_JDK, JDK_HOME or JAVA_HOME points to valid JDK installation." />
                </node>
                <node concept="2OqwBi" id="4eWOtEm12wK" role="37wK5m">
                  <node concept="2OqwBi" id="4eWOtEm12wL" role="2Oq$k0">
                    <node concept="2OqwBi" id="4eWOtEm12wM" role="2Oq$k0">
                      <node concept="30H73N" id="4eWOtEm12wN" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4eWOtEm12wO" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4eWOtEm12wP" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMT" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMV" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtEm0Ebn" role="2DRAPQ">
      <property role="2DPR8u" value="  EXIT /B" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm0FlL" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm19F0" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm19KZ" role="2DRAPQ">
      <property role="2DPR8u" value="SET JRE=%JDK%" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm1b1N" role="2DRAPQ">
      <property role="2DPR8u" value="IF EXIST &quot;%JRE%\jre&quot; SET &quot;JRE=%JDK%\jre&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2T3D" role="2DRAPQ" />
    <node concept="2DRAP_" id="3MPxqbC2IRD" role="2DRAPQ">
      <property role="2DPR8u" value="SET BITS=" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2KNC" role="2DRAPQ">
      <property role="2DPR8u" value="FINDSTR /B /C:&quot;OS_ARCH=\&quot;x86_64\&quot;&quot; &quot;%JRE%\release&quot; &gt; NUL" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2M_w" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT ERRORLEVEL 1 SET BITS=64" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2OiA" role="2DRAPQ">
      <property role="2DPR8u" value="FINDSTR /B /C:&quot;OS_ARCH=\&quot;amd64\&quot;&quot; &quot;%JRE%\release&quot; &gt; NUL" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2PWI" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT ERRORLEVEL 1 SET BITS=64" />
    </node>
    <node concept="2DRAP_" id="2XRBtU2esOG" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtElZXuB" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtElZYDA" role="2DRAPQ">
      <property role="2DPR8u" value=":: Collect JVM options and properties." />
    </node>
    <node concept="2DRAP_" id="4eWOtElZXyJ" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm1ge_" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%MPS_PROPERTIES%&quot; == &quot;&quot; SET IDE_PROPERTIES_PROPERTY=&quot;-Didea.properties.file=%MPS_PROPERTIES%&quot;" />
      <node concept="17Uvod" id="NkL_HmLTS$" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="NkL_HmLTS_" role="3zH0cK">
          <node concept="3clFbS" id="NkL_HmLTSA" role="2VODD2">
            <node concept="3clFbJ" id="NkL_HmLU1n" role="3cqZAp">
              <node concept="3clFbS" id="NkL_HmLU1o" role="3clFbx">
                <node concept="3cpWs6" id="NkL_HmLU1p" role="3cqZAp">
                  <node concept="3zGtF$" id="NkL_HmLU1q" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="NkL_HmLU1r" role="3clFbw">
                <node concept="2OqwBi" id="NkL_HmLU1s" role="2Oq$k0">
                  <node concept="30H73N" id="NkL_HmLU1t" role="2Oq$k0" />
                  <node concept="3TrEf2" id="NkL_HmLU1u" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="NkL_HmLU1v" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="NkL_HmLU1w" role="3cqZAp" />
            <node concept="3cpWs8" id="NkL_HmM4AA" role="3cqZAp">
              <node concept="3cpWsn" id="NkL_HmM4AB" role="3cpWs9">
                <property role="TrG5h" value="script" />
                <node concept="17QB3L" id="NkL_HmM4Av" role="1tU5fm" />
                <node concept="2OqwBi" id="NkL_Hn1n8W" role="33vP2m">
                  <node concept="2OqwBi" id="NkL_Hn1n8X" role="2Oq$k0">
                    <node concept="2OqwBi" id="NkL_Hn1n8Y" role="2Oq$k0">
                      <node concept="30H73N" id="NkL_Hn1n8Z" role="2Oq$k0" />
                      <node concept="3TrEf2" id="NkL_Hn1n90" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="NkL_Hn1n91" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfMW" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfMY" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="NkL_HmLU1x" role="3cqZAp">
              <node concept="2YIFZM" id="NkL_HmLU1y" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="NkL_HmLU1z" role="37wK5m">
                  <property role="Xl_RC" value="IF NOT \&quot;%%%s_PROPERTIES%%\&quot; == \&quot;\&quot; SET IDE_PROPERTIES_PROPERTY=\&quot;-Didea.properties.file=%%%s_PROPERTIES%%\&quot;" />
                </node>
                <node concept="37vLTw" id="NkL_HmM4AL" role="37wK5m">
                  <ref role="3cqZAo" node="NkL_HmM4AB" resolve="script" />
                </node>
                <node concept="37vLTw" id="NkL_HmM4AK" role="37wK5m">
                  <ref role="3cqZAo" node="NkL_HmM4AB" resolve="script" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtElZZKu" role="2DRAPQ" />
    <node concept="2DRAP_" id="3MPxqbC5VCr" role="2DRAPQ">
      <property role="2DPR8u" value="SET VM_OPTIONS_FILE=" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5Sks" role="2DRAPQ">
      <property role="2DPR8u" value="SET USER_VM_OPTIONS_FILE=" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5TZV" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%{0}_VM_OPTIONS%&quot; == &quot;&quot; (" />
      <node concept="17Uvod" id="3MPxqbC68v4" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3MPxqbC68v5" role="3zH0cK">
          <node concept="3clFbS" id="3MPxqbC68v6" role="2VODD2">
            <node concept="3SKdUt" id="3MPxqbC6a5J" role="3cqZAp">
              <node concept="1PaTwC" id="3MPxqbC6a5K" role="1aUNEU">
                <node concept="3oM_SD" id="3MPxqbC6a75" role="1PaTwD">
                  <property role="3oM_SC" value="I" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6a8w" role="1PaTwD">
                  <property role="3oM_SC" value="know" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aaq" role="1PaTwD">
                  <property role="3oM_SC" value="MessageFormat" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6ags" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6agY" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aiw" role="1PaTwD">
                  <property role="3oM_SC" value="end-user" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aq0" role="1PaTwD">
                  <property role="3oM_SC" value="text," />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6ass" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6auR" role="1PaTwD">
                  <property role="3oM_SC" value="I'm" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6awP" role="1PaTwD">
                  <property role="3oM_SC" value="sort" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6ayR" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6azw" role="1PaTwD">
                  <property role="3oM_SC" value="afraid" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aCL" role="1PaTwD">
                  <property role="3oM_SC" value="of" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aMr" role="1PaTwD">
                  <property role="3oM_SC" value="too" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aPu" role="1PaTwD">
                  <property role="3oM_SC" value="many" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aR_" role="1PaTwD">
                  <property role="3oM_SC" value="%%" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aU5" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="3MPxqbC6aUO" role="1PaTwD">
                  <property role="3oM_SC" value="String.format" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3MPxqbC69wa" role="3cqZAp">
              <node concept="2YIFZM" id="3MPxqbC69Lu" role="3clFbG">
                <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
                <node concept="3zGtF$" id="3MPxqbC69TV" role="37wK5m" />
                <node concept="3K4zz7" id="3MPxqbC6ega" role="37wK5m">
                  <node concept="Xl_RD" id="3MPxqbC6ewN" role="3K4E3e">
                    <property role="Xl_RC" value="MPS" />
                  </node>
                  <node concept="2OqwBi" id="3MPxqbC6cJA" role="3K4Cdx">
                    <node concept="2OqwBi" id="3MPxqbC6bS6" role="2Oq$k0">
                      <node concept="30H73N" id="3MPxqbC6bBb" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3MPxqbC6cjT" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="3MPxqbC6dp0" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3MPxqbC6fkd" role="3K4GZi">
                    <node concept="2OqwBi" id="3MPxqbC6fke" role="2Oq$k0">
                      <node concept="2OqwBi" id="3MPxqbC6fkf" role="2Oq$k0">
                        <node concept="30H73N" id="3MPxqbC6fkg" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3MPxqbC6fkh" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3MPxqbC6fki" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfMZ" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                      <node concept="10Nm6u" id="70OdufORfN1" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3MPxqbC61y6" role="2DRAPQ">
      <property role="2DPR8u" value="  :: 1. %&lt;IDE_NAME&gt;_VM_OPTIONS%" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC62YH" role="2DRAPQ">
      <property role="2DPR8u" value="  IF EXIST &quot;%{0}_VM_OPTIONS%&quot; SET &quot;VM_OPTIONS_FILE=%{0}_VM_OPTIONS%&quot;" />
      <node concept="17Uvod" id="3MPxqbC6g4J" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3MPxqbC6g4K" role="3zH0cK">
          <node concept="3clFbS" id="3MPxqbC6g4L" role="2VODD2">
            <node concept="3clFbF" id="3MPxqbC6gse" role="3cqZAp">
              <node concept="2YIFZM" id="3MPxqbC6gsf" role="3clFbG">
                <ref role="1Pybhc" to="25x5:~MessageFormat" resolve="MessageFormat" />
                <ref role="37wK5l" to="25x5:~MessageFormat.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="3zGtF$" id="3MPxqbC6gsg" role="37wK5m" />
                <node concept="3K4zz7" id="3MPxqbC6gsh" role="37wK5m">
                  <node concept="Xl_RD" id="3MPxqbC6gsi" role="3K4E3e">
                    <property role="Xl_RC" value="MPS" />
                  </node>
                  <node concept="2OqwBi" id="3MPxqbC6gsj" role="3K4Cdx">
                    <node concept="2OqwBi" id="3MPxqbC6gsk" role="2Oq$k0">
                      <node concept="30H73N" id="3MPxqbC6gsl" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3MPxqbC6gsm" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3w_OXm" id="3MPxqbC6gsn" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="3MPxqbC6gso" role="3K4GZi">
                    <node concept="2OqwBi" id="3MPxqbC6gsp" role="2Oq$k0">
                      <node concept="2OqwBi" id="3MPxqbC6gsq" role="2Oq$k0">
                        <node concept="30H73N" id="3MPxqbC6gsr" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3MPxqbC6gss" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="3MPxqbC6gst" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfN2" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                      <node concept="10Nm6u" id="70OdufORfN4" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3MPxqbC64Rf" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6OBr" role="2DRAPQ">
      <property role="2DPR8u" value=":: custom value from MPS team to reduce typo risk" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6Xdp" role="2DRAPQ">
      <property role="2DPR8u" value="SET &quot;VMOPTIONS_FNAME=%PRODUCT%%BITS%.exe.vmoptions&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6QEG" role="2DRAPQ">
      <property role="2DPR8u" value="::" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC66y$" role="2DRAPQ">
      <property role="2DPR8u" value="IF &quot;%VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6kSr" role="2DRAPQ">
      <property role="2DPR8u" value="  :: 2. &lt;IDE_HOME&gt;\bin\[win\]&lt;exe_name&gt;.vmoptions ..." />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6mJZ" role="2DRAPQ">
      <property role="2DPR8u" value="  IF EXIST &quot;%IDE_BIN_DIR%\%VMOPTIONS_FNAME%&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6oxY" role="2DRAPQ">
      <property role="2DPR8u" value="    SET &quot;VM_OPTIONS_FILE=%IDE_BIN_DIR%\%VMOPTIONS_FNAME%&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6qhW" role="2DRAPQ">
      <property role="2DPR8u" value="  ) ELSE IF EXIST &quot;%IDE_BIN_DIR%\win\%VMOPTIONS_FNAME%&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6sjn" role="2DRAPQ">
      <property role="2DPR8u" value="    SET &quot;VM_OPTIONS_FILE=%IDE_BIN_DIR%\win\%VMOPTIONS_FNAME%&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6u1b" role="2DRAPQ">
      <property role="2DPR8u" value="  )" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6vat" role="2DRAPQ">
      <property role="2DPR8u" value="  :: ... [+ &lt;IDE_HOME&gt;.vmoptions (Toolbox) || &lt;config_directory&gt;\&lt;exe_name&gt;.vmoptions]" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6x6_" role="2DRAPQ">
      <property role="2DPR8u" value="  IF EXIST &quot;%IDE_HOME%.vmoptions&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6ySg" role="2DRAPQ">
      <property role="2DPR8u" value="    SET &quot;USER_VM_OPTIONS_FILE=%IDE_HOME%.vmoptions&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6$BK" role="2DRAPQ">
      <property role="2DPR8u" value="  ) ELSE IF EXIST &quot;%APPDATA%\%IDEA_VENDOR_NAME%\%IDEA_PATHS_SELECTOR%\%VMOPTIONS_FNAME%&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6AxD" role="2DRAPQ">
      <property role="2DPR8u" value="    SET &quot;USER_VM_OPTIONS_FILE=%APPDATA%\%IDEA_VENDOR_NAME%\%IDEA_PATHS_SELECTOR%\%VMOPTIONS_FNAME%&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6Cjn" role="2DRAPQ">
      <property role="2DPR8u" value="  )" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC6j6u" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7gSH" role="2DRAPQ" />
    <node concept="2DRAP_" id="1w81suLSrCQ" role="2DRAPQ">
      <property role="2DPR8u" value="SET ACC=" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7rSI" role="2DRAPQ">
      <property role="2DPR8u" value="SET USER_GC=" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7tEX" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%USER_VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7vkd" role="2DRAPQ">
      <property role="2DPR8u" value="  SET ACC=&quot;-Djb.vmOptionsFile=%USER_VM_OPTIONS_FILE%&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7qar" role="2DRAPQ">
      <property role="2DPR8u" value="  FINDSTR /R /C:&quot;-XX:\+.*GC&quot; &quot;%USER_VM_OPTIONS_FILE%&quot; &gt; NUL" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7DOQ" role="2DRAPQ">
      <property role="2DPR8u" value="  IF NOT ERRORLEVEL 1 SET USER_GC=yes" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7Fr_" role="2DRAPQ">
      <property role="2DPR8u" value=") ELSE IF NOT &quot;%VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7H5J" role="2DRAPQ">
      <property role="2DPR8u" value="  SET ACC=&quot;-Djb.vmOptionsFile=%VM_OPTIONS_FILE%&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7IDU" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7Ks8" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7Npu" role="2DRAPQ">
      <property role="2DPR8u" value="  IF &quot;%USER_GC%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7P1h" role="2DRAPQ">
      <property role="2DPR8u" value="    FOR /F &quot;eol=# usebackq delims=&quot; %%i IN (&quot;%VM_OPTIONS_FILE%&quot;) DO CALL SET &quot;ACC=%%ACC%% %%i&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7M1H" role="2DRAPQ">
      <property role="2DPR8u" value="  ) ELSE (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7T1R" role="2DRAPQ">
      <property role="2DPR8u" value="    FOR /F &quot;eol=# usebackq delims=&quot; %%i IN (`FINDSTR /R /V /C:&quot;-XX:\+Use.*GC&quot; &quot;%VM_OPTIONS_FILE%&quot;`) DO CALL SET &quot;ACC=%%ACC%% %%i&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7UTu" role="2DRAPQ">
      <property role="2DPR8u" value="  )" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7Wwl" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7Yjx" role="2DRAPQ">
      <property role="2DPR8u" value="IF NOT &quot;%USER_VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7ZTc" role="2DRAPQ">
      <property role="2DPR8u" value="  FOR /F &quot;eol=# usebackq delims=&quot; %%i IN (&quot;%USER_VM_OPTIONS_FILE%&quot;) DO CALL SET &quot;ACC=%%ACC%% %%i&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC81xI" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC7fhi" role="2DRAPQ">
      <property role="2DPR8u" value="IF &quot;%VM_OPTIONS_FILE%%USER_VM_OPTIONS_FILE%&quot; == &quot;&quot; (" />
    </node>
    <node concept="2DRAP_" id="NkL_HmMMIg" role="2DRAPQ">
      <property role="2DPR8u" value="  ECHO ERROR: cannot find a VM options file." />
    </node>
    <node concept="2DRAP_" id="NkL_HmMLcx" role="2DRAPQ">
      <property role="2DPR8u" value=")" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm1vV9" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm2wu$" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm22os" role="2DRAPQ">
      <property role="2DPR8u" value="SET COMMON_JVM_ARGS=&quot;-XX:ErrorFile=%USERPROFILE%\java_error_in_%PRODUCT%_%%p.log&quot; &quot;-XX:HeapDumpPath=%USERPROFILE%\java_error_in_%PRODUCT%.hprof&quot; -Didea.paths.selector=%IDEA_PATHS_SELECTOR% -Didea.vendor.name=&quot;%IDEA_VENDOR_NAME%&quot; %IDE_PROPERTIES_PROPERTY%" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm22ts" role="2DRAPQ">
      <property role="2DPR8u" value="SET IDE_JVM_ARGS=-Dintellij.platform.load.app.info.from.resources=true -Didea.jre.check=true -Dpty4j.preferred.native.folder=&quot;%IDE_HOME%/lib/pty4j&quot; -Djna.boot.library.path=&quot;%IDE_HOME%/lib/jna&quot; -Dskiko.library.path=&quot;%IDE_HOME%/lib/skiko-awt-runtime-all&quot; -Djava.system.class.loader=com.intellij.util.lang.PathClassLoader -Dij.startup.error.report.url=&quot;https://youtrack.jetbrains.com/newissue?project=MPS&amp;clearDraft=true&amp;summary=$TITLE$&amp;description=$DESCR$&quot;" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm264z" role="2DRAPQ">
      <property role="2DPR8u" value="SET ALL_JVM_ARGS=%ACC% %COMMON_JVM_ARGS% %IDE_JVM_ARGS%" />
    </node>
    <node concept="2DRAP_" id="2lwFGYOZYdZ" role="2DRAPQ" />
    <node concept="2DRAP_" id="2HFczqniER9" role="2DRAPQ">
      <property role="2DPR8u" value="SET &quot;ARG_FILE=%TMP%\mps-launcher-%RANDOM%%RANDOM%.tmp&quot;" />
    </node>
    <node concept="2DRAP_" id="2HFczqniIrL" role="2DRAPQ">
      <property role="2DPR8u" value="ECHO|SET /P=&quot;-cp &quot; &gt; &quot;%ARG_FILE%&quot;" />
    </node>
    <node concept="2DRAP_" id="2HFczqnHLh7" role="2DRAPQ" />
    <node concept="2DRAP_" id="2HFczqnHMaW" role="2DRAPQ">
      <property role="2DPR8u" value="ECHO|SET /P=&quot;&quot;%IDE_HOME:\=/%/XXXXXXXXXX&quot;;&quot; &gt;&gt; &quot;%ARG_FILE%&quot;" />
      <node concept="1WS0z7" id="2HFczqnHOVH" role="lGtFl">
        <node concept="3JmXsc" id="2HFczqnHOVK" role="3Jn$fo">
          <node concept="3clFbS" id="2HFczqnHOVL" role="2VODD2">
            <node concept="3clFbF" id="2HFczqnHOVR" role="3cqZAp">
              <node concept="2OqwBi" id="2HFczqnHOVM" role="3clFbG">
                <node concept="3Tsc0h" id="2HFczqnHOVP" role="2OqNvi">
                  <ref role="3TtcxE" to="s7om:3nFPImNgRsC" resolve="bootClasspath" />
                </node>
                <node concept="30H73N" id="2HFczqnHOVQ" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="2HFczqnHSU4" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="2HFczqnHSU5" role="3zH0cK">
          <node concept="3clFbS" id="2HFczqnHSU6" role="2VODD2">
            <node concept="3clFbF" id="2HFczqnHUbu" role="3cqZAp">
              <node concept="2OqwBi" id="2HFczqnHUXW" role="3clFbG">
                <node concept="3zGtF$" id="2HFczqnHUbt" role="2Oq$k0" />
                <node concept="liA8E" id="2HFczqnHVZP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                  <node concept="Xl_RD" id="2HFczqnHVZS" role="37wK5m">
                    <property role="Xl_RC" value="XXXXXXXXXX" />
                  </node>
                  <node concept="2OqwBi" id="2HFczqnHX1V" role="37wK5m">
                    <node concept="30H73N" id="2HFczqnHWBy" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2HFczqnI1Ut" role="2OqNvi">
                      <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="2HFczqnHHdy" role="2DRAPQ">
      <property role="2DPR8u" value="ECHO|SET /P=&quot;&quot;%JDK:\=/%/lib/tools.jar&quot;;&quot; &gt;&gt; &quot;%ARG_FILE%&quot;" />
    </node>
    <node concept="2DRAP_" id="2HFczqnHEvH" role="2DRAPQ" />
    <node concept="2DRAP_" id="4eWOtEm2FPr" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="4eWOtEm2H2y" role="2DRAPQ">
      <property role="2DPR8u" value=":: Run the IDE." />
    </node>
    <node concept="2DRAP_" id="4eWOtEm2IfE" role="2DRAPQ">
      <property role="2DPR8u" value=":: ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="1w81suLSqs$" role="2DRAPQ">
      <property role="2DPR8u" value="SET MAIN_CLASS=" />
      <node concept="17Uvod" id="1w81suLSqsX" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="1w81suLSqt0" role="3zH0cK">
          <node concept="3clFbS" id="1w81suLSqt1" role="2VODD2">
            <node concept="3clFbF" id="1w81suLSqt7" role="3cqZAp">
              <node concept="3cpWs3" id="1w81suLSqCM" role="3clFbG">
                <node concept="3zGtF$" id="1w81suLSqGA" role="3uHU7B" />
                <node concept="2OqwBi" id="1w81suLSqt2" role="3uHU7w">
                  <node concept="3TrcHB" id="1w81suLSqt5" role="2OqNvi">
                    <ref role="3TsBF5" to="s7om:3nFPImNh3ii" resolve="startupClass" />
                  </node>
                  <node concept="30H73N" id="1w81suLSqt6" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="4eWOtEm2LWg" role="2DRAPQ">
      <property role="2DPR8u" value="start &quot;&quot; &quot;%JAVA_EXE%&quot; ^" />
    </node>
    <node concept="2DRAP_" id="2HFczqniBl5" role="2DRAPQ">
      <property role="2DPR8u" value="  @&quot;%ARG_FILE%&quot; ^" />
    </node>
    <node concept="2DRAP_" id="2_gL36cKoQM" role="2DRAPQ">
      <property role="2DPR8u" value="  %ALL_JVM_ARGS% ^" />
    </node>
    <node concept="2DRAP_" id="3zmidjZjDBA" role="2DRAPQ">
      <property role="2DPR8u" value="  -Dide.native.launcher=false ^" />
    </node>
    <node concept="2DRAP_" id="2_gL36cKmlz" role="2DRAPQ">
      <property role="2DPR8u" value="  -Didea.main.class.name=%MAIN_CLASS% ^" />
    </node>
    <node concept="2DRAP_" id="2_gL36cFQVU" role="2DRAPQ">
      <property role="2DPR8u" value="  --add-opens=aaa/bbb=ALL-UNNAMED ^" />
      <node concept="17Uvod" id="2_gL36cFU6j" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="2_gL36cFU6k" role="3zH0cK">
          <node concept="3clFbS" id="2_gL36cFU6l" role="2VODD2">
            <node concept="3cpWs8" id="2_gL36cFVV$" role="3cqZAp">
              <node concept="3cpWsn" id="2_gL36cFVV_" role="3cpWs9">
                <property role="TrG5h" value="sb" />
                <node concept="3uibUv" id="2_gL36cFVVA" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="2_gL36cFW4L" role="33vP2m">
                  <node concept="1pGfFk" id="2_gL36cFW4m" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                    <node concept="Xl_RD" id="2_gL36cG1OP" role="37wK5m">
                      <property role="Xl_RC" value="  " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2_gL36cKhMm" role="3cqZAp">
              <node concept="2GrKxI" id="2_gL36cKhMo" role="2Gsz3X">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2YIFZM" id="2_gL36cKlwA" role="2GsD0m">
                <ref role="37wK5l" to="8ig8:2_gL36cJXuW" resolve="getWindowsOpenedPackages" />
                <ref role="1Pybhc" to="8ig8:2IRg8740kUe" resolve="OpenedPackages" />
              </node>
              <node concept="3clFbS" id="2_gL36cKhMs" role="2LFqv$">
                <node concept="3clFbF" id="1$mDfZ_xJGJ" role="3cqZAp">
                  <node concept="2OqwBi" id="1$mDfZ_xOoB" role="3clFbG">
                    <node concept="37vLTw" id="1$mDfZ_xJGH" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_gL36cFVV_" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="1$mDfZ_xW9r" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="1$mDfZ_HaeY" role="37wK5m">
                        <node concept="Xl_RD" id="1$mDfZ_Hjv8" role="3uHU7w">
                          <property role="Xl_RC" value="=ALL-UNNAMED " />
                        </node>
                        <node concept="3cpWs3" id="1$mDfZ_Gz43" role="3uHU7B">
                          <node concept="Xl_RD" id="1$mDfZ_y68s" role="3uHU7B">
                            <property role="Xl_RC" value="--add-opens=" />
                          </node>
                          <node concept="2GrUjf" id="2_gL36cKlI2" role="3uHU7w">
                            <ref role="2Gs0qQ" node="2_gL36cKhMo" resolve="p" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2_gL36cFWZM" role="3cqZAp">
              <node concept="2OqwBi" id="2_gL36cG07D" role="3clFbG">
                <node concept="2OqwBi" id="2_gL36cFXGU" role="2Oq$k0">
                  <node concept="37vLTw" id="2_gL36cFWZK" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_gL36cFVV_" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2_gL36cFYEJ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="Xl_RD" id="2_gL36cFYOP" role="37wK5m">
                      <property role="Xl_RC" value="^" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2_gL36cG0m9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="2_gL36cxth1" role="2DRAPQ">
      <property role="2DPR8u" value="  %MAIN_CLASS% ^" />
    </node>
    <node concept="2DRAP_" id="2_gL36cxs9P" role="2DRAPQ">
      <property role="2DPR8u" value="  %*" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC8gxf" role="2DRAPQ" />
    <node concept="2DRAP_" id="4A8SxGHrdxv" role="2DRAPQ">
      <property role="2DPR8u" value="exit" />
    </node>
    <node concept="n94m4" id="1w81suLRS6P" role="lGtFl">
      <ref role="n9lRv" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    </node>
    <node concept="17Uvod" id="1w81suLRS6R" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="1w81suLRS6U" role="3zH0cK">
        <node concept="3clFbS" id="1w81suLRS6V" role="2VODD2">
          <node concept="3clFbF" id="1w81suLRS71" role="3cqZAp">
            <node concept="3cpWs3" id="1w81suLRTdL" role="3clFbG">
              <node concept="Xl_RD" id="1w81suLRTdQ" role="3uHU7w">
                <property role="Xl_RC" value=".bat" />
              </node>
              <node concept="2OqwBi" id="2g$3PZU416Z" role="3uHU7B">
                <node concept="2OqwBi" id="2g$3PZU3ZVq" role="2Oq$k0">
                  <node concept="2OqwBi" id="1w81suLRS6W" role="2Oq$k0">
                    <node concept="30H73N" id="1w81suLRS70" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2g$3PZU3Zsu" role="2OqNvi">
                      <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2g$3PZU40mj" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfN5" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                  <node concept="10Nm6u" id="70OdufORfN7" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DRAQV" id="1w81suM2oZF">
    <property role="TrG5h" value="mps.vmoptions" />
    <node concept="2DRAP_" id="1w81suM2tjS" role="2DRAPQ">
      <property role="2DPR8u" value="lines" />
      <node concept="2b32R4" id="1w81suM2tk5" role="lGtFl">
        <node concept="3JmXsc" id="1w81suM2tk9" role="2P8S$">
          <node concept="3clFbS" id="1w81suM2tkd" role="2VODD2">
            <node concept="3clFbF" id="2lwFGYPeLX2" role="3cqZAp">
              <node concept="2OqwBi" id="2lwFGYPeLX3" role="3clFbG">
                <node concept="30H73N" id="2lwFGYPeLX6" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORfN8" role="2OqNvi">
                  <ref role="37wK5l" to="tgdw:2M0p1n5GA6s" resolve="getVmOptionsTextLines" />
                  <node concept="3clFbT" id="70OdufORfNa" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="1w81suM2oZG" role="lGtFl">
      <ref role="n9lRv" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    </node>
    <node concept="17Uvod" id="1w81suM2oZS" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="1w81suM2oZT" role="3zH0cK">
        <node concept="3clFbS" id="1w81suM2oZU" role="2VODD2">
          <node concept="3clFbF" id="1w81suM2p04" role="3cqZAp">
            <node concept="2OqwBi" id="1w81suM2rpK" role="3clFbG">
              <node concept="30H73N" id="1w81suM2rjm" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORfNb" role="2OqNvi">
                <ref role="37wK5l" to="tgdw:2lwFGYOYlNP" resolve="getVmOptionsFileName" />
                <node concept="3clFbT" id="70OdufORfNd" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DRAQV" id="3T7P3nA9sus">
    <property role="TrG5h" value="mps.sh" />
    <node concept="2DRAP_" id="3T7P3nA9$gR" role="2DRAPQ">
      <property role="2DPR8u" value="#!/bin/sh" />
    </node>
    <node concept="2DRAP_" id="1SWE651AoFG" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="3T7P3nA9$gW" role="2DRAPQ">
      <property role="2DPR8u" value="# JetBrains MPS startup script." />
      <node concept="17Uvod" id="BsOHnjlfKZ" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlfL0" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlfL1" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEK3$N" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEK3$O" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEK3$P" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEK3$Q" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEK3$R" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEK3$S" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEK3$T" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEK3$U" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEK3$V" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEK203" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlmSa" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlne7" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="BsOHnjlk$p" role="37wK5m">
                  <property role="Xl_RC" value="# %s startup script." />
                </node>
                <node concept="2OqwBi" id="BsOHnjljId" role="37wK5m">
                  <node concept="2OqwBi" id="BsOHnjljIe" role="2Oq$k0">
                    <node concept="2OqwBi" id="BsOHnjljIf" role="2Oq$k0">
                      <node concept="30H73N" id="BsOHnjljIg" role="2Oq$k0" />
                      <node concept="3TrEf2" id="BsOHnjljIh" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="BsOHnjljIi" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNe" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNg" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1SWE651Ap3x" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="3T7P3nA9$vU" role="2DRAPQ">
      <property role="2DPR8u" value="# Generated by MPS" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tmDW" role="2DRAPQ">
      <property role="2DPR8u" value="IDEA_PATHS_SELECTOR=" />
      <node concept="17Uvod" id="7C7qUK4tnNs" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="7C7qUK4tnNt" role="3zH0cK">
          <node concept="3clFbS" id="7C7qUK4tnNu" role="2VODD2">
            <node concept="3clFbF" id="7C7qUK4tovO" role="3cqZAp">
              <node concept="3cpWs3" id="7C7qUK4toz5" role="3clFbG">
                <node concept="3zGtF$" id="7C7qUK4tovN" role="3uHU7B" />
                <node concept="2OqwBi" id="7C7qUK4u1FR" role="3uHU7w">
                  <node concept="30H73N" id="7C7qUK4u1CN" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfNh" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1SWE651Aprn" role="2DRAPQ" />
    <node concept="2DRAP_" id="1SWE651Apw1" role="2DRAPQ">
      <property role="2DPR8u" value="message()" />
    </node>
    <node concept="2DRAP_" id="1SWE651AriV" role="2DRAPQ">
      <property role="2DPR8u" value="{" />
    </node>
    <node concept="2DRAP_" id="1SWE651ArYg" role="2DRAPQ">
      <property role="2DPR8u" value="  TITLE=&quot;Cannot start JetBrains MPS&quot;" />
      <node concept="17Uvod" id="BsOHnjlr2Y" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlr2Z" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlr30" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEK4it" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEK4iu" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEK4iv" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEK4iw" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEK4ix" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEK4iy" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEK4iz" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEK4i$" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEK4i_" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEK4I6" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlt5T" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlt5U" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="BsOHnjlrbv" role="37wK5m">
                  <property role="Xl_RC" value="  TITLE=\&quot;Cannot start %s\&quot;" />
                </node>
                <node concept="2OqwBi" id="BsOHnjlt5W" role="37wK5m">
                  <node concept="2OqwBi" id="BsOHnjlt5X" role="2Oq$k0">
                    <node concept="2OqwBi" id="BsOHnjlt5Y" role="2Oq$k0">
                      <node concept="30H73N" id="BsOHnjlt5Z" role="2Oq$k0" />
                      <node concept="3TrEf2" id="BsOHnjlt60" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="BsOHnjlt61" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNj" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNl" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1SWE651Asmb" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -n &quot;$(command -v zenity)&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="1SWE651AsDD" role="2DRAPQ">
      <property role="2DPR8u" value="    zenity --error --title=&quot;$TITLE&quot; --text=&quot;$1&quot; --no-wrap" />
    </node>
    <node concept="2DRAP_" id="1SWE651AsX8" role="2DRAPQ">
      <property role="2DPR8u" value="  elif [ -n &quot;$(command -v kdialog)&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="1SWE651AtgC" role="2DRAPQ">
      <property role="2DPR8u" value="    kdialog --error &quot;$1&quot; --title &quot;$TITLE&quot;" />
    </node>
    <node concept="2DRAP_" id="1SWE651Aube" role="2DRAPQ">
      <property role="2DPR8u" value="  elif [ -n &quot;$(command -v notify-send)&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="1SWE651AuuM" role="2DRAPQ">
      <property role="2DPR8u" value="    notify-send &quot;ERROR: $TITLE&quot; &quot;$1&quot;" />
    </node>
    <node concept="2DRAP_" id="1SWE651At$9" role="2DRAPQ">
      <property role="2DPR8u" value="  elif [ -n &quot;$(command -v xmessage)&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="1SWE651AtRF" role="2DRAPQ">
      <property role="2DPR8u" value="    xmessage -center &quot;ERROR: $TITLE: $1&quot;" />
    </node>
    <node concept="2DRAP_" id="1SWE651AuMn" role="2DRAPQ">
      <property role="2DPR8u" value="  else" />
    </node>
    <node concept="2DRAP_" id="1SWE651Ava_" role="2DRAPQ">
      <property role="2DPR8u" value="    printf &quot;ERROR: %s\n%s\n&quot; &quot;$TITLE&quot; &quot;$1&quot;" />
    </node>
    <node concept="2DRAP_" id="1SWE651AvyE" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="1SWE651ArAm" role="2DRAPQ">
      <property role="2DPR8u" value="}" />
    </node>
    <node concept="2DRAP_" id="3T7P3nA9$vZ" role="2DRAPQ" />
    <node concept="2DRAP_" id="3T7P3nA9$w5" role="2DRAPQ">
      <property role="2DPR8u" value="UNAME=$(command -v uname)" />
    </node>
    <node concept="2DRAP_" id="6bEF3_KQNhO" role="2DRAPQ">
      <property role="2DPR8u" value="GREP=$(command -v egrep)" />
    </node>
    <node concept="2DRAP_" id="1SWE651Aece" role="2DRAPQ">
      <property role="2DPR8u" value="CUT=$(command -v cut)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhwj_U" role="2DRAPQ">
      <property role="2DPR8u" value="READLINK=$(command -v readlink)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3NA0" role="2DRAPQ">
      <property role="2DPR8u" value="REALPATH=$(command -v realpath)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhwjXi" role="2DRAPQ">
      <property role="2DPR8u" value="XARGS=$(command -v xargs)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhwkkX" role="2DRAPQ">
      <property role="2DPR8u" value="DIRNAME=$(command -v dirname)" />
    </node>
    <node concept="2DRAP_" id="1SWE651AgzL" role="2DRAPQ">
      <property role="2DPR8u" value="CAT=$(command -v cat)" />
    </node>
    <node concept="2DRAP_" id="1SWE651AhA5" role="2DRAPQ">
      <property role="2DPR8u" value="SED=$(command -v sed)" />
    </node>
    <node concept="2DRAP_" id="1SWE651AigQ" role="2DRAPQ" />
    <node concept="2DRAP_" id="1SWE651Ai$1" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$UNAME&quot; ] || [ -z &quot;$GREP&quot; ] || [ -z &quot;$CUT&quot; ] || [ -z &quot;$DIRNAME&quot; ] || [ -z &quot;$CAT&quot; ] || [ -z &quot;$REALPATH&quot; ] || \" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3Xn8" role="2DRAPQ">
      <property role="2DPR8u" value="   [ -z &quot;$XARGS&quot; ] || [ -z &quot;$SED&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="1SWE651AiRd" role="2DRAPQ">
      <property role="2DPR8u" value="  message &quot;Required tools are missing - check beginning of \&quot;$0\&quot; file for details.&quot;" />
    </node>
    <node concept="2DRAP_" id="1SWE651AjeS" role="2DRAPQ">
      <property role="2DPR8u" value="  exit 1" />
    </node>
    <node concept="2DRAP_" id="1SWE651AjA$" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="1SWE651AhTe" role="2DRAPQ" />
    <node concept="2DRAP_" id="3O4ms4th4QJ" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2034" />
    </node>
    <node concept="2DRAP_" id="3O4ms4th6M8" role="2DRAPQ">
      <property role="2DPR8u" value="GREP_OPTIONS=''" />
    </node>
    <node concept="2DRAP_" id="1SWE651AjTN" role="2DRAPQ">
      <property role="2DPR8u" value="OS_TYPE=$(&quot;$UNAME&quot; -s)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3Fll" role="2DRAPQ">
      <property role="2DPR8u" value="OS_ARCH=$(uname -m)" />
    </node>
    <node concept="2DRAP_" id="1SWE651Akh_" role="2DRAPQ" />
    <node concept="2DRAP_" id="1SWE651Ak$L" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="1SWE651AkS4" role="2DRAPQ">
      <property role="2DPR8u" value="# Ensure $IDE_HOME points to the directory where the IDE is installed." />
    </node>
    <node concept="2DRAP_" id="1SWE651Albo" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC40i8" role="2DRAPQ">
      <property role="2DPR8u" value="IDE_BIN_HOME=$(&quot;$DIRNAME&quot; &quot;$(&quot;$REALPATH&quot; &quot;$0&quot;)&quot;)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC45wE" role="2DRAPQ">
      <property role="2DPR8u" value="IDE_HOME=$(&quot;$DIRNAME&quot; &quot;${IDE_BIN_HOME}&quot;)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC471k" role="2DRAPQ">
      <property role="2DPR8u" value="CONFIG_HOME=&quot;${XDG_CONFIG_HOME:-${HOME}/.config}&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC48t2" role="2DRAPQ" />
    <node concept="2DRAP_" id="3MPxqbC40Hp" role="2DRAPQ" />
    <node concept="2DRAP_" id="hoHCGht6jb" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="hoHCGht6_C" role="2DRAPQ">
      <property role="2DPR8u" value="# Locate a JDK installation directory command -v will be used to run the IDE." />
    </node>
    <node concept="2DRAP_" id="hoHCGht6S6" role="2DRAPQ">
      <property role="2DPR8u" value="# Try (in order): $MPS_JDK, .../mps.jdk, .../jbr, .../jbr-x86, $JDK_HOME, $JAVA_HOME, &quot;java&quot; in $PATH." />
      <node concept="17Uvod" id="BsOHnjlBFg" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlBFh" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlBFi" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEK5rT" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEK5rU" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEK5rV" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEK5rW" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEK5rX" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEK5rY" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEK5rZ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEK5s0" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEK5s1" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEK5rv" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlC9A" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlC9B" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="BsOHnjlC9C" role="37wK5m">
                  <property role="Xl_RC" value="# Try (in order): $%s_JDK, .../%s.jdk, .../jbr, .../jbr-x86, $JDK_HOME, $JAVA_HOME, \&quot;java\&quot; in $PATH." />
                </node>
                <node concept="2OqwBi" id="BsOHnjlC9D" role="37wK5m">
                  <node concept="2OqwBi" id="BsOHnjlC9E" role="2Oq$k0">
                    <node concept="2OqwBi" id="BsOHnjlC9F" role="2Oq$k0">
                      <node concept="30H73N" id="BsOHnjlC9G" role="2Oq$k0" />
                      <node concept="3TrEf2" id="BsOHnjlC9H" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="BsOHnjlG_X" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNm" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNo" role="37wK5m" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ0snv" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ0r$M" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ0r$N" role="2Oq$k0">
                      <node concept="2OqwBi" id="RfNsRQ0r$O" role="2Oq$k0">
                        <node concept="30H73N" id="RfNsRQ0r$P" role="2Oq$k0" />
                        <node concept="3TrEf2" id="RfNsRQ0r$Q" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="RfNsRQ0r$R" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfNp" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                      <node concept="10Nm6u" id="70OdufORfNr" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="RfNsRQ0tbp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="hoHCGht7Xm" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="5pqe9hgEw5o" role="2DRAPQ">
      <property role="2DPR8u" value="IDEA_VENDOR_NAME=JetBrains" />
      <node concept="17Uvod" id="5pqe9hgEypd" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="5pqe9hgEype" role="3zH0cK">
          <node concept="3clFbS" id="5pqe9hgEypf" role="2VODD2">
            <node concept="3clFbJ" id="5pqe9hgEytP" role="3cqZAp">
              <node concept="3clFbS" id="5pqe9hgEytQ" role="3clFbx">
                <node concept="3cpWs6" id="5pqe9hgEytR" role="3cqZAp">
                  <node concept="3zGtF$" id="5pqe9hgEytS" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="5pqe9hgEytT" role="3clFbw">
                <node concept="2OqwBi" id="5pqe9hgEytU" role="2Oq$k0">
                  <node concept="30H73N" id="5pqe9hgEytV" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5pqe9hgEytW" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="5pqe9hgEytX" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="5pqe9hgEyus" role="3cqZAp">
              <node concept="2YIFZM" id="5pqe9hgEyut" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="5pqe9hgEyuu" role="37wK5m">
                  <property role="Xl_RC" value="IDEA_VENDOR_NAME='%s'" />
                </node>
                <node concept="2OqwBi" id="6RvRF8fBPCe" role="37wK5m">
                  <node concept="2OqwBi" id="6RvRF8fBOAN" role="2Oq$k0">
                    <node concept="30H73N" id="6RvRF8fBOcd" role="2Oq$k0" />
                    <node concept="3TrEf2" id="6RvRF8fBPmJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNs" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:6RvRF8fBDEC" resolve="getVendor" />
                    <node concept="10Nm6u" id="70OdufORfNu" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3O4ms4thamu" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2154" />
    </node>
    <node concept="2DRAP_" id="1SWE651AvUK" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$MPS_JDK&quot; ] &amp;&amp; [ -x &quot;$MPS_JDK/bin/java&quot; ]; then" />
      <node concept="17Uvod" id="BsOHnjlHty" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlHtz" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlHt$" role="2VODD2">
            <node concept="3clFbJ" id="mVos7Tjptw" role="3cqZAp">
              <node concept="3clFbS" id="mVos7Tjptx" role="3clFbx">
                <node concept="3cpWs6" id="mVos7Tjpty" role="3cqZAp">
                  <node concept="3zGtF$" id="mVos7Tjptz" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="mVos7Tjpt$" role="3clFbw">
                <node concept="2OqwBi" id="mVos7Tjpt_" role="2Oq$k0">
                  <node concept="30H73N" id="mVos7TjptA" role="2Oq$k0" />
                  <node concept="3TrEf2" id="mVos7TjptB" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="mVos7TjptC" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="mVos7Tjpt8" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlHA6" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlHA7" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="BsOHnjlHA8" role="37wK5m">
                  <property role="Xl_RC" value="if [ -n \&quot;$%s_JDK\&quot; ] &amp;&amp; [ -x \&quot;$%s_JDK/bin/java\&quot; ]; then" />
                </node>
                <node concept="2OqwBi" id="BsOHnjlHA9" role="37wK5m">
                  <node concept="2OqwBi" id="BsOHnjlHAa" role="2Oq$k0">
                    <node concept="2OqwBi" id="BsOHnjlHAb" role="2Oq$k0">
                      <node concept="30H73N" id="BsOHnjlHAc" role="2Oq$k0" />
                      <node concept="3TrEf2" id="BsOHnjlHAd" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="BsOHnjlHAe" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNv" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNx" role="37wK5m" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3TEkTgEKb7u" role="37wK5m">
                  <node concept="2OqwBi" id="3TEkTgEKb7v" role="2Oq$k0">
                    <node concept="2OqwBi" id="3TEkTgEKb7w" role="2Oq$k0">
                      <node concept="30H73N" id="3TEkTgEKb7x" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3TEkTgEKb7y" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3TEkTgEKb7z" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNy" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfN$" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="1SWE651AwiR" role="2DRAPQ">
      <property role="2DPR8u" value="  JDK=&quot;$MPS_JDK&quot;" />
      <node concept="17Uvod" id="3TEkTgEKbDx" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="3TEkTgEKbDy" role="3zH0cK">
          <node concept="3clFbS" id="3TEkTgEKbDz" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEKbU_" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEKbUA" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEKbUB" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEKbUC" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEKbUD" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEKbUE" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEKbUF" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEKbUG" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEKbUH" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEKcg$" role="3cqZAp" />
            <node concept="3clFbF" id="3TEkTgEKcEH" role="3cqZAp">
              <node concept="2YIFZM" id="3TEkTgEKcEI" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="3TEkTgEKcEJ" role="37wK5m">
                  <property role="Xl_RC" value="  JDK=\&quot;$%s_JDK\&quot;" />
                </node>
                <node concept="2OqwBi" id="3TEkTgEKcEK" role="37wK5m">
                  <node concept="2OqwBi" id="3TEkTgEKcEL" role="2Oq$k0">
                    <node concept="2OqwBi" id="3TEkTgEKcEM" role="2Oq$k0">
                      <node concept="30H73N" id="3TEkTgEKcEN" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3TEkTgEKcEO" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="3TEkTgEKcEP" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfN_" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNB" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3O4ms4trEkr" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4trFWC" role="2DRAPQ" />
    <node concept="2DRAP_" id="BsOHnjlLoq" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ] &amp;&amp; [ -s &quot;${CONFIG_HOME}/$IDEA_VENDOR_NAME/MPS/mps.jdk&quot; ]; then" />
      <node concept="17Uvod" id="BsOHnjlT4K" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlT4L" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlT4M" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEKgu9" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEKgua" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEKgub" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEKguc" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEKgud" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEKgue" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEKguf" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEKgug" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEKguh" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEKg5J" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlWXX" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlWXY" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="BsOHnjlWXZ" role="37wK5m">
                  <property role="Xl_RC" value="if [ -z \&quot;$JDK\&quot; ] &amp;&amp; [ -s \&quot;${XDG_CONFIG_HOME:-$HOME/.config}/$IDEA_VENDOR_NAME/%s/%s.jdk\&quot; ]; then" />
                </node>
                <node concept="2OqwBi" id="BsOHnjm0rg" role="37wK5m">
                  <node concept="30H73N" id="3O4ms4trKZa" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfNC" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ0AvK" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ0AvL" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ0AvM" role="2Oq$k0">
                      <node concept="2OqwBi" id="RfNsRQ0AvN" role="2Oq$k0">
                        <node concept="30H73N" id="RfNsRQ0AvO" role="2Oq$k0" />
                        <node concept="3TrEf2" id="RfNsRQ0AvP" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="RfNsRQ0AvQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfNE" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                      <node concept="10Nm6u" id="70OdufORfNG" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="RfNsRQ0AvT" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="BsOHnjlOrA" role="2DRAPQ">
      <property role="2DPR8u" value="  USER_JRE=$(&quot;$CAT&quot; &quot;${CONFIG_HOME}/$IDEA_VENDOR_NAME/MPS/mps.jdk&quot;)" />
      <node concept="17Uvod" id="BsOHnjlTzK" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjlTzL" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjlTzM" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEKhgX" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEKhgY" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEKhgZ" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEKhh0" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEKhh1" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEKhh2" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEKhh3" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEKhh4" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEKhh5" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEKhgB" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjlXBQ" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjlXBR" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="BsOHnjlXBS" role="37wK5m">
                  <property role="Xl_RC" value="  USER_JRE=$(\&quot;$CAT\&quot; \&quot;${XDG_CONFIG_HOME:-$HOME/.config}/$IDEA_VENDOR_NAME/%s/%s.jdk\&quot;)" />
                </node>
                <node concept="2OqwBi" id="BsOHnjlUMR" role="37wK5m">
                  <node concept="30H73N" id="BsOHnjlUMS" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORfNH" role="2OqNvi">
                    <ref role="37wK5l" to="tgdw:BsOHnja5fe" resolve="getIdeaPathSelector" />
                  </node>
                </node>
                <node concept="2OqwBi" id="RfNsRQ0BZD" role="37wK5m">
                  <node concept="2OqwBi" id="RfNsRQ0BZE" role="2Oq$k0">
                    <node concept="2OqwBi" id="RfNsRQ0BZF" role="2Oq$k0">
                      <node concept="2OqwBi" id="RfNsRQ0BZG" role="2Oq$k0">
                        <node concept="30H73N" id="RfNsRQ0BZH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="RfNsRQ0BZI" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="RfNsRQ0BZJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfNJ" role="2OqNvi">
                      <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                      <node concept="10Nm6u" id="70OdufORfNL" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="RfNsRQ0BZM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="BsOHnjlXBH" role="3cqZAp" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3O4ms4tAo_J" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -x &quot;$USER_JRE/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tAsnp" role="2DRAPQ">
      <property role="2DPR8u" value="    JDK=&quot;$USER_JRE&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tAq$o" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tAtqN" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tAvpv" role="2DRAPQ" />
    <node concept="2DRAP_" id="3O4ms4tKXY1" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ] &amp;&amp; [ &quot;$OS_TYPE&quot; = &quot;Linux&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL0Pi" role="2DRAPQ">
      <property role="2DPR8u" value="  OS_ARCH=$(&quot;$UNAME&quot; -m)" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL3$f" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ &quot;$OS_ARCH&quot; = &quot;x86_64&quot; ] &amp;&amp; [ -d &quot;$IDE_HOME/jbr&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL4sd" role="2DRAPQ">
      <property role="2DPR8u" value="    JDK=&quot;$IDE_HOME/jbr&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL6mq" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL7jp" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -z &quot;$JDK&quot; ] &amp;&amp; [ -d &quot;$IDE_HOME/jbr-x86&quot; ] &amp;&amp; &quot;$IDE_HOME/jbr-x86/bin/java&quot; -version &gt; /dev/null 2&gt;&amp;1 ; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tL8bq" role="2DRAPQ">
      <property role="2DPR8u" value="    JDK=&quot;$IDE_HOME/jbr-x86&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLaaS" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLb2V" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLdUt" role="2DRAPQ" />
    <node concept="2DRAP_" id="3O4ms4tLe5W" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2153" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLeY1" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ] &amp;&amp; [ -n &quot;$JDK_HOME&quot; ] &amp;&amp; [ -x &quot;$JDK_HOME/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLgXz" role="2DRAPQ">
      <property role="2DPR8u" value="  JDK=&quot;$JDK_HOME&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLhPE" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLjL0" role="2DRAPQ" />
    <node concept="2DRAP_" id="3O4ms4tLjW$" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ] &amp;&amp; [ -n &quot;$JAVA_HOME&quot; ] &amp;&amp; [ -x &quot;$JAVA_HOME/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLkSW" role="2DRAPQ">
      <property role="2DPR8u" value="  JDK=&quot;$JAVA_HOME&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLlL7" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tKZXn" role="2DRAPQ" />
    <node concept="2DRAP_" id="3O4ms4tLnKJ" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLqCn" role="2DRAPQ">
      <property role="2DPR8u" value="  JDK_PATH=$(command -v java)" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLoQk" role="2DRAPQ" />
    <node concept="2DRAP_" id="hoHCGhtc9$" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -n &quot;$JDK_PATH&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtcwI" role="2DRAPQ">
      <property role="2DPR8u" value="    if [ &quot;$OS_TYPE&quot; = &quot;FreeBSD&quot; ] || [ &quot;$OS_TYPE&quot; = &quot;MidnightBSD&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtcRT" role="2DRAPQ">
      <property role="2DPR8u" value="      JAVA_LOCATION=$(JAVAVM_DRYRUN=yes java | &quot;$GREP&quot; '^JAVA_HOME' | &quot;$CUT&quot; -c11-)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtdf5" role="2DRAPQ">
      <property role="2DPR8u" value="      if [ -x &quot;$JAVA_LOCATION/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtdAi" role="2DRAPQ">
      <property role="2DPR8u" value="        JDK=&quot;$JAVA_LOCATION&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtdXw" role="2DRAPQ">
      <property role="2DPR8u" value="      fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtekJ" role="2DRAPQ">
      <property role="2DPR8u" value="    elif [ &quot;$OS_TYPE&quot; = &quot;SunOS&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhteFZ" role="2DRAPQ">
      <property role="2DPR8u" value="      JAVA_LOCATION=&quot;/usr/jdk/latest&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtf3g" role="2DRAPQ">
      <property role="2DPR8u" value="      if [ -x &quot;$JAVA_LOCATION/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtfqy" role="2DRAPQ">
      <property role="2DPR8u" value="        JDK=&quot;$JAVA_LOCATION&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtfLP" role="2DRAPQ">
      <property role="2DPR8u" value="      fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtg99" role="2DRAPQ">
      <property role="2DPR8u" value="    elif [ &quot;$OS_TYPE&quot; = &quot;Darwin&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtgwu" role="2DRAPQ">
      <property role="2DPR8u" value="      JAVA_LOCATION=$(/usr/libexec/java_home)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtgRO" role="2DRAPQ">
      <property role="2DPR8u" value="      if [ -x &quot;$JAVA_LOCATION/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhthfb" role="2DRAPQ">
      <property role="2DPR8u" value="        JDK=&quot;$JAVA_LOCATION&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhthAz" role="2DRAPQ">
      <property role="2DPR8u" value="      fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhthXW" role="2DRAPQ">
      <property role="2DPR8u" value="    fi" />
    </node>
    <node concept="2DRAP_" id="3O4ms4tLvjt" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtilm" role="2DRAPQ" />
    <node concept="2DRAP_" id="hoHCGhtiGL" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -z &quot;$JDK&quot; ] &amp;&amp; [ -n &quot;$JDK_PATH&quot; ] &amp;&amp; [ -x &quot;$READLINK&quot; ] &amp;&amp; [ -x &quot;$XARGS&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtj4d" role="2DRAPQ">
      <property role="2DPR8u" value="    JAVA_LOCATION=$(&quot;$READLINK&quot; -f &quot;$JDK_PATH&quot;)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtjrE" role="2DRAPQ">
      <property role="2DPR8u" value="    case &quot;$JAVA_LOCATION&quot; in" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtjN8" role="2DRAPQ">
      <property role="2DPR8u" value="      */jre/bin/java)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtkaB" role="2DRAPQ">
      <property role="2DPR8u" value="        JAVA_LOCATION=$(echo &quot;$JAVA_LOCATION&quot; | &quot;$XARGS&quot; &quot;$DIRNAME&quot; | &quot;$XARGS&quot; &quot;$DIRNAME&quot; | &quot;$XARGS&quot; &quot;$DIRNAME&quot;)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtky7" role="2DRAPQ">
      <property role="2DPR8u" value="        if [ ! -d &quot;$JAVA_LOCATION/bin&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtkTC" role="2DRAPQ">
      <property role="2DPR8u" value="          JAVA_LOCATION=&quot;$JAVA_LOCATION/jre&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtlha" role="2DRAPQ">
      <property role="2DPR8u" value="        fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtlCH" role="2DRAPQ">
      <property role="2DPR8u" value="        ;;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtm0h" role="2DRAPQ">
      <property role="2DPR8u" value="      *)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtmnQ" role="2DRAPQ">
      <property role="2DPR8u" value="        JAVA_LOCATION=$(echo &quot;$JAVA_LOCATION&quot; | &quot;$XARGS&quot; &quot;$DIRNAME&quot; | &quot;$XARGS&quot; &quot;$DIRNAME&quot;)" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtmJs" role="2DRAPQ">
      <property role="2DPR8u" value="        ;;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtn73" role="2DRAPQ">
      <property role="2DPR8u" value="    esac" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtnuF" role="2DRAPQ">
      <property role="2DPR8u" value="    if [ -x &quot;$JAVA_LOCATION/bin/java&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtnQk" role="2DRAPQ">
      <property role="2DPR8u" value="      JDK=&quot;$JAVA_LOCATION&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtodY" role="2DRAPQ">
      <property role="2DPR8u" value="    fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhto_D" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtoXl" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="1SWE651AxIZ" role="2DRAPQ" />
    <node concept="2DRAP_" id="1SWE651Ay2H" role="2DRAPQ">
      <property role="2DPR8u" value="JAVA_BIN=&quot;$JDK/bin/java&quot;" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtq01" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -z &quot;$JDK&quot; ] || [ ! -x &quot;$JAVA_BIN&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6oFn" role="2DRAPQ">
      <property role="2DPR8u" value="  X86_JRE_URL=&quot;https://download.jetbrains.com/idea/jbr-for-201.6668.121-linux-x86.tar.gz&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6qFK" role="2DRAPQ">
      <property role="2DPR8u" value="  # shellcheck disable=SC2166" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6uFU" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -n &quot;$X86_JRE_URL&quot; ] &amp;&amp; [ ! -d &quot;$IDE_HOME/jbr-x86&quot; ] &amp;&amp; [ &quot;$OS_ARCH&quot; = &quot;i386&quot; -o &quot;$OS_ARCH&quot; = &quot;i686&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6vKe" role="2DRAPQ">
      <property role="2DPR8u" value="    message &quot;To run IDE on a 32-bit system, please download 32-bit Java runtime from \&quot;$X86_JRE_URL\&quot; and unpack it into \&quot;jbr-x86\&quot; directory.&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6xfQ" role="2DRAPQ">
      <property role="2DPR8u" value="  else" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtqnL" role="2DRAPQ">
      <property role="2DPR8u" value="    message &quot;No JDK found. Please validate either MPS_JDK, JDK_HOME or JAVA_HOME environment variable points to valid JDK installation.&quot;" />
      <node concept="17Uvod" id="BsOHnjm55l" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="BsOHnjm55m" role="3zH0cK">
          <node concept="3clFbS" id="BsOHnjm55n" role="2VODD2">
            <node concept="3clFbJ" id="3TEkTgEKlYi" role="3cqZAp">
              <node concept="3clFbS" id="3TEkTgEKlYj" role="3clFbx">
                <node concept="3cpWs6" id="3TEkTgEKlYk" role="3cqZAp">
                  <node concept="3zGtF$" id="3TEkTgEKlYl" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TEkTgEKlYm" role="3clFbw">
                <node concept="2OqwBi" id="3TEkTgEKlYn" role="2Oq$k0">
                  <node concept="30H73N" id="3TEkTgEKlYo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3TEkTgEKlYp" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="3TEkTgEKlYq" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="3TEkTgEKlzN" role="3cqZAp" />
            <node concept="3clFbF" id="BsOHnjm5dT" role="3cqZAp">
              <node concept="2YIFZM" id="BsOHnjm5dU" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="BsOHnjm5dV" role="37wK5m">
                  <property role="Xl_RC" value="  message \&quot;No JDK found. Please validate either %s_JDK, JDK_HOME or JAVA_HOME environment variable points to valid JDK installation.\&quot;" />
                </node>
                <node concept="2OqwBi" id="BsOHnjm5dW" role="37wK5m">
                  <node concept="2OqwBi" id="BsOHnjm5dX" role="2Oq$k0">
                    <node concept="2OqwBi" id="BsOHnjm5dY" role="2Oq$k0">
                      <node concept="30H73N" id="BsOHnjm5dZ" role="2Oq$k0" />
                      <node concept="3TrEf2" id="BsOHnjm5e0" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="BsOHnjm5e1" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNM" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNO" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="3O4ms4u6zgj" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtqJy" role="2DRAPQ">
      <property role="2DPR8u" value="  exit 1" />
    </node>
    <node concept="2DRAP_" id="hoHCGhtr7k" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGht8gm" role="2DRAPQ" />
    <node concept="2DRAP_" id="3MPxqbC2fiE" role="2DRAPQ">
      <property role="2DPR8u" value="&quot;$GREP&quot; -q -E -e &quot;OS_ARCH=\&quot;(x86_64|amd64)\&quot;&quot; &quot;$JDK/release&quot; 2&gt; /dev/null &amp;&amp; BITS=&quot;64&quot; || BITS=&quot;&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC2iir" role="2DRAPQ" />
    <node concept="2DRAP_" id="7C7qUK4sR7A" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4sRIF" role="2DRAPQ">
      <property role="2DPR8u" value="# Collect JVM options and IDE properties." />
    </node>
    <node concept="2DRAP_" id="7C7qUK4sRr8" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6$aA" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2154" />
    </node>
    <node concept="2DRAP_" id="BsOHnjmajx" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$MPS_PROPERTIES&quot; ]; then" />
      <node concept="17Uvod" id="1Kdb5nd$n0u" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="1Kdb5nd$n0v" role="3zH0cK">
          <node concept="3clFbS" id="1Kdb5nd$n0w" role="2VODD2">
            <node concept="3clFbJ" id="1Kdb5nd$qxR" role="3cqZAp">
              <node concept="3clFbS" id="1Kdb5nd$qxS" role="3clFbx">
                <node concept="3cpWs6" id="1Kdb5nd$qxT" role="3cqZAp">
                  <node concept="3zGtF$" id="1Kdb5nd$qxU" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Kdb5nd$qxV" role="3clFbw">
                <node concept="2OqwBi" id="1Kdb5nd$qxW" role="2Oq$k0">
                  <node concept="30H73N" id="1Kdb5nd$qxX" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1Kdb5nd$qxY" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1Kdb5nd$qxZ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="1Kdb5nd$qy0" role="3cqZAp" />
            <node concept="3clFbF" id="1Kdb5nd$qyc" role="3cqZAp">
              <node concept="2YIFZM" id="1Kdb5nd$qyd" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="1Kdb5nd$qye" role="37wK5m">
                  <property role="Xl_RC" value="if [ -n \&quot;$%s_PROPERTIES\&quot; ]; then" />
                </node>
                <node concept="2OqwBi" id="1Kdb5nd$uFS" role="37wK5m">
                  <node concept="2OqwBi" id="1Kdb5nd$uFT" role="2Oq$k0">
                    <node concept="2OqwBi" id="1Kdb5nd$uFU" role="2Oq$k0">
                      <node concept="30H73N" id="1Kdb5nd$uFV" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1Kdb5nd$uFW" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1Kdb5nd$uFX" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNP" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNR" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="BsOHnjmbp5" role="2DRAPQ">
      <property role="2DPR8u" value="  IDE_PROPERTIES_PROPERTY=&quot;-Didea.properties.file=$MPS_PROPERTIES&quot;" />
      <node concept="17Uvod" id="1Kdb5nd$vCr" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="1Kdb5nd$vCs" role="3zH0cK">
          <node concept="3clFbS" id="1Kdb5nd$vCt" role="2VODD2">
            <node concept="3clFbJ" id="1Kdb5nd$vLa" role="3cqZAp">
              <node concept="3clFbS" id="1Kdb5nd$vLb" role="3clFbx">
                <node concept="3cpWs6" id="1Kdb5nd$vLc" role="3cqZAp">
                  <node concept="3zGtF$" id="1Kdb5nd$vLd" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="1Kdb5nd$vLe" role="3clFbw">
                <node concept="2OqwBi" id="1Kdb5nd$vLf" role="2Oq$k0">
                  <node concept="30H73N" id="1Kdb5nd$vLg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="1Kdb5nd$vLh" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="1Kdb5nd$vLi" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="1Kdb5nd$vLj" role="3cqZAp" />
            <node concept="3clFbF" id="1Kdb5nd$vLk" role="3cqZAp">
              <node concept="2YIFZM" id="1Kdb5nd$vLl" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="1Kdb5nd$vLm" role="37wK5m">
                  <property role="Xl_RC" value="  IDE_PROPERTIES_PROPERTY=\&quot;-Didea.properties.file=$%s_PROPERTIES\&quot;" />
                </node>
                <node concept="2OqwBi" id="1Kdb5nd$vLn" role="37wK5m">
                  <node concept="2OqwBi" id="1Kdb5nd$vLo" role="2Oq$k0">
                    <node concept="2OqwBi" id="1Kdb5nd$vLp" role="2Oq$k0">
                      <node concept="30H73N" id="1Kdb5nd$vLq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1Kdb5nd$vLr" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1Kdb5nd$vLs" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNS" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfNU" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="BsOHnjmcuE" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="BsOHnjmd$g" role="2DRAPQ" />
    <node concept="2DRAP_" id="BsOHnjmeRb" role="2DRAPQ">
      <property role="2DPR8u" value="VM_OPTIONS_FILE=&quot;&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC31oP" role="2DRAPQ">
      <property role="2DPR8u" value="USER_VM_OPTIONS_FILE=&quot;&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4u6Ahp" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2154" />
    </node>
    <node concept="2DRAP_" id="BsOHnjmg36" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$IDEA_VM_OPTIONS&quot; ] &amp;&amp; [ -r &quot;$IDEA_VM_OPTIONS&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="BsOHnjmh8K" role="2DRAPQ">
      <property role="2DPR8u" value="  # 1. $&lt;IDE_NAME&gt;_VM_OPTIONS" />
    </node>
    <node concept="2DRAP_" id="BsOHnjmier" role="2DRAPQ">
      <property role="2DPR8u" value="  VM_OPTIONS_FILE=&quot;$IDEA_VM_OPTIONS&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC34_n" role="2DRAPQ">
      <property role="2DPR8u" value="else" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC4oOa" role="2DRAPQ">
      <property role="2DPR8u" value="  # custom value from MPS team to reduce typo risk" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC4mgy" role="2DRAPQ">
      <property role="2DPR8u" value="  VMOPTIONS_FNAME=%s${BITS}.vmoptions" />
      <node concept="17Uvod" id="3MPxqbC4Ez_" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3MPxqbC4EzA" role="3zH0cK">
          <node concept="3clFbS" id="3MPxqbC4EzB" role="2VODD2">
            <node concept="3clFbF" id="3MPxqbC4LOt" role="3cqZAp">
              <node concept="2OqwBi" id="3MPxqbC4McQ" role="3clFbG">
                <node concept="3zGtF$" id="3MPxqbC4LOs" role="2Oq$k0" />
                <node concept="2cAKMz" id="3MPxqbC4MZF" role="2OqNvi">
                  <node concept="3K4zz7" id="3MPxqbC4Qey" role="2cAKU6">
                    <node concept="Xl_RD" id="3MPxqbC4Qez" role="3K4E3e">
                      <property role="Xl_RC" value="mps" />
                    </node>
                    <node concept="2OqwBi" id="3MPxqbC4Qe$" role="3K4Cdx">
                      <node concept="2OqwBi" id="3MPxqbC4Qe_" role="2Oq$k0">
                        <node concept="30H73N" id="3MPxqbC4QeA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3MPxqbC4QeB" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="3MPxqbC4QeC" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="3MPxqbC4QeD" role="3K4GZi">
                      <node concept="2OqwBi" id="3MPxqbC4QeE" role="2Oq$k0">
                        <node concept="2OqwBi" id="3MPxqbC4QeF" role="2Oq$k0">
                          <node concept="30H73N" id="3MPxqbC4QeG" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3MPxqbC4QeH" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3MPxqbC4QeI" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfNV" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfNX" role="37wK5m" />
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
    <node concept="2DRAP_" id="3MPxqbC4rnw" role="2DRAPQ">
      <property role="2DPR8u" value="  # " />
    </node>
    <node concept="2DRAP_" id="3MPxqbC387J" role="2DRAPQ">
      <property role="2DPR8u" value="  # 2. &lt;IDE_HOME&gt;/bin/[&lt;os&gt;/]&lt;bin_name&gt;.vmoptions ..." />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3aAP" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -r &quot;${IDE_BIN_HOME}/${VMOPTIONS_FNAME}&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3cHZ" role="2DRAPQ">
      <property role="2DPR8u" value="    VM_OPTIONS_FILE=&quot;${IDE_BIN_HOME}/${VMOPTIONS_FNAME}&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3eyL" role="2DRAPQ">
      <property role="2DPR8u" value="  else" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3gmq" role="2DRAPQ">
      <property role="2DPR8u" value="    test &quot;${OS_TYPE}&quot; = &quot;Darwin&quot; &amp;&amp; OS_SPECIFIC=&quot;mac&quot; || OS_SPECIFIC=&quot;linux&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3ihF" role="2DRAPQ">
      <property role="2DPR8u" value="    if [ -r &quot;${IDE_BIN_HOME}/${OS_SPECIFIC}/${VMOPTIONS_FNAME}&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3k48" role="2DRAPQ">
      <property role="2DPR8u" value="      VM_OPTIONS_FILE=&quot;${IDE_BIN_HOME}/${OS_SPECIFIC}/${VMOPTIONS_FNAME}&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3lOL" role="2DRAPQ">
      <property role="2DPR8u" value="    fi" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3nJs" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3pzx" role="2DRAPQ">
      <property role="2DPR8u" value="  # ... [+ &lt;IDE_HOME&gt;.vmoptions (Toolbox) || &lt;config_directory&gt;/&lt;bin_name&gt;.vmoptions]" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3rEu" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -r &quot;${IDE_HOME}.vmoptions&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3ve1" role="2DRAPQ">
      <property role="2DPR8u" value="    USER_VM_OPTIONS_FILE=&quot;${IDE_HOME}.vmoptions&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3wYh" role="2DRAPQ">
      <property role="2DPR8u" value="  elif [ -r &quot;${CONFIG_HOME}/${IDEA_VENDOR_NAME}/${IDEA_PATHS_SELECTOR}/${VMOPTIONS_FNAME}&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3yZP" role="2DRAPQ">
      <property role="2DPR8u" value="    USER_VM_OPTIONS_FILE=&quot;${CONFIG_HOME}/${IDEA_VENDOR_NAME}/${IDEA_PATHS_SELECTOR}/${VMOPTIONS_FNAME}&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3$Lb" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC3A_X" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4sVdJ" role="2DRAPQ" />
    <node concept="2DRAP_" id="7C7qUK4t0Rc" role="2DRAPQ">
      <property role="2DPR8u" value="VM_OPTIONS=&quot;&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC52hU" role="2DRAPQ">
      <property role="2DPR8u" value="USER_GC=&quot;&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC53vB" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$USER_VM_OPTIONS_FILE&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC56Xb" role="2DRAPQ">
      <property role="2DPR8u" value="  &quot;$GREP&quot; -q -e &quot;-XX:\+.*GC&quot; &quot;$USER_VM_OPTIONS_FILE&quot; &amp;&amp; USER_GC=&quot;yes&quot;" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC55ko" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC53FA" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$VM_OPTIONS_FILE&quot; -o -n &quot;$USER_VM_OPTIONS_FILE&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC59_r" role="2DRAPQ">
      <property role="2DPR8u" value="  if [ -z &quot;$USER_GC&quot; -o -z &quot;$VM_OPTIONS_FILE&quot; ]; then" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5bqO" role="2DRAPQ">
      <property role="2DPR8u" value="    VM_OPTIONS=$(&quot;$CAT&quot; &quot;$VM_OPTIONS_FILE&quot; &quot;$USER_VM_OPTIONS_FILE&quot; 2&gt; /dev/null | &quot;$GREP&quot; -v -e &quot;^#.*&quot;)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5cWk" role="2DRAPQ">
      <property role="2DPR8u" value="  else" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5hco" role="2DRAPQ">
      <property role="2DPR8u" value="    VM_OPTIONS=$({ &quot;$GREP&quot; -v -e &quot;-XX:\+Use.*GC&quot; &quot;$VM_OPTIONS_FILE&quot;; &quot;$CAT&quot; &quot;$USER_VM_OPTIONS_FILE&quot;; } 2&gt; /dev/null | &quot;$GREP&quot; -v -e &quot;^#.*&quot;)" />
    </node>
    <node concept="2DRAP_" id="3MPxqbC5j6s" role="2DRAPQ">
      <property role="2DPR8u" value="  fi" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4t34P" role="2DRAPQ">
      <property role="2DPR8u" value="else" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4t3tf" role="2DRAPQ">
      <property role="2DPR8u" value="  message &quot;Cannot find a VM options file&quot;" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4t1fw" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4t3Lc" role="2DRAPQ" />
    <node concept="2DRAP_" id="3T7P3nAar1X" role="2DRAPQ">
      <property role="2DPR8u" value="CLASSPATH=&quot;$CLASSPATH:$IDE_HOME/" />
      <node concept="1WS0z7" id="3T7P3nAar6W" role="lGtFl">
        <node concept="3JmXsc" id="3T7P3nAar6Z" role="3Jn$fo">
          <node concept="3clFbS" id="3T7P3nAar70" role="2VODD2">
            <node concept="3clFbF" id="3T7P3nAar76" role="3cqZAp">
              <node concept="2OqwBi" id="3T7P3nAar71" role="3clFbG">
                <node concept="3Tsc0h" id="3T7P3nAar74" role="2OqNvi">
                  <ref role="3TtcxE" to="s7om:3nFPImNgRsC" resolve="bootClasspath" />
                </node>
                <node concept="30H73N" id="3T7P3nAar75" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="3T7P3nAas8S" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3T7P3nAas8T" role="3zH0cK">
          <node concept="3clFbS" id="3T7P3nAas8U" role="2VODD2">
            <node concept="3clFbJ" id="5mHrw1WUh35" role="3cqZAp">
              <node concept="3clFbS" id="5mHrw1WUh37" role="3clFbx">
                <node concept="3cpWs6" id="5mHrw1WUqyx" role="3cqZAp">
                  <node concept="3cpWs3" id="5mHrw1WU_YY" role="3cqZAk">
                    <node concept="3cpWs3" id="5mHrw1WUxOj" role="3uHU7B">
                      <node concept="Xl_RD" id="5mHrw1WUrO9" role="3uHU7B">
                        <property role="Xl_RC" value="CLASSPATH=\&quot;$IDE_HOME/" />
                      </node>
                      <node concept="2OqwBi" id="5mHrw1WUzdO" role="3uHU7w">
                        <node concept="30H73N" id="5mHrw1WUytk" role="2Oq$k0" />
                        <node concept="3TrcHB" id="5mHrw1WU$f2" role="2OqNvi">
                          <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5mHrw1WUARu" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5mHrw1WUjEV" role="3clFbw">
                <node concept="3cmrfG" id="5mHrw1WUkjO" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="$GB7w" id="2wfHeYRCkcU" role="3uHU7B">
                  <property role="26SvY3" value="1jlY2aid0uu/index" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3T7P3nAas9i" role="3cqZAp">
              <node concept="3cpWs3" id="BsOHnjrbdi" role="3clFbG">
                <node concept="Xl_RD" id="BsOHnjrbdo" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="3cpWs3" id="3T7P3nAaspS" role="3uHU7B">
                  <node concept="3zGtF$" id="3T7P3nAas9h" role="3uHU7B" />
                  <node concept="2OqwBi" id="3T7P3nAaua9" role="3uHU7w">
                    <node concept="3TrcHB" id="3T7P3nAawRW" role="2OqNvi">
                      <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
                    </node>
                    <node concept="30H73N" id="3T7P3nAatr7" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="hoHCGhtrRd" role="2DRAPQ">
      <property role="2DPR8u" value="CLASSPATH=&quot;$CLASSPATH:$JDK/lib/tools.jar&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4urSEc" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2154" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4t86a" role="2DRAPQ">
      <property role="2DPR8u" value="if [ -n &quot;$MPS_CLASSPATH&quot; ]; then" />
      <node concept="17Uvod" id="2g$3PZUp4OL" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="2g$3PZUp4OM" role="3zH0cK">
          <node concept="3clFbS" id="2g$3PZUp4ON" role="2VODD2">
            <node concept="3clFbJ" id="2g$3PZUp4Xo" role="3cqZAp">
              <node concept="3clFbS" id="2g$3PZUp4Xp" role="3clFbx">
                <node concept="3cpWs6" id="2g$3PZUp4Xq" role="3cqZAp">
                  <node concept="3zGtF$" id="2g$3PZUp4Xr" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="2g$3PZUp4Xs" role="3clFbw">
                <node concept="2OqwBi" id="2g$3PZUp4Xt" role="2Oq$k0">
                  <node concept="30H73N" id="2g$3PZUp4Xu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2g$3PZUp4Xv" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="2g$3PZUp4Xw" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="2g$3PZUp4Xx" role="3cqZAp" />
            <node concept="3clFbF" id="2g$3PZUp4Xy" role="3cqZAp">
              <node concept="2YIFZM" id="2g$3PZUp4Xz" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="2g$3PZUp4X$" role="37wK5m">
                  <property role="Xl_RC" value="if [ -n \&quot;$%s_CLASSPATH\&quot; ]; then" />
                </node>
                <node concept="2OqwBi" id="2g$3PZUp4X_" role="37wK5m">
                  <node concept="2OqwBi" id="2g$3PZUp4XA" role="2Oq$k0">
                    <node concept="2OqwBi" id="2g$3PZUp4XB" role="2Oq$k0">
                      <node concept="30H73N" id="2g$3PZUp4XC" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2g$3PZUp4XD" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUp7Pf" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfNY" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfO0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="7C7qUK4t8uv" role="2DRAPQ">
      <property role="2DPR8u" value="  CLASSPATH=&quot;$CLASSPATH:$MPS_CLASSPATH&quot;" />
      <node concept="17Uvod" id="2g$3PZUp99r" role="lGtFl">
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <property role="2qtEX9" value="text" />
        <node concept="3zFVjK" id="2g$3PZUp99s" role="3zH0cK">
          <node concept="3clFbS" id="2g$3PZUp99t" role="2VODD2">
            <node concept="3clFbJ" id="2g$3PZUpa1z" role="3cqZAp">
              <node concept="3clFbS" id="2g$3PZUpa1$" role="3clFbx">
                <node concept="3cpWs6" id="2g$3PZUpa1_" role="3cqZAp">
                  <node concept="3zGtF$" id="2g$3PZUpa1A" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="2g$3PZUpa1B" role="3clFbw">
                <node concept="2OqwBi" id="2g$3PZUpa1C" role="2Oq$k0">
                  <node concept="30H73N" id="2g$3PZUpa1D" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2g$3PZUpa1E" role="2OqNvi">
                    <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                  </node>
                </node>
                <node concept="3w_OXm" id="2g$3PZUpa1F" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbH" id="2g$3PZUpa1G" role="3cqZAp" />
            <node concept="3clFbF" id="2g$3PZUpa1H" role="3cqZAp">
              <node concept="2YIFZM" id="2g$3PZUpa1I" role="3clFbG">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                <node concept="Xl_RD" id="2g$3PZUpa1J" role="37wK5m">
                  <property role="Xl_RC" value="  CLASSPATH=\&quot;$CLASSPATH:$%s_CLASSPATH\&quot;" />
                </node>
                <node concept="2OqwBi" id="2g$3PZUpa1K" role="37wK5m">
                  <node concept="2OqwBi" id="2g$3PZUpa1L" role="2Oq$k0">
                    <node concept="2OqwBi" id="2g$3PZUpa1M" role="2Oq$k0">
                      <node concept="30H73N" id="2g$3PZUpa1N" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2g$3PZUpa1O" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2g$3PZUpa1P" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                    </node>
                  </node>
                  <node concept="3zqWPK" id="70OdufORfO1" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                    <node concept="10Nm6u" id="70OdufORfO3" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="7C7qUK4t8QP" role="2DRAPQ">
      <property role="2DPR8u" value="fi" />
    </node>
    <node concept="2DRAP_" id="hoHCGht4W4" role="2DRAPQ" />
    <node concept="2DRAP_" id="7C7qUK4t9Vs" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4taBJ" role="2DRAPQ">
      <property role="2DPR8u" value="# Run the IDE." />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tajO" role="2DRAPQ">
      <property role="2DPR8u" value="# ---------------------------------------------------------------------" />
    </node>
    <node concept="2DRAP_" id="3tlJBNgUA8f" role="2DRAPQ">
      <property role="2DPR8u" value="IFS=&quot;$(printf '\n\t')&quot;" />
    </node>
    <node concept="2DRAP_" id="3O4ms4uhsa6" role="2DRAPQ">
      <property role="2DPR8u" value="# shellcheck disable=SC2086" />
    </node>
    <node concept="2DRAP_" id="3T7P3nA9UKP" role="2DRAPQ">
      <property role="2DPR8u" value="MAIN_CLASS=" />
      <node concept="17Uvod" id="3T7P3nA9VP_" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3T7P3nA9VPA" role="3zH0cK">
          <node concept="3clFbS" id="3T7P3nA9VPB" role="2VODD2">
            <node concept="3clFbF" id="3T7P3nA9VPQ" role="3cqZAp">
              <node concept="3cpWs3" id="3T7P3nA9W6t" role="3clFbG">
                <node concept="2OqwBi" id="3T7P3nA9Wol" role="3uHU7w">
                  <node concept="3TrcHB" id="3T7P3nAadRs" role="2OqNvi">
                    <ref role="3TsBF5" to="s7om:3nFPImNh3ii" resolve="startupClass" />
                  </node>
                  <node concept="30H73N" id="3T7P3nA9W6A" role="2Oq$k0" />
                </node>
                <node concept="3zGtF$" id="3T7P3nA9VPP" role="3uHU7B" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="7C7qUK4tbCU" role="2DRAPQ">
      <property role="2DPR8u" value="&quot;$JAVA_BIN&quot; \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tclb" role="2DRAPQ">
      <property role="2DPR8u" value="  -classpath &quot;$CLASSPATH&quot; \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tcD6" role="2DRAPQ">
      <property role="2DPR8u" value="  ${VM_OPTIONS} \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tcX2" role="2DRAPQ">
      <property role="2DPR8u" value="  &quot;-XX:ErrorFile=$HOME/java_error_in_%s_%%p.log&quot; \" />
      <node concept="17Uvod" id="3O4ms4urUWg" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3O4ms4urUWh" role="3zH0cK">
          <node concept="3clFbS" id="3O4ms4urUWi" role="2VODD2">
            <node concept="3clFbF" id="3MPxqbC5_1P" role="3cqZAp">
              <node concept="2OqwBi" id="3MPxqbC5_xs" role="3clFbG">
                <node concept="3zGtF$" id="3MPxqbC5_1O" role="2Oq$k0" />
                <node concept="2cAKMz" id="3MPxqbC5_UP" role="2OqNvi">
                  <node concept="3K4zz7" id="3MPxqbC5CLp" role="2cAKU6">
                    <node concept="Xl_RD" id="3MPxqbC5DfV" role="3K4E3e">
                      <property role="Xl_RC" value="MPS" />
                    </node>
                    <node concept="2OqwBi" id="3MPxqbC5Bon" role="3K4Cdx">
                      <node concept="2OqwBi" id="3MPxqbC5A9N" role="2Oq$k0">
                        <node concept="30H73N" id="3MPxqbC5A02" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3MPxqbC5AyE" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="3MPxqbC5C7I" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="3O4ms4urV1u" role="3K4GZi">
                      <node concept="2OqwBi" id="3O4ms4urV1v" role="2Oq$k0">
                        <node concept="2OqwBi" id="3O4ms4urV1w" role="2Oq$k0">
                          <node concept="30H73N" id="3O4ms4urV1x" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3O4ms4urV1y" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3O4ms4urV1z" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfO4" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfO6" role="37wK5m" />
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
    <node concept="2DRAP_" id="BsOHnjn1yI" role="2DRAPQ">
      <property role="2DPR8u" value="  &quot;-XX:HeapDumpPath=$HOME/java_error_in_%s.hprof&quot; \" />
      <node concept="17Uvod" id="3O4ms4urV0Q" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="3O4ms4urV0R" role="3zH0cK">
          <node concept="3clFbS" id="3O4ms4urV0S" role="2VODD2">
            <node concept="3clFbF" id="3MPxqbC5FnQ" role="3cqZAp">
              <node concept="2OqwBi" id="3MPxqbC5FnR" role="3clFbG">
                <node concept="3zGtF$" id="3MPxqbC5FnS" role="2Oq$k0" />
                <node concept="2cAKMz" id="3MPxqbC5FnT" role="2OqNvi">
                  <node concept="3K4zz7" id="3MPxqbC5FnU" role="2cAKU6">
                    <node concept="Xl_RD" id="3MPxqbC5FnV" role="3K4E3e">
                      <property role="Xl_RC" value="MPS" />
                    </node>
                    <node concept="2OqwBi" id="3MPxqbC5FnW" role="3K4Cdx">
                      <node concept="2OqwBi" id="3MPxqbC5FnX" role="2Oq$k0">
                        <node concept="30H73N" id="3MPxqbC5FnY" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3MPxqbC5FnZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="3MPxqbC5Fo0" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="3MPxqbC5Fo1" role="3K4GZi">
                      <node concept="2OqwBi" id="3MPxqbC5Fo2" role="2Oq$k0">
                        <node concept="2OqwBi" id="3MPxqbC5Fo3" role="2Oq$k0">
                          <node concept="30H73N" id="3MPxqbC5Fo4" role="2Oq$k0" />
                          <node concept="3TrEf2" id="3MPxqbC5Fo5" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="3MPxqbC5Fo6" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfO7" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfO9" role="37wK5m" />
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
    <node concept="2DRAP_" id="3MPxqbC5Id_" role="2DRAPQ">
      <property role="2DPR8u" value="  &quot;-Djb.vmOptionsFile=${USER_VM_OPTIONS_FILE:-${VM_OPTIONS_FILE}}&quot; \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tdgZ" role="2DRAPQ">
      <property role="2DPR8u" value="  -Didea.paths.selector=$IDEA_PATHS_SELECTOR \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4td$X" role="2DRAPQ">
      <property role="2DPR8u" value="  ${IDE_PROPERTIES_PROPERTY} \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tdSW" role="2DRAPQ">
      <property role="2DPR8u" value="  ${IDE_JVM_ARGS} \" />
    </node>
    <node concept="2DRAP_" id="BsOHnjn547" role="2DRAPQ">
      <property role="2DPR8u" value="  -Didea.jre.check=true \" />
    </node>
    <node concept="2DRAP_" id="5gb82DdXPMj" role="2DRAPQ">
      <property role="2DPR8u" value="  -Djna.boot.library.path=&quot;${IDE_HOME}/lib/jna&quot; \" />
    </node>
    <node concept="2DRAP_" id="2yVmrmHFcUp" role="2DRAPQ">
      <property role="2DPR8u" value="  -Dskiko.library.path=&quot;${IDE_HOME}/lib/skiko-awt-runtime-all&quot; \" />
    </node>
    <node concept="2DRAP_" id="3eQw_Gy3xcG" role="2DRAPQ">
      <property role="2DPR8u" value="  -Dintellij.platform.load.app.info.from.resources=true \" />
    </node>
    <node concept="2DRAP_" id="6DuhW0rr$9H" role="2DRAPQ">
      <property role="2DPR8u" value="  -Dpty4j.preferred.native.folder=&quot;${IDE_HOME}/lib/pty4j&quot; \" />
    </node>
    <node concept="2DRAP_" id="68UXn6W6HUA" role="2DRAPQ">
      <property role="2DPR8u" value="  -Djava.system.class.loader=com.intellij.util.lang.PathClassLoader \" />
    </node>
    <node concept="2DRAP_" id="5pqe9hgw0aW" role="2DRAPQ">
      <property role="2DPR8u" value="  -Didea.vendor.name=$IDEA_VENDOR_NAME \" />
    </node>
    <node concept="2DRAP_" id="2_gL36cOZiM" role="2DRAPQ">
      <property role="2DPR8u" value="  --add-opens=java.base/java.io=ALL-UNNAMED \" />
      <node concept="17Uvod" id="2_gL36cP15P" role="lGtFl">
        <property role="2qtEX9" value="text" />
        <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
        <node concept="3zFVjK" id="2_gL36cP15Q" role="3zH0cK">
          <node concept="3clFbS" id="2_gL36cP15R" role="2VODD2">
            <node concept="3cpWs8" id="2_gL36cP5T2" role="3cqZAp">
              <node concept="3cpWsn" id="2_gL36cP5T3" role="3cpWs9">
                <property role="TrG5h" value="sb" />
                <node concept="3uibUv" id="2_gL36cP5T4" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="2_gL36cP5T5" role="33vP2m">
                  <node concept="1pGfFk" id="2_gL36cP5T6" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                    <node concept="Xl_RD" id="2_gL36cP5T7" role="37wK5m">
                      <property role="Xl_RC" value="  " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="2_gL36cP5T8" role="3cqZAp">
              <node concept="2GrKxI" id="2_gL36cP5T9" role="2Gsz3X">
                <property role="TrG5h" value="p" />
              </node>
              <node concept="2YIFZM" id="2_gL36cP6Uk" role="2GsD0m">
                <ref role="37wK5l" to="8ig8:2_gL36cJXlS" resolve="getLinuxOpenedPackages" />
                <ref role="1Pybhc" to="8ig8:2IRg8740kUe" resolve="OpenedPackages" />
              </node>
              <node concept="3clFbS" id="2_gL36cP5Tb" role="2LFqv$">
                <node concept="3clFbF" id="2_gL36cP5Tc" role="3cqZAp">
                  <node concept="2OqwBi" id="2_gL36cP5Td" role="3clFbG">
                    <node concept="37vLTw" id="2_gL36cP5Te" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_gL36cP5T3" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="2_gL36cP5Tf" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="3cpWs3" id="2_gL36cP5Tg" role="37wK5m">
                        <node concept="Xl_RD" id="2_gL36cP5Th" role="3uHU7w">
                          <property role="Xl_RC" value="=ALL-UNNAMED " />
                        </node>
                        <node concept="3cpWs3" id="2_gL36cP5Ti" role="3uHU7B">
                          <node concept="Xl_RD" id="2_gL36cP5Tj" role="3uHU7B">
                            <property role="Xl_RC" value="--add-opens=" />
                          </node>
                          <node concept="2GrUjf" id="2_gL36cP5Tk" role="3uHU7w">
                            <ref role="2Gs0qQ" node="2_gL36cP5T9" resolve="p" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2_gL36cP5Tl" role="3cqZAp">
              <node concept="2OqwBi" id="2_gL36cP5Tm" role="3clFbG">
                <node concept="2OqwBi" id="2_gL36cP5Tn" role="2Oq$k0">
                  <node concept="37vLTw" id="2_gL36cP5To" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_gL36cP5T3" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="2_gL36cP5Tp" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                    <node concept="Xl_RD" id="2_gL36cP5Tq" role="37wK5m">
                      <property role="Xl_RC" value="\\" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2_gL36cP5Tr" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DRAP_" id="g4OpMoOzPQ" role="2DRAPQ">
      <property role="2DPR8u" value="  -Dij.startup.error.report.url=https://youtrack.jetbrains.com/newissue?project=MPS\&amp;clearDraft=true\&amp;summary=\$TITLE\$\&amp;description=\$DESCR\$ \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4tehq" role="2DRAPQ">
      <property role="2DPR8u" value="  ${MAIN_CLASS} \" />
    </node>
    <node concept="2DRAP_" id="7C7qUK4te_r" role="2DRAPQ">
      <property role="2DPR8u" value="  &quot;$@&quot;" />
    </node>
    <node concept="n94m4" id="3T7P3nA9sut" role="lGtFl">
      <ref role="n9lRv" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    </node>
    <node concept="17Uvod" id="Nf0pasGtRW" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="Nf0pasGtRX" role="3zH0cK">
        <node concept="3clFbS" id="Nf0pasGtRY" role="2VODD2">
          <node concept="3clFbF" id="2g$3PZU42Kj" role="3cqZAp">
            <node concept="3cpWs3" id="2g$3PZU45u5" role="3clFbG">
              <node concept="Xl_RD" id="2g$3PZU45ub" role="3uHU7w">
                <property role="Xl_RC" value=".sh" />
              </node>
              <node concept="2OqwBi" id="2g$3PZU42Kl" role="3uHU7B">
                <node concept="2OqwBi" id="2g$3PZU42Km" role="2Oq$k0">
                  <node concept="2OqwBi" id="2g$3PZU42Kn" role="2Oq$k0">
                    <node concept="30H73N" id="2g$3PZU42Ko" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2g$3PZU42Kp" role="2OqNvi">
                      <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2g$3PZU42Kq" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                  </node>
                </node>
                <node concept="3zqWPK" id="70OdufORfOa" role="2OqNvi">
                  <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                  <node concept="10Nm6u" id="70OdufORfOc" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DRAQV" id="2lwFGYPaBHW">
    <property role="TrG5h" value="mps64.vmoptions" />
    <node concept="2DRAP_" id="2lwFGYPaGqn" role="2DRAPQ">
      <property role="2DPR8u" value="line" />
      <node concept="2b32R4" id="2lwFGYPaH$i" role="lGtFl">
        <node concept="3JmXsc" id="2lwFGYPaH$l" role="2P8S$">
          <node concept="3clFbS" id="2lwFGYPaH$m" role="2VODD2">
            <node concept="3clFbF" id="2lwFGYPaH$s" role="3cqZAp">
              <node concept="2OqwBi" id="2lwFGYPaH$n" role="3clFbG">
                <node concept="30H73N" id="2lwFGYPaH$r" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORfOd" role="2OqNvi">
                  <ref role="37wK5l" to="tgdw:2M0p1n5GA6s" resolve="getVmOptionsTextLines" />
                  <node concept="3clFbT" id="70OdufORfOf" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="2lwFGYPaBHX" role="lGtFl">
      <ref role="n9lRv" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    </node>
    <node concept="17Uvod" id="2lwFGYPaBHZ" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="2lwFGYPaBI0" role="3zH0cK">
        <node concept="3clFbS" id="2lwFGYPaBI1" role="2VODD2">
          <node concept="3clFbF" id="2lwFGYPaBSX" role="3cqZAp">
            <node concept="2OqwBi" id="2lwFGYPaBT0" role="3clFbG">
              <node concept="30H73N" id="2lwFGYPaBT2" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORfOg" role="2OqNvi">
                <ref role="37wK5l" to="tgdw:2lwFGYOYlNP" resolve="getVmOptionsFileName" />
                <node concept="3clFbT" id="70OdufORfOi" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6GoDrz8Lxq3">
    <property role="TrG5h" value="product-info" />
    <ref role="3gUMe" to="s7om:3nFPImNgRk8" resolve="MpsStartupScript" />
    <node concept="1N15co" id="6GoDrz8Lya0" role="1s_3oS">
      <property role="TrG5h" value="os" />
      <node concept="17QB3L" id="6GoDrz8Lya6" role="1N15GL" />
    </node>
    <node concept="1N15co" id="6GoDrz8Lxq5" role="1s_3oS">
      <property role="TrG5h" value="arch" />
      <node concept="17QB3L" id="6GoDrz8Ly9W" role="1N15GL" />
    </node>
    <node concept="2DRAQV" id="6GoDrz8M_V$" role="13RCb5">
      <property role="TrG5h" value="product-info.json" />
      <node concept="2DRAP_" id="6GoDrz8M_V_" role="2DRAPQ">
        <property role="2DPR8u" value="{" />
        <node concept="raruj" id="6GoDrz8MEAh" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_VA" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;name&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_VB" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_VC" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_VD" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8M_VE" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_VF" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_VG" role="37wK5m" />
                  <node concept="3K4zz7" id="6GoDrz8M_VH" role="37wK5m">
                    <node concept="2OqwBi" id="6GoDrz8M_VI" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_VJ" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_VK" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_VL" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_VM" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_VN" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6GoDrz8M_VO" role="2OqNvi" />
                    </node>
                    <node concept="3K4zz7" id="6GoDrz8M_VP" role="3K4GZi">
                      <node concept="Xl_RD" id="6GoDrz8M_VQ" role="3K4GZi">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_VR" role="3K4Cdx">
                        <node concept="2OqwBi" id="6GoDrz8M_VS" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_VT" role="2Oq$k0">
                            <node concept="30H73N" id="6GoDrz8M_VU" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6GoDrz8M_VV" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6GoDrz8M_VW" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="6GoDrz8M_VX" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_VY" role="3K4E3e">
                        <node concept="2OqwBi" id="6GoDrz8M_VZ" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_W0" role="2Oq$k0">
                            <node concept="30H73N" id="6GoDrz8M_W1" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6GoDrz8M_W2" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6GoDrz8M_W3" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORfOj" role="2OqNvi">
                          <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                          <node concept="10Nm6u" id="70OdufORfOl" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_W6" role="3K4E3e">
                      <node concept="2OqwBi" id="6GoDrz8M_W7" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_W8" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_W9" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_Wa" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_Wb" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2K" resolve="fullName" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOm" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfOo" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MEAi" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_We" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;version&quot;: &quot;$version$&quot;," />
        <node concept="raruj" id="6GoDrz8MF7m" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Wf" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;buildNumber&quot;: &quot;$build$&quot;," />
        <node concept="raruj" id="6GoDrz8MF7n" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Wg" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;productCode&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_Wh" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_Wi" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_Wj" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8M_Wk" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_Wl" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_Wm" role="37wK5m" />
                  <node concept="3K4zz7" id="6GoDrz8M_Wn" role="37wK5m">
                    <node concept="Xl_RD" id="6GoDrz8M_Wo" role="3K4E3e">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Wp" role="3K4GZi">
                      <node concept="2OqwBi" id="6GoDrz8M_Wq" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_Wr" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_Ws" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_Wt" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_Wu" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOp" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfOr" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Wx" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_Wy" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_Wz" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_W$" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_W_" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_WA" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="6GoDrz8M_WB" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MF7r" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_WC" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;envVarBaseName&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_WD" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_WE" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_WF" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8M_WG" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_WH" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_WI" role="37wK5m" />
                  <node concept="3K4zz7" id="6GoDrz8M_WJ" role="37wK5m">
                    <node concept="Xl_RD" id="6GoDrz8M_WK" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_WL" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_WM" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_WN" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_WO" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_WP" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_WQ" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6GoDrz8M_WR" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_WS" role="3K4E3e">
                      <node concept="2OqwBi" id="6GoDrz8M_WT" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_WU" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_WV" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_WW" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_WX" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOs" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfOu" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MFBx" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_X0" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;dataDirectoryName&quot;: &quot;$path.selector$&quot;," />
        <node concept="raruj" id="6GoDrz8MG7B" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_X1" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;svgIconPath&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_X2" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_X3" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_X4" role="2VODD2">
              <node concept="3cpWs8" id="6GoDrz8M_X5" role="3cqZAp">
                <node concept="3cpWsn" id="6GoDrz8M_X6" role="3cpWs9">
                  <property role="TrG5h" value="filepath" />
                  <node concept="17QB3L" id="6GoDrz8M_X7" role="1tU5fm" />
                  <node concept="3K4zz7" id="6GoDrz8M_X8" role="33vP2m">
                    <node concept="3K4zz7" id="6GoDrz8M_X9" role="3K4GZi">
                      <node concept="Xl_RD" id="6GoDrz8M_Xa" role="3K4GZi">
                        <property role="Xl_RC" value="mps" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Xb" role="3K4Cdx">
                        <node concept="2OqwBi" id="6GoDrz8M_Xc" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Xd" role="2Oq$k0">
                            <node concept="30H73N" id="6GoDrz8M_Xe" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6GoDrz8M_Xf" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6GoDrz8M_Xg" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="6GoDrz8M_Xh" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Xi" role="3K4E3e">
                        <node concept="2OqwBi" id="6GoDrz8M_Xj" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Xk" role="2Oq$k0">
                            <node concept="2OqwBi" id="6GoDrz8M_Xl" role="2Oq$k0">
                              <node concept="30H73N" id="6GoDrz8M_Xm" role="2Oq$k0" />
                              <node concept="3TrEf2" id="6GoDrz8M_Xn" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="6GoDrz8M_Xo" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfOv" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                            <node concept="10Nm6u" id="70OdufORfOx" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6GoDrz8M_Xr" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Xs" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_Xt" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_Xu" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_Xv" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_Xw" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_Xx" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6GoDrz8M_Xy" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Xz" role="3K4E3e">
                      <node concept="2OqwBi" id="6GoDrz8M_X$" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_X_" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_XA" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_XB" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_XC" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOy" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfO$" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz9Jpx1" role="3cqZAp">
                <node concept="37vLTI" id="6GoDrz9Jpx2" role="3clFbG">
                  <node concept="37vLTw" id="6GoDrz9Jpx3" role="37vLTJ">
                    <ref role="3cqZAo" node="6GoDrz8M_X6" resolve="filepath" />
                  </node>
                  <node concept="3cpWs3" id="6GoDrz9K5UQ" role="37vLTx">
                    <node concept="Xl_RD" id="6GoDrz9K5UU" role="3uHU7w">
                      <property role="Xl_RC" value=".svg" />
                    </node>
                    <node concept="3cpWs3" id="6GoDrz9Jpx4" role="3uHU7B">
                      <node concept="1eOMI4" id="6GoDrz9Jpx6" role="3uHU7B">
                        <node concept="3K4zz7" id="6GoDrz9Jpx7" role="1eOMHV">
                          <node concept="Xl_RD" id="6GoDrz9Jpx8" role="3K4E3e">
                            <property role="Xl_RC" value="../bin/" />
                          </node>
                          <node concept="Xl_RD" id="6GoDrz9Jpx9" role="3K4GZi">
                            <property role="Xl_RC" value="bin/" />
                          </node>
                          <node concept="2OqwBi" id="6GoDrz9Jpxa" role="3K4Cdx">
                            <node concept="Xl_RD" id="6GoDrz9Jpxb" role="2Oq$k0">
                              <property role="Xl_RC" value="macOS" />
                            </node>
                            <node concept="liA8E" id="6GoDrz9Jpxc" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="v3LJS" id="6GoDrz9Jpxd" role="37wK5m">
                                <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6GoDrz9Jpx5" role="3uHU7w">
                        <ref role="3cqZAo" node="6GoDrz8M_X6" resolve="filepath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6GoDrz9JpwZ" role="3cqZAp" />
              <node concept="3clFbF" id="6GoDrz8M_XF" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_XG" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_XH" role="37wK5m" />
                  <node concept="37vLTw" id="6GoDrz8M_XI" role="37wK5m">
                    <ref role="3cqZAo" node="6GoDrz8M_X6" resolve="filepath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MG7C" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_XJ" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;productVendor&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_XK" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_XL" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_XM" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8M_XN" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_XO" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_XP" role="37wK5m" />
                  <node concept="2OqwBi" id="6GoDrz8M_XQ" role="37wK5m">
                    <node concept="2OqwBi" id="6GoDrz8M_XR" role="2Oq$k0">
                      <node concept="30H73N" id="6GoDrz8M_XS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6GoDrz8M_XT" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfO_" role="2OqNvi">
                      <ref role="37wK5l" to="2txq:6RvRF8fBDEC" resolve="getVendor" />
                      <node concept="10Nm6u" id="70OdufORfOB" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MGDL" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Y7" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;launch&quot;: [" />
        <node concept="raruj" id="6GoDrz8MHeS" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Y8" role="2DRAPQ">
        <property role="2DPR8u" value="    {" />
        <node concept="raruj" id="6GoDrz8MHeT" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Y9" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;os&quot;: &quot;%s&quot;," />
        <node concept="raruj" id="6GoDrz8MHeU" role="lGtFl" />
        <node concept="17Uvod" id="6GoDrz8MKjR" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8MKjS" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8MKjT" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8MKqO" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8MKqP" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8MKqQ" role="37wK5m" />
                  <node concept="v3LJS" id="6GoDrz8MLS_" role="37wK5m">
                    <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz91ly_" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;arch&quot;: &quot;%s&quot;," />
        <node concept="raruj" id="6GoDrz91lyA" role="lGtFl" />
        <node concept="17Uvod" id="6GoDrz91lyB" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz91lyC" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz91lyD" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz91lyE" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz91lyF" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz91lyG" role="37wK5m" />
                  <node concept="v3LJS" id="6GoDrz91lyH" role="37wK5m">
                    <ref role="v3LJV" node="6GoDrz8Lxq5" resolve="arch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_Ya" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;launcherPath&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_Yb" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_Yc" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_Yd" role="2VODD2">
              <node concept="3cpWs8" id="6GoDrz8M_Ye" role="3cqZAp">
                <node concept="3cpWsn" id="6GoDrz8M_Yf" role="3cpWs9">
                  <property role="TrG5h" value="runnable" />
                  <node concept="17QB3L" id="6GoDrz8M_Yg" role="1tU5fm" />
                  <node concept="3K4zz7" id="6GoDrz8M_Yh" role="33vP2m">
                    <node concept="3K4zz7" id="6GoDrz8M_Yi" role="3K4GZi">
                      <node concept="Xl_RD" id="6GoDrz8M_Yj" role="3K4GZi">
                        <property role="Xl_RC" value="mps" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Yk" role="3K4Cdx">
                        <node concept="2OqwBi" id="6GoDrz8M_Yl" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Ym" role="2Oq$k0">
                            <node concept="30H73N" id="6GoDrz8M_Yn" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6GoDrz8M_Yo" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6GoDrz8M_Yp" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="6GoDrz8M_Yq" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Yr" role="3K4E3e">
                        <node concept="2OqwBi" id="6GoDrz8M_Ys" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Yt" role="2Oq$k0">
                            <node concept="2OqwBi" id="6GoDrz8M_Yu" role="2Oq$k0">
                              <node concept="30H73N" id="6GoDrz8M_Yv" role="2Oq$k0" />
                              <node concept="3TrEf2" id="6GoDrz8M_Yw" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="6GoDrz8M_Yx" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfOC" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                            <node concept="10Nm6u" id="70OdufORfOE" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6GoDrz8M_Y$" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Y_" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_YA" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_YB" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_YC" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_YD" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_YE" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6GoDrz8M_YF" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_YG" role="3K4E3e">
                      <node concept="2OqwBi" id="6GoDrz8M_YH" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_YI" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_YJ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_YK" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_YL" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOF" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfOH" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz9uhxv" role="3cqZAp">
                <node concept="37vLTI" id="6GoDrz9uiSr" role="3clFbG">
                  <node concept="37vLTw" id="6GoDrz9uhxt" role="37vLTJ">
                    <ref role="3cqZAo" node="6GoDrz8M_Yf" resolve="runnable" />
                  </node>
                  <node concept="3cpWs3" id="6GoDrz9uxkz" role="37vLTx">
                    <node concept="37vLTw" id="6GoDrz9u$zA" role="3uHU7w">
                      <ref role="3cqZAo" node="6GoDrz8M_Yf" resolve="runnable" />
                    </node>
                    <node concept="1eOMI4" id="6GoDrz9uzPd" role="3uHU7B">
                      <node concept="3K4zz7" id="6GoDrz9uj$r" role="1eOMHV">
                        <node concept="Xl_RD" id="6GoDrz9upfn" role="3K4E3e">
                          <property role="Xl_RC" value="../MacOS/bin/" />
                        </node>
                        <node concept="Xl_RD" id="6GoDrz9uvoh" role="3K4GZi">
                          <property role="Xl_RC" value="bin/" />
                        </node>
                        <node concept="2OqwBi" id="6GoDrz9ummA" role="3K4Cdx">
                          <node concept="Xl_RD" id="6GoDrz9ukgA" role="2Oq$k0">
                            <property role="Xl_RC" value="macOS" />
                          </node>
                          <node concept="liA8E" id="6GoDrz9unYv" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="6GoDrz9uoBk" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrzazTHm" role="3cqZAp">
                <node concept="d57v9" id="6GoDrzazV8q" role="3clFbG">
                  <node concept="37vLTw" id="6GoDrzazTHk" role="37vLTJ">
                    <ref role="3cqZAo" node="6GoDrz8M_Yf" resolve="runnable" />
                  </node>
                  <node concept="3K4zz7" id="6GoDrzazX3v" role="37vLTx">
                    <node concept="Xl_RD" id="6GoDrzazXTH" role="3K4E3e">
                      <property role="Xl_RC" value="64.exe" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrzazVWd" role="3K4Cdx">
                      <node concept="Xl_RD" id="6GoDrzazVWe" role="2Oq$k0">
                        <property role="Xl_RC" value="Windows" />
                      </node>
                      <node concept="liA8E" id="6GoDrzazVWf" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="v3LJS" id="6GoDrzazVWg" role="37wK5m">
                          <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="274xLv2EPNX" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz8M_YO" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_YP" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_YQ" role="37wK5m" />
                  <node concept="37vLTw" id="6GoDrz8M_YR" role="37wK5m">
                    <ref role="3cqZAo" node="6GoDrz8M_Yf" resolve="runnable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MHeV" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_YS" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;javaExecutablePath&quot;: &quot;%s&quot;," />
        <node concept="raruj" id="6GoDrz8MHL3" role="lGtFl" />
        <node concept="17Uvod" id="6GoDrz9uANE" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz9uANF" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz9uANG" role="2VODD2">
              <node concept="3cpWs8" id="6GoDrz9uB6n" role="3cqZAp">
                <node concept="3cpWsn" id="6GoDrz9uB6o" role="3cpWs9">
                  <property role="TrG5h" value="javaRunnable" />
                  <node concept="17QB3L" id="6GoDrz9uB6p" role="1tU5fm" />
                  <node concept="Xl_RD" id="6GoDrz9uKsn" role="33vP2m">
                    <property role="Xl_RC" value="bin/java" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6GoDrz9uB7a" role="3cqZAp">
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="6GoDrz9uB7b" role="3clFbx">
                  <node concept="3clFbF" id="6GoDrz9uB7c" role="3cqZAp">
                    <node concept="d57v9" id="6GoDrz9uB7d" role="3clFbG">
                      <node concept="37vLTw" id="6GoDrz9uB7e" role="37vLTJ">
                        <ref role="3cqZAo" node="6GoDrz9uB6o" resolve="javaRunnable" />
                      </node>
                      <node concept="Xl_RD" id="6GoDrz9uB7f" role="37vLTx">
                        <property role="Xl_RC" value=".exe" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6GoDrz9uB7g" role="3clFbw">
                  <node concept="Xl_RD" id="6GoDrz9uB7h" role="2Oq$k0">
                    <property role="Xl_RC" value="Windows" />
                  </node>
                  <node concept="liA8E" id="6GoDrz9uB7i" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="v3LJS" id="6GoDrz9uB7j" role="37wK5m">
                      <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz9uB6X" role="3cqZAp">
                <node concept="37vLTI" id="6GoDrz9uB6Y" role="3clFbG">
                  <node concept="37vLTw" id="6GoDrz9uB6Z" role="37vLTJ">
                    <ref role="3cqZAo" node="6GoDrz9uB6o" resolve="javaRunnable" />
                  </node>
                  <node concept="3cpWs3" id="6GoDrz9uB70" role="37vLTx">
                    <node concept="37vLTw" id="6GoDrz9uB71" role="3uHU7w">
                      <ref role="3cqZAo" node="6GoDrz9uB6o" resolve="javaRunnable" />
                    </node>
                    <node concept="1eOMI4" id="6GoDrz9uB72" role="3uHU7B">
                      <node concept="3K4zz7" id="6GoDrz9uB73" role="1eOMHV">
                        <node concept="Xl_RD" id="6GoDrz9uB74" role="3K4E3e">
                          <property role="Xl_RC" value="../jbr/Contents/Home/" />
                        </node>
                        <node concept="Xl_RD" id="6GoDrz9uB75" role="3K4GZi">
                          <property role="Xl_RC" value="jbr/" />
                        </node>
                        <node concept="2OqwBi" id="6GoDrz9uB76" role="3K4Cdx">
                          <node concept="Xl_RD" id="6GoDrz9uB77" role="2Oq$k0">
                            <property role="Xl_RC" value="macOS" />
                          </node>
                          <node concept="liA8E" id="6GoDrz9uB78" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="6GoDrz9uB79" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz9uB7k" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz9uB7l" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz9uB7m" role="37wK5m" />
                  <node concept="37vLTw" id="6GoDrz9uB7n" role="37wK5m">
                    <ref role="3cqZAo" node="6GoDrz9uB6o" resolve="javaRunnable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_YT" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;vmOptionsFilePath&quot;: &quot;%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_YU" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_YV" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_YW" role="2VODD2">
              <node concept="3cpWs8" id="6GoDrz8M_YX" role="3cqZAp">
                <node concept="3cpWsn" id="6GoDrz8M_YY" role="3cpWs9">
                  <property role="TrG5h" value="filepath" />
                  <node concept="17QB3L" id="6GoDrz8M_YZ" role="1tU5fm" />
                  <node concept="3K4zz7" id="6GoDrz8M_Z0" role="33vP2m">
                    <node concept="3K4zz7" id="6GoDrz8M_Z1" role="3K4GZi">
                      <node concept="Xl_RD" id="6GoDrz8M_Z2" role="3K4GZi">
                        <property role="Xl_RC" value="mps" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Z3" role="3K4Cdx">
                        <node concept="2OqwBi" id="6GoDrz8M_Z4" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Z5" role="2Oq$k0">
                            <node concept="30H73N" id="6GoDrz8M_Z6" role="2Oq$k0" />
                            <node concept="3TrEf2" id="6GoDrz8M_Z7" role="2OqNvi">
                              <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="6GoDrz8M_Z8" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                          </node>
                        </node>
                        <node concept="3x8VRR" id="6GoDrz8M_Z9" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="6GoDrz8M_Za" role="3K4E3e">
                        <node concept="2OqwBi" id="6GoDrz8M_Zb" role="2Oq$k0">
                          <node concept="2OqwBi" id="6GoDrz8M_Zc" role="2Oq$k0">
                            <node concept="2OqwBi" id="6GoDrz8M_Zd" role="2Oq$k0">
                              <node concept="30H73N" id="6GoDrz8M_Ze" role="2Oq$k0" />
                              <node concept="3TrEf2" id="6GoDrz8M_Zf" role="2OqNvi">
                                <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="6GoDrz8M_Zg" role="2OqNvi">
                              <ref role="3Tt5mk" to="kdzh:5j4USBYGz2J" resolve="product" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORfOI" role="2OqNvi">
                            <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                            <node concept="10Nm6u" id="70OdufORfOK" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6GoDrz8M_Zj" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.toLowerCase()" resolve="toLowerCase" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Zk" role="3K4Cdx">
                      <node concept="2OqwBi" id="6GoDrz8M_Zl" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_Zm" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_Zn" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_Zo" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_Zp" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="6GoDrz8M_Zq" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="6GoDrz8M_Zr" role="3K4E3e">
                      <node concept="2OqwBi" id="6GoDrz8M_Zs" role="2Oq$k0">
                        <node concept="2OqwBi" id="6GoDrz8M_Zt" role="2Oq$k0">
                          <node concept="30H73N" id="6GoDrz8M_Zu" role="2Oq$k0" />
                          <node concept="3TrEf2" id="6GoDrz8M_Zv" role="2OqNvi">
                            <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="6GoDrz8M_Zw" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:Nf0pasGVkV" resolve="script" />
                        </node>
                      </node>
                      <node concept="3zqWPK" id="70OdufORfOL" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:3NagsOfTioI" resolve="getText" />
                        <node concept="10Nm6u" id="70OdufORfON" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6GoDrz9JGxO" role="3cqZAp">
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="6GoDrz9JGxQ" role="3clFbx">
                  <node concept="3clFbF" id="6GoDrz9JV4H" role="3cqZAp">
                    <node concept="d57v9" id="6GoDrz9JW07" role="3clFbG">
                      <node concept="Xl_RD" id="6GoDrz9JWPr" role="37vLTx">
                        <property role="Xl_RC" value="64" />
                      </node>
                      <node concept="37vLTw" id="6GoDrz9JV4F" role="37vLTJ">
                        <ref role="3cqZAo" node="6GoDrz8M_YY" resolve="filepath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6GoDrz9JSaR" role="3clFbw">
                  <node concept="1eOMI4" id="6GoDrz9JUdu" role="3fr31v">
                    <node concept="2OqwBi" id="6GoDrz9JSaT" role="1eOMHV">
                      <node concept="Xl_RD" id="6GoDrz9JSaU" role="2Oq$k0">
                        <property role="Xl_RC" value="macOS" />
                      </node>
                      <node concept="liA8E" id="6GoDrz9JSaV" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="v3LJS" id="6GoDrz9JSaW" role="37wK5m">
                          <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6GoDrz9uVAD" role="3cqZAp">
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="6GoDrz9uVAF" role="3clFbx">
                  <node concept="3clFbF" id="6GoDrz9v0pX" role="3cqZAp">
                    <node concept="d57v9" id="6GoDrz9v1KG" role="3clFbG">
                      <node concept="Xl_RD" id="6GoDrz9v2zq" role="37vLTx">
                        <property role="Xl_RC" value=".exe" />
                      </node>
                      <node concept="37vLTw" id="6GoDrz9v0pV" role="37vLTJ">
                        <ref role="3cqZAo" node="6GoDrz8M_YY" resolve="filepath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6GoDrz9uXSU" role="3clFbw">
                  <node concept="Xl_RD" id="6GoDrz9uWfA" role="2Oq$k0">
                    <property role="Xl_RC" value="Windows" />
                  </node>
                  <node concept="liA8E" id="6GoDrz9uZbi" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="v3LJS" id="6GoDrz9uZKD" role="37wK5m">
                      <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz9JAFd" role="3cqZAp">
                <node concept="37vLTI" id="6GoDrz9JAFe" role="3clFbG">
                  <node concept="37vLTw" id="6GoDrz9JAFf" role="37vLTJ">
                    <ref role="3cqZAo" node="6GoDrz8M_YY" resolve="filepath" />
                  </node>
                  <node concept="3cpWs3" id="6GoDrz9K0UW" role="37vLTx">
                    <node concept="Xl_RD" id="6GoDrz9K0V0" role="3uHU7w">
                      <property role="Xl_RC" value=".vmoptions" />
                    </node>
                    <node concept="3cpWs3" id="6GoDrz9JAFg" role="3uHU7B">
                      <node concept="1eOMI4" id="6GoDrz9JAFi" role="3uHU7B">
                        <node concept="3K4zz7" id="6GoDrz9JAFj" role="1eOMHV">
                          <node concept="Xl_RD" id="6GoDrz9JAFk" role="3K4E3e">
                            <property role="Xl_RC" value="../bin/" />
                          </node>
                          <node concept="Xl_RD" id="6GoDrz9JAFl" role="3K4GZi">
                            <property role="Xl_RC" value="bin/" />
                          </node>
                          <node concept="2OqwBi" id="6GoDrz9JAFm" role="3K4Cdx">
                            <node concept="Xl_RD" id="6GoDrz9JAFn" role="2Oq$k0">
                              <property role="Xl_RC" value="macOS" />
                            </node>
                            <node concept="liA8E" id="6GoDrz9JAFo" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="v3LJS" id="6GoDrz9JAFp" role="37wK5m">
                                <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6GoDrz9JAFh" role="3uHU7w">
                        <ref role="3cqZAo" node="6GoDrz8M_YY" resolve="filepath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6GoDrz9v6FL" role="3cqZAp" />
              <node concept="3clFbF" id="6GoDrz8M_Zz" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8M_Z$" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8M_Z_" role="37wK5m" />
                  <node concept="37vLTw" id="6GoDrz8M_ZA" role="37wK5m">
                    <ref role="3cqZAo" node="6GoDrz8M_YY" resolve="filepath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MHL4" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_ZB" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;bootClassPathJarNames&quot;: [" />
        <node concept="raruj" id="6GoDrz8MIjc" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8M_ZC" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;annotations.jar&quot;," />
        <node concept="17Uvod" id="6GoDrz8M_ZK" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8M_ZL" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8M_ZM" role="2VODD2">
              <node concept="3cpWs8" id="6GoDrz8M_ZN" role="3cqZAp">
                <node concept="3cpWsn" id="6GoDrz8M_ZO" role="3cpWs9">
                  <property role="TrG5h" value="library" />
                  <node concept="17QB3L" id="6GoDrz8M_ZP" role="1tU5fm" />
                  <node concept="2OqwBi" id="6GoDrz8M_ZQ" role="33vP2m">
                    <node concept="30H73N" id="6GoDrz8M_ZR" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6GoDrz8M_ZS" role="2OqNvi">
                      <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6GoDrz8M_ZT" role="3cqZAp">
                <node concept="3clFbS" id="6GoDrz8M_ZU" role="3clFbx">
                  <node concept="3clFbF" id="6GoDrz8M_ZV" role="3cqZAp">
                    <node concept="37vLTI" id="6GoDrz8M_ZW" role="3clFbG">
                      <node concept="2OqwBi" id="6GoDrz8M_ZX" role="37vLTx">
                        <node concept="37vLTw" id="6GoDrz8M_ZY" role="2Oq$k0">
                          <ref role="3cqZAo" node="6GoDrz8M_ZO" resolve="library" />
                        </node>
                        <node concept="liA8E" id="6GoDrz8M_ZZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replaceFirst(java.lang.String,java.lang.String)" resolve="replaceFirst" />
                          <node concept="Xl_RD" id="6GoDrz8MA00" role="37wK5m">
                            <property role="Xl_RC" value="lib/" />
                          </node>
                          <node concept="Xl_RD" id="6GoDrz8MA01" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6GoDrz8MA02" role="37vLTJ">
                        <ref role="3cqZAo" node="6GoDrz8M_ZO" resolve="library" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6GoDrz8MA03" role="3clFbw">
                  <node concept="37vLTw" id="6GoDrz8MA04" role="2Oq$k0">
                    <ref role="3cqZAo" node="6GoDrz8M_ZO" resolve="library" />
                  </node>
                  <node concept="liA8E" id="6GoDrz8MA05" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="Xl_RD" id="6GoDrz8MA06" role="37wK5m">
                      <property role="Xl_RC" value="lib/" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz8MA07" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8MA08" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="Xl_RD" id="6GoDrz8MA09" role="37wK5m">
                    <property role="Xl_RC" value="        \&quot;%s\&quot;," />
                  </node>
                  <node concept="37vLTw" id="6GoDrz8MA0a" role="37wK5m">
                    <ref role="3cqZAo" node="6GoDrz8M_ZO" resolve="library" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MIrz" role="lGtFl" />
        <node concept="1WS0z7" id="6GoDrz8M_ZD" role="lGtFl">
          <node concept="3JmXsc" id="6GoDrz8M_ZE" role="3Jn$fo">
            <node concept="3clFbS" id="6GoDrz8M_ZF" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8M_ZG" role="3cqZAp">
                <node concept="2OqwBi" id="6GoDrz8M_ZH" role="3clFbG">
                  <node concept="3Tsc0h" id="6GoDrz8M_ZI" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:3nFPImNgRsC" resolve="bootClasspath" />
                  </node>
                  <node concept="30H73N" id="6GoDrz8M_ZJ" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="7mPGpETrmpF" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;annotations.jar&quot;," />
        <node concept="17Uvod" id="7mPGpETrmpG" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="7mPGpETrmpH" role="3zH0cK">
            <node concept="3clFbS" id="7mPGpETrmpI" role="2VODD2">
              <node concept="3cpWs8" id="7mPGpETrmpJ" role="3cqZAp">
                <node concept="3cpWsn" id="7mPGpETrmpK" role="3cpWs9">
                  <property role="TrG5h" value="library" />
                  <node concept="17QB3L" id="7mPGpETrmpL" role="1tU5fm" />
                  <node concept="2OqwBi" id="7mPGpETrmpM" role="33vP2m">
                    <node concept="30H73N" id="7mPGpETrmpN" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7mPGpETrmpO" role="2OqNvi">
                      <ref role="3TsBF5" to="s7om:3nFPImNgRka" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7mPGpETrmpP" role="3cqZAp">
                <node concept="3clFbS" id="7mPGpETrmpQ" role="3clFbx">
                  <node concept="3clFbF" id="7mPGpETrmpR" role="3cqZAp">
                    <node concept="37vLTI" id="7mPGpETrmpS" role="3clFbG">
                      <node concept="2OqwBi" id="7mPGpETrmpT" role="37vLTx">
                        <node concept="37vLTw" id="7mPGpETrmpU" role="2Oq$k0">
                          <ref role="3cqZAo" node="7mPGpETrmpK" resolve="library" />
                        </node>
                        <node concept="liA8E" id="7mPGpETrmpV" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replaceFirst(java.lang.String,java.lang.String)" resolve="replaceFirst" />
                          <node concept="Xl_RD" id="7mPGpETrmpW" role="37wK5m">
                            <property role="Xl_RC" value="lib/" />
                          </node>
                          <node concept="Xl_RD" id="7mPGpETrmpX" role="37wK5m">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="7mPGpETrmpY" role="37vLTJ">
                        <ref role="3cqZAo" node="7mPGpETrmpK" resolve="library" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7mPGpETrmpZ" role="3clFbw">
                  <node concept="37vLTw" id="7mPGpETrmq0" role="2Oq$k0">
                    <ref role="3cqZAo" node="7mPGpETrmpK" resolve="library" />
                  </node>
                  <node concept="liA8E" id="7mPGpETrmq1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="Xl_RD" id="7mPGpETrmq2" role="37wK5m">
                      <property role="Xl_RC" value="lib/" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7mPGpETrmq3" role="3cqZAp">
                <node concept="2YIFZM" id="7mPGpETrmq4" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="Xl_RD" id="7mPGpETrmq5" role="37wK5m">
                    <property role="Xl_RC" value="        \&quot;%s\&quot;," />
                  </node>
                  <node concept="37vLTw" id="7mPGpETrmq6" role="37wK5m">
                    <ref role="3cqZAo" node="7mPGpETrmpK" resolve="library" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="7mPGpETrmq7" role="lGtFl" />
        <node concept="1WS0z7" id="7mPGpETrmq8" role="lGtFl">
          <node concept="3JmXsc" id="7mPGpETrmq9" role="3Jn$fo">
            <node concept="3clFbS" id="7mPGpETrmqa" role="2VODD2">
              <node concept="3clFbF" id="7mPGpETrmqb" role="3cqZAp">
                <node concept="2OqwBi" id="7mPGpETrmqc" role="3clFbG">
                  <node concept="3Tsc0h" id="7mPGpETrmqd" role="2OqNvi">
                    <ref role="3TtcxE" to="s7om:7mPGpETqNW1" resolve="extBootClasspath" />
                  </node>
                  <node concept="30H73N" id="7mPGpETrmqe" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0b" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;boot-macos.jar&quot;" />
        <node concept="raruj" id="6GoDrz8MJ2e" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0c" role="2DRAPQ">
        <property role="2DPR8u" value="      ]," />
        <node concept="raruj" id="6GoDrz8MJ2f" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0d" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;additionalJvmArguments&quot;: [" />
        <node concept="raruj" id="6GoDrz8MJ2g" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="7mPGpETBHeK" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-XX:+UseCompressedOops&quot;," />
        <node concept="raruj" id="7mPGpETBHeL" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0f" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log&quot;," />
        <node concept="raruj" id="6GoDrz8MJ2i" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0g" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof&quot;," />
        <node concept="raruj" id="6GoDrz8MJ2j" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0h" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;--add-opens=java.base/java.io=ALL-UNNAMED&quot;," />
        <node concept="17Uvod" id="6GoDrz8MA0H" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8MA0I" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8MA0J" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8MA0K" role="3cqZAp">
                <node concept="2OqwBi" id="6GoDrz8MA0L" role="3clFbG">
                  <node concept="30H73N" id="6GoDrz8MA0M" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6GoDrz8MA0N" role="2OqNvi">
                    <ref role="3TsBF5" to="s7om:1w81suLRRvp" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MJ2w" role="lGtFl" />
        <node concept="1WS0z7" id="6GoDrz8MA0i" role="lGtFl">
          <node concept="3JmXsc" id="6GoDrz8MA0j" role="3Jn$fo">
            <node concept="3clFbS" id="6GoDrz8MA0k" role="2VODD2">
              <node concept="3cpWs8" id="6wqRQFGVsCL" role="3cqZAp">
                <node concept="3cpWsn" id="6wqRQFGVsCM" role="3cpWs9">
                  <property role="TrG5h" value="openedPackages" />
                  <node concept="A3Dl8" id="6wqRQFGVsmt" role="1tU5fm">
                    <node concept="17QB3L" id="6wqRQFGVsmw" role="A3Ik2" />
                  </node>
                  <node concept="1eOMI4" id="6wqRQFGVAla" role="33vP2m">
                    <node concept="3K4zz7" id="6wqRQFGVAlb" role="1eOMHV">
                      <node concept="3K4zz7" id="6wqRQFGVAlc" role="3K4GZi">
                        <node concept="2OqwBi" id="6wqRQFGVAld" role="3K4Cdx">
                          <node concept="Xl_RD" id="6wqRQFGVAle" role="2Oq$k0">
                            <property role="Xl_RC" value="Windows" />
                          </node>
                          <node concept="liA8E" id="6wqRQFGVAlf" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="6wqRQFGVAlg" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6wqRQFHv6gY" role="3K4E3e">
                          <ref role="37wK5l" to="8ig8:2_gL36cJXuW" resolve="getWindowsOpenedPackages" />
                          <ref role="1Pybhc" to="8ig8:2IRg8740kUe" resolve="OpenedPackages" />
                        </node>
                        <node concept="2YIFZM" id="6wqRQFHv7HV" role="3K4GZi">
                          <ref role="37wK5l" to="8ig8:2_gL36cJXlS" resolve="getLinuxOpenedPackages" />
                          <ref role="1Pybhc" to="8ig8:2IRg8740kUe" resolve="OpenedPackages" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6wqRQFGVAlj" role="3K4Cdx">
                        <node concept="Xl_RD" id="6wqRQFGVAlk" role="2Oq$k0">
                          <property role="Xl_RC" value="macOS" />
                        </node>
                        <node concept="liA8E" id="6wqRQFGVAll" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="v3LJS" id="6wqRQFGVAlm" role="37wK5m">
                            <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="6wqRQFGVAln" role="3K4E3e">
                        <ref role="37wK5l" to="8ig8:2_gL36cJUCx" resolve="getMacOpenedPackages" />
                        <ref role="1Pybhc" to="8ig8:2IRg8740kUe" resolve="OpenedPackages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6GoDrz8MA0l" role="3cqZAp">
                <node concept="2OqwBi" id="6GoDrz8MA0m" role="3clFbG">
                  <node concept="3$u5V9" id="6GoDrz8MA0o" role="2OqNvi">
                    <node concept="1bVj0M" id="6GoDrz8MA0p" role="23t8la">
                      <node concept="3clFbS" id="6GoDrz8MA0q" role="1bW5cS">
                        <node concept="3cpWs8" id="6GoDrz8MA0r" role="3cqZAp">
                          <node concept="3cpWsn" id="6GoDrz8MA0s" role="3cpWs9">
                            <property role="TrG5h" value="n" />
                            <node concept="3Tqbb2" id="6GoDrz8MA0t" role="1tU5fm">
                              <ref role="ehGHo" to="s7om:1w81suLPAyy" resolve="TextLine" />
                            </node>
                            <node concept="2ShNRf" id="6GoDrz8MA0u" role="33vP2m">
                              <node concept="3zrR0B" id="6GoDrz8MA0v" role="2ShVmc">
                                <node concept="3Tqbb2" id="6GoDrz8MA0w" role="3zrR0E">
                                  <ref role="ehGHo" to="s7om:1w81suLPAyy" resolve="TextLine" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6GoDrz8MA0x" role="3cqZAp">
                          <node concept="37vLTI" id="6GoDrz8MA0y" role="3clFbG">
                            <node concept="2YIFZM" id="6GoDrz8MA0z" role="37vLTx">
                              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                              <node concept="Xl_RD" id="6GoDrz8MA0$" role="37wK5m">
                                <property role="Xl_RC" value="        \&quot;--add-opens=%s=ALL-UNNAMED\&quot;," />
                              </node>
                              <node concept="37vLTw" id="6GoDrz8MA0_" role="37wK5m">
                                <ref role="3cqZAo" node="6GoDrz8MA0F" resolve="it" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6GoDrz8MA0A" role="37vLTJ">
                              <node concept="37vLTw" id="6GoDrz8MA0B" role="2Oq$k0">
                                <ref role="3cqZAo" node="6GoDrz8MA0s" resolve="n" />
                              </node>
                              <node concept="3TrcHB" id="6GoDrz8MA0C" role="2OqNvi">
                                <ref role="3TsBF5" to="s7om:1w81suLRRvp" resolve="text" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6GoDrz8MA0D" role="3cqZAp">
                          <node concept="37vLTw" id="6GoDrz8MA0E" role="3clFbG">
                            <ref role="3cqZAo" node="6GoDrz8MA0s" resolve="n" />
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6GoDrz8MA0F" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6GoDrz8MA0G" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6wqRQFGVsCO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wqRQFGVsCM" resolve="openedPackages" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA0O" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Didea.vendor.name=%s&quot;," />
        <node concept="17Uvod" id="6GoDrz8MA10" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="6GoDrz8MA11" role="3zH0cK">
            <node concept="3clFbS" id="6GoDrz8MA12" role="2VODD2">
              <node concept="3clFbF" id="6GoDrz8MA13" role="3cqZAp">
                <node concept="2YIFZM" id="6GoDrz8MA14" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="6GoDrz8MA15" role="37wK5m" />
                  <node concept="2OqwBi" id="6GoDrz8MA16" role="37wK5m">
                    <node concept="2OqwBi" id="6GoDrz8MA17" role="2Oq$k0">
                      <node concept="30H73N" id="6GoDrz8MA18" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6GoDrz8MA19" role="2OqNvi">
                        <ref role="3Tt5mk" to="s7om:32A7APlXEJ9" resolve="branding" />
                      </node>
                    </node>
                    <node concept="3zqWPK" id="70OdufORfOO" role="2OqNvi">
                      <ref role="37wK5l" to="2txq:6RvRF8fBDEC" resolve="getVendor" />
                      <node concept="10Nm6u" id="70OdufORfOQ" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="6GoDrz8MJAo" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1c" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Didea.paths.selector=$path.selector$&quot;," />
        <node concept="raruj" id="6GoDrz8MKbv" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1d" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Djna.boot.library.path=%s&quot;," />
        <node concept="raruj" id="6GoDrz8MKbw" role="lGtFl" />
        <node concept="17Uvod" id="49uyDlGrfyU" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="49uyDlGrfyV" role="3zH0cK">
            <node concept="3clFbS" id="49uyDlGrfyW" role="2VODD2">
              <node concept="3cpWs8" id="49uyDlGrfMZ" role="3cqZAp">
                <node concept="3cpWsn" id="49uyDlGrfN0" role="3cpWs9">
                  <property role="TrG5h" value="jnaPath" />
                  <node concept="17QB3L" id="49uyDlGrfN1" role="1tU5fm" />
                  <node concept="Xl_RD" id="49uyDlGrlEX" role="33vP2m">
                    <property role="Xl_RC" value="lib/jna" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="49uyDlGrfN_" role="3cqZAp">
                <node concept="37vLTI" id="49uyDlGrfNA" role="3clFbG">
                  <node concept="37vLTw" id="49uyDlGrfNB" role="37vLTJ">
                    <ref role="3cqZAo" node="49uyDlGrfN0" resolve="jnaPath" />
                  </node>
                  <node concept="3cpWs3" id="49uyDlGrfNC" role="37vLTx">
                    <node concept="37vLTw" id="49uyDlGrfND" role="3uHU7w">
                      <ref role="3cqZAo" node="49uyDlGrfN0" resolve="jnaPath" />
                    </node>
                    <node concept="1eOMI4" id="49uyDlGrfNE" role="3uHU7B">
                      <node concept="3K4zz7" id="49uyDlGrfNF" role="1eOMHV">
                        <node concept="Xl_RD" id="49uyDlGrfNG" role="3K4E3e">
                          <property role="Xl_RC" value="$APP_PACKAGE/Contents/" />
                        </node>
                        <node concept="3K4zz7" id="49uyDlGrzZn" role="3K4GZi">
                          <node concept="2OqwBi" id="49uyDlGr$v$" role="3K4Cdx">
                            <node concept="Xl_RD" id="49uyDlGr$v_" role="2Oq$k0">
                              <property role="Xl_RC" value="Windows" />
                            </node>
                            <node concept="liA8E" id="49uyDlGr$vA" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="v3LJS" id="49uyDlGr$vB" role="37wK5m">
                                <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="49uyDlGr_7C" role="3K4GZi">
                            <property role="Xl_RC" value="$IDE_HOME/" />
                          </node>
                          <node concept="Xl_RD" id="49uyDlGr_B2" role="3K4E3e">
                            <property role="Xl_RC" value="%IDE_HOME%/" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="49uyDlGrfNI" role="3K4Cdx">
                          <node concept="Xl_RD" id="49uyDlGrfNJ" role="2Oq$k0">
                            <property role="Xl_RC" value="macOS" />
                          </node>
                          <node concept="liA8E" id="49uyDlGrfNK" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="49uyDlGrfNL" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="49uyDlGrfO2" role="3cqZAp">
                <node concept="2YIFZM" id="49uyDlGrfO3" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="49uyDlGrfO4" role="37wK5m" />
                  <node concept="37vLTw" id="49uyDlGrfO5" role="37wK5m">
                    <ref role="3cqZAo" node="49uyDlGrfN0" resolve="jnaPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="2yVmrmHURFe" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dskiko.library.path=%s&quot;," />
        <node concept="raruj" id="2yVmrmHURFf" role="lGtFl" />
        <node concept="17Uvod" id="2yVmrmHURFg" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="2yVmrmHURFh" role="3zH0cK">
            <node concept="3clFbS" id="2yVmrmHURFi" role="2VODD2">
              <node concept="3cpWs8" id="2yVmrmHURFj" role="3cqZAp">
                <node concept="3cpWsn" id="2yVmrmHURFk" role="3cpWs9">
                  <property role="TrG5h" value="path" />
                  <node concept="17QB3L" id="2yVmrmHURFl" role="1tU5fm" />
                  <node concept="Xl_RD" id="2yVmrmHURFm" role="33vP2m">
                    <property role="Xl_RC" value="lib/skiko-awt-runtime-all" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2yVmrmHURFn" role="3cqZAp">
                <node concept="37vLTI" id="2yVmrmHURFo" role="3clFbG">
                  <node concept="37vLTw" id="2yVmrmHURFp" role="37vLTJ">
                    <ref role="3cqZAo" node="2yVmrmHURFk" resolve="path" />
                  </node>
                  <node concept="3cpWs3" id="2yVmrmHURFq" role="37vLTx">
                    <node concept="37vLTw" id="2yVmrmHURFr" role="3uHU7w">
                      <ref role="3cqZAo" node="2yVmrmHURFk" resolve="path" />
                    </node>
                    <node concept="1eOMI4" id="2yVmrmHURFs" role="3uHU7B">
                      <node concept="3K4zz7" id="2yVmrmHURFt" role="1eOMHV">
                        <node concept="Xl_RD" id="2yVmrmHURFu" role="3K4E3e">
                          <property role="Xl_RC" value="$APP_PACKAGE/Contents/" />
                        </node>
                        <node concept="3K4zz7" id="2yVmrmHURFv" role="3K4GZi">
                          <node concept="2OqwBi" id="2yVmrmHURFw" role="3K4Cdx">
                            <node concept="Xl_RD" id="2yVmrmHURFx" role="2Oq$k0">
                              <property role="Xl_RC" value="Windows" />
                            </node>
                            <node concept="liA8E" id="2yVmrmHURFy" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="v3LJS" id="2yVmrmHURFz" role="37wK5m">
                                <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2yVmrmHURF$" role="3K4GZi">
                            <property role="Xl_RC" value="$IDE_HOME/" />
                          </node>
                          <node concept="Xl_RD" id="2yVmrmHURF_" role="3K4E3e">
                            <property role="Xl_RC" value="%IDE_HOME%/" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2yVmrmHURFA" role="3K4Cdx">
                          <node concept="Xl_RD" id="2yVmrmHURFB" role="2Oq$k0">
                            <property role="Xl_RC" value="macOS" />
                          </node>
                          <node concept="liA8E" id="2yVmrmHURFC" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="2yVmrmHURFD" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2yVmrmHURFE" role="3cqZAp">
                <node concept="2YIFZM" id="2yVmrmHURFF" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="2yVmrmHURFG" role="37wK5m" />
                  <node concept="37vLTw" id="2yVmrmHURFH" role="37wK5m">
                    <ref role="3cqZAo" node="2yVmrmHURFk" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="49uyDlGrFeo" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Djna.nosys=true&quot;," />
        <node concept="raruj" id="49uyDlGrJcF" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="49uyDlGrHcb" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Djna.noclasspath=true&quot;," />
        <node concept="raruj" id="49uyDlGrMdY" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1e" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Djava.system.class.loader=com.intellij.util.lang.PathClassLoader&quot;," />
        <node concept="raruj" id="6GoDrz8MKbx" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1f" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dintellij.platform.load.app.info.from.resources=true&quot;," />
        <node concept="raruj" id="6GoDrz8MKby" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1g" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Didea.executables=mps&quot;," />
        <node concept="raruj" id="6GoDrz8MKbz" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1h" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Didea.home.path=$APP_PACKAGE/Contents&quot;," />
        <node concept="raruj" id="6GoDrz8MKb$" role="lGtFl" />
        <node concept="1W57fq" id="49uyDlGrwvD" role="lGtFl">
          <node concept="3IZrLx" id="49uyDlGrwvE" role="3IZSJc">
            <node concept="3clFbS" id="49uyDlGrwvF" role="2VODD2">
              <node concept="3clFbF" id="49uyDlGrwFh" role="3cqZAp">
                <node concept="2OqwBi" id="49uyDlGrwFj" role="3clFbG">
                  <node concept="Xl_RD" id="49uyDlGrwFk" role="2Oq$k0">
                    <property role="Xl_RC" value="macOS" />
                  </node>
                  <node concept="liA8E" id="49uyDlGrwFl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="v3LJS" id="49uyDlGrwFm" role="37wK5m">
                      <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1i" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dpty4j.preferred.native.folder=%s&quot;," />
        <node concept="raruj" id="6GoDrz8MKb_" role="lGtFl" />
        <node concept="17Uvod" id="49uyDlGrsVv" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="49uyDlGrsVw" role="3zH0cK">
            <node concept="3clFbS" id="49uyDlGrsVx" role="2VODD2">
              <node concept="3cpWs8" id="49uyDlGrt2Q" role="3cqZAp">
                <node concept="3cpWsn" id="49uyDlGrt2R" role="3cpWs9">
                  <property role="TrG5h" value="pty4jFolder" />
                  <node concept="17QB3L" id="49uyDlGrt2S" role="1tU5fm" />
                  <node concept="Xl_RD" id="49uyDlGrt2T" role="33vP2m">
                    <property role="Xl_RC" value="lib/pty4j" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="49uyDlGrt2U" role="3cqZAp">
                <node concept="37vLTI" id="49uyDlGrt2V" role="3clFbG">
                  <node concept="37vLTw" id="49uyDlGrt2W" role="37vLTJ">
                    <ref role="3cqZAo" node="49uyDlGrt2R" resolve="pty4jFolder" />
                  </node>
                  <node concept="3cpWs3" id="49uyDlGrt2X" role="37vLTx">
                    <node concept="37vLTw" id="49uyDlGrt2Y" role="3uHU7w">
                      <ref role="3cqZAo" node="49uyDlGrt2R" resolve="pty4jFolder" />
                    </node>
                    <node concept="1eOMI4" id="49uyDlGrt2Z" role="3uHU7B">
                      <node concept="3K4zz7" id="49uyDlGrBTT" role="1eOMHV">
                        <node concept="Xl_RD" id="49uyDlGrBTU" role="3K4E3e">
                          <property role="Xl_RC" value="$APP_PACKAGE/Contents/" />
                        </node>
                        <node concept="3K4zz7" id="49uyDlGrBTV" role="3K4GZi">
                          <node concept="2OqwBi" id="49uyDlGrBTW" role="3K4Cdx">
                            <node concept="Xl_RD" id="49uyDlGrBTX" role="2Oq$k0">
                              <property role="Xl_RC" value="Windows" />
                            </node>
                            <node concept="liA8E" id="49uyDlGrBTY" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="v3LJS" id="49uyDlGrBTZ" role="37wK5m">
                                <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="49uyDlGrBU0" role="3K4GZi">
                            <property role="Xl_RC" value="$IDE_HOME/" />
                          </node>
                          <node concept="Xl_RD" id="49uyDlGrBU1" role="3K4E3e">
                            <property role="Xl_RC" value="%IDE_HOME%/" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="49uyDlGrBU2" role="3K4Cdx">
                          <node concept="Xl_RD" id="49uyDlGrBU3" role="2Oq$k0">
                            <property role="Xl_RC" value="macOS" />
                          </node>
                          <node concept="liA8E" id="49uyDlGrBU4" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="v3LJS" id="49uyDlGrBU5" role="37wK5m">
                              <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="49uyDlGrt37" role="3cqZAp">
                <node concept="2YIFZM" id="49uyDlGrt38" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="49uyDlGrt39" role="37wK5m" />
                  <node concept="37vLTw" id="49uyDlGrt3a" role="37wK5m">
                    <ref role="3cqZAo" node="49uyDlGrt2R" resolve="pty4jFolder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1j" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-DjbScreenMenuBar.enabled=true&quot;," />
        <node concept="raruj" id="6GoDrz8MKbA" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1l" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dide.home.macro.test=$APP_PACKAGE/Contents&quot;," />
        <node concept="raruj" id="6GoDrz8MKbC" role="lGtFl" />
        <node concept="1W57fq" id="49uyDlGrwVr" role="lGtFl">
          <node concept="3IZrLx" id="49uyDlGrwVs" role="3IZSJc">
            <node concept="3clFbS" id="49uyDlGrwVt" role="2VODD2">
              <node concept="3clFbF" id="49uyDlGrx1n" role="3cqZAp">
                <node concept="2OqwBi" id="49uyDlGrx1p" role="3clFbG">
                  <node concept="Xl_RD" id="49uyDlGrx1q" role="2Oq$k0">
                    <property role="Xl_RC" value="macOS" />
                  </node>
                  <node concept="liA8E" id="49uyDlGrx1r" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="v3LJS" id="49uyDlGrx1s" role="37wK5m">
                      <ref role="v3LJV" node="6GoDrz8Lya0" resolve="os" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1m" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dcache.dir.macro.test=$IDE_CACHE_DIR&quot;," />
        <node concept="raruj" id="6GoDrz8MKbD" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1n" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;-Dij.startup.error.report.url=https://youtrack.jetbrains.com/newissue?project=MPS&amp;clearDraft=true&amp;summary=$TITLE$&amp;description=$DESCR$&quot;" />
        <node concept="raruj" id="6GoDrz8MKbE" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="7mPGpETBIC0" role="2DRAPQ">
        <property role="2DPR8u" value="        &quot;%s&quot;," />
        <node concept="17Uvod" id="7mPGpETBIC1" role="lGtFl">
          <property role="2qtEX9" value="text" />
          <property role="P4ACc" value="d5033cee-f632-44b6-b308-89d4fbde34ff/1731640411964205218/1731640411964798937" />
          <node concept="3zFVjK" id="7mPGpETBIC2" role="3zH0cK">
            <node concept="3clFbS" id="7mPGpETBIC3" role="2VODD2">
              <node concept="3clFbF" id="7mPGpETCdp2" role="3cqZAp">
                <node concept="2YIFZM" id="7mPGpETCdp4" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="3zGtF$" id="7mPGpETCdp5" role="37wK5m" />
                  <node concept="2OqwBi" id="7mPGpETCdWM" role="37wK5m">
                    <node concept="1PxgMI" id="7mPGpETCdWN" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="7mPGpETCdWO" role="3oSUPX">
                        <ref role="cht4Q" to="s7om:3nFPImNgRtc" resolve="SimpleVmOptions" />
                      </node>
                      <node concept="30H73N" id="7mPGpETCdWP" role="1m5AlR" />
                    </node>
                    <node concept="3TrcHB" id="7mPGpETCdWQ" role="2OqNvi">
                      <ref role="3TsBF5" to="s7om:3nFPImNgRtd" resolve="options" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="7mPGpETBIC8" role="lGtFl" />
        <node concept="1WS0z7" id="7mPGpETBIC9" role="lGtFl">
          <node concept="3JmXsc" id="7mPGpETBICa" role="3Jn$fo">
            <node concept="3clFbS" id="7mPGpETBICb" role="2VODD2">
              <node concept="3clFbF" id="7mPGpETBONb" role="3cqZAp">
                <node concept="2OqwBi" id="7mPGpETBZr8" role="3clFbG">
                  <node concept="2OqwBi" id="7mPGpETBPYO" role="2Oq$k0">
                    <node concept="30H73N" id="7mPGpETBONa" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7mPGpETBQS_" role="2OqNvi">
                      <ref role="3TtcxE" to="s7om:7mPGpETBx32" resolve="additionalJvmOptions" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="7mPGpETC5mZ" role="2OqNvi">
                    <node concept="1bVj0M" id="7mPGpETC5n1" role="23t8la">
                      <node concept="3clFbS" id="7mPGpETC5n2" role="1bW5cS">
                        <node concept="3clFbF" id="7mPGpETC5n8" role="3cqZAp">
                          <node concept="3clFbC" id="7mPGpETC8Cb" role="3clFbG">
                            <node concept="3clFbT" id="7mPGpETC8Ut" role="3uHU7w" />
                            <node concept="2OqwBi" id="7mPGpETC7cS" role="3uHU7B">
                              <node concept="1PxgMI" id="7mPGpETC6Ij" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="7mPGpETC6No" role="3oSUPX">
                                  <ref role="cht4Q" to="s7om:3nFPImNgRtc" resolve="SimpleVmOptions" />
                                </node>
                                <node concept="37vLTw" id="7mPGpETC5n7" role="1m5AlR">
                                  <ref role="3cqZAo" node="7mPGpETC5n3" resolve="it" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="7mPGpETC7_w" role="2OqNvi">
                                <ref role="3TsBF5" to="s7om:54lRqzvvvMy" resolve="commented" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="7mPGpETC5n3" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7mPGpETC5n4" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1o" role="2DRAPQ">
        <property role="2DPR8u" value="      ]," />
        <node concept="raruj" id="6GoDrz8MKbF" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1p" role="2DRAPQ">
        <property role="2DPR8u" value="      &quot;mainClass&quot;: &quot;jetbrains.mps.Launcher&quot;" />
        <node concept="raruj" id="6GoDrz8MKbG" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1q" role="2DRAPQ">
        <property role="2DPR8u" value="    }" />
        <node concept="raruj" id="6GoDrz8MKbH" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1r" role="2DRAPQ">
        <property role="2DPR8u" value="  ]," />
        <node concept="raruj" id="6GoDrz8MKbI" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="2Rq8xwQAl_a" role="2DRAPQ">
        <property role="2DPR8u" value="  &quot;bundledPlugins&quot;: [" />
        <node concept="raruj" id="2Rq8xwQApT0" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="2Rq8xwQAnJD" role="2DRAPQ">
        <property role="2DPR8u" value="  ]" />
        <node concept="raruj" id="2Rq8xwQApT1" role="lGtFl" />
      </node>
      <node concept="2DRAP_" id="6GoDrz8MA1s" role="2DRAPQ">
        <property role="2DPR8u" value="}" />
        <node concept="raruj" id="6GoDrz8MKbJ" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="2DRAQV" id="6GoDrz8MKbK">
    <property role="TrG5h" value="product-info-windows-amd64.json" />
    <node concept="2DRAP_" id="6GoDrz8MKbO" role="2DRAPQ">
      <property role="2DPR8u" value="{ }" />
      <node concept="5jKBG" id="6GoDrz8MKbQ" role="lGtFl">
        <ref role="v9R2y" node="6GoDrz8Lxq3" resolve="product-info" />
        <node concept="Xl_RD" id="6GoDrz8MKce" role="v9R3O">
          <property role="Xl_RC" value="Windows" />
        </node>
        <node concept="Xl_RD" id="6GoDrz8MKbV" role="v9R3O">
          <property role="Xl_RC" value="amd64" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="6GoDrz8MKbL" role="lGtFl" />
  </node>
  <node concept="2DRAQV" id="6GoDrz91gW8">
    <property role="TrG5h" value="product-info-linux-amd64.json" />
    <node concept="2DRAP_" id="6GoDrz9v7vS" role="2DRAPQ" />
    <node concept="2DRAP_" id="6GoDrz91gW9" role="2DRAPQ">
      <property role="2DPR8u" value="{ }" />
      <node concept="5jKBG" id="6GoDrz91gWa" role="lGtFl">
        <ref role="v9R2y" node="6GoDrz8Lxq3" resolve="product-info" />
        <node concept="Xl_RD" id="6GoDrz91gWb" role="v9R3O">
          <property role="Xl_RC" value="Linux" />
        </node>
        <node concept="Xl_RD" id="6GoDrz91gWc" role="v9R3O">
          <property role="Xl_RC" value="amd64" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="6GoDrz91gWd" role="lGtFl" />
  </node>
  <node concept="2DRAQV" id="6GoDrz91lqQ">
    <property role="TrG5h" value="product-info-macos-amd64.json" />
    <node concept="2DRAP_" id="6GoDrz91lqR" role="2DRAPQ">
      <property role="2DPR8u" value="{ }" />
      <node concept="5jKBG" id="6GoDrz91lqS" role="lGtFl">
        <ref role="v9R2y" node="6GoDrz8Lxq3" resolve="product-info" />
        <node concept="Xl_RD" id="6GoDrz91lqT" role="v9R3O">
          <property role="Xl_RC" value="macOS" />
        </node>
        <node concept="Xl_RD" id="6GoDrz91lqU" role="v9R3O">
          <property role="Xl_RC" value="amd64" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="6GoDrz91lqV" role="lGtFl" />
  </node>
  <node concept="2DRAQV" id="6GoDrz9v7vx">
    <property role="TrG5h" value="product-info-macos-aarch64.json" />
    <node concept="2DRAP_" id="6GoDrz9v7vy" role="2DRAPQ">
      <property role="2DPR8u" value="{ }" />
      <node concept="5jKBG" id="6GoDrz9v7vz" role="lGtFl">
        <ref role="v9R2y" node="6GoDrz8Lxq3" resolve="product-info" />
        <node concept="Xl_RD" id="6GoDrz9v7v$" role="v9R3O">
          <property role="Xl_RC" value="macOS" />
        </node>
        <node concept="Xl_RD" id="6GoDrz9v7v_" role="v9R3O">
          <property role="Xl_RC" value="aarch64" />
        </node>
      </node>
    </node>
    <node concept="n94m4" id="6GoDrz9v7vA" role="lGtFl" />
  </node>
</model>

