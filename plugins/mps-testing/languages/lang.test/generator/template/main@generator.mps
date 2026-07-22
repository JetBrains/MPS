<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590389(jetbrains.mps.lang.test.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tp6m" ref="r:00000000-0000-4000-0000-011c895903a2(jetbrains.mps.lang.test.runtime)" />
    <import index="tp4h" ref="r:00000000-0000-4000-0000-011c8959036d(jetbrains.mps.baseLanguage.classifiers.behavior)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tp3m" ref="r:00000000-0000-4000-0000-011c8959034e(jetbrains.mps.lang.intentions.behavior)" />
    <import index="tp4s" ref="r:00000000-0000-4000-0000-011c89590360(jetbrains.mps.lang.plugin.behavior)" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="3fh5" ref="r:3d2b27a7-4374-41aa-af31-19e1e430d9f5(jetbrains.mps.lang.test.generator.template.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="fyhk" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps(Testbench/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="y5e1" ref="r:4464540a-9650-433f-b716-ed95bbac5a69(jetbrains.mps.lang.test.matcher)" />
    <import index="zu0" ref="920eaa0e-ecca-46bc-bee7-4e5c59213dd6/java:jetbrains.mps.testbench.util(Testbench/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="tp27" ref="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" />
    <import index="6f4m" ref="528ff3b9-5fc4-40dd-931f-c6ce3650640e/r:f69c3fa1-0e30-4980-84e2-190ae44e4c3d(jetbrains.mps.lang.migration.runtime/jetbrains.mps.lang.migration.runtime.base)" />
    <import index="buve" ref="r:306236c1-379e-4cee-b600-470a90233e2f(jetbrains.mps.lang.migration.behavior)" />
    <import index="erxe" ref="r:1b8e1ff1-9bb5-4fe5-848a-c2f4efdb6402(jetbrains.mps.lang.migration.generator.template.main@generator)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="rbkg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api.extension(JUnit/)" />
    <import index="yqm7" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api(JUnit/)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" implicit="true" />
    <import index="dvox" ref="r:9dfd3567-3b1f-4edb-85a0-3981ca2bfd8c(jetbrains.mps.lang.modelapi.structure)" implicit="true" />
    <import index="xlb7" ref="r:cf42fd0a-68d2-493b-8b77-961658617704(jetbrains.mps.lang.modelapi.behavior)" implicit="true" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1206629501431" name="jetbrains.mps.baseLanguage.structure.InstanceInitializer" flags="lg" index="3KIgzJ">
        <child id="1206629521979" name="statementList" index="3KIlGz" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="lg" index="5jKBG">
        <child id="1510949579266801461" name="sourceNodeQuery" index="5jGum" />
      </concept>
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="lg" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1219952072943" name="jetbrains.mps.lang.generator.structure.DropRootRule" flags="lg" index="aNPBN">
        <reference id="1219952338328" name="applicableConcept" index="aOQi4" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="lg" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <property id="1184950341882" name="topPriorityGroup" index="3$yP7D" />
        <child id="1219952894531" name="dropRootRule" index="aQYdv" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
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
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="lg" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1227303129915" name="jetbrains.mps.lang.generator.structure.AbstractMacro" flags="ngI" index="30XT8A">
        <property id="3265704088513289864" name="comment" index="34cw8o" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1225228973247" name="jetbrains.mps.lang.generator.structure.MapSrcMacro_PostMapperFunction" flags="in" index="15lBmy" />
      <concept id="5324767449430213525" name="jetbrains.mps.lang.generator.structure.InsertCallSiteMacro" flags="lg" index="37f9Lt" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="lg" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1184690432998" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_outputNode" flags="nn" index="3l3mFP" />
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
        <child id="1225229330048" name="postMapperFunction" index="15mYut" />
      </concept>
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099209" name="type" index="1ps_xK" />
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ngI" index="1s_3nv">
        <property id="1796073355504430601" name="needCallSite" index="1Lz$4U" />
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1311078761699563727" name="jetbrains.mps.lang.generator.structure.InsertMacro_CreateNodeQuery" flags="in" index="3_AbJw" />
      <concept id="1311078761699563726" name="jetbrains.mps.lang.generator.structure.InsertMacro" flags="lg" index="3_AbJx">
        <child id="1311078761699602381" name="createNodeQuery" index="3_A0Ny" />
      </concept>
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217960179967" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowErrorMessage" flags="nn" index="2k5nB$" />
      <concept id="1217960314443" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase" flags="nn" index="2k5Stg">
        <child id="1217960314448" name="messageText" index="2k5Stb" />
        <child id="1217960407512" name="referenceNode" index="2k6f33" />
      </concept>
      <concept id="1217969995796" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowWarningMessage" flags="nn" index="2kEO4f" />
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
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
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
      <concept id="1217282130234" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputModel" flags="nn" index="1FEO0x" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ngI" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
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
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="3506770386464365589" name="jetbrains.mps.lang.smodel.structure.Model_PointerOperation" flags="ng" index="aIX43" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
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
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="hB9c5No">
    <property role="TrG5h" value="main" />
    <property role="3$yP7D" value="true" />
    <node concept="2rT7sh" id="3CVcUJxNYRd" role="2rTMjI">
      <property role="TrG5h" value="pressMouseX" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="6A9ZMbYfW2l" role="2rTMjI">
      <property role="TrG5h" value="pressMouseY" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="3CVcUJxObfY" role="2rTMjI">
      <property role="TrG5h" value="eventTargetComponent" />
      <ref role="2rTdP9" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="2rT7sh" id="2$GJzKYDceJ" role="2rTMjI">
      <property role="TrG5h" value="Test2Method" />
      <ref role="2rTdP9" to="tpe3:hGBgSCX" resolve="ITestMethod" />
      <ref role="2rZz_L" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    </node>
    <node concept="2rT7sh" id="2$GJzKYDAAu" role="2rTMjI">
      <property role="TrG5h" value="DCM2Method" />
      <ref role="2rTdP9" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
      <ref role="2rZz_L" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    </node>
    <node concept="aNPBN" id="4qWC2JVsDdo" role="aQYdv">
      <ref role="aOQi4" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
    </node>
    <node concept="3lhOvk" id="hHqx_0T" role="3lj3bC">
      <ref role="30HIoZ" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
      <ref role="3lhOvi" node="hHqy8Mw" resolve="NodesTestCase" />
      <node concept="30G5F_" id="hR$uYWc" role="30HLyM">
        <node concept="3clFbS" id="hR$uYWd" role="2VODD2">
          <node concept="3clFbF" id="hR$v63d" role="3cqZAp">
            <node concept="2OqwBi" id="hSUBBC$" role="3clFbG">
              <node concept="2OqwBi" id="hR$v6tB" role="2Oq$k0">
                <node concept="30H73N" id="hR$v63e" role="2Oq$k0" />
                <node concept="1mfA1w" id="hR$v8bN" role="2OqNvi" />
              </node>
              <node concept="3w_OXm" id="hSUBCko" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="hSMmWJN" role="3lj3bC">
      <ref role="30HIoZ" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
      <ref role="3lhOvi" node="hSLWj1d" resolve="EditorTestCaseName" />
    </node>
    <node concept="3lhOvk" id="4K12N3pOtoZ" role="3lj3bC">
      <ref role="30HIoZ" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
      <ref role="3lhOvi" node="4K12N3pJJle" resolve="MigrationTestCaseTemplate" />
    </node>
    <node concept="3aamgX" id="hByHdxr" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hBxON8j" resolve="TestNodeReference" />
      <node concept="1Koe21" id="d$zdnvEuH7" role="1lVwrX">
        <node concept="312cEu" id="d$zdnvEuHd" role="1Koe22">
          <property role="TrG5h" value="C" />
          <node concept="15s5l7" id="d$zdnvExKa" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/8974945326827961340]&quot;;" />
            <property role="huDt6" value="Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody" />
          </node>
          <node concept="3KIgzJ" id="d$zdnvEv2d" role="jymVt">
            <node concept="3clFbS" id="d$zdnvEv2f" role="3KIlGz">
              <node concept="3clFbF" id="d$zdnvEvst" role="3cqZAp">
                <node concept="1rXfSq" id="d$zdnvEvss" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:d$zdnvE6r3" resolve="getAnnotatedNode" />
                  <node concept="Xl_RD" id="d$zdnvEvHd" role="37wK5m">
                    <property role="Xl_RC" value="" />
                    <node concept="17Uvod" id="d$zdnvEvLf" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="d$zdnvEvLg" role="3zH0cK">
                        <node concept="3clFbS" id="d$zdnvEvLh" role="2VODD2">
                          <node concept="3clFbF" id="d$zdnvEwbl" role="3cqZAp">
                            <node concept="2OqwBi" id="d$zdnvEx0A" role="3clFbG">
                              <node concept="2OqwBi" id="d$zdnvEwBn" role="2Oq$k0">
                                <node concept="30H73N" id="d$zdnvEwbk" role="2Oq$k0" />
                                <node concept="3TrEf2" id="d$zdnvEwKT" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:hBxOPr6" resolve="declaration" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="d$zdnvExiJ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="d$zdnvEvK$" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="d$zdnvEuHe" role="1B3o_S" />
          <node concept="3uibUv" id="d$zdnvEuMt" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hCJJrmC" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hCJA54K" resolve="AssertMatch" />
      <node concept="j$656" id="hGdxmvK" role="1lVwrX">
        <ref role="v9R2y" node="hGdx6Cj" resolve="reduce_AssertMatch" />
      </node>
    </node>
    <node concept="3aamgX" id="hHD$WJF" role="3acgRq">
      <ref role="30HIoZ" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
      <node concept="1Koe21" id="3612de$V0Ef" role="1lVwrX">
        <node concept="312cEu" id="3612de$V2Nh" role="1Koe22">
          <property role="TrG5h" value="AClass" />
          <node concept="3clFb_" id="3612de$V56f" role="jymVt">
            <property role="TrG5h" value="meth" />
            <node concept="3cqZAl" id="3612de$V56h" role="3clF45" />
            <node concept="3Tm1VV" id="3612de$V56i" role="1B3o_S" />
            <node concept="3clFbS" id="3612de$V56j" role="3clF47">
              <node concept="3cpWs8" id="3612de$Vbi1" role="3cqZAp">
                <node concept="3cpWsn" id="3612de$Vbi2" role="3cpWs9">
                  <property role="TrG5h" value="o" />
                  <node concept="3uibUv" id="3612de$VdD9" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="Xjq3P" id="3612de$Vbi3" role="33vP2m">
                    <node concept="raruj" id="3612de$Vbi4" role="lGtFl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="3612de$V2Ni" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="hHD_GBg" role="30HLyM">
        <node concept="3clFbS" id="hHD_GBh" role="2VODD2">
          <node concept="3clFbF" id="hHD_HmW" role="3cqZAp">
            <node concept="2OqwBi" id="hHD_Mb1" role="3clFbG">
              <node concept="2OqwBi" id="hHD_HBf" role="2Oq$k0">
                <node concept="30H73N" id="hHD_HmX" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdAU" role="2OqNvi">
                  <ref role="37wK5l" to="tp4h:hEwJeDN" resolve="getClassifier" />
                </node>
              </node>
              <node concept="1mIQ4w" id="hHD_NdI" role="2OqNvi">
                <node concept="chp4Y" id="hHD_PEd" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hHDDKRC" role="3acgRq">
      <ref role="30HIoZ" to="tp4f:hyXshSD" resolve="DefaultClassifierMethodCallOperation" />
      <node concept="gft3U" id="hPnv3sa" role="1lVwrX">
        <node concept="liA8E" id="hPnv3sb" role="gfFT$">
          <node concept="Xl_RD" id="hPnv3sc" role="37wK5m">
            <property role="Xl_RC" value="param" />
            <node concept="2b32R4" id="hPnv3sd" role="lGtFl">
              <node concept="3JmXsc" id="hPnv3se" role="2P8S$">
                <node concept="3clFbS" id="hPnv3sf" role="2VODD2">
                  <node concept="3clFbF" id="hPnv3sg" role="3cqZAp">
                    <node concept="2OqwBi" id="hPnv3sh" role="3clFbG">
                      <node concept="30H73N" id="hPnv3si" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="hPnv3sj" role="2OqNvi">
                        <ref role="3TtcxE" to="tp4f:hyXxRup" resolve="actualArgument" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="hPnv3sk" role="lGtFl">
            <property role="2qtEX8" value="baseMethodDeclaration" />
            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
            <node concept="3$xsQk" id="hPnv3sl" role="3$ytzL">
              <node concept="3clFbS" id="hPnv3sm" role="2VODD2">
                <node concept="3clFbF" id="2$GJzKYDIWX" role="3cqZAp">
                  <node concept="2OqwBi" id="2$GJzKYDJ4M" role="3clFbG">
                    <node concept="1iwH7S" id="2$GJzKYDIWW" role="2Oq$k0" />
                    <node concept="1iwH70" id="2$GJzKYDJbv" role="2OqNvi">
                      <ref role="1iwH77" node="2$GJzKYDAAu" resolve="DCM2Method" />
                      <node concept="2OqwBi" id="2$GJzKYDJyo" role="1iwH7V">
                        <node concept="30H73N" id="2$GJzKYDJmZ" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2$GJzKYDJIa" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4f:hyXtfQh" resolve="method" />
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
    <node concept="3aamgX" id="hPjyYB_" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPjxXux" resolve="ProjectExpression" />
      <node concept="j$656" id="hPjzR9j" role="1lVwrX">
        <ref role="v9R2y" node="hPjzEtZ" resolve="reduce_Project" />
      </node>
    </node>
    <node concept="3aamgX" id="hPjGMlc" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPjGwIs" resolve="ModelExpression" />
      <node concept="j$656" id="hPjGOFo" role="1lVwrX">
        <ref role="v9R2y" node="hPjGGCw" resolve="reduce_Model" />
      </node>
    </node>
    <node concept="3aamgX" id="hPMNTQu" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
      <node concept="j$656" id="hPMO2bU" role="1lVwrX">
        <ref role="v9R2y" node="hPMLN58" resolve="reduce_InvokeIntentionStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="1488IJS7TwG" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:1488IJS6sZl" resolve="InvokeSurroundWithIntentionStatement" />
      <node concept="j$656" id="1488IJS81gz" role="1lVwrX">
        <ref role="v9R2y" node="1488IJS81gx" resolve="reduce_InvokeSurroundWithIntentionStatement" />
      </node>
    </node>
    <node concept="3aamgX" id="4$lRloVZi1m" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:4$lRloVW7sK" resolve="ApplyQuickFix" />
      <node concept="j$656" id="4$lRloVZjnE" role="1lVwrX">
        <ref role="v9R2y" node="4$lRloVXvFR" resolve="reduce_ApplyQuickFix" />
      </node>
    </node>
    <node concept="3aamgX" id="hQJxbEX" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="30G5F_" id="hQJxbF7" role="30HLyM">
        <node concept="3clFbS" id="hQJxbF8" role="2VODD2">
          <node concept="3clFbF" id="hQJxbF9" role="3cqZAp">
            <node concept="2OqwBi" id="hQJxbFa" role="3clFbG">
              <node concept="2OqwBi" id="hQJxbFb" role="2Oq$k0">
                <node concept="3TrEf2" id="hQJxbFd" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                </node>
                <node concept="30H73N" id="hQJxbFc" role="2Oq$k0" />
              </node>
              <node concept="1mIQ4w" id="hQJxbFe" role="2OqNvi">
                <node concept="chp4Y" id="hQJxbFf" role="cj9EA">
                  <ref role="cht4Q" to="tp5g:hQJ5G8s" resolve="EditorOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="gft3U" id="hQJxbEY" role="1lVwrX">
        <node concept="2VYdi" id="hQJxbEZ" role="gfFT$">
          <node concept="29HgVG" id="hQJxbF0" role="lGtFl">
            <node concept="3NFfHV" id="hQJxbF1" role="3NFExx">
              <node concept="3clFbS" id="hQJxbF2" role="2VODD2">
                <node concept="3clFbF" id="hQJxbF3" role="3cqZAp">
                  <node concept="2OqwBi" id="hQJxbF4" role="3clFbG">
                    <node concept="3TrEf2" id="hQJCpea" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hqOqNr4" resolve="operation" />
                    </node>
                    <node concept="30H73N" id="hQJxbF5" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hQTX83$" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hQTK7X3" resolve="TypeKeyStatement" />
      <node concept="1Koe21" id="1BrKW0dgaqO" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgaqU" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgaHj" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgaHm" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgaHS" role="3cqZAp">
                <node concept="1rXfSq" id="ORe5oEaixS" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:1BrKW0d98Nv" resolve="typeString" />
                  <node concept="Xl_RD" id="1BrKW0dg$iy" role="37wK5m">
                    <property role="Xl_RC" value="keys" />
                    <node concept="17Uvod" id="1BrKW0dg$iz" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="1BrKW0dg$i$" role="3zH0cK">
                        <node concept="3clFbS" id="1BrKW0dg$i_" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dg$iA" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dg$iB" role="3clFbG">
                              <node concept="3TrcHB" id="1BrKW0dg$iC" role="2OqNvi">
                                <ref role="3TsBF5" to="tp5g:hQTTdxU" resolve="keys" />
                              </node>
                              <node concept="30H73N" id="1BrKW0dg$iD" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgBWV" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgaHd" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lq0H4" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
            <node concept="3uibUv" id="5s44y2Lq341" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgaqV" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgaH5" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1BrKW0dgCf8" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:hSyd1fI" resolve="PressKeyStatement" />
      <node concept="1Koe21" id="1BrKW0dgFpR" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgFpS" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgFpT" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgFpU" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgFpV" role="3cqZAp">
                <node concept="1rXfSq" id="ORe5oEajo1" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:1BrKW0daATU" resolve="pressKeys" />
                  <node concept="2ShNRf" id="1BrKW0dgFWD" role="37wK5m">
                    <node concept="Tc6Ow" id="1BrKW0dgFWE" role="2ShVmc">
                      <node concept="3cmrfG" id="1BrKW0dgFWF" role="HW$Y0">
                        <property role="3cmrfH" value="0" />
                        <node concept="2b32R4" id="1BrKW0dgFWG" role="lGtFl">
                          <node concept="3JmXsc" id="1BrKW0dgFWH" role="2P8S$">
                            <node concept="3clFbS" id="1BrKW0dgFWI" role="2VODD2">
                              <node concept="3clFbF" id="1BrKW0dgFWJ" role="3cqZAp">
                                <node concept="2OqwBi" id="1BrKW0dgFWK" role="3clFbG">
                                  <node concept="30H73N" id="1BrKW0dgFWL" role="2Oq$k0" />
                                  <node concept="3Tsc0h" id="1BrKW0dgFWM" role="2OqNvi">
                                    <ref role="3TtcxE" to="tp5g:hSyd6OA" resolve="keyStrokes" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="17QB3L" id="1BrKW0dgFWN" role="HW$YZ" />
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgFq7" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgFq8" role="3clF45" />
            <node concept="3uibUv" id="5s44y2LpVN3" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LpWnv" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgFq9" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgFqa" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1BrKW0dgZEP" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:bG3Ez5d8XT" resolve="PressMouseStatement" />
      <node concept="1Koe21" id="1BrKW0dh2cx" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dh2cy" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dh2cz" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dh2c$" role="3clF47">
              <node concept="9aQIb" id="5WamHf6h68f" role="3cqZAp">
                <node concept="3clFbS" id="5WamHf6h68h" role="9aQI4">
                  <node concept="3cpWs8" id="1BrKW0dh2PT" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2PU" role="3cpWs9">
                      <property role="TrG5h" value="x" />
                      <node concept="10Oyi0" id="1BrKW0dh2PV" role="1tU5fm" />
                      <node concept="3cmrfG" id="1BrKW0dh2PW" role="33vP2m">
                        <property role="3cmrfH" value="10" />
                        <node concept="17Uvod" id="1BrKW0dh2PX" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="1BrKW0dh2PY" role="3zH0cK">
                            <node concept="3clFbS" id="1BrKW0dh2PZ" role="2VODD2">
                              <node concept="3clFbF" id="1BrKW0dh2Q0" role="3cqZAp">
                                <node concept="2OqwBi" id="1BrKW0dh2Q1" role="3clFbG">
                                  <node concept="30H73N" id="1BrKW0dh2Q2" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="1BrKW0dh2Q3" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5fDVB" resolve="x" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2Q4" role="lGtFl">
                        <ref role="2rW$FS" node="3CVcUJxNYRd" resolve="pressMouseX" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2Q5" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2Q6" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2Q7" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2Q8" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2Q9" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2Qa" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2Qb" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2Qc" role="2piZGb">
                                    <property role="Xl_RC" value="x" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2Qd" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1BrKW0dh2Qe" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2Qf" role="3cpWs9">
                      <property role="TrG5h" value="y" />
                      <node concept="10Oyi0" id="1BrKW0dh2Qg" role="1tU5fm" />
                      <node concept="3cmrfG" id="1BrKW0dh2Qh" role="33vP2m">
                        <property role="3cmrfH" value="10" />
                        <node concept="17Uvod" id="1BrKW0dh2Qi" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="1BrKW0dh2Qj" role="3zH0cK">
                            <node concept="3clFbS" id="1BrKW0dh2Qk" role="2VODD2">
                              <node concept="3clFbF" id="1BrKW0dh2Ql" role="3cqZAp">
                                <node concept="2OqwBi" id="1BrKW0dh2Qm" role="3clFbG">
                                  <node concept="30H73N" id="1BrKW0dh2Qn" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="1BrKW0dh2Qo" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:bG3Ez5fDVC" resolve="y" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2Qp" role="lGtFl">
                        <ref role="2rW$FS" node="6A9ZMbYfW2l" resolve="pressMouseY" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2Qq" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2Qr" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2Qs" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2Qt" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2Qu" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2Qv" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2Qw" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2Qx" role="2piZGb">
                                    <property role="Xl_RC" value="y" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2Qy" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1BrKW0dh2Qz" role="3cqZAp">
                    <node concept="3cpWsn" id="1BrKW0dh2Q$" role="3cpWs9">
                      <property role="TrG5h" value="eventTargetComponent" />
                      <node concept="1rXfSq" id="ORe5oEalPv" role="33vP2m">
                        <ref role="37wK5l" to="tp6m:1BrKW0dbhMX" resolve="processMouseEvent" />
                        <node concept="37vLTw" id="1BrKW0dheOj" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="1BrKW0dhf1i" role="37wK5m">
                          <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                        </node>
                        <node concept="10M0yZ" id="1BrKW0dhflO" role="37wK5m">
                          <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                          <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_PRESSED" resolve="MOUSE_PRESSED" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="1BrKW0dh2Q_" role="1tU5fm">
                        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                      </node>
                      <node concept="17Uvod" id="1BrKW0dh2QE" role="lGtFl">
                        <property role="2qtEX9" value="name" />
                        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                        <node concept="3zFVjK" id="1BrKW0dh2QF" role="3zH0cK">
                          <node concept="3clFbS" id="1BrKW0dh2QG" role="2VODD2">
                            <node concept="3clFbF" id="1BrKW0dh2QH" role="3cqZAp">
                              <node concept="2OqwBi" id="1BrKW0dh2QI" role="3clFbG">
                                <node concept="1iwH7S" id="1BrKW0dh2QJ" role="2Oq$k0" />
                                <node concept="2piZGk" id="1BrKW0dh2QK" role="2OqNvi">
                                  <node concept="Xl_RD" id="1BrKW0dh2QL" role="2piZGb">
                                    <property role="Xl_RC" value="eventTargetComponent" />
                                  </node>
                                  <node concept="30H73N" id="1BrKW0dh2QM" role="2pr8EU" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZBi8u" id="1BrKW0dh2QN" role="lGtFl">
                        <ref role="2rW$FS" node="3CVcUJxObfY" resolve="eventTargetComponent" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1BrKW0dh2QO" role="3cqZAp">
                    <node concept="2b32R4" id="1BrKW0dh2QP" role="lGtFl">
                      <node concept="3JmXsc" id="1BrKW0dh2QQ" role="2P8S$">
                        <node concept="3clFbS" id="1BrKW0dh2QR" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dh2QS" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dh2QT" role="3clFbG">
                              <node concept="2OqwBi" id="1BrKW0dh2QU" role="2Oq$k0">
                                <node concept="3TrEf2" id="1BrKW0dh2QV" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:fK9aQHS" resolve="statementList" />
                                </node>
                                <node concept="30H73N" id="1BrKW0dh2QW" role="2Oq$k0" />
                              </node>
                              <node concept="3Tsc0h" id="1BrKW0dh2QX" role="2OqNvi">
                                <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5s44y2LphhA" role="3cqZAp">
                    <node concept="1rXfSq" id="ORe5oEakcV" role="3clFbG">
                      <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                      <node concept="37vLTw" id="5s44y2LpjN2" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2Q$" resolve="eventTargetComponent" />
                      </node>
                      <node concept="37vLTw" id="5s44y2LpjP1" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="5s44y2Lpk26" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                      </node>
                      <node concept="10M0yZ" id="5s44y2Lpkem" role="37wK5m">
                        <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_RELEASED" resolve="MOUSE_RELEASED" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1BrKW0dh2R4" role="3cqZAp">
                    <node concept="1rXfSq" id="ORe5oEal17" role="3clFbG">
                      <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                      <node concept="37vLTw" id="5s44y2Lpo0X" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2Q$" resolve="eventTargetComponent" />
                      </node>
                      <node concept="37vLTw" id="5s44y2Lpo0Y" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2PU" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="5s44y2Lpo0Z" role="37wK5m">
                        <ref role="3cqZAo" node="1BrKW0dh2Qf" resolve="y" />
                      </node>
                      <node concept="10M0yZ" id="5s44y2Lpo10" role="37wK5m">
                        <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_CLICKED" resolve="MOUSE_CLICKED" />
                      </node>
                    </node>
                    <node concept="1W57fq" id="1BrKW0dh2Ra" role="lGtFl">
                      <node concept="3IZrLx" id="1BrKW0dh2Rb" role="3IZSJc">
                        <node concept="3clFbS" id="1BrKW0dh2Rc" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dh2Rd" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dh2Re" role="3clFbG">
                              <node concept="2OqwBi" id="1BrKW0dh2Rf" role="2Oq$k0">
                                <node concept="2OqwBi" id="1BrKW0dh2Rg" role="2Oq$k0">
                                  <node concept="30H73N" id="1BrKW0dh2Rh" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="1BrKW0dh2Ri" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp5g:fK9aQHS" resolve="statementList" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="1BrKW0dh2Rj" role="2OqNvi">
                                  <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                                </node>
                              </node>
                              <node concept="1v1jN8" id="1BrKW0dh2Rk" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="5WamHf6haS_" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dh2cP" role="3clF45" />
            <node concept="3uibUv" id="5s44y2LpsRM" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LpxxX" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dh2cQ" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dh2cR" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="5s44y2Lq3FF" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:bG3Ez5na2z" resolve="DragMouseStatement" />
      <node concept="1Koe21" id="5s44y2Lq6b3" role="1lVwrX">
        <node concept="312cEu" id="5s44y2Lq6b4" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="5s44y2Lq6b5" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3cqZAl" id="5s44y2Lq6cD" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lq6cE" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2Lq6cF" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
            <node concept="3clFbS" id="5s44y2Lq8ZF" role="3clF47">
              <node concept="3cpWs8" id="5s44y2Lq95e" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95f" role="3cpWs9">
                  <property role="TrG5h" value="x" />
                  <node concept="10Oyi0" id="5s44y2Lq95g" role="1tU5fm" />
                  <node concept="3cmrfG" id="5s44y2Lq95h" role="33vP2m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5s44y2Lq95i" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95j" role="3cpWs9">
                  <property role="TrG5h" value="y" />
                  <node concept="10Oyi0" id="5s44y2Lq95k" role="1tU5fm" />
                  <node concept="3cmrfG" id="5s44y2Lq95l" role="33vP2m">
                    <property role="3cmrfH" value="10" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5s44y2Lq95m" role="3cqZAp">
                <node concept="3cpWsn" id="5s44y2Lq95n" role="3cpWs9">
                  <property role="TrG5h" value="eventTargetComponent" />
                  <node concept="3uibUv" id="5s44y2Lq95o" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                  </node>
                  <node concept="10Nm6u" id="5s44y2Lq95p" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="5s44y2LqdIl" role="3cqZAp">
                <node concept="1rXfSq" id="ORe5oEamBs" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:5s44y2Lp5xA" resolve="processSecondaryMouseEvent" />
                  <node concept="37vLTw" id="5s44y2LqeS9" role="37wK5m">
                    <ref role="3cqZAo" node="5s44y2Lq95n" resolve="eventTargetComponent" />
                    <node concept="1ZhdrF" id="5s44y2LqeSa" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="5s44y2LqeSb" role="3$ytzL">
                        <node concept="3clFbS" id="5s44y2LqeSc" role="2VODD2">
                          <node concept="3clFbF" id="5s44y2LqeSd" role="3cqZAp">
                            <node concept="2OqwBi" id="5s44y2LqeSe" role="3clFbG">
                              <node concept="1iwH7S" id="5s44y2LqeSf" role="2Oq$k0" />
                              <node concept="1iwH70" id="5s44y2LqeSg" role="2OqNvi">
                                <ref role="1iwH77" node="3CVcUJxObfY" resolve="eventTargetComponent" />
                                <node concept="2OqwBi" id="5s44y2LqeSh" role="1iwH7V">
                                  <node concept="30H73N" id="5s44y2LqeSi" role="2Oq$k0" />
                                  <node concept="3zqWPK" id="70OdufORdAW" role="2OqNvi">
                                    <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTI" id="5s44y2Lqfj_" role="37wK5m">
                    <node concept="3cmrfG" id="5s44y2LqfjA" role="37vLTx">
                      <property role="3cmrfH" value="15" />
                      <node concept="17Uvod" id="5s44y2LqfjB" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="5s44y2LqfjC" role="3zH0cK">
                          <node concept="3clFbS" id="5s44y2LqfjD" role="2VODD2">
                            <node concept="3clFbF" id="5s44y2LqfjE" role="3cqZAp">
                              <node concept="2OqwBi" id="5s44y2LqfjF" role="3clFbG">
                                <node concept="30H73N" id="5s44y2LqfjG" role="2Oq$k0" />
                                <node concept="3TrcHB" id="5s44y2LqfjH" role="2OqNvi">
                                  <ref role="3TsBF5" to="tp5g:bG3Ez5na7K" resolve="x" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5s44y2LqfjI" role="37vLTJ">
                      <ref role="3cqZAo" node="5s44y2Lq95f" resolve="x" />
                      <node concept="1ZhdrF" id="5s44y2LqfjJ" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="5s44y2LqfjK" role="3$ytzL">
                          <node concept="3clFbS" id="5s44y2LqfjL" role="2VODD2">
                            <node concept="3clFbF" id="5s44y2LqfjM" role="3cqZAp">
                              <node concept="2OqwBi" id="5s44y2LqfjN" role="3clFbG">
                                <node concept="1iwH7S" id="5s44y2LqfjO" role="2Oq$k0" />
                                <node concept="1iwH70" id="5s44y2LqfjP" role="2OqNvi">
                                  <ref role="1iwH77" node="3CVcUJxNYRd" resolve="pressMouseX" />
                                  <node concept="2OqwBi" id="5s44y2LqfjQ" role="1iwH7V">
                                    <node concept="30H73N" id="5s44y2LqfjR" role="2Oq$k0" />
                                    <node concept="3zqWPK" id="70OdufORdAY" role="2OqNvi">
                                      <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
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
                  <node concept="37vLTI" id="5s44y2Lqhey" role="37wK5m">
                    <node concept="3cmrfG" id="5s44y2Lqhez" role="37vLTx">
                      <property role="3cmrfH" value="15" />
                      <node concept="17Uvod" id="5s44y2Lqhe$" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="5s44y2Lqhe_" role="3zH0cK">
                          <node concept="3clFbS" id="5s44y2LqheA" role="2VODD2">
                            <node concept="3clFbF" id="5s44y2LqheB" role="3cqZAp">
                              <node concept="2OqwBi" id="5s44y2LqheC" role="3clFbG">
                                <node concept="30H73N" id="5s44y2LqheD" role="2Oq$k0" />
                                <node concept="3TrcHB" id="5s44y2LqheE" role="2OqNvi">
                                  <ref role="3TsBF5" to="tp5g:bG3Ez5na7L" resolve="y" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5s44y2LqheF" role="37vLTJ">
                      <ref role="3cqZAo" node="5s44y2Lq95j" resolve="y" />
                      <node concept="1ZhdrF" id="5s44y2LqheG" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="5s44y2LqheH" role="3$ytzL">
                          <node concept="3clFbS" id="5s44y2LqheI" role="2VODD2">
                            <node concept="3clFbF" id="5s44y2LqheJ" role="3cqZAp">
                              <node concept="2OqwBi" id="5s44y2LqheK" role="3clFbG">
                                <node concept="1iwH7S" id="5s44y2LqheL" role="2Oq$k0" />
                                <node concept="1iwH70" id="5s44y2LqheM" role="2OqNvi">
                                  <ref role="1iwH77" node="6A9ZMbYfW2l" resolve="pressMouseY" />
                                  <node concept="2OqwBi" id="5s44y2LqheN" role="1iwH7V">
                                    <node concept="30H73N" id="5s44y2LqheO" role="2Oq$k0" />
                                    <node concept="3zqWPK" id="70OdufORdB0" role="2OqNvi">
                                      <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
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
                  <node concept="10M0yZ" id="5s44y2Lqjg3" role="37wK5m">
                    <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                    <ref role="3cqZAo" to="hyam:~MouseEvent.MOUSE_DRAGGED" resolve="MOUSE_DRAGGED" />
                  </node>
                </node>
                <node concept="raruj" id="5WamHf6i78U" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="5s44y2Lq6cG" role="1B3o_S" />
          <node concept="3uibUv" id="5s44y2Lq6cH" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hTDoYUt" role="3acgRq">
      <ref role="30HIoZ" to="tp4k:h$pLAnk" resolve="KeyMapKeystroke" />
      <node concept="gft3U" id="hTDp4ET" role="1lVwrX">
        <node concept="Xl_RD" id="hTDp74Z" role="gfFT$">
          <property role="Xl_RC" value="str" />
          <node concept="17Uvod" id="hTDp8Qx" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <node concept="3zFVjK" id="hTDp8Qy" role="3zH0cK">
              <node concept="3clFbS" id="hTDp8Qz" role="2VODD2">
                <node concept="3clFbF" id="hTDpbE1" role="3cqZAp">
                  <node concept="2OqwBi" id="hTDpbZ2" role="3clFbG">
                    <node concept="30H73N" id="hTDC7Dj" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORdB2" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:hEwIlzu" resolve="getKeyStroke" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="X8Ly3tyUaU" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:65clA3cMU1F" resolve="InvokeActionStatement" />
      <node concept="1Koe21" id="1BrKW0dgRs9" role="1lVwrX">
        <node concept="312cEu" id="1BrKW0dgRsa" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="1BrKW0dgRsb" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="1BrKW0dgRsc" role="3clF47">
              <node concept="3clFbF" id="1BrKW0dgRsd" role="3cqZAp">
                <node concept="1rXfSq" id="ORe5oEan$s" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:1BrKW0db0tk" resolve="invokeAction" />
                  <node concept="10Nm6u" id="1BrKW0dgS3h" role="37wK5m">
                    <node concept="29HgVG" id="1BrKW0dgS3i" role="lGtFl">
                      <node concept="3NFfHV" id="1BrKW0dgS3j" role="3NFExx">
                        <node concept="3clFbS" id="1BrKW0dgS3k" role="2VODD2">
                          <node concept="3clFbF" id="1BrKW0dgS3l" role="3cqZAp">
                            <node concept="2OqwBi" id="1BrKW0dgS3m" role="3clFbG">
                              <node concept="30H73N" id="1BrKW0dgS3n" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1BrKW0dgS3o" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:X8Ly3tyr4R" resolve="actionReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="1BrKW0dgRsp" role="lGtFl" />
              </node>
            </node>
            <node concept="3cqZAl" id="1BrKW0dgRsq" role="3clF45" />
            <node concept="3uibUv" id="5s44y2Lqowb" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="5s44y2LqoGt" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="1BrKW0dgRsr" role="1B3o_S" />
          <node concept="3uibUv" id="1BrKW0dgRss" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="H9$uslPoe8" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:H9$uslP7vo" resolve="IsActionApplicableExpression" />
      <node concept="1Koe21" id="H9$uslPoe9" role="1lVwrX">
        <node concept="312cEu" id="H9$uslPoea" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="A" />
          <property role="1sVAO0" value="true" />
          <node concept="3clFb_" id="H9$uslPoeb" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="foo" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="3clFbS" id="H9$uslPoec" role="3clF47">
              <node concept="3cpWs6" id="5IYRzU$F$ZP" role="3cqZAp">
                <node concept="1rXfSq" id="5IYRzU$FEti" role="3cqZAk">
                  <ref role="37wK5l" to="tp6m:H9$uslKhHl" resolve="isActionApplicable" />
                  <node concept="10Nm6u" id="5IYRzU$FEtj" role="37wK5m">
                    <node concept="29HgVG" id="5IYRzU$FEtk" role="lGtFl">
                      <node concept="3NFfHV" id="5IYRzU$FEtl" role="3NFExx">
                        <node concept="3clFbS" id="5IYRzU$FEtm" role="2VODD2">
                          <node concept="3clFbF" id="5IYRzU$FEtn" role="3cqZAp">
                            <node concept="2OqwBi" id="5IYRzU$FEto" role="3clFbG">
                              <node concept="30H73N" id="5IYRzU$FEtp" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5IYRzU$FEtq" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:H9$uslP7vq" resolve="actionReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="5IYRzU$FEtr" role="lGtFl" />
                </node>
              </node>
            </node>
            <node concept="10P_77" id="H9$uslPtKV" role="3clF45" />
            <node concept="3uibUv" id="H9$uslPoep" role="Sfmx6">
              <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
            </node>
            <node concept="3uibUv" id="H9$uslPoeq" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
            </node>
          </node>
          <node concept="3Tm1VV" id="H9$uslPoer" role="1B3o_S" />
          <node concept="3uibUv" id="H9$uslPoes" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4rqOdQ4h3nn" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:X8Ly3typJO" resolve="ActionReference" />
      <node concept="gft3U" id="4rqOdQ4h3ns" role="1lVwrX">
        <node concept="Xl_RD" id="4rqOdQ4h3nu" role="gfFT$">
          <property role="Xl_RC" value="value" />
          <node concept="17Uvod" id="4rqOdQ4h3nw" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <node concept="3zFVjK" id="4rqOdQ4h3nx" role="3zH0cK">
              <node concept="3clFbS" id="4rqOdQ4h3ny" role="2VODD2">
                <node concept="3clFbF" id="4rqOdQ4h3nz" role="3cqZAp">
                  <node concept="2OqwBi" id="4rqOdQ4h3n_" role="3clFbG">
                    <node concept="30H73N" id="4rqOdQ4h3n$" role="2Oq$k0" />
                    <node concept="3zqWPK" id="70OdufORdB4" role="2OqNvi">
                      <ref role="37wK5l" to="tp5o:X8Ly3typOa" resolve="getActionId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="50vRVameRNo" role="3acgRq">
      <property role="3GE5qa" value="editor" />
      <ref role="30HIoZ" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
      <node concept="j$656" id="50vRVameRNp" role="1lVwrX">
        <ref role="v9R2y" node="50vRVameRNm" resolve="reduce_EditorComponent" />
      </node>
    </node>
    <node concept="3aamgX" id="57tnvWi0wkl" role="3acgRq">
      <property role="3GE5qa" value="editor" />
      <ref role="30HIoZ" to="tp5g:50vRVamdIih" resolve="SwitchToInspector" />
      <node concept="j$656" id="57tnvWi0wkm" role="1lVwrX">
        <ref role="v9R2y" node="57tnvWi0wkj" resolve="reduce_SwitchToInspector" />
      </node>
    </node>
    <node concept="3aamgX" id="wUiM63T5dp" role="3acgRq">
      <ref role="30HIoZ" to="tp5g:wUiM63T4Ip" resolve="IsIntentionApplicableExpression" />
      <node concept="j$656" id="wUiM63T5dq" role="1lVwrX">
        <ref role="v9R2y" node="wUiM63T5dn" resolve="reduce_IsIntentionApplicableExpression" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hByHiPj">
    <property role="TrG5h" value="reduce_getTestNode" />
    <node concept="1N15co" id="AbdozclwPl" role="1s_3oS">
      <property role="TrG5h" value="testNode" />
      <node concept="3Tqbb2" id="AbdozclwYA" role="1N15GL" />
    </node>
    <node concept="312cEu" id="hPMpOg6" role="13RCb5">
      <property role="TrG5h" value="C" />
      <property role="1sVAO0" value="true" />
      <node concept="15s5l7" id="d$zdnvEuhn" role="lGtFl">
        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/8974945326827961340]&quot;;" />
        <property role="huDt6" value="Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody" />
      </node>
      <node concept="3KIgzJ" id="d$zdnvEt0f" role="jymVt">
        <node concept="3clFbS" id="d$zdnvEt0h" role="3KIlGz">
          <node concept="3clFbF" id="d$zdnvEt3j" role="3cqZAp">
            <node concept="1rXfSq" id="2YdNGB0TeQt" role="3clFbG">
              <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
              <node concept="Xl_RD" id="2YdNGB0TeQG" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="17Uvod" id="2YdNGB0TeQH" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="2YdNGB0TeQI" role="3zH0cK">
                    <node concept="3clFbS" id="2YdNGB0TeQJ" role="2VODD2">
                      <node concept="3clFbF" id="2YdNGB0TeQK" role="3cqZAp">
                        <node concept="2OqwBi" id="2YdNGB0TeQL" role="3clFbG">
                          <node concept="2OqwBi" id="2YdNGB0TeQM" role="2Oq$k0">
                            <node concept="2JrnkZ" id="2YdNGB0TeQN" role="2Oq$k0">
                              <node concept="2OqwBi" id="Abdozclx_u" role="2JrQYb">
                                <node concept="1iwH7S" id="Abdozclxb4" role="2Oq$k0" />
                                <node concept="3cR$yn" id="AbdozclxJf" role="2OqNvi">
                                  <ref role="3cRzXn" node="AbdozclwPl" resolve="testNode" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2YdNGB0TeQT" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2YdNGB0TeQU" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="L6i6iqBePo" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hPMpSAg" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hGdx6Cj">
    <property role="TrG5h" value="reduce_AssertMatch" />
    <ref role="3gUMe" to="tp5g:hCJA54K" resolve="AssertMatch" />
    <node concept="3clFbS" id="3KvkLt3DkZn" role="13RCb5">
      <node concept="9aQIb" id="3KvkLt3DkZp" role="3cqZAp">
        <node concept="3clFbS" id="3KvkLt3DkZq" role="9aQI4">
          <node concept="3cpWs8" id="3KvkLt3BeA_" role="3cqZAp">
            <node concept="3cpWsn" id="3KvkLt3BeAA" role="3cpWs9">
              <property role="TrG5h" value="nodesBefore" />
              <node concept="3uibUv" id="3KvkLt3BeAz" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="3KvkLt3Bgyc" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2ShNRf" id="2LEXDCdQB9g" role="33vP2m">
                <node concept="Tc6Ow" id="2LEXDCdQB9h" role="2ShVmc">
                  <node concept="3uibUv" id="2LEXDCdQB9i" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="10Nm6u" id="2LEXDCdQB9j" role="HW$Y0">
                    <node concept="2b32R4" id="2LEXDCdQB9l" role="lGtFl">
                      <node concept="3JmXsc" id="2LEXDCdQB9m" role="2P8S$">
                        <node concept="3clFbS" id="2LEXDCdQB9n" role="2VODD2">
                          <node concept="3clFbF" id="2LEXDCdQB9o" role="3cqZAp">
                            <node concept="2OqwBi" id="2LEXDCdQB9p" role="3clFbG">
                              <node concept="3Tsc0h" id="2LEXDCdQB9q" role="2OqNvi">
                                <ref role="3TtcxE" to="tp5g:hCJA96l" resolve="before" />
                              </node>
                              <node concept="30H73N" id="2LEXDCdQB9r" role="2Oq$k0" />
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
          <node concept="3cpWs8" id="3KvkLt3B_CA" role="3cqZAp">
            <node concept="3cpWsn" id="3KvkLt3B_CB" role="3cpWs9">
              <property role="TrG5h" value="nodesAfter" />
              <node concept="3uibUv" id="3KvkLt3B_C$" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="3KvkLt3BBlL" role="11_B2D">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
              <node concept="2ShNRf" id="2LEXDCdQB9s" role="33vP2m">
                <node concept="Tc6Ow" id="2LEXDCdQB9t" role="2ShVmc">
                  <node concept="3uibUv" id="2LEXDCdQB9u" role="HW$YZ">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="10Nm6u" id="2LEXDCdQB9v" role="HW$Y0">
                    <node concept="2b32R4" id="2LEXDCdQB9x" role="lGtFl">
                      <node concept="3JmXsc" id="2LEXDCdQB9y" role="2P8S$">
                        <node concept="3clFbS" id="2LEXDCdQB9z" role="2VODD2">
                          <node concept="3clFbF" id="2LEXDCdQB9$" role="3cqZAp">
                            <node concept="2OqwBi" id="2LEXDCdQB9_" role="3clFbG">
                              <node concept="3Tsc0h" id="2LEXDCdQB9A" role="2OqNvi">
                                <ref role="3TtcxE" to="tp5g:hCJAdgf" resolve="after" />
                              </node>
                              <node concept="30H73N" id="2LEXDCdQB9B" role="2Oq$k0" />
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
          <node concept="3vwNmj" id="5wEVZcC3ck3" role="3cqZAp">
            <node concept="3_1$Yv" id="5wEVZcC3dpu" role="3_9lra">
              <node concept="3cpWs3" id="2LEXDCdQJ47" role="3_1BAH">
                <node concept="1W57fq" id="2ZO5wSvHYTE" role="lGtFl">
                  <node concept="3IZrLx" id="2ZO5wSvHYTG" role="3IZSJc">
                    <node concept="3clFbS" id="2ZO5wSvHYTI" role="2VODD2">
                      <node concept="3clFbF" id="2ZO5wSvHZp4" role="3cqZAp">
                        <node concept="2OqwBi" id="2ZO5wSvI12n" role="3clFbG">
                          <node concept="3w_OXm" id="GPqVzR08__" role="2OqNvi" />
                          <node concept="2OqwBi" id="2ZO5wSvHZD9" role="2Oq$k0">
                            <node concept="30H73N" id="2ZO5wSvHZp3" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2ZO5wSvI0xS" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gft3U" id="2ZO5wSvI2$s" role="UU_$l">
                    <node concept="Xl_RD" id="2ZO5wSvI3iU" role="gfFT$">
                      <node concept="29HgVG" id="2ZO5wSvI45B" role="lGtFl">
                        <node concept="3NFfHV" id="2ZO5wSvI4r6" role="3NFExx">
                          <node concept="3clFbS" id="2ZO5wSvI4r7" role="2VODD2">
                            <node concept="3clFbF" id="2ZO5wSvI4uv" role="3cqZAp">
                              <node concept="2OqwBi" id="GPqVzR0xAC" role="3clFbG">
                                <node concept="2OqwBi" id="2ZO5wSvI4Fl" role="2Oq$k0">
                                  <node concept="30H73N" id="2ZO5wSvI4uu" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="2ZO5wSvI5ma" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="GPqVzR0yed" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2LEXDCdQJlK" role="3uHU7w">
                  <property role="Xl_RC" value="' do not match!" />
                </node>
                <node concept="3cpWs3" id="2LEXDCdQHOj" role="3uHU7B">
                  <node concept="3cpWs3" id="2LEXDCdQFjN" role="3uHU7B">
                    <node concept="3cpWs3" id="2LEXDCdQEqA" role="3uHU7B">
                      <node concept="Xl_RD" id="2LEXDCdQDWo" role="3uHU7B">
                        <property role="Xl_RC" value="The nodes '" />
                      </node>
                      <node concept="37vLTw" id="3KvkLt3C0iQ" role="3uHU7w">
                        <ref role="3cqZAo" node="3KvkLt3BeAA" resolve="nodesBefore" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2LEXDCdQFjX" role="3uHU7w">
                      <property role="Xl_RC" value="' and '" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3KvkLt3C3gl" role="3uHU7w">
                    <ref role="3cqZAo" node="3KvkLt3B_CB" resolve="nodesAfter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5wEVZcC3eI2" role="3vwVQn">
              <node concept="2OqwBi" id="ORe5oE7eh7" role="2Oq$k0">
                <node concept="2ShNRf" id="ORe5oE6ZQk" role="2Oq$k0">
                  <node concept="1pGfFk" id="ORe5oE7efZ" role="2ShVmc">
                    <ref role="37wK5l" to="y5e1:39D1ywqVAMq" resolve="NodesMatcher" />
                    <node concept="37vLTw" id="5wEVZcC2QbW" role="37wK5m">
                      <ref role="3cqZAo" node="3KvkLt3BeAA" resolve="nodesBefore" />
                    </node>
                    <node concept="37vLTw" id="5wEVZcC2QbX" role="37wK5m">
                      <ref role="3cqZAo" node="3KvkLt3B_CB" resolve="nodesAfter" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="ORe5oE7eqO" role="2OqNvi">
                  <ref role="37wK5l" to="y5e1:39D1ywqVH_i" resolve="diff" />
                </node>
              </node>
              <node concept="liA8E" id="5wEVZcC3gSD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="3KvkLt3Dmkg" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hHqy8Mw">
    <property role="TrG5h" value="NodesTestCase" />
    <node concept="Wx3nA" id="4dqLDEZ0eMU" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourParametersCacheExtension" />
      <node concept="3Tm6S6" id="4dqLDEZ0eMW" role="1B3o_S" />
      <node concept="3uibUv" id="4dqLDEZ0gjZ" role="1tU5fm">
        <ref role="3uigEE" to="tp6m:4dqLDEYYwgD" resolve="TestParametersCacheExtension" />
      </node>
      <node concept="2ShNRf" id="4dqLDEZ0gCn" role="33vP2m">
        <node concept="1pGfFk" id="4dqLDEZ0gzP" role="2ShVmc">
          <ref role="37wK5l" to="tp6m:4dqLDEYYHvm" resolve="TestParametersCacheExtension" />
          <node concept="2OqwBi" id="6US8dKoUjLt" role="37wK5m">
            <node concept="2OqwBi" id="6US8dKoUiaJ" role="2Oq$k0">
              <node concept="2OqwBi" id="6US8dKoUhnW" role="2Oq$k0">
                <node concept="2OqwBi" id="6US8dKoUgEq" role="2Oq$k0">
                  <node concept="2ShNRf" id="6US8dKoUfqM" role="2Oq$k0">
                    <node concept="1pGfFk" id="6US8dKoUflU" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:6US8dKoOF6n" resolve="TestParametersCacheBuilder" />
                      <node concept="3VsKOn" id="4dqLDEZ0kE$" role="37wK5m">
                        <ref role="3VsUkX" node="hHqy8Mw" resolve="NodesTestCase" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6US8dKoUh1q" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:6US8dKoOtkl" resolve="projectPath" />
                    <node concept="Xl_RD" id="4dqLDEZ0kE_" role="37wK5m">
                      <property role="Xl_RC" value="project path" />
                      <node concept="17Uvod" id="4dqLDEZ0kEA" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="4dqLDEZ0kEB" role="3zH0cK">
                          <node concept="3clFbS" id="4dqLDEZ0kEC" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoXsXx" role="3cqZAp">
                              <node concept="1mL9RQ" id="6US8dKoXsXw" role="3clFbG">
                                <ref role="1mL9RD" node="6US8dKoXryG" resolve="projectPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="6US8dKoXts_" role="lGtFl">
                        <node concept="3IZrLx" id="6US8dKoXtsA" role="3IZSJc">
                          <node concept="3clFbS" id="6US8dKoXtsB" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoXtU_" role="3cqZAp">
                              <node concept="3y3z36" id="6US8dKoXvEz" role="3clFbG">
                                <node concept="10Nm6u" id="6US8dKoXwHK" role="3uHU7w" />
                                <node concept="1mL9RQ" id="6US8dKoXtU$" role="3uHU7B">
                                  <ref role="1mL9RD" node="6US8dKoXryG" resolve="projectPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="6US8dKoXwSA" role="UU_$l">
                          <node concept="10Nm6u" id="6US8dKoXx0g" role="gfFT$" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6US8dKoUh_J" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:6US8dKoOs$1" resolve="modelRef" />
                  <node concept="Xl_RD" id="4dqLDEZ0kEI" role="37wK5m">
                    <property role="Xl_RC" value="model.fq.name" />
                    <node concept="17Uvod" id="4dqLDEZ0kEJ" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="4dqLDEZ0kEK" role="3zH0cK">
                        <node concept="3clFbS" id="4dqLDEZ0kEL" role="2VODD2">
                          <node concept="3clFbF" id="4dqLDEZ0kEM" role="3cqZAp">
                            <node concept="2OqwBi" id="4dqLDEZ0kEN" role="3clFbG">
                              <node concept="2OqwBi" id="4dqLDEZ0kEO" role="2Oq$k0">
                                <node concept="liA8E" id="4dqLDEZ0kEP" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                </node>
                                <node concept="2JrnkZ" id="4dqLDEZ0kEQ" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4dqLDEZ0kER" role="2JrQYb">
                                    <node concept="1iwH7S" id="4dqLDEZ0kES" role="2Oq$k0" />
                                    <node concept="1st3f0" id="4dqLDEZ0kET" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4dqLDEZ0kEU" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6US8dKoUiHU" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:6US8dKoOtLM" resolve="reopenProject" />
                <node concept="3clFbT" id="4dqLDEZ0kEV" role="37wK5m">
                  <property role="3clFbU" value="false" />
                  <node concept="17Uvod" id="4dqLDEZ0kEW" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                    <node concept="3zFVjK" id="4dqLDEZ0kEX" role="3zH0cK">
                      <node concept="3clFbS" id="4dqLDEZ0kEY" role="2VODD2">
                        <node concept="3clFbF" id="4dqLDEZ0kEZ" role="3cqZAp">
                          <node concept="2OqwBi" id="4dqLDEZ0kF0" role="3clFbG">
                            <node concept="35c_gC" id="4dqLDEZ0kF1" role="2Oq$k0">
                              <ref role="35c_gD" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
                            </node>
                            <node concept="3zqWPK" id="70OdufORdB6" role="2OqNvi">
                              <ref role="37wK5l" to="tp5o:ThWTaQhG7P" resolve="reOpenProject" />
                              <node concept="2OqwBi" id="70OdufORdB8" role="37wK5m">
                                <node concept="30H73N" id="70OdufORdB9" role="2Oq$k0" />
                                <node concept="I4A8Y" id="70OdufORdBa" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1W57fq" id="6US8dKoXx9G" role="lGtFl">
                    <node concept="3IZrLx" id="6US8dKoXx9H" role="3IZSJc">
                      <node concept="3clFbS" id="6US8dKoXx9I" role="2VODD2">
                        <node concept="3clFbF" id="6US8dKoXxCx" role="3cqZAp">
                          <node concept="3y3z36" id="6US8dKoX$KA" role="3clFbG">
                            <node concept="10Nm6u" id="6US8dKoX_2C" role="3uHU7w" />
                            <node concept="1mL9RQ" id="6US8dKoXxCw" role="3uHU7B">
                              <ref role="1mL9RD" node="6US8dKoXryG" resolve="projectPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="6US8dKoX_nV" role="UU_$l">
                      <node concept="10Nm6u" id="6US8dKoX_wz" role="gfFT$" />
                    </node>
                  </node>
                  <node concept="1W57fq" id="6US8dKoX_wY" role="lGtFl">
                    <node concept="3IZrLx" id="6US8dKoX_wZ" role="3IZSJc">
                      <node concept="3clFbS" id="6US8dKoX_x0" role="2VODD2">
                        <node concept="3clFbF" id="6US8dKoX_x1" role="3cqZAp">
                          <node concept="3y3z36" id="6US8dKoX_x2" role="3clFbG">
                            <node concept="10Nm6u" id="6US8dKoX_x3" role="3uHU7w" />
                            <node concept="1mL9RQ" id="6US8dKoX_x4" role="3uHU7B">
                              <ref role="1mL9RD" node="6US8dKoXryG" resolve="projectPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="6US8dKoX_x5" role="UU_$l">
                      <node concept="10Nm6u" id="6US8dKoX_x6" role="gfFT$" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1ps_y7" id="6US8dKoXryF" role="lGtFl">
                <node concept="1ps_xZ" id="6US8dKoXryG" role="1ps_xO">
                  <property role="TrG5h" value="projectPath" />
                  <node concept="2jfdEK" id="6US8dKoXryH" role="1ps_xN">
                    <node concept="3clFbS" id="6US8dKoXryI" role="2VODD2">
                      <node concept="3clFbF" id="6US8dKoXsaY" role="3cqZAp">
                        <node concept="2YIFZM" id="6US8dKoXsaZ" role="3clFbG">
                          <ref role="37wK5l" to="3fh5:7v5ch11EroR" resolve="getProjectPath" />
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <node concept="2OqwBi" id="6US8dKoXsb0" role="37wK5m">
                            <node concept="30H73N" id="6US8dKoXsb1" role="2Oq$k0" />
                            <node concept="I4A8Y" id="6US8dKoXsb2" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6US8dKoUkrn" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:6US8dKoNyEp" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZ0lE$" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dqLDEZd2JC" role="jymVt" />
    <node concept="3clFbW" id="5iphLhCe51H" role="jymVt">
      <node concept="3cqZAl" id="5iphLhCe51J" role="3clF45" />
      <node concept="3Tm1VV" id="5iphLhCe51K" role="1B3o_S" />
      <node concept="3clFbS" id="5iphLhCe51L" role="3clF47">
        <node concept="XkiVB" id="5iphLhCfiRX" role="3cqZAp">
          <ref role="37wK5l" to="tp6m:5LbRjS1pM4D" resolve="BaseTransformationTest" />
          <node concept="2OqwBi" id="4dqLDEZ0ng6" role="37wK5m">
            <node concept="37vLTw" id="5iphLhCfiYH" role="2Oq$k0">
              <ref role="3cqZAo" node="4dqLDEZ0eMU" resolve="ourParametersCacheExtension" />
            </node>
            <node concept="liA8E" id="4dqLDEZ0nBp" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4dqLDEYZ0EK" resolve="getParametersCache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5iphLhCe2Bp" role="jymVt" />
    <node concept="3Tm1VV" id="hHqy8Mx" role="1B3o_S" />
    <node concept="n94m4" id="hHqy8MQ" role="lGtFl">
      <ref role="n9lRv" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
    </node>
    <node concept="3uibUv" id="e$hNri9klx" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="17Uvod" id="hHq$Ev2" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hHq$Ev3" role="3zH0cK">
        <node concept="3clFbS" id="hHq$Ev4" role="2VODD2">
          <node concept="3clFbF" id="hHq$I51" role="3cqZAp">
            <node concept="2OqwBi" id="hSMc1SW" role="3clFbG">
              <node concept="30H73N" id="hHq$I52" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORdBb" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:hSQIE8p" resolve="getSimpleClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="6xD3woJoRXW" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3clFb_" id="hHqygjQ" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="hHqygjR" role="3clF45" />
      <node concept="3Tm1VV" id="hHqygjS" role="1B3o_S" />
      <node concept="1WS0z7" id="hHqAXPf" role="lGtFl">
        <node concept="3JmXsc" id="hHqAXPg" role="3Jn$fo">
          <node concept="3clFbS" id="hHqAXPh" role="2VODD2">
            <node concept="3cpWs6" id="hHqDkqC" role="3cqZAp">
              <node concept="2OqwBi" id="hSUyPE7" role="3cqZAk">
                <node concept="30H73N" id="hSUyPgT" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdBd" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:6I8tQNTvi0f" resolve="getUncommentedTestMethods" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="hHqB0C0" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~Test" resolve="Test" />
      </node>
      <node concept="17Uvod" id="hHqDnzU" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hHqDnzV" role="3zH0cK">
          <node concept="3clFbS" id="hHqDnzW" role="2VODD2">
            <node concept="3clFbF" id="hHO8Ru$" role="3cqZAp">
              <node concept="2OqwBi" id="hHO8RMo" role="3clFbG">
                <node concept="30H73N" id="hHO8Ru_" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdBf" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="hHDKHLk" role="3clF47">
        <node concept="3clFbF" id="BYb1OG3A2U" role="3cqZAp">
          <node concept="2OqwBi" id="BYb1OG3AnZ" role="3clFbG">
            <node concept="liA8E" id="BYb1OG3DSK" role="2OqNvi">
              <ref role="37wK5l" node="hPLPvfz" resolve="testMethod" />
              <node concept="1ZhdrF" id="BYb1OG3GDz" role="lGtFl">
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                <property role="2qtEX8" value="baseMethodDeclaration" />
                <node concept="3$xsQk" id="BYb1OG3GD$" role="3$ytzL">
                  <node concept="3clFbS" id="BYb1OG3GD_" role="2VODD2">
                    <node concept="3SKdUt" id="BYb1OG4anu" role="3cqZAp">
                      <node concept="1PaTwC" id="ATZLwXo4Fx" role="1aUNEU">
                        <node concept="3oM_SD" id="ATZLwXo4Fy" role="1PaTwD">
                          <property role="3oM_SC" value="" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDoqs" role="1PaTwD">
                          <property role="3oM_SC" value="FIXME" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDosJ" role="1PaTwD">
                          <property role="3oM_SC" value="have" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4FV" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4FW" role="1PaTwD">
                          <property role="3oM_SC" value="decide" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4FX" role="1PaTwD">
                          <property role="3oM_SC" value="if" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4FY" role="1PaTwD">
                          <property role="3oM_SC" value="intermediate" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4FZ" role="1PaTwD">
                          <property role="3oM_SC" value="BaseTestBody" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G0" role="1PaTwD">
                          <property role="3oM_SC" value="class" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G1" role="1PaTwD">
                          <property role="3oM_SC" value="makes" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G2" role="1PaTwD">
                          <property role="3oM_SC" value="any" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G3" role="1PaTwD">
                          <property role="3oM_SC" value="sense" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G4" role="1PaTwD">
                          <property role="3oM_SC" value="at" />
                        </node>
                        <node concept="3oM_SD" id="ATZLwXo4G5" role="1PaTwD">
                          <property role="3oM_SC" value="all" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="2$GJzKYDt9T" role="3cqZAp" />
                    <node concept="3SKdUt" id="2$GJzKYDszD" role="3cqZAp">
                      <node concept="1PaTwC" id="2$GJzKYDszE" role="1aUNEU">
                        <node concept="3oM_SD" id="2$GJzKYDsZn" role="1PaTwD">
                          <property role="3oM_SC" value="In" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsAq" role="1PaTwD">
                          <property role="3oM_SC" value="fact," />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsB2" role="1PaTwD">
                          <property role="3oM_SC" value="could" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsCF" role="1PaTwD">
                          <property role="3oM_SC" value="go" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsEP" role="1PaTwD">
                          <property role="3oM_SC" value="with" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsF0" role="1PaTwD">
                          <property role="3oM_SC" value="a" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsFG" role="1PaTwD">
                          <property role="3oM_SC" value="regular" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsGp" role="1PaTwD">
                          <property role="3oM_SC" value="template" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsHB" role="1PaTwD">
                          <property role="3oM_SC" value="reference" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsJQ" role="1PaTwD">
                          <property role="3oM_SC" value="as" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsKA" role="1PaTwD">
                          <property role="3oM_SC" value="it's" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsKR" role="1PaTwD">
                          <property role="3oM_SC" value="1-1" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsLD" role="1PaTwD">
                          <property role="3oM_SC" value="mapping," />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDsNW" role="1PaTwD">
                          <property role="3oM_SC" value="but" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="2$GJzKYDsVR" role="3cqZAp">
                      <node concept="1PaTwC" id="2$GJzKYDsVS" role="1aUNEU">
                        <node concept="3oM_SD" id="2$GJzKYDsYL" role="1PaTwD">
                          <property role="3oM_SC" value="decided" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt0A" role="1PaTwD">
                          <property role="3oM_SC" value="to" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt0H" role="1PaTwD">
                          <property role="3oM_SC" value="keep" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt0P" role="1PaTwD">
                          <property role="3oM_SC" value="this" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt1u" role="1PaTwD">
                          <property role="3oM_SC" value="RM" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt28" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt3j" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt3Z" role="1PaTwD">
                          <property role="3oM_SC" value="sake" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt6C" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt7m" role="1PaTwD">
                          <property role="3oM_SC" value="fix" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt85" role="1PaTwD">
                          <property role="3oM_SC" value="me" />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt8l" role="1PaTwD">
                          <property role="3oM_SC" value="comment," />
                        </node>
                        <node concept="3oM_SD" id="2$GJzKYDt96" role="1PaTwD">
                          <property role="3oM_SC" value="above" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2$GJzKYDoHP" role="3cqZAp">
                      <node concept="2OqwBi" id="2$GJzKYDpeX" role="3clFbG">
                        <node concept="1iwH7S" id="2$GJzKYDoHO" role="2Oq$k0" />
                        <node concept="1iwH70" id="2$GJzKYDplT" role="2OqNvi">
                          <ref role="1iwH77" node="2$GJzKYDceJ" resolve="Test2Method" />
                          <node concept="30H73N" id="2$GJzKYDpCy" role="1iwH7V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="BYb1OG1y_G" role="2Oq$k0">
              <node concept="1pGfFk" id="BYb1OG1Bvc" role="2ShVmc">
                <ref role="37wK5l" node="BYb1OG11qm" resolve="NodesTestCase.TestBody" />
                <node concept="Xjq3P" id="BYb1OG1BzQ" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hPoWEEp" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Uk8E1kIpsq" role="jymVt" />
    <node concept="2YIFZL" id="6J4VGlipZZv" role="jymVt">
      <property role="TrG5h" value="beforeTests" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6J4VGlipnU8" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~BeforeAll" resolve="BeforeAll" />
      </node>
      <node concept="3clFbS" id="7ApXrTOHQcI" role="3clF47">
        <node concept="3clFbF" id="7ApXrTOHQcJ" role="3cqZAp">
          <node concept="2OqwBi" id="7ApXrTOHQcK" role="3clFbG">
            <node concept="10M0yZ" id="7ApXrTOHQcL" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="7ApXrTOHQcM" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
            </node>
          </node>
          <node concept="2b32R4" id="7ApXrTOHQcN" role="lGtFl">
            <node concept="3JmXsc" id="7ApXrTOHQcO" role="2P8S$">
              <node concept="3clFbS" id="7ApXrTOHQcP" role="2VODD2">
                <node concept="3clFbF" id="7ApXrTOHQcQ" role="3cqZAp">
                  <node concept="2OqwBi" id="7ApXrTOHQcR" role="3clFbG">
                    <node concept="2OqwBi" id="7ApXrTOHQcS" role="2Oq$k0">
                      <node concept="2OqwBi" id="7ApXrTOHQcT" role="2Oq$k0">
                        <node concept="30H73N" id="7ApXrTOHQcU" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7ApXrTOHQcV" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:2154_0wVVpx" resolve="beforeTests" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="71HWW_wlUA_" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7ApXrTOHQcX" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7ApXrTOHQcY" role="3clF45" />
      <node concept="3Tm1VV" id="7ApXrTOHQpj" role="1B3o_S" />
      <node concept="1W57fq" id="7ApXrTOHQda" role="lGtFl">
        <node concept="3IZrLx" id="7ApXrTOHQdb" role="3IZSJc">
          <node concept="3clFbS" id="7ApXrTOHQdc" role="2VODD2">
            <node concept="3clFbF" id="7ApXrTOHQdd" role="3cqZAp">
              <node concept="1Wc70l" id="6I8tQNTtj6E" role="3clFbG">
                <node concept="2OqwBi" id="6I8tQNTto44" role="3uHU7w">
                  <node concept="2OqwBi" id="6I8tQNTtkiC" role="2Oq$k0">
                    <node concept="2OqwBi" id="6I8tQNTtjsU" role="2Oq$k0">
                      <node concept="30H73N" id="6I8tQNTtjdb" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6I8tQNTtjwm" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:2154_0wVVpx" resolve="beforeTests" />
                      </node>
                    </node>
                    <node concept="2Xjw5R" id="6I8tQNTtntE" role="2OqNvi">
                      <node concept="1xMEDy" id="6I8tQNTtntG" role="1xVPHs">
                        <node concept="chp4Y" id="6I8tQNTtnD3" role="ri$Ld">
                          <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="6I8tQNTtqKS" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="7ApXrTOHQde" role="3uHU7B">
                  <node concept="2OqwBi" id="7ApXrTOHQdf" role="2Oq$k0">
                    <node concept="30H73N" id="7ApXrTOHQdg" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7ApXrTOHQdh" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:2154_0wVVpx" resolve="beforeTests" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7ApXrTOHQdi" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2154_0wWfIx" role="jymVt">
      <node concept="1W57fq" id="6UbzZKmPSvL" role="lGtFl">
        <node concept="3IZrLx" id="6UbzZKmPSvO" role="3IZSJc">
          <node concept="3clFbS" id="6UbzZKmPSvP" role="2VODD2">
            <node concept="3clFbF" id="6UbzZKmPVaS" role="3cqZAp">
              <node concept="2OqwBi" id="6UbzZKmPVaU" role="3clFbG">
                <node concept="2OqwBi" id="6UbzZKmPVaV" role="2Oq$k0">
                  <node concept="30H73N" id="6UbzZKmPVaW" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6UbzZKmPYe5" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:2154_0wVVpx" resolve="beforeTests" />
                  </node>
                </node>
                <node concept="3x8VRR" id="6UbzZKmPVaY" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="6J4VGliq2cG" role="jymVt">
      <property role="TrG5h" value="afterTests" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6J4VGlip2mD" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~AfterAll" resolve="AfterAll" />
      </node>
      <node concept="3clFbS" id="7ApXrTOHQj0" role="3clF47">
        <node concept="3clFbF" id="7ApXrTOHQj1" role="3cqZAp">
          <node concept="2OqwBi" id="7ApXrTOHQj2" role="3clFbG">
            <node concept="10M0yZ" id="7ApXrTOHQj3" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7ApXrTOHQj4" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
            </node>
          </node>
          <node concept="2b32R4" id="7ApXrTOHQj5" role="lGtFl">
            <node concept="3JmXsc" id="7ApXrTOHQj6" role="2P8S$">
              <node concept="3clFbS" id="7ApXrTOHQj7" role="2VODD2">
                <node concept="3clFbF" id="7ApXrTOHQj8" role="3cqZAp">
                  <node concept="2OqwBi" id="7ApXrTOHQj9" role="3clFbG">
                    <node concept="2OqwBi" id="7ApXrTOHQja" role="2Oq$k0">
                      <node concept="2OqwBi" id="7ApXrTOHQjb" role="2Oq$k0">
                        <node concept="30H73N" id="7ApXrTOHQjc" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7ApXrTOHQjd" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:2154_0wVVpG" resolve="afterTests" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="71HWW_wlRxH" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7ApXrTOHQjf" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7ApXrTOHQjg" role="3clF45" />
      <node concept="3Tm1VV" id="7ApXrTOHQpa" role="1B3o_S" />
      <node concept="1W57fq" id="7ApXrTOHQjs" role="lGtFl">
        <node concept="3IZrLx" id="7ApXrTOHQjt" role="3IZSJc">
          <node concept="3clFbS" id="7ApXrTOHQju" role="2VODD2">
            <node concept="3clFbF" id="7ApXrTOHQjv" role="3cqZAp">
              <node concept="1Wc70l" id="6I8tQNTtp4t" role="3clFbG">
                <node concept="2OqwBi" id="7ApXrTOHQjw" role="3uHU7B">
                  <node concept="2OqwBi" id="7ApXrTOHQjx" role="2Oq$k0">
                    <node concept="30H73N" id="7ApXrTOHQjy" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7ApXrTOHQjz" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:2154_0wVVpG" resolve="afterTests" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="7ApXrTOHQj$" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="6I8tQNTtqcj" role="3uHU7w">
                  <node concept="2OqwBi" id="6I8tQNTtphY" role="2Oq$k0">
                    <node concept="2OqwBi" id="6I8tQNTtphZ" role="2Oq$k0">
                      <node concept="30H73N" id="6I8tQNTtpi0" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6I8tQNTtpi1" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:2154_0wVVpG" resolve="afterTests" />
                      </node>
                    </node>
                    <node concept="2Xjw5R" id="6I8tQNTtpi2" role="2OqNvi">
                      <node concept="1xMEDy" id="6I8tQNTtpi3" role="1xVPHs">
                        <node concept="chp4Y" id="6I8tQNTtpi4" role="ri$Ld">
                          <ref role="cht4Q" to="tpck:3Rc6kd0K$RF" resolve="BaseCommentAttribute" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="6I8tQNTtqtL" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2154_0wVcWI" role="jymVt">
      <node concept="1W57fq" id="6UbzZKmPGW_" role="lGtFl">
        <node concept="3IZrLx" id="6UbzZKmPGWC" role="3IZSJc">
          <node concept="3clFbS" id="6UbzZKmPGWD" role="2VODD2">
            <node concept="3clFbF" id="6UbzZKmPPMk" role="3cqZAp">
              <node concept="2OqwBi" id="6UbzZKmPPMm" role="3clFbG">
                <node concept="2OqwBi" id="6UbzZKmPPMn" role="2Oq$k0">
                  <node concept="30H73N" id="6UbzZKmPPMo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6UbzZKmPPMp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:2154_0wVVpG" resolve="afterTests" />
                  </node>
                </node>
                <node concept="3x8VRR" id="6UbzZKmPPMq" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="hLF7lUD" role="jymVt">
      <property role="TrG5h" value="TestBody" />
      <node concept="2tJIrI" id="BYb1OG0S$C" role="jymVt" />
      <node concept="3clFbW" id="BYb1OG11qm" role="jymVt">
        <node concept="37vLTG" id="BYb1OG1rw6" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="BYb1OG1r$2" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
        <node concept="3cqZAl" id="BYb1OG11qo" role="3clF45" />
        <node concept="3clFbS" id="BYb1OG11qq" role="3clF47">
          <node concept="XkiVB" id="BYb1OG1uo$" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
            <node concept="37vLTw" id="BYb1OG1uv9" role="37wK5m">
              <ref role="3cqZAo" node="BYb1OG1rw6" resolve="owner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7prurfRAAe6" role="jymVt" />
      <node concept="3clFb_" id="7prurfRAGDB" role="jymVt">
        <property role="TrG5h" value="initTestNodes" />
        <node concept="3Tmbuc" id="7prurfRAGDN" role="1B3o_S" />
        <node concept="3cqZAl" id="7prurfRAGDO" role="3clF45" />
        <node concept="3clFbS" id="7prurfRAGDU" role="3clF47">
          <node concept="3clFbF" id="7prurfRAUF5" role="3cqZAp">
            <node concept="1rXfSq" id="7prurfRAUF4" role="3clFbG">
              <ref role="37wK5l" to="tp6m:7prurfRA8oY" resolve="prepareTestNodes" />
              <node concept="Xl_RD" id="7prurfRAWEw" role="37wK5m">
                <property role="Xl_RC" value="" />
                <node concept="1WS0z7" id="7prurfRB4ow" role="lGtFl">
                  <node concept="3JmXsc" id="7prurfRB4oz" role="3Jn$fo">
                    <node concept="3clFbS" id="7prurfRB4o$" role="2VODD2">
                      <node concept="3clFbF" id="7prurfRB4oE" role="3cqZAp">
                        <node concept="2OqwBi" id="7prurfRB4o_" role="3clFbG">
                          <node concept="3Tsc0h" id="7prurfRB4oC" role="2OqNvi">
                            <ref role="3TtcxE" to="tp5g:hHSKRN6" resolve="nodesToCheck" />
                          </node>
                          <node concept="30H73N" id="7prurfRB4oD" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17Uvod" id="7prurfRBabX" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="7prurfRBabY" role="3zH0cK">
                    <node concept="3clFbS" id="7prurfRBabZ" role="2VODD2">
                      <node concept="3clFbF" id="7prurfRBef6" role="3cqZAp">
                        <node concept="2OqwBi" id="7prurfRBef7" role="3clFbG">
                          <node concept="2OqwBi" id="7prurfRBef8" role="2Oq$k0">
                            <node concept="liA8E" id="7prurfRBef9" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="7prurfRBefa" role="2Oq$k0">
                              <node concept="30H73N" id="7prurfRBefb" role="2JrQYb" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7prurfRBefc" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
        <node concept="2AHcQZ" id="7prurfRAGDV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="BYb1OG0SBz" role="jymVt" />
      <node concept="3uibUv" id="hLFfMVw" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="17Uvod" id="hOw4bZX" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hOw4bZY" role="3zH0cK">
          <node concept="3clFbS" id="hOw4bZZ" role="2VODD2">
            <node concept="3clFbF" id="hOw4e$m" role="3cqZAp">
              <node concept="2OqwBi" id="L_Hr3kEuoG" role="3clFbG">
                <node concept="3zqWPK" id="70OdufORdBh" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:hOw0ICJ" resolve="getTestBodyName" />
                </node>
                <node concept="35c_gC" id="2YdNGB0TIO1" role="2Oq$k0">
                  <ref role="35c_gD" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="hPLPvfz" role="jymVt">
        <property role="TrG5h" value="testMethod" />
        <node concept="3cqZAl" id="hPLPvf$" role="3clF45" />
        <node concept="3Tm1VV" id="hPLPvf_" role="1B3o_S" />
        <node concept="3clFbS" id="hPLPvfA" role="3clF47" />
        <node concept="1ps_y7" id="ZcWKOiipaA" role="lGtFl">
          <node concept="1ps_xZ" id="ZcWKOiipaB" role="1ps_xO">
            <property role="TrG5h" value="nodesTestCase" />
            <node concept="2jfdEK" id="ZcWKOiipaC" role="1ps_xN">
              <node concept="3clFbS" id="ZcWKOiipaD" role="2VODD2">
                <node concept="3cpWs6" id="ZcWKOiiGIz" role="3cqZAp">
                  <node concept="30H73N" id="ZcWKOiiJ_2" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="2$GJzKYD8ne" role="lGtFl">
          <node concept="3JmXsc" id="2$GJzKYD8nf" role="3Jn$fo">
            <node concept="3clFbS" id="2$GJzKYD8ng" role="2VODD2">
              <node concept="3cpWs6" id="2$GJzKYD9pA" role="3cqZAp">
                <node concept="2OqwBi" id="2$GJzKYD9pB" role="3cqZAk">
                  <node concept="30H73N" id="2$GJzKYD9pC" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdBj" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:6I8tQNTvi0f" resolve="getUncommentedTestMethods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1sPUBX" id="2$GJzKYD6WE" role="lGtFl">
          <ref role="v9R2y" node="2$GJzKYD2$1" resolve="switch_Test2Method" />
          <ref role="2rW$FS" node="2$GJzKYDceJ" resolve="Test2Method" />
          <node concept="2OqwBi" id="4wHm_MSUmF0" role="v9R3O">
            <node concept="1mL9RQ" id="4wHm_MSUlfJ" role="2Oq$k0">
              <ref role="1mL9RD" node="ZcWKOiipaB" resolve="nodesTestCase" />
            </node>
            <node concept="3zqWPK" id="70OdufORdBl" role="2OqNvi">
              <ref role="37wK5l" to="tp5o:4wHm_MSTUi_" resolve="calcAccessMode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Uk8E1kIle$" role="jymVt" />
      <node concept="3clFb_" id="hLF7Igh" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3cqZAl" id="hLF7Igi" role="3clF45">
          <node concept="29HgVG" id="hLF7Igj" role="lGtFl">
            <node concept="3NFfHV" id="hLF7Igk" role="3NFExx">
              <node concept="3clFbS" id="hLF7Igl" role="2VODD2">
                <node concept="3clFbF" id="hLF7Igm" role="3cqZAp">
                  <node concept="2OqwBi" id="hLF7Ign" role="3clFbG">
                    <node concept="30H73N" id="hLF7Igo" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hLF7Igp" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="hLF7Igq" role="1B3o_S" />
        <node concept="3clFbS" id="hLF7Igr" role="3clF47">
          <node concept="3cpWs8" id="hLF7Igs" role="3cqZAp">
            <node concept="3cpWsn" id="hLF7Igt" role="3cpWs9">
              <property role="TrG5h" value="varName" />
              <node concept="1rXfSq" id="7Uk8E1kI7SH" role="33vP2m">
                <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                <node concept="Xl_RD" id="hLF7IgO" role="37wK5m">
                  <property role="Xl_RC" value="nodeId" />
                  <node concept="17Uvod" id="hLF7IgP" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <node concept="3zFVjK" id="hLF7IgQ" role="3zH0cK">
                      <node concept="3clFbS" id="hLF7IgR" role="2VODD2">
                        <node concept="3clFbF" id="hLF7IgS" role="3cqZAp">
                          <node concept="2OqwBi" id="1R1KclLA1gO" role="3clFbG">
                            <node concept="2OqwBi" id="1R1KclLA1gP" role="2Oq$k0">
                              <node concept="liA8E" id="24cAaiVCamN" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                              <node concept="2JrnkZ" id="1R1KclLA1gQ" role="2Oq$k0">
                                <node concept="2OqwBi" id="1R1KclLA1gR" role="2JrQYb">
                                  <node concept="30H73N" id="1R1KclLA1gS" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="1R1KclLA1gT" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1R1KclLA1gV" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="hLF7IgC" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="hLF7IgD" role="3zH0cK">
                  <node concept="3clFbS" id="hLF7IgE" role="2VODD2">
                    <node concept="3clFbF" id="hLF7IgF" role="3cqZAp">
                      <node concept="3cpWs3" id="hLF7IgG" role="3clFbG">
                        <node concept="2OqwBi" id="1R1KclLA1ew" role="3uHU7w">
                          <node concept="2OqwBi" id="1R1KclLA1ex" role="2Oq$k0">
                            <node concept="liA8E" id="24cAaiVCak7" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="1R1KclLA1ey" role="2Oq$k0">
                              <node concept="30H73N" id="1R1KclLA1ez" role="2JrQYb" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1R1KclLA1e_" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="hLF7IgL" role="3uHU7B">
                          <property role="Xl_RC" value="var" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="1arxJRm6Dzi" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="1WS0z7" id="hLF7Ih0" role="lGtFl">
              <node concept="3JmXsc" id="hLF7Ih1" role="3Jn$fo">
                <node concept="3clFbS" id="hLF7Ih2" role="2VODD2">
                  <node concept="3cpWs8" id="hLF7Ih3" role="3cqZAp">
                    <node concept="3cpWsn" id="hLF7Ih4" role="3cpWs9">
                      <property role="TrG5h" value="set" />
                      <node concept="2hMVRd" id="i0q_mIF" role="1tU5fm">
                        <node concept="3Tqbb2" id="i0q_mIG" role="2hN53Y">
                          <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="hLF7Ih7" role="33vP2m">
                        <node concept="32HrFt" id="i34eQpw" role="2ShVmc">
                          <node concept="3Tqbb2" id="i34eQWL" role="HW$YZ">
                            <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="hLF7Iha" role="3cqZAp">
                    <node concept="2GrKxI" id="hLF7Ihb" role="2Gsz3X">
                      <property role="TrG5h" value="ref" />
                    </node>
                    <node concept="3clFbS" id="hLF7Ihc" role="2LFqv$">
                      <node concept="3clFbF" id="7Uk8E1kHXV5" role="3cqZAp">
                        <node concept="2OqwBi" id="7Uk8E1kHY$$" role="3clFbG">
                          <node concept="37vLTw" id="7Uk8E1kHXV3" role="2Oq$k0">
                            <ref role="3cqZAo" node="hLF7Ih4" resolve="set" />
                          </node>
                          <node concept="TSZUe" id="7Uk8E1kI0Vq" role="2OqNvi">
                            <node concept="2OqwBi" id="7Uk8E1kI3_d" role="25WWJ7">
                              <node concept="2GrUjf" id="7Uk8E1kI33P" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="hLF7Ihb" resolve="ref" />
                              </node>
                              <node concept="3TrEf2" id="7Uk8E1kI5OO" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:hBxOPr6" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hLF7Ihk" role="2GsD0m">
                      <node concept="2OqwBi" id="hLF7Ihl" role="2Oq$k0">
                        <node concept="30H73N" id="hLF7Ihm" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hOYfUHi" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                        </node>
                      </node>
                      <node concept="2Rf3mk" id="hLF7Iho" role="2OqNvi">
                        <node concept="1xMEDy" id="hLF7Ihp" role="1xVPHs">
                          <node concept="chp4Y" id="hLF7Ihq" role="ri$Ld">
                            <ref role="cht4Q" to="tp5g:hBxON8j" resolve="TestNodeReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="hLF7Ihr" role="3cqZAp">
                    <node concept="2ShNRf" id="hLF7Ihs" role="3cqZAk">
                      <node concept="Tc6Ow" id="i1ACR7m" role="2ShVmc">
                        <node concept="3Tqbb2" id="hLF7Ihu" role="HW$YZ">
                          <ref role="ehGHo" to="tp5g:hBxLA2s" resolve="TestNodeAnnotation" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBYB" role="I$8f6">
                          <ref role="3cqZAo" node="hLF7Ih4" resolve="set" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hLF7Ihw" role="3cqZAp">
            <node concept="2OqwBi" id="2YdNGB0TCJO" role="3clFbG">
              <node concept="10M0yZ" id="2YdNGB0TCJP" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              </node>
              <node concept="liA8E" id="2YdNGB0TCJQ" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
              </node>
            </node>
            <node concept="2b32R4" id="hLF7Ihy" role="lGtFl">
              <node concept="3JmXsc" id="hLF7Ihz" role="2P8S$">
                <node concept="3clFbS" id="hLF7Ih$" role="2VODD2">
                  <node concept="3clFbF" id="hLF7Ih_" role="3cqZAp">
                    <node concept="2OqwBi" id="hLF7IhA" role="3clFbG">
                      <node concept="2OqwBi" id="hLF7IhB" role="2Oq$k0">
                        <node concept="30H73N" id="hLF7IhC" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hOYfWS0" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hLF7IhE" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="hLF7IhF" role="lGtFl">
          <ref role="2rW$FS" node="2$GJzKYDAAu" resolve="DCM2Method" />
          <node concept="3JmXsc" id="hLF7IhG" role="3Jn$fo">
            <node concept="3clFbS" id="hLF7IhH" role="2VODD2">
              <node concept="3clFbF" id="hLF7IhI" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7IhJ" role="3clFbG">
                  <node concept="30H73N" id="hLF7IhK" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="hLF7IhL" role="2OqNvi">
                    <ref role="3TtcxE" to="tp5g:hHqtyUn" resolve="methods" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="hLF7IhM" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hLF7IhN" role="3zH0cK">
            <node concept="3clFbS" id="hLF7IhO" role="2VODD2">
              <node concept="3clFbF" id="hLF7IhP" role="3cqZAp">
                <node concept="2OqwBi" id="hLF7IhQ" role="3clFbG">
                  <node concept="30H73N" id="hLF7IhR" role="2Oq$k0" />
                  <node concept="3TrcHB" id="hLF7IhS" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="hLF7IhT" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="10Oyi0" id="hLF7IhU" role="1tU5fm" />
          <node concept="2b32R4" id="hLF7IhV" role="lGtFl">
            <node concept="3JmXsc" id="hLF7IhW" role="2P8S$">
              <node concept="3clFbS" id="hLF7IhX" role="2VODD2">
                <node concept="3clFbF" id="hLF7IhY" role="3cqZAp">
                  <node concept="2OqwBi" id="hLF7IhZ" role="3clFbG">
                    <node concept="30H73N" id="hLF7Ii0" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="hLF7Ii1" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fzclF7Y" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1waHpnAxMdL" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
          <node concept="2b32R4" id="1waHpnAxMeh" role="lGtFl">
            <node concept="3JmXsc" id="1waHpnAxMei" role="2P8S$">
              <node concept="3clFbS" id="1waHpnAxMej" role="2VODD2">
                <node concept="3clFbF" id="1waHpnAxMez" role="3cqZAp">
                  <node concept="2OqwBi" id="1waHpnAxMeD" role="3clFbG">
                    <node concept="30H73N" id="1waHpnAxMe$" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1waHpnAxMf1" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:gWSfm_9" resolve="throwsItem" />
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
  <node concept="13MO4I" id="hPjzEtZ">
    <property role="TrG5h" value="reduce_Project" />
    <ref role="3gUMe" to="tp5g:hPjxXux" resolve="ProjectExpression" />
    <node concept="312cEu" id="hPjzIbl" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hPjzIbm" role="1B3o_S" />
      <node concept="3uibUv" id="hPjzJUw" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="hPjzIbn" role="jymVt">
        <node concept="3cqZAl" id="hPjzIbo" role="3clF45" />
        <node concept="3Tm1VV" id="hPjzIbp" role="1B3o_S" />
        <node concept="3clFbS" id="hPjzIbq" role="3clF47">
          <node concept="3clFbF" id="hPjzMWB" role="3cqZAp">
            <node concept="37vLTw" id="ORe5oE9XPk" role="3clFbG">
              <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
              <node concept="raruj" id="ORe5oE9XPl" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPjGGCw">
    <property role="TrG5h" value="reduce_Model" />
    <ref role="3gUMe" to="tp5g:hPjGwIs" resolve="ModelExpression" />
    <node concept="312cEu" id="hPjGGCx" role="13RCb5">
      <property role="TrG5h" value="A" />
      <node concept="3Tm1VV" id="hPjGGCy" role="1B3o_S" />
      <node concept="3uibUv" id="hPjGGCG" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="hPjGGCz" role="jymVt">
        <node concept="3cqZAl" id="hPjGGC$" role="3clF45" />
        <node concept="3Tm1VV" id="hPjGGC_" role="1B3o_S" />
        <node concept="3clFbS" id="hPjGGCA" role="3clF47">
          <node concept="3clFbF" id="hPjGGCB" role="3cqZAp">
            <node concept="37vLTw" id="ORe5oE9XQv" role="3clFbG">
              <ref role="3cqZAo" to="tp6m:hLFg6DL" resolve="myModel" />
              <node concept="raruj" id="ORe5oE9XQw" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPLRi3V">
    <property role="TrG5h" value="reduce_SimpleNodeTest" />
    <ref role="3gUMe" to="tp5g:hHlHkQ8" resolve="NodesTestMethod" />
    <node concept="312cEu" id="hPLRnEC" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hPLRnED" role="1B3o_S" />
      <node concept="3uibUv" id="hPLRWTh" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="14AwouLnbi4" role="jymVt">
        <node concept="3cqZAl" id="14AwouLnbi5" role="3clF45" />
        <node concept="3Tm1VV" id="14AwouLnbi6" role="1B3o_S" />
        <node concept="3clFbS" id="14AwouLnbi8" role="3clF47">
          <node concept="XkiVB" id="14AwouLnbia" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
            <node concept="37vLTw" id="14AwouLnbie" role="37wK5m">
              <ref role="3cqZAo" node="14AwouLnbib" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="14AwouLnbib" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="14AwouLnbid" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="ZcWKOieXLk" role="jymVt" />
      <node concept="3clFb_" id="hPLRpOc" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3cqZAl" id="hPLRpOd" role="3clF45" />
        <node concept="3Tm1VV" id="hPLRpOe" role="1B3o_S" />
        <node concept="3clFbS" id="hPLRpOf" role="3clF47">
          <node concept="3clFbF" id="7prurfRBjDj" role="3cqZAp">
            <node concept="1rXfSq" id="7prurfRBjDh" role="3clFbG">
              <ref role="37wK5l" to="tp6m:7prurfRA3YM" resolve="initTestNodes" />
            </node>
          </node>
          <node concept="3clFbF" id="6NNh9n2xywb" role="3cqZAp">
            <node concept="1rXfSq" id="6NNh9n2xywc" role="3clFbG">
              <ref role="37wK5l" to="tp6m:ZcWKOigGgW" resolve="runWithinCommand" />
              <node concept="1bVj0M" id="6NNh9n2xywd" role="37wK5m">
                <node concept="3clFbS" id="6NNh9n2xywe" role="1bW5cS">
                  <node concept="3clFbH" id="6NNh9n2xywf" role="3cqZAp">
                    <node concept="2b32R4" id="6NNh9n2xywg" role="lGtFl">
                      <node concept="3JmXsc" id="6NNh9n2xywh" role="2P8S$">
                        <node concept="3clFbS" id="6NNh9n2xywi" role="2VODD2">
                          <node concept="3clFbF" id="6NNh9n2xywj" role="3cqZAp">
                            <node concept="2OqwBi" id="6NNh9n2xywk" role="3clFbG">
                              <node concept="2OqwBi" id="6NNh9n2xywl" role="2Oq$k0">
                                <node concept="30H73N" id="6NNh9n2xywm" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6NNh9n2xywn" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="6NNh9n2xywo" role="2OqNvi">
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
            </node>
            <node concept="1W57fq" id="6NNh9n2x$Wl" role="lGtFl">
              <node concept="3IZrLx" id="6NNh9n2x$Wo" role="3IZSJc">
                <node concept="3clFbS" id="6NNh9n2x$Wp" role="2VODD2">
                  <node concept="3clFbF" id="6NNh9n2x_kD" role="3cqZAp">
                    <node concept="2OqwBi" id="4wHm_MSUxVj" role="3clFbG">
                      <node concept="v3LJS" id="6NNh9n2x_kE" role="2Oq$k0">
                        <ref role="v3LJV" node="4wHm_MSUv5P" resolve="mode" />
                      </node>
                      <node concept="21noJN" id="4wHm_MSUydY" role="2OqNvi">
                        <node concept="21nZrQ" id="4wHm_MSUye0" role="21noJM">
                          <ref role="21nZrZ" to="tp5g:2hh8MJdVwqX" resolve="command" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6NNh9n2zED$" role="3cqZAp">
            <node concept="1rXfSq" id="6NNh9n2zED_" role="3clFbG">
              <ref role="37wK5l" to="tp6m:ZcWKOihS4B" resolve="runWithinRead" />
              <node concept="1bVj0M" id="6NNh9n2zEDA" role="37wK5m">
                <node concept="3clFbS" id="6NNh9n2zEDB" role="1bW5cS">
                  <node concept="3clFbH" id="6NNh9n2zEDC" role="3cqZAp">
                    <node concept="2b32R4" id="6NNh9n2zEDD" role="lGtFl">
                      <node concept="3JmXsc" id="6NNh9n2zEDE" role="2P8S$">
                        <node concept="3clFbS" id="6NNh9n2zEDF" role="2VODD2">
                          <node concept="3clFbF" id="6NNh9n2zEDG" role="3cqZAp">
                            <node concept="2OqwBi" id="6NNh9n2zEDH" role="3clFbG">
                              <node concept="2OqwBi" id="6NNh9n2zEDI" role="2Oq$k0">
                                <node concept="30H73N" id="6NNh9n2zEDJ" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6NNh9n2zEDK" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="6NNh9n2zEDL" role="2OqNvi">
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
            </node>
            <node concept="1W57fq" id="6NNh9n2zEDM" role="lGtFl">
              <node concept="3IZrLx" id="6NNh9n2zEDN" role="3IZSJc">
                <node concept="3clFbS" id="6NNh9n2zEDO" role="2VODD2">
                  <node concept="3clFbF" id="6NNh9n2zEDP" role="3cqZAp">
                    <node concept="2OqwBi" id="4wHm_MSUzSu" role="3clFbG">
                      <node concept="v3LJS" id="4wHm_MSUz$a" role="2Oq$k0">
                        <ref role="v3LJV" node="4wHm_MSUv5P" resolve="mode" />
                      </node>
                      <node concept="21noJN" id="4wHm_MSU$gY" role="2OqNvi">
                        <node concept="21nZrQ" id="4wHm_MSU$h0" role="21noJM">
                          <ref role="21nZrZ" to="tp5g:2hh8MJdVwqU" resolve="read" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6NNh9n2xMiA" role="3cqZAp">
            <node concept="1W57fq" id="6NNh9n2yqZ2" role="lGtFl">
              <node concept="3IZrLx" id="6NNh9n2yqZ3" role="3IZSJc">
                <node concept="3clFbS" id="6NNh9n2yqZ4" role="2VODD2">
                  <node concept="3clFbF" id="6NNh9n2yrsJ" role="3cqZAp">
                    <node concept="2OqwBi" id="4wHm_MSU_Cd" role="3clFbG">
                      <node concept="v3LJS" id="4wHm_MSU_Ce" role="2Oq$k0">
                        <ref role="v3LJV" node="4wHm_MSUv5P" resolve="mode" />
                      </node>
                      <node concept="21noJN" id="4wHm_MSU_Cf" role="2OqNvi">
                        <node concept="21nZrQ" id="4wHm_MSU_Cg" role="21noJM">
                          <ref role="21nZrZ" to="tp5g:2hh8MJdVwqT" resolve="none" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2b32R4" id="6NNh9n2xMiB" role="lGtFl">
              <node concept="3JmXsc" id="6NNh9n2xMiC" role="2P8S$">
                <node concept="3clFbS" id="6NNh9n2xMiD" role="2VODD2">
                  <node concept="3clFbF" id="6NNh9n2xMiE" role="3cqZAp">
                    <node concept="2OqwBi" id="6NNh9n2xMiF" role="3clFbG">
                      <node concept="2OqwBi" id="6NNh9n2xMiG" role="2Oq$k0">
                        <node concept="30H73N" id="6NNh9n2xMiH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6NNh9n2xMiI" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="6NNh9n2xMiJ" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="hPLRxbY" role="lGtFl" />
        <node concept="17Uvod" id="hPLRLP1" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hPLRLP2" role="3zH0cK">
            <node concept="3clFbS" id="hPLRLP3" role="2VODD2">
              <node concept="3clFbF" id="hPLRNxQ" role="3cqZAp">
                <node concept="2OqwBi" id="hPLRNU3" role="3clFbG">
                  <node concept="30H73N" id="hPLRNxR" role="2Oq$k0" />
                  <node concept="3zqWPK" id="70OdufORdBn" role="2OqNvi">
                    <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hPLScZs" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="2AHcQZ" id="7THlWl_mWxc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
          <node concept="2b32R4" id="7THlWl_mWxe" role="lGtFl">
            <node concept="3JmXsc" id="7THlWl_mWxf" role="2P8S$">
              <node concept="3clFbS" id="7THlWl_mWxg" role="2VODD2">
                <node concept="3clFbF" id="7THlWl_mXLj" role="3cqZAp">
                  <node concept="2OqwBi" id="7THlWl_mXLl" role="3clFbG">
                    <node concept="30H73N" id="7THlWl_mXLk" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7THlWl_mYjP" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1pdMLZ" id="6NNh9n2ssFm" role="lGtFl">
          <node concept="15lBmy" id="6NNh9n2stvw" role="15mYut">
            <node concept="3clFbS" id="6NNh9n2stvx" role="2VODD2">
              <node concept="3clFbF" id="6NNh9n2IFKO" role="3cqZAp">
                <node concept="2YIFZM" id="6NNh9n2IFMv" role="3clFbG">
                  <ref role="37wK5l" to="3fh5:6NNh9n2GHAu" resolve="mapSrcExtract" />
                  <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                  <node concept="3l3mFP" id="6NNh9n2IFPK" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N15co" id="4wHm_MSUv5P" role="1s_3oS">
      <property role="TrG5h" value="mode" />
      <node concept="2ZThk1" id="4wHm_MSUv5Q" role="1N15GL">
        <ref role="2ZWj4r" to="tp5g:2hh8MJdVwqS" resolve="ExecutionModelAccessMode" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hPMLN58">
    <property role="TrG5h" value="reduce_InvokeIntentionStatement" />
    <ref role="3gUMe" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
    <node concept="312cEu" id="hPMM3NF" role="13RCb5">
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3Tm1VV" id="hPMM3NG" role="1B3o_S" />
      <node concept="3uibUv" id="hTDNcuO" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="hPMM3NH" role="jymVt">
        <node concept="3cqZAl" id="hPMM3NI" role="3clF45" />
        <node concept="3Tm1VV" id="hPMM3NJ" role="1B3o_S" />
        <node concept="3clFbS" id="hPMM3NK" role="3clF47">
          <node concept="3clFbF" id="31vHIpQVHYy" role="3cqZAp">
            <node concept="1rXfSq" id="31vHIpQVHYx" role="3clFbG">
              <ref role="37wK5l" to="tp6m:7GTm$3eEVGy" resolve="invokeParameterizedIntention" />
              <node concept="Xl_RD" id="31vHIpQVJr_" role="37wK5m">
                <node concept="17Uvod" id="31vHIpQVJrA" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="31vHIpQVJrB" role="3zH0cK">
                    <node concept="3clFbS" id="31vHIpQVJrC" role="2VODD2">
                      <node concept="3clFbF" id="7JT4LO$qvGk" role="3cqZAp">
                        <node concept="2OqwBi" id="7JT4LO$qvGl" role="3clFbG">
                          <node concept="2OqwBi" id="7JT4LO$qvGm" role="2Oq$k0">
                            <node concept="30H73N" id="7JT4LO$qvGn" role="2Oq$k0" />
                            <node concept="3TrEf2" id="7JT4LO$qvGo" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORdBp" role="2OqNvi">
                            <ref role="37wK5l" to="tp3m:2ytFvC$HDcE" resolve="getGeneratedId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="7JT4LO$q$fG" role="37wK5m">
                <node concept="29HgVG" id="7JT4LO$q_BF" role="lGtFl">
                  <node concept="3NFfHV" id="7JT4LO$qAiF" role="3NFExx">
                    <node concept="3clFbS" id="7JT4LO$qAiG" role="2VODD2">
                      <node concept="3clFbF" id="7JT4LO$qBlc" role="3cqZAp">
                        <node concept="2OqwBi" id="7JT4LO$qBvc" role="3clFbG">
                          <node concept="30H73N" id="7JT4LO$qBlb" role="2Oq$k0" />
                          <node concept="3TrEf2" id="7JT4LO$qCuX" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="31vHIpQVJrV" role="37wK5m">
                <node concept="liA8E" id="31vHIpQVLxP" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:hQJuSEb" resolve="getNode" />
                </node>
                <node concept="37vLTw" id="31vHIpQVKyy" role="2Oq$k0">
                  <ref role="3cqZAo" to="tp6m:hSQ1pHb" resolve="myStart" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="31vHIpQVINF" role="lGtFl" />
            <node concept="1W57fq" id="7JT4LO$qgnM" role="lGtFl">
              <node concept="3IZrLx" id="7JT4LO$qgnO" role="3IZSJc">
                <node concept="3clFbS" id="7JT4LO$qgnQ" role="2VODD2">
                  <node concept="3clFbF" id="7JT4LO$qwqG" role="3cqZAp">
                    <node concept="2OqwBi" id="7JT4LO$qxTB" role="3clFbG">
                      <node concept="2OqwBi" id="7JT4LO$qwC$" role="2Oq$k0">
                        <node concept="30H73N" id="7JT4LO$qwqF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7JT4LO$qxrw" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="7JT4LO$qylA" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gft3U" id="7JT4LO$qhhd" role="UU_$l">
                <node concept="3clFbF" id="7JT4LO$qjIl" role="gfFT$">
                  <node concept="1rXfSq" id="7JT4LO$qjIm" role="3clFbG">
                    <ref role="37wK5l" to="tp6m:31vHIpQV3lp" resolve="invokeIntention" />
                    <node concept="Xl_RD" id="7JT4LO$qjIn" role="37wK5m">
                      <node concept="17Uvod" id="7JT4LO$qjIo" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="7JT4LO$qjIp" role="3zH0cK">
                          <node concept="3clFbS" id="7JT4LO$qjIq" role="2VODD2">
                            <node concept="3clFbF" id="7JT4LO$qp4f" role="3cqZAp">
                              <node concept="2OqwBi" id="7JT4LO$qrir" role="3clFbG">
                                <node concept="2OqwBi" id="7JT4LO$qpm4" role="2Oq$k0">
                                  <node concept="30H73N" id="7JT4LO$qp4d" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7JT4LO$qqG2" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
                                  </node>
                                </node>
                                <node concept="3zqWPK" id="70OdufORdBr" role="2OqNvi">
                                  <ref role="37wK5l" to="tp3m:2ytFvC$HDcE" resolve="getGeneratedId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7JT4LO$qjIE" role="37wK5m">
                      <node concept="liA8E" id="7JT4LO$qjIF" role="2OqNvi">
                        <ref role="37wK5l" to="tp6m:hQJuSEb" resolve="getNode" />
                      </node>
                      <node concept="37vLTw" id="7JT4LO$qjIG" role="2Oq$k0">
                        <ref role="3cqZAo" to="tp6m:hSQ1pHb" resolve="myStart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hTDNjfJ" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hSLWj1d">
    <property role="TrG5h" value="EditorTestCaseName" />
    <node concept="Wx3nA" id="4dqLDEZeBc9" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ourParametersCacheExtension" />
      <node concept="3Tm6S6" id="4dqLDEZeBca" role="1B3o_S" />
      <node concept="3uibUv" id="4dqLDEZeBcb" role="1tU5fm">
        <ref role="3uigEE" to="tp6m:4dqLDEYYwgD" resolve="TestParametersCacheExtension" />
      </node>
      <node concept="2ShNRf" id="4dqLDEZeBcc" role="33vP2m">
        <node concept="1pGfFk" id="4dqLDEZeBcd" role="2ShVmc">
          <ref role="37wK5l" to="tp6m:4dqLDEYYHvm" resolve="TestParametersCacheExtension" />
          <node concept="2OqwBi" id="6US8dKoU$7p" role="37wK5m">
            <node concept="2OqwBi" id="6US8dKoUz6l" role="2Oq$k0">
              <node concept="2OqwBi" id="6US8dKoUykv" role="2Oq$k0">
                <node concept="2OqwBi" id="6US8dKoUxID" role="2Oq$k0">
                  <node concept="2ShNRf" id="6US8dKoUx8Y" role="2Oq$k0">
                    <node concept="1pGfFk" id="6US8dKoUx46" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:6US8dKoOF6n" resolve="TestParametersCacheBuilder" />
                      <node concept="3VsKOn" id="4dqLDEZeE6E" role="37wK5m">
                        <ref role="3VsUkX" node="hSLWj1d" resolve="EditorTestCaseName" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6US8dKoUy64" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:6US8dKoOtkl" resolve="projectPath" />
                    <node concept="Xl_RD" id="4dqLDEZeE6F" role="37wK5m">
                      <property role="Xl_RC" value="project path" />
                      <node concept="17Uvod" id="4dqLDEZeE6G" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="4dqLDEZeE6H" role="3zH0cK">
                          <node concept="3clFbS" id="4dqLDEZeE6I" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoXbFG" role="3cqZAp">
                              <node concept="1mL9RQ" id="6US8dKoXbFF" role="3clFbG">
                                <ref role="1mL9RD" node="6US8dKoXay8" resolve="projectPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="6US8dKoXbPp" role="lGtFl">
                        <node concept="3IZrLx" id="6US8dKoXbPq" role="3IZSJc">
                          <node concept="3clFbS" id="6US8dKoXbPr" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoXcv6" role="3cqZAp">
                              <node concept="3y3z36" id="6US8dKoXefL" role="3clFbG">
                                <node concept="10Nm6u" id="6US8dKoXfiY" role="3uHU7w" />
                                <node concept="1mL9RQ" id="6US8dKoXcv5" role="3uHU7B">
                                  <ref role="1mL9RD" node="6US8dKoXay8" resolve="projectPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="6US8dKoXfP6" role="UU_$l">
                          <node concept="10Nm6u" id="6US8dKoXfPy" role="gfFT$" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6US8dKoUyFu" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:6US8dKoOs$1" resolve="modelRef" />
                  <node concept="Xl_RD" id="4dqLDEZeE6O" role="37wK5m">
                    <property role="Xl_RC" value="model.fq.name" />
                    <node concept="17Uvod" id="4dqLDEZeE6P" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="4dqLDEZeE6Q" role="3zH0cK">
                        <node concept="3clFbS" id="4dqLDEZeE6R" role="2VODD2">
                          <node concept="3clFbF" id="4dqLDEZeE6S" role="3cqZAp">
                            <node concept="2OqwBi" id="4dqLDEZeE6T" role="3clFbG">
                              <node concept="2OqwBi" id="4dqLDEZeE6U" role="2Oq$k0">
                                <node concept="liA8E" id="4dqLDEZeE6V" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                </node>
                                <node concept="2JrnkZ" id="4dqLDEZeE6W" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4dqLDEZeE6X" role="2JrQYb">
                                    <node concept="1iwH7S" id="4dqLDEZeE6Y" role="2Oq$k0" />
                                    <node concept="1st3f0" id="4dqLDEZeE6Z" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4dqLDEZeE70" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ps_y7" id="6US8dKoXay7" role="lGtFl">
                  <node concept="1ps_xZ" id="6US8dKoXay8" role="1ps_xO">
                    <property role="TrG5h" value="projectPath" />
                    <node concept="2jfdEK" id="6US8dKoXay9" role="1ps_xN">
                      <node concept="3clFbS" id="6US8dKoXaya" role="2VODD2">
                        <node concept="3clFbF" id="6US8dKoXaX2" role="3cqZAp">
                          <node concept="2YIFZM" id="6US8dKoXaX3" role="3clFbG">
                            <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                            <ref role="37wK5l" to="3fh5:7v5ch11EroR" resolve="getProjectPath" />
                            <node concept="2OqwBi" id="6US8dKoXaX4" role="37wK5m">
                              <node concept="30H73N" id="6US8dKoXaX5" role="2Oq$k0" />
                              <node concept="I4A8Y" id="6US8dKoXaX6" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6US8dKoUzET" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:6US8dKoOtLM" resolve="reopenProject" />
                <node concept="3clFbT" id="4dqLDEZeE71" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6US8dKoU_7W" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:6US8dKoNyEp" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZeBcM" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="5iphLhCkdsp" role="jymVt" />
    <node concept="3clFbW" id="5iphLhCkctQ" role="jymVt">
      <node concept="3cqZAl" id="5iphLhCkctS" role="3clF45" />
      <node concept="3Tm1VV" id="5iphLhCkctT" role="1B3o_S" />
      <node concept="3clFbS" id="5iphLhCkctU" role="3clF47">
        <node concept="XkiVB" id="5iphLhCn5Ro" role="3cqZAp">
          <ref role="37wK5l" to="tp6m:5LbRjS1pM4D" resolve="BaseTransformationTest" />
          <node concept="2OqwBi" id="4dqLDEZeFdn" role="37wK5m">
            <node concept="37vLTw" id="4dqLDEZf20c" role="2Oq$k0">
              <ref role="3cqZAo" node="4dqLDEZeBc9" resolve="ourParametersCacheExtension" />
            </node>
            <node concept="liA8E" id="4dqLDEZeFdo" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4dqLDEYZ0EK" resolve="getParametersCache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5iphLhCkeqK" role="jymVt" />
    <node concept="3Tm1VV" id="hSLWj1e" role="1B3o_S" />
    <node concept="n94m4" id="hSLWj1j" role="lGtFl">
      <ref role="n9lRv" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
    </node>
    <node concept="17Uvod" id="hSLWR6b" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hSLWR6c" role="3zH0cK">
        <node concept="3clFbS" id="hSLWR6d" role="2VODD2">
          <node concept="3clFbF" id="hSLWYap" role="3cqZAp">
            <node concept="2OqwBi" id="hSLWYLJ" role="3clFbG">
              <node concept="30H73N" id="hSLWYaq" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORdBt" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:hSQIE8p" resolve="getSimpleClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="e$hNri9klf" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="2AHcQZ" id="6xD3woJoR6A" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3clFb_" id="hSLXXzS" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="hSLXXzT" role="3clF45" />
      <node concept="3Tm1VV" id="hSLXXzU" role="1B3o_S" />
      <node concept="2AHcQZ" id="hSLXX$q" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~Test" resolve="Test" />
      </node>
      <node concept="17Uvod" id="hSLXX$r" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hSLXX$s" role="3zH0cK">
          <node concept="3clFbS" id="hSLXX$t" role="2VODD2">
            <node concept="3clFbF" id="hSMgKNO" role="3cqZAp">
              <node concept="2OqwBi" id="hSMgLDN" role="3clFbG">
                <node concept="30H73N" id="hSMgKNP" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdBv" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="hSLXX$y" role="3clF47">
        <node concept="3clFbF" id="hSLXX_x" role="3cqZAp">
          <node concept="2OqwBi" id="1043xPhqBuL" role="3clFbG">
            <node concept="2ShNRf" id="1043xPhqzD5" role="2Oq$k0">
              <node concept="1pGfFk" id="1043xPhqBaO" role="2ShVmc">
                <ref role="37wK5l" node="1043xPhqmxo" resolve="EditorTestCaseName.TestBody" />
                <node concept="Xjq3P" id="1043xPhqBil" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="1043xPhqD03" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4cFHg$8nt7x" resolve="testMethod" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="hSLXXA5" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="ORe5oE9h8X" role="jymVt" />
    <node concept="312cEu" id="hSMJi6o" role="jymVt">
      <property role="TrG5h" value="TestBody" />
      <node concept="2tJIrI" id="1043xPhqIVB" role="jymVt" />
      <node concept="3clFbW" id="1043xPhqmxo" role="jymVt">
        <node concept="3cqZAl" id="1043xPhqmxq" role="3clF45" />
        <node concept="3clFbS" id="1043xPhqmxs" role="3clF47">
          <node concept="XkiVB" id="1043xPhqrEi" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:1043xPhpns6" resolve="BaseEditorTestBody" />
            <node concept="37vLTw" id="1043xPhqrRb" role="37wK5m">
              <ref role="3cqZAo" node="1043xPhqq8x" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1043xPhqq8x" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="1043xPhqq8w" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1043xPhoZA4" role="jymVt" />
      <node concept="3uibUv" id="hSQ04MV" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFb_" id="hSMJi6p" role="jymVt">
        <property role="TrG5h" value="testMethodImpl" />
        <node concept="3cqZAl" id="hSMJi6q" role="3clF45" />
        <node concept="3Tm1VV" id="hSMK3_t" role="1B3o_S" />
        <node concept="3clFbS" id="hSQ8ykv" role="3clF47">
          <node concept="3clFbF" id="5s44y2KSvXw" role="3cqZAp">
            <node concept="1rXfSq" id="5s44y2KSvXv" role="3clFbG">
              <ref role="37wK5l" to="tp6m:ORe5oE8VAn" resolve="initEditorComponent" />
              <node concept="Xl_RD" id="5s44y2KSw$p" role="37wK5m">
                <property role="Xl_RC" value="before" />
                <node concept="17Uvod" id="5s44y2KSw$q" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="5s44y2KSw$r" role="3zH0cK">
                    <node concept="3clFbS" id="5s44y2KSw$s" role="2VODD2">
                      <node concept="3cpWs8" id="5aRyplrR88o" role="3cqZAp">
                        <node concept="3cpWsn" id="5aRyplrR88p" role="3cpWs9">
                          <property role="TrG5h" value="nodeToEdit" />
                          <node concept="3Tqbb2" id="5aRyplrR88m" role="1tU5fm">
                            <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          </node>
                          <node concept="2OqwBi" id="2IvnPUIqjSy" role="33vP2m">
                            <node concept="2OqwBi" id="2IvnPUIqjDf" role="2Oq$k0">
                              <node concept="30H73N" id="2IvnPUIqj_S" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2IvnPUIqjHe" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2IvnPUIqlIA" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5aRyplrR9k1" role="3cqZAp">
                        <node concept="3clFbS" id="5aRyplrR9k3" role="3clFbx">
                          <node concept="3clFbF" id="5aRyplrRbzX" role="3cqZAp">
                            <node concept="2OqwBi" id="5aRyplrRcfa" role="3clFbG">
                              <node concept="1iwH7S" id="5aRyplrRbzV" role="2Oq$k0" />
                              <node concept="2k5nB$" id="5aRyplrRcA8" role="2OqNvi">
                                <node concept="Xl_RD" id="5aRyplrRcXR" role="2k5Stb">
                                  <property role="Xl_RC" value="A node in the 'before' section must be provided" />
                                </node>
                                <node concept="30H73N" id="5aRyplrRhsm" role="2k6f33" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5aRyplrRaWp" role="3clFbw">
                          <node concept="37vLTw" id="5aRyplrR9EX" role="2Oq$k0">
                            <ref role="3cqZAo" node="5aRyplrR88p" resolve="nodeToEdit" />
                          </node>
                          <node concept="3w_OXm" id="5aRyplrRbaZ" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5aRyplrT7qt" role="3cqZAp">
                        <node concept="3clFbS" id="5aRyplrT7qv" role="3clFbx">
                          <node concept="3clFbF" id="5aRyplrTgsv" role="3cqZAp">
                            <node concept="2OqwBi" id="5aRyplrTgNU" role="3clFbG">
                              <node concept="1iwH7S" id="5aRyplrTgst" role="2Oq$k0" />
                              <node concept="2kEO4f" id="2LDu0wbBMdS" role="2OqNvi">
                                <node concept="Xl_RD" id="5aRyplrThCn" role="2k5Stb">
                                  <property role="Xl_RC" value="A node in the 'before' section must have at least one AnonymousCellAnnotation attached" />
                                </node>
                                <node concept="30H73N" id="2LDu0wbBPxm" role="2k6f33" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5aRyplrTc6f" role="3clFbw">
                          <node concept="2OqwBi" id="5aRyplrT8m2" role="2Oq$k0">
                            <node concept="37vLTw" id="5aRyplrT7OD" role="2Oq$k0">
                              <ref role="3cqZAo" node="5aRyplrR88p" resolve="nodeToEdit" />
                            </node>
                            <node concept="2Rf3mk" id="5aRyplrT8Or" role="2OqNvi">
                              <node concept="1xMEDy" id="5aRyplrT8Ot" role="1xVPHs">
                                <node concept="chp4Y" id="5aRyplrT99v" role="ri$Ld">
                                  <ref role="cht4Q" to="tp5g:hSLIFSi" resolve="AnonymousCellAnnotation" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1v1jN8" id="5aRyplrTg0G" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="5s44y2KSw$t" role="3cqZAp">
                        <node concept="2OqwBi" id="5s44y2KSw$u" role="3clFbG">
                          <node concept="2OqwBi" id="5s44y2KSw$v" role="2Oq$k0">
                            <node concept="liA8E" id="5s44y2KSw$w" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="5s44y2KSw$x" role="2Oq$k0">
                              <node concept="37vLTw" id="5aRyplrR88t" role="2JrQYb">
                                <ref role="3cqZAo" node="5aRyplrR88p" resolve="nodeToEdit" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5s44y2KSw$_" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5s44y2KSxbf" role="37wK5m">
                <property role="Xl_RC" value="after" />
                <node concept="17Uvod" id="5s44y2KSxbg" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="5s44y2KSxbh" role="3zH0cK">
                    <node concept="3clFbS" id="5s44y2KSxbi" role="2VODD2">
                      <node concept="3cpWs8" id="2IvnPUIq_4_" role="3cqZAp">
                        <node concept="3cpWsn" id="2IvnPUIq_4A" role="3cpWs9">
                          <property role="TrG5h" value="nodeResult" />
                          <node concept="3Tqbb2" id="2IvnPUIq_3H" role="1tU5fm">
                            <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                          </node>
                          <node concept="2OqwBi" id="2IvnPUIqIkR" role="33vP2m">
                            <node concept="2OqwBi" id="2IvnPUIqHId" role="2Oq$k0">
                              <node concept="30H73N" id="2IvnPUIqHpv" role="2Oq$k0" />
                              <node concept="3TrEf2" id="2IvnPUIqHXo" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:2IvnPUIp3m5" resolve="testNodeResult" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2IvnPUIqJZv" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5s44y2KSxbj" role="3cqZAp">
                        <node concept="3clFbS" id="5s44y2KSxbk" role="3clFbx">
                          <node concept="3cpWs6" id="5s44y2KSxbl" role="3cqZAp">
                            <node concept="2OqwBi" id="5s44y2KSxbm" role="3cqZAk">
                              <node concept="2OqwBi" id="5s44y2KSxbn" role="2Oq$k0">
                                <node concept="liA8E" id="5s44y2KSxbo" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                </node>
                                <node concept="2JrnkZ" id="5s44y2KSxbp" role="2Oq$k0">
                                  <node concept="37vLTw" id="2IvnPUIq_4F" role="2JrQYb">
                                    <ref role="3cqZAo" node="2IvnPUIq_4A" resolve="nodeResult" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="5s44y2KSxbt" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5s44y2KSxbu" role="3clFbw">
                          <node concept="10Nm6u" id="5s44y2KSxbv" role="3uHU7w" />
                          <node concept="37vLTw" id="2IvnPUIq_4E" role="3uHU7B">
                            <ref role="3cqZAo" node="2IvnPUIq_4A" resolve="nodeResult" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="5s44y2KSxbz" role="9aQIa">
                          <node concept="3clFbS" id="5s44y2KSxb$" role="9aQI4">
                            <node concept="3cpWs6" id="5s44y2KSxb_" role="3cqZAp">
                              <node concept="Xl_RD" id="5s44y2KSxbA" role="3cqZAk">
                                <property role="Xl_RC" value="" />
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
          <node concept="3clFbH" id="6BJVJLXoX$8" role="3cqZAp">
            <node concept="2b32R4" id="6BJVJLXoX$9" role="lGtFl">
              <node concept="3JmXsc" id="6BJVJLXoX$a" role="2P8S$">
                <node concept="3clFbS" id="6BJVJLXoX$b" role="2VODD2">
                  <node concept="3clFbF" id="6BJVJLXoX$c" role="3cqZAp">
                    <node concept="2OqwBi" id="6BJVJLXoX$d" role="3clFbG">
                      <node concept="2OqwBi" id="6BJVJLXoX$e" role="2Oq$k0">
                        <node concept="30H73N" id="6BJVJLXoX$f" role="2Oq$k0" />
                        <node concept="3TrEf2" id="6BJVJLXoX$g" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:hSLjaOj" resolve="code" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="6BJVJLXoX$h" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="hSQbneM" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="2AHcQZ" id="4cFHg$8ntbL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5aRyplrR6$8" role="jymVt">
        <node concept="1W57fq" id="3Iw4OSjoU07" role="lGtFl">
          <node concept="3IZrLx" id="3Iw4OSjoU0a" role="3IZSJc">
            <node concept="3clFbS" id="3Iw4OSjoU0b" role="2VODD2">
              <node concept="3clFbF" id="3Iw4OSjoU0h" role="3cqZAp">
                <node concept="2OqwBi" id="3Iw4OSjoVkg" role="3clFbG">
                  <node concept="2OqwBi" id="3Iw4OSjoVkh" role="2Oq$k0">
                    <node concept="30H73N" id="3Iw4OSjoVki" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="3Iw4OSjoVkj" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:4xJw7BvbXxC" resolve="logEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="3Iw4OSjoVkk" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4xJw7BvfRgs" role="jymVt">
        <property role="TrG5h" value="populateExpectedEvents" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="4xJw7BvfRgt" role="3clF46">
          <property role="TrG5h" value="appender" />
          <node concept="3uibUv" id="4xJw7BvfRgu" role="1tU5fm">
            <ref role="3uigEE" to="zu0:~CachingAppender" resolve="CachingAppender" />
          </node>
        </node>
        <node concept="3cqZAl" id="4xJw7BvfRgv" role="3clF45" />
        <node concept="3Tmbuc" id="4xJw7BvfRgw" role="1B3o_S" />
        <node concept="3clFbS" id="4xJw7BvfRgz" role="3clF47">
          <node concept="3clFbF" id="4xJw7BvfVVi" role="3cqZAp">
            <node concept="2OqwBi" id="4xJw7BvfW0Z" role="3clFbG">
              <node concept="37vLTw" id="4xJw7BvfVVg" role="2Oq$k0">
                <ref role="3cqZAo" node="4xJw7BvfRgt" resolve="appender" />
              </node>
              <node concept="liA8E" id="4xJw7BvfW7Y" role="2OqNvi">
                <ref role="37wK5l" to="zu0:~CachingAppender.expectEvent(jetbrains.mps.testbench.util.CachingAppender$Level,java.lang.String)" resolve="expectEvent" />
                <node concept="Rm8GO" id="1pQpPQ2kc6C" role="37wK5m">
                  <ref role="Rm8GQ" to="zu0:~CachingAppender$Level.ERROR" resolve="ERROR" />
                  <ref role="1Px2BO" to="zu0:~CachingAppender$Level" resolve="CachingAppender.Level" />
                  <node concept="1ZhdrF" id="1pQpPQ2kcWP" role="lGtFl">
                    <property role="2qtEX8" value="enumConstantDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1083260308424/1083260308426" />
                    <node concept="3$xsQk" id="1pQpPQ2kcWQ" role="3$ytzL">
                      <node concept="3clFbS" id="1pQpPQ2kcWR" role="2VODD2">
                        <node concept="3clFbF" id="1pQpPQ2kdu4" role="3cqZAp">
                          <node concept="2OqwBi" id="3Ftr4R8MEv_" role="3clFbG">
                            <node concept="24Tkf9" id="3Ftr4R8MEvB" role="2OqNvi" />
                            <node concept="2OqwBi" id="4xJw7Bvg1FN" role="2Oq$k0">
                              <node concept="30H73N" id="4xJw7Bvg1CX" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4xJw7Bvg1K6" role="2OqNvi">
                                <ref role="3TsBF5" to="tp5g:3Ftr4R6BHaB" resolve="level" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="4xJw7BvfWnr" role="37wK5m" />
              </node>
            </node>
            <node concept="1WS0z7" id="4xJw7BvfWFC" role="lGtFl">
              <node concept="3JmXsc" id="4xJw7BvfWFE" role="3Jn$fo">
                <node concept="3clFbS" id="4xJw7BvfWFG" role="2VODD2">
                  <node concept="3clFbF" id="4xJw7BvfX6F" role="3cqZAp">
                    <node concept="2OqwBi" id="4xJw7BvfXde" role="3clFbG">
                      <node concept="30H73N" id="4xJw7BvfX6E" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="4xJw7BvfXrC" role="2OqNvi">
                        <ref role="3TtcxE" to="tp5g:4xJw7BvbXxC" resolve="logEvents" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4xJw7BvfRg$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="1W57fq" id="4xJw7BvfSQc" role="lGtFl">
          <node concept="3IZrLx" id="4xJw7BvfSQf" role="3IZSJc">
            <node concept="3clFbS" id="4xJw7BvfSQg" role="2VODD2">
              <node concept="3clFbF" id="4xJw7BvfSQm" role="3cqZAp">
                <node concept="2OqwBi" id="4xJw7BvfUjB" role="3clFbG">
                  <node concept="2OqwBi" id="4xJw7BvfSQh" role="2Oq$k0">
                    <node concept="30H73N" id="4xJw7BvfSQl" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4xJw7BvfTH3" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:4xJw7BvbXxC" resolve="logEvents" />
                    </node>
                  </node>
                  <node concept="3GX2aA" id="4xJw7BvfV8o" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1Vts4spD7c2" role="jymVt">
        <property role="TrG5h" value="getMatchOptions" />
        <node concept="3Tmbuc" id="1Vts4spD7c6" role="1B3o_S" />
        <node concept="3uibUv" id="1Vts4spD7c7" role="3clF45">
          <ref role="3uigEE" to="y5e1:60ggPToHhwE" resolve="MatchOptions" />
        </node>
        <node concept="3clFbS" id="1Vts4spD7cV" role="3clF47">
          <node concept="3cpWs8" id="1Vts4spE3wF" role="3cqZAp">
            <node concept="3cpWsn" id="1Vts4spE3wG" role="3cpWs9">
              <property role="TrG5h" value="options" />
              <node concept="3uibUv" id="1Vts4spE2OT" role="1tU5fm">
                <ref role="3uigEE" to="y5e1:60ggPToHhwE" resolve="MatchOptions" />
              </node>
              <node concept="2ShNRf" id="1Vts4spE3wH" role="33vP2m">
                <node concept="HV5vD" id="1Vts4spE3wI" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="HV5vE" to="y5e1:60ggPToHhwE" resolve="MatchOptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Vts4spDnAy" role="3cqZAp">
            <node concept="2OqwBi" id="1Vts4spDyAr" role="3clFbG">
              <node concept="37vLTw" id="1Vts4spE3wJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1Vts4spE3wG" resolve="options" />
              </node>
              <node concept="liA8E" id="1Vts4spDzlF" role="2OqNvi">
                <ref role="37wK5l" to="y5e1:60ggPToHhxN" resolve="unordered" />
                <node concept="359W_D" id="1Vts4spE7Yp" role="37wK5m">
                  <ref role="359W_E" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                  <ref role="359W_F" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                  <node concept="1ZhdrF" id="1Vts4spH$jk" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                    <node concept="3$xsQk" id="1Vts4spH$jl" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spH$jm" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spH_eb" role="3cqZAp">
                          <node concept="1PxgMI" id="1Vts4spH_ec" role="3clFbG">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="1Vts4spH_ed" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1Vts4spH_ee" role="1m5AlR">
                              <node concept="2OqwBi" id="1Vts4spH_ef" role="2Oq$k0">
                                <node concept="30H73N" id="1Vts4spH_eg" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1Vts4spH_eh" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:60ggPToKIiG" resolve="link" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="1Vts4spH_ei" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="1Vts4spHNDl" role="lGtFl">
                    <property role="2qtEX8" value="linkDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                    <node concept="3$xsQk" id="1Vts4spHNDm" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spHNDn" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHP9z" role="3cqZAp">
                          <node concept="2OqwBi" id="1Vts4spHQze" role="3clFbG">
                            <node concept="30H73N" id="1Vts4spHP9y" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Vts4spHU3b" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:60ggPToKIiG" resolve="link" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="1Vts4spEH3$" role="lGtFl">
              <node concept="3JmXsc" id="1Vts4spEH3_" role="3Jn$fo">
                <node concept="3clFbS" id="1Vts4spEH3A" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spEIql" role="3cqZAp">
                    <node concept="2OqwBi" id="1Vts4spEQGh" role="3clFbG">
                      <node concept="2OqwBi" id="1Vts4spEMEA" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Vts4spEJw$" role="2Oq$k0">
                          <node concept="30H73N" id="1Vts4spEIqk" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Vts4spELPB" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1Vts4spENvB" role="2OqNvi">
                          <ref role="3TtcxE" to="tp5g:60ggPToKIiF" resolve="rules" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1Vts4spEVk$" role="2OqNvi">
                        <node concept="chp4Y" id="1Vts4spEW0a" role="v3oSu">
                          <ref role="cht4Q" to="tp5g:60ggPToKIiB" resolve="UnorderedChildrenRule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Vts4spEdCS" role="3cqZAp">
            <node concept="2OqwBi" id="1Vts4spEeyN" role="3clFbG">
              <node concept="37vLTw" id="1Vts4spEdCQ" role="2Oq$k0">
                <ref role="3cqZAo" node="1Vts4spE3wG" resolve="options" />
              </node>
              <node concept="liA8E" id="1Vts4spEfnw" role="2OqNvi">
                <ref role="37wK5l" to="y5e1:60ggPToHhxA" resolve="ignoreChildren" />
                <node concept="359W_D" id="1Vts4spEg_L" role="37wK5m">
                  <ref role="359W_E" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
                  <ref role="359W_F" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                  <node concept="1ZhdrF" id="1Vts4spHvtN" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                    <node concept="3$xsQk" id="1Vts4spHvtO" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spHvtP" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHwnQ" role="3cqZAp">
                          <node concept="1PxgMI" id="1Vts4spHwnR" role="3clFbG">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="1Vts4spHwnS" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1Vts4spHwnT" role="1m5AlR">
                              <node concept="2OqwBi" id="1Vts4spHwnU" role="2Oq$k0">
                                <node concept="30H73N" id="1Vts4spHwnV" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1Vts4spHwnW" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:60ggPToKIiH" resolve="link" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="1Vts4spHwnX" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="1Vts4spHHmh" role="lGtFl">
                    <property role="2qtEX8" value="linkDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                    <node concept="3$xsQk" id="1Vts4spHHmi" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spHHmj" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHIOF" role="3cqZAp">
                          <node concept="2OqwBi" id="1Vts4spHJZF" role="3clFbG">
                            <node concept="30H73N" id="1Vts4spHIOE" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Vts4spHM_F" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:60ggPToKIiH" resolve="link" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="1Vts4spEYeH" role="lGtFl">
              <node concept="3JmXsc" id="1Vts4spEYeI" role="3Jn$fo">
                <node concept="3clFbS" id="1Vts4spEYeJ" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spEYVM" role="3cqZAp">
                    <node concept="2OqwBi" id="1Vts4spEYVN" role="3clFbG">
                      <node concept="2OqwBi" id="1Vts4spEYVO" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Vts4spEYVP" role="2Oq$k0">
                          <node concept="30H73N" id="1Vts4spEYVQ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Vts4spEYVR" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1Vts4spEYVS" role="2OqNvi">
                          <ref role="3TtcxE" to="tp5g:60ggPToKIiF" resolve="rules" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1Vts4spEYVT" role="2OqNvi">
                        <node concept="chp4Y" id="1Vts4spEYVU" role="v3oSu">
                          <ref role="cht4Q" to="tp5g:60ggPToKIiC" resolve="IgnoreChildrenRule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Vts4spEmjj" role="3cqZAp">
            <node concept="2OqwBi" id="1Vts4spEne1" role="3clFbG">
              <node concept="37vLTw" id="1Vts4spEmjh" role="2Oq$k0">
                <ref role="3cqZAo" node="1Vts4spE3wG" resolve="options" />
              </node>
              <node concept="liA8E" id="1Vts4spEo89" role="2OqNvi">
                <ref role="37wK5l" to="y5e1:60ggPToHhxp" resolve="ignoreReference" />
                <node concept="359W_D" id="1Vts4spEqbn" role="37wK5m">
                  <ref role="359W_E" to="tp5g:60ggPToKIiB" resolve="UnorderedChildrenRule" />
                  <ref role="359W_F" to="tp5g:60ggPToKIiG" resolve="link" />
                  <node concept="1ZhdrF" id="1Vts4spHgXv" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421078" />
                    <node concept="3$xsQk" id="1Vts4spHgXw" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spHgXx" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHimj" role="3cqZAp">
                          <node concept="1PxgMI" id="1Vts4spHsCM" role="3clFbG">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="1Vts4spHtzm" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1Vts4spHq75" role="1m5AlR">
                              <node concept="2OqwBi" id="1Vts4spHjFL" role="2Oq$k0">
                                <node concept="30H73N" id="1Vts4spHimi" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1Vts4spHn4L" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:60ggPToKIiI" resolve="link" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="1Vts4spHro2" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="1Vts4spHBnb" role="lGtFl">
                    <property role="2qtEX8" value="linkDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474301421077/2644386474301421079" />
                    <node concept="3$xsQk" id="1Vts4spHBnc" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spHBnd" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHCNL" role="3cqZAp">
                          <node concept="2OqwBi" id="1Vts4spHE7T" role="3clFbG">
                            <node concept="30H73N" id="1Vts4spHCNK" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Vts4spHGks" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:60ggPToKIiI" resolve="link" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="1Vts4spF1Xy" role="lGtFl">
              <node concept="3JmXsc" id="1Vts4spF1Xz" role="3Jn$fo">
                <node concept="3clFbS" id="1Vts4spF1X$" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spF2GT" role="3cqZAp">
                    <node concept="2OqwBi" id="1Vts4spF2GU" role="3clFbG">
                      <node concept="2OqwBi" id="1Vts4spF2GV" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Vts4spF2GW" role="2Oq$k0">
                          <node concept="30H73N" id="1Vts4spF2GX" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Vts4spF2GY" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1Vts4spF2GZ" role="2OqNvi">
                          <ref role="3TtcxE" to="tp5g:60ggPToKIiF" resolve="rules" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1Vts4spF2H0" role="2OqNvi">
                        <node concept="chp4Y" id="1Vts4spF2H1" role="v3oSu">
                          <ref role="cht4Q" to="tp5g:60ggPToKIiD" resolve="IgnoreReferenceRule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1Vts4spEv6Z" role="3cqZAp">
            <node concept="2OqwBi" id="1Vts4spEw2w" role="3clFbG">
              <node concept="37vLTw" id="1Vts4spEv6X" role="2Oq$k0">
                <ref role="3cqZAo" node="1Vts4spE3wG" resolve="options" />
              </node>
              <node concept="liA8E" id="1Vts4spExrx" role="2OqNvi">
                <ref role="37wK5l" to="y5e1:60ggPToHhxc" resolve="ignoreProperty" />
                <node concept="355D3s" id="1Vts4spEADK" role="37wK5m">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                  <node concept="1ZhdrF" id="1Vts4spGUNO" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386081" />
                    <node concept="3$xsQk" id="1Vts4spGUNP" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spGUNQ" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spGWZf" role="3cqZAp">
                          <node concept="1PxgMI" id="1Vts4spH507" role="3clFbG">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="1Vts4spH6Xb" role="3oSUPX">
                              <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1Vts4spH2i8" role="1m5AlR">
                              <node concept="2OqwBi" id="1Vts4spGYiw" role="2Oq$k0">
                                <node concept="30H73N" id="1Vts4spGWZe" role="2Oq$k0" />
                                <node concept="3TrEf2" id="1Vts4spH0Hb" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:60ggPToKIiJ" resolve="property" />
                                </node>
                              </node>
                              <node concept="1mfA1w" id="1Vts4spH3xa" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="1Vts4spH7T7" role="lGtFl">
                    <property role="2qtEX8" value="propertyDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474302386080/2644386474302386082" />
                    <node concept="3$xsQk" id="1Vts4spH7T8" role="3$ytzL">
                      <node concept="3clFbS" id="1Vts4spH7T9" role="2VODD2">
                        <node concept="3clFbF" id="1Vts4spHamK" role="3cqZAp">
                          <node concept="2OqwBi" id="1Vts4spHbFU" role="3clFbG">
                            <node concept="30H73N" id="1Vts4spHamJ" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1Vts4spHdZO" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:60ggPToKIiJ" resolve="property" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="1Vts4spF5K4" role="lGtFl">
              <node concept="3JmXsc" id="1Vts4spF5K5" role="3Jn$fo">
                <node concept="3clFbS" id="1Vts4spF5K6" role="2VODD2">
                  <node concept="3clFbF" id="1Vts4spF6xH" role="3cqZAp">
                    <node concept="2OqwBi" id="1Vts4spF6xI" role="3clFbG">
                      <node concept="2OqwBi" id="1Vts4spF6xJ" role="2Oq$k0">
                        <node concept="2OqwBi" id="1Vts4spF6xK" role="2Oq$k0">
                          <node concept="30H73N" id="1Vts4spF6xL" role="2Oq$k0" />
                          <node concept="3TrEf2" id="1Vts4spF6xM" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="1Vts4spF6xN" role="2OqNvi">
                          <ref role="3TtcxE" to="tp5g:60ggPToKIiF" resolve="rules" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="1Vts4spF6xO" role="2OqNvi">
                        <node concept="chp4Y" id="1Vts4spF6xP" role="v3oSu">
                          <ref role="cht4Q" to="tp5g:60ggPToKIiE" resolve="IgnorePropertyRule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1Vts4spFzi_" role="3cqZAp">
            <node concept="37vLTw" id="1Vts4spF_Pu" role="3cqZAk">
              <ref role="3cqZAo" node="1Vts4spE3wG" resolve="options" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1Vts4spD7cW" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="1W57fq" id="1Vts4spDaeU" role="lGtFl">
          <node concept="3IZrLx" id="1Vts4spDaeX" role="3IZSJc">
            <node concept="3clFbS" id="1Vts4spDaeY" role="2VODD2">
              <node concept="3clFbF" id="1Vts4spDaf4" role="3cqZAp">
                <node concept="1Wc70l" id="1Vts4spDe1R" role="3clFbG">
                  <node concept="2OqwBi" id="1Vts4spDil9" role="3uHU7w">
                    <node concept="2OqwBi" id="1Vts4spDfIh" role="2Oq$k0">
                      <node concept="2OqwBi" id="1Vts4spDf57" role="2Oq$k0">
                        <node concept="30H73N" id="1Vts4spDeIi" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1Vts4spDfEl" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1Vts4spDfNU" role="2OqNvi">
                        <ref role="3TtcxE" to="tp5g:60ggPToKIiF" resolve="rules" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="1Vts4spDlJ3" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="1Vts4spDdcz" role="3uHU7B">
                    <node concept="2OqwBi" id="1Vts4spDaeZ" role="2Oq$k0">
                      <node concept="3TrEf2" id="1Vts4spDcxu" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp5g:60ggPToKMy5" resolve="nodeMatching" />
                      </node>
                      <node concept="30H73N" id="1Vts4spDaf3" role="2Oq$k0" />
                    </node>
                    <node concept="3x8VRR" id="1Vts4spDdxi" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hTDGwQJ">
    <property role="TrG5h" value="reduce_BeforeCell" />
    <node concept="312cEu" id="hTDG_x_" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="hTDG_xA" role="1B3o_S" />
      <node concept="3uibUv" id="hTDGM9a" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="hTDG_xB" role="jymVt">
        <node concept="3cqZAl" id="hTDG_xC" role="3clF45" />
        <node concept="3Tm1VV" id="hTDG_xD" role="1B3o_S" />
        <node concept="3clFbS" id="hTDG_xE" role="3clF47">
          <node concept="3clFbF" id="hTDH3tX" role="3cqZAp">
            <node concept="37vLTw" id="ORe5oE9$ty" role="3clFbG">
              <ref role="3cqZAo" to="tp6m:hSQ1pHb" resolve="myStart" />
              <node concept="raruj" id="ORe5oE9$tz" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="50vRVameRNm">
    <property role="TrG5h" value="reduce_EditorComponent" />
    <ref role="3gUMe" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
    <node concept="312cEu" id="5s44y2KUdmt" role="13RCb5">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFb_" id="5s44y2KUdnf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="foo" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="5s44y2KUdni" role="3clF47">
          <node concept="3clFbF" id="50vRVameSYo" role="3cqZAp">
            <node concept="1rXfSq" id="ORe5oE9$wq" role="3clFbG">
              <ref role="37wK5l" to="tp6m:1BrKW0d9mQ7" resolve="getEditorComponent" />
              <node concept="raruj" id="ORe5oE9$wr" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="5s44y2KUdn9" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="5s44y2KUdmu" role="1B3o_S" />
      <node concept="3uibUv" id="5s44y2KUezZ" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="57tnvWi0wkj">
    <property role="TrG5h" value="reduce_SwitchToInspector" />
    <ref role="3gUMe" to="tp5g:50vRVamdIih" resolve="SwitchToInspector" />
    <node concept="312cEu" id="ORe5oEa7vQ" role="13RCb5">
      <property role="TrG5h" value="Clazz" />
      <node concept="3Tm1VV" id="ORe5oEa7vR" role="1B3o_S" />
      <node concept="3uibUv" id="ORe5oEa7Pf" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFb_" id="ORe5oEa7$X" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="doTest" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="ORe5oEa7_0" role="3clF47">
          <node concept="3clFbF" id="ORe5oEa7WS" role="3cqZAp">
            <node concept="1rXfSq" id="7Uk8E1kHRt5" role="3clFbG">
              <ref role="37wK5l" to="tp6m:7Uk8E1kGNnC" resolve="switchToInspector" />
            </node>
            <node concept="raruj" id="ORe5oEab9x" role="lGtFl" />
          </node>
        </node>
        <node concept="3Tm1VV" id="ORe5oEa7zf" role="1B3o_S" />
        <node concept="3cqZAl" id="ORe5oEa7$B" role="3clF45" />
        <node concept="3uibUv" id="2YdNGB0UeSD" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="wUiM63T5dn">
    <property role="TrG5h" value="reduce_IsIntentionApplicableExpression" />
    <property role="3GE5qa" value="expression" />
    <ref role="3gUMe" to="tp5g:wUiM63T4Ip" resolve="IsIntentionApplicableExpression" />
    <node concept="312cEu" id="wUiM63Tb7$" role="13RCb5">
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3Tm1VV" id="wUiM63Tb7_" role="1B3o_S" />
      <node concept="3uibUv" id="wUiM63Tb7A" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="wUiM63Tb7B" role="jymVt">
        <node concept="3cqZAl" id="wUiM63Tb7C" role="3clF45" />
        <node concept="3Tm1VV" id="wUiM63Tb7D" role="1B3o_S" />
        <node concept="3clFbS" id="wUiM63Tb7E" role="3clF47">
          <node concept="3clFbF" id="wUiM63Tdds" role="3cqZAp">
            <node concept="1rXfSq" id="wUiM63Tddr" role="3clFbG">
              <ref role="37wK5l" to="tp6m:wUiM63Rdn6" resolve="isIntentionApplicable" />
              <node concept="Xl_RD" id="wUiM63Tdmn" role="37wK5m">
                <property role="Xl_RC" value="id" />
                <node concept="17Uvod" id="wUiM63TfJt" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="wUiM63TfJu" role="3zH0cK">
                    <node concept="3clFbS" id="wUiM63TfJv" role="2VODD2">
                      <node concept="3clFbF" id="wUiM63Tg7N" role="3cqZAp">
                        <node concept="2OqwBi" id="wUiM63ThpV" role="3clFbG">
                          <node concept="2OqwBi" id="wUiM63TgjF" role="2Oq$k0">
                            <node concept="30H73N" id="wUiM63Tg7M" role="2Oq$k0" />
                            <node concept="3TrEf2" id="wUiM63TgUK" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:wUiM63T4Iq" resolve="intention" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORdBx" role="2OqNvi">
                            <ref role="37wK5l" to="tp3m:2ytFvC$HDcE" resolve="getGeneratedId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="wUiM63Te4p" role="37wK5m">
                <node concept="37vLTw" id="wUiM63TdUc" role="2Oq$k0">
                  <ref role="3cqZAo" to="tp6m:hSQ1pHb" resolve="myStart" />
                </node>
                <node concept="liA8E" id="wUiM63TesZ" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:hQJuSEb" resolve="getNode" />
                </node>
              </node>
              <node concept="raruj" id="wUiM63Tfz3" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="wUiM63Tb8s" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4K12N3pJJle">
    <property role="TrG5h" value="MigrationTestCaseTemplate" />
    <property role="3GE5qa" value="migration" />
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
          <node concept="2OqwBi" id="6US8dKoUu9a" role="37wK5m">
            <node concept="2OqwBi" id="6US8dKoUsKe" role="2Oq$k0">
              <node concept="2OqwBi" id="6US8dKoUr3Q" role="2Oq$k0">
                <node concept="2OqwBi" id="6US8dKoUpvc" role="2Oq$k0">
                  <node concept="2ShNRf" id="6US8dKoUoNF" role="2Oq$k0">
                    <node concept="1pGfFk" id="6US8dKoUoJ9" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:6US8dKoOF6n" resolve="TestParametersCacheBuilder" />
                      <node concept="3VsKOn" id="4dqLDEZeX2y" role="37wK5m">
                        <ref role="3VsUkX" node="4K12N3pJJle" resolve="MigrationTestCaseTemplate" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6US8dKoUqKl" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:6US8dKoOtkl" resolve="projectPath" />
                    <node concept="Xl_RD" id="4dqLDEZeX2z" role="37wK5m">
                      <property role="Xl_RC" value="project path" />
                      <node concept="17Uvod" id="4dqLDEZeX2$" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="4dqLDEZeX2_" role="3zH0cK">
                          <node concept="3clFbS" id="4dqLDEZeX2A" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoWAsj" role="3cqZAp">
                              <node concept="1mL9RQ" id="6US8dKoWAsd" role="3clFbG">
                                <ref role="1mL9RD" node="6US8dKoWCaN" resolve="projectPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="6US8dKoWvq_" role="lGtFl">
                        <node concept="3IZrLx" id="6US8dKoWvqA" role="3IZSJc">
                          <node concept="3clFbS" id="6US8dKoWvqB" role="2VODD2">
                            <node concept="3clFbF" id="6US8dKoWxV8" role="3cqZAp">
                              <node concept="3y3z36" id="6US8dKoW$ar" role="3clFbG">
                                <node concept="10Nm6u" id="6US8dKoW_ui" role="3uHU7w" />
                                <node concept="1mL9RQ" id="6US8dKoWxV7" role="3uHU7B">
                                  <ref role="1mL9RD" node="6US8dKoWCaN" resolve="projectPath" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="6US8dKoW_xo" role="UU_$l">
                          <node concept="10Nm6u" id="6US8dKoWA3A" role="gfFT$" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6US8dKoUruQ" role="2OqNvi">
                  <ref role="37wK5l" to="tp6m:6US8dKoOs$1" resolve="modelRef" />
                  <node concept="Xl_RD" id="4dqLDEZeX2G" role="37wK5m">
                    <property role="Xl_RC" value="model.fq.name" />
                    <node concept="17Uvod" id="4dqLDEZeX2H" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="4dqLDEZeX2I" role="3zH0cK">
                        <node concept="3clFbS" id="4dqLDEZeX2J" role="2VODD2">
                          <node concept="3clFbF" id="4dqLDEZeX2K" role="3cqZAp">
                            <node concept="2OqwBi" id="4dqLDEZeX2L" role="3clFbG">
                              <node concept="2OqwBi" id="4dqLDEZeX2M" role="2Oq$k0">
                                <node concept="liA8E" id="4dqLDEZeX2N" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                </node>
                                <node concept="2JrnkZ" id="4dqLDEZeX2O" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4dqLDEZeX2P" role="2JrQYb">
                                    <node concept="1iwH7S" id="4dqLDEZeX2Q" role="2Oq$k0" />
                                    <node concept="1st3f0" id="4dqLDEZeX2R" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4dqLDEZeX2S" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6US8dKoUt_D" role="2OqNvi">
                <ref role="37wK5l" to="tp6m:6US8dKoOtLM" resolve="reopenProject" />
                <node concept="3clFbT" id="4dqLDEZeX2T" role="37wK5m">
                  <property role="3clFbU" value="false" />
                  <node concept="17Uvod" id="4dqLDEZeX2U" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                    <node concept="3zFVjK" id="4dqLDEZeX2V" role="3zH0cK">
                      <node concept="3clFbS" id="4dqLDEZeX2W" role="2VODD2">
                        <node concept="3clFbF" id="4dqLDEZeX2X" role="3cqZAp">
                          <node concept="2OqwBi" id="4dqLDEZeX2Y" role="3clFbG">
                            <node concept="35c_gC" id="4dqLDEZeX2Z" role="2Oq$k0">
                              <ref role="35c_gD" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
                            </node>
                            <node concept="3zqWPK" id="70OdufORdBz" role="2OqNvi">
                              <ref role="37wK5l" to="tp5o:ThWTaQhG7P" resolve="reOpenProject" />
                              <node concept="2OqwBi" id="70OdufORdB_" role="37wK5m">
                                <node concept="30H73N" id="70OdufORdBA" role="2Oq$k0" />
                                <node concept="I4A8Y" id="70OdufORdBB" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1W57fq" id="6US8dKoWADT" role="lGtFl">
                    <node concept="3IZrLx" id="6US8dKoWADU" role="3IZSJc">
                      <node concept="3clFbS" id="6US8dKoWADV" role="2VODD2">
                        <node concept="3clFbF" id="6US8dKoWGrV" role="3cqZAp">
                          <node concept="3y3z36" id="6US8dKoWHc0" role="3clFbG">
                            <node concept="10Nm6u" id="6US8dKoWIfO" role="3uHU7w" />
                            <node concept="1mL9RQ" id="6US8dKoWGrU" role="3uHU7B">
                              <ref role="1mL9RD" node="6US8dKoWCaN" resolve="projectPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gft3U" id="6US8dKoWIl$" role="UU_$l">
                      <node concept="10Nm6u" id="6US8dKoWID1" role="gfFT$" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1ps_y7" id="6US8dKoWCaM" role="lGtFl">
                <node concept="1ps_xZ" id="6US8dKoWCaN" role="1ps_xO">
                  <property role="TrG5h" value="projectPath" />
                  <node concept="2jfdEK" id="6US8dKoWCaO" role="1ps_xN">
                    <node concept="3clFbS" id="6US8dKoWCaP" role="2VODD2">
                      <node concept="3clFbF" id="6US8dKoWww7" role="3cqZAp">
                        <node concept="2YIFZM" id="6US8dKoWwxg" role="3clFbG">
                          <ref role="37wK5l" to="3fh5:7v5ch11EroR" resolve="getProjectPath" />
                          <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                          <node concept="2OqwBi" id="6US8dKoWxbC" role="37wK5m">
                            <node concept="30H73N" id="6US8dKoWwVq" role="2Oq$k0" />
                            <node concept="I4A8Y" id="6US8dKoWxyL" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6US8dKoUuSj" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:6US8dKoNyEp" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZeUNH" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dqLDEZgw3s" role="jymVt" />
    <node concept="312cEg" id="4dqLDEZgsVg" role="jymVt">
      <property role="TrG5h" value="myCommandExtension" />
      <node concept="3uibUv" id="4dqLDEZgqZu" role="1tU5fm">
        <ref role="3uigEE" to="tp6m:4dqLDEZff3v" resolve="ExecuteCommandExtension" />
      </node>
      <node concept="3Tm6S6" id="4dqLDEZgnks" role="1B3o_S" />
      <node concept="2ShNRf" id="4dqLDEZgrjN" role="33vP2m">
        <node concept="1pGfFk" id="4dqLDEZgszD" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="tp6m:4dqLDEZfmtM" resolve="ExecuteCommandExtension" />
          <node concept="Xjq3P" id="4dqLDEZgsSm" role="37wK5m" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4dqLDEZgu1o" role="2AJF6D">
        <ref role="2AI5Lk" to="rbkg:~RegisterExtension" resolve="RegisterExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dqLDEZgp4h" role="jymVt" />
    <node concept="3clFbW" id="5LbRjS1x7Do" role="jymVt">
      <node concept="3cqZAl" id="5LbRjS1x7Dq" role="3clF45" />
      <node concept="3Tm1VV" id="5LbRjS1x7Dr" role="1B3o_S" />
      <node concept="3clFbS" id="5LbRjS1x7Ds" role="3clF47">
        <node concept="XkiVB" id="5LbRjS1xcru" role="3cqZAp">
          <ref role="37wK5l" to="tp6m:5LbRjS1pM4D" resolve="BaseTransformationTest" />
          <node concept="2OqwBi" id="4dqLDEZf07x" role="37wK5m">
            <node concept="37vLTw" id="4dqLDEZf1fX" role="2Oq$k0">
              <ref role="3cqZAo" node="4dqLDEZeUN4" resolve="ourParametersCacheExtension" />
            </node>
            <node concept="liA8E" id="4dqLDEZf07y" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:4dqLDEYZ0EK" resolve="getParametersCache" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5LbRjS1yeXQ" role="jymVt" />
    <node concept="3Tm1VV" id="4K12N3pJJlf" role="1B3o_S" />
    <node concept="n94m4" id="4K12N3pJJlg" role="lGtFl">
      <ref role="n9lRv" to="tp5g:4K12N3pJ$JB" resolve="MigrationTestCase" />
    </node>
    <node concept="3uibUv" id="4K12N3pJJlh" role="1zkMxy">
      <ref role="3uigEE" to="tp6m:e$hNri8RAJ" resolve="BaseTransformationTest" />
    </node>
    <node concept="17Uvod" id="4K12N3pJJli" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4K12N3pJJlj" role="3zH0cK">
        <node concept="3clFbS" id="4K12N3pJJlk" role="2VODD2">
          <node concept="3clFbF" id="4K12N3pJJll" role="3cqZAp">
            <node concept="2OqwBi" id="4K12N3pJJlm" role="3clFbG">
              <node concept="30H73N" id="4K12N3pJJln" role="2Oq$k0" />
              <node concept="3zqWPK" id="70OdufORdBC" role="2OqNvi">
                <ref role="37wK5l" to="tpe5:hSQIE8p" resolve="getSimpleClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="4K12N3pJJlp" role="2AJF6D">
      <ref role="2AI5Lk" to="fyhk:~MPSLaunch" resolve="MPSLaunch" />
    </node>
    <node concept="3clFb_" id="4K12N3pJJlq" role="jymVt">
      <property role="TrG5h" value="testMethod" />
      <node concept="3cqZAl" id="4K12N3pJJlr" role="3clF45" />
      <node concept="3Tm1VV" id="4K12N3pJJls" role="1B3o_S" />
      <node concept="1WS0z7" id="4K12N3pJJlt" role="lGtFl">
        <node concept="3JmXsc" id="4K12N3pJJlu" role="3Jn$fo">
          <node concept="3clFbS" id="4K12N3pJJlv" role="2VODD2">
            <node concept="3cpWs6" id="4K12N3pJJlw" role="3cqZAp">
              <node concept="2OqwBi" id="4K12N3pJJlx" role="3cqZAk">
                <node concept="30H73N" id="4K12N3pJJly" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdBE" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:6I8tQNTvi0f" resolve="getUncommentedTestMethods" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4K12N3pJJl$" role="2AJF6D">
        <ref role="2AI5Lk" to="yqm7:~Test" resolve="Test" />
      </node>
      <node concept="17Uvod" id="4K12N3pJJl_" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="4K12N3pJJlA" role="3zH0cK">
          <node concept="3clFbS" id="4K12N3pJJlB" role="2VODD2">
            <node concept="3clFbF" id="4K12N3pJJlC" role="3cqZAp">
              <node concept="2OqwBi" id="4K12N3pJJlD" role="3clFbG">
                <node concept="30H73N" id="4K12N3pJJlE" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdBG" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="4K12N3pJJlG" role="3clF47">
        <node concept="3clFbF" id="5E0FesSNt2_" role="3cqZAp">
          <node concept="2OqwBi" id="5E0FesSNvrA" role="3clFbG">
            <node concept="2ShNRf" id="5E0FesSNt2x" role="2Oq$k0">
              <node concept="1pGfFk" id="5E0FesSNv6V" role="2ShVmc">
                <ref role="37wK5l" node="5E0FesSNhsp" resolve="MigrationTestCaseTemplate.TestBody" />
                <node concept="Xjq3P" id="5E0FesSNvfi" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="5E0FesSNxe1" role="2OqNvi">
              <ref role="37wK5l" to="tp6m:7KUdrkE_D1T" resolve="testMethod" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4K12N3pJJmM" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4K12N3pJJmN" role="jymVt" />
    <node concept="312cEu" id="4K12N3pKbLo" role="jymVt">
      <property role="TrG5h" value="TestBody" />
      <node concept="2tJIrI" id="5E0FesSNdNH" role="jymVt" />
      <node concept="3clFbW" id="5E0FesSNhsp" role="jymVt">
        <node concept="3cqZAl" id="5E0FesSNhsr" role="3clF45" />
        <node concept="3clFbS" id="5E0FesSNhss" role="3clF47">
          <node concept="XkiVB" id="5E0FesSNjQ8" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:5E0FesSMXT5" resolve="BaseMigrationTestBody" />
            <node concept="37vLTw" id="5E0FesSNk7Q" role="37wK5m">
              <ref role="3cqZAo" node="5E0FesSNi5K" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5E0FesSNi5K" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="5E0FesSNi5J" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5E0FesSNeWY" role="jymVt" />
      <node concept="3uibUv" id="7KUdrkEA25Y" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:7KUdrkE_D1n" resolve="BaseMigrationTestBody" />
      </node>
      <node concept="3clFb_" id="7KUdrkEA71m" role="jymVt">
        <property role="TrG5h" value="getInputNodes" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <property role="1EzhhJ" value="false" />
        <node concept="3vKaQO" id="7KUdrkEA71o" role="3clF45">
          <node concept="3Tqbb2" id="7KUdrkEA71p" role="3O5elw" />
        </node>
        <node concept="3Tm1VV" id="7KUdrkEA71q" role="1B3o_S" />
        <node concept="3clFbS" id="7KUdrkEA71r" role="3clF47">
          <node concept="3clFbF" id="7KUdrkEAbH6" role="3cqZAp">
            <node concept="2ShNRf" id="7KUdrkEAbH2" role="3clFbG">
              <node concept="Tc6Ow" id="7KUdrkEAes8" role="2ShVmc">
                <node concept="3Tqbb2" id="7KUdrkEAeR6" role="HW$YZ" />
                <node concept="2OqwBi" id="7KUdrkEAgBk" role="HW$Y0">
                  <node concept="1PxgMI" id="7KUdrkEAgBl" role="2Oq$k0">
                    <node concept="1rXfSq" id="7KUdrkEAgBm" role="1m5AlR">
                      <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                      <node concept="Xl_RD" id="7KUdrkEAgBn" role="37wK5m">
                        <property role="Xl_RC" value="nodeId" />
                        <node concept="17Uvod" id="7KUdrkEAgBo" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="7KUdrkEAgBp" role="3zH0cK">
                            <node concept="3clFbS" id="7KUdrkEAgBq" role="2VODD2">
                              <node concept="3clFbF" id="7KUdrkEAgBr" role="3cqZAp">
                                <node concept="2OqwBi" id="7KUdrkEAgBs" role="3clFbG">
                                  <node concept="2OqwBi" id="7KUdrkEAgBt" role="2Oq$k0">
                                    <node concept="liA8E" id="7KUdrkEAgBu" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="7KUdrkEAgBv" role="2Oq$k0">
                                      <node concept="30H73N" id="7KUdrkEAgBw" role="2JrQYb" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7KUdrkEAgBx" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="chp4Y" id="7KUdrkEAgBy" role="3oSUPX">
                      <ref role="cht4Q" to="tp5g:hHqefK1" resolve="TestNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7KUdrkEAgBz" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                  </node>
                  <node concept="1WS0z7" id="7KUdrkEAinD" role="lGtFl">
                    <node concept="3JmXsc" id="7KUdrkEAinG" role="3Jn$fo">
                      <node concept="3clFbS" id="7KUdrkEAinH" role="2VODD2">
                        <node concept="3clFbF" id="7KUdrkEAinN" role="3cqZAp">
                          <node concept="2OqwBi" id="7KUdrkEAinI" role="3clFbG">
                            <node concept="3Tsc0h" id="7KUdrkEAinL" role="2OqNvi">
                              <ref role="3TtcxE" to="tp5g:4K12N3pJ$JC" resolve="inputNodes" />
                            </node>
                            <node concept="30H73N" id="7KUdrkEAinM" role="2Oq$k0" />
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
        <node concept="2AHcQZ" id="7KUdrkEA71s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7KUdrkEA71t" role="jymVt">
        <property role="TrG5h" value="getOutputNodes" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <property role="1EzhhJ" value="false" />
        <node concept="3vKaQO" id="7KUdrkEA71v" role="3clF45">
          <node concept="3Tqbb2" id="7KUdrkEA71w" role="3O5elw" />
        </node>
        <node concept="3Tm1VV" id="7KUdrkEA71x" role="1B3o_S" />
        <node concept="3clFbS" id="7KUdrkEA71y" role="3clF47">
          <node concept="3clFbF" id="7KUdrkEAluh" role="3cqZAp">
            <node concept="2ShNRf" id="7KUdrkEAlui" role="3clFbG">
              <node concept="Tc6Ow" id="7KUdrkEAluj" role="2ShVmc">
                <node concept="3Tqbb2" id="7KUdrkEAluk" role="HW$YZ" />
                <node concept="2OqwBi" id="7KUdrkEAlul" role="HW$Y0">
                  <node concept="1PxgMI" id="7KUdrkEAlum" role="2Oq$k0">
                    <node concept="1rXfSq" id="7KUdrkEAlun" role="1m5AlR">
                      <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                      <node concept="Xl_RD" id="7KUdrkEAluo" role="37wK5m">
                        <property role="Xl_RC" value="nodeId" />
                        <node concept="17Uvod" id="7KUdrkEAlup" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="7KUdrkEAluq" role="3zH0cK">
                            <node concept="3clFbS" id="7KUdrkEAlur" role="2VODD2">
                              <node concept="3clFbF" id="7KUdrkEAlus" role="3cqZAp">
                                <node concept="2OqwBi" id="7KUdrkEAlut" role="3clFbG">
                                  <node concept="2OqwBi" id="7KUdrkEAluu" role="2Oq$k0">
                                    <node concept="liA8E" id="7KUdrkEAluv" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                    <node concept="2JrnkZ" id="7KUdrkEAluw" role="2Oq$k0">
                                      <node concept="30H73N" id="7KUdrkEAlux" role="2JrQYb" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7KUdrkEAluy" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="chp4Y" id="7KUdrkEAluz" role="3oSUPX">
                      <ref role="cht4Q" to="tp5g:hHqefK1" resolve="TestNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7KUdrkEAlu$" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                  </node>
                  <node concept="1WS0z7" id="7KUdrkEAlu_" role="lGtFl">
                    <node concept="3JmXsc" id="7KUdrkEAluA" role="3Jn$fo">
                      <node concept="3clFbS" id="7KUdrkEAluB" role="2VODD2">
                        <node concept="3clFbF" id="7KUdrkEAluC" role="3cqZAp">
                          <node concept="2OqwBi" id="7KUdrkEAluD" role="3clFbG">
                            <node concept="3Tsc0h" id="7KUdrkEAnUC" role="2OqNvi">
                              <ref role="3TtcxE" to="tp5g:4K12N3pJ_ik" resolve="outputNodes" />
                            </node>
                            <node concept="30H73N" id="7KUdrkEAluF" role="2Oq$k0" />
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
        <node concept="2AHcQZ" id="7KUdrkEA71z" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7KUdrkEA71$" role="jymVt">
        <property role="TrG5h" value="getMigrationScript" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <property role="1EzhhJ" value="false" />
        <node concept="10Q1$e" id="5JRx$mlXxOn" role="3clF45">
          <node concept="3uibUv" id="7KUdrkEA71A" role="10Q1$1">
            <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7KUdrkEA71B" role="1B3o_S" />
        <node concept="3clFbS" id="7KUdrkEA71C" role="3clF47">
          <node concept="3cpWs6" id="5JRx$mlY1Th" role="3cqZAp">
            <node concept="2ShNRf" id="5JRx$mlYa$Y" role="3cqZAk">
              <node concept="3g6Rrh" id="5JRx$mlYejL" role="2ShVmc">
                <node concept="1nCR9W" id="7KUdrkEArsE" role="3g7hyw">
                  <property role="1nD$Q0" value="MigrationScript" />
                  <node concept="3uibUv" id="7KUdrkEArsF" role="2lIhxL">
                    <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
                  </node>
                  <node concept="17Uvod" id="7KUdrkEArsG" role="lGtFl">
                    <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173996401517/1173996588177" />
                    <property role="2qtEX9" value="fqClassName" />
                    <node concept="3zFVjK" id="7KUdrkEArsH" role="3zH0cK">
                      <node concept="3clFbS" id="7KUdrkEArsI" role="2VODD2">
                        <node concept="3clFbF" id="7KUdrkEArsJ" role="3cqZAp">
                          <node concept="2YIFZM" id="7KUdrkEArsK" role="3clFbG">
                            <ref role="37wK5l" to="18ew:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String)" resolve="longNameFromNamespaceAndShortName" />
                            <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                            <node concept="2OqwBi" id="7KUdrkEArsL" role="37wK5m">
                              <node concept="2OqwBi" id="7KUdrkEArsM" role="2Oq$k0">
                                <node concept="2OqwBi" id="7KUdrkEArsN" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="7KUdrkEArsO" role="2Oq$k0">
                                    <node concept="2OqwBi" id="5JRx$mlYHB3" role="2JrQYb">
                                      <node concept="30H73N" id="7KUdrkEArsQ" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="5JRx$mlYJop" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp5g:5JRx$mlRtYa" resolve="migration" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7KUdrkEArsS" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7KUdrkEArsT" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7KUdrkEArsU" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7KUdrkEArsV" role="37wK5m">
                              <node concept="2OqwBi" id="5JRx$mlYJM6" role="2Oq$k0">
                                <node concept="30H73N" id="7KUdrkEArsX" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5JRx$mlYLK2" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp5g:5JRx$mlRtYa" resolve="migration" />
                                </node>
                              </node>
                              <node concept="3zqWPK" id="70OdufORdBI" role="2OqNvi">
                                <ref role="37wK5l" to="buve:5Fumpqe4XH$" resolve="getClassName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1WS0z7" id="5JRx$mlYs3c" role="lGtFl">
                    <node concept="3JmXsc" id="5JRx$mlYs3e" role="3Jn$fo">
                      <node concept="3clFbS" id="5JRx$mlYs3g" role="2VODD2">
                        <node concept="3clFbF" id="5JRx$mlYtTF" role="3cqZAp">
                          <node concept="2OqwBi" id="5JRx$mlYupG" role="3clFbG">
                            <node concept="30H73N" id="5JRx$mlYtTE" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="5JRx$mlYwVL" role="2OqNvi">
                              <ref role="3TtcxE" to="tp5g:5JRx$mlRSG2" resolve="migration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="5JRx$mlYdqF" role="3g7fb8">
                  <ref role="3uigEE" to="6f4m:2RG318eVG1Z" resolve="MigrationScript" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7KUdrkEA71D" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5j9sOBrGnAX" role="jymVt">
        <property role="TrG5h" value="postProcess" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="37vLTG" id="5j9sOBrGnAY" role="3clF46">
          <property role="TrG5h" value="output" />
          <node concept="3vKaQO" id="5j9sOBrGnAZ" role="1tU5fm">
            <node concept="3Tqbb2" id="5j9sOBrGnB0" role="3O5elw" />
          </node>
        </node>
        <node concept="3cqZAl" id="5j9sOBrGnBI" role="3clF45" />
        <node concept="3Tm1VV" id="5j9sOBrGnBJ" role="1B3o_S" />
        <node concept="3clFbS" id="5j9sOBrGnBK" role="3clF47">
          <node concept="3cpWs8" id="5j9sOBrFMLy" role="3cqZAp">
            <node concept="3cpWsn" id="5j9sOBrFMLz" role="3cpWs9">
              <property role="TrG5h" value="allScripts" />
              <node concept="_YKpA" id="5j9sOBrFML4" role="1tU5fm">
                <node concept="3uibUv" id="5j9sOBrFML7" role="_ZDj9">
                  <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                </node>
              </node>
              <node concept="2ShNRf" id="5j9sOBrGYyd" role="33vP2m">
                <node concept="Tc6Ow" id="5j9sOBrGYq_" role="2ShVmc">
                  <node concept="3uibUv" id="5j9sOBrGYqA" role="HW$YZ">
                    <ref role="3uigEE" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                  </node>
                  <node concept="2YIFZM" id="5j9sOBrH2Sy" role="HW$Y0">
                    <ref role="37wK5l" to="6f4m:2RG318eWq1A" resolve="deserialize" />
                    <ref role="1Pybhc" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                    <node concept="10Nm6u" id="5j9sOBrI9T0" role="37wK5m" />
                    <node concept="1WS0z7" id="5j9sOBrH7mT" role="lGtFl">
                      <node concept="3JmXsc" id="5j9sOBrH7mU" role="3Jn$fo">
                        <node concept="3clFbS" id="5j9sOBrH7mV" role="2VODD2">
                          <node concept="3clFbF" id="5j9sOBrH7By" role="3cqZAp">
                            <node concept="2OqwBi" id="5j9sOBrH7SA" role="3clFbG">
                              <node concept="30H73N" id="5j9sOBrH7Bx" role="2Oq$k0" />
                              <node concept="3zqWPK" id="70OdufORdBK" role="2OqNvi">
                                <ref role="37wK5l" to="tp5o:5j9sOBrGDSz" resolve="getProducingData" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="5jKBG" id="5j9sOBrIe2V" role="lGtFl">
                      <ref role="v9R2y" to="erxe:4F5w8gPT$zr" resolve="include_ScriptAsRef" />
                      <node concept="2OqwBi" id="5j9sOBrICTX" role="v9R3O">
                        <node concept="2OqwBi" id="5j9sOBrIIAZ" role="2Oq$k0">
                          <node concept="30H73N" id="5j9sOBrICDf" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5j9sOBrIJIu" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp5g:5JRx$mlRtYa" resolve="migration" />
                          </node>
                        </node>
                        <node concept="3zqWPK" id="70OdufORdBM" role="2OqNvi">
                          <ref role="37wK5l" to="buve:4uVwhQyFcnl" resolve="fromVersion" />
                        </node>
                      </node>
                      <node concept="3NFfHV" id="5j9sOBrIxTj" role="5jGum">
                        <node concept="3clFbS" id="5j9sOBrIxTk" role="2VODD2">
                          <node concept="3clFbF" id="5j9sOBrI$QS" role="3cqZAp">
                            <node concept="2OqwBi" id="5j9sOBrIG_X" role="3clFbG">
                              <node concept="30H73N" id="5j9sOBrI$QR" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5j9sOBrIHZn" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp5g:5JRx$mlRtYa" resolve="migration" />
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
          <node concept="2Gpval" id="5j9sOBrFUcy" role="3cqZAp">
            <node concept="2GrKxI" id="5j9sOBrFUc$" role="2Gsz3X">
              <property role="TrG5h" value="root" />
            </node>
            <node concept="37vLTw" id="5j9sOBrFVnm" role="2GsD0m">
              <ref role="3cqZAo" node="5j9sOBrGnAY" resolve="output" />
            </node>
            <node concept="3clFbS" id="5j9sOBrFUcC" role="2LFqv$">
              <node concept="2Gpval" id="5j9sOBrFYoh" role="3cqZAp">
                <node concept="2GrKxI" id="5j9sOBrFYoj" role="2Gsz3X">
                  <property role="TrG5h" value="data" />
                </node>
                <node concept="2OqwBi" id="5j9sOBrFYEg" role="2GsD0m">
                  <node concept="2GrUjf" id="5j9sOBrFYuz" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5j9sOBrFUc$" resolve="root" />
                  </node>
                  <node concept="2Rf3mk" id="5j9sOBrFYYz" role="2OqNvi">
                    <node concept="1xMEDy" id="5j9sOBrFYY_" role="1xVPHs">
                      <node concept="chp4Y" id="5j9sOBrFYZi" role="ri$Ld">
                        <ref role="cht4Q" to="tpck:7z7TTo_Agmh" resolve="MigrationDataAnnotation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5j9sOBrFYon" role="2LFqv$">
                  <node concept="3clFbJ" id="5j9sOBrFZi3" role="3cqZAp">
                    <node concept="3clFbS" id="5j9sOBrFZi5" role="3clFbx">
                      <node concept="3clFbF" id="5j9sOBrGl$c" role="3cqZAp">
                        <node concept="2OqwBi" id="5j9sOBrGlKP" role="3clFbG">
                          <node concept="2GrUjf" id="5j9sOBrGl$b" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="5j9sOBrFYoj" resolve="data" />
                          </node>
                          <node concept="3YRAZt" id="5j9sOBrGm8K" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5j9sOBrFQNh" role="3clFbw">
                      <node concept="37vLTw" id="5j9sOBrFPYE" role="2Oq$k0">
                        <ref role="3cqZAo" node="5j9sOBrFMLz" resolve="allScripts" />
                      </node>
                      <node concept="3JPx81" id="5j9sOBrFSkL" role="2OqNvi">
                        <node concept="2YIFZM" id="5j9sOBrFPgu" role="25WWJ7">
                          <ref role="1Pybhc" to="6f4m:2RG318eWpZ8" resolve="MigrationScriptReference" />
                          <ref role="37wK5l" to="6f4m:2RG318eWq1A" resolve="deserialize" />
                          <node concept="2OqwBi" id="5j9sOBrEJG0" role="37wK5m">
                            <node concept="2GrUjf" id="5j9sOBrGkRU" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="5j9sOBrFYoj" resolve="data" />
                            </node>
                            <node concept="3TrcHB" id="5j9sOBrEJZM" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:7z7TTo_CSSk" resolve="createdByScript" />
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
        <node concept="2AHcQZ" id="5j9sOBrGnBL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="1WS0z7" id="5j9sOBrHnq1" role="lGtFl">
          <node concept="3JmXsc" id="5j9sOBrHnq2" role="3Jn$fo">
            <node concept="3clFbS" id="5j9sOBrHnq3" role="2VODD2">
              <node concept="3clFbF" id="5j9sOBrHqpK" role="3cqZAp">
                <node concept="2OqwBi" id="5j9sOBrHt5i" role="3clFbG">
                  <node concept="2OqwBi" id="5j9sOBrHqHR" role="2Oq$k0">
                    <node concept="30H73N" id="5j9sOBrHqpJ" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5j9sOBrHriz" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:5j9sOBrGAXZ" resolve="option" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="5j9sOBrHwsB" role="2OqNvi">
                    <node concept="chp4Y" id="5j9sOBrHwC1" role="v3oSu">
                      <ref role="cht4Q" to="tp5g:5j9sOBrG_KN" resolve="IgnoreMigrationDataOption" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5zRGbU5XoeS" role="jymVt">
        <property role="TrG5h" value="shouldCheckStableIds" />
        <node concept="3Tm1VV" id="5zRGbU5XoeW" role="1B3o_S" />
        <node concept="10P_77" id="5zRGbU5XoeX" role="3clF45" />
        <node concept="3clFbS" id="5zRGbU5XoeY" role="3clF47">
          <node concept="3cpWs6" id="5zRGbU5Zw79" role="3cqZAp">
            <node concept="3clFbT" id="5zRGbU5Zwev" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5zRGbU5XoeZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="1WS0z7" id="5zRGbU5Xpnw" role="lGtFl">
          <node concept="3JmXsc" id="5zRGbU5Xpnz" role="3Jn$fo">
            <node concept="3clFbS" id="5zRGbU5Xpn$" role="2VODD2">
              <node concept="3clFbF" id="5zRGbU5XpnE" role="3cqZAp">
                <node concept="2OqwBi" id="5zRGbU5XrnG" role="3clFbG">
                  <node concept="2OqwBi" id="5zRGbU5Xpn_" role="2Oq$k0">
                    <node concept="3Tsc0h" id="5zRGbU5XpnC" role="2OqNvi">
                      <ref role="3TtcxE" to="tp5g:5j9sOBrGAXZ" resolve="option" />
                    </node>
                    <node concept="30H73N" id="5zRGbU5XpnD" role="2Oq$k0" />
                  </node>
                  <node concept="v3k3i" id="5zRGbU5Xszn" role="2OqNvi">
                    <node concept="chp4Y" id="5zRGbU5XsDX" role="v3oSu">
                      <ref role="cht4Q" to="tp5g:5zRGbU5_gLx" resolve="StableIdOption" />
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
  <node concept="13MO4I" id="1488IJS81gx">
    <property role="TrG5h" value="reduce_InvokeSurroundWithIntentionStatement" />
    <ref role="3gUMe" to="tp5g:1488IJS6sZl" resolve="InvokeSurroundWithIntentionStatement" />
    <node concept="312cEu" id="1488IJS81Ob" role="13RCb5">
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="3Tm1VV" id="1488IJS81Oc" role="1B3o_S" />
      <node concept="3uibUv" id="1488IJS81Od" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
      <node concept="3clFbW" id="1488IJS81Oe" role="jymVt">
        <node concept="3cqZAl" id="1488IJS81Of" role="3clF45" />
        <node concept="3Tm1VV" id="1488IJS81Og" role="1B3o_S" />
        <node concept="3clFbS" id="1488IJS81Oh" role="3clF47">
          <node concept="3clFbF" id="1488IJS81OO" role="3cqZAp">
            <node concept="1rXfSq" id="1488IJS81OP" role="3clFbG">
              <ref role="37wK5l" to="tp6m:1488IJS8tgJ" resolve="invokeSurroundWithIntention" />
              <node concept="Xl_RD" id="1488IJS81OQ" role="37wK5m">
                <node concept="17Uvod" id="1488IJS81OR" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="1488IJS81OS" role="3zH0cK">
                    <node concept="3clFbS" id="1488IJS81OT" role="2VODD2">
                      <node concept="3clFbF" id="1488IJS81OU" role="3cqZAp">
                        <node concept="2OqwBi" id="1488IJS81OV" role="3clFbG">
                          <node concept="2OqwBi" id="1488IJS81OW" role="2Oq$k0">
                            <node concept="30H73N" id="1488IJS81OX" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1488IJS81OY" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:1488IJS6sZo" resolve="intention" />
                            </node>
                          </node>
                          <node concept="3zqWPK" id="70OdufORdBO" role="2OqNvi">
                            <ref role="37wK5l" to="tp3m:2ytFvC$HDcE" resolve="getGeneratedId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="1488IJS84yl" role="lGtFl" />
          </node>
        </node>
        <node concept="3uibUv" id="1488IJS81P3" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="62XJ9UeI5rJ">
    <property role="TrG5h" value="INodesTestMethod_perform" />
    <node concept="3aamgX" id="62XJ9UeIjui" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:6MWlVHUgHaa" resolve="AbstractNodeRuleCheckOperation" />
      <node concept="1Koe21" id="62XJ9UeIjRK" role="1lVwrX">
        <node concept="312cEu" id="62XJ9UeLHdy" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="62XJ9UeLRFd" role="jymVt">
            <node concept="3cqZAl" id="62XJ9UeLRFe" role="3clF45" />
            <node concept="3clFbS" id="62XJ9UeLRFg" role="3clF47">
              <node concept="XkiVB" id="62XJ9UeLRFi" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="62XJ9UeLRFm" role="37wK5m">
                  <ref role="3cqZAo" node="62XJ9UeLRFj" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="62XJ9UeLRFj" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="62XJ9UeLRFl" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="62XJ9UeMmaW" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="62XJ9UeLHdG" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="62XJ9UeLHeW" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="62XJ9UeLHeX" role="3clF45" />
            <node concept="3Tm1VV" id="62XJ9UeLHf5" role="1B3o_S" />
            <node concept="3clFbS" id="62XJ9UeLHf6" role="3clF47">
              <node concept="3cpWs8" id="5I5CNDmyp2u" role="3cqZAp">
                <node concept="3cpWsn" id="5I5CNDmyp2v" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="5I5CNDmyp2w" role="1tU5fm" />
                  <node concept="1rXfSq" id="5I5CNDmyp2x" role="33vP2m">
                    <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                    <node concept="Xl_RD" id="5I5CNDmyp2y" role="37wK5m">
                      <property role="Xl_RC" value="nodeId" />
                      <node concept="17Uvod" id="5I5CNDmyp2z" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="5I5CNDmyp2$" role="3zH0cK">
                          <node concept="3clFbS" id="5I5CNDmyp2_" role="2VODD2">
                            <node concept="3clFbF" id="5I5CNDmyp2A" role="3cqZAp">
                              <node concept="2OqwBi" id="5I5CNDmyp2B" role="3clFbG">
                                <node concept="2OqwBi" id="5I5CNDmyp2C" role="2Oq$k0">
                                  <node concept="liA8E" id="5I5CNDmyp2D" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="5I5CNDmyp2E" role="2Oq$k0">
                                    <node concept="2OqwBi" id="5I5CNDmyp2F" role="2JrQYb">
                                      <node concept="1iwH7S" id="5I5CNDmyp2G" role="2Oq$k0" />
                                      <node concept="12$id9" id="5I5CNDmyp2H" role="2OqNvi">
                                        <node concept="2OqwBi" id="5I5CNDmyp2I" role="12$y8L">
                                          <node concept="30H73N" id="5I5CNDmyp2J" role="2Oq$k0" />
                                          <node concept="3zqWPK" id="70OdufORdBQ" role="2OqNvi">
                                            <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="5I5CNDmyp2L" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="d$zdnv9WHc" role="lGtFl" />
              </node>
              <node concept="3clFbF" id="62XJ9UeLZT8" role="3cqZAp">
                <node concept="2OqwBi" id="62XJ9UeMacG" role="3clFbG">
                  <node concept="2ShNRf" id="62XJ9UeLZT9" role="2Oq$k0">
                    <node concept="1pGfFk" id="62XJ9UeLZTa" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:Bszh9vWh3Z" resolve="CheckExpectedMessageRunnable.CheckExpectedRuleMessageRunnable" />
                      <node concept="10Nm6u" id="7OB8Y3vVqTx" role="37wK5m" />
                      <node concept="10Nm6u" id="7OB8Y3vVr2s" role="37wK5m" />
                      <node concept="10Nm6u" id="2yX5aRb59UD" role="37wK5m" />
                      <node concept="10Nm6u" id="2yX5aRb5ajv" role="37wK5m" />
                      <node concept="10Nm6u" id="7OB8Y3vVr6J" role="37wK5m" />
                      <node concept="10Nm6u" id="7OB8Y3vVw4l" role="37wK5m" />
                    </node>
                    <node concept="1sPUBX" id="7OB8Y3vVhbE" role="lGtFl">
                      <ref role="v9R2y" node="7OB8Y3vUqKP" resolve="AbstractNodeRuleCheckOperation_hasExpectedMessage" />
                    </node>
                    <node concept="3_AbJx" id="AbdozclVgN" role="lGtFl">
                      <node concept="3_AbJw" id="AbdozclVgO" role="3_A0Ny">
                        <node concept="3clFbS" id="AbdozclVgP" role="2VODD2">
                          <node concept="3clFbF" id="AbdozclVu5" role="3cqZAp">
                            <node concept="2c44tf" id="143xXLdhjhP" role="3clFbG">
                              <node concept="3VmV3z" id="143xXLdhjlm" role="2c44tc">
                                <property role="3VnrPo" value="nodeToCheck" />
                                <node concept="3Tqbb2" id="143xXLdhjq6" role="3Vn4Tt">
                                  <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="62XJ9UeMbuT" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
                <node concept="raruj" id="62XJ9UeLZUL" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="62XJ9UeMl6C" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="62XJ9UeO4Za" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:hG7OXla" resolve="CheckNodeForErrorMessagesOperation" />
      <node concept="1Koe21" id="62XJ9UeO8sw" role="1lVwrX">
        <node concept="312cEu" id="62XJ9UeO8sA" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="62XJ9UeO8sB" role="jymVt">
            <node concept="3cqZAl" id="62XJ9UeO8sC" role="3clF45" />
            <node concept="3clFbS" id="62XJ9UeO8sD" role="3clF47">
              <node concept="XkiVB" id="62XJ9UeO8sE" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="62XJ9UeO8sF" role="37wK5m">
                  <ref role="3cqZAo" node="62XJ9UeO8sG" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="62XJ9UeO8sG" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="62XJ9UeO8sH" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="62XJ9UeO8sI" role="1B3o_S" />
          </node>
          <node concept="2tJIrI" id="3q9wAW4p38h" role="jymVt" />
          <node concept="3uibUv" id="62XJ9UeO8sJ" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="62XJ9UeO8sK" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="62XJ9UeO8sL" role="3clF45" />
            <node concept="3Tm1VV" id="62XJ9UeO8sM" role="1B3o_S" />
            <node concept="3clFbS" id="62XJ9UeO8sN" role="3clF47">
              <node concept="3cpWs8" id="d$zdnv9XMD" role="3cqZAp">
                <node concept="3cpWsn" id="d$zdnv9XME" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="d$zdnv9XMF" role="1tU5fm" />
                  <node concept="1rXfSq" id="d$zdnv9XMG" role="33vP2m">
                    <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                    <node concept="Xl_RD" id="d$zdnv9XMH" role="37wK5m">
                      <property role="Xl_RC" value="nodeId" />
                      <node concept="17Uvod" id="d$zdnv9XMI" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="d$zdnv9XMJ" role="3zH0cK">
                          <node concept="3clFbS" id="d$zdnv9XMK" role="2VODD2">
                            <node concept="3clFbF" id="d$zdnv9XML" role="3cqZAp">
                              <node concept="2OqwBi" id="d$zdnv9XMM" role="3clFbG">
                                <node concept="2OqwBi" id="d$zdnv9XMN" role="2Oq$k0">
                                  <node concept="liA8E" id="d$zdnv9XMO" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="d$zdnv9XMP" role="2Oq$k0">
                                    <node concept="2OqwBi" id="d$zdnv9XMQ" role="2JrQYb">
                                      <node concept="1iwH7S" id="d$zdnv9XMR" role="2Oq$k0" />
                                      <node concept="12$id9" id="d$zdnv9XMS" role="2OqNvi">
                                        <node concept="2OqwBi" id="d$zdnv9XMT" role="12$y8L">
                                          <node concept="30H73N" id="d$zdnv9XMU" role="2Oq$k0" />
                                          <node concept="3zqWPK" id="70OdufORdBS" role="2OqNvi">
                                            <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="d$zdnv9XMW" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="d$zdnv9XMX" role="lGtFl" />
              </node>
              <node concept="3clFbF" id="62XJ9UeO8sS" role="3cqZAp">
                <node concept="2OqwBi" id="62XJ9UeO8sT" role="3clFbG">
                  <node concept="2OqwBi" id="7OB8Y3vXjnh" role="2Oq$k0">
                    <node concept="2OqwBi" id="62XJ9UeOvc5" role="2Oq$k0">
                      <node concept="2ShNRf" id="62XJ9UeO8sU" role="2Oq$k0">
                        <node concept="1pGfFk" id="62XJ9UeO8sV" role="2ShVmc">
                          <ref role="37wK5l" to="tp6m:6MWlVHU2Nwl" resolve="CheckErrorMessagesRunnable" />
                          <node concept="37vLTw" id="62XJ9UeO8sW" role="37wK5m">
                            <ref role="3cqZAo" node="d$zdnv9XME" resolve="nodeToCheck" />
                          </node>
                          <node concept="3clFbT" id="62XJ9UeOfPA" role="37wK5m">
                            <node concept="17Uvod" id="62XJ9UeOj$6" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                              <node concept="3zFVjK" id="62XJ9UeOj$7" role="3zH0cK">
                                <node concept="3clFbS" id="62XJ9UeOj$8" role="2VODD2">
                                  <node concept="3clFbF" id="62XJ9UeOlUv" role="3cqZAp">
                                    <node concept="2OqwBi" id="62XJ9UeOmaQ" role="3clFbG">
                                      <node concept="30H73N" id="62XJ9UeOlUu" role="2Oq$k0" />
                                      <node concept="3TrcHB" id="62XJ9UeOnVj" role="2OqNvi">
                                        <ref role="3TsBF5" to="tp5g:JjtHGBNrEI" resolve="allowWarnings" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbT" id="62XJ9UeOnYr" role="37wK5m">
                            <node concept="17Uvod" id="62XJ9UeOnYs" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                              <node concept="3zFVjK" id="62XJ9UeOnYt" role="3zH0cK">
                                <node concept="3clFbS" id="62XJ9UeOnYu" role="2VODD2">
                                  <node concept="3clFbF" id="62XJ9UeOnYv" role="3cqZAp">
                                    <node concept="2OqwBi" id="62XJ9UeOnYw" role="3clFbG">
                                      <node concept="30H73N" id="62XJ9UeOnYx" role="2Oq$k0" />
                                      <node concept="3TrcHB" id="62XJ9UeOqPC" role="2OqNvi">
                                        <ref role="3TsBF5" to="tp5g:JjtHGBNrEH" resolve="allowErrors" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3q9wAW4p6SX" role="37wK5m">
                            <node concept="37vLTw" id="3q9wAW4p2vE" role="2Oq$k0">
                              <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                            </node>
                            <node concept="liA8E" id="3q9wAW4p8Ql" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="62XJ9UeOwkz" role="2OqNvi">
                        <ref role="37wK5l" to="tp6m:3fN3QovyBqU" resolve="includeSelf" />
                        <node concept="3clFbT" id="62XJ9UeOwLw" role="37wK5m">
                          <property role="3clFbU" value="true" />
                          <node concept="17Uvod" id="62XJ9UeOzl6" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
                            <node concept="3zFVjK" id="62XJ9UeOzl7" role="3zH0cK">
                              <node concept="3clFbS" id="62XJ9UeOzl8" role="2VODD2">
                                <node concept="3clFbF" id="62XJ9UeOzU5" role="3cqZAp">
                                  <node concept="2OqwBi" id="62XJ9UeO$9K" role="3clFbG">
                                    <node concept="30H73N" id="62XJ9UeOzU4" role="2Oq$k0" />
                                    <node concept="3TrcHB" id="62XJ9UeO_Xt" role="2OqNvi">
                                      <ref role="3TsBF5" to="tp5g:3fN3QovzdMy" resolve="includeSelf" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7OB8Y3vXkIQ" role="2OqNvi">
                      <ref role="37wK5l" to="tp6m:7OB8Y3vVCoK" resolve="exclude" />
                      <node concept="2YIFZM" id="2yX5aRb5oy6" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
                        <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                        <node concept="10Nm6u" id="2yX5aRb5plP" role="37wK5m">
                          <node concept="1WS0z7" id="2yX5aRb5rLq" role="lGtFl">
                            <node concept="3JmXsc" id="2yX5aRb5uhz" role="3Jn$fo">
                              <node concept="3clFbS" id="2yX5aRb5uh$" role="2VODD2">
                                <node concept="3clFbF" id="2yX5aRb5uh_" role="3cqZAp">
                                  <node concept="2OqwBi" id="2yX5aRb5uhA" role="3clFbG">
                                    <node concept="2OqwBi" id="2yX5aRb5uhB" role="2Oq$k0">
                                      <node concept="30H73N" id="2yX5aRb5uhC" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORdBU" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                      </node>
                                    </node>
                                    <node concept="2Rf3mk" id="2yX5aRb5uhE" role="2OqNvi">
                                      <node concept="1xMEDy" id="2yX5aRb5uhF" role="1xVPHs">
                                        <node concept="chp4Y" id="2yX5aRb5uhG" role="ri$Ld">
                                          <ref role="cht4Q" to="tp5g:6MWlVHUgHaa" resolve="AbstractNodeRuleCheckOperation" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1sPUBX" id="2yX5aRb5s7G" role="lGtFl">
                            <ref role="v9R2y" node="7OB8Y3vUqKP" resolve="AbstractNodeRuleCheckOperation_hasExpectedMessage" />
                          </node>
                          <node concept="5jKBG" id="2yX5aRb5vHN" role="lGtFl">
                            <property role="34cw8o" value="Note, not INSERT but CALL as we need to inject id of a child rule (we're inside loop here)" />
                            <ref role="v9R2y" node="hByHiPj" resolve="reduce_getTestNode" />
                            <node concept="1UUvTB" id="2yX5aRb5ylH" role="v9R3O">
                              <node concept="1UU6SM" id="2yX5aRb5zmD" role="1UU7Ll">
                                <node concept="3clFbS" id="2yX5aRb5zmE" role="2VODD2">
                                  <node concept="3clFbF" id="2yX5aRb5zmF" role="3cqZAp">
                                    <node concept="2OqwBi" id="2yX5aRb5zmG" role="3clFbG">
                                      <node concept="1iwH7S" id="2yX5aRb5zmH" role="2Oq$k0" />
                                      <node concept="12$id9" id="2yX5aRb5zmI" role="2OqNvi">
                                        <node concept="2OqwBi" id="2yX5aRb5zmJ" role="12$y8L">
                                          <node concept="30H73N" id="2yX5aRb5zmK" role="2Oq$k0" />
                                          <node concept="3zqWPK" id="70OdufORdBW" role="2OqNvi">
                                            <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
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
                        <node concept="3uibUv" id="2yX5aRb62Aq" role="3PaCim">
                          <ref role="3uigEE" to="tp6m:62XJ9UeKEVr" resolve="CheckExpectedMessageRunnable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="62XJ9UeO8t1" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:6MWlVHU2NwM" resolve="run" />
                  </node>
                </node>
                <node concept="raruj" id="62XJ9UeO8t2" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="62XJ9UeO8t3" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="4fbem5Qo8o1" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:hG30Oi4" resolve="NodeTypeCheckOperation" />
      <node concept="1Koe21" id="4fbem5Qo8o2" role="1lVwrX">
        <node concept="312cEu" id="4fbem5Qo8o3" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="4fbem5Qo8o4" role="jymVt">
            <node concept="3cqZAl" id="4fbem5Qo8o5" role="3clF45" />
            <node concept="3clFbS" id="4fbem5Qo8o6" role="3clF47">
              <node concept="XkiVB" id="4fbem5Qo8o7" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="4fbem5Qo8o8" role="37wK5m">
                  <ref role="3cqZAo" node="4fbem5Qo8o9" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="4fbem5Qo8o9" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="4fbem5Qo8oa" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="4fbem5Qo8ob" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="4fbem5Qo8oc" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="4fbem5Qo8od" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="4fbem5Qo8oe" role="3clF45" />
            <node concept="3Tm1VV" id="4fbem5Qo8of" role="1B3o_S" />
            <node concept="3clFbS" id="4fbem5Qo8og" role="3clF47">
              <node concept="3clFbF" id="4fbem5Qo8ol" role="3cqZAp">
                <node concept="2OqwBi" id="4fbem5Qo8on" role="3clFbG">
                  <node concept="2ShNRf" id="4fbem5Qo8oo" role="2Oq$k0">
                    <node concept="1pGfFk" id="4fbem5Qo8op" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:4fbem5Qno5s" resolve="CheckTypesAction.CheckComputedType" />
                      <node concept="1rXfSq" id="d$zdnv12sU" role="37wK5m">
                        <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                        <node concept="Xl_RD" id="d$zdnv12CD" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="17Uvod" id="d$zdnv12Ii" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <node concept="3zFVjK" id="d$zdnv12Ij" role="3zH0cK">
                              <node concept="3clFbS" id="d$zdnv12Ik" role="2VODD2">
                                <node concept="3clFbF" id="d$zdnv12MB" role="3cqZAp">
                                  <node concept="2OqwBi" id="d$zdnv12MC" role="3clFbG">
                                    <node concept="2OqwBi" id="d$zdnv12MD" role="2Oq$k0">
                                      <node concept="liA8E" id="d$zdnv12ME" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                      </node>
                                      <node concept="2JrnkZ" id="d$zdnv12MF" role="2Oq$k0">
                                        <node concept="2OqwBi" id="d$zdnv12MG" role="2JrQYb">
                                          <node concept="1iwH7S" id="d$zdnv12MH" role="2Oq$k0" />
                                          <node concept="12$id9" id="d$zdnv12MI" role="2OqNvi">
                                            <node concept="2OqwBi" id="d$zdnv12MJ" role="12$y8L">
                                              <node concept="30H73N" id="d$zdnv12MK" role="2Oq$k0" />
                                              <node concept="3zqWPK" id="70OdufORdBY" role="2OqNvi">
                                                <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="d$zdnv12MM" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                  <node concept="liA8E" id="4fbem5Qo8oF" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:4fbem5QndBg" resolve="checkTypeIs" />
                    <node concept="1rXfSq" id="4fbem5QortB" role="37wK5m">
                      <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                      <node concept="Xl_RD" id="4fbem5QosMf" role="37wK5m">
                        <property role="Xl_RC" value="" />
                        <node concept="17Uvod" id="7OB8Y3vHqdg" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="7OB8Y3vHqdh" role="3zH0cK">
                            <node concept="3clFbS" id="7OB8Y3vHqdi" role="2VODD2">
                              <node concept="3clFbF" id="7OB8Y3vI2pJ" role="3cqZAp">
                                <node concept="2OqwBi" id="7OB8Y3vI2pK" role="3clFbG">
                                  <node concept="2OqwBi" id="7OB8Y3vI2pL" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="7OB8Y3vI2pM" role="2Oq$k0">
                                      <node concept="2OqwBi" id="7OB8Y3wg1kd" role="2JrQYb">
                                        <node concept="1iwH7S" id="7OB8Y3wg1ke" role="2Oq$k0" />
                                        <node concept="12$id9" id="7OB8Y3wg1kf" role="2OqNvi">
                                          <node concept="2OqwBi" id="7OB8Y3wg1kg" role="12$y8L">
                                            <node concept="30H73N" id="7OB8Y3wg1kh" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="7OB8Y3wg1FR" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp5g:hG31dwS" resolve="type" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7OB8Y3vI2pS" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7OB8Y3vI2pT" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                <node concept="raruj" id="4fbem5Qo8oP" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="4fbem5Qo8oQ" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vI5cz" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:3NZe7JF5O16" resolve="NodeExpectedTypeCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vI5c$" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vI5c_" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vI5cA" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vI5cB" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vI5cC" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vI5cD" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vI5cE" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vI5cF" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vI5cF" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vI5cG" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vI5cH" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vI5cI" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vI5cJ" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vI5cK" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vI5cL" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vI5cM" role="3clF47">
              <node concept="3clFbF" id="7OB8Y3vI5cR" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vI5cS" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vI5cT" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vI5cU" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:4fbem5QnLr8" resolve="CheckTypesAction.CheckExpectedType" />
                      <node concept="1rXfSq" id="d$zdnv0WIO" role="37wK5m">
                        <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                        <node concept="Xl_RD" id="d$zdnv0Xgp" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="17Uvod" id="d$zdnv0Xm2" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <node concept="3zFVjK" id="d$zdnv0Xm3" role="3zH0cK">
                              <node concept="3clFbS" id="d$zdnv0Xm4" role="2VODD2">
                                <node concept="3clFbF" id="d$zdnv0Xqn" role="3cqZAp">
                                  <node concept="2OqwBi" id="d$zdnv0Xqo" role="3clFbG">
                                    <node concept="2OqwBi" id="d$zdnv0Xqp" role="2Oq$k0">
                                      <node concept="liA8E" id="d$zdnv0Xqq" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                      </node>
                                      <node concept="2JrnkZ" id="d$zdnv0Xqr" role="2Oq$k0">
                                        <node concept="2OqwBi" id="d$zdnv0Xqs" role="2JrQYb">
                                          <node concept="1iwH7S" id="d$zdnv0Xqt" role="2Oq$k0" />
                                          <node concept="12$id9" id="d$zdnv0Xqu" role="2OqNvi">
                                            <node concept="2OqwBi" id="d$zdnv0Xqv" role="12$y8L">
                                              <node concept="30H73N" id="d$zdnv0Xqw" role="2Oq$k0" />
                                              <node concept="3zqWPK" id="70OdufORdC0" role="2OqNvi">
                                                <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="d$zdnv0Xqy" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                  <node concept="liA8E" id="7OB8Y3vI5cW" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:4fbem5QndBg" resolve="checkTypeIs" />
                    <node concept="1rXfSq" id="7OB8Y3vI5cX" role="37wK5m">
                      <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                      <node concept="Xl_RD" id="7OB8Y3vI5cY" role="37wK5m">
                        <property role="Xl_RC" value="" />
                        <node concept="17Uvod" id="7OB8Y3vI5cZ" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="7OB8Y3vI5d0" role="3zH0cK">
                            <node concept="3clFbS" id="7OB8Y3vI5d1" role="2VODD2">
                              <node concept="3clFbF" id="7OB8Y3vI5d2" role="3cqZAp">
                                <node concept="2OqwBi" id="7OB8Y3vI5d3" role="3clFbG">
                                  <node concept="2OqwBi" id="7OB8Y3vI5d4" role="2Oq$k0">
                                    <node concept="2JrnkZ" id="7OB8Y3vI5d5" role="2Oq$k0">
                                      <node concept="2OqwBi" id="7OB8Y3wg1HJ" role="2JrQYb">
                                        <node concept="1iwH7S" id="7OB8Y3wg1HK" role="2Oq$k0" />
                                        <node concept="12$id9" id="7OB8Y3wg1HL" role="2OqNvi">
                                          <node concept="2OqwBi" id="7OB8Y3wg1HM" role="12$y8L">
                                            <node concept="30H73N" id="7OB8Y3wg1HN" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="7OB8Y3wg4dh" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp5g:hG31dwS" resolve="type" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7OB8Y3vI5d9" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7OB8Y3vI5da" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                <node concept="raruj" id="7OB8Y3vI5db" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vI5dc" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vIfcx" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:5k1cI6h4in" resolve="NodeTypeSetCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vIfcy" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vIfcz" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vIfc$" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vIfc_" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vIfcA" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vIfcB" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vIfcC" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vIfcD" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vIfcD" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vIfcE" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vIfcF" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vIfcG" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vIfcH" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vIfcI" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vIfcJ" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vIfcK" role="3clF47">
              <node concept="3clFbF" id="7OB8Y3vIfcP" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vIfcQ" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vIfcR" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vIfcS" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:4fbem5Qno5s" resolve="CheckTypesAction.CheckComputedType" />
                      <node concept="1rXfSq" id="d$zdnv0ZJM" role="37wK5m">
                        <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                        <node concept="Xl_RD" id="d$zdnv10ca" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="17Uvod" id="d$zdnv10qX" role="lGtFl">
                            <property role="2qtEX9" value="value" />
                            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                            <node concept="3zFVjK" id="d$zdnv10qY" role="3zH0cK">
                              <node concept="3clFbS" id="d$zdnv10qZ" role="2VODD2">
                                <node concept="3clFbF" id="d$zdnv10Cs" role="3cqZAp">
                                  <node concept="2OqwBi" id="d$zdnv10Ct" role="3clFbG">
                                    <node concept="2OqwBi" id="d$zdnv10Cu" role="2Oq$k0">
                                      <node concept="liA8E" id="d$zdnv10Cv" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                      </node>
                                      <node concept="2JrnkZ" id="d$zdnv10Cw" role="2Oq$k0">
                                        <node concept="2OqwBi" id="d$zdnv10Cx" role="2JrQYb">
                                          <node concept="1iwH7S" id="d$zdnv10Cy" role="2Oq$k0" />
                                          <node concept="12$id9" id="d$zdnv10Cz" role="2OqNvi">
                                            <node concept="2OqwBi" id="d$zdnv10C$" role="12$y8L">
                                              <node concept="30H73N" id="d$zdnv10C_" role="2Oq$k0" />
                                              <node concept="3zqWPK" id="70OdufORdC2" role="2OqNvi">
                                                <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="d$zdnv10CB" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                  <node concept="liA8E" id="7OB8Y3vIfcU" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:4fbem5QnXrZ" resolve="checkTypeIn" />
                    <node concept="2ShNRf" id="7OB8Y3vIk1B" role="37wK5m">
                      <node concept="Tc6Ow" id="7OB8Y3vIm91" role="2ShVmc">
                        <node concept="3Tqbb2" id="7OB8Y3vImHe" role="HW$YZ" />
                        <node concept="1rXfSq" id="7OB8Y3vIfcV" role="HW$Y0">
                          <ref role="37wK5l" to="tp6m:hLFgrfm" resolve="getNodeById" />
                          <node concept="Xl_RD" id="7OB8Y3vIfcW" role="37wK5m">
                            <property role="Xl_RC" value="" />
                            <node concept="17Uvod" id="7OB8Y3vIfcX" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vIfcY" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vIfcZ" role="2VODD2">
                                  <node concept="3clFbF" id="7OB8Y3vIfd0" role="3cqZAp">
                                    <node concept="2OqwBi" id="7OB8Y3vIfd1" role="3clFbG">
                                      <node concept="2OqwBi" id="7OB8Y3vIfd2" role="2Oq$k0">
                                        <node concept="2JrnkZ" id="7OB8Y3vIfd3" role="2Oq$k0">
                                          <node concept="2OqwBi" id="7OB8Y3wg4fq" role="2JrQYb">
                                            <node concept="1iwH7S" id="7OB8Y3wg4fr" role="2Oq$k0" />
                                            <node concept="12$id9" id="7OB8Y3wg4fs" role="2OqNvi">
                                              <node concept="30H73N" id="7OB8Y3wg4fu" role="12$y8L" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vIfd7" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7OB8Y3vIfd8" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1WS0z7" id="7OB8Y3vIrjc" role="lGtFl">
                            <node concept="3JmXsc" id="7OB8Y3vIrjf" role="3Jn$fo">
                              <node concept="3clFbS" id="7OB8Y3vIrjg" role="2VODD2">
                                <node concept="3clFbF" id="7OB8Y3vIrjm" role="3cqZAp">
                                  <node concept="2OqwBi" id="7OB8Y3vIrjh" role="3clFbG">
                                    <node concept="3Tsc0h" id="7OB8Y3vIrjk" role="2OqNvi">
                                      <ref role="3TtcxE" to="tp5g:5k1cI6h4io" resolve="type" />
                                    </node>
                                    <node concept="30H73N" id="7OB8Y3vIrjl" role="2Oq$k0" />
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
                <node concept="raruj" id="7OB8Y3vIfd9" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vIfda" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vLDfV" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:so7passww9" resolve="ScopesTest" />
      <node concept="1Koe21" id="7OB8Y3vLDfW" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vLDfX" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vLDfY" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vLDfZ" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vLDg0" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vLDg1" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vLDg2" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vLDg3" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vLDg3" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vLDg4" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vLDg5" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vLDg6" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vLDg7" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vLDg8" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vLDg9" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vLDga" role="3clF47">
              <node concept="3cpWs8" id="d$zdnva0nn" role="3cqZAp">
                <node concept="3cpWsn" id="d$zdnva0no" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="d$zdnva0np" role="1tU5fm" />
                  <node concept="1rXfSq" id="d$zdnva0nq" role="33vP2m">
                    <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                    <node concept="Xl_RD" id="d$zdnva0nr" role="37wK5m">
                      <property role="Xl_RC" value="nodeId" />
                      <node concept="17Uvod" id="d$zdnva0ns" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="d$zdnva0nt" role="3zH0cK">
                          <node concept="3clFbS" id="d$zdnva0nu" role="2VODD2">
                            <node concept="3clFbF" id="d$zdnva0nv" role="3cqZAp">
                              <node concept="2OqwBi" id="d$zdnva0nw" role="3clFbG">
                                <node concept="2OqwBi" id="d$zdnva0nx" role="2Oq$k0">
                                  <node concept="liA8E" id="d$zdnva0ny" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                  </node>
                                  <node concept="2JrnkZ" id="d$zdnva0nz" role="2Oq$k0">
                                    <node concept="2OqwBi" id="d$zdnva0n$" role="2JrQYb">
                                      <node concept="1iwH7S" id="d$zdnva0n_" role="2Oq$k0" />
                                      <node concept="12$id9" id="d$zdnva0nA" role="2OqNvi">
                                        <node concept="2OqwBi" id="d$zdnva0nB" role="12$y8L">
                                          <node concept="30H73N" id="d$zdnva0nC" role="2Oq$k0" />
                                          <node concept="3zqWPK" id="70OdufORdC4" role="2OqNvi">
                                            <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="d$zdnva0nE" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="d$zdnva0nF" role="lGtFl" />
              </node>
              <node concept="3clFbF" id="7OB8Y3vLDgf" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vLDgg" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vLDgh" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vLDgi" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:7OB8Y3vKEii" resolve="CheckScopesAction" />
                      <node concept="37vLTw" id="7OB8Y3vLDgj" role="37wK5m">
                        <ref role="3cqZAo" node="d$zdnva0no" resolve="nodeToCheck" />
                      </node>
                      <node concept="10Nm6u" id="7OB8Y3vO03b" role="37wK5m">
                        <node concept="1sPUBX" id="7OB8Y3vO4lt" role="lGtFl">
                          <ref role="v9R2y" to="tp27:7jb4LXp9gwP" resolve="switch_AssociationIdentity_SReferenceLink" />
                          <node concept="3NFfHV" id="7OB8Y3vO90K" role="1sPUBK">
                            <node concept="3clFbS" id="7OB8Y3vO90L" role="2VODD2">
                              <node concept="3cpWs8" id="7OB8Y3vOLDh" role="3cqZAp">
                                <node concept="3cpWsn" id="7OB8Y3vOLDk" role="3cpWs9">
                                  <property role="TrG5h" value="result" />
                                  <node concept="3Tqbb2" id="7OB8Y3vOLDf" role="1tU5fm">
                                    <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                                  </node>
                                  <node concept="2ShNRf" id="7OB8Y3vOOjZ" role="33vP2m">
                                    <node concept="3zrR0B" id="7OB8Y3vOM9I" role="2ShVmc">
                                      <node concept="3Tqbb2" id="7OB8Y3vOM9J" role="3zrR0E">
                                        <ref role="ehGHo" to="tp25:7jb4LXp8VrG" resolve="ReferenceLinkId" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7OB8Y3vORMH" role="3cqZAp">
                                <node concept="2OqwBi" id="7OB8Y3vOS3a" role="3clFbG">
                                  <node concept="37vLTw" id="7OB8Y3vORMF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7OB8Y3vOLDk" resolve="result" />
                                  </node>
                                  <node concept="3zqWPK" id="70OdufORdC6" role="2OqNvi">
                                    <ref role="37wK5l" to="tpeu:7jb4LXp9a6q" resolve="setReference" />
                                    <node concept="2OqwBi" id="70OdufORdC8" role="37wK5m">
                                      <node concept="2OqwBi" id="70OdufORdC9" role="2Oq$k0">
                                        <node concept="30H73N" id="70OdufORdCa" role="2Oq$k0" />
                                        <node concept="2qgKlT" id="70OdufORdCb" role="2OqNvi">
                                          <ref role="37wK5l" to="tp5o:4IvydoGvimX" resolve="getCheckingReference" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70OdufORdCc" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="7OB8Y3vP0yT" role="3cqZAp">
                                <node concept="37vLTw" id="7OB8Y3vP2LP" role="3cqZAk">
                                  <ref role="3cqZAo" node="7OB8Y3vOLDk" resolve="result" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7OB8Y3vQ2Nt" role="37wK5m">
                        <node concept="Tc6Ow" id="7OB8Y3vQ5Gb" role="2ShVmc">
                          <node concept="2sp9CU" id="7OB8Y3vQiNS" role="HW$YZ" />
                          <node concept="10Nm6u" id="7OB8Y3vQyjz" role="HW$Y0">
                            <node concept="1WS0z7" id="7OB8Y3vQAUk" role="lGtFl">
                              <node concept="3JmXsc" id="7OB8Y3vQAUn" role="3Jn$fo">
                                <node concept="3clFbS" id="7OB8Y3vQAUo" role="2VODD2">
                                  <node concept="3clFbF" id="7OB8Y3vQAUu" role="3cqZAp">
                                    <node concept="2OqwBi" id="7OB8Y3vQAUp" role="3clFbG">
                                      <node concept="3Tsc0h" id="7OB8Y3vQAUs" role="2OqNvi">
                                        <ref role="3TtcxE" to="tp5g:3aUmKV2nYC3" resolve="nodes" />
                                      </node>
                                      <node concept="30H73N" id="7OB8Y3vQAUt" role="2Oq$k0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1W57fq" id="6i9XfmGkgGt" role="lGtFl">
                              <node concept="3IZrLx" id="6i9XfmGkgGu" role="3IZSJc">
                                <node concept="3clFbS" id="6i9XfmGkgGv" role="2VODD2">
                                  <node concept="3clFbF" id="6i9XfmGku4$" role="3cqZAp">
                                    <node concept="3y3z36" id="6i9XfmGkwwd" role="3clFbG">
                                      <node concept="2OqwBi" id="6i9XfmGku4E" role="3uHU7B">
                                        <node concept="2OqwBi" id="6i9XfmGku4F" role="2Oq$k0">
                                          <node concept="30H73N" id="6i9XfmGku4G" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="6i9XfmGku4H" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tp5g:3wYn_nuyrKv" resolve="ref" />
                                          </node>
                                        </node>
                                        <node concept="I4A8Y" id="6i9XfmGku4I" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="6i9XfmGku4B" role="3uHU7w">
                                        <node concept="1iwH7S" id="6i9XfmGku4C" role="2Oq$k0" />
                                        <node concept="1r8y6K" id="6i9XfmGku4D" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gft3U" id="6i9XfmGk_HR" role="UU_$l">
                                <node concept="2OqwBi" id="6i9XfmGjIFg" role="gfFT$">
                                  <node concept="1rXfSq" id="6i9XfmGjCN1" role="2Oq$k0">
                                    <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                                    <node concept="Xl_RD" id="6i9XfmGjDpo" role="37wK5m">
                                      <property role="Xl_RC" value="nodeId" />
                                      <node concept="17Uvod" id="6i9XfmGjSIS" role="lGtFl">
                                        <property role="2qtEX9" value="value" />
                                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                                        <node concept="3zFVjK" id="6i9XfmGjSIT" role="3zH0cK">
                                          <node concept="3clFbS" id="6i9XfmGjSIU" role="2VODD2">
                                            <node concept="3clFbF" id="6i9XfmGk2mA" role="3cqZAp">
                                              <node concept="2OqwBi" id="6i9XfmGk2mB" role="3clFbG">
                                                <node concept="2OqwBi" id="6i9XfmGk2mC" role="2Oq$k0">
                                                  <node concept="liA8E" id="6i9XfmGk2mD" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                                  </node>
                                                  <node concept="2JrnkZ" id="6i9XfmGk2mE" role="2Oq$k0">
                                                    <node concept="2OqwBi" id="6i9XfmGk2mF" role="2JrQYb">
                                                      <node concept="1iwH7S" id="6i9XfmGk2mG" role="2Oq$k0" />
                                                      <node concept="12$id9" id="6i9XfmGk2mH" role="2OqNvi">
                                                        <node concept="2OqwBi" id="6i9XfmGkVGQ" role="12$y8L">
                                                          <node concept="30H73N" id="6i9XfmGk2mJ" role="2Oq$k0" />
                                                          <node concept="3TrEf2" id="6i9XfmGkW4m" role="2OqNvi">
                                                            <ref role="3Tt5mk" to="tp5g:3wYn_nuyrKv" resolve="ref" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="6i9XfmGk2mL" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="iZEcu" id="6i9XfmGjLfx" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="5jKBG" id="7OB8Y3vQyz8" role="lGtFl">
                              <ref role="v9R2y" to="tp27:2SljyToR$6F" resolve="reduce_NodeIdentity_SNodeReference" />
                              <node concept="3NFfHV" id="7OB8Y3vQE8G" role="5jGum">
                                <node concept="3clFbS" id="7OB8Y3vQE8H" role="2VODD2">
                                  <node concept="3clFbF" id="7OB8Y3vQMc8" role="3cqZAp">
                                    <node concept="2OqwBi" id="7OB8Y3vQOZq" role="3clFbG">
                                      <node concept="35c_gC" id="7OB8Y3vQMc7" role="2Oq$k0">
                                        <ref role="35c_gD" to="dvox:k2ZBl8Cedv" resolve="NodePointer" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORdCf" role="2OqNvi">
                                        <ref role="37wK5l" to="xlb7:4nxIQVL$eu9" resolve="create" />
                                        <node concept="2OqwBi" id="70OdufORdCh" role="37wK5m">
                                          <node concept="1iwH7S" id="70OdufORdCi" role="2Oq$k0" />
                                          <node concept="1FEO0x" id="70OdufORdCj" role="2OqNvi" />
                                        </node>
                                        <node concept="2OqwBi" id="70OdufORdCk" role="37wK5m">
                                          <node concept="2OqwBi" id="70OdufORdCl" role="2Oq$k0">
                                            <node concept="30H73N" id="70OdufORdCm" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="70OdufORdCn" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tp5g:3wYn_nuyrKv" resolve="ref" />
                                            </node>
                                          </node>
                                          <node concept="iZEcu" id="70OdufORdCo" role="2OqNvi" />
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
                  <node concept="liA8E" id="7OB8Y3vLDgk" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:7OB8Y3vK0WX" resolve="check" />
                  </node>
                </node>
                <node concept="raruj" id="7OB8Y3vLDgF" role="lGtFl" />
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vLDgG" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="1Koe21" id="62XJ9UeJ0rV" role="jxRDz">
      <node concept="9aQIb" id="62XJ9UeJ0sH" role="1Koe22">
        <node concept="3clFbS" id="62XJ9UeJ0sI" role="9aQI4">
          <node concept="3cpWs8" id="62XJ9UeJ0KS" role="3cqZAp">
            <node concept="15s5l7" id="d$zdnva4aq" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  getRealNodeById(string):node&lt;&gt; (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/7812454656619472118]&quot;;" />
              <property role="huDt6" value="The reference  getRealNodeById(string):node&lt;&gt; (baseMethodDeclaration) is out of search scope" />
            </node>
            <node concept="3cpWsn" id="62XJ9UeJ0KT" role="3cpWs9">
              <property role="TrG5h" value="nodeToCheck" />
              <node concept="3Tqbb2" id="62XJ9UeJ0KU" role="1tU5fm" />
              <node concept="1rXfSq" id="d$zdnva3K2" role="33vP2m">
                <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                <node concept="Xl_RD" id="d$zdnva3K3" role="37wK5m">
                  <property role="Xl_RC" value="nodeId" />
                  <node concept="17Uvod" id="d$zdnva3K4" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <node concept="3zFVjK" id="d$zdnva3K5" role="3zH0cK">
                      <node concept="3clFbS" id="d$zdnva3K6" role="2VODD2">
                        <node concept="3clFbF" id="d$zdnva3K7" role="3cqZAp">
                          <node concept="2OqwBi" id="d$zdnva3K8" role="3clFbG">
                            <node concept="2OqwBi" id="d$zdnva3K9" role="2Oq$k0">
                              <node concept="liA8E" id="d$zdnva3Ka" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                              <node concept="2JrnkZ" id="d$zdnva3Kb" role="2Oq$k0">
                                <node concept="2OqwBi" id="d$zdnva3Kc" role="2JrQYb">
                                  <node concept="1iwH7S" id="d$zdnva3Kd" role="2Oq$k0" />
                                  <node concept="12$id9" id="d$zdnva3Ke" role="2OqNvi">
                                    <node concept="2OqwBi" id="d$zdnva3Kf" role="12$y8L">
                                      <node concept="1PxgMI" id="d$zdnva5js" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="d$zdnva5$T" role="3oSUPX">
                                          <ref role="cht4Q" to="tp5g:1kgh5Yab2sH" resolve="INodesTestMethod" />
                                        </node>
                                        <node concept="30H73N" id="d$zdnva3Kg" role="1m5AlR" />
                                      </node>
                                      <node concept="3zqWPK" id="70OdufORdCp" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="d$zdnva3Ki" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="d$zdnva47C" role="lGtFl" />
          </node>
          <node concept="3cpWs8" id="d$zdnvaAYb" role="3cqZAp">
            <node concept="15s5l7" id="d$zdnvaCnA" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  getRealNodeById(string):node&lt;&gt; (baseMethodDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;baseMethodDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/7812454656619472118]&quot;;" />
              <property role="huDt6" value="The reference  getRealNodeById(string):node&lt;&gt; (baseMethodDeclaration) is out of search scope" />
            </node>
            <node concept="3cpWsn" id="5I5CNDmyp2N" role="3cpWs9">
              <property role="TrG5h" value="operation" />
              <node concept="3Tqbb2" id="5I5CNDmyp2O" role="1tU5fm" />
              <node concept="1rXfSq" id="5I5CNDmyp2P" role="33vP2m">
                <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                <node concept="Xl_RD" id="5I5CNDmyp2Q" role="37wK5m">
                  <property role="Xl_RC" value="nodeId" />
                  <node concept="17Uvod" id="5I5CNDmyp2R" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <node concept="3zFVjK" id="5I5CNDmyp2S" role="3zH0cK">
                      <node concept="3clFbS" id="5I5CNDmyp2T" role="2VODD2">
                        <node concept="3clFbF" id="5I5CNDmyp2U" role="3cqZAp">
                          <node concept="2OqwBi" id="5I5CNDmyp2V" role="3clFbG">
                            <node concept="2OqwBi" id="5I5CNDmyp2W" role="2Oq$k0">
                              <node concept="liA8E" id="5I5CNDmyp2X" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                              <node concept="2JrnkZ" id="5I5CNDmyp2Y" role="2Oq$k0">
                                <node concept="2OqwBi" id="5I5CNDmyp2Z" role="2JrQYb">
                                  <node concept="1iwH7S" id="5I5CNDmyp30" role="2Oq$k0" />
                                  <node concept="12$id9" id="5I5CNDmyp31" role="2OqNvi">
                                    <node concept="30H73N" id="5I5CNDmyp32" role="12$y8L" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="5I5CNDmyp33" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="d$zdnvaBEP" role="lGtFl" />
          </node>
          <node concept="3clFbF" id="62XJ9UeJ0sN" role="3cqZAp">
            <node concept="15s5l7" id="5yBbuOfIE9C" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;reference scopes (reference scopes)&quot;;FLAVOUR_MESSAGE=&quot;The reference  myProject (variableDeclaration) is out of search scope&quot;;FLAVOUR_NODE_FEATURE=&quot;variableDeclaration&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)/1791178592936928836]&quot;;" />
              <property role="huDt6" value="The reference  myProject (variableDeclaration) is out of search scope" />
            </node>
            <node concept="2OqwBi" id="62XJ9UeJ0sO" role="3clFbG">
              <node concept="1PxgMI" id="62XJ9UeJML3" role="2Oq$k0">
                <node concept="chp4Y" id="62XJ9UeJMOG" role="3oSUPX">
                  <ref role="cht4Q" to="tp5g:1kgh5Yab2sH" resolve="INodesTestMethod" />
                </node>
                <node concept="37vLTw" id="62XJ9UeJ19U" role="1m5AlR">
                  <ref role="3cqZAo" node="5I5CNDmyp2N" resolve="operation" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufORdCr" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:1kgh5YabdhC" resolve="perform" />
                <node concept="37vLTw" id="70OdufORdCt" role="37wK5m">
                  <ref role="3cqZAo" node="62XJ9UeJ0KT" resolve="nodeToCheck" />
                </node>
                <node concept="2OqwBi" id="70OdufORdCu" role="37wK5m">
                  <node concept="37vLTw" id="70OdufORdCv" role="2Oq$k0">
                    <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="70OdufORdCw" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="62XJ9UeJ1iN" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="7OB8Y3vUqKP">
    <property role="TrG5h" value="AbstractNodeRuleCheckOperation_hasExpectedMessage" />
    <property role="1Lz$4U" value="true" />
    <node concept="3aamgX" id="7OB8Y3vUqKQ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:6MWlVHU6lEq" resolve="AbstractNodeErrorCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vUqKR" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vUqKS" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vUqKT" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vUqKU" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vUqKV" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vUqKW" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vUqKX" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vUqKY" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vUqKY" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vUqKZ" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vUqL0" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vUqL1" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vUqL2" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vUqL3" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vUqL4" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vUqL5" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3vUqL6" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3vUqL7" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3vUqL8" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3vUqL9" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3vUqLa" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vUNjM" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vUqLc" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vUqLd" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:Bszh9vWh3Z" resolve="CheckExpectedMessageRunnable.CheckExpectedRuleMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3vUqLe" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3vUqL7" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="AbdozclXIH" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3vUqLf" role="37wK5m">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                      <node concept="2ShNRf" id="7OB8Y3vUqLg" role="37wK5m">
                        <node concept="1pGfFk" id="7OB8Y3vUqLh" role="2ShVmc">
                          <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                          <node concept="Xl_RD" id="7OB8Y3vUqLi" role="37wK5m">
                            <property role="Xl_RC" value="modelUID" />
                            <node concept="17Uvod" id="7OB8Y3vUqLj" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqLk" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqLl" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqLm" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqLn" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqLo" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqLp" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqLq" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqMH" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqLr" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqLs" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqLt" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqLu" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqLv" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqLw" role="2Oq$k0">
                                            <node concept="37vLTw" id="7OB8Y3vUqLx" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqLn" resolve="targetRef" />
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqLy" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqLz" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqL$" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqL_" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqLA" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqLB" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqLC" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqLD" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqLE" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqLF" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqLn" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqLG" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqLH" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqLI" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqLJ" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqLK" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqLL" role="2Oq$k0">
                                              <node concept="liA8E" id="7OB8Y3vUqLM" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                              </node>
                                              <node concept="2JrnkZ" id="7OB8Y3vUqLN" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqLO" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqLP" role="2Oq$k0" />
                                                  <node concept="1st3f0" id="7OB8Y3vUqLQ" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqLR" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                          <node concept="Xl_RD" id="7OB8Y3vUqLS" role="37wK5m">
                            <property role="Xl_RC" value="nodeID" />
                            <node concept="17Uvod" id="7OB8Y3vUqLT" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqLU" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqLV" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqLW" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqLX" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqLY" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqLZ" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqM0" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqMH" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqM1" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqM2" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqM3" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqM4" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqM5" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqM6" role="2Oq$k0">
                                            <node concept="liA8E" id="7OB8Y3vUqM7" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                            </node>
                                            <node concept="37vLTw" id="7OB8Y3vUqM8" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqLX" resolve="targetRef" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqM9" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqMa" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqMb" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqMc" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqMd" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqMe" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqMf" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqMg" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqMh" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqLX" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqMi" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqMj" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqMk" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqMl" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqMm" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqMn" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="7OB8Y3vUqMo" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqMp" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqMq" role="2Oq$k0" />
                                                  <node concept="12$id9" id="7OB8Y3vUqMr" role="2OqNvi">
                                                    <node concept="2OqwBi" id="7OB8Y3vUqMs" role="12$y8L">
                                                      <node concept="30H73N" id="7OB8Y3vUqMt" role="2Oq$k0" />
                                                      <node concept="3zqWPK" id="70OdufORdCx" role="2OqNvi">
                                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="7OB8Y3vUqMv" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqMw" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                        <node concept="1ps_y7" id="7OB8Y3vUqMG" role="lGtFl">
                          <node concept="1ps_xZ" id="7OB8Y3vUqMH" role="1ps_xO">
                            <property role="TrG5h" value="targetRef" />
                            <node concept="3uibUv" id="7OB8Y3vUqMI" role="1ps_xK">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="2jfdEK" id="7OB8Y3vUqMJ" role="1ps_xN">
                              <node concept="3clFbS" id="7OB8Y3vUqMK" role="2VODD2">
                                <node concept="3clFbF" id="7OB8Y3vUqML" role="3cqZAp">
                                  <node concept="2OqwBi" id="7OB8Y3vUqMM" role="3clFbG">
                                    <node concept="2OqwBi" id="7OB8Y3vUqMN" role="2Oq$k0">
                                      <node concept="30H73N" id="7OB8Y3vUqMO" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORdCz" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                      </node>
                                    </node>
                                    <node concept="iZEcu" id="7OB8Y3vUqMQ" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2rhqjUtxfcb" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="2rhqjUtxh5T" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="2rhqjUtxh5U" role="3zH0cK">
                            <node concept="3clFbS" id="2rhqjUtxh5V" role="2VODD2">
                              <node concept="3clFbF" id="2rhqjUtxbLP" role="3cqZAp">
                                <node concept="2OqwBi" id="2rhqjUtxd9w" role="3clFbG">
                                  <node concept="2OqwBi" id="2rhqjUtxc18" role="2Oq$k0">
                                    <node concept="30H73N" id="2rhqjUtxbLO" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="2rhqjUtxcxj" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="2rhqjUtxdml" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4qPgv" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4qOGZ" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4qPPJ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4qJCL" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4qJ1_" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4qMwk" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3vUJNS" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3vUQy_" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vUqMW" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3wi61V" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3wi61W" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3wi7Aq" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3wi8WT" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3wi7TT" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3wi7Ap" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdC_" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3x8VRR" id="7OB8Y3wiaKd" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3wiaZ3" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:6MWlVHU6lEq" resolve="AbstractNodeErrorCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3wiaZ4" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3wiaZ5" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3wiaZ6" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3wiaZ7" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3wiaZ8" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3wiaZ9" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3wiaZa" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3wiaZb" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3wiaZb" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3wiaZc" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3wiaZd" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3wiaZe" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3wiaZf" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3wiaZg" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3wiaZh" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3wiaZi" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3wiaZj" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3wiaZk" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3wiaZl" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3wiaZm" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3wiaZn" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3wiaZo" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3wiaZp" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3wiaZq" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:7OB8Y3whYkZ" resolve="CheckExpectedMessageRunnable.CheckAnyMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3wiaZr" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3wiaZk" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="AbdozclXVl" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3wiaZz" role="37wK5m">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4tbm_" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4tbmA" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4tbmB" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4tbmC" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4tbmD" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4tbmE" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4tbmF" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4tbmG" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4tbmH" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4tbmI" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3wib1b" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3wib1c" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3wib1d" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4tci2" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4tci6" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4tci7" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3wib1e" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3wib1f" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3wib1g" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3wib1h" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3wib1i" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3wib1j" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3wib1k" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3wib1l" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3wib1m" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdCB" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3w_OXm" id="7OB8Y3widWM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vUqMX" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:7eBNsYVJLV9" resolve="AbstractNodeWarningCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vUqMY" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vUqMZ" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vUqN0" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vUqN1" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vUqN2" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vUqN3" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vUqN4" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vUqN5" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vUqN5" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vUqN6" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vUqN7" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vUqN8" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vUqN9" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vUqNa" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vUqNb" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vUqNc" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3vUqNd" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3vUqNe" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3vUqNf" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3vUqNg" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3vUqNh" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vUqNi" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vUqNj" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vUqNk" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:Bszh9vWh3Z" resolve="CheckExpectedMessageRunnable.CheckExpectedRuleMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3w0QJf" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3vUqNe" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="AbdozclY_3" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3vUqNm" role="37wK5m">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                      <node concept="2ShNRf" id="7OB8Y3vUqNn" role="37wK5m">
                        <node concept="1pGfFk" id="7OB8Y3vUqNo" role="2ShVmc">
                          <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                          <node concept="Xl_RD" id="7OB8Y3vUqNp" role="37wK5m">
                            <property role="Xl_RC" value="modelUID" />
                            <node concept="17Uvod" id="7OB8Y3vUqNq" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqNr" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqNs" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqNt" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqNu" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqNv" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqNw" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqNx" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqOO" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqNy" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqNz" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqN$" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqN_" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqNA" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqNB" role="2Oq$k0">
                                            <node concept="37vLTw" id="7OB8Y3vUqNC" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqNu" resolve="targetRef" />
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqND" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqNE" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqNF" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqNG" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqNH" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqNI" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqNJ" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqNK" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqNL" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqNM" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqNu" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqNN" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqNO" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqNP" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqNQ" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqNR" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqNS" role="2Oq$k0">
                                              <node concept="liA8E" id="7OB8Y3vUqNT" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                              </node>
                                              <node concept="2JrnkZ" id="7OB8Y3vUqNU" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqNV" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqNW" role="2Oq$k0" />
                                                  <node concept="1st3f0" id="7OB8Y3vUqNX" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqNY" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                          <node concept="Xl_RD" id="7OB8Y3vUqNZ" role="37wK5m">
                            <property role="Xl_RC" value="nodeID" />
                            <node concept="17Uvod" id="7OB8Y3vUqO0" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqO1" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqO2" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqO3" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqO4" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqO5" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqO6" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqO7" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqOO" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqO8" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqO9" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqOa" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqOb" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqOc" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqOd" role="2Oq$k0">
                                            <node concept="liA8E" id="7OB8Y3vUqOe" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                            </node>
                                            <node concept="37vLTw" id="7OB8Y3vUqOf" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqO4" resolve="targetRef" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqOg" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqOh" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqOi" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqOj" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqOk" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqOl" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqOm" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqOn" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqOo" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqO4" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqOp" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqOq" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqOr" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqOs" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqOt" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqOu" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="7OB8Y3vUqOv" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqOw" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqOx" role="2Oq$k0" />
                                                  <node concept="12$id9" id="7OB8Y3vUqOy" role="2OqNvi">
                                                    <node concept="2OqwBi" id="7OB8Y3vUqOz" role="12$y8L">
                                                      <node concept="30H73N" id="7OB8Y3vUqO$" role="2Oq$k0" />
                                                      <node concept="3zqWPK" id="70OdufORdCD" role="2OqNvi">
                                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="7OB8Y3vUqOA" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqOB" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                        <node concept="1ps_y7" id="7OB8Y3vUqON" role="lGtFl">
                          <node concept="1ps_xZ" id="7OB8Y3vUqOO" role="1ps_xO">
                            <property role="TrG5h" value="targetRef" />
                            <node concept="3uibUv" id="7OB8Y3vUqOP" role="1ps_xK">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="2jfdEK" id="7OB8Y3vUqOQ" role="1ps_xN">
                              <node concept="3clFbS" id="7OB8Y3vUqOR" role="2VODD2">
                                <node concept="3clFbF" id="7OB8Y3vUqOS" role="3cqZAp">
                                  <node concept="2OqwBi" id="7OB8Y3vUqOT" role="3clFbG">
                                    <node concept="2OqwBi" id="7OB8Y3vUqOU" role="2Oq$k0">
                                      <node concept="30H73N" id="7OB8Y3vUqOV" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORdCF" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                      </node>
                                    </node>
                                    <node concept="iZEcu" id="7OB8Y3vUqOX" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4qTfW" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4qTfX" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4qTfY" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4qTfZ" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4qTg0" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4qTg1" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4qTg2" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4qTg3" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4qTg4" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4qTg5" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3vUqOY" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3vUqOZ" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3vUqP0" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4qSuL" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4qSuP" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4qSuQ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3vUN06" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3vUqP1" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vUqP3" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3wijI6" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3wijI7" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3wilKG" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3wilKH" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3wilKI" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3wilKJ" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdCH" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3x8VRR" id="7OB8Y3wilKL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3wiiuP" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:7eBNsYVJLV9" resolve="AbstractNodeWarningCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3wiiuQ" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3wiiuR" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3wiiuS" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3wiiuT" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3wiiuU" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3wiiuV" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3wiiuW" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3wiiuX" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3wiiuX" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3wiiuY" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3wiiuZ" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3wiiv0" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3wiiv1" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3wiiv2" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3wiiv3" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3wiiv4" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3wiiv5" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3wiiv6" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3wiiv7" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3wiiv8" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3wiiv9" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3wiiva" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3wiivb" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3wiivc" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:7OB8Y3whYkZ" resolve="CheckExpectedMessageRunnable.CheckAnyMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3wiivd" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3wiiv6" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="AbdozclZcV" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3wiivl" role="37wK5m">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4r0WF" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4r0WG" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4r0WH" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4r0WI" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4r0WJ" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4r0WK" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4r0WL" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4r0WM" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4r0WN" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4r0WO" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3wiiwX" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3wiiwY" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3wiiwZ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4r0HG" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4r0HK" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4r0HL" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3wiix0" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3wiix1" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3wiix2" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3wim4I" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3wim4J" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3wimvy" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3wimvz" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3wimv$" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3wimv_" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdCJ" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3w_OXm" id="7OB8Y3wimIJ" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vUqP4" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:1RxYXnVZA9M" resolve="NodeInfoCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vUqP5" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vUqP6" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vUqP7" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vUqP8" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vUqP9" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vUqPa" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vUqPb" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vUqPc" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vUqPc" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vUqPd" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vUqPe" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vUqPf" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vUqPg" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vUqPh" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vUqPi" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vUqPj" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3vUqPk" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3vUqPl" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3vUqPm" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3vUqPn" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3vUqPo" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vUqPp" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vUqPq" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vUqPr" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:Bszh9vWh3Z" resolve="CheckExpectedMessageRunnable.CheckExpectedRuleMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3w0Rnk" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3vUqPl" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="AbdozclZON" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3vUqPt" role="37wK5m">
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                      </node>
                      <node concept="2ShNRf" id="7OB8Y3vUqPu" role="37wK5m">
                        <node concept="1pGfFk" id="7OB8Y3vUqPv" role="2ShVmc">
                          <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
                          <node concept="Xl_RD" id="7OB8Y3vUqPw" role="37wK5m">
                            <property role="Xl_RC" value="modelUID" />
                            <node concept="17Uvod" id="7OB8Y3vUqPx" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqPy" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqPz" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqP$" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqP_" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqPA" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqPB" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqPC" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqQV" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqPD" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqPE" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqPF" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqPG" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqPH" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqPI" role="2Oq$k0">
                                            <node concept="37vLTw" id="7OB8Y3vUqPJ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqP_" resolve="targetRef" />
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqPK" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqPL" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqPM" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqPN" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqPO" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqPP" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqPQ" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqPR" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqPS" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqPT" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqP_" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqPU" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqPV" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqPW" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqPX" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqPY" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqPZ" role="2Oq$k0">
                                              <node concept="liA8E" id="7OB8Y3vUqQ0" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                              </node>
                                              <node concept="2JrnkZ" id="7OB8Y3vUqQ1" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqQ2" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqQ3" role="2Oq$k0" />
                                                  <node concept="1st3f0" id="7OB8Y3vUqQ4" role="2OqNvi" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqQ5" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                          <node concept="Xl_RD" id="7OB8Y3vUqQ6" role="37wK5m">
                            <property role="Xl_RC" value="nodeID" />
                            <node concept="17Uvod" id="7OB8Y3vUqQ7" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="7OB8Y3vUqQ8" role="3zH0cK">
                                <node concept="3clFbS" id="7OB8Y3vUqQ9" role="2VODD2">
                                  <node concept="3cpWs8" id="7OB8Y3vUqQa" role="3cqZAp">
                                    <node concept="3cpWsn" id="7OB8Y3vUqQb" role="3cpWs9">
                                      <property role="TrG5h" value="targetRef" />
                                      <node concept="2OqwBi" id="7OB8Y3vUqQc" role="33vP2m">
                                        <node concept="1iwH7S" id="7OB8Y3vUqQd" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="7OB8Y3vUqQe" role="2OqNvi">
                                          <ref role="1psM6Y" node="7OB8Y3vUqQV" resolve="targetRef" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="7OB8Y3vUqQf" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7OB8Y3vUqQg" role="3cqZAp">
                                    <node concept="3clFbS" id="7OB8Y3vUqQh" role="3clFbx">
                                      <node concept="3cpWs6" id="7OB8Y3vUqQi" role="3cqZAp">
                                        <node concept="2OqwBi" id="7OB8Y3vUqQj" role="3cqZAk">
                                          <node concept="2OqwBi" id="7OB8Y3vUqQk" role="2Oq$k0">
                                            <node concept="liA8E" id="7OB8Y3vUqQl" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                                            </node>
                                            <node concept="37vLTw" id="7OB8Y3vUqQm" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OB8Y3vUqQb" resolve="targetRef" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="7OB8Y3vUqQn" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="7OB8Y3vUqQo" role="3clFbw">
                                      <node concept="2OqwBi" id="7OB8Y3vUqQp" role="3uHU7w">
                                        <node concept="2OqwBi" id="7OB8Y3vUqQq" role="2Oq$k0">
                                          <node concept="30H73N" id="7OB8Y3vUqQr" role="2Oq$k0" />
                                          <node concept="I4A8Y" id="7OB8Y3vUqQs" role="2OqNvi" />
                                        </node>
                                        <node concept="aIX43" id="7OB8Y3vUqQt" role="2OqNvi" />
                                      </node>
                                      <node concept="2OqwBi" id="7OB8Y3vUqQu" role="3uHU7B">
                                        <node concept="37vLTw" id="7OB8Y3vUqQv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7OB8Y3vUqQb" resolve="targetRef" />
                                        </node>
                                        <node concept="liA8E" id="7OB8Y3vUqQw" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7OB8Y3vUqQx" role="9aQIa">
                                      <node concept="3clFbS" id="7OB8Y3vUqQy" role="9aQI4">
                                        <node concept="3cpWs6" id="7OB8Y3vUqQz" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OB8Y3vUqQ$" role="3cqZAk">
                                            <node concept="2OqwBi" id="7OB8Y3vUqQ_" role="2Oq$k0">
                                              <node concept="2JrnkZ" id="7OB8Y3vUqQA" role="2Oq$k0">
                                                <node concept="2OqwBi" id="7OB8Y3vUqQB" role="2JrQYb">
                                                  <node concept="1iwH7S" id="7OB8Y3vUqQC" role="2Oq$k0" />
                                                  <node concept="12$id9" id="7OB8Y3vUqQD" role="2OqNvi">
                                                    <node concept="2OqwBi" id="7OB8Y3vUqQE" role="12$y8L">
                                                      <node concept="30H73N" id="7OB8Y3vUqQF" role="2Oq$k0" />
                                                      <node concept="3zqWPK" id="70OdufORdCL" role="2OqNvi">
                                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="7OB8Y3vUqQH" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="7OB8Y3vUqQI" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
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
                        <node concept="1ps_y7" id="7OB8Y3vUqQU" role="lGtFl">
                          <node concept="1ps_xZ" id="7OB8Y3vUqQV" role="1ps_xO">
                            <property role="TrG5h" value="targetRef" />
                            <node concept="3uibUv" id="7OB8Y3vUqQW" role="1ps_xK">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="2jfdEK" id="7OB8Y3vUqQX" role="1ps_xN">
                              <node concept="3clFbS" id="7OB8Y3vUqQY" role="2VODD2">
                                <node concept="3clFbF" id="7OB8Y3vUqQZ" role="3cqZAp">
                                  <node concept="2OqwBi" id="7OB8Y3vUqR0" role="3clFbG">
                                    <node concept="2OqwBi" id="7OB8Y3vUqR1" role="2Oq$k0">
                                      <node concept="30H73N" id="7OB8Y3vUqR2" role="2Oq$k0" />
                                      <node concept="3zqWPK" id="70OdufORdCN" role="2OqNvi">
                                        <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                                      </node>
                                    </node>
                                    <node concept="iZEcu" id="7OB8Y3vUqR4" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4qUJl" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4qUJm" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4qUJn" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4qUJo" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4qUJp" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4qUJq" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4qUJr" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4qUJs" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4qUJt" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4qUJu" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3vUqR5" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3vUqR6" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3vUqR7" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4qVo8" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4qVoc" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4qVod" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3vUTND" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3vUqR8" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vUqRa" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3wiqVC" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3wiqVD" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3witA8" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3witA9" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3witAa" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3witAb" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdCP" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3x8VRR" id="7OB8Y3witAd" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3wipoR" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:1RxYXnVZA9M" resolve="NodeInfoCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3wipoS" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3wipoT" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3wipoU" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3wipoV" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3wipoW" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3wipoX" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3wipoY" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3wipoZ" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3wipoZ" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3wipp0" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3wipp1" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3wipp2" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3wipp3" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3wipp4" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3wipp5" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3wipp6" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3wipp7" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3wipp8" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3wipp9" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3wippa" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3wippb" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3wippc" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3wippd" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3wippe" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:7OB8Y3whYkZ" resolve="CheckExpectedMessageRunnable.CheckAnyMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3wippf" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3wipp8" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="Abdozcm04P" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3wippn" role="37wK5m">
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4tdv6" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4tdv7" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4tdv8" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4tdv9" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4tdva" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4tdvb" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4tdvc" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4tdvd" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4tdve" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4tdvf" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3wipqZ" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3wipr0" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3wipr1" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4tcxU" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4tcxY" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4tcxZ" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3wipr2" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3wipr3" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3wipr4" role="1B3o_S" />
        </node>
      </node>
      <node concept="30G5F_" id="7OB8Y3witQX" role="30HLyM">
        <node concept="3clFbS" id="7OB8Y3witQY" role="2VODD2">
          <node concept="3clFbF" id="7OB8Y3wiw7V" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3wiw7W" role="3clFbG">
              <node concept="2OqwBi" id="7OB8Y3wiw7X" role="2Oq$k0">
                <node concept="30H73N" id="7OB8Y3wiw7Y" role="2Oq$k0" />
                <node concept="3zqWPK" id="70OdufORdCR" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:2wBFdLy8qmt" resolve="getReferencedRuleNode" />
                </node>
              </node>
              <node concept="3w_OXm" id="7OB8Y3wiwxT" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="7OB8Y3vUqRb" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:nMEi6GLtoU" resolve="NodeTypeSystemErrorCheckOperation" />
      <node concept="1Koe21" id="7OB8Y3vUqRc" role="1lVwrX">
        <node concept="312cEu" id="7OB8Y3vUqRd" role="1Koe22">
          <property role="TrG5h" value="TestBody" />
          <node concept="3clFbW" id="7OB8Y3vUqRe" role="jymVt">
            <node concept="3cqZAl" id="7OB8Y3vUqRf" role="3clF45" />
            <node concept="3clFbS" id="7OB8Y3vUqRg" role="3clF47">
              <node concept="XkiVB" id="7OB8Y3vUqRh" role="3cqZAp">
                <ref role="37wK5l" to="tp6m:BYb1OG0zfm" resolve="BaseTestBody" />
                <node concept="37vLTw" id="7OB8Y3vUqRi" role="37wK5m">
                  <ref role="3cqZAo" node="7OB8Y3vUqRj" resolve="owner" />
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="7OB8Y3vUqRj" role="3clF46">
              <property role="TrG5h" value="owner" />
              <node concept="3uibUv" id="7OB8Y3vUqRk" role="1tU5fm">
                <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
              </node>
            </node>
            <node concept="3Tm1VV" id="7OB8Y3vUqRl" role="1B3o_S" />
          </node>
          <node concept="3uibUv" id="7OB8Y3vUqRm" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
          <node concept="3clFb_" id="7OB8Y3vUqRn" role="jymVt">
            <property role="TrG5h" value="method" />
            <node concept="3cqZAl" id="7OB8Y3vUqRo" role="3clF45" />
            <node concept="3Tm1VV" id="7OB8Y3vUqRp" role="1B3o_S" />
            <node concept="3clFbS" id="7OB8Y3vUqRq" role="3clF47">
              <node concept="3cpWs8" id="7OB8Y3vUqRr" role="3cqZAp">
                <node concept="3cpWsn" id="7OB8Y3vUqRs" role="3cpWs9">
                  <property role="TrG5h" value="nodeToCheck" />
                  <node concept="3Tqbb2" id="7OB8Y3vUqRt" role="1tU5fm" />
                  <node concept="10Nm6u" id="7OB8Y3vUqRu" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbF" id="7OB8Y3vUqRv" role="3cqZAp">
                <node concept="2OqwBi" id="7OB8Y3vUqRw" role="3clFbG">
                  <node concept="2ShNRf" id="7OB8Y3vUqRx" role="2Oq$k0">
                    <node concept="1pGfFk" id="7OB8Y3vUqRy" role="2ShVmc">
                      <ref role="37wK5l" to="tp6m:62XJ9UeL2Jq" resolve="CheckExpectedMessageRunnable.CheckExpectedTypesystemMessageRunnable" />
                      <node concept="37vLTw" id="7OB8Y3w0RSp" role="37wK5m">
                        <ref role="3cqZAo" node="7OB8Y3vUqRs" resolve="nodeToCheck" />
                        <node concept="37f9Lt" id="Abdozcm1tU" role="lGtFl" />
                      </node>
                      <node concept="Rm8GO" id="7OB8Y3vUqR$" role="37wK5m">
                        <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                        <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                      </node>
                      <node concept="Xl_RD" id="3q9wAW4te9q" role="37wK5m">
                        <property role="Xl_RC" value="expected message" />
                        <node concept="17Uvod" id="3q9wAW4te9r" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="3q9wAW4te9s" role="3zH0cK">
                            <node concept="3clFbS" id="3q9wAW4te9t" role="2VODD2">
                              <node concept="3clFbF" id="3q9wAW4te9u" role="3cqZAp">
                                <node concept="2OqwBi" id="3q9wAW4te9v" role="3clFbG">
                                  <node concept="2OqwBi" id="3q9wAW4te9w" role="2Oq$k0">
                                    <node concept="30H73N" id="3q9wAW4te9x" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="3q9wAW4te9y" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp5g:Bszh9w5Xnr" resolve="expectedMessage" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="3q9wAW4te9z" role="2OqNvi">
                                    <ref role="3TsBF5" to="tp5g:Bszh9w5Xmt" resolve="text" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7OB8Y3vUqR_" role="37wK5m">
                        <node concept="37vLTw" id="7OB8Y3vUqRA" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="7OB8Y3vUqRB" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3q9wAW4td9b" role="37wK5m">
                        <node concept="37vLTw" id="3q9wAW4td9f" role="2Oq$k0">
                          <ref role="3cqZAo" to="tp6m:hPjx680" resolve="myProject" />
                        </node>
                        <node concept="liA8E" id="3q9wAW4td9g" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~Project.getPlatform()" resolve="getPlatform" />
                        </node>
                      </node>
                    </node>
                    <node concept="raruj" id="7OB8Y3vUZ7m" role="lGtFl" />
                  </node>
                  <node concept="liA8E" id="7OB8Y3vUqRC" role="2OqNvi">
                    <ref role="37wK5l" to="tp6m:62XJ9UeKL5z" resolve="run" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm6S6" id="7OB8Y3vUqRE" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="7OB8Y3vV5$0" role="jxRDz">
      <node concept="1lLz0L" id="7OB8Y3vV7m6" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="ICheckForExpectedRule should plug into ICheckForExpectedRule_hasExpectedMessage switch" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4$lRloVXvFR">
    <property role="TrG5h" value="reduce_ApplyQuickFix" />
    <ref role="3gUMe" to="tp5g:4$lRloVW7sK" resolve="ApplyQuickFix" />
    <node concept="312cEu" id="4$lRloVXvFS" role="13RCb5">
      <property role="TrG5h" value="A" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="2XFjyZVAJhO" role="jymVt" />
      <node concept="3clFbW" id="2XFjyZVAJpS" role="jymVt">
        <node concept="3cqZAl" id="2XFjyZVAJpT" role="3clF45" />
        <node concept="3Tm1VV" id="2XFjyZVAJpU" role="1B3o_S" />
        <node concept="3clFbS" id="2XFjyZVAJpW" role="3clF47">
          <node concept="XkiVB" id="2XFjyZVAJpY" role="3cqZAp">
            <ref role="37wK5l" to="tp6m:1043xPhpns6" resolve="BaseEditorTestBody" />
            <node concept="37vLTw" id="2XFjyZVAJq2" role="37wK5m">
              <ref role="3cqZAo" node="2XFjyZVAJpZ" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2XFjyZVAJpZ" role="3clF46">
          <property role="TrG5h" value="owner" />
          <node concept="3uibUv" id="2XFjyZVAJq1" role="1tU5fm">
            <ref role="3uigEE" to="tp6m:e$hNri9cbt" resolve="TransformationTest" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2XFjyZVAJUs" role="jymVt" />
      <node concept="3clFb_" id="2XFjyZVAIkG" role="jymVt">
        <property role="TrG5h" value="testMethodImpl" />
        <node concept="3uibUv" id="2XFjyZVAIkH" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
        <node concept="3cqZAl" id="2XFjyZVAIkI" role="3clF45" />
        <node concept="3Tm1VV" id="2XFjyZVAIkJ" role="1B3o_S" />
        <node concept="3clFbS" id="2XFjyZVAIkL" role="3clF47">
          <node concept="3clFbF" id="5JeWx_IXXw8" role="3cqZAp">
            <node concept="1rXfSq" id="5JeWx_IXXw6" role="3clFbG">
              <ref role="37wK5l" to="tp6m:4POnHPbmirQ" resolve="applyQuickFix" />
              <node concept="Xl_RD" id="2AIWbCwmp87" role="37wK5m">
                <property role="Xl_RC" value="id" />
                <node concept="1W57fq" id="2AIWbCwmpnO" role="lGtFl">
                  <node concept="3IZrLx" id="2AIWbCwmpnP" role="3IZSJc">
                    <node concept="3clFbS" id="2AIWbCwmpnQ" role="2VODD2">
                      <node concept="3clFbF" id="2AIWbCwmpxy" role="3cqZAp">
                        <node concept="3y3z36" id="2AIWbCwmqJ4" role="3clFbG">
                          <node concept="10Nm6u" id="2AIWbCwmqR5" role="3uHU7w" />
                          <node concept="2OqwBi" id="2AIWbCwmpLZ" role="3uHU7B">
                            <node concept="30H73N" id="2AIWbCwmpxx" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2AIWbCwmq3t" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:6DH2cg3TEQn" resolve="quickfix" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gft3U" id="2AIWbCwmqaF" role="UU_$l">
                    <node concept="10Nm6u" id="2AIWbCwmqmE" role="gfFT$" />
                  </node>
                </node>
                <node concept="17Uvod" id="2AIWbCwmqXU" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="2AIWbCwmqXV" role="3zH0cK">
                    <node concept="3clFbS" id="2AIWbCwmqXW" role="2VODD2">
                      <node concept="3cpWs8" id="2AIWbCwmtXP" role="3cqZAp">
                        <node concept="3cpWsn" id="2AIWbCwmtXS" role="3cpWs9">
                          <property role="TrG5h" value="intention" />
                          <node concept="3Tqbb2" id="2AIWbCwmtXO" role="1tU5fm">
                            <ref role="ehGHo" to="tpd4:hBCnwce" resolve="TypesystemIntention" />
                          </node>
                          <node concept="2OqwBi" id="2AIWbCwmu$o" role="33vP2m">
                            <node concept="30H73N" id="2AIWbCwmuqN" role="2Oq$k0" />
                            <node concept="3TrEf2" id="2AIWbCwmuQi" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp5g:6DH2cg3TEQn" resolve="quickfix" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="2AIWbCwmvVM" role="3cqZAp">
                        <node concept="2OqwBi" id="2AIWbCwm$K1" role="3cqZAk">
                          <node concept="2OqwBi" id="2AIWbCwm$mq" role="2Oq$k0">
                            <node concept="2JrnkZ" id="2AIWbCwm$6Z" role="2Oq$k0">
                              <node concept="37vLTw" id="2AIWbCwmzO5" role="2JrQYb">
                                <ref role="3cqZAo" node="2AIWbCwmtXS" resolve="intention" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2AIWbCwm$vZ" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2AIWbCwm$WT" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="5JeWx_IYf8o" role="lGtFl" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2XFjyZVAIkM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4$lRloVXvFT" role="1B3o_S" />
      <node concept="3uibUv" id="4$lRloVXvFU" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hPMdj4e" resolve="BaseEditorTestBody" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="AbdozcmpZp">
    <property role="TrG5h" value="reduce_getRealNode" />
    <node concept="1N15co" id="Abdozcmq0Y" role="1s_3oS">
      <property role="TrG5h" value="testNode" />
      <node concept="3Tqbb2" id="Abdozcmq0Z" role="1N15GL" />
    </node>
    <node concept="312cEu" id="Abdozcmq2f" role="13RCb5">
      <property role="TrG5h" value="Class" />
      <node concept="3uibUv" id="Abdozcmq2g" role="1zkMxy">
        <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
      </node>
      <node concept="3clFbW" id="Abdozcmq2h" role="jymVt">
        <node concept="3cqZAl" id="Abdozcmq2i" role="3clF45" />
        <node concept="3Tm1VV" id="Abdozcmq2j" role="1B3o_S" />
        <node concept="3clFbS" id="Abdozcmq2k" role="3clF47">
          <node concept="3cpWs8" id="Abdozcmq2l" role="3cqZAp">
            <node concept="3cpWsn" id="Abdozcmq2m" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3Tqbb2" id="Abdozcmq2n" role="1tU5fm" />
              <node concept="1rXfSq" id="Abdozcmq2o" role="33vP2m">
                <ref role="37wK5l" to="tp6m:hLFg$wA" resolve="getRealNodeById" />
                <node concept="Xl_RD" id="Abdozcmq2p" role="37wK5m">
                  <property role="Xl_RC" value="" />
                  <node concept="17Uvod" id="Abdozcmq2q" role="lGtFl">
                    <property role="2qtEX9" value="value" />
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <node concept="3zFVjK" id="Abdozcmq2r" role="3zH0cK">
                      <node concept="3clFbS" id="Abdozcmq2s" role="2VODD2">
                        <node concept="3clFbF" id="Abdozcmq2t" role="3cqZAp">
                          <node concept="2OqwBi" id="Abdozcmq2u" role="3clFbG">
                            <node concept="2OqwBi" id="Abdozcmq2v" role="2Oq$k0">
                              <node concept="2JrnkZ" id="Abdozcmq2w" role="2Oq$k0">
                                <node concept="2OqwBi" id="Abdozcmq2x" role="2JrQYb">
                                  <node concept="1iwH7S" id="Abdozcmq2y" role="2Oq$k0" />
                                  <node concept="3cR$yn" id="Abdozcmq2z" role="2OqNvi">
                                    <ref role="3cRzXn" node="Abdozcmq0Y" resolve="testNode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="Abdozcmq2$" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                              </node>
                            </node>
                            <node concept="liA8E" id="Abdozcmq2_" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="raruj" id="Abdozcmq2A" role="lGtFl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2$GJzKYD2$1">
    <property role="TrG5h" value="switch_Test2Method" />
    <node concept="3aamgX" id="2$GJzKYD2$4" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp5g:1kgh5Yab2sH" resolve="INodesTestMethod" />
      <node concept="1Koe21" id="2$GJzKYD2XD" role="1lVwrX">
        <node concept="312cEu" id="2$GJzKYD2XL" role="1Koe22">
          <property role="TrG5h" value="C" />
          <node concept="15s5l7" id="2$GJzKYD4h2" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/8974945326827961340]&quot;;" />
            <property role="huDt6" value="Error: There is no default constructor available in super class jetbrains.mps.lang.test.runtime.BaseTestBody" />
          </node>
          <node concept="3clFb_" id="2$GJzKYD3aL" role="jymVt">
            <property role="TrG5h" value="test_NodesTestMethod" />
            <node concept="3cqZAl" id="2$GJzKYD3aM" role="3clF45" />
            <node concept="3Tm1VV" id="2$GJzKYD3aN" role="1B3o_S" />
            <node concept="3clFbS" id="2$GJzKYD3aO" role="3clF47">
              <node concept="3cpWs6" id="ZcWKOiDlL$" role="3cqZAp">
                <node concept="1sPUBX" id="ZcWKOiDlL_" role="lGtFl">
                  <property role="34cw8o" value="I don't like this switch, perhaps, can eventually replace with boolean behavior needsTestNodes()?" />
                  <ref role="v9R2y" node="ZcWKOigsuH" resolve="INodesTestMethod_construct_test_model" />
                </node>
              </node>
              <node concept="3clFbF" id="ZcWKOigsyY" role="3cqZAp">
                <node concept="1rXfSq" id="7prurfRBp8j" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:7prurfRA3YM" resolve="initTestNodes" />
                </node>
              </node>
              <node concept="3clFbF" id="ZcWKOij1G0" role="3cqZAp">
                <node concept="1rXfSq" id="ZcWKOij1FY" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:ZcWKOigGgW" resolve="runWithinCommand" />
                  <node concept="1bVj0M" id="5I5CNDmyuFx" role="37wK5m">
                    <node concept="3clFbS" id="5I5CNDmyuFy" role="1bW5cS">
                      <node concept="3cpWs6" id="d$zdnvalKq" role="3cqZAp">
                        <node concept="1sPUBX" id="d$zdnvalKr" role="lGtFl">
                          <ref role="v9R2y" node="62XJ9UeI5rJ" resolve="INodesTestMethod_perform" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="6NNh9n2$AIO" role="lGtFl">
                  <node concept="3IZrLx" id="6NNh9n2$AIP" role="3IZSJc">
                    <node concept="3clFbS" id="6NNh9n2$AIQ" role="2VODD2">
                      <node concept="3clFbF" id="6NNh9n2$DvW" role="3cqZAp">
                        <node concept="2OqwBi" id="4wHm_MSUB5R" role="3clFbG">
                          <node concept="v3LJS" id="6NNh9n2$DvV" role="2Oq$k0">
                            <ref role="v3LJV" node="ZcWKOii8ea" resolve="mode" />
                          </node>
                          <node concept="21noJN" id="4wHm_MSUBxj" role="2OqNvi">
                            <node concept="21nZrQ" id="4wHm_MSUBxl" role="21noJM">
                              <ref role="21nZrZ" to="tp5g:2hh8MJdVwqX" resolve="command" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6NNh9n2$Cxu" role="3cqZAp">
                <node concept="1rXfSq" id="6NNh9n2$Cxv" role="3clFbG">
                  <ref role="37wK5l" to="tp6m:ZcWKOihS4B" resolve="runWithinRead" />
                  <node concept="1bVj0M" id="6NNh9n2$Cxw" role="37wK5m">
                    <node concept="3clFbS" id="6NNh9n2$Cxx" role="1bW5cS">
                      <node concept="3cpWs6" id="d$zdnvam9h" role="3cqZAp">
                        <node concept="1sPUBX" id="d$zdnvam9i" role="lGtFl">
                          <ref role="v9R2y" node="62XJ9UeI5rJ" resolve="INodesTestMethod_perform" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="6NNh9n2$Cxz" role="lGtFl">
                  <node concept="3IZrLx" id="6NNh9n2$Cx$" role="3IZSJc">
                    <node concept="3clFbS" id="6NNh9n2$Cx_" role="2VODD2">
                      <node concept="3clFbF" id="4wHm_MSUBMH" role="3cqZAp">
                        <node concept="2OqwBi" id="4wHm_MSUBMI" role="3clFbG">
                          <node concept="v3LJS" id="4wHm_MSUBMJ" role="2Oq$k0">
                            <ref role="v3LJV" node="ZcWKOii8ea" resolve="mode" />
                          </node>
                          <node concept="21noJN" id="4wHm_MSUBMK" role="2OqNvi">
                            <node concept="21nZrQ" id="4wHm_MSUBML" role="21noJM">
                              <ref role="21nZrZ" to="tp5g:2hh8MJdVwqU" resolve="read" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6NNh9n2$ztY" role="3cqZAp">
                <node concept="2OqwBi" id="6NNh9n2B1xc" role="3clFbG">
                  <node concept="1bVj0M" id="6NNh9n2$$BR" role="2Oq$k0">
                    <node concept="3clFbS" id="6NNh9n2$$BS" role="1bW5cS">
                      <node concept="3cpWs6" id="d$zdnvame5" role="3cqZAp">
                        <node concept="1sPUBX" id="d$zdnvame6" role="lGtFl">
                          <ref role="v9R2y" node="62XJ9UeI5rJ" resolve="INodesTestMethod_perform" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Bd96e" id="6NNh9n2B2j6" role="2OqNvi" />
                </node>
                <node concept="1W57fq" id="6NNh9n2$_Aj" role="lGtFl">
                  <node concept="3IZrLx" id="6NNh9n2$_Ak" role="3IZSJc">
                    <node concept="3clFbS" id="6NNh9n2$_Al" role="2VODD2">
                      <node concept="3clFbF" id="4wHm_MSUCxO" role="3cqZAp">
                        <node concept="2OqwBi" id="4wHm_MSUCxP" role="3clFbG">
                          <node concept="v3LJS" id="4wHm_MSUCxQ" role="2Oq$k0">
                            <ref role="v3LJV" node="ZcWKOii8ea" resolve="mode" />
                          </node>
                          <node concept="21noJN" id="4wHm_MSUCxR" role="2OqNvi">
                            <node concept="21nZrQ" id="4wHm_MSUCxS" role="21noJM">
                              <ref role="21nZrZ" to="tp5g:2hh8MJdVwqT" resolve="none" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2$GJzKYD3bE" role="Sfmx6">
              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
            </node>
            <node concept="17Uvod" id="2$GJzKYD3bF" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="2$GJzKYD3bG" role="3zH0cK">
                <node concept="3clFbS" id="2$GJzKYD3bH" role="2VODD2">
                  <node concept="3clFbF" id="2$GJzKYD3bI" role="3cqZAp">
                    <node concept="2OqwBi" id="2$GJzKYD3bJ" role="3clFbG">
                      <node concept="30H73N" id="2$GJzKYD3bK" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdCT" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17Uvod" id="ZcWKOivcGc" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="ZcWKOivcGd" role="3zH0cK">
                <node concept="3clFbS" id="ZcWKOivcGe" role="2VODD2">
                  <node concept="3clFbF" id="ZcWKOivcGf" role="3cqZAp">
                    <node concept="2OqwBi" id="ZcWKOivcGg" role="3clFbG">
                      <node concept="30H73N" id="ZcWKOivcGh" role="2Oq$k0" />
                      <node concept="3zqWPK" id="70OdufORdCV" role="2OqNvi">
                        <ref role="37wK5l" to="tpe5:hGBohAB" resolve="getTestName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="2$GJzKYD3KJ" role="lGtFl" />
            <node concept="1pdMLZ" id="6NNh9n2$xa8" role="lGtFl">
              <node concept="15lBmy" id="6NNh9n2$xf1" role="15mYut">
                <node concept="3clFbS" id="6NNh9n2$xf2" role="2VODD2">
                  <node concept="3clFbF" id="6NNh9n2ILUs" role="3cqZAp">
                    <node concept="2YIFZM" id="6NNh9n2ILUt" role="3clFbG">
                      <ref role="1Pybhc" to="3fh5:L0xQjiTXbn" resolve="TestsUtil" />
                      <ref role="37wK5l" to="3fh5:6NNh9n2GHAu" resolve="mapSrcExtract" />
                      <node concept="3l3mFP" id="6NNh9n2ILUu" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="2$GJzKYD2XM" role="1B3o_S" />
          <node concept="3uibUv" id="2$GJzKYD2YG" role="1zkMxy">
            <ref role="3uigEE" to="tp6m:hLFfHcX" resolve="BaseTestBody" />
          </node>
        </node>
      </node>
    </node>
    <node concept="gft3U" id="2$GJzKYD2$8" role="jxRDz">
      <node concept="2VYdi" id="2$GJzKYD2$a" role="gfFT$">
        <node concept="29HgVG" id="2$GJzKYD2$i" role="lGtFl" />
      </node>
    </node>
    <node concept="3aamgX" id="ZcWKOioWl6" role="3aUrZf">
      <ref role="30HIoZ" to="tp5g:hPLZb6h" resolve="SimpleNodeTest" />
      <node concept="j$656" id="ZcWKOipsWX" role="1lVwrX">
        <ref role="v9R2y" node="hPLRi3V" resolve="reduce_SimpleNodeTest" />
        <node concept="v3LJS" id="ZcWKOiptHv" role="v9R3O">
          <ref role="v3LJV" node="ZcWKOii8ea" resolve="mode" />
        </node>
      </node>
    </node>
    <node concept="1N15co" id="ZcWKOii8ea" role="1s_3oS">
      <property role="TrG5h" value="mode" />
      <node concept="2ZThk1" id="4wHm_MSUsjB" role="1N15GL">
        <ref role="2ZWj4r" to="tp5g:2hh8MJdVwqS" resolve="ExecutionModelAccessMode" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="ZcWKOigsuH">
    <property role="TrG5h" value="INodesTestMethod_construct_test_model" />
    <node concept="b5Tf3" id="ZcWKOigAGj" role="jxRDz" />
  </node>
</model>

