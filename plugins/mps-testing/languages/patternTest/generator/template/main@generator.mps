<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e99a00b2-f235-4c54-b7b3-4db727dc65df(jetbrains.mps.lang.pattern.testLang.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="pnao" ref="r:7336929d-3d95-43d0-b2df-fd38af21ae45(jetbrains.mps.lang.pattern.testLang.structure)" />
    <import index="tp6m" ref="r:00000000-0000-4000-0000-011c895903a2(jetbrains.mps.lang.test.runtime)" />
    <import index="3fh5" ref="r:3d2b27a7-4374-41aa-af31-19e1e430d9f5(jetbrains.mps.lang.test.generator.template.util)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="v3cr" ref="r:d2b7cfed-de53-404b-aa28-8afd6d7632e0(jetbrains.mps.lang.pattern.testLang.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="tp26" ref="r:00000000-0000-4000-0000-011c89590302(jetbrains.mps.lang.smodel.generator.baseLanguage.util)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="yqm7" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api(JUnit/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" implicit="true" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1211979288880" name="jetbrains.mps.lang.test.structure.AssertMatch" flags="nn" index="JA50E">
        <child id="1211979305365" name="before" index="JA92f" />
        <child id="1211979322383" name="after" index="JAdkl" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="lg" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1048903277989260815" name="jetbrains.mps.lang.generator.structure.TemplateArgumentVarRefExpression2" flags="ng" index="1mL9RQ">
        <reference id="1048903277989260816" name="vardecl" index="1mL9RD" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="ig" index="3NFfHV" />
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
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
    </language>
  </registry>
  <node concept="bUwia" id="7zmQ_SRAuHt">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <node concept="3lhOvk" id="7zmQ_SRAyzI" role="3lj3bC">
      <ref role="30HIoZ" to="pnao:7zmQ_SRAuG8" resolve="PatternTest" />
      <ref role="3lhOvi" node="HioGaijFa$" resolve="PatternTestName" />
    </node>
  </node>
  <node concept="312cEu" id="HioGaijFa$">
    <property role="TrG5h" value="PatternTestName" />
    <node concept="3Tm1VV" id="HioGaijFa_" role="1B3o_S" />
    <node concept="n94m4" id="HioGaijFaE" role="lGtFl">
      <ref role="n9lRv" to="pnao:7zmQ_SRAuG8" resolve="PatternTest" />
    </node>
    <node concept="17Uvod" id="HioGaijFaF" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="HioGaijFaG" role="3zH0cK">
        <node concept="3clFbS" id="HioGaijFaH" role="2VODD2">
          <node concept="3clFbF" id="HioGaijFaI" role="3cqZAp">
            <node concept="2OqwBi" id="lS$o0erIJu" role="3clFbG">
              <node concept="30H73N" id="lS$o0erIJt" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORdn4" role="2OqNvi">
                <ref role="37wK5l" to="v3cr:lS$o0er$H8" resolve="getPatternTestName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="6TqiyXNdk69" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="2AHcQZ" id="xtlewLP09a" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="Wx3nA" id="4dqLDEZeUN4" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourParametersCacheExtension" />
      <node concept="3Tm6S6" id="4dqLDEZeUN5" role="1B3o_S" />
      <node concept="3uibUv" id="4dqLDEZeUN6" role="1tU5fm">
        <ref role="3uigEE" to="tp6m:4dqLDEYYwgD" resolve="TestParametersCacheExtension" />
      </node>
      <node concept="2ShNRf" id="4dqLDEZeUN7" role="33vP2m">
        <node concept="1pGfFk" id="4dqLDEZeUN8" role="2ShVmc">
          <ref role="37wK5l" to="tp6m:4dqLDEYYHvm" resolve="TestParametersCacheExtension" />
          <node concept="2OqwBi" id="6US8dKoTkuj" role="37wK5m">
            <node concept="2OqwBi" id="6US8dKoTh_y" role="2Oq$k0">
              <node concept="2OqwBi" id="6US8dKoTdBB" role="2Oq$k0">
                <node concept="2OqwBi" id="6US8dKoSVuT" role="2Oq$k0">
                  <node concept="2ShNRf" id="6US8dKoS1YO" role="2Oq$k0">
                    <node concept="1pGfFk" id="6US8dKoS2EI" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="tp6m:6US8dKoOF6n" resolve="TestParametersCacheBuilder" />
                      <node concept="3VsKOn" id="4dqLDEZgXaz" role="37wK5m">
                        <ref role="3VsUkX" node="HioGaijFa$" resolve="PatternTestName" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6US8dKoSVS6" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:6US8dKoOtkl" resolve="projectPath" />
                    <node concept="Xl_RD" id="4dqLDEZgXa$" role="37wK5m">
                      <property role="Xl_RC" value="project path" />
                      <node concept="17Uvod" id="4dqLDEZgXa_" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="4dqLDEZgXaA" role="3zH0cK">
                          <node concept="3clFbS" id="4dqLDEZgXaB" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoX5ip" role="3cqZAp">
                              <node concept="1mL9RQ" id="6US8dKoX5io" role="3clFbG">
                                <ref role="1mL9RD" node="6US8dKoX2Om" resolve="projectPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="6US8dKoX5uK" role="lGtFl">
                        <node concept="3IZrLx" id="6US8dKoX5uL" role="3IZSJc">
                          <node concept="3clFbS" id="6US8dKoX5uM" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoX5LQ" role="3cqZAp">
                              <node concept="3y3z36" id="6US8dKoX7ey" role="3clFbG">
                                <node concept="10Nm6u" id="6US8dKoX80j" role="3uHU7w" />
                                <node concept="1mL9RQ" id="6US8dKoX5LP" role="3uHU7B">
                                  <ref role="1mL9RD" node="6US8dKoX2Om" resolve="projectPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="6US8dKoX89K" role="UU_$l">
                          <node concept="10Nm6u" id="6US8dKoX8gX" role="gfFT$" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6US8dKoTgC1" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:6US8dKoOs$1" resolve="modelRef" />
                  <node concept="Xl_RD" id="4dqLDEZgXaH" role="37wK5m">
                    <property role="Xl_RC" value="model.fq.name" />
                    <node concept="17Uvod" id="4dqLDEZgXaI" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="4dqLDEZgXaJ" role="3zH0cK">
                        <node concept="3clFbS" id="4dqLDEZgXaK" role="2VODD2">
                          <node concept="3clFbF" id="4dqLDEZgXaL" role="3cqZAp">
                            <node concept="2OqwBi" id="4dqLDEZgXaM" role="3clFbG">
                              <node concept="2OqwBi" id="4dqLDEZgXaN" role="2Oq$k0">
                                <node concept="liA8E" id="4dqLDEZgXaO" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                </node>
                                <node concept="2JrnkZ" id="4dqLDEZgXaP" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4dqLDEZgXaQ" role="2JrQYb">
                                    <node concept="1iwH7S" id="4dqLDEZgXaR" role="2Oq$k0" />
                                    <node concept="1st3f0" id="4dqLDEZgXaS" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4dqLDEZgXaT" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ps_y7" id="6US8dKoX2Ol" role="lGtFl">
                  <node concept="1ps_xZ" id="6US8dKoX2Om" role="1ps_xO">
                    <property role="TrG5h" value="projectPath" />
                    <node concept="2jfdEK" id="6US8dKoX2On" role="1ps_xN">
                      <node concept="3clFbS" id="6US8dKoX2Oo" role="2VODD2">
                        <node concept="3clFbF" id="6US8dKoX4Ed" role="3cqZAp">
                          <node concept="2YIFZM" id="6US8dKoX4Ee" role="3clFbG">
                            <ref role="37wK5l" to="3fh5:7v5ch11EroR" resolve="getProjectPath" />
                            <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                            <node concept="2OqwBi" id="6US8dKoX4Ef" role="37wK5m">
                              <node concept="30H73N" id="6US8dKoX4Eg" role="2Oq$k0" />
                              <node concept="I4A8Y" id="6US8dKoX4Eh" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6US8dKoTk4h" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:6US8dKoOtLM" resolve="reopenProject" />
                <node concept="3clFbT" id="4dqLDEZgXaU" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6US8dKoTmma" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:6US8dKoNyEp" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZeUNH" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="5iphLhCcKY9" role="jymVt" />
    <node concept="3clFbW" id="HioGaijFaA" role="jymVt">
      <node concept="3cqZAl" id="HioGaijFaB" role="3clF45" />
      <node concept="3Tm1VV" id="HioGaijFaC" role="1B3o_S" />
      <node concept="3clFbS" id="HioGaijFHO" role="3clF47">
        <node concept="XkiVB" id="5iphLhCdbLM" role="3cqZAp">
          <ref role="37wK5l" to="tp6m:5LbRjS1pM4D" resolve="BaseTransformationTest" />
          <node concept="2OqwBi" id="4dqLDEZgXTg" role="37wK5m">
            <node concept="37vLTw" id="5iphLhCdbNi" role="2Oq$k0">
              <ref role="3cqZAo" node="4dqLDEZeUN4" resolve="ourParametersCacheExtension" />
            </node>
            <node concept="liA8E" id="4dqLDEZgYl4" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4dqLDEYZ0EK" resolve="getParametersCache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5iphLhCd95b" role="jymVt" />
    <node concept="3clFb_" id="xtlewLP02a" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="xtlewLP02b" role="3clF45" />
      <node concept="3Tm1VV" id="xtlewLP02c" role="1B3o_S" />
      <node concept="2AHcQZ" id="xtlewLP02k" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~Test" resolve="Test" />
      </node>
      <node concept="3clFbS" id="xtlewLP02s" role="3clF47">
        <node concept="3clFbF" id="5UhD89E1Zq_" role="3cqZAp">
          <node concept="2OqwBi" id="5UhD89E22Go" role="3clFbG">
            <node concept="2OqwBi" id="5UhD89E20EN" role="2Oq$k0">
              <node concept="1rXfSq" id="5UhD89E1Zqx" role="2Oq$k0">
                <ref role="37wK5l" to="tp6m:e$hNri9Pga" resolve="getProject" />
              </node>
              <node concept="liA8E" id="5UhD89E22By" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="5UhD89E24C1" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="EkFhnCrIdF" role="37wK5m">
                <node concept="3clFbS" id="EkFhnCrIdJ" role="1bW5cS">
                  <node concept="3cpWs8" id="1mO8VfSNZVt" role="3cqZAp">
                    <node concept="3cpWsn" id="1mO8VfSNZVu" role="3cpWs9">
                      <property role="TrG5h" value="nodeToMatch" />
                      <node concept="3Tqbb2" id="1mO8VfSNZVv" role="1tU5fm" />
                      <node concept="2c44tf" id="1mO8VfSNZVw" role="33vP2m">
                        <node concept="2VYdi" id="1mO8VfSNZVx" role="2c44tc">
                          <node concept="29HgVG" id="1mO8VfSNZVy" role="lGtFl">
                            <node concept="3NFfHV" id="1mO8VfSNZVz" role="3NFExx">
                              <node concept="3clFbS" id="1mO8VfSNZV$" role="2VODD2">
                                <node concept="3clFbF" id="1mO8VfSNZV_" role="3cqZAp">
                                  <node concept="2OqwBi" id="1mO8VfSNZVA" role="3clFbG">
                                    <node concept="3TrEf2" id="1mO8VfSNZVB" role="2OqNvi">
                                      <ref role="3Tt5mk" to="pnao:7zmQ_SRAuG9" resolve="nodeToMatch" />
                                    </node>
                                    <node concept="30H73N" id="1mO8VfSNZVC" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1mO8VfSNZVD" role="3cqZAp">
                    <node concept="3cpWsn" id="1mO8VfSNZVE" role="3cpWs9">
                      <property role="TrG5h" value="pattern" />
                      <node concept="3uibUv" id="2ihAaD8D5it" role="1tU5fm">
                        <ref role="3uigEE" to="7jhi:~DefaultMatchingPattern" resolve="DefaultMatchingPattern" />
                      </node>
                      <node concept="33vP2n" id="1mO8VfSNZVG" role="33vP2m">
                        <node concept="29HgVG" id="1mO8VfSNZVH" role="lGtFl">
                          <node concept="3NFfHV" id="1mO8VfSNZVI" role="3NFExx">
                            <node concept="3clFbS" id="1mO8VfSNZVJ" role="2VODD2">
                              <node concept="3clFbF" id="1mO8VfSNZVK" role="3cqZAp">
                                <node concept="2OqwBi" id="1mO8VfSNZVL" role="3clFbG">
                                  <node concept="3TrEf2" id="1mO8VfSNZVM" role="2OqNvi">
                                    <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGa" resolve="pattern" />
                                  </node>
                                  <node concept="30H73N" id="1mO8VfSNZVN" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1mO8VfSOjWe" role="3cqZAp">
                    <node concept="3cpWsn" id="1mO8VfSOjWf" role="3cpWs9">
                      <property role="TrG5h" value="matches" />
                      <property role="3TUv4t" value="true" />
                      <node concept="10P_77" id="1mO8VfSOjWg" role="1tU5fm" />
                      <node concept="2OqwBi" id="1mO8VfSOjWi" role="33vP2m">
                        <node concept="37vLTw" id="6L8Fg_wJ8_U" role="2Oq$k0">
                          <ref role="3cqZAo" node="1mO8VfSNZVE" resolve="pattern" />
                        </node>
                        <node concept="liA8E" id="1mO8VfSOjWk" role="2OqNvi">
                          <ref role="37wK5l" to="7jhi:~DefaultMatchingPattern.match(org.jetbrains.mps.openapi.model.SNode)" resolve="match" />
                          <node concept="37vLTw" id="6L8Fg_wJ8$5" role="37wK5m">
                            <ref role="3cqZAo" node="1mO8VfSNZVu" resolve="nodeToMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1043xPhxvLH" role="3cqZAp">
                    <node concept="2YIFZM" id="1043xPhxx$L" role="3clFbG">
                      <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
                      <ref role="37wK5l" to="rjhg:~Assert.assertTrue(java.lang.String,boolean)" resolve="assertTrue" />
                      <node concept="Xl_RD" id="1043xPhxy0V" role="37wK5m">
                        <property role="Xl_RC" value="Pattern match expected" />
                      </node>
                      <node concept="37vLTw" id="1043xPhx$j4" role="37wK5m">
                        <ref role="3cqZAo" node="1mO8VfSOjWf" resolve="matches" />
                      </node>
                    </node>
                    <node concept="1W57fq" id="1043xPhxCnx" role="lGtFl">
                      <node concept="3IZrLx" id="1043xPhxCn$" role="3IZSJc">
                        <node concept="3clFbS" id="1043xPhxCn_" role="2VODD2">
                          <node concept="3clFbF" id="1043xPhxFP1" role="3cqZAp">
                            <node concept="2OqwBi" id="1043xPhxFP3" role="3clFbG">
                              <node concept="2OqwBi" id="1043xPhxFP4" role="2Oq$k0">
                                <node concept="30H73N" id="1043xPhxFP5" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1043xPhxFP6" role="2OqNvi">
                                  <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGb" resolve="matches" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="1043xPhxFP7" role="2OqNvi">
                                <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gft3U" id="1043xPhxNeH" role="UU_$l">
                        <node concept="3clFbF" id="1043xPhxQR2" role="gfFT$">
                          <node concept="2YIFZM" id="1043xPhxQRT" role="3clFbG">
                            <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
                            <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
                            <node concept="Xl_RD" id="1043xPhxQSP" role="37wK5m">
                              <property role="Xl_RC" value="Unexpected pattern match" />
                            </node>
                            <node concept="37vLTw" id="1043xPhxSrC" role="37wK5m">
                              <ref role="3cqZAo" node="1mO8VfSOjWf" resolve="matches" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="JA50E" id="1mO8VfSNZWI" role="3cqZAp">
                    <node concept="2OqwBi" id="1mO8VfSNZX6" role="JAdkl">
                      <node concept="37vLTw" id="6L8Fg_wJ8Cg" role="2Oq$k0">
                        <ref role="3cqZAo" node="1mO8VfSNZVE" resolve="pattern" />
                      </node>
                      <node concept="liA8E" id="1mO8VfSNZX8" role="2OqNvi">
                        <ref role="37wK5l" to="7jhi:~DefaultMatchingPattern.getMatchedNode(java.lang.String)" resolve="getMatchedNode" />
                        <node concept="Xl_RD" id="1mO8VfSNZX9" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="17Uvod" id="1mO8VfSNZXa" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <node concept="3zFVjK" id="1mO8VfSNZXb" role="3zH0cK">
                              <node concept="3clFbS" id="1mO8VfSNZXc" role="2VODD2">
                                <node concept="3clFbF" id="1mO8VfSNZXd" role="3cqZAp">
                                  <node concept="2OqwBi" id="1mO8VfSNZXf" role="3clFbG">
                                    <node concept="2OqwBi" id="1mO8VfSNZXg" role="2Oq$k0">
                                      <node concept="2OqwBi" id="1mO8VfSNZXh" role="2Oq$k0">
                                        <node concept="30H73N" id="1mO8VfSNZXi" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="1mO8VfSNZXj" role="2OqNvi">
                                          <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGf" resolve="variable" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="1mO8VfSNZXk" role="2OqNvi">
                                        <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGi" resolve="declaration" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="1mO8VfSNZXl" role="2OqNvi">
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
                    <node concept="2c44tf" id="1mO8VfSNZWU" role="JA92f">
                      <node concept="10Nm6u" id="1mO8VfSNZWV" role="2c44tc">
                        <node concept="29HgVG" id="1mO8VfSNZWW" role="lGtFl">
                          <node concept="3NFfHV" id="1mO8VfSNZWX" role="3NFExx">
                            <node concept="3clFbS" id="1mO8VfSNZWY" role="2VODD2">
                              <node concept="3clFbF" id="1mO8VfSNZWZ" role="3cqZAp">
                                <node concept="2OqwBi" id="1mO8VfSNZX0" role="3clFbG">
                                  <node concept="3TrEf2" id="1mO8VfSNZXx" role="2OqNvi">
                                    <ref role="3Tt5mk" to="pnao:3f8gaaJnmTD" resolve="value" />
                                  </node>
                                  <node concept="30H73N" id="1mO8VfSNZX2" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1W57fq" id="1043xPhydc8" role="lGtFl">
                      <node concept="3IZrLx" id="1043xPhydc9" role="3IZSJc">
                        <node concept="3clFbS" id="1043xPhydca" role="2VODD2">
                          <node concept="3clFbF" id="1043xPhylfn" role="3cqZAp">
                            <node concept="2OqwBi" id="1043xPhylfo" role="3clFbG">
                              <node concept="2OqwBi" id="1043xPhylfp" role="2Oq$k0">
                                <node concept="30H73N" id="1043xPhylfq" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1043xPhylfr" role="2OqNvi">
                                  <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGb" resolve="matches" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="1043xPhylfs" role="2OqNvi">
                                <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1WS0z7" id="1mO8VfSNZWL" role="lGtFl">
                      <node concept="3JmXsc" id="1mO8VfSNZWO" role="3Jn$fo">
                        <node concept="3clFbS" id="1mO8VfSNZWP" role="2VODD2">
                          <node concept="3clFbF" id="1mO8VfSNZWQ" role="3cqZAp">
                            <node concept="2OqwBi" id="1mO8VfSNZWR" role="3clFbG">
                              <node concept="3Tsc0h" id="1mO8VfSNZWS" role="2OqNvi">
                                <ref role="3TtcxE" to="pnao:3f8gaaJnmTG" resolve="variable" />
                              </node>
                              <node concept="30H73N" id="1mO8VfSNZWT" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="1mO8VfSO59h" role="3cqZAp">
                    <node concept="Xl_RD" id="1mO8VfSO59k" role="3tpDZB">
                      <property role="Xl_RC" value="" />
                      <node concept="29HgVG" id="1mO8VfSO59x" role="lGtFl">
                        <node concept="3NFfHV" id="1mO8VfSO59$" role="3NFExx">
                          <node concept="3clFbS" id="1mO8VfSO59_" role="2VODD2">
                            <node concept="3clFbF" id="1mO8VfSO59A" role="3cqZAp">
                              <node concept="2OqwBi" id="1mO8VfSO59B" role="3clFbG">
                                <node concept="3TrEf2" id="1mO8VfSO59C" role="2OqNvi">
                                  <ref role="3Tt5mk" to="pnao:1mO8VfSO4aS" resolve="value" />
                                </node>
                                <node concept="30H73N" id="1mO8VfSO59D" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1W57fq" id="1043xPhyv58" role="lGtFl">
                      <node concept="3IZrLx" id="1043xPhyv59" role="3IZSJc">
                        <node concept="3clFbS" id="1043xPhyv5a" role="2VODD2">
                          <node concept="3clFbF" id="1043xPhyxdd" role="3cqZAp">
                            <node concept="2OqwBi" id="1043xPhyxde" role="3clFbG">
                              <node concept="2OqwBi" id="1043xPhyxdf" role="2Oq$k0">
                                <node concept="30H73N" id="1043xPhyxdg" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1043xPhyxdh" role="2OqNvi">
                                  <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGb" resolve="matches" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="1043xPhyxdi" role="2OqNvi">
                                <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1WS0z7" id="1mO8VfSO59n" role="lGtFl">
                      <node concept="3JmXsc" id="1mO8VfSO59q" role="3Jn$fo">
                        <node concept="3clFbS" id="1mO8VfSO59r" role="2VODD2">
                          <node concept="3clFbF" id="1mO8VfSO59s" role="3cqZAp">
                            <node concept="2OqwBi" id="1mO8VfSO59t" role="3clFbG">
                              <node concept="3Tsc0h" id="1mO8VfSO59u" role="2OqNvi">
                                <ref role="3TtcxE" to="pnao:1mO8VfSO4br" resolve="property" />
                              </node>
                              <node concept="30H73N" id="1mO8VfSO59v" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="7xvVBHRkpjp" role="3tpDZA">
                      <ref role="37wK5l" to="i8bi:7xvVBHRhWnm" resolve="castString" />
                      <ref role="1Pybhc" to="i8bi:5IkW5anFfnn" resolve="SPropertyOperations" />
                      <node concept="2OqwBi" id="7xvVBHRkpjq" role="37wK5m">
                        <node concept="37vLTw" id="7xvVBHRkpjr" role="2Oq$k0">
                          <ref role="3cqZAo" node="1mO8VfSNZVE" resolve="pattern" />
                        </node>
                        <node concept="liA8E" id="7xvVBHRkpjs" role="2OqNvi">
                          <ref role="37wK5l" to="7jhi:~DefaultMatchingPattern.getMatchedPropertyValue(java.lang.String)" resolve="getMatchedPropertyValue" />
                          <node concept="Xl_RD" id="7xvVBHRkpjt" role="37wK5m">
                            <property role="Xl_RC" value="" />
                            <node concept="17Uvod" id="7xvVBHRkpju" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7xvVBHRkpjv" role="3zH0cK">
                                <node concept="3clFbS" id="7xvVBHRkpjw" role="2VODD2">
                                  <node concept="3clFbF" id="7xvVBHRkpjx" role="3cqZAp">
                                    <node concept="2OqwBi" id="7xvVBHRkpjy" role="3clFbG">
                                      <node concept="2OqwBi" id="7xvVBHRkpjz" role="2Oq$k0">
                                        <node concept="2OqwBi" id="7xvVBHRkpj$" role="2Oq$k0">
                                          <node concept="30H73N" id="7xvVBHRkpj_" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="7xvVBHRkpjA" role="2OqNvi">
                                            <ref role="3Tt5mk" to="pnao:1mO8VfSO4aR" resolve="variable" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="7xvVBHRkpjB" role="2OqNvi">
                                          <ref role="3Tt5mk" to="pnao:1mO8VfSNYIY" resolve="declaration" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="7xvVBHRkpjC" role="2OqNvi">
                                        <ref role="3TsBF5" to="tp3t:gyDMOum" resolve="varName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="7xvVBHRkpjD" role="lGtFl">
                        <node concept="3IZrLx" id="7xvVBHRkpjE" role="3IZSJc">
                          <node concept="3clFbS" id="7xvVBHRkpjF" role="2VODD2">
                            <node concept="3clFbF" id="7xvVBHRkpjG" role="3cqZAp">
                              <node concept="2OqwBi" id="7xvVBHRkpjH" role="3clFbG">
                                <node concept="2OqwBi" id="7xvVBHRkpjI" role="2Oq$k0">
                                  <node concept="2OqwBi" id="7xvVBHRkpjJ" role="2Oq$k0">
                                    <node concept="30H73N" id="7xvVBHRkpjK" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="7xvVBHRkpjL" role="2OqNvi">
                                      <ref role="3Tt5mk" to="pnao:1mO8VfSO4aR" resolve="variable" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="7xvVBHRkpjM" role="2OqNvi">
                                    <ref role="3Tt5mk" to="pnao:1mO8VfSNYIY" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="7xvVBHRkpjN" role="2OqNvi">
                                  <ref role="3TsBF5" to="tp3r:1SDkaf46SBG" resolve="stringValueMigrated" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="7xvVBHRkpjO" role="UU_$l">
                          <node concept="2OqwBi" id="7xvVBHRkpjP" role="gfFT$">
                            <node concept="37vLTw" id="7xvVBHRkpjQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1mO8VfSNZVE" resolve="pattern" />
                            </node>
                            <node concept="liA8E" id="7xvVBHRkpjR" role="2OqNvi">
                              <ref role="37wK5l" to="7jhi:~DefaultMatchingPattern.getMatchedProperty(java.lang.String)" resolve="getMatchedProperty" />
                              <node concept="Xl_RD" id="7xvVBHRkpjS" role="37wK5m">
                                <property role="Xl_RC" value="" />
                                <node concept="17Uvod" id="7xvVBHRkpjT" role="lGtFl">
                                  <property role="2qtEX9" value="value" />
                                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                                  <node concept="3zFVjK" id="7xvVBHRkpjU" role="3zH0cK">
                                    <node concept="3clFbS" id="7xvVBHRkpjV" role="2VODD2">
                                      <node concept="3clFbF" id="7xvVBHRkpjW" role="3cqZAp">
                                        <node concept="2OqwBi" id="7xvVBHRkpjX" role="3clFbG">
                                          <node concept="2OqwBi" id="7xvVBHRkpjY" role="2Oq$k0">
                                            <node concept="2OqwBi" id="7xvVBHRkpjZ" role="2Oq$k0">
                                              <node concept="30H73N" id="7xvVBHRkpk0" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="7xvVBHRkpk1" role="2OqNvi">
                                                <ref role="3Tt5mk" to="pnao:1mO8VfSO4aR" resolve="variable" />
                                              </node>
                                            </node>
                                            <node concept="3TrEf2" id="7xvVBHRkpk2" role="2OqNvi">
                                              <ref role="3Tt5mk" to="pnao:1mO8VfSNYIY" resolve="declaration" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="7xvVBHRkpk3" role="2OqNvi">
                                            <ref role="3TsBF5" to="tp3t:gyDMOum" resolve="varName" />
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
                      <node concept="1ZhdrF" id="7xvVBHRkr5p" role="lGtFl">
                        <property role="2qtEX8" value="baseMethodDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                        <node concept="3$xsQk" id="7xvVBHRkr5q" role="3$ytzL">
                          <node concept="3clFbS" id="7xvVBHRkr5r" role="2VODD2">
                            <node concept="3clFbF" id="7xvVBHRkuH3" role="3cqZAp">
                              <node concept="2YIFZM" id="7xvVBHRkvzy" role="3clFbG">
                                <ref role="37wK5l" to="tp26:7xvVBHRiwYf" resolve="getCastMethod" />
                                <ref role="1Pybhc" to="tp26:7xvVBHRiwUb" resolve="PropertiesUtil" />
                                <node concept="2OqwBi" id="7xvVBHRkCWP" role="37wK5m">
                                  <node concept="2OqwBi" id="7xvVBHRk_mi" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7xvVBHRkxA4" role="2Oq$k0">
                                      <node concept="2OqwBi" id="7xvVBHRkvIf" role="2Oq$k0">
                                        <node concept="30H73N" id="7xvVBHRkv_k" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="7xvVBHRkxoD" role="2OqNvi">
                                          <ref role="3Tt5mk" to="pnao:1mO8VfSO4aR" resolve="variable" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="7xvVBHRk_58" role="2OqNvi">
                                        <ref role="3Tt5mk" to="pnao:1mO8VfSNYIY" resolve="declaration" />
                                      </node>
                                    </node>
                                    <node concept="3zqWPK" id="70OdufORdn6" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcu:121FNPYBLc9" resolve="getPropertyDeclaration" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="7xvVBHRkDt9" role="2OqNvi">
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
                  <node concept="9aQIb" id="1mO8VfSOfDk" role="3cqZAp">
                    <node concept="3clFbS" id="1mO8VfSOfDl" role="9aQI4">
                      <node concept="3cpWs8" id="1mO8VfSOfDx" role="3cqZAp">
                        <node concept="3cpWsn" id="1mO8VfSOfDy" role="3cpWs9">
                          <property role="TrG5h" value="listIt" />
                          <node concept="2OqwBi" id="1043xPh_eHm" role="33vP2m">
                            <node concept="2OqwBi" id="1mO8VfSOfDB" role="2Oq$k0">
                              <node concept="37vLTw" id="6L8Fg_wJ8Dr" role="2Oq$k0">
                                <ref role="3cqZAo" node="1mO8VfSNZVE" resolve="pattern" />
                              </node>
                              <node concept="liA8E" id="1mO8VfSOfDD" role="2OqNvi">
                                <ref role="37wK5l" to="7jhi:~DefaultMatchingPattern.getMatchedList(java.lang.String)" resolve="getMatchedList" />
                                <node concept="Xl_RD" id="1mO8VfSOfDE" role="37wK5m">
                                  <property role="Xl_RC" value="" />
                                  <node concept="17Uvod" id="1mO8VfSOfDF" role="lGtFl">
                                    <property role="2qtEX9" value="value" />
                                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                                    <node concept="3zFVjK" id="1mO8VfSOfDG" role="3zH0cK">
                                      <node concept="3clFbS" id="1mO8VfSOfDH" role="2VODD2">
                                        <node concept="3clFbF" id="2ihAaD8DfJ0" role="3cqZAp">
                                          <node concept="2OqwBi" id="1mO8VfSOfDK" role="3clFbG">
                                            <node concept="2OqwBi" id="1mO8VfSOfDL" role="2Oq$k0">
                                              <node concept="2OqwBi" id="1mO8VfSOfDM" role="2Oq$k0">
                                                <node concept="30H73N" id="1mO8VfSOfDN" role="2Oq$k0" />
                                                <node concept="3TrEf2" id="1mO8VfSOfDU" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="pnao:1mO8VfSO65c" resolve="variable" />
                                                </node>
                                              </node>
                                              <node concept="3TrEf2" id="1mO8VfSOfDV" role="2OqNvi">
                                                <ref role="3Tt5mk" to="pnao:1mO8VfSO68w" resolve="listPattern" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="1mO8VfSOfDW" role="2OqNvi">
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
                            <node concept="liA8E" id="1043xPh_hmH" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.iterator()" resolve="iterator" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="1mO8VfSOfEF" role="1tU5fm">
                            <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                            <node concept="3uibUv" id="1mO8VfSOfEH" role="11_B2D">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="JA50E" id="1mO8VfSOfED" role="3cqZAp">
                        <node concept="2c44tf" id="1mO8VfSOgGm" role="JAdkl">
                          <node concept="10Nm6u" id="1mO8VfSOgGn" role="2c44tc">
                            <node concept="29HgVG" id="1mO8VfSOgGo" role="lGtFl" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1mO8VfSOfEK" role="JA92f">
                          <node concept="37vLTw" id="6L8Fg_wJ8y6" role="2Oq$k0">
                            <ref role="3cqZAo" node="1mO8VfSOfDy" resolve="listIt" />
                          </node>
                          <node concept="liA8E" id="1043xPh_WeP" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                          </node>
                        </node>
                        <node concept="1WS0z7" id="1043xPh_GTa" role="lGtFl">
                          <node concept="3JmXsc" id="1mO8VfSOfEc" role="3Jn$fo">
                            <node concept="3clFbS" id="1mO8VfSOfEd" role="2VODD2">
                              <node concept="3clFbF" id="1mO8VfSOfEe" role="3cqZAp">
                                <node concept="2OqwBi" id="1mO8VfSOfEf" role="3clFbG">
                                  <node concept="3Tsc0h" id="1mO8VfSOfEg" role="2OqNvi">
                                    <ref role="3TtcxE" to="pnao:1mO8VfSO65d" resolve="value" />
                                  </node>
                                  <node concept="30H73N" id="1mO8VfSOfEh" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1W57fq" id="1043xPh$V_x" role="lGtFl">
                      <node concept="3IZrLx" id="1043xPh$V_y" role="3IZSJc">
                        <node concept="3clFbS" id="1043xPh$V_z" role="2VODD2">
                          <node concept="3clFbF" id="1043xPhz5wf" role="3cqZAp">
                            <node concept="2OqwBi" id="1043xPhz5wg" role="3clFbG">
                              <node concept="2OqwBi" id="1043xPhz5wh" role="2Oq$k0">
                                <node concept="30H73N" id="1043xPhz5wi" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1043xPhz5wj" role="2OqNvi">
                                  <ref role="3Tt5mk" to="pnao:7zmQ_SRAuGb" resolve="matches" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="1043xPhz5wk" role="2OqNvi">
                                <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1WS0z7" id="1mO8VfSOfDo" role="lGtFl">
                      <node concept="3JmXsc" id="1mO8VfSOfDr" role="3Jn$fo">
                        <node concept="3clFbS" id="1mO8VfSOfDs" role="2VODD2">
                          <node concept="3clFbF" id="1mO8VfSOfDt" role="3cqZAp">
                            <node concept="2OqwBi" id="1mO8VfSOfDu" role="3clFbG">
                              <node concept="3Tsc0h" id="1mO8VfSOfDv" role="2OqNvi">
                                <ref role="3TtcxE" to="pnao:1mO8VfSO68N" resolve="list" />
                              </node>
                              <node concept="30H73N" id="1mO8VfSOfDw" role="2Oq$k0" />
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
      <node concept="3uibUv" id="xtlewLP03e" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
  </node>
</model>

