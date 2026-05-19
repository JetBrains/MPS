<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4d41399e-188a-4eca-90a3-97c5f1c5b668(jetbrains.mps.lang.editor.forms.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="f55a" ref="r:8598bcb3-b739-42c2-b1fc-32c367683d7c(jetbrains.mps.lang.editor.forms.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="y8bk" ref="r:035b816f-5496-4daa-904b-836c78191509(jetbrains.mps.lang.editor.forms.runtime)" />
    <import index="x4nc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.selectionRestoring(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="732853304284119468" name="jetbrains.mps.lang.editor.structure.ModuleImageProvider" flags="ng" index="20u1Yu">
        <property id="4098264106349410193" name="imagePath" index="26rObG" />
        <child id="4098264106349410195" name="moduleRef" index="26rObI" />
      </concept>
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <property id="1136916941877" name="description" index="2PxWOX" />
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136917325338" name="isApplicableFunction" index="2Pzqsi" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917249679" name="jetbrains.mps.lang.editor.structure.CellKeyMap_IsApplicableFunction" flags="in" index="2Pz7Y7" />
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1139744628335" name="jetbrains.mps.lang.editor.structure.CellModel_Image" flags="sg" stub="8104358048506731195" index="1u4HXA">
        <property id="1139858284555" name="descent" index="1$Qi42" />
        <property id="2668187771966053467" name="alignWithText" index="1N59bZ" />
        <child id="1176899909521" name="imagePathProvider" index="4GRq3" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0" />
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
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
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
        <child id="8612733435393315377" name="referenceReductionRule" index="meg5s" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167172143858" name="weavingMappingRule" index="30SoJX" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168559512253" name="jetbrains.mps.lang.generator.structure.DismissTopMappingRule" flags="lg" index="j$LIH">
        <child id="1169669152123" name="generatorMessage" index="1lHHLF" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="8612733435392875258" name="jetbrains.mps.lang.generator.structure.ReferenceReductionRule" flags="lg" index="mf$An">
        <reference id="8612733435392875261" name="link" index="mf$Ag" />
        <reference id="518316622382812518" name="applicableConcept" index="39vUdu" />
        <child id="3145152795238947898" name="referentFunction" index="2vbCZR" />
        <child id="518316622382812505" name="conditionFunction" index="39vUdx" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="lg" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1167171569011" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule" flags="lg" index="30QchW">
        <child id="1169570368028" name="ruleConsequence" index="1fOSGc" />
        <child id="1184616230853" name="contextNodeQuery" index="3gCiVm" />
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
      <concept id="1184616041890" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule_ContextNodeQuery" flags="in" index="3gB$ML" />
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <property id="1177959072138" name="keepSourceRoot" index="13Pg2o" />
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1169670156577" name="jetbrains.mps.lang.generator.structure.GeneratorMessage" flags="lg" index="1lLz0L">
        <property id="1169670173015" name="messageText" index="1lLB17" />
        <property id="1169670356567" name="messageType" index="1lMjX7" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="ig" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="ig" index="3NFfHV" />
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
      <concept id="1217884725453" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetCopiedOutputByInput" flags="nn" index="2f_y7m">
        <child id="1217884725459" name="inputNode" index="2f_y78" />
      </concept>
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
        <child id="1218049772449" name="contextNode" index="2pr8EU" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="1aoPJ1nwlou">
    <property role="TrG5h" value="main" />
    <node concept="30QchW" id="2gdyhRQrh$F" role="30SoJX">
      <ref role="30HIoZ" to="tpc2:fJ25Fcr" resolve="CellKeyMapDeclaration" />
      <node concept="3gB$ML" id="2gdyhRQrh$G" role="3gCiVm">
        <node concept="3clFbS" id="2gdyhRQrh$H" role="2VODD2">
          <node concept="3clFbF" id="2gdyhRQs23n" role="3cqZAp">
            <node concept="2OqwBi" id="2gdyhRQs24C" role="3clFbG">
              <node concept="1iwH7S" id="2gdyhRQs23l" role="2Oq$k0" />
              <node concept="2f_y7m" id="2gdyhRQs26X" role="2OqNvi">
                <node concept="30H73N" id="2gdyhRQrFu5" role="2f_y78" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="2gdyhRQrhJ_" role="30HLyM">
        <node concept="3clFbS" id="2gdyhRQrhJA" role="2VODD2">
          <node concept="3clFbF" id="2gdyhRQsabk" role="3cqZAp">
            <node concept="1Wc70l" id="2gdyhRQshxD" role="3clFbG">
              <node concept="2OqwBi" id="2gdyhRQsnsm" role="3uHU7w">
                <node concept="2OqwBi" id="2gdyhRQsjUF" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQsixo" role="2Oq$k0">
                    <node concept="2OqwBi" id="2gdyhRQsi3r" role="2Oq$k0">
                      <node concept="1iwH7S" id="2gdyhRQshN4" role="2Oq$k0" />
                      <node concept="1r8y6K" id="2gdyhRQsijW" role="2OqNvi" />
                    </node>
                    <node concept="2SmgA7" id="2gdyhRQsiMb" role="2OqNvi">
                      <node concept="chp4Y" id="2gdyhRQsj6d" role="1dBWTz">
                        <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQslrs" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQslru" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQslrv" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQslHP" role="3cqZAp">
                          <node concept="3clFbC" id="2gdyhRQsmNW" role="3clFbG">
                            <node concept="30H73N" id="2gdyhRQsn7N" role="3uHU7w" />
                            <node concept="2OqwBi" id="2gdyhRQslZ0" role="3uHU7B">
                              <node concept="37vLTw" id="2gdyhRQslHO" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNA" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2gdyhRQsmsx" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNA" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNB" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2gdyhRQsnP2" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2gdyhRQsgQ9" role="3uHU7B">
                <node concept="2OqwBi" id="2gdyhRQsfSy" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQsbqZ" role="2Oq$k0">
                    <node concept="2OqwBi" id="2gdyhRQsakr" role="2Oq$k0">
                      <node concept="30H73N" id="2gdyhRQsabi" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="2gdyhRQsaMz" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:gyQnntA" resolve="item" />
                      </node>
                    </node>
                    <node concept="3goQfb" id="2gdyhRQsfu0" role="2OqNvi">
                      <node concept="1bVj0M" id="2gdyhRQsfu2" role="23t8la">
                        <node concept="3clFbS" id="2gdyhRQsfu3" role="1bW5cS">
                          <node concept="3clFbF" id="2gdyhRQsfDP" role="3cqZAp">
                            <node concept="2OqwBi" id="2gdyhRQsfDR" role="3clFbG">
                              <node concept="37vLTw" id="2gdyhRQsfDS" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNC" resolve="it" />
                              </node>
                              <node concept="3Tsc0h" id="2gdyhRQsfDT" role="2OqNvi">
                                <ref role="3TtcxE" to="tpc2:gyPyayW" resolve="keystroke" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0WNC" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0WND" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQsgdT" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQsgdV" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQsgdW" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQsgt6" role="3cqZAp">
                          <node concept="1Wc70l" id="2gdyhRQsgt7" role="3clFbG">
                            <node concept="2OqwBi" id="2gdyhRQsgt8" role="3uHU7w">
                              <node concept="Xl_RD" id="2gdyhRQsgt9" role="2Oq$k0">
                                <property role="Xl_RC" value="VK_SPACE" />
                              </node>
                              <node concept="liA8E" id="2gdyhRQsgta" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="2gdyhRQsgtb" role="37wK5m">
                                  <node concept="37vLTw" id="2gdyhRQsgtc" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WNE" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2gdyhRQsgtd" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpc2:gyPWKEK" resolve="keycode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2gdyhRQsgte" role="3uHU7B">
                              <node concept="Xl_RD" id="2gdyhRQsgtf" role="2Oq$k0">
                                <property role="Xl_RC" value="none" />
                              </node>
                              <node concept="liA8E" id="2gdyhRQsgtg" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="2gdyhRQsgth" role="37wK5m">
                                  <node concept="37vLTw" id="2gdyhRQsgti" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WNE" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2gdyhRQsgtj" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpc2:gyPWKEJ" resolve="modifiers" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNE" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNF" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="2gdyhRQshca" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$656" id="2gdyhRQrFXn" role="1fOSGc">
        <ref role="v9R2y" node="2gdyhRQrFWC" resolve="weave_Checkbox_keymap" />
      </node>
    </node>
    <node concept="30QchW" id="2gdyhRQriGf" role="30SoJX">
      <ref role="30HIoZ" to="tpc2:g_h_SNY" resolve="CellActionMapDeclaration" />
      <node concept="3gB$ML" id="2gdyhRQriGg" role="3gCiVm">
        <node concept="3clFbS" id="2gdyhRQriGh" role="2VODD2">
          <node concept="3clFbF" id="2gdyhRQs2ge" role="3cqZAp">
            <node concept="2OqwBi" id="2gdyhRQs2hv" role="3clFbG">
              <node concept="1iwH7S" id="2gdyhRQs2gc" role="2Oq$k0" />
              <node concept="2f_y7m" id="2gdyhRQs2jO" role="2OqNvi">
                <node concept="30H73N" id="2gdyhRQrFEE" role="2f_y78" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="2gdyhRQriRT" role="30HLyM">
        <node concept="3clFbS" id="2gdyhRQriRU" role="2VODD2">
          <node concept="3clFbF" id="2gdyhRQssYP" role="3cqZAp">
            <node concept="1Wc70l" id="2gdyhRQsvTX" role="3clFbG">
              <node concept="2OqwBi" id="2gdyhRQsvvU" role="3uHU7B">
                <node concept="2OqwBi" id="2gdyhRQstXg" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQst4q" role="2Oq$k0">
                    <node concept="30H73N" id="2gdyhRQssYN" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="2gdyhRQstgI" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:g_h_SO1" resolve="item" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQsves" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQsveu" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQsvev" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQsvmk" role="3cqZAp">
                          <node concept="2OqwBi" id="2gdyhRQsvml" role="3clFbG">
                            <node concept="2OqwBi" id="2gdyhRQsvmm" role="2Oq$k0">
                              <node concept="37vLTw" id="2gdyhRQsvmn" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNG" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="2gdyhRQsvmo" role="2OqNvi">
                                <ref role="3TsBF5" to="tpc2:3Ftr4R6BH0B" resolve="actionId" />
                              </node>
                            </node>
                            <node concept="21noJN" id="3Ftr4R8L06V" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R8L06W" role="21noJM">
                                <ref role="21nZrZ" to="tpc2:3Ftr4R6BFbn" resolve="click_action_id" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNG" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNH" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="2gdyhRQsvGB" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2gdyhRQsw2t" role="3uHU7w">
                <node concept="2OqwBi" id="2gdyhRQsw2u" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQsw2v" role="2Oq$k0">
                    <node concept="2OqwBi" id="2gdyhRQsw2w" role="2Oq$k0">
                      <node concept="1iwH7S" id="2gdyhRQsw2x" role="2Oq$k0" />
                      <node concept="1r8y6K" id="2gdyhRQsw2y" role="2OqNvi" />
                    </node>
                    <node concept="2SmgA7" id="2gdyhRQsw2z" role="2OqNvi">
                      <node concept="chp4Y" id="2gdyhRQsw2$" role="1dBWTz">
                        <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQsw2_" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQsw2A" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQsw2B" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQsw2C" role="3cqZAp">
                          <node concept="3clFbC" id="2gdyhRQsw2D" role="3clFbG">
                            <node concept="30H73N" id="2gdyhRQsw2E" role="3uHU7w" />
                            <node concept="2OqwBi" id="2gdyhRQsw2F" role="3uHU7B">
                              <node concept="37vLTw" id="2gdyhRQsw2G" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNI" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2gdyhRQswOf" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNI" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNJ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2gdyhRQsw2K" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$656" id="2gdyhRQrG91" role="1fOSGc">
        <ref role="v9R2y" node="2gdyhRQrG8i" resolve="weave_Checkbox_ActionMap" />
      </node>
    </node>
    <node concept="3aamgX" id="1aoPJ1nwlov" role="3acgRq">
      <ref role="30HIoZ" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <node concept="gft3U" id="1aoPJ1nwloH" role="1lVwrX">
        <node concept="3EZMnI" id="783I1NXqSGo" role="gfFT$">
          <node concept="2iRfu4" id="783I1NXqSGp" role="2iSdaV" />
          <node concept="3EYTF0" id="783I1NXqTC2" role="3EZMnx">
            <node concept="29HgVG" id="783I1NXqTLv" role="lGtFl">
              <node concept="3NFfHV" id="783I1NXqTLw" role="3NFExx">
                <node concept="3clFbS" id="783I1NXqTLx" role="2VODD2">
                  <node concept="3clFbF" id="783I1NXqTLB" role="3cqZAp">
                    <node concept="2OqwBi" id="783I1NXqTLy" role="3clFbG">
                      <node concept="3TrEf2" id="783I1NXqTL_" role="2OqNvi">
                        <ref role="3Tt5mk" to="f55a:1aoPJ1nweEq" resolve="ui" />
                      </node>
                      <node concept="30H73N" id="783I1NXqTLA" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3EYTF0" id="783I1NXqT$_" role="3EZMnx">
            <node concept="29HgVG" id="783I1NXqTFx" role="lGtFl">
              <node concept="3NFfHV" id="783I1NXqTFy" role="3NFExx">
                <node concept="3clFbS" id="783I1NXqTFz" role="2VODD2">
                  <node concept="3clFbF" id="783I1NXqTFD" role="3cqZAp">
                    <node concept="2OqwBi" id="783I1NXqTF$" role="3clFbG">
                      <node concept="3TrEf2" id="783I1NXqTFB" role="2OqNvi">
                        <ref role="3Tt5mk" to="f55a:783I1NXqJjA" resolve="label" />
                      </node>
                      <node concept="30H73N" id="783I1NXqTFC" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="Veino" id="783I1NXqUEv" role="3F10Kt">
            <node concept="2b32R4" id="783I1NXqUK2" role="lGtFl">
              <node concept="3JmXsc" id="783I1NXqUK5" role="2P8S$">
                <node concept="3clFbS" id="783I1NXqUK6" role="2VODD2">
                  <node concept="3clFbF" id="783I1NXqUKc" role="3cqZAp">
                    <node concept="2OqwBi" id="783I1NXqUK7" role="3clFbG">
                      <node concept="3Tsc0h" id="783I1NXqUKa" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:hJF10O6" resolve="styleItem" />
                      </node>
                      <node concept="30H73N" id="783I1NXqUKb" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="783I1NXrNBu" role="lGtFl">
            <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1381004262292414836/1381004262292426837" />
            <property role="2qtEX8" value="parentStyleClass" />
            <node concept="3$xsQk" id="783I1NXrNBx" role="3$ytzL">
              <node concept="3clFbS" id="783I1NXrNBy" role="2VODD2">
                <node concept="3clFbF" id="783I1NXrNBC" role="3cqZAp">
                  <node concept="2OqwBi" id="783I1NXrNBz" role="3clFbG">
                    <node concept="3TrEf2" id="783I1NXrNBA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:1cEk0X7fp1l" resolve="parentStyleClass" />
                    </node>
                    <node concept="30H73N" id="783I1NXrNBB" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="2gdyhRQrRvS" role="lGtFl">
            <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389214265/1139959269582" />
            <property role="2qtEX8" value="actionMap" />
            <node concept="3$xsQk" id="2gdyhRQrRvT" role="3$ytzL">
              <node concept="3clFbS" id="2gdyhRQrRvU" role="2VODD2">
                <node concept="3clFbF" id="2gdyhRQrRQ1" role="3cqZAp">
                  <node concept="2OqwBi" id="2gdyhRQrRTE" role="3clFbG">
                    <node concept="30H73N" id="2gdyhRQrRQ0" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2gdyhRQrSPA" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="2gdyhRQrRHD" role="lGtFl">
            <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389214265/1081339532145" />
            <property role="2qtEX8" value="keyMap" />
            <node concept="3$xsQk" id="2gdyhRQrRHE" role="3$ytzL">
              <node concept="3clFbS" id="2gdyhRQrRHF" role="2VODD2">
                <node concept="3clFbF" id="2gdyhRQrSS$" role="3cqZAp">
                  <node concept="2OqwBi" id="2gdyhRQrSWd" role="3clFbG">
                    <node concept="30H73N" id="2gdyhRQrSSz" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2gdyhRQrT3I" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1aoPJ1nwlsl" role="3acgRq">
      <ref role="30HIoZ" to="f55a:1aoPJ1nwewV" resolve="CheckboxUI_Text" />
      <node concept="gft3U" id="1aoPJ1nwlsH" role="1lVwrX">
        <node concept="1QoScp" id="3JMwn_6btBz" role="gfFT$">
          <property role="1QpmdY" value="true" />
          <node concept="3F0ifn" id="3JMwn_6buay" role="1QoS34">
            <property role="3F0ifm" value="x" />
            <node concept="17Uvod" id="2OjWntzwCUg" role="lGtFl">
              <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="2OjWntzwCUj" role="3zH0cK">
                <node concept="3clFbS" id="2OjWntzwCUk" role="2VODD2">
                  <node concept="3clFbF" id="2OjWntzwCUq" role="3cqZAp">
                    <node concept="2OqwBi" id="2OjWntzwCUl" role="3clFbG">
                      <node concept="3TrcHB" id="2OjWntzwCUo" role="2OqNvi">
                        <ref role="3TsBF5" to="f55a:1aoPJ1nwewY" resolve="trueText" />
                      </node>
                      <node concept="30H73N" id="2OjWntzwCUp" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="3JMwn_6btBA" role="3e4ffs">
            <node concept="3clFbS" id="3JMwn_6btBC" role="2VODD2">
              <node concept="3clFbF" id="3JMwn_6btM4" role="3cqZAp">
                <node concept="2OqwBi" id="3JMwn_6btM6" role="3clFbG">
                  <node concept="pncrf" id="3JMwn_6btM7" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3JMwn_6btM8" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                    <node concept="1ZhdrF" id="3JMwn_6btM9" role="lGtFl">
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" />
                      <property role="2qtEX8" value="property" />
                      <node concept="3$xsQk" id="3JMwn_6btMa" role="3$ytzL">
                        <node concept="3clFbS" id="3JMwn_6btMb" role="2VODD2">
                          <node concept="3clFbF" id="3JMwn_6btMc" role="3cqZAp">
                            <node concept="2OqwBi" id="3JMwn_6btMd" role="3clFbG">
                              <node concept="2OqwBi" id="3JMwn_6btMe" role="2Oq$k0">
                                <node concept="30H73N" id="3JMwn_6btMf" role="2Oq$k0" />
                                <node concept="2Xjw5R" id="3JMwn_6btMg" role="2OqNvi">
                                  <node concept="1xMEDy" id="3JMwn_6btMh" role="1xVPHs">
                                    <node concept="chp4Y" id="3JMwn_6btMi" role="ri$Ld">
                                      <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="3JMwn_6btMj" role="2OqNvi">
                                <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3612de$T444" role="3cqZAp">
                <node concept="3clFbT" id="3612de$T443" role="3clFbG">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="29HgVG" id="3612de$T4BY" role="lGtFl">
                  <node concept="3NFfHV" id="3612de$T4Oe" role="3NFExx">
                    <node concept="3clFbS" id="3612de$T4Of" role="2VODD2">
                      <node concept="3clFbF" id="3612de$T5d2" role="3cqZAp">
                        <node concept="10Nm6u" id="3612de$T5d1" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="3JMwn_6bucA" role="1QoVPY">
            <property role="3F0ifm" value=" " />
            <node concept="17Uvod" id="2OjWntzwCWs" role="lGtFl">
              <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" />
              <property role="2qtEX9" value="text" />
              <node concept="3zFVjK" id="2OjWntzwCWv" role="3zH0cK">
                <node concept="3clFbS" id="2OjWntzwCWw" role="2VODD2">
                  <node concept="3clFbF" id="2OjWntzwCWA" role="3cqZAp">
                    <node concept="2OqwBi" id="2OjWntzwCWx" role="3clFbG">
                      <node concept="3TrcHB" id="2OjWntzwCW$" role="2OqNvi">
                        <ref role="3TsBF5" to="f55a:1aoPJ1nwex0" resolve="falseText" />
                      </node>
                      <node concept="30H73N" id="2OjWntzwCW_" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="Veino" id="3612de$T7PC" role="3F10Kt">
            <node concept="2b32R4" id="3612de$T7PD" role="lGtFl">
              <node concept="3JmXsc" id="3612de$T7PE" role="2P8S$">
                <node concept="3clFbS" id="3612de$T7PF" role="2VODD2">
                  <node concept="3clFbF" id="3612de$T7PG" role="3cqZAp">
                    <node concept="2OqwBi" id="3612de$T7PH" role="3clFbG">
                      <node concept="3Tsc0h" id="3612de$T7PI" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:hJF10O6" resolve="styleItem" />
                      </node>
                      <node concept="30H73N" id="3612de$T7PJ" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZhdrF" id="783I1NXrNta" role="lGtFl">
            <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1381004262292414836/1381004262292426837" />
            <property role="2qtEX8" value="parentStyleClass" />
            <node concept="3$xsQk" id="783I1NXrNtd" role="3$ytzL">
              <node concept="3clFbS" id="783I1NXrNte" role="2VODD2">
                <node concept="3clFbF" id="783I1NXrNtk" role="3cqZAp">
                  <node concept="2OqwBi" id="783I1NXrNtf" role="3clFbG">
                    <node concept="3TrEf2" id="783I1NXrNti" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:1cEk0X7fp1l" resolve="parentStyleClass" />
                    </node>
                    <node concept="30H73N" id="783I1NXrNtj" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="65VHHDM1Od5" role="3acgRq">
      <ref role="30HIoZ" to="f55a:65VHHDM1N_N" resolve="CheckboxUI_Platform" />
      <node concept="gft3U" id="65VHHDM1OpM" role="1lVwrX">
        <node concept="1QoScp" id="65VHHDM1OpN" role="gfFT$">
          <property role="1QpmdY" value="true" />
          <node concept="1u4HXA" id="65VHHDM1OpO" role="1QoS34">
            <property role="1$Qi42" value="-1" />
            <property role="1N59bZ" value="true" />
            <node concept="20u1Yu" id="7k$14oQsmov" role="4GRq3">
              <property role="26rObG" value="${module}/icons/checkBoxSelected.png" />
              <node concept="1dCxOk" id="7k$14oQwgE5" role="26rObI">
                <property role="1XweGW" value="90966cb5-4f67-429a-b7ba-d0fded4ede71" />
                <property role="1XxBO9" value="jetbrains.mps.lang.editor.forms.runtime" />
              </node>
            </node>
          </node>
          <node concept="pkWqt" id="65VHHDM1OpW" role="3e4ffs">
            <node concept="3clFbS" id="65VHHDM1OpX" role="2VODD2">
              <node concept="3clFbF" id="65VHHDM1OpY" role="3cqZAp">
                <node concept="2OqwBi" id="65VHHDM1OpZ" role="3clFbG">
                  <node concept="pncrf" id="65VHHDM1Oq0" role="2Oq$k0" />
                  <node concept="3TrcHB" id="65VHHDM1Oq1" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                    <node concept="1ZhdrF" id="65VHHDM1Oq2" role="lGtFl">
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" />
                      <property role="2qtEX8" value="property" />
                      <node concept="3$xsQk" id="65VHHDM1Oq3" role="3$ytzL">
                        <node concept="3clFbS" id="65VHHDM1Oq4" role="2VODD2">
                          <node concept="3clFbF" id="65VHHDM1Oq5" role="3cqZAp">
                            <node concept="2OqwBi" id="65VHHDM1Oq6" role="3clFbG">
                              <node concept="2OqwBi" id="65VHHDM1Oq7" role="2Oq$k0">
                                <node concept="30H73N" id="65VHHDM1Oq8" role="2Oq$k0" />
                                <node concept="2Xjw5R" id="65VHHDM1Oq9" role="2OqNvi">
                                  <node concept="1xMEDy" id="65VHHDM1Oqa" role="1xVPHs">
                                    <node concept="chp4Y" id="65VHHDM1Oqb" role="ri$Ld">
                                      <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="65VHHDM1Oqc" role="2OqNvi">
                                <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3612de$T9Fe" role="3cqZAp">
                <node concept="3clFbT" id="3612de$T9Ff" role="3clFbG">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="29HgVG" id="3612de$T9Fg" role="lGtFl">
                  <node concept="3NFfHV" id="3612de$T9Fh" role="3NFExx">
                    <node concept="3clFbS" id="3612de$T9Fi" role="2VODD2">
                      <node concept="3clFbF" id="3612de$T9Fj" role="3cqZAp">
                        <node concept="10Nm6u" id="3612de$T9Fk" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1u4HXA" id="65VHHDM1Oqd" role="1QoVPY">
            <property role="1$Qi42" value="-1" />
            <property role="1N59bZ" value="true" />
            <node concept="20u1Yu" id="7k$14oQwgYc" role="4GRq3">
              <property role="26rObG" value="${module}/icons/checkBox.png" />
              <node concept="1dCxOk" id="7k$14oQwgYg" role="26rObI">
                <property role="1XweGW" value="90966cb5-4f67-429a-b7ba-d0fded4ede71" />
                <property role="1XxBO9" value="jetbrains.mps.lang.editor.forms.runtime" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="1$0KR3zd6qq" role="3lj3bC">
      <ref role="30HIoZ" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="3lhOvi" node="1$0KR3zcGqh" resolve="ToggleCheckboxAction" />
      <node concept="30G5F_" id="2gdyhRQrGQ$" role="30HLyM">
        <node concept="3clFbS" id="2gdyhRQrGQ_" role="2VODD2">
          <node concept="3clFbF" id="2gdyhRQrGRD" role="3cqZAp">
            <node concept="22lmx$" id="2gdyhRQrHdq" role="3clFbG">
              <node concept="2OqwBi" id="2gdyhRQrGRF" role="3uHU7B">
                <node concept="2OqwBi" id="2gdyhRQrGRG" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQrGRH" role="2Oq$k0">
                    <node concept="2OqwBi" id="2gdyhRQrGRI" role="2Oq$k0">
                      <node concept="2OqwBi" id="2gdyhRQrGRJ" role="2Oq$k0">
                        <node concept="30H73N" id="2gdyhRQrGRK" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2gdyhRQrGRL" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="2gdyhRQrGRM" role="2OqNvi">
                        <ref role="3TtcxE" to="tpc2:gyQnntA" resolve="item" />
                      </node>
                    </node>
                    <node concept="3goQfb" id="2gdyhRQrGRN" role="2OqNvi">
                      <node concept="1bVj0M" id="2gdyhRQrGRO" role="23t8la">
                        <node concept="3clFbS" id="2gdyhRQrGRP" role="1bW5cS">
                          <node concept="3clFbF" id="2gdyhRQrGRQ" role="3cqZAp">
                            <node concept="2OqwBi" id="2gdyhRQrGRR" role="3clFbG">
                              <node concept="37vLTw" id="2gdyhRQrGRS" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNK" resolve="it" />
                              </node>
                              <node concept="3Tsc0h" id="2gdyhRQrGRT" role="2OqNvi">
                                <ref role="3TtcxE" to="tpc2:gyPyayW" resolve="keystroke" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="5W7E4fV0WNK" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5W7E4fV0WNL" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQrGRW" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQrGRX" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQrGRY" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQrGRZ" role="3cqZAp">
                          <node concept="1Wc70l" id="2gdyhRQrGS0" role="3clFbG">
                            <node concept="2OqwBi" id="2gdyhRQrGS1" role="3uHU7w">
                              <node concept="Xl_RD" id="2gdyhRQrGS2" role="2Oq$k0">
                                <property role="Xl_RC" value="VK_SPACE" />
                              </node>
                              <node concept="liA8E" id="2gdyhRQrGS3" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="2gdyhRQrGS4" role="37wK5m">
                                  <node concept="37vLTw" id="2gdyhRQrGS5" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WNM" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2gdyhRQrGS6" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpc2:gyPWKEK" resolve="keycode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2gdyhRQrGS7" role="3uHU7B">
                              <node concept="Xl_RD" id="2gdyhRQrGS8" role="2Oq$k0">
                                <property role="Xl_RC" value="none" />
                              </node>
                              <node concept="liA8E" id="2gdyhRQrGS9" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="2OqwBi" id="2gdyhRQrGSa" role="37wK5m">
                                  <node concept="37vLTw" id="2gdyhRQrGSb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5W7E4fV0WNM" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="2gdyhRQrGSc" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpc2:gyPWKEJ" resolve="modifiers" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNM" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNN" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="2gdyhRQrGSf" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2gdyhRQrHqm" role="3uHU7w">
                <node concept="2OqwBi" id="2gdyhRQrHqn" role="2Oq$k0">
                  <node concept="2OqwBi" id="2gdyhRQrHqo" role="2Oq$k0">
                    <node concept="2OqwBi" id="2gdyhRQrHqp" role="2Oq$k0">
                      <node concept="30H73N" id="2gdyhRQrHqq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="2gdyhRQrHqr" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2gdyhRQrHqs" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:g_h_SO1" resolve="item" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2gdyhRQrHqt" role="2OqNvi">
                    <node concept="1bVj0M" id="2gdyhRQrHqu" role="23t8la">
                      <node concept="3clFbS" id="2gdyhRQrHqv" role="1bW5cS">
                        <node concept="3clFbF" id="2gdyhRQrHqw" role="3cqZAp">
                          <node concept="2OqwBi" id="2gdyhRQrHqx" role="3clFbG">
                            <node concept="2OqwBi" id="2gdyhRQrHqy" role="2Oq$k0">
                              <node concept="37vLTw" id="2gdyhRQrHqz" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WNO" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="2gdyhRQrHq$" role="2OqNvi">
                                <ref role="3TsBF5" to="tpc2:3Ftr4R6BH0B" resolve="actionId" />
                              </node>
                            </node>
                            <node concept="21noJN" id="3Ftr4R8L06X" role="2OqNvi">
                              <node concept="21nZrQ" id="3Ftr4R8L06Y" role="21noJM">
                                <ref role="21nZrZ" to="tpc2:3Ftr4R6BFbn" resolve="click_action_id" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WNO" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WNP" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1v1jN8" id="2gdyhRQrHqD" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="1$0KR3zcGzE" role="2rTMjI">
      <property role="TrG5h" value="actionClassConstructor" />
      <ref role="2rTdP9" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="2rZz_L" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
    </node>
  </node>
  <node concept="13MO4I" id="1$0KR3zbTZ2">
    <property role="TrG5h" value="Checkbox_toggle" />
    <ref role="3gUMe" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
    <node concept="1hAIg9" id="1$0KR3zbUY0" role="13RCb5">
      <node concept="3clFbS" id="1$0KR3zbUY1" role="2VODD2">
        <node concept="9aQIb" id="1$0KR3zcaiq" role="3cqZAp">
          <node concept="3clFbS" id="1$0KR3zcais" role="9aQI4">
            <node concept="3clFbF" id="1$0KR3zcMVv" role="3cqZAp">
              <node concept="2OqwBi" id="1$0KR3zcNFE" role="3clFbG">
                <node concept="2ShNRf" id="1$0KR3zcMVr" role="2Oq$k0">
                  <node concept="1pGfFk" id="1$0KR3zcNmF" role="2ShVmc">
                    <ref role="37wK5l" node="1$0KR3zcIxK" resolve="ToggleCheckboxAction" />
                    <node concept="10QFUN" id="2gdyhRQsHss" role="37wK5m">
                      <node concept="3Tqbb2" id="2gdyhRQsIcy" role="10QFUM">
                        <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                        <node concept="1ZhdrF" id="2gdyhRQsIko" role="lGtFl">
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                          <property role="2qtEX8" value="concept" />
                          <node concept="3$xsQk" id="2gdyhRQsIkp" role="3$ytzL">
                            <node concept="3clFbS" id="2gdyhRQsIkq" role="2VODD2">
                              <node concept="3clFbF" id="2gdyhRQsJMv" role="3cqZAp">
                                <node concept="10QFUN" id="2gdyhRQsJMw" role="3clFbG">
                                  <node concept="3Tqbb2" id="2gdyhRQsJMx" role="10QFUM">
                                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                  </node>
                                  <node concept="2OqwBi" id="2gdyhRQsJMy" role="10QFUP">
                                    <node concept="2OqwBi" id="2gdyhRQsJMz" role="2Oq$k0">
                                      <node concept="30H73N" id="2gdyhRQsJM$" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="2gdyhRQsJM_" role="2OqNvi">
                                        <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                                      </node>
                                    </node>
                                    <node concept="1mfA1w" id="2gdyhRQsJMA" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="0IXxy" id="1$0KR3zcNmP" role="10QFUP" />
                    </node>
                    <node concept="1ZhdrF" id="1$0KR3zcOcK" role="lGtFl">
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                      <property role="2qtEX8" value="baseMethodDeclaration" />
                      <node concept="3$xsQk" id="1$0KR3zcOcL" role="3$ytzL">
                        <node concept="3clFbS" id="1$0KR3zcOcM" role="2VODD2">
                          <node concept="3clFbF" id="1$0KR3zcSti" role="3cqZAp">
                            <node concept="2OqwBi" id="1$0KR3zcSuP" role="3clFbG">
                              <node concept="1iwH7S" id="1$0KR3zcSth" role="2Oq$k0" />
                              <node concept="1iwH70" id="1$0KR3zcSwg" role="2OqNvi">
                                <ref role="1iwH77" node="1$0KR3zcGzE" resolve="actionClassConstructor" />
                                <node concept="30H73N" id="1$0KR3zcS$v" role="1iwH7V" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1$0KR3zcNOF" role="2OqNvi">
                  <ref role="37wK5l" to="y8bk:43TOVRWQa55" resolve="execute" />
                  <node concept="1Q80Hx" id="1$0KR3zcNUl" role="37wK5m" />
                </node>
              </node>
              <node concept="raruj" id="1$0KR3zcOa0" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1$0KR3zcGqh">
    <property role="TrG5h" value="ToggleCheckboxAction" />
    <node concept="312cEg" id="1$0KR3zcHDW" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1$0KR3zcHzB" role="1B3o_S" />
      <node concept="3Tqbb2" id="1$0KR3zcHDi" role="1tU5fm">
        <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
        <node concept="1ZhdrF" id="1$0KR3zcKSk" role="lGtFl">
          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
          <property role="2qtEX8" value="concept" />
          <node concept="3$xsQk" id="1$0KR3zcKSl" role="3$ytzL">
            <node concept="3clFbS" id="1$0KR3zcKSm" role="2VODD2">
              <node concept="3clFbF" id="1$0KR3zcLpl" role="3cqZAp">
                <node concept="10QFUN" id="1$0KR3zcLpm" role="3clFbG">
                  <node concept="3Tqbb2" id="1$0KR3zcLpn" role="10QFUM">
                    <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="1$0KR3zcLpo" role="10QFUP">
                    <node concept="2OqwBi" id="1$0KR3zcLpp" role="2Oq$k0">
                      <node concept="30H73N" id="1$0KR3zcLpq" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1$0KR3zcLpr" role="2OqNvi">
                        <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                      </node>
                    </node>
                    <node concept="1mfA1w" id="1$0KR3zcLps" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1$0KR3zcHJ1" role="jymVt" />
    <node concept="3clFbW" id="1$0KR3zcIxK" role="jymVt">
      <node concept="3cqZAl" id="1$0KR3zcIxL" role="3clF45" />
      <node concept="3clFbS" id="1$0KR3zcIxN" role="3clF47">
        <node concept="3clFbF" id="1$0KR3zcICa" role="3cqZAp">
          <node concept="37vLTI" id="1$0KR3zcIDf" role="3clFbG">
            <node concept="37vLTw" id="1$0KR3zcIEI" role="37vLTx">
              <ref role="3cqZAo" node="1$0KR3zcIAV" resolve="node" />
            </node>
            <node concept="37vLTw" id="1$0KR3zcIC9" role="37vLTJ">
              <ref role="3cqZAo" node="1$0KR3zcHDW" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1$0KR3zcIsD" role="1B3o_S" />
      <node concept="37vLTG" id="1$0KR3zcIAV" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1$0KR3zcIAU" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
          <node concept="1ZhdrF" id="1$0KR3zcIVD" role="lGtFl">
            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
            <property role="2qtEX8" value="concept" />
            <node concept="3$xsQk" id="1$0KR3zcIVE" role="3$ytzL">
              <node concept="3clFbS" id="1$0KR3zcIVF" role="2VODD2">
                <node concept="3clFbF" id="1$0KR3zcIYF" role="3cqZAp">
                  <node concept="10QFUN" id="1$0KR3zcKhr" role="3clFbG">
                    <node concept="3Tqbb2" id="1$0KR3zcKr2" role="10QFUM">
                      <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="1$0KR3zcJtk" role="10QFUP">
                      <node concept="2OqwBi" id="1$0KR3zcJ4D" role="2Oq$k0">
                        <node concept="30H73N" id="1$0KR3zcIYE" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1$0KR3zcJfN" role="2OqNvi">
                          <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                        </node>
                      </node>
                      <node concept="1mfA1w" id="1$0KR3zcJFQ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2ZBi8u" id="1$0KR3zd8eN" role="lGtFl">
        <ref role="2rW$FS" node="1$0KR3zcGzE" resolve="actionClassConstructor" />
      </node>
    </node>
    <node concept="2tJIrI" id="43TOVRWQl7W" role="jymVt" />
    <node concept="3clFb_" id="43TOVRWQlOO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doExecute" />
      <node concept="3cqZAl" id="43TOVRWQlOP" role="3clF45" />
      <node concept="3Tmbuc" id="43TOVRWQlOQ" role="1B3o_S" />
      <node concept="3clFbS" id="43TOVRWQlOS" role="3clF47">
        <node concept="3clFbF" id="1$0KR3zcHcC" role="3cqZAp">
          <node concept="37vLTI" id="1$0KR3zcHcD" role="3clFbG">
            <node concept="3fqX7Q" id="1$0KR3zcHcE" role="37vLTx">
              <node concept="2OqwBi" id="1$0KR3zcHcF" role="3fr31v">
                <node concept="37vLTw" id="1$0KR3zcIQN" role="2Oq$k0">
                  <ref role="3cqZAo" node="1$0KR3zcHDW" resolve="myNode" />
                </node>
                <node concept="3TrcHB" id="1$0KR3zcHcH" role="2OqNvi">
                  <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
                  <node concept="1ZhdrF" id="1$0KR3zcHcI" role="lGtFl">
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" />
                    <property role="2qtEX8" value="property" />
                    <node concept="3$xsQk" id="1$0KR3zcHcJ" role="3$ytzL">
                      <node concept="3clFbS" id="1$0KR3zcHcK" role="2VODD2">
                        <node concept="3clFbF" id="1$0KR3zcHcL" role="3cqZAp">
                          <node concept="2OqwBi" id="1$0KR3zcHcM" role="3clFbG">
                            <node concept="3TrEf2" id="1$0KR3zcHcN" role="2OqNvi">
                              <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                            </node>
                            <node concept="30H73N" id="1$0KR3zcHcO" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1$0KR3zcHcP" role="37vLTJ">
              <node concept="37vLTw" id="1$0KR3zcIJB" role="2Oq$k0">
                <ref role="3cqZAo" node="1$0KR3zcHDW" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="1$0KR3zcHcR" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:fDsVARU" resolve="abstractClass" />
                <node concept="1ZhdrF" id="1$0KR3zcHcS" role="lGtFl">
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" />
                  <property role="2qtEX8" value="property" />
                  <node concept="3$xsQk" id="1$0KR3zcHcT" role="3$ytzL">
                    <node concept="3clFbS" id="1$0KR3zcHcU" role="2VODD2">
                      <node concept="3clFbF" id="1$0KR3zcHcV" role="3cqZAp">
                        <node concept="2OqwBi" id="1$0KR3zcHcW" role="3clFbG">
                          <node concept="3TrEf2" id="1$0KR3zcHcX" role="2OqNvi">
                            <ref role="3Tt5mk" to="f55a:3daRSMLnNZv" resolve="propertyDeclaration" />
                          </node>
                          <node concept="30H73N" id="1$0KR3zcHcY" role="2Oq$k0" />
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
    <node concept="2tJIrI" id="43TOVRWQog8" role="jymVt" />
    <node concept="3clFb_" id="43TOVRWQlOH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCellSelector" />
      <node concept="37vLTG" id="43TOVRWQEug" role="3clF46">
        <property role="TrG5h" value="selectedCell" />
        <node concept="3uibUv" id="43TOVRWQEuh" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="3uibUv" id="43TOVRWQlOI" role="3clF45">
        <ref role="3uigEE" to="x4nc:~CellSelector" resolve="CellSelector" />
      </node>
      <node concept="3Tmbuc" id="43TOVRWQlOJ" role="1B3o_S" />
      <node concept="3clFbS" id="43TOVRWQlOL" role="3clF47">
        <node concept="3cpWs6" id="43TOVRWQp78" role="3cqZAp">
          <node concept="10Nm6u" id="43TOVRWQpLW" role="3cqZAk" />
          <node concept="1sPUBX" id="43TOVRWQuI1" role="lGtFl">
            <ref role="v9R2y" node="43TOVRWQsrZ" resolve="CreateCellSelectorMethodBody" />
            <node concept="3NFfHV" id="43TOVRWR208" role="1sPUBK">
              <node concept="3clFbS" id="43TOVRWR209" role="2VODD2">
                <node concept="3clFbF" id="43TOVRWR2Cr" role="3cqZAp">
                  <node concept="2OqwBi" id="43TOVRWR2FN" role="3clFbG">
                    <node concept="30H73N" id="43TOVRWR2Cq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="43TOVRWR2Mw" role="2OqNvi">
                      <ref role="3Tt5mk" to="f55a:1aoPJ1nweEq" resolve="ui" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1$0KR3zcGqi" role="1B3o_S" />
    <node concept="n94m4" id="1$0KR3zcGqj" role="lGtFl">
      <ref role="n9lRv" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
    </node>
    <node concept="17Uvod" id="1$0KR3zcGud" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="1$0KR3zcGue" role="3zH0cK">
        <node concept="3clFbS" id="1$0KR3zcGuf" role="2VODD2">
          <node concept="3clFbF" id="1$0KR3zcGvw" role="3cqZAp">
            <node concept="2OqwBi" id="1$0KR3zcGvx" role="3clFbG">
              <node concept="1iwH7S" id="1$0KR3zcGvy" role="2Oq$k0" />
              <node concept="2piZGk" id="1$0KR3zcGvz" role="2OqNvi">
                <node concept="Xl_RD" id="1$0KR3zcGv$" role="2piZGb">
                  <property role="Xl_RC" value="ToggleCheckboxAction" />
                </node>
                <node concept="30H73N" id="6a2EaFHg24V" role="2pr8EU" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="43TOVRWQjTB" role="1zkMxy">
      <ref role="3uigEE" to="y8bk:43TOVRWQa4d" resolve="AbstractToggleCheckboxAction" />
    </node>
  </node>
  <node concept="jVnub" id="43TOVRWQsrZ">
    <property role="TrG5h" value="CreateCellSelectorMethodBody" />
    <node concept="3aamgX" id="43TOVRWQstJ" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="f55a:65VHHDM1N_N" resolve="CheckboxUI_Platform" />
      <node concept="gft3U" id="43TOVRWQsyo" role="1lVwrX">
        <node concept="3cpWs6" id="43TOVRWQw58" role="gfFT$">
          <node concept="2ShNRf" id="43TOVRWQw5D" role="3cqZAk">
            <node concept="1pGfFk" id="43TOVRWQw5E" role="2ShVmc">
              <ref role="37wK5l" to="x4nc:~WholeCellSelector.&lt;init&gt;()" resolve="WholeCellSelector" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="43TOVRWQswr" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="f55a:1aoPJ1nwewV" resolve="CheckboxUI_Text" />
      <node concept="1Koe21" id="43TOVRWQDo6" role="1lVwrX">
        <node concept="3clFb_" id="43TOVRWQdTC" role="1Koe22">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="createCellSelector" />
          <node concept="37vLTG" id="43TOVRWQxkE" role="3clF46">
            <property role="TrG5h" value="selectedCell" />
            <node concept="3uibUv" id="43TOVRWQxsO" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
          </node>
          <node concept="3uibUv" id="43TOVRWQeg9" role="3clF45">
            <ref role="3uigEE" to="x4nc:~CellSelector" resolve="CellSelector" />
          </node>
          <node concept="3Tmbuc" id="43TOVRWQe1H" role="1B3o_S" />
          <node concept="3clFbS" id="43TOVRWQdTG" role="3clF47">
            <node concept="3cpWs8" id="43TOVRWQDud" role="3cqZAp">
              <node concept="3cpWsn" id="43TOVRWQDue" role="3cpWs9">
                <property role="TrG5h" value="label" />
                <node concept="3uibUv" id="43TOVRWQDuf" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                </node>
                <node concept="10QFUN" id="43TOVRWQDug" role="33vP2m">
                  <node concept="3uibUv" id="43TOVRWQDuh" role="10QFUM">
                    <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
                  </node>
                  <node concept="37vLTw" id="43TOVRWQDw9" role="10QFUP">
                    <ref role="3cqZAo" node="43TOVRWQxkE" resolve="selectedCell" />
                  </node>
                </node>
              </node>
              <node concept="raruj" id="43TOVRWQDxk" role="lGtFl" />
            </node>
            <node concept="3cpWs6" id="43TOVRWQDyQ" role="3cqZAp">
              <node concept="2ShNRf" id="43TOVRWQDuk" role="3cqZAk">
                <node concept="1pGfFk" id="43TOVRWQDul" role="2ShVmc">
                  <ref role="37wK5l" to="x4nc:~LabelCellSelector.&lt;init&gt;(int,int,int)" resolve="LabelCellSelector" />
                  <node concept="2OqwBi" id="43TOVRWQDum" role="37wK5m">
                    <node concept="37vLTw" id="43TOVRWQDun" role="2Oq$k0">
                      <ref role="3cqZAo" node="43TOVRWQDue" resolve="label" />
                    </node>
                    <node concept="liA8E" id="43TOVRWQDuo" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell_Label.getCaretPosition()" resolve="getCaretPosition" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="43TOVRWQDup" role="37wK5m">
                    <node concept="37vLTw" id="43TOVRWQDuq" role="2Oq$k0">
                      <ref role="3cqZAo" node="43TOVRWQDue" resolve="label" />
                    </node>
                    <node concept="liA8E" id="43TOVRWQDur" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart()" resolve="getSelectionStart" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="43TOVRWQDus" role="37wK5m">
                    <node concept="37vLTw" id="43TOVRWQDut" role="2Oq$k0">
                      <ref role="3cqZAo" node="43TOVRWQDue" resolve="label" />
                    </node>
                    <node concept="liA8E" id="43TOVRWQDuu" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd()" resolve="getSelectionEnd" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="raruj" id="43TOVRWQD$_" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="j$LIH" id="43TOVRWQswS" role="jxRDz">
      <node concept="1lLz0L" id="43TOVRWQswU" role="1lHHLF">
        <property role="1lMjX7" value="h1lM37o/error" />
        <property role="1lLB17" value="Unsupported Checkbox UI" />
      </node>
    </node>
  </node>
  <node concept="bUwia" id="43TOVRWRCXL">
    <property role="TrG5h" value="Preprocess" />
    <property role="3GE5qa" value="preprocess" />
    <node concept="mf$An" id="1bmO0L$pY2l" role="meg5s">
      <ref role="mf$Ag" to="tpc2:g_ERwze" resolve="actionMap" />
      <ref role="39vUdu" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <node concept="3$xsQk" id="1bmO0L$pY2m" role="2vbCZR">
        <node concept="3clFbS" id="1bmO0L$pY2n" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$q0eT" role="3cqZAp">
            <node concept="2OqwBi" id="1bmO0L$q0Ji" role="3clFbG">
              <node concept="1iwH7S" id="1bmO0L$q0eS" role="2Oq$k0" />
              <node concept="1iwH70" id="1bmO0L$q0PB" role="2OqNvi">
                <ref role="1iwH77" node="1bmO0L$pSQ4" resolve="defaultActionMap" />
                <node concept="1PxgMI" id="1bmO0L$q1xZ" role="1iwH7V">
                  <node concept="chp4Y" id="1bmO0L$q1zM" role="3oSUPX">
                    <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                  </node>
                  <node concept="30H73N" id="1bmO0L$q0WA" role="1m5AlR" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="1bmO0L$pYyR" role="39vUdx">
        <node concept="3clFbS" id="1bmO0L$pYyS" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$pYEA" role="3cqZAp">
            <node concept="3clFbC" id="1bmO0L$pZRc" role="3clFbG">
              <node concept="10Nm6u" id="1bmO0L$q05i" role="3uHU7w" />
              <node concept="2OqwBi" id="1bmO0L$pYSn" role="3uHU7B">
                <node concept="30H73N" id="1bmO0L$pYE_" role="2Oq$k0" />
                <node concept="3TrEf2" id="1bmO0L$pZl7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="mf$An" id="1bmO0L$qkiU" role="meg5s">
      <ref role="mf$Ag" to="tpc2:fJ4QXdL" resolve="keyMap" />
      <ref role="39vUdu" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <node concept="3$xsQk" id="1bmO0L$qkiV" role="2vbCZR">
        <node concept="3clFbS" id="1bmO0L$qkiW" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$qmJ7" role="3cqZAp">
            <node concept="2OqwBi" id="1bmO0L$qmJ8" role="3clFbG">
              <node concept="1iwH7S" id="1bmO0L$qmJ9" role="2Oq$k0" />
              <node concept="1iwH70" id="1bmO0L$qmJa" role="2OqNvi">
                <ref role="1iwH77" node="1bmO0L$pWja" resolve="defaultKeyMap" />
                <node concept="1PxgMI" id="1bmO0L$qmJb" role="1iwH7V">
                  <node concept="chp4Y" id="1bmO0L$qmJc" role="3oSUPX">
                    <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                  </node>
                  <node concept="30H73N" id="1bmO0L$qmJd" role="1m5AlR" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="30G5F_" id="1bmO0L$ql00" role="39vUdx">
        <node concept="3clFbS" id="1bmO0L$ql01" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$ql7J" role="3cqZAp">
            <node concept="3clFbC" id="1bmO0L$qm7z" role="3clFbG">
              <node concept="10Nm6u" id="1bmO0L$qmlD" role="3uHU7w" />
              <node concept="2OqwBi" id="1bmO0L$qllw" role="3uHU7B">
                <node concept="30H73N" id="1bmO0L$ql7I" role="2Oq$k0" />
                <node concept="3TrEf2" id="1bmO0L$qlBB" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="1bmO0L$pSQ4" role="2rTMjI">
      <property role="TrG5h" value="defaultActionMap" />
      <ref role="2rTdP9" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="2rZz_L" to="tpc2:g_h_SNY" resolve="CellActionMapDeclaration" />
    </node>
    <node concept="3lhOvk" id="1bmO0L$pQS4" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true" />
      <ref role="30HIoZ" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="3lhOvi" node="1bmO0L$pRDd" resolve="emptyActionMap" />
      <ref role="2sgKRv" node="1bmO0L$pSQ4" resolve="defaultActionMap" />
      <node concept="30G5F_" id="1bmO0L$pQTp" role="30HLyM">
        <node concept="3clFbS" id="1bmO0L$pQTq" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$pR7x" role="3cqZAp">
            <node concept="3clFbC" id="1bmO0L$pR7z" role="3clFbG">
              <node concept="10Nm6u" id="1bmO0L$pR7$" role="3uHU7w" />
              <node concept="2OqwBi" id="1bmO0L$pR7_" role="3uHU7B">
                <node concept="30H73N" id="1bmO0L$pRm5" role="2Oq$k0" />
                <node concept="3TrEf2" id="1bmO0L$pR7B" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="1bmO0L$pU12" role="3lj3bC">
      <property role="13Pg2o" value="h94ayQF/true" />
      <ref role="30HIoZ" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="3lhOvi" node="1bmO0L$pUUK" resolve="emptyKeyMap" />
      <ref role="2sgKRv" node="1bmO0L$pWja" resolve="defaultKeyMap" />
      <node concept="30G5F_" id="1bmO0L$pUkl" role="30HLyM">
        <node concept="3clFbS" id="1bmO0L$pUkm" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$pUyz" role="3cqZAp">
            <node concept="3clFbC" id="1bmO0L$pUy_" role="3clFbG">
              <node concept="10Nm6u" id="1bmO0L$pUyA" role="3uHU7w" />
              <node concept="2OqwBi" id="1bmO0L$pUyB" role="3uHU7B">
                <node concept="30H73N" id="1bmO0L$pUHF" role="2Oq$k0" />
                <node concept="3TrEf2" id="1bmO0L$pUyD" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="1bmO0L$pWja" role="2rTMjI">
      <property role="TrG5h" value="defaultKeyMap" />
      <ref role="2rTdP9" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
      <ref role="2rZz_L" to="tpc2:fJ25Fcr" resolve="CellKeyMapDeclaration" />
    </node>
  </node>
  <node concept="13MO4I" id="2gdyhRQrFWC">
    <property role="TrG5h" value="weave_Checkbox_keymap" />
    <ref role="3gUMe" to="tpc2:fJ25Fcr" resolve="CellKeyMapDeclaration" />
    <node concept="325Ffw" id="2gdyhRQrFXm" role="13RCb5">
      <property role="TrG5h" value="Container" />
      <node concept="2PxR9H" id="2gdyhRQrGrr" role="2QnnpI">
        <property role="2PxWOX" value="toggle checkbox" />
        <node concept="2Py5lD" id="2gdyhRQrGrs" role="2PyaAO">
          <property role="2PWKIS" value="VK_SPACE" />
          <property role="2PWKIB" value="none" />
        </node>
        <node concept="2PzhpH" id="2gdyhRQrGrt" role="2PL9iG">
          <node concept="3clFbS" id="2gdyhRQrGru" role="2VODD2">
            <node concept="3clFbH" id="2gdyhRQrGrv" role="3cqZAp">
              <node concept="5jKBG" id="2gdyhRQrGrw" role="lGtFl">
                <ref role="v9R2y" node="1$0KR3zbTZ2" resolve="Checkbox_toggle" />
                <node concept="3NFfHV" id="2gdyhRQsot4" role="5jGum">
                  <node concept="3clFbS" id="2gdyhRQsot5" role="2VODD2">
                    <node concept="3clFbF" id="2gdyhRQsotI" role="3cqZAp">
                      <node concept="2OqwBi" id="2gdyhRQss5X" role="3clFbG">
                        <node concept="2OqwBi" id="2gdyhRQspZr" role="2Oq$k0">
                          <node concept="2OqwBi" id="2gdyhRQsoxF" role="2Oq$k0">
                            <node concept="2OqwBi" id="2gdyhRQsouK" role="2Oq$k0">
                              <node concept="1iwH7S" id="2gdyhRQsotH" role="2Oq$k0" />
                              <node concept="1r8y6K" id="2gdyhRQsow5" role="2OqNvi" />
                            </node>
                            <node concept="2SmgA7" id="2gdyhRQsozi" role="2OqNvi">
                              <node concept="chp4Y" id="2gdyhRQsoME" role="1dBWTz">
                                <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zZkjj" id="2gdyhRQsrh0" role="2OqNvi">
                            <node concept="1bVj0M" id="2gdyhRQsrh2" role="23t8la">
                              <node concept="3clFbS" id="2gdyhRQsrh3" role="1bW5cS">
                                <node concept="3clFbF" id="2gdyhRQsroT" role="3cqZAp">
                                  <node concept="3clFbC" id="2gdyhRQsrV1" role="3clFbG">
                                    <node concept="30H73N" id="2gdyhRQsrZO" role="3uHU7w" />
                                    <node concept="2OqwBi" id="2gdyhRQsrut" role="3uHU7B">
                                      <node concept="37vLTw" id="2gdyhRQsroS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WNQ" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="2gdyhRQsrBL" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpc2:fJ4QXdL" resolve="keyMap" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0WNQ" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0WNR" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2gdyhRQsseN" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Pz7Y7" id="2gdyhRQrGrx" role="2Pzqsi">
          <node concept="3clFbS" id="2gdyhRQrGry" role="2VODD2">
            <node concept="3clFbF" id="2gdyhRQrGrz" role="3cqZAp">
              <node concept="2ZW3vV" id="2gdyhRQrGr$" role="3clFbG">
                <node concept="3uibUv" id="2gdyhRQrGr_" role="2ZW6by">
                  <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                </node>
                <node concept="2OqwBi" id="2gdyhRQrGrA" role="2ZW6bz">
                  <node concept="1Q80Hx" id="2gdyhRQrGrB" role="2Oq$k0" />
                  <node concept="liA8E" id="2gdyhRQrGrC" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="2gdyhRQrGtp" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="2gdyhRQrG8i">
    <property role="TrG5h" value="weave_Checkbox_ActionMap" />
    <ref role="3gUMe" to="tpc2:g_h_SNY" resolve="CellActionMapDeclaration" />
    <node concept="1h_SRR" id="2gdyhRQrG90" role="13RCb5">
      <property role="TrG5h" value="Container" />
      <node concept="1hA7zw" id="2gdyhRQrGyf" role="1h_SK8">
        <property role="1hAc7j" value="1FSxSwWqMNJ/click_action_id" />
        <property role="1hHO97" value="toggle checkbox" />
        <node concept="1hAIg9" id="2gdyhRQrGyg" role="1hA7z_">
          <node concept="3clFbS" id="2gdyhRQrGyh" role="2VODD2">
            <node concept="3clFbH" id="2gdyhRQrGyi" role="3cqZAp">
              <node concept="5jKBG" id="2gdyhRQrGyj" role="lGtFl">
                <ref role="v9R2y" node="1$0KR3zbTZ2" resolve="Checkbox_toggle" />
                <node concept="3NFfHV" id="2gdyhRQsxR7" role="5jGum">
                  <node concept="3clFbS" id="2gdyhRQsxR8" role="2VODD2">
                    <node concept="3clFbF" id="2gdyhRQsy2F" role="3cqZAp">
                      <node concept="2OqwBi" id="2gdyhRQsy2G" role="3clFbG">
                        <node concept="2OqwBi" id="2gdyhRQsy2H" role="2Oq$k0">
                          <node concept="2OqwBi" id="2gdyhRQsy2I" role="2Oq$k0">
                            <node concept="2OqwBi" id="2gdyhRQsy2J" role="2Oq$k0">
                              <node concept="1iwH7S" id="2gdyhRQsy2K" role="2Oq$k0" />
                              <node concept="1r8y6K" id="2gdyhRQsy2L" role="2OqNvi" />
                            </node>
                            <node concept="2SmgA7" id="2gdyhRQsy2M" role="2OqNvi">
                              <node concept="chp4Y" id="2gdyhRQsy2N" role="1dBWTz">
                                <ref role="cht4Q" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
                              </node>
                            </node>
                          </node>
                          <node concept="3zZkjj" id="2gdyhRQsy2O" role="2OqNvi">
                            <node concept="1bVj0M" id="2gdyhRQsy2P" role="23t8la">
                              <node concept="3clFbS" id="2gdyhRQsy2Q" role="1bW5cS">
                                <node concept="3clFbF" id="2gdyhRQsy2R" role="3cqZAp">
                                  <node concept="3clFbC" id="2gdyhRQsy2S" role="3clFbG">
                                    <node concept="30H73N" id="2gdyhRQsy2T" role="3uHU7w" />
                                    <node concept="2OqwBi" id="2gdyhRQsy2U" role="3uHU7B">
                                      <node concept="37vLTw" id="2gdyhRQsy2V" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5W7E4fV0WNS" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="2gdyhRQsyq3" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="5W7E4fV0WNS" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="5W7E4fV0WNT" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1uHKPH" id="2gdyhRQsy2Z" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="2gdyhRQrGyp" role="lGtFl" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1bmO0L$pRDd">
    <property role="TrG5h" value="emptyActionMap" />
    <property role="3GE5qa" value="preprocess" />
    <node concept="n94m4" id="1bmO0L$pRDe" role="lGtFl">
      <ref role="n9lRv" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
    </node>
    <node concept="17Uvod" id="1bmO0L$pRW6" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="1bmO0L$pRW7" role="3zH0cK">
        <node concept="3clFbS" id="1bmO0L$pRW8" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$pSu4" role="3cqZAp">
            <node concept="2OqwBi" id="1bmO0L$pSu6" role="3clFbG">
              <node concept="1iwH7S" id="1bmO0L$pSu7" role="2Oq$k0" />
              <node concept="2piZGk" id="1bmO0L$pSu8" role="2OqNvi">
                <node concept="Xl_RD" id="1bmO0L$pSu9" role="2piZGb">
                  <property role="Xl_RC" value="Checkbox_ActionMap" />
                </node>
                <node concept="30H73N" id="1bmO0L$r17s" role="2pr8EU" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="1bmO0L$pUUK">
    <property role="TrG5h" value="emptyKeyMap" />
    <property role="3GE5qa" value="preprocess" />
    <node concept="n94m4" id="1bmO0L$pUUL" role="lGtFl">
      <ref role="n9lRv" to="f55a:hlYdQAfmdS" resolve="CellModel_Checkbox" />
    </node>
    <node concept="17Uvod" id="1bmO0L$pV5j" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="1bmO0L$pV5k" role="3zH0cK">
        <node concept="3clFbS" id="1bmO0L$pV5l" role="2VODD2">
          <node concept="3clFbF" id="1bmO0L$pVDe" role="3cqZAp">
            <node concept="2OqwBi" id="1bmO0L$pVDg" role="3clFbG">
              <node concept="1iwH7S" id="1bmO0L$pVDh" role="2Oq$k0" />
              <node concept="2piZGk" id="1bmO0L$pVDi" role="2OqNvi">
                <node concept="Xl_RD" id="1bmO0L$pVDj" role="2piZGb">
                  <property role="Xl_RC" value="Checkbox_KeyMap" />
                </node>
                <node concept="30H73N" id="1bmO0L$r1xb" role="2pr8EU" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

