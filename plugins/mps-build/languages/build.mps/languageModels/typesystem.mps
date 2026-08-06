<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:473be7a1-ec10-4475-89b9-397d2558ecb0(jetbrains.mps.build.mps.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="tken" ref="r:38bad86e-d92c-4ea7-ad52-a111dc6c2457(jetbrains.mps.build.mps.util)" />
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="o3n2" ref="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" />
    <import index="2txq" ref="r:2c8fa2a8-11a0-4729-bd56-47f702d30278(jetbrains.mps.build.mps.behavior)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="5672535223916537938" name="jetbrains.mps.lang.typesystem.structure.QuickFixApplicableBlock" flags="in" index="rPOND" />
      <concept id="1224760201579" name="jetbrains.mps.lang.typesystem.structure.InfoStatement" flags="nn" index="Dpp1Q">
        <child id="1224760230762" name="infoText" index="Dpw9R" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="5672535223916540985" name="applicableBlock" index="rPP22" />
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383337216" name="jetbrains.mps.lang.typesystem.structure.ConceptFunctionParameter_node" flags="nn" index="Q6c8r" />
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643443" name="messageTarget" index="1urrC5" />
        <child id="3937244445246643221" name="helginsIntention" index="1urrFz" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <property id="1216127910019" name="applyImmediately" index="ARO6o" />
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1145573345940" name="jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" flags="nn" index="2TvwIu" />
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="18kY7G" id="3HwLahs6nSu">
    <property role="TrG5h" value="check_BuildMps_ModuleDependencyJar" />
    <property role="3GE5qa" value="Project.Deps" />
    <node concept="3clFbS" id="3HwLahs6nSv" role="18ibNy">
      <node concept="3cpWs8" id="3HwLahs6nSx" role="3cqZAp">
        <node concept="3cpWsn" id="3HwLahs6nSy" role="3cpWs9">
          <property role="TrG5h" value="relativePath" />
          <node concept="17QB3L" id="3HwLahs6nSz" role="1tU5fm" />
          <node concept="2OqwBi" id="3HwLahs6nS$" role="33vP2m">
            <node concept="2OqwBi" id="3HwLahs6nS_" role="2Oq$k0">
              <node concept="1YBJjd" id="3HwLahs6nSA" role="2Oq$k0">
                <ref role="1YBMHb" node="3HwLahs6nSw" resolve="jarEntry" />
              </node>
              <node concept="3TrEf2" id="3HwLahs6nSU" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:3HwLahs6nSq" resolve="path" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufOReMV" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:4Kip2_918YF" resolve="getRelativePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3HwLahs6nSD" role="3cqZAp">
        <node concept="22lmx$" id="3ORmnQUs5jl" role="3clFbw">
          <node concept="2OqwBi" id="3ORmnQUs49a" role="3uHU7B">
            <node concept="37vLTw" id="3ORmnQUs3A9" role="2Oq$k0">
              <ref role="3cqZAo" node="3HwLahs6nSy" resolve="relativePath" />
            </node>
            <node concept="17RlXB" id="3ORmnQUs59r" role="2OqNvi" />
          </node>
          <node concept="1eOMI4" id="3ORmnQUs6oJ" role="3uHU7w">
            <node concept="1Wc70l" id="3HwLahs6nSI" role="1eOMHV">
              <node concept="3fqX7Q" id="3HwLahs6nSJ" role="3uHU7w">
                <node concept="2OqwBi" id="3HwLahs6nSK" role="3fr31v">
                  <node concept="37vLTw" id="3GM_nagTvBD" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HwLahs6nSy" resolve="relativePath" />
                  </node>
                  <node concept="liA8E" id="3HwLahs6nSM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="3HwLahs6nSN" role="37wK5m">
                      <property role="Xl_RC" value=".jar" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3HwLahs6nSO" role="3uHU7B">
                <node concept="2OqwBi" id="3HwLahs6nSP" role="3fr31v">
                  <node concept="37vLTw" id="3GM_nagTvz5" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HwLahs6nSy" resolve="relativePath" />
                  </node>
                  <node concept="liA8E" id="3HwLahs6nSR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="3HwLahs6nSS" role="37wK5m">
                      <property role="Xl_RC" value="}" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="3HwLahs6nSE" role="3clFbx">
          <node concept="2MkqsV" id="3HwLahs6nSF" role="3cqZAp">
            <node concept="Xl_RD" id="3HwLahs6nSG" role="2MkJ7o">
              <property role="Xl_RC" value="should end with .jar (or macro)" />
            </node>
            <node concept="1YBJjd" id="3HwLahs6nSH" role="1urrMF">
              <ref role="1YBMHb" node="3HwLahs6nSw" resolve="jarEntry" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3HwLahs6nSw" role="1YuTPh">
      <property role="TrG5h" value="jarEntry" />
      <ref role="1YaFvo" to="kdzh:3HwLahs6nSp" resolve="BuildMps_ModuleDependencyJar" />
    </node>
  </node>
  <node concept="18kY7G" id="2cypSucdKpQ">
    <property role="TrG5h" value="check_ModulesImport" />
    <node concept="3clFbS" id="2cypSucdKpR" role="18ibNy">
      <node concept="3clFbJ" id="2mEelMsN6IM" role="3cqZAp">
        <node concept="3clFbS" id="2mEelMsN6IO" role="3clFbx">
          <node concept="3SKdUt" id="2mEelMsNeLS" role="3cqZAp">
            <node concept="1PaTwC" id="2mEelMsNeLT" role="1aUNEU">
              <node concept="3oM_SD" id="2mEelMsNeLZ" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeM1" role="1PaTwD">
                <property role="3oM_SC" value="reason" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeM4" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeM8" role="1PaTwD">
                <property role="3oM_SC" value="test" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeMd" role="1PaTwD">
                <property role="3oM_SC" value="quotations" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeMj" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="2mEelMsNeMq" role="1PaTwD">
                <property role="3oM_SC" value="alike" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2mEelMsNeLe" role="3cqZAp" />
        </node>
        <node concept="3y3z36" id="2mEelMsNdwx" role="3clFbw">
          <node concept="2OqwBi" id="2mEelMsN8tJ" role="3uHU7B">
            <node concept="1YBJjd" id="2mEelMsN8iQ" role="2Oq$k0">
              <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
            </node>
            <node concept="1mfA1w" id="2mEelMsN9Sd" role="2OqNvi" />
          </node>
          <node concept="10Nm6u" id="2mEelMsNchF" role="3uHU7w" />
        </node>
      </node>
      <node concept="3clFbJ" id="7AaordoBzHj" role="3cqZAp">
        <node concept="3clFbS" id="7AaordoBzHk" role="3clFbx">
          <node concept="3cpWs6" id="7AaordoBzIG" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="2oW$psGOeU5" role="3clFbw">
          <node concept="3fqX7Q" id="2oW$psGOnE9" role="3uHU7w">
            <node concept="2YIFZM" id="791rit5f67f" role="3fr31v">
              <ref role="37wK5l" to="unno:54ElNE$imKq" resolve="isGeneratable" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="2JrnkZ" id="791rit5f67h" role="37wK5m">
                <node concept="2OqwBi" id="791rit5f67i" role="2JrQYb">
                  <node concept="1YBJjd" id="791rit5f67j" role="2Oq$k0">
                    <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
                  </node>
                  <node concept="I4A8Y" id="791rit5f67k" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="41K1b4v5pqF" role="3uHU7B">
            <node concept="2ZW3vV" id="3nCzltNmdS6" role="3uHU7B">
              <node concept="3uibUv" id="2AbGWt_IYRX" role="2ZW6by">
                <ref role="3uigEE" to="31cb:~TransientSModule" resolve="TransientSModule" />
              </node>
              <node concept="2OqwBi" id="3nCzltNmdS8" role="2ZW6bz">
                <node concept="liA8E" id="3nCzltNmdS9" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="3nCzltNmdSa" role="2Oq$k0">
                  <node concept="2OqwBi" id="3nCzltNmdSb" role="2JrQYb">
                    <node concept="1YBJjd" id="3nCzltNmdSc" role="2Oq$k0">
                      <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
                    </node>
                    <node concept="I4A8Y" id="3nCzltNmdSd" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="41K1b4v5pqK" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="2OqwBi" id="41K1b4v5pr4" role="37wK5m">
                <node concept="1YBJjd" id="41K1b4v5pqL" role="2Oq$k0">
                  <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
                </node>
                <node concept="I4A8Y" id="41K1b4v5prc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7AaordoBzIH" role="3cqZAp" />
      <node concept="3cpWs8" id="2cypSucdKvC" role="3cqZAp">
        <node concept="3cpWsn" id="2cypSucdKvD" role="3cpWs9">
          <property role="TrG5h" value="workingDir" />
          <node concept="2OqwBi" id="6cqWk79Lbhr" role="33vP2m">
            <node concept="1YBJjd" id="6cqWk79Lb6S" role="2Oq$k0">
              <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
            </node>
            <node concept="3zqWPK" id="70OdufOReMX" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:4jjtc7WZOyG" resolve="getBasePath" />
              <node concept="2YIFZM" id="70OdufOReMZ" role="37wK5m">
                <ref role="37wK5l" to="o3n2:4jjtc7WZTjd" resolve="defaultContext" />
                <ref role="1Pybhc" to="o3n2:4jjtc7WZOAv" resolve="Context" />
              </node>
            </node>
          </node>
          <node concept="17QB3L" id="2cypSucdKvE" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFbJ" id="2L4pT56hSK3" role="3cqZAp">
        <node concept="2OqwBi" id="2L4pT56hSKm" role="3clFbw">
          <node concept="17RlXB" id="2L4pT56hSKs" role="2OqNvi" />
          <node concept="37vLTw" id="3GM_nagTB7S" role="2Oq$k0">
            <ref role="3cqZAo" node="2cypSucdKvD" resolve="workingDir" />
          </node>
        </node>
        <node concept="3clFbS" id="2L4pT56hSK4" role="3clFbx">
          <node concept="2MkqsV" id="2cypSucdKwb" role="3cqZAp">
            <node concept="Xl_RD" id="2cypSucdKwe" role="2MkJ7o">
              <property role="Xl_RC" value="working directory is unavailable" />
            </node>
            <node concept="1YBJjd" id="2cypSucdKwf" role="1urrMF">
              <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
            </node>
          </node>
          <node concept="3cpWs6" id="2cypSucdKwp" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbH" id="6cqWk79_OkG" role="3cqZAp" />
      <node concept="3cpWs8" id="6cqWk79_M0f" role="3cqZAp">
        <node concept="3cpWsn" id="6cqWk79_M0g" role="3cpWs9">
          <property role="TrG5h" value="repo" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="6cqWk79_M0c" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="6cqWk79_M0h" role="33vP2m">
            <node concept="2JrnkZ" id="6cqWk79_M0i" role="2Oq$k0">
              <node concept="2OqwBi" id="6cqWk79_M0j" role="2JrQYb">
                <node concept="1YBJjd" id="6cqWk79_M0k" role="2Oq$k0">
                  <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
                </node>
                <node concept="I4A8Y" id="6cqWk79_M0l" role="2OqNvi" />
              </node>
            </node>
            <node concept="liA8E" id="6cqWk79_M0m" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="6tgFcy$Ai9w" role="3cqZAp" />
      <node concept="3cpWs8" id="6cqWk79_tqe" role="3cqZAp">
        <node concept="3cpWsn" id="6cqWk79_tqf" role="3cpWs9">
          <property role="TrG5h" value="ml" />
          <node concept="3uibUv" id="6cqWk79_tqb" role="1tU5fm">
            <ref role="3uigEE" to="tken:3HwLahs69DJ" resolve="ModuleLoader" />
          </node>
          <node concept="2ShNRf" id="6cqWk79_tqg" role="33vP2m">
            <node concept="1pGfFk" id="6cqWk79_tqh" role="2ShVmc">
              <ref role="37wK5l" to="tken:6cqWk79z1ZM" resolve="ModuleLoader" />
              <node concept="1YBJjd" id="6cqWk79_tqi" role="37wK5m">
                <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
              </node>
              <node concept="10Nm6u" id="6cqWk79_tqj" role="37wK5m" />
              <node concept="2ShNRf" id="6cqWk79_tqk" role="37wK5m">
                <node concept="YeOm9" id="6cqWk79_tql" role="2ShVmc">
                  <node concept="1Y3b0j" id="6cqWk79_tqm" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="6cqWk79_tqn" role="1B3o_S" />
                    <node concept="3clFb_" id="6cqWk79_tqo" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="handle" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="6cqWk79_tqp" role="1B3o_S" />
                      <node concept="3cqZAl" id="6cqWk79_tqq" role="3clF45" />
                      <node concept="37vLTG" id="6cqWk79_tqr" role="3clF46">
                        <property role="TrG5h" value="msg" />
                        <node concept="3uibUv" id="6cqWk79_tqs" role="1tU5fm">
                          <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6cqWk79_tqt" role="3clF47">
                        <node concept="3cpWs8" id="6cqWk79_FZS" role="3cqZAp">
                          <node concept="3cpWsn" id="6cqWk79_FZV" role="3cpWs9">
                            <property role="TrG5h" value="location" />
                            <node concept="3Tqbb2" id="6cqWk79_FZQ" role="1tU5fm" />
                            <node concept="1YBJjd" id="6cqWk79_G3y" role="33vP2m">
                              <ref role="1YBMHb" node="2cypSucdKpT" resolve="buildProject" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6cqWk79_FTc" role="3cqZAp">
                          <node concept="3clFbS" id="6cqWk79_FTe" role="3clFbx">
                            <node concept="3clFbF" id="6cqWk79_Go_" role="3cqZAp">
                              <node concept="37vLTI" id="6cqWk79_Gvu" role="3clFbG">
                                <node concept="37vLTw" id="6cqWk79_Goz" role="37vLTJ">
                                  <ref role="3cqZAo" node="6cqWk79_FZV" resolve="location" />
                                </node>
                                <node concept="2OqwBi" id="6cqWk79_Huo" role="37vLTx">
                                  <node concept="1eOMI4" id="6cqWk79_Hlh" role="2Oq$k0">
                                    <node concept="10QFUN" id="6cqWk79_Hle" role="1eOMHV">
                                      <node concept="3uibUv" id="6cqWk79_Hlj" role="10QFUM">
                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                      </node>
                                      <node concept="2OqwBi" id="6cqWk79_Hlk" role="10QFUP">
                                        <node concept="37vLTw" id="6cqWk79_Hll" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                        </node>
                                        <node concept="liA8E" id="6cqWk79_Hlm" role="2OqNvi">
                                          <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="6cqWk79_HCi" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                    <node concept="37vLTw" id="6cqWk79_M0n" role="37wK5m">
                                      <ref role="3cqZAo" node="6cqWk79_M0g" resolve="repo" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="6cqWk79_PSg" role="3clFbw">
                            <node concept="3y3z36" id="6cqWk79_Qq7" role="3uHU7B">
                              <node concept="10Nm6u" id="6cqWk79_Qrq" role="3uHU7w" />
                              <node concept="37vLTw" id="6cqWk79_Qin" role="3uHU7B">
                                <ref role="3cqZAo" node="6cqWk79_M0g" resolve="repo" />
                              </node>
                            </node>
                            <node concept="2ZW3vV" id="6cqWk79_Fha" role="3uHU7w">
                              <node concept="3uibUv" id="6cqWk79_FRD" role="2ZW6by">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                              <node concept="2OqwBi" id="6cqWk79_ENK" role="2ZW6bz">
                                <node concept="37vLTw" id="6cqWk79_EGk" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                </node>
                                <node concept="liA8E" id="6cqWk79_EUU" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~IMessage.getHintObject()" resolve="getHintObject" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2rr9SDxzpyW" role="3cqZAp">
                          <node concept="3clFbS" id="2rr9SDxzpyY" role="3clFbx">
                            <node concept="2MkqsV" id="6cqWk79_tqu" role="3cqZAp">
                              <node concept="2OqwBi" id="6cqWk79_Gdb" role="2MkJ7o">
                                <node concept="37vLTw" id="6cqWk79_G5D" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                </node>
                                <node concept="liA8E" id="6cqWk79_GkK" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="6cqWk79_G4z" role="1urrMF">
                                <ref role="3cqZAo" node="6cqWk79_FZV" resolve="location" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="2rr9SDxzqml" role="3clFbw">
                            <node concept="Rm8GO" id="2rr9SDxzqTw" role="3uHU7w">
                              <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                              <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                            </node>
                            <node concept="2OqwBi" id="2rr9SDxzpLv" role="3uHU7B">
                              <node concept="37vLTw" id="2rr9SDxzpBi" role="2Oq$k0">
                                <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                              </node>
                              <node concept="liA8E" id="2rr9SDxzpVR" role="2OqNvi">
                                <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="2rr9SDxzrq6" role="3eNLev">
                            <node concept="3clFbC" id="2rr9SDxzsW_" role="3eO9$A">
                              <node concept="Rm8GO" id="2rr9SDxztbo" role="3uHU7w">
                                <ref role="Rm8GQ" to="et5u:~MessageKind.WARNING" resolve="WARNING" />
                                <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                              </node>
                              <node concept="2OqwBi" id="2rr9SDxzrEv" role="3uHU7B">
                                <node concept="37vLTw" id="2rr9SDxzrzi" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                </node>
                                <node concept="liA8E" id="2rr9SDxzrLR" role="2OqNvi">
                                  <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="2rr9SDxzrq8" role="3eOfB_">
                              <node concept="a7r0C" id="2rr9SDxzti0" role="3cqZAp">
                                <node concept="2OqwBi" id="2rr9SDxzttn" role="a7wSD">
                                  <node concept="37vLTw" id="2rr9SDxztm4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6cqWk79_tqr" resolve="msg" />
                                  </node>
                                  <node concept="liA8E" id="2rr9SDxztEj" role="2OqNvi">
                                    <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2rr9SDxztGH" role="1urrMF">
                                  <ref role="3cqZAo" node="6cqWk79_FZV" resolve="location" />
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
      <node concept="3clFbF" id="6cqWk79_pgU" role="3cqZAp">
        <node concept="2OqwBi" id="6cqWk79_upM" role="3clFbG">
          <node concept="37vLTw" id="6cqWk79_tqx" role="2Oq$k0">
            <ref role="3cqZAo" node="6cqWk79_tqf" resolve="ml" />
          </node>
          <node concept="liA8E" id="6cqWk79_uOb" role="2OqNvi">
            <ref role="37wK5l" to="tken:6cqWk79_waj" resolve="checkAllModules" />
            <node concept="Rm8GO" id="6m8wrPD7rUQ" role="37wK5m">
              <ref role="1Px2BO" to="tken:6m8wrPAZ5Tf" resolve="ModuleChecker.CheckType" />
              <ref role="Rm8GQ" to="tken:6m8wrPAZiFk" resolve="CHECK" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2cypSucdKpT" role="1YuTPh">
      <property role="TrG5h" value="buildProject" />
      <ref role="1YaFvo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
    </node>
  </node>
  <node concept="Q5z_Y" id="2cypSucdOWw">
    <property role="TrG5h" value="ReloadRequired" />
    <node concept="Q5ZZ6" id="2cypSucdOWx" role="Q6x$H">
      <node concept="3clFbS" id="2cypSucdOWy" role="2VODD2">
        <node concept="3cpWs8" id="2cypSucdOWT" role="3cqZAp">
          <node concept="3cpWsn" id="2cypSucdOWU" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3Tqbb2" id="2cypSucdOWV" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
            </node>
            <node concept="1PxgMI" id="2cypSucdOXc" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="Q6c8r" id="2cypSucdOWX" role="1m5AlR" />
              <node concept="chp4Y" id="714IaVdGYXb" role="3oSUPX">
                <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2cypSucdOYd" role="3cqZAp">
          <node concept="3clFbS" id="2cypSucdOYe" role="3clFbx">
            <node concept="3cpWs6" id="2cypSucdOY$" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2cypSucdOYw" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTwuS" role="3uHU7B">
              <ref role="3cqZAo" node="2cypSucdOWU" resolve="module" />
            </node>
            <node concept="10Nm6u" id="2cypSucdOYz" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="2cypSucdOYb" role="3cqZAp" />
        <node concept="3cpWs8" id="3HwLahs6f0x" role="3cqZAp">
          <node concept="3cpWsn" id="3HwLahs6f0y" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3Tqbb2" id="3HwLahs6f0z" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
            <node concept="1PxgMI" id="3HwLahs6f23" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="2OqwBi" id="3HwLahs6f1D" role="1m5AlR">
                <node concept="Q6c8r" id="2cypSucdOWP" role="2Oq$k0" />
                <node concept="2Rxl7S" id="3HwLahs6f1J" role="2OqNvi" />
              </node>
              <node concept="chp4Y" id="714IaVdGYWr" role="3oSUPX">
                <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HwLahs6f26" role="3cqZAp">
          <node concept="3clFbS" id="3HwLahs6f27" role="3clFbx">
            <node concept="3cpWs6" id="3HwLahs6f2w" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3HwLahs6f2p" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTvtb" role="2Oq$k0">
              <ref role="3cqZAo" node="3HwLahs6f0y" resolve="project" />
            </node>
            <node concept="3w_OXm" id="3HwLahs6f2v" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3HwLahs6f2x" role="3cqZAp" />
        <node concept="3cpWs8" id="6cqWk79Eg9s" role="3cqZAp">
          <node concept="3cpWsn" id="6cqWk79Eg9t" role="3cpWs9">
            <property role="TrG5h" value="ml" />
            <node concept="3uibUv" id="6cqWk79Eg9p" role="1tU5fm">
              <ref role="3uigEE" to="tken:3HwLahs69DJ" resolve="ModuleLoader" />
            </node>
            <node concept="2ShNRf" id="6cqWk79Eg9u" role="33vP2m">
              <node concept="1pGfFk" id="6cqWk79Eg9v" role="2ShVmc">
                <ref role="37wK5l" to="tken:6cqWk79z1ZM" resolve="ModuleLoader" />
                <node concept="37vLTw" id="6cqWk79Eg9w" role="37wK5m">
                  <ref role="3cqZAo" node="3HwLahs6f0y" resolve="project" />
                </node>
                <node concept="10Nm6u" id="6cqWk79Eg9x" role="37wK5m" />
                <node concept="2ShNRf" id="6cqWk79Eg9y" role="37wK5m">
                  <node concept="1pGfFk" id="6cqWk79Eg9z" role="2ShVmc">
                    <ref role="37wK5l" to="et5u:~LogHandler.&lt;init&gt;(jetbrains.mps.logging.Logger)" resolve="LogHandler" />
                    <node concept="2YIFZM" id="6cqWk79Eg9$" role="37wK5m">
                      <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                      <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                      <node concept="3VsKOn" id="6cqWk79Eg9_" role="37wK5m">
                        <ref role="3VsUkX" to="tken:3HwLahs69DJ" resolve="ModuleLoader" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6cqWk79Eeem" role="3cqZAp">
          <node concept="2OqwBi" id="6cqWk79Ehpa" role="3clFbG">
            <node concept="2OqwBi" id="6cqWk79EgwY" role="2Oq$k0">
              <node concept="37vLTw" id="6cqWk79Eg9A" role="2Oq$k0">
                <ref role="3cqZAo" node="6cqWk79Eg9t" resolve="ml" />
              </node>
              <node concept="liA8E" id="6cqWk79EgP5" role="2OqNvi">
                <ref role="37wK5l" to="tken:6cqWk79$86r" resolve="createModuleChecker" />
                <node concept="37vLTw" id="6cqWk79Eh4z" role="37wK5m">
                  <ref role="3cqZAo" node="2cypSucdOWU" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6cqWk79EiGF" role="2OqNvi">
              <ref role="37wK5l" to="tken:6m8wrPAZvU9" resolve="check" />
              <node concept="Rm8GO" id="6m8wrPD7zrM" role="37wK5m">
                <ref role="1Px2BO" to="tken:6m8wrPAZ5Tf" resolve="ModuleChecker.CheckType" />
                <ref role="Rm8GQ" to="tken:6m8wrPAZbkd" resolve="LOAD_IMPORTANT_PART" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="2cypSucdOW$" role="QzAvj">
      <node concept="3clFbS" id="2cypSucdOW_" role="2VODD2">
        <node concept="3clFbF" id="2cypSucdOWA" role="3cqZAp">
          <node concept="Xl_RD" id="2cypSucdOWB" role="3clFbG">
            <property role="Xl_RC" value="Load required information from file" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1diLdO27K11">
    <property role="TrG5h" value="check_IdeaPlugin_Dependencies" />
    <property role="3GE5qa" value="Project.Plugin" />
    <node concept="3clFbS" id="1diLdO27K12" role="18ibNy">
      <node concept="3clFbJ" id="35IRynH741O" role="3cqZAp">
        <node concept="3clFbS" id="35IRynH741P" role="3clFbx">
          <node concept="3cpWs6" id="35IRynH741Q" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="35IRynH741R" role="3clFbw">
          <node concept="3fqX7Q" id="35IRynH741S" role="3uHU7w">
            <node concept="2YIFZM" id="35IRynH741T" role="3fr31v">
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <ref role="37wK5l" to="unno:54ElNE$imKq" resolve="isGeneratable" />
              <node concept="2JrnkZ" id="35IRynH741U" role="37wK5m">
                <node concept="2OqwBi" id="35IRynH741V" role="2JrQYb">
                  <node concept="1YBJjd" id="35IRynH7aA5" role="2Oq$k0">
                    <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
                  </node>
                  <node concept="I4A8Y" id="35IRynH741X" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="35IRynH741Y" role="3uHU7B">
            <node concept="2ZW3vV" id="35IRynH741Z" role="3uHU7B">
              <node concept="3uibUv" id="2AbGWt_J0RS" role="2ZW6by">
                <ref role="3uigEE" to="31cb:~TransientSModule" resolve="TransientSModule" />
              </node>
              <node concept="2OqwBi" id="35IRynH7421" role="2ZW6bz">
                <node concept="liA8E" id="35IRynH7422" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="35IRynH7423" role="2Oq$k0">
                  <node concept="2OqwBi" id="35IRynH7424" role="2JrQYb">
                    <node concept="1YBJjd" id="35IRynH7akI" role="2Oq$k0">
                      <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
                    </node>
                    <node concept="I4A8Y" id="35IRynH7426" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="35IRynH7427" role="3uHU7w">
              <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
              <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel)" resolve="isGeneratorModel" />
              <node concept="2OqwBi" id="35IRynH7428" role="37wK5m">
                <node concept="1YBJjd" id="35IRynH7atk" role="2Oq$k0">
                  <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
                </node>
                <node concept="I4A8Y" id="35IRynH742a" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="35IRynH6ZfH" role="3cqZAp" />
      <node concept="3cpWs8" id="1diLdO27K1C" role="3cqZAp">
        <node concept="3cpWsn" id="1diLdO27K1D" role="3cpWs9">
          <property role="TrG5h" value="helper" />
          <node concept="3uibUv" id="1diLdO27K1E" role="1tU5fm">
            <ref role="3uigEE" to="tken:1diLdO27K14" resolve="IdeaPluginDependenciesHelper" />
          </node>
          <node concept="2ShNRf" id="1diLdO27K1F" role="33vP2m">
            <node concept="1pGfFk" id="1diLdO27K1G" role="2ShVmc">
              <ref role="37wK5l" to="tken:1diLdO27K16" resolve="IdeaPluginDependenciesHelper" />
              <node concept="1YBJjd" id="1diLdO27K1H" role="37wK5m">
                <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="1diLdO27Y1k" role="3cqZAp">
        <node concept="2GrKxI" id="1diLdO27Y1l" role="2Gsz3X">
          <property role="TrG5h" value="module" />
        </node>
        <node concept="3clFbS" id="1diLdO27Y1n" role="2LFqv$">
          <node concept="3cpWs8" id="1diLdO27Ycb" role="3cqZAp">
            <node concept="3cpWsn" id="1diLdO27Ycc" role="3cpWs9">
              <property role="TrG5h" value="sb" />
              <node concept="3uibUv" id="1diLdO27Ycd" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
              <node concept="2ShNRf" id="1diLdO27Yce" role="33vP2m">
                <node concept="1pGfFk" id="1diLdO27Ycf" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1diLdO27Yc3" role="3cqZAp">
            <node concept="2OqwBi" id="1diLdO27Yc4" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTBGs" role="2Oq$k0">
                <ref role="3cqZAo" node="1diLdO27K1D" resolve="helper" />
              </node>
              <node concept="liA8E" id="1diLdO27Yc6" role="2OqNvi">
                <ref role="37wK5l" to="tken:1diLdO27Y3A" resolve="printUnsatisfiedDependencies" />
                <node concept="37vLTw" id="3GM_nagT$PZ" role="37wK5m">
                  <ref role="3cqZAo" node="1diLdO27Ycc" resolve="sb" />
                </node>
                <node concept="2OqwBi" id="1diLdO27YcV" role="37wK5m">
                  <node concept="2GrUjf" id="1diLdO27Ycw" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1diLdO27Y1l" resolve="module" />
                  </node>
                  <node concept="3TrEf2" id="1diLdO27Yd0" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:5HVSRHdUrJt" resolve="target" />
                  </node>
                </node>
                <node concept="3clFbT" id="1diLdO27Yc9" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1diLdO27Ych" role="3cqZAp">
            <node concept="3clFbS" id="1diLdO27Yci" role="3clFbx">
              <node concept="2MkqsV" id="1diLdO27Ycj" role="3cqZAp">
                <node concept="2OqwBi" id="1diLdO27Yck" role="2MkJ7o">
                  <node concept="37vLTw" id="3GM_nagTvB6" role="2Oq$k0">
                    <ref role="3cqZAo" node="1diLdO27Ycc" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="1diLdO27Ycm" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  </node>
                </node>
                <node concept="2OE7Q9" id="1diLdO27Yd3" role="1urrC5">
                  <ref role="2OEe5H" to="kdzh:5HVSRHdUrJt" resolve="target" />
                </node>
                <node concept="2GrUjf" id="1diLdO27Ycy" role="1urrMF">
                  <ref role="2Gs0qQ" node="1diLdO27Y1l" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="1diLdO27Ycq" role="3clFbw">
              <node concept="2OqwBi" id="1diLdO27Ycr" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTxZa" role="2Oq$k0">
                  <ref role="3cqZAo" node="1diLdO27Ycc" resolve="sb" />
                </node>
                <node concept="liA8E" id="1diLdO27Yct" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                </node>
              </node>
              <node concept="3cmrfG" id="1diLdO27Ycu" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5WcZbgat1Ww" role="2GsD0m">
          <node concept="2OqwBi" id="1diLdO27Y1q" role="2Oq$k0">
            <node concept="1YBJjd" id="1diLdO27Y1L" role="2Oq$k0">
              <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
            </node>
            <node concept="3Tsc0h" id="1diLdO27Y1s" role="2OqNvi">
              <ref role="3TtcxE" to="kdzh:5HVSRHdUrJE" resolve="content" />
            </node>
          </node>
          <node concept="v3k3i" id="5WcZbgat5gs" role="2OqNvi">
            <node concept="chp4Y" id="5WcZbgat5n0" role="v3oSu">
              <ref role="cht4Q" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="1diLdO27Y1S" role="3cqZAp">
        <node concept="2GrKxI" id="1diLdO27Y1T" role="2Gsz3X">
          <property role="TrG5h" value="group" />
        </node>
        <node concept="3clFbS" id="1diLdO27Y1V" role="2LFqv$">
          <node concept="3cpWs8" id="1diLdO27Y2I" role="3cqZAp">
            <node concept="3cpWsn" id="1diLdO27Y2J" role="3cpWs9">
              <property role="TrG5h" value="sb" />
              <node concept="3uibUv" id="1diLdO27Y2K" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
              <node concept="2ShNRf" id="1diLdO27Y2M" role="33vP2m">
                <node concept="1pGfFk" id="1diLdO27Y2O" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="1diLdO27Y2T" role="3cqZAp">
            <node concept="3clFbS" id="1diLdO27Y2U" role="2LFqv$">
              <node concept="3clFbF" id="1diLdO27Y38" role="3cqZAp">
                <node concept="2OqwBi" id="1diLdO27Y3u" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTsdR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1diLdO27K1D" resolve="helper" />
                  </node>
                  <node concept="liA8E" id="1diLdO27Y8o" role="2OqNvi">
                    <ref role="37wK5l" to="tken:1diLdO27Y3A" resolve="printUnsatisfiedDependencies" />
                    <node concept="37vLTw" id="3GM_nagTr9W" role="37wK5m">
                      <ref role="3cqZAo" node="1diLdO27Y2J" resolve="sb" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTASy" role="37wK5m">
                      <ref role="3cqZAo" node="1diLdO27Y2V" resolve="module" />
                    </node>
                    <node concept="3clFbT" id="1diLdO27Y9y" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1diLdO27Y2V" role="1Duv9x">
              <property role="TrG5h" value="module" />
              <node concept="3Tqbb2" id="1diLdO27Y33" role="1tU5fm">
                <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="1diLdO27Y2X" role="1DdaDG">
              <node concept="2OqwBi" id="1diLdO27Y2Y" role="2Oq$k0">
                <node concept="1PxgMI" id="1diLdO27Y2Z" role="2Oq$k0">
                  <node concept="2GrUjf" id="1diLdO27Y30" role="1m5AlR">
                    <ref role="2Gs0qQ" node="1diLdO27Y1T" resolve="group" />
                  </node>
                  <node concept="chp4Y" id="714IaVdGYXt" role="3oSUPX">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1diLdO27Y31" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:5HVSRHdUL82" resolve="group" />
                </node>
              </node>
              <node concept="3Tsc0h" id="1diLdO27Y32" role="2OqNvi">
                <ref role="3TtcxE" to="kdzh:1jjYQYSgYJu" resolve="modules" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1diLdO27Y9F" role="3cqZAp">
            <node concept="3clFbS" id="1diLdO27Y9G" role="3clFbx">
              <node concept="2MkqsV" id="1diLdO27Ya_" role="3cqZAp">
                <node concept="2OqwBi" id="1diLdO27YaZ" role="2MkJ7o">
                  <node concept="37vLTw" id="3GM_nagTxZM" role="2Oq$k0">
                    <ref role="3cqZAo" node="1diLdO27Y2J" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="1diLdO27Yb4" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  </node>
                </node>
                <node concept="2OE7Q9" id="1diLdO27Yc2" role="1urrC5">
                  <ref role="2OEe5H" to="kdzh:5HVSRHdUL82" resolve="group" />
                </node>
                <node concept="1PxgMI" id="1diLdO27YbX" role="1urrMF">
                  <node concept="2GrUjf" id="1diLdO27Yb5" role="1m5AlR">
                    <ref role="2Gs0qQ" node="1diLdO27Y1T" resolve="group" />
                  </node>
                  <node concept="chp4Y" id="714IaVdGYXc" role="3oSUPX">
                    <ref role="cht4Q" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="1diLdO27Yax" role="3clFbw">
              <node concept="2OqwBi" id="1diLdO27Ya4" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTxiL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1diLdO27Y2J" resolve="sb" />
                </node>
                <node concept="liA8E" id="1diLdO27Yac" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~AbstractStringBuilder.length()" resolve="length" />
                </node>
              </node>
              <node concept="3cmrfG" id="1diLdO27Ya$" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5WcZbgasTzz" role="2GsD0m">
          <node concept="2OqwBi" id="1diLdO27Y1Y" role="2Oq$k0">
            <node concept="1YBJjd" id="1diLdO27Y2n" role="2Oq$k0">
              <ref role="1YBMHb" node="1diLdO27K13" resolve="plugin" />
            </node>
            <node concept="3Tsc0h" id="1diLdO27Y20" role="2OqNvi">
              <ref role="3TtcxE" to="kdzh:5HVSRHdUrJE" resolve="content" />
            </node>
          </node>
          <node concept="v3k3i" id="5WcZbgasWOb" role="2OqNvi">
            <node concept="chp4Y" id="5WcZbgasWWQ" role="v3oSu">
              <ref role="cht4Q" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1diLdO27K13" role="1YuTPh">
      <property role="TrG5h" value="plugin" />
      <ref role="1YaFvo" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
    </node>
  </node>
  <node concept="18kY7G" id="3Iy_$1rNnDg">
    <property role="TrG5h" value="check_BuildMps_GeneratorOptions" />
    <property role="3GE5qa" value="Project" />
    <node concept="3clFbS" id="3Iy_$1rNnDh" role="18ibNy">
      <node concept="3clFbJ" id="3Iy_$1rNodM" role="3cqZAp">
        <node concept="3clFbS" id="3Iy_$1rNodN" role="3clFbx">
          <node concept="3cpWs8" id="3Iy_$1rNqzm" role="3cqZAp">
            <node concept="3cpWsn" id="3Iy_$1rNqzp" role="3cpWs9">
              <property role="TrG5h" value="bp" />
              <node concept="3Tqbb2" id="3Iy_$1rNqzl" role="1tU5fm">
                <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
              </node>
              <node concept="1PxgMI" id="3Iy_$1rNt6N" role="33vP2m">
                <node concept="2OqwBi" id="3Iy_$1rNqEc" role="1m5AlR">
                  <node concept="1YBJjd" id="3Iy_$1rNq$1" role="2Oq$k0">
                    <ref role="1YBMHb" node="3Iy_$1rNnDj" resolve="genOpts" />
                  </node>
                  <node concept="1mfA1w" id="3Iy_$1rNrNv" role="2OqNvi" />
                </node>
                <node concept="chp4Y" id="714IaVdGYWf" role="3oSUPX">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3Iy_$1rNHIG" role="3cqZAp">
            <node concept="3clFbS" id="3Iy_$1rNHIJ" role="3clFbx">
              <node concept="a7r0C" id="3Iy_$1rNJcJ" role="3cqZAp">
                <node concept="Xl_RD" id="3Iy_$1rNJmL" role="a7wSD">
                  <property role="Xl_RC" value="Generation options are expected to be specified at most once per project" />
                </node>
                <node concept="1YBJjd" id="3Iy_$1rNJxd" role="1urrMF">
                  <ref role="1YBMHb" node="3Iy_$1rNnDj" resolve="genOpts" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3Iy_$1rNGbj" role="3clFbw">
              <node concept="2OqwBi" id="3Iy_$1rNw5V" role="2Oq$k0">
                <node concept="2OqwBi" id="3Iy_$1rNtkx" role="2Oq$k0">
                  <node concept="37vLTw" id="3Iy_$1rNtde" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Iy_$1rNqzp" resolve="bp" />
                  </node>
                  <node concept="3Tsc0h" id="3Iy_$1rNuqX" role="2OqNvi">
                    <ref role="3TtcxE" to="3ior:6qcrfIJFfrM" resolve="parts" />
                  </node>
                </node>
                <node concept="3zZkjj" id="3Iy_$1rNAfY" role="2OqNvi">
                  <node concept="1bVj0M" id="3Iy_$1rNAg0" role="23t8la">
                    <node concept="3clFbS" id="3Iy_$1rNAg1" role="1bW5cS">
                      <node concept="3clFbF" id="3Iy_$1rNAsu" role="3cqZAp">
                        <node concept="1Wc70l" id="3Iy_$1rNF3H" role="3clFbG">
                          <node concept="3y3z36" id="3Iy_$1rNFvQ" role="3uHU7w">
                            <node concept="1YBJjd" id="3Iy_$1rNFG0" role="3uHU7w">
                              <ref role="1YBMHb" node="3Iy_$1rNnDj" resolve="genOpts" />
                            </node>
                            <node concept="37vLTw" id="3Iy_$1rNFfO" role="3uHU7B">
                              <ref role="3cqZAo" node="5W7E4fV0WDC" resolve="it" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3Iy_$1rNAzr" role="3uHU7B">
                            <node concept="37vLTw" id="3Iy_$1rNAst" role="2Oq$k0">
                              <ref role="3cqZAo" node="5W7E4fV0WDC" resolve="it" />
                            </node>
                            <node concept="1mIQ4w" id="3Iy_$1rNBQF" role="2OqNvi">
                              <node concept="chp4Y" id="3Iy_$1rNC3B" role="cj9EA">
                                <ref role="cht4Q" to="kdzh:3Iy_$1rrNGr" resolve="BuildMps_GeneratorOptions" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="5W7E4fV0WDC" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5W7E4fV0WDD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="3Iy_$1rNHms" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3Iy_$1rNq24" role="3clFbw">
          <node concept="2OqwBi" id="3Iy_$1rNoiD" role="2Oq$k0">
            <node concept="1YBJjd" id="3Iy_$1rNoe4" role="2Oq$k0">
              <ref role="1YBMHb" node="3Iy_$1rNnDj" resolve="genOpts" />
            </node>
            <node concept="1mfA1w" id="3Iy_$1rNprp" role="2OqNvi" />
          </node>
          <node concept="1mIQ4w" id="3Iy_$1rNqva" role="2OqNvi">
            <node concept="chp4Y" id="3Iy_$1rNqwy" role="cj9EA">
              <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3Iy_$1rNnDj" role="1YuTPh">
      <property role="TrG5h" value="genOpts" />
      <ref role="1YaFvo" to="kdzh:3Iy_$1rrNGr" resolve="BuildMps_GeneratorOptions" />
    </node>
  </node>
  <node concept="18kY7G" id="7ndynavW9JU">
    <property role="TrG5h" value="check_ModuleXml_SpecifiesClasspath" />
    <property role="3GE5qa" value="Layout" />
    <node concept="3clFbS" id="7ndynavW9JV" role="18ibNy">
      <node concept="3clFbJ" id="7ndynavWca4" role="3cqZAp">
        <node concept="3clFbS" id="7ndynavWca6" role="3clFbx">
          <node concept="3cpWs6" id="7ndynavWicJ" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="7ndynavWfMU" role="3clFbw">
          <node concept="2OqwBi" id="7ndynavWcoz" role="2Oq$k0">
            <node concept="1YBJjd" id="7ndynavWcet" role="2Oq$k0">
              <ref role="1YBMHb" node="7ndynavW9JX" resolve="n" />
            </node>
            <node concept="3Tsc0h" id="7ndynavWcFI" role="2OqNvi">
              <ref role="3TtcxE" to="kdzh:7ndynavQeWF" resolve="classpathEntries" />
            </node>
          </node>
          <node concept="3GX2aA" id="7ndynavWic6" role="2OqNvi" />
        </node>
      </node>
      <node concept="3cpWs8" id="7ndynavVWsW" role="3cqZAp">
        <node concept="3cpWsn" id="7ndynavVWsX" role="3cpWs9">
          <property role="TrG5h" value="containerJar" />
          <node concept="3Tqbb2" id="7ndynavVWsO" role="1tU5fm">
            <ref role="ehGHo" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
          </node>
          <node concept="1PxgMI" id="7ndynavVWsY" role="33vP2m">
            <property role="1BlNFB" value="true" />
            <node concept="chp4Y" id="7ndynavVWsZ" role="3oSUPX">
              <ref role="cht4Q" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
            </node>
            <node concept="2OqwBi" id="7ndynavVWt0" role="1m5AlR">
              <node concept="1PxgMI" id="7ndynavVWt1" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="7ndynavVWt2" role="3oSUPX">
                  <ref role="cht4Q" to="3ior:6qcrfIJF4LS" resolve="BuildLayout_Folder" />
                </node>
                <node concept="2OqwBi" id="7ndynavVWt3" role="1m5AlR">
                  <node concept="1YBJjd" id="7ndynavW9Se" role="2Oq$k0">
                    <ref role="1YBMHb" node="7ndynavW9JX" resolve="n" />
                  </node>
                  <node concept="1mfA1w" id="7ndynavVWt5" role="2OqNvi" />
                </node>
              </node>
              <node concept="1mfA1w" id="7ndynavVWt6" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7ndynavW9Xr" role="3cqZAp">
        <node concept="3clFbS" id="7ndynavW9Xt" role="3clFbx">
          <node concept="a7r0C" id="7ndynavWiNt" role="3cqZAp">
            <node concept="Xl_RD" id="7ndynavWnBM" role="a7wSD">
              <property role="Xl_RC" value="Module descriptor inside a jar with compiled classes doesn't specify classpath" />
            </node>
            <node concept="2OE7Q9" id="7ndynavWnSO" role="1urrC5">
              <ref role="2OEe5H" to="kdzh:7ndynavQeWF" resolve="classpathEntries" />
            </node>
            <node concept="1YBJjd" id="7ndynavWnFo" role="1urrMF">
              <ref role="1YBMHb" node="7ndynavW9JX" resolve="n" />
            </node>
            <node concept="3Cnw8n" id="7ndynavWwiv" role="1urrFz">
              <ref role="QpYPw" node="7ndynavWohJ" resolve="SetModuleJarClasspathEntry" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="7ndynavWbXc" role="3clFbw">
          <node concept="2OqwBi" id="7ndynavWa1_" role="3uHU7B">
            <node concept="37vLTw" id="7ndynavWa1A" role="2Oq$k0">
              <ref role="3cqZAo" node="7ndynavVWsX" resolve="containerJar" />
            </node>
            <node concept="3x8VRR" id="7ndynavWbTH" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="7ndynavWc0P" role="3uHU7w">
            <node concept="2OqwBi" id="7ndynavWc0Q" role="2Oq$k0">
              <node concept="2OqwBi" id="7ndynavWc0R" role="2Oq$k0">
                <node concept="37vLTw" id="7ndynavWc0S" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ndynavVWsX" resolve="containerJar" />
                </node>
                <node concept="3Tsc0h" id="7ndynavWc0T" role="2OqNvi">
                  <ref role="3TtcxE" to="3ior:6qcrfIJF4Me" resolve="children" />
                </node>
              </node>
              <node concept="v3k3i" id="7ndynavWc0U" role="2OqNvi">
                <node concept="chp4Y" id="7ndynavWc0V" role="v3oSu">
                  <ref role="cht4Q" to="3ior:2fQZjorRfO$" resolve="BuildLayout_CompileOutputOf" />
                </node>
              </node>
            </node>
            <node concept="3GX2aA" id="7ndynavWc0W" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7ndynavW9JX" role="1YuTPh">
      <property role="TrG5h" value="n" />
      <ref role="1YaFvo" to="kdzh:6CY5wCYZA9O" resolve="BuildMpsLayout_ModuleXml" />
    </node>
  </node>
  <node concept="Q5z_Y" id="7ndynavWohJ">
    <property role="TrG5h" value="SetModuleJarClasspathEntry" />
    <node concept="Q5ZZ6" id="7ndynavWohK" role="Q6x$H">
      <node concept="3clFbS" id="7ndynavWohL" role="2VODD2">
        <node concept="3cpWs8" id="7ndynavWq$S" role="3cqZAp">
          <node concept="3cpWsn" id="7ndynavWq$T" role="3cpWs9">
            <property role="TrG5h" value="moduleXml" />
            <node concept="3Tqbb2" id="7ndynavWq$Q" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:6CY5wCYZA9O" resolve="BuildMpsLayout_ModuleXml" />
            </node>
            <node concept="1PxgMI" id="7ndynavWq$U" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="7ndynavWq$V" role="3oSUPX">
                <ref role="cht4Q" to="kdzh:6CY5wCYZA9O" resolve="BuildMpsLayout_ModuleXml" />
              </node>
              <node concept="Q6c8r" id="7ndynavWq$W" role="1m5AlR" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ndynavWpEy" role="3cqZAp">
          <node concept="37vLTI" id="7ndynavWvR6" role="3clFbG">
            <node concept="Xl_RD" id="7ndynavWw7S" role="37vLTx">
              <property role="Xl_RC" value="." />
            </node>
            <node concept="2OqwBi" id="7ndynavWv1x" role="37vLTJ">
              <node concept="2OqwBi" id="7ndynavWsm6" role="2Oq$k0">
                <node concept="2OqwBi" id="7ndynavWqKr" role="2Oq$k0">
                  <node concept="37vLTw" id="7ndynavWq$X" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ndynavWq$T" resolve="moduleXml" />
                  </node>
                  <node concept="3Tsc0h" id="7ndynavWqTe" role="2OqNvi">
                    <ref role="3TtcxE" to="kdzh:7ndynavQeWF" resolve="classpathEntries" />
                  </node>
                </node>
                <node concept="WFELt" id="7ndynavWuAE" role="2OqNvi" />
              </node>
              <node concept="3TrcHB" id="7ndynavWvqt" role="2OqNvi">
                <ref role="3TsBF5" to="kdzh:QkG2t1bKwB" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="7ndynavWwIY" role="QzAvj">
      <node concept="3clFbS" id="7ndynavWwIZ" role="2VODD2">
        <node concept="3clFbF" id="7ndynavWwRr" role="3cqZAp">
          <node concept="Xl_RD" id="7ndynavWwRq" role="3clFbG">
            <property role="Xl_RC" value="Add classpath entry that corresponds to jar root" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="14TUqehtZ2_">
    <property role="TrG5h" value="check_BuildMpsLayout_ModuleXml_CustomJarLocation" />
    <property role="3GE5qa" value="Layout" />
    <node concept="3clFbS" id="14TUqehtZ2A" role="18ibNy">
      <node concept="3SKdUt" id="14TUqehuDFy" role="3cqZAp">
        <node concept="1PaTwC" id="ATZLwXo0_q" role="1aUNEU">
          <node concept="3oM_SD" id="ATZLwXo0_r" role="1PaTwD">
            <property role="3oM_SC" value="if" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_s" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_t" role="1PaTwD">
            <property role="3oM_SC" value="CustomJarLocation" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_u" role="1PaTwD">
            <property role="3oM_SC" value="points" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_v" role="1PaTwD">
            <property role="3oM_SC" value="maps" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_w" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_x" role="1PaTwD">
            <property role="3oM_SC" value="file" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_y" role="1PaTwD">
            <property role="3oM_SC" value="module" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_z" role="1PaTwD">
            <property role="3oM_SC" value="has" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_$" role="1PaTwD">
            <property role="3oM_SC" value="no" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0__" role="1PaTwD">
            <property role="3oM_SC" value="dependency" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_A" role="1PaTwD">
            <property role="3oM_SC" value="to," />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_B" role="1PaTwD">
            <property role="3oM_SC" value="report" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_C" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_D" role="1PaTwD">
            <property role="3oM_SC" value="warning." />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_E" role="1PaTwD">
            <property role="3oM_SC" value="Such" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_F" role="1PaTwD">
            <property role="3oM_SC" value="a" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_G" role="1PaTwD">
            <property role="3oM_SC" value="mapping" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_H" role="1PaTwD">
            <property role="3oM_SC" value="would" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_I" role="1PaTwD">
            <property role="3oM_SC" value="get" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_J" role="1PaTwD">
            <property role="3oM_SC" value="ignored" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_K" role="1PaTwD">
            <property role="3oM_SC" value="when" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_L" role="1PaTwD">
            <property role="3oM_SC" value="generating" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_M" role="1PaTwD">
            <property role="3oM_SC" value="module.xml" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="14TUqehtZIb" role="3cqZAp">
        <node concept="3cpWsn" id="14TUqehtZIe" role="3cpWs9">
          <property role="TrG5h" value="module" />
          <node concept="3Tqbb2" id="14TUqehtZI9" role="1tU5fm">
            <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
          </node>
          <node concept="2OqwBi" id="14TUqehtZRq" role="33vP2m">
            <node concept="1PxgMI" id="14TUqehtZEi" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="14TUqehtZEj" role="3oSUPX">
                <ref role="cht4Q" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
              </node>
              <node concept="2OqwBi" id="14TUqehtZEk" role="1m5AlR">
                <node concept="1YBJjd" id="14TUqehtZEl" role="2Oq$k0">
                  <ref role="1YBMHb" node="14TUqehtZ2C" resolve="jarLoc" />
                </node>
                <node concept="1mfA1w" id="14TUqehtZEm" role="2OqNvi" />
              </node>
            </node>
            <node concept="3TrEf2" id="14TUqehu0aN" role="2OqNvi">
              <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" resolve="module" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="14TUqehtZIP" role="3cqZAp">
        <node concept="3clFbS" id="14TUqehtZIR" role="3clFbx">
          <node concept="3clFbF" id="14TUqehu0xq" role="3cqZAp">
            <node concept="37vLTI" id="14TUqehu0LJ" role="3clFbG">
              <node concept="2OqwBi" id="14TUqehu1Oi" role="37vLTx">
                <node concept="1PxgMI" id="14TUqehu1yy" role="2Oq$k0">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="14TUqehu1Al" role="3oSUPX">
                    <ref role="cht4Q" to="kdzh:6CY5wCYZA9O" resolve="BuildMpsLayout_ModuleXml" />
                  </node>
                  <node concept="2OqwBi" id="14TUqehu0W$" role="1m5AlR">
                    <node concept="1YBJjd" id="14TUqehu0NT" role="2Oq$k0">
                      <ref role="1YBMHb" node="14TUqehtZ2C" resolve="jarLoc" />
                    </node>
                    <node concept="1mfA1w" id="14TUqehu15z" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3TrEf2" id="14TUqehu2ct" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:6CY5wCYZA9P" resolve="module" />
                </node>
              </node>
              <node concept="37vLTw" id="14TUqehu0xo" role="37vLTJ">
                <ref role="3cqZAo" node="14TUqehtZIe" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="14TUqehu0t9" role="3clFbw">
          <node concept="10Nm6u" id="14TUqehu0x8" role="3uHU7w" />
          <node concept="37vLTw" id="14TUqehu0j1" role="3uHU7B">
            <ref role="3cqZAo" node="14TUqehtZIe" resolve="module" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="14TUqehu2kW" role="3cqZAp">
        <node concept="3clFbS" id="14TUqehu2kY" role="3clFbx">
          <node concept="3cpWs6" id="14TUqehu2$0" role="3cqZAp" />
        </node>
        <node concept="3fqX7Q" id="14TUqehu3Jn" role="3clFbw">
          <node concept="2OqwBi" id="14TUqehu3Jp" role="3fr31v">
            <node concept="37vLTw" id="14TUqehu3Jq" role="2Oq$k0">
              <ref role="3cqZAo" node="14TUqehtZIe" resolve="module" />
            </node>
            <node concept="1mIQ4w" id="14TUqehu3Jr" role="2OqNvi">
              <node concept="chp4Y" id="14TUqehu3Js" role="cj9EA">
                <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="14TUqehuC9_" role="3cqZAp">
        <node concept="3cpWsn" id="14TUqehuC9A" role="3cpWs9">
          <property role="TrG5h" value="expectedPath" />
          <property role="3TUv4t" value="true" />
          <node concept="17QB3L" id="14TUqehuC9v" role="1tU5fm" />
          <node concept="2OqwBi" id="14TUqehuC9B" role="33vP2m">
            <node concept="2OqwBi" id="14TUqehuC9C" role="2Oq$k0">
              <node concept="1YBJjd" id="14TUqehuC9D" role="2Oq$k0">
                <ref role="1YBMHb" node="14TUqehtZ2C" resolve="jarLoc" />
              </node>
              <node concept="3TrEf2" id="14TUqehuC9E" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:3LQl9buGqe5" resolve="path" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufOReN0" role="2OqNvi">
              <ref role="37wK5l" to="vbkb:4Kip2_918YF" resolve="getRelativePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3SKdUt" id="14TUqehupY8" role="3cqZAp">
        <node concept="1PaTwC" id="ATZLwXo0_N" role="1aUNEU">
          <node concept="3oM_SD" id="ATZLwXo0_O" role="1PaTwD">
            <property role="3oM_SC" value="This" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_P" role="1PaTwD">
            <property role="3oM_SC" value="logic" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_Q" role="1PaTwD">
            <property role="3oM_SC" value="is" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_R" role="1PaTwD">
            <property role="3oM_SC" value="from" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_S" role="1PaTwD">
            <property role="3oM_SC" value="BuildMpsLayout_ModuleXml" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_T" role="1PaTwD">
            <property role="3oM_SC" value="template" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_U" role="1PaTwD">
            <property role="3oM_SC" value="in" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_V" role="1PaTwD">
            <property role="3oM_SC" value="main" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_W" role="1PaTwD">
            <property role="3oM_SC" value="MC" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_X" role="1PaTwD">
            <property role="3oM_SC" value="to" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_Y" role="1PaTwD">
            <property role="3oM_SC" value="create" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0_Z" role="1PaTwD">
            <property role="3oM_SC" value="&lt;library&gt;" />
          </node>
          <node concept="3oM_SD" id="ATZLwXo0A0" role="1PaTwD">
            <property role="3oM_SC" value="elements" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="4JJgtNkEHRI" role="3cqZAp">
        <node concept="3cpWsn" id="4JJgtNkEHRJ" role="3cpWs9">
          <property role="TrG5h" value="moduleDeps" />
          <node concept="A3Dl8" id="4JJgtNkEEAI" role="1tU5fm">
            <node concept="3Tqbb2" id="4JJgtNkEEAL" role="A3Ik2">
              <ref role="ehGHo" to="kdzh:4zCbl23d1MR" resolve="BuildMps_ModuleDependency" />
            </node>
          </node>
          <node concept="2OqwBi" id="4JJgtNkEHRK" role="33vP2m">
            <node concept="3zqWPK" id="70OdufOReN2" role="2OqNvi">
              <ref role="37wK5l" to="2txq:3QtfwKhgryb" resolve="getDependenciesUnwrapped" />
            </node>
            <node concept="1PxgMI" id="4JJgtNkEHRM" role="2Oq$k0">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="4JJgtNkEHRN" role="3oSUPX">
                <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
              </node>
              <node concept="37vLTw" id="4JJgtNkEHRO" role="1m5AlR">
                <ref role="3cqZAo" node="14TUqehtZIe" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="14TUqehuEer" role="3cqZAp">
        <node concept="3clFbS" id="14TUqehuEet" role="3clFbx">
          <node concept="3cpWs6" id="14TUqehuEE8" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="14TUqehuwCk" role="3clFbw">
          <node concept="2OqwBi" id="14TUqehuw9L" role="2Oq$k0">
            <node concept="2OqwBi" id="14TUqehuhwY" role="2Oq$k0">
              <node concept="37vLTw" id="4JJgtNkEHRP" role="2Oq$k0">
                <ref role="3cqZAo" node="4JJgtNkEHRJ" resolve="moduleDeps" />
              </node>
              <node concept="v3k3i" id="6sXV9450riV" role="2OqNvi">
                <node concept="chp4Y" id="6sXV9450syU" role="v3oSu">
                  <ref role="cht4Q" to="kdzh:3HwLahs6nSp" resolve="BuildMps_ModuleDependencyJar" />
                </node>
              </node>
            </node>
            <node concept="13MTOL" id="14TUqehuwk7" role="2OqNvi">
              <ref role="13MTZf" to="kdzh:3HwLahs6nSq" resolve="path" />
            </node>
          </node>
          <node concept="2HwmR7" id="14TUqehuwUD" role="2OqNvi">
            <node concept="1bVj0M" id="14TUqehuwUF" role="23t8la">
              <node concept="3clFbS" id="14TUqehuwUG" role="1bW5cS">
                <node concept="3clFbF" id="14TUqehux10" role="3cqZAp">
                  <node concept="17R0WA" id="14TUqehu_ap" role="3clFbG">
                    <node concept="2OqwBi" id="14TUqehuxci" role="3uHU7B">
                      <node concept="37vLTw" id="14TUqehux0Z" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0WDE" resolve="it" />
                      </node>
                      <node concept="3zqWPK" id="70OdufOReN4" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:4Kip2_918YF" resolve="getRelativePath" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="14TUqehuC9G" role="3uHU7w">
                      <ref role="3cqZAo" node="14TUqehuC9A" resolve="expectedPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="5W7E4fV0WDE" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5W7E4fV0WDF" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="4JJgtNkEIpD" role="3cqZAp">
        <node concept="3clFbS" id="4JJgtNkEIpE" role="3clFbx">
          <node concept="3cpWs6" id="4JJgtNkEIpF" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="4JJgtNkEIpG" role="3clFbw">
          <node concept="2OqwBi" id="4JJgtNkEJIx" role="2Oq$k0">
            <node concept="2OqwBi" id="4JJgtNkEIpH" role="2Oq$k0">
              <node concept="2OqwBi" id="4JJgtNkEIpI" role="2Oq$k0">
                <node concept="37vLTw" id="4JJgtNkEIpJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JJgtNkEHRJ" resolve="moduleDeps" />
                </node>
                <node concept="v3k3i" id="4JJgtNkEIpK" role="2OqNvi">
                  <node concept="chp4Y" id="4JJgtNkEIz1" role="v3oSu">
                    <ref role="cht4Q" to="kdzh:2L4pT56gYzV" resolve="BuildMps_ModuleDependencyOnJavaModule" />
                  </node>
                </node>
              </node>
              <node concept="13MTOL" id="4JJgtNkEJlZ" role="2OqNvi">
                <ref role="13MTZf" to="kdzh:6mTG60y20x2" resolve="javaLibLocation" />
              </node>
            </node>
            <node concept="1KnU$U" id="4JJgtNkEK0U" role="2OqNvi" />
          </node>
          <node concept="2HwmR7" id="4JJgtNkEIpN" role="2OqNvi">
            <node concept="1bVj0M" id="4JJgtNkEIpO" role="23t8la">
              <node concept="3clFbS" id="4JJgtNkEIpP" role="1bW5cS">
                <node concept="3clFbF" id="4JJgtNkEIpQ" role="3cqZAp">
                  <node concept="17R0WA" id="4JJgtNkEIpR" role="3clFbG">
                    <node concept="2OqwBi" id="4JJgtNkEIpS" role="3uHU7B">
                      <node concept="37vLTw" id="4JJgtNkEIpT" role="2Oq$k0">
                        <ref role="3cqZAo" node="5W7E4fV0WDG" resolve="it" />
                      </node>
                      <node concept="3zqWPK" id="70OdufOReN6" role="2OqNvi">
                        <ref role="37wK5l" to="vbkb:4Kip2_918YF" resolve="getRelativePath" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4JJgtNkEIpV" role="3uHU7w">
                      <ref role="3cqZAo" node="14TUqehuC9A" resolve="expectedPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="5W7E4fV0WDG" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5W7E4fV0WDH" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="a7r0C" id="14TUqehvdts" role="3cqZAp">
        <node concept="2YIFZM" id="14TUqehuFna" role="a7wSD">
          <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
          <node concept="Xl_RD" id="14TUqehuFMJ" role="37wK5m">
            <property role="Xl_RC" value="Module %s doesn't depend on %s, mapping doesn't make sense." />
          </node>
          <node concept="2OqwBi" id="14TUqehuIrZ" role="37wK5m">
            <node concept="37vLTw" id="14TUqehuIdz" role="2Oq$k0">
              <ref role="3cqZAo" node="14TUqehtZIe" resolve="module" />
            </node>
            <node concept="3TrcHB" id="14TUqehuIDF" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="37vLTw" id="14TUqehuK2f" role="37wK5m">
            <ref role="3cqZAo" node="14TUqehuC9A" resolve="expectedPath" />
          </node>
        </node>
        <node concept="1YBJjd" id="14TUqehverp" role="1urrMF">
          <ref role="1YBMHb" node="14TUqehtZ2C" resolve="jarLoc" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="14TUqehtZ2C" role="1YuTPh">
      <property role="TrG5h" value="jarLoc" />
      <ref role="1YaFvo" to="kdzh:3LQl9buGqe4" resolve="BuildMpsLayout_ModuleXml_CustomJarLocation" />
    </node>
  </node>
  <node concept="18kY7G" id="4Y6KxqRFYYX">
    <property role="TrG5h" value="check_BuildMps_TipsBundle" />
    <property role="3GE5qa" value="Project.TipsAndTricks.Package" />
    <node concept="3clFbS" id="4Y6KxqRFYYY" role="18ibNy">
      <node concept="3clFbJ" id="4Y6KxqRGj1s" role="3cqZAp">
        <node concept="3clFbS" id="4Y6KxqRGj1u" role="3clFbx">
          <node concept="3clFbJ" id="4Y6KxqRG1A8" role="3cqZAp">
            <node concept="3fqX7Q" id="4Y6KxqRG2Zq" role="3clFbw">
              <node concept="2OqwBi" id="4Y6KxqRG2Zs" role="3fr31v">
                <node concept="2OqwBi" id="4Y6KxqRG2Zt" role="2Oq$k0">
                  <node concept="1YBJjd" id="4Y6KxqRG2Zu" role="2Oq$k0">
                    <ref role="1YBMHb" node="4Y6KxqRFYZ0" resolve="buildMps_TipsBundle" />
                  </node>
                  <node concept="3TrcHB" id="4Y6KxqRG2Zv" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="4Y6KxqRG2Zw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                  <node concept="Xl_RD" id="4Y6KxqRG2Zx" role="37wK5m">
                    <property role="Xl_RC" value=".jar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4Y6KxqRG1Aa" role="3clFbx">
              <node concept="a7r0C" id="4Y6KxqRG32U" role="3cqZAp">
                <node concept="Xl_RD" id="1HQQX4XUAYd" role="a7wSD">
                  <property role="Xl_RC" value="should end with .jar" />
                </node>
                <node concept="1YBJjd" id="4Y6KxqRG3gZ" role="1urrMF">
                  <ref role="1YBMHb" node="4Y6KxqRFYZ0" resolve="buildMps_TipsBundle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="4Y6KxqRGk6h" role="3clFbw">
          <node concept="2OqwBi" id="4Y6KxqRGjfr" role="2Oq$k0">
            <node concept="1YBJjd" id="4Y6KxqRGj4w" role="2Oq$k0">
              <ref role="1YBMHb" node="4Y6KxqRFYZ0" resolve="buildMps_TipsBundle" />
            </node>
            <node concept="3TrcHB" id="4Y6KxqRGj_0" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="17RvpY" id="4Y6KxqRGkns" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="5_o80gNhmCP" role="3cqZAp">
        <node concept="3clFbS" id="5_o80gNhmCR" role="3clFbx">
          <node concept="a7r0C" id="5_o80gNhquJ" role="3cqZAp">
            <node concept="Xl_RD" id="5_o80gNhquL" role="a7wSD">
              <property role="Xl_RC" value="tips of should not be under jar" />
            </node>
            <node concept="1YBJjd" id="5_o80gNhquK" role="1urrMF">
              <ref role="1YBMHb" node="4Y6KxqRFYZ0" resolve="buildMps_TipsBundle" />
            </node>
          </node>
          <node concept="3clFbH" id="5_o80gNhmCQ" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="5_o80gNhoP_" role="3clFbw">
          <node concept="2OqwBi" id="5_o80gNhmQV" role="2Oq$k0">
            <node concept="1YBJjd" id="5_o80gNhmG0" role="2Oq$k0">
              <ref role="1YBMHb" node="4Y6KxqRFYZ0" resolve="buildMps_TipsBundle" />
            </node>
            <node concept="z$bX8" id="5_o80gNhnpF" role="2OqNvi" />
          </node>
          <node concept="2HwmR7" id="5_o80gNhpPD" role="2OqNvi">
            <node concept="1bVj0M" id="5_o80gNhpPF" role="23t8la">
              <node concept="3clFbS" id="5_o80gNhpPG" role="1bW5cS">
                <node concept="3clFbF" id="5_o80gNhpT3" role="3cqZAp">
                  <node concept="2OqwBi" id="5_o80gNhq3B" role="3clFbG">
                    <node concept="37vLTw" id="5_o80gNhpT2" role="2Oq$k0">
                      <ref role="3cqZAo" node="5W7E4fV0WDI" resolve="it" />
                    </node>
                    <node concept="1mIQ4w" id="5_o80gNhqg9" role="2OqNvi">
                      <node concept="chp4Y" id="5_o80gNhqn$" role="cj9EA">
                        <ref role="cht4Q" to="3ior:6qcrfIJF7Yq" resolve="BuildLayout_Jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="5W7E4fV0WDI" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5W7E4fV0WDJ" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4Y6KxqRFYZ0" role="1YuTPh">
      <property role="TrG5h" value="buildMps_TipsBundle" />
      <ref role="1YaFvo" to="kdzh:5Ux$AZuOzjJ" resolve="BuildMps_TipsPackage" />
    </node>
  </node>
  <node concept="18kY7G" id="8yBQgWkN2K">
    <property role="TrG5h" value="check_BuildMps_TipsMps" />
    <property role="3GE5qa" value="Project.TipsAndTricks.Collect" />
    <node concept="3clFbS" id="8yBQgWkN2L" role="18ibNy">
      <node concept="3clFbJ" id="8yBQgWkN2R" role="3cqZAp">
        <node concept="2OqwBi" id="8yBQgWkOIB" role="3clFbw">
          <node concept="2OqwBi" id="8yBQgWkNcq" role="2Oq$k0">
            <node concept="1YBJjd" id="8yBQgWkN33" role="2Oq$k0">
              <ref role="1YBMHb" node="8yBQgWkN2N" resolve="buildMps_TipsMps" />
            </node>
            <node concept="2TvwIu" id="8yBQgWkNrL" role="2OqNvi" />
          </node>
          <node concept="2HwmR7" id="8yBQgWkPuP" role="2OqNvi">
            <node concept="1bVj0M" id="8yBQgWkPuR" role="23t8la">
              <node concept="3clFbS" id="8yBQgWkPuS" role="1bW5cS">
                <node concept="3clFbF" id="8yBQgWkPya" role="3cqZAp">
                  <node concept="2OqwBi" id="8yBQgWkPGI" role="3clFbG">
                    <node concept="37vLTw" id="8yBQgWkPy9" role="2Oq$k0">
                      <ref role="3cqZAo" node="5W7E4fV0WDK" resolve="it" />
                    </node>
                    <node concept="1mIQ4w" id="8yBQgWkPTb" role="2OqNvi">
                      <node concept="chp4Y" id="8yBQgWkQ0x" role="cj9EA">
                        <ref role="cht4Q" to="kdzh:75N6Lqya9Ap" resolve="BuildMps_TipsMps" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="5W7E4fV0WDK" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5W7E4fV0WDL" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="8yBQgWkN2T" role="3clFbx">
          <node concept="a7r0C" id="8yBQgWkQ7y" role="3cqZAp">
            <node concept="Xl_RD" id="8yBQgWkQ7O" role="a7wSD">
              <property role="Xl_RC" value="Duplicated imports from MPS generic distribution" />
            </node>
            <node concept="1YBJjd" id="8yBQgWkQ9s" role="1urrMF">
              <ref role="1YBMHb" node="8yBQgWkN2N" resolve="buildMps_TipsMps" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="8yBQgWkN2N" role="1YuTPh">
      <property role="TrG5h" value="buildMps_TipsMps" />
      <ref role="1YaFvo" to="kdzh:75N6Lqya9Ap" resolve="BuildMps_TipsMps" />
    </node>
  </node>
  <node concept="18kY7G" id="6YEa3Ro5j24">
    <property role="TrG5h" value="check_BuildMps_TipsSolution" />
    <property role="3GE5qa" value="Project.TipsAndTricks.Collect" />
    <node concept="3clFbS" id="6YEa3Ro5j25" role="18ibNy">
      <node concept="3clFbJ" id="6YEa3Ro5jfB" role="3cqZAp">
        <node concept="2OqwBi" id="6YEa3Ro5jYx" role="3clFbw">
          <node concept="2OqwBi" id="6YEa3Ro5jpa" role="2Oq$k0">
            <node concept="1YBJjd" id="6YEa3Ro5jfN" role="2Oq$k0">
              <ref role="1YBMHb" node="6YEa3Ro5j27" resolve="buildMps_TipsSolution" />
            </node>
            <node concept="3TrEf2" id="6YEa3Ro5jBZ" role="2OqNvi">
              <ref role="3Tt5mk" to="kdzh:5J862cnMvcw" resolve="solution" />
            </node>
          </node>
          <node concept="3w_OXm" id="6YEa3Ro5kJq" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="6YEa3Ro5jfD" role="3clFbx">
          <node concept="2MkqsV" id="6YEa3Ro5ZJu" role="3cqZAp">
            <node concept="Xl_RD" id="6YEa3Ro5ZJx" role="2MkJ7o">
              <property role="Xl_RC" value="Empty link" />
            </node>
            <node concept="1YBJjd" id="6YEa3Ro5ZJw" role="1urrMF">
              <ref role="1YBMHb" node="6YEa3Ro5j27" resolve="buildMps_TipsSolution" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6YEa3Ro5Zzb" role="3cqZAp">
        <node concept="2OqwBi" id="6YEa3Ro6grO" role="3clFbw">
          <node concept="2OqwBi" id="6YEa3Ro5Zzd" role="2Oq$k0">
            <node concept="1YBJjd" id="6YEa3Ro5Zze" role="2Oq$k0">
              <ref role="1YBMHb" node="6YEa3Ro5j27" resolve="buildMps_TipsSolution" />
            </node>
            <node concept="3TrEf2" id="6YEa3Ro6g3z" role="2OqNvi">
              <ref role="3Tt5mk" to="kdzh:7uJAFPqNf3a" resolve="path" />
            </node>
          </node>
          <node concept="3w_OXm" id="6YEa3Ro6gDv" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="6YEa3Ro5Zzh" role="3clFbx">
          <node concept="2MkqsV" id="6YEa3Ro5ZPE" role="3cqZAp">
            <node concept="Xl_RD" id="6YEa3Ro5ZPH" role="2MkJ7o">
              <property role="Xl_RC" value="No path" />
            </node>
            <node concept="1YBJjd" id="6YEa3Ro5ZPG" role="1urrMF">
              <ref role="1YBMHb" node="6YEa3Ro5j27" resolve="buildMps_TipsSolution" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6YEa3Ro5j27" role="1YuTPh">
      <property role="TrG5h" value="buildMps_TipsSolution" />
      <ref role="1YaFvo" to="kdzh:75N6LqycVf4" resolve="BuildMps_TipsSolution" />
    </node>
  </node>
  <node concept="18kY7G" id="6mx7ef$AIYO">
    <property role="TrG5h" value="check_MpsTips" />
    <property role="3GE5qa" value="Project.TipsAndTricks.Collect" />
    <node concept="3clFbS" id="6mx7ef$AIYP" role="18ibNy">
      <node concept="3clFbJ" id="4Y6KxqRsi2e" role="3cqZAp">
        <node concept="3clFbS" id="4Y6KxqRsi2g" role="3clFbx">
          <node concept="3clFbJ" id="6mx7ef$B1s2" role="3cqZAp">
            <node concept="3clFbS" id="6mx7ef$B1s4" role="3clFbx">
              <node concept="2MkqsV" id="6mx7ef$B3PM" role="3cqZAp">
                <node concept="Xl_RD" id="6mx7ef$B3Q1" role="2MkJ7o">
                  <property role="Xl_RC" value="Duplicate names of Tips &amp; Tricks" />
                </node>
                <node concept="1YBJjd" id="4Y6KxqRrORX" role="1urrMF">
                  <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6mx7ef$B2tH" role="3clFbw">
              <node concept="2HwmR7" id="6mx7ef$B3ep" role="2OqNvi">
                <node concept="1bVj0M" id="6mx7ef$B3er" role="23t8la">
                  <node concept="3clFbS" id="6mx7ef$B3es" role="1bW5cS">
                    <node concept="3clFbF" id="6mx7ef$B3hI" role="3cqZAp">
                      <node concept="2OqwBi" id="4Y6KxqRrNde" role="3clFbG">
                        <node concept="2OqwBi" id="4Y6KxqRrMia" role="2Oq$k0">
                          <node concept="37vLTw" id="6mx7ef$B3hH" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WDM" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="4Y6KxqRrM_Y" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4Y6KxqRrNG1" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="2OqwBi" id="4Y6KxqRrO9B" role="37wK5m">
                            <node concept="1YBJjd" id="4Y6KxqRrNN8" role="2Oq$k0">
                              <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                            </node>
                            <node concept="3TrcHB" id="4Y6KxqRrOsn" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="5W7E4fV0WDM" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5W7E4fV0WDN" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4Y6KxqRs3xH" role="2Oq$k0">
                <node concept="2OqwBi" id="4Y6KxqRs3xI" role="2Oq$k0">
                  <node concept="1YBJjd" id="4Y6KxqRs3xJ" role="2Oq$k0">
                    <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                  </node>
                  <node concept="2TvwIu" id="4Y6KxqRs3xK" role="2OqNvi" />
                </node>
                <node concept="v3k3i" id="4Y6KxqRs3xL" role="2OqNvi">
                  <node concept="chp4Y" id="4Y6KxqRs3xM" role="v3oSu">
                    <ref role="cht4Q" to="kdzh:75N6Lqy0tuW" resolve="BuildMps_Tips" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="4Y6KxqRsny2" role="3clFbw">
          <node concept="2OqwBi" id="4Y6KxqRsny4" role="3fr31v">
            <node concept="2OqwBi" id="4Y6KxqRsny5" role="2Oq$k0">
              <node concept="2OqwBi" id="4Y6KxqRsny6" role="2Oq$k0">
                <node concept="1YBJjd" id="4Y6KxqRsny7" role="2Oq$k0">
                  <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                </node>
                <node concept="2TvwIu" id="4Y6KxqRsny8" role="2OqNvi" />
              </node>
              <node concept="v3k3i" id="4Y6KxqRsny9" role="2OqNvi">
                <node concept="chp4Y" id="4Y6KxqRsnya" role="v3oSu">
                  <ref role="cht4Q" to="kdzh:75N6Lqy0tuW" resolve="BuildMps_Tips" />
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="4Y6KxqRsnyb" role="2OqNvi">
              <node concept="1bVj0M" id="4Y6KxqRsnyc" role="23t8la">
                <node concept="3clFbS" id="4Y6KxqRsnyd" role="1bW5cS">
                  <node concept="3clFbF" id="4Y6KxqRsnye" role="3cqZAp">
                    <node concept="2OqwBi" id="4Y6KxqRsnyf" role="3clFbG">
                      <node concept="2OqwBi" id="4Y6KxqRsnyg" role="2Oq$k0">
                        <node concept="37vLTw" id="4Y6KxqRsnyh" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0WDO" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="4Y6KxqRsnyi" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="17RlXB" id="4Y6KxqRsnyj" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WDO" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WDP" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5_o80gNgmOG" role="3cqZAp">
        <node concept="3clFbS" id="5_o80gNgmOI" role="3clFbx">
          <node concept="a7r0C" id="5_o80gNgsxw" role="3cqZAp">
            <node concept="Xl_RD" id="5_o80gNgsxP" role="a7wSD">
              <property role="Xl_RC" value="No tips &amp; tricks imported" />
            </node>
            <node concept="1YBJjd" id="5_o80gNgsyK" role="1urrMF">
              <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5_o80gNgp0n" role="3clFbw">
          <node concept="2OqwBi" id="5_o80gNgn04" role="2Oq$k0">
            <node concept="1YBJjd" id="5_o80gNgmPU" role="2Oq$k0">
              <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
            </node>
            <node concept="3Tsc0h" id="5_o80gNgniO" role="2OqNvi">
              <ref role="3TtcxE" to="kdzh:75N6Lqya9An" resolve="imports" />
            </node>
          </node>
          <node concept="1v1jN8" id="5_o80gNgswR" role="2OqNvi" />
        </node>
      </node>
      <node concept="3clFbJ" id="60F4CoOluIN" role="3cqZAp">
        <node concept="3clFbS" id="60F4CoOluIP" role="3clFbx">
          <node concept="Dpp1Q" id="60F4CoOmqhw" role="3cqZAp">
            <node concept="Xl_RD" id="60F4CoOmqhM" role="Dpw9R">
              <property role="Xl_RC" value="Tips should be packaged to build layout" />
            </node>
            <node concept="1YBJjd" id="60F4CoOmqi0" role="1urrMF">
              <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="60F4CoOmpBa" role="3clFbw">
          <node concept="2OqwBi" id="60F4CoOmpBc" role="3fr31v">
            <node concept="2OqwBi" id="60F4CoOmpBd" role="2Oq$k0">
              <node concept="2OqwBi" id="60F4CoOmpBe" role="2Oq$k0">
                <node concept="2OqwBi" id="60F4CoOmpBf" role="2Oq$k0">
                  <node concept="1YBJjd" id="60F4CoOmpBg" role="2Oq$k0">
                    <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                  </node>
                  <node concept="2Xjw5R" id="60F4CoOmpBh" role="2OqNvi">
                    <node concept="1xMEDy" id="60F4CoOmpBi" role="1xVPHs">
                      <node concept="chp4Y" id="60F4CoOmpBj" role="ri$Ld">
                        <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3TrEf2" id="60F4CoOmpBk" role="2OqNvi">
                  <ref role="3Tt5mk" to="3ior:4RPz6WoY4Cs" resolve="layout" />
                </node>
              </node>
              <node concept="2Rf3mk" id="60F4CoOmCXp" role="2OqNvi">
                <node concept="1xMEDy" id="60F4CoOmCXr" role="1xVPHs">
                  <node concept="chp4Y" id="60F4CoOmDtr" role="ri$Ld">
                    <ref role="cht4Q" to="kdzh:5Ux$AZuOzjJ" resolve="BuildMps_TipsPackage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="60F4CoOmpBm" role="2OqNvi">
              <node concept="1bVj0M" id="60F4CoOmpBn" role="23t8la">
                <node concept="3clFbS" id="60F4CoOmpBo" role="1bW5cS">
                  <node concept="3clFbF" id="60F4CoOmpBp" role="3cqZAp">
                    <node concept="3clFbC" id="60F4CoOqMtR" role="3clFbG">
                      <node concept="2OqwBi" id="60F4CoOmpBt" role="3uHU7B">
                        <node concept="37vLTw" id="60F4CoOmpBw" role="2Oq$k0">
                          <ref role="3cqZAo" node="5W7E4fV0WDQ" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="60F4CoOmpBx" role="2OqNvi">
                          <ref role="3Tt5mk" to="kdzh:6mx7ef$41ej" resolve="tips" />
                        </node>
                      </node>
                      <node concept="1YBJjd" id="60F4CoOmpBs" role="3uHU7w">
                        <ref role="1YBMHb" node="6mx7ef$AIYR" resolve="mpsTips" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WDQ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WDR" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6mx7ef$AIYR" role="1YuTPh">
      <property role="TrG5h" value="mpsTips" />
      <ref role="1YaFvo" to="kdzh:75N6Lqy0tuW" resolve="BuildMps_Tips" />
    </node>
  </node>
  <node concept="18kY7G" id="36cV00CbxrN">
    <property role="TrG5h" value="IdeaPluginIsInLayout" />
    <node concept="3clFbS" id="36cV00CbxrO" role="18ibNy">
      <node concept="3cpWs8" id="36cV00CbCQd" role="3cqZAp">
        <node concept="3cpWsn" id="36cV00CbCQe" role="3cpWs9">
          <property role="TrG5h" value="buildProject" />
          <node concept="3Tqbb2" id="36cV00CbCQ9" role="1tU5fm">
            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
          </node>
          <node concept="2OqwBi" id="36cV00CbCQf" role="33vP2m">
            <node concept="1YBJjd" id="36cV00CbCQg" role="2Oq$k0">
              <ref role="1YBMHb" node="36cV00CbxrQ" resolve="ideaPlugin" />
            </node>
            <node concept="2Xjw5R" id="36cV00CbCQh" role="2OqNvi">
              <node concept="1xMEDy" id="36cV00CbCQi" role="1xVPHs">
                <node concept="chp4Y" id="36cV00CbCQj" role="ri$Ld">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="36cV00CbBZI" role="3cqZAp">
        <node concept="2GrKxI" id="36cV00CbBZJ" role="2Gsz3X">
          <property role="TrG5h" value="layoutNode" />
        </node>
        <node concept="2OqwBi" id="36cV00CbD9I" role="2GsD0m">
          <node concept="2OqwBi" id="36cV00CbDBy" role="2Oq$k0">
            <node concept="37vLTw" id="36cV00CbCQk" role="2Oq$k0">
              <ref role="3cqZAo" node="36cV00CbCQe" resolve="buildProject" />
            </node>
            <node concept="3TrEf2" id="36cV00CbDWv" role="2OqNvi">
              <ref role="3Tt5mk" to="3ior:4RPz6WoY4Cs" resolve="layout" />
            </node>
          </node>
          <node concept="2Rf3mk" id="36cV00CbDum" role="2OqNvi">
            <node concept="1xMEDy" id="36cV00CbDuo" role="1xVPHs">
              <node concept="chp4Y" id="36cV00CbE3z" role="ri$Ld">
                <ref role="cht4Q" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="36cV00CbBZL" role="2LFqv$">
          <node concept="3clFbJ" id="36cV00CbE7d" role="3cqZAp">
            <node concept="2OqwBi" id="36cV00CbEgU" role="3clFbw">
              <node concept="2GrUjf" id="36cV00CbE7p" role="2Oq$k0">
                <ref role="2Gs0qQ" node="36cV00CbBZJ" resolve="layoutNode" />
              </node>
              <node concept="3zqWPK" id="70OdufOReN8" role="2OqNvi">
                <ref role="37wK5l" to="vbkb:5FtnUVJQES1" resolve="exports" />
                <node concept="1YBJjd" id="70OdufOReNa" role="37wK5m">
                  <ref role="1YBMHb" node="36cV00CbxrQ" resolve="ideaPlugin" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="36cV00CbE7f" role="3clFbx">
              <node concept="3cpWs6" id="36cV00CbHVc" role="3cqZAp" />
            </node>
          </node>
        </node>
      </node>
      <node concept="a7r0C" id="36cV00CbIlg" role="3cqZAp">
        <node concept="Xl_RD" id="36cV00CbIuG" role="a7wSD">
          <property role="Xl_RC" value="The plugin is not found in the layout. It might cause problems for the dependencies of this plugin" />
        </node>
        <node concept="1YBJjd" id="36cV00CbIB4" role="1urrMF">
          <ref role="1YBMHb" node="36cV00CbxrQ" resolve="ideaPlugin" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="36cV00CbxrQ" role="1YuTPh">
      <property role="TrG5h" value="ideaPlugin" />
      <ref role="1YaFvo" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
    </node>
  </node>
  <node concept="18kY7G" id="A39Wmmu2mY">
    <property role="TrG5h" value="check_PackagingTypeIsSet" />
    <node concept="3clFbS" id="A39Wmmu2mZ" role="18ibNy">
      <node concept="3clFbJ" id="A39Wmmu2vg" role="3cqZAp">
        <node concept="2OqwBi" id="A39Wmmu3zC" role="3clFbw">
          <node concept="2OqwBi" id="A39Wmmu2GR" role="2Oq$k0">
            <node concept="1YBJjd" id="A39Wmmu2vs" role="2Oq$k0">
              <ref role="1YBMHb" node="A39Wmmu2n1" resolve="pluginLayout" />
            </node>
            <node concept="3TrEf2" id="A39Wmmu2Xv" role="2OqNvi">
              <ref role="3Tt5mk" to="kdzh:36cV00CpqRw" resolve="packagingType" />
            </node>
          </node>
          <node concept="3w_OXm" id="A39Wmmu4o_" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="A39Wmmu2vi" role="3clFbx">
          <node concept="a7r0C" id="A39Wmmu4qz" role="3cqZAp">
            <node concept="Xl_RD" id="A39Wmmu4qP" role="a7wSD">
              <property role="Xl_RC" value="Packaging type is not set, please change it to auto" />
            </node>
            <node concept="1YBJjd" id="A39Wmmu4rT" role="1urrMF">
              <ref role="1YBMHb" node="A39Wmmu2n1" resolve="pluginLayout" />
            </node>
            <node concept="3Cnw8n" id="A39Wmmu8Pi" role="1urrFz">
              <property role="ARO6o" value="true" />
              <ref role="QpYPw" node="A39Wmmu4so" resolve="SetPackagingTypeToAuto" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="A39Wmmu2n1" role="1YuTPh">
      <property role="TrG5h" value="pluginLayout" />
      <ref role="1YaFvo" to="kdzh:5HVSRHdUrHI" resolve="BuildMpsLayout_Plugin" />
    </node>
  </node>
  <node concept="Q5z_Y" id="A39Wmmu4so">
    <property role="TrG5h" value="SetPackagingTypeToAuto" />
    <node concept="Q5ZZ6" id="A39Wmmu4sp" role="Q6x$H">
      <node concept="3clFbS" id="A39Wmmu4sq" role="2VODD2">
        <node concept="3clFbF" id="A39Wmmu4sI" role="3cqZAp">
          <node concept="37vLTI" id="A39Wmmu8yF" role="3clFbG">
            <node concept="2ShNRf" id="A39Wmmu8D2" role="37vLTx">
              <node concept="3zrR0B" id="A39Wmmu8Bl" role="2ShVmc">
                <node concept="3Tqbb2" id="A39Wmmu8Bm" role="3zrR0E">
                  <ref role="ehGHo" to="kdzh:36cV00CpqQx" resolve="BuildMpsLayout_AutoPluginLayoutType" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="A39Wmmu4Ys" role="37vLTJ">
              <node concept="1PxgMI" id="A39Wmmu4M6" role="2Oq$k0">
                <node concept="chp4Y" id="A39Wmmu4ML" role="3oSUPX">
                  <ref role="cht4Q" to="kdzh:5HVSRHdUrHI" resolve="BuildMpsLayout_Plugin" />
                </node>
                <node concept="Q6c8r" id="A39Wmmu4sH" role="1m5AlR" />
              </node>
              <node concept="3TrEf2" id="A39Wmmu6Nd" role="2OqNvi">
                <ref role="3Tt5mk" to="kdzh:36cV00CpqRw" resolve="packagingType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3nXUieHENDV">
    <property role="TrG5h" value="check_IfModuleUsesResources" />
    <property role="3GE5qa" value="Project" />
    <node concept="3clFbS" id="3nXUieHENDW" role="18ibNy">
      <node concept="3clFbJ" id="3nXUieHENE8" role="3cqZAp">
        <node concept="2OqwBi" id="3nXUieHESN3" role="3clFbw">
          <node concept="2OqwBi" id="3nXUieHEPS1" role="2Oq$k0">
            <node concept="2OqwBi" id="3nXUieHENOL" role="2Oq$k0">
              <node concept="1YBJjd" id="3nXUieHENEk" role="2Oq$k0">
                <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
              </node>
              <node concept="3Tsc0h" id="3nXUieHEOe_" role="2OqNvi">
                <ref role="3TtcxE" to="kdzh:4zCbl23d1OL" resolve="sources" />
              </node>
            </node>
            <node concept="v3k3i" id="3nXUieHESwJ" role="2OqNvi">
              <node concept="chp4Y" id="3nXUieHESxI" role="v3oSu">
                <ref role="cht4Q" to="kdzh:EpEP7hVcc6" resolve="BuildMps_ModuleResources" />
              </node>
            </node>
          </node>
          <node concept="3GX2aA" id="3nXUieHESZB" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3nXUieHENEa" role="3clFbx">
          <node concept="3cpWs6" id="3nXUieHESZM" role="3cqZAp" />
        </node>
      </node>
      <node concept="3clFbJ" id="5gKFLIN128f" role="3cqZAp">
        <node concept="3clFbS" id="5gKFLIN128h" role="3clFbx">
          <node concept="3cpWs6" id="5gKFLIN1qH_" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="5gKFLIN1m8g" role="3clFbw">
          <node concept="2OqwBi" id="5gKFLIN1mzA" role="3uHU7w">
            <node concept="1YBJjd" id="5gKFLIN1mmx" role="2Oq$k0">
              <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
            </node>
            <node concept="3zqWPK" id="70OdufOReNb" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMij" resolve="isInTemplates" />
            </node>
          </node>
          <node concept="2OqwBi" id="5gKFLIN12UQ" role="3uHU7B">
            <node concept="2OqwBi" id="5gKFLIN12t$" role="2Oq$k0">
              <node concept="1YBJjd" id="5gKFLIN12gE" role="2Oq$k0">
                <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
              </node>
              <node concept="2Xjw5R" id="5gKFLIN12Ih" role="2OqNvi">
                <node concept="1xMEDy" id="5gKFLIN12Ij" role="1xVPHs">
                  <node concept="chp4Y" id="5gKFLIN12Ka" role="ri$Ld">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="5gKFLIN13aP" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="13ayn2xvC_r" role="3cqZAp">
        <node concept="3clFbS" id="13ayn2xvC_t" role="3clFbx">
          <node concept="3cpWs6" id="13ayn2xvE5w" role="3cqZAp" />
        </node>
        <node concept="2OqwBi" id="13ayn2xvDJi" role="3clFbw">
          <node concept="2OqwBi" id="13ayn2xvCF1" role="2Oq$k0">
            <node concept="1YBJjd" id="13ayn2xvCF2" role="2Oq$k0">
              <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
            </node>
            <node concept="3TrcHB" id="13ayn2xvCF3" role="2OqNvi">
              <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
            </node>
          </node>
          <node concept="17RlXB" id="13ayn2xvE5i" role="2OqNvi" />
        </node>
      </node>
      <node concept="3cpWs8" id="3nXUieHF5X8" role="3cqZAp">
        <node concept="3cpWsn" id="3nXUieHF5X9" role="3cpWs9">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="3nXUieHF5WS" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="2OqwBi" id="3nXUieHF5Xa" role="33vP2m">
            <node concept="2JrnkZ" id="3nXUieHF5Xb" role="2Oq$k0">
              <node concept="2OqwBi" id="3nXUieHF5Xc" role="2JrQYb">
                <node concept="1YBJjd" id="3nXUieHF5Xd" role="2Oq$k0">
                  <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
                </node>
                <node concept="I4A8Y" id="3nXUieHF5Xe" role="2OqNvi" />
              </node>
            </node>
            <node concept="liA8E" id="3nXUieHF5Xf" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3nXUieHF7cP" role="3cqZAp">
        <node concept="3cpWsn" id="3nXUieHF7cQ" role="3cpWs9">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="3nXUieHF6PP" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
          <node concept="2OqwBi" id="3nXUieHF7cR" role="33vP2m">
            <node concept="37vLTw" id="3nXUieHF7cS" role="2Oq$k0">
              <ref role="3cqZAo" node="3nXUieHF5X9" resolve="repo" />
            </node>
            <node concept="liA8E" id="3nXUieHF7cT" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId)" resolve="getModule" />
              <node concept="2OqwBi" id="3nXUieHF7cU" role="37wK5m">
                <node concept="2YIFZM" id="3nXUieHF7cV" role="2Oq$k0">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                </node>
                <node concept="liA8E" id="3nXUieHF7cW" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleId(java.lang.String)" resolve="createModuleId" />
                  <node concept="2OqwBi" id="3nXUieHF7cX" role="37wK5m">
                    <node concept="1YBJjd" id="3nXUieHF7cY" role="2Oq$k0">
                      <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
                    </node>
                    <node concept="3TrcHB" id="3nXUieHF7cZ" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3nXUieHF7jY" role="3cqZAp">
        <node concept="3clFbS" id="3nXUieHF7k0" role="3clFbx">
          <node concept="3cpWs6" id="3nXUieHF7xA" role="3cqZAp" />
        </node>
        <node concept="3clFbC" id="3nXUieHF7um" role="3clFbw">
          <node concept="10Nm6u" id="3nXUieHF7xm" role="3uHU7w" />
          <node concept="37vLTw" id="3nXUieHF7ns" role="3uHU7B">
            <ref role="3cqZAo" node="3nXUieHF7cQ" resolve="module" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3nXUieHF9AD" role="3cqZAp">
        <node concept="3clFbS" id="3nXUieHF9AF" role="3clFbx">
          <node concept="Dpp1Q" id="3nXUieHFaCJ" role="3cqZAp">
            <node concept="Xl_RD" id="3nXUieHFaDU" role="Dpw9R">
              <property role="Xl_RC" value="Module uses language that may produce resource files. Need resources entry to get these copied during build" />
            </node>
            <node concept="1YBJjd" id="3nXUieHFaDa" role="1urrMF">
              <ref role="1YBMHb" node="3nXUieHENDY" resolve="buildModule" />
            </node>
            <node concept="3Cnw8n" id="3nXUieHFaUZ" role="1urrFz">
              <ref role="QpYPw" node="3nXUieHFaRL" resolve="addModuleResources" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="3nXUieHF8lS" role="3clFbw">
          <node concept="2OqwBi" id="3nXUieHF7Ii" role="2Oq$k0">
            <node concept="37vLTw" id="3nXUieHF7Es" role="2Oq$k0">
              <ref role="3cqZAo" node="3nXUieHF7cQ" resolve="module" />
            </node>
            <node concept="liA8E" id="3nXUieHF7RA" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages()" resolve="getUsedLanguages" />
            </node>
          </node>
          <node concept="liA8E" id="3nXUieHF8U0" role="2OqNvi">
            <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
            <node concept="pHN19" id="3nXUieHF8Z6" role="37wK5m">
              <node concept="2V$Bhx" id="3nXUieHF9hr" role="2V$M_3">
                <property role="2V$B1T" value="982eb8df-2c96-4bd7-9963-11712ea622e5" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.resources" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3nXUieHENDY" role="1YuTPh">
      <property role="TrG5h" value="buildModule" />
      <ref role="1YaFvo" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
    </node>
  </node>
  <node concept="Q5z_Y" id="3nXUieHFaRL">
    <property role="3GE5qa" value="Project" />
    <property role="TrG5h" value="addModuleResources" />
    <node concept="Q5ZZ6" id="3nXUieHFaRM" role="Q6x$H">
      <node concept="3clFbS" id="3nXUieHFaRN" role="2VODD2">
        <node concept="3cpWs8" id="3nXUieHFbUa" role="3cqZAp">
          <node concept="3cpWsn" id="3nXUieHFbUb" role="3cpWs9">
            <property role="TrG5h" value="buildModule" />
            <node concept="3Tqbb2" id="3nXUieHFbTT" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
            </node>
            <node concept="1PxgMI" id="3nXUieHFbUc" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="3nXUieHFbUd" role="3oSUPX">
                <ref role="cht4Q" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
              </node>
              <node concept="Q6c8r" id="3nXUieHFbUe" role="1m5AlR" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3nXUieHFgNs" role="3cqZAp">
          <node concept="3cpWsn" id="3nXUieHFgNt" role="3cpWs9">
            <property role="TrG5h" value="bif" />
            <node concept="3Tqbb2" id="3nXUieHFgL7" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4zlO3QT8$m$" resolve="BuildInputFiles" />
            </node>
            <node concept="2OqwBi" id="3nXUieHFgNu" role="33vP2m">
              <node concept="2OqwBi" id="3nXUieHFgNv" role="2Oq$k0">
                <node concept="2OqwBi" id="3nXUieHF$aL" role="2Oq$k0">
                  <node concept="2OqwBi" id="3nXUieHF$aM" role="2Oq$k0">
                    <node concept="37vLTw" id="3nXUieHF$aN" role="2Oq$k0">
                      <ref role="3cqZAo" node="3nXUieHFbUb" resolve="buildModule" />
                    </node>
                    <node concept="3Tsc0h" id="3nXUieHF$aO" role="2OqNvi">
                      <ref role="3TtcxE" to="kdzh:4zCbl23d1OL" resolve="sources" />
                    </node>
                  </node>
                  <node concept="WFELt" id="3nXUieHF$aP" role="2OqNvi">
                    <ref role="1A0vxQ" to="kdzh:EpEP7hVcc6" resolve="BuildMps_ModuleResources" />
                  </node>
                </node>
                <node concept="3TrEf2" id="3nXUieHFgNx" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:EpEP7hVcc7" resolve="files" />
                </node>
              </node>
              <node concept="zfrQC" id="3nXUieHFgNy" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nXUieHFb_v" role="3cqZAp">
          <node concept="37vLTI" id="3nXUieHFATI" role="3clFbG">
            <node concept="2OqwBi" id="3nXUieHFh0S" role="37vLTJ">
              <node concept="37vLTw" id="3nXUieHFgNz" role="2Oq$k0">
                <ref role="3cqZAo" node="3nXUieHFgNt" resolve="bif" />
              </node>
              <node concept="3TrEf2" id="3nXUieHFhc8" role="2OqNvi">
                <ref role="3Tt5mk" to="3ior:4zlO3QT8$mA" resolve="dir" />
              </node>
            </node>
            <node concept="2OqwBi" id="3nXUieHFEPw" role="37vLTx">
              <node concept="2OqwBi" id="3nXUieHFD2j" role="2Oq$k0">
                <node concept="37vLTw" id="3nXUieHFCQ5" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nXUieHFbUb" resolve="buildModule" />
                </node>
                <node concept="3TrEf2" id="3nXUieHFDgE" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" resolve="path" />
                </node>
              </node>
              <node concept="3zqWPK" id="70OdufOReNd" role="2OqNvi">
                <ref role="37wK5l" to="vbkb:7wpYgMyTXsR" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3nXUieHFhfv" role="3cqZAp">
          <node concept="2OqwBi" id="3nXUieHFxN1" role="3clFbG">
            <node concept="2OqwBi" id="3nXUieHFx5R" role="2Oq$k0">
              <node concept="2OqwBi" id="3nXUieHFupF" role="2Oq$k0">
                <node concept="2OqwBi" id="3nXUieHFhg8" role="2Oq$k0">
                  <node concept="37vLTw" id="3nXUieHFhft" role="2Oq$k0">
                    <ref role="3cqZAo" node="3nXUieHFgNt" resolve="bif" />
                  </node>
                  <node concept="3Tsc0h" id="3nXUieHFhkn" role="2OqNvi">
                    <ref role="3TtcxE" to="3ior:4zlO3QT8$nR" resolve="selectors" />
                  </node>
                </node>
                <node concept="WFELt" id="3nXUieHFvRH" role="2OqNvi">
                  <ref role="1A0vxQ" to="3ior:7wpYgMyURJQ" resolve="BuildFileIncludesSelector" />
                </node>
              </node>
              <node concept="3TrcHB" id="3nXUieHFxi_" role="2OqNvi">
                <ref role="3TsBF5" to="3ior:7wpYgMyURJS" resolve="pattern" />
              </node>
            </node>
            <node concept="tyxLq" id="3nXUieHFylY" role="2OqNvi">
              <node concept="Xl_RD" id="nUYGvAJFSn" role="tz02z">
                <property role="Xl_RC" value="icons/**, resources/**" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="3nXUieHFb4N" role="QzAvj">
      <node concept="3clFbS" id="3nXUieHFb4O" role="2VODD2">
        <node concept="3clFbF" id="3nXUieHFb9o" role="3cqZAp">
          <node concept="Xl_RD" id="3nXUieHFb9n" role="3clFbG">
            <property role="Xl_RC" value="Add resources entry to copy generated resource files during build" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1RsDREw1P4h">
    <property role="3GE5qa" value="Layout" />
    <property role="TrG5h" value="check_PluginDescriptorLayout" />
    <node concept="3clFbS" id="1RsDREw1P4i" role="18ibNy">
      <node concept="3clFbJ" id="1RsDREw1Pn9" role="3cqZAp">
        <node concept="2OqwBi" id="1RsDREw1P$q" role="3clFbw">
          <node concept="1YBJjd" id="1RsDREw1Pnl" role="2Oq$k0">
            <ref role="1YBMHb" node="1RsDREw1PeS" resolve="buildMpsLayout_Plugin" />
          </node>
          <node concept="3zqWPK" id="70OdufOReNf" role="2OqNvi">
            <ref role="37wK5l" to="2txq:1RsDREvCrek" resolve="isPluginDescriptorPossiblyMissingInLayout" />
          </node>
        </node>
        <node concept="3clFbS" id="1RsDREw1Pnb" role="3clFbx">
          <node concept="a7r0C" id="1RsDREw1PFj" role="3cqZAp">
            <node concept="Xl_RD" id="1RsDREw1Q3u" role="a7wSD">
              <property role="Xl_RC" value="Plugin descriptor not detected in layout (lib/plugin.jar/META-INF/plugin descriptor ref or xml file)" />
            </node>
            <node concept="1YBJjd" id="1RsDREw1PF_" role="1urrMF">
              <ref role="1YBMHb" node="1RsDREw1PeS" resolve="buildMpsLayout_Plugin" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="1RsDREw1PeS" role="1YuTPh">
      <property role="TrG5h" value="buildMpsLayout_Plugin" />
      <ref role="1YaFvo" to="kdzh:5HVSRHdUrHI" resolve="BuildMpsLayout_Plugin" />
    </node>
  </node>
  <node concept="18kY7G" id="3Dx9CWlsEpa">
    <property role="TrG5h" value="check_BuildMPSPlugin" />
    <node concept="3clFbS" id="3Dx9CWlsEpb" role="18ibNy">
      <node concept="3clFbJ" id="3Dx9CWlsLOH" role="3cqZAp">
        <node concept="3clFbS" id="3Dx9CWlsLOJ" role="3clFbx">
          <node concept="Dpp1Q" id="3Dx9CWlsNXV" role="3cqZAp">
            <node concept="3Cnw8n" id="3Dx9CWlsO28" role="1urrFz">
              <ref role="QpYPw" node="3Dx9CWlsPt0" resolve="AddJavaPluginImport" />
            </node>
            <node concept="Xl_RD" id="3Dx9CWlsNYd" role="Dpw9R">
              <property role="Xl_RC" value="'mps' plugin relies on functionality of 'java' plugin, consider adding explicit import" />
            </node>
            <node concept="1YBJjd" id="3Dx9CWlsO1M" role="1urrMF">
              <ref role="1YBMHb" node="3Dx9CWlsEpd" resolve="mpsPlugin" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="3Dx9CWlsNLS" role="3clFbw">
          <node concept="2OqwBi" id="3Dx9CWlsMPH" role="3uHU7B">
            <node concept="2OqwBi" id="3Dx9CWlsLZM" role="2Oq$k0">
              <node concept="1YBJjd" id="3Dx9CWlsLOS" role="2Oq$k0">
                <ref role="1YBMHb" node="3Dx9CWlsEpd" resolve="mpsPlugin" />
              </node>
              <node concept="1mfA1w" id="3Dx9CWlsMz1" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="3Dx9CWlsN1V" role="2OqNvi">
              <node concept="chp4Y" id="3Dx9CWlsN5v" role="cj9EA">
                <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3Dx9CWlsLLM" role="3uHU7w">
            <node concept="2OqwBi" id="3Dx9CWlsIq_" role="2Oq$k0">
              <node concept="2OqwBi" id="3Dx9CWlsFSG" role="2Oq$k0">
                <node concept="1PxgMI" id="3Dx9CWlsFHm" role="2Oq$k0">
                  <node concept="chp4Y" id="3Dx9CWlsFHS" role="3oSUPX">
                    <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                  </node>
                  <node concept="2OqwBi" id="3Dx9CWlsEHl" role="1m5AlR">
                    <node concept="1YBJjd" id="3Dx9CWlsEyn" role="2Oq$k0">
                      <ref role="1YBMHb" node="3Dx9CWlsEpd" resolve="mpsPlugin" />
                    </node>
                    <node concept="1mfA1w" id="3Dx9CWlsF9K" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="3Dx9CWlsG6J" role="2OqNvi">
                  <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                </node>
              </node>
              <node concept="v3k3i" id="3Dx9CWlsLyh" role="2OqNvi">
                <node concept="chp4Y" id="3Dx9CWlsL$v" role="v3oSu">
                  <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="3Dx9CWlsNra" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3Dx9CWlsEpd" role="1YuTPh">
      <property role="TrG5h" value="mpsPlugin" />
      <ref role="1YaFvo" to="kdzh:KbRDZ75DBp" resolve="BuildMPSPlugin" />
    </node>
  </node>
  <node concept="Q5z_Y" id="3Dx9CWlsPt0">
    <property role="TrG5h" value="AddJavaPluginImport" />
    <node concept="Q5ZZ6" id="3Dx9CWlsPt1" role="Q6x$H">
      <node concept="3clFbS" id="3Dx9CWlsPt2" role="2VODD2">
        <node concept="3clFbF" id="3Dx9CWlsYqd" role="3cqZAp">
          <node concept="2OqwBi" id="3Dx9CWlt0VZ" role="3clFbG">
            <node concept="2OqwBi" id="3Dx9CWlsYqf" role="2Oq$k0">
              <node concept="1PxgMI" id="3Dx9CWlsYqg" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="3Dx9CWlsYqh" role="3oSUPX">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
                <node concept="2OqwBi" id="3Dx9CWlsYqi" role="1m5AlR">
                  <node concept="Q6c8r" id="3Dx9CWlsYqj" role="2Oq$k0" />
                  <node concept="2Rxl7S" id="3Dx9CWlsYqk" role="2OqNvi" />
                </node>
              </node>
              <node concept="3Tsc0h" id="3Dx9CWlsYql" role="2OqNvi">
                <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
              </node>
            </node>
            <node concept="2DeJg1" id="3Dx9CWlt4Mc" role="2OqNvi">
              <ref role="1A0vxQ" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="rPOND" id="3Dx9CWlsPtr" role="rPP22">
      <node concept="3clFbS" id="3Dx9CWlsPts" role="2VODD2">
        <node concept="3clFbF" id="3Dx9CWlsPyU" role="3cqZAp">
          <node concept="1Wc70l" id="1LRS2HavjHy" role="3clFbG">
            <node concept="2OqwBi" id="3Dx9CWlsXU2" role="3uHU7w">
              <node concept="2OqwBi" id="3Dx9CWlsTgW" role="2Oq$k0">
                <node concept="2OqwBi" id="3Dx9CWlsQj$" role="2Oq$k0">
                  <node concept="1PxgMI" id="3Dx9CWlsQ5f" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="3Dx9CWlsQ6d" role="3oSUPX">
                      <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                    </node>
                    <node concept="2OqwBi" id="3Dx9CWlsPM9" role="1m5AlR">
                      <node concept="Q6c8r" id="3Dx9CWlsPyT" role="2Oq$k0" />
                      <node concept="2Rxl7S" id="3Dx9CWlsPU8" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3Dx9CWlsQAn" role="2OqNvi">
                    <ref role="3TtcxE" to="3ior:5KZfyKsUqLK" resolve="plugins" />
                  </node>
                </node>
                <node concept="v3k3i" id="3Dx9CWlsXAf" role="2OqNvi">
                  <node concept="chp4Y" id="3Dx9CWlsXDl" role="v3oSu">
                    <ref role="cht4Q" to="3ior:5KZfyKsUqLB" resolve="BuildJavaPlugin" />
                  </node>
                </node>
              </node>
              <node concept="1v1jN8" id="3Dx9CWlsYo4" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1LRS2Havk2W" role="3uHU7B">
              <node concept="2OqwBi" id="1LRS2HavjSR" role="2Oq$k0">
                <node concept="Q6c8r" id="1LRS2HavjSS" role="2Oq$k0" />
                <node concept="2Rxl7S" id="1LRS2HavjST" role="2OqNvi" />
              </node>
              <node concept="1mIQ4w" id="1LRS2HavlR$" role="2OqNvi">
                <node concept="chp4Y" id="1LRS2HavlUo" role="cj9EA">
                  <ref role="cht4Q" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="3Dx9CWlt4Yk" role="QzAvj">
      <node concept="3clFbS" id="3Dx9CWlt4Yl" role="2VODD2">
        <node concept="3clFbF" id="3Dx9CWlt54X" role="3cqZAp">
          <node concept="Xl_RD" id="3Dx9CWlt54W" role="3clFbG">
            <property role="Xl_RC" value="Activate 'java' plugin dependency" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="3zf55DMrtOe">
    <property role="TrG5h" value="check_BuildMps_Branding" />
    <property role="3GE5qa" value="Project.Branding" />
    <node concept="3clFbS" id="3zf55DMrtOf" role="18ibNy">
      <node concept="3clFbJ" id="3zf55DMrtPw" role="3cqZAp">
        <node concept="2OqwBi" id="3zf55DMruUi" role="3clFbw">
          <node concept="2OqwBi" id="3zf55DMru1l" role="2Oq$k0">
            <node concept="1YBJjd" id="3zf55DMrtPD" role="2Oq$k0">
              <ref role="1YBMHb" node="3zf55DMrtOh" resolve="branding" />
            </node>
            <node concept="3TrEf2" id="3zf55DMruvo" role="2OqNvi">
              <ref role="3Tt5mk" to="kdzh:FnaIS$F2cd" resolve="company" />
            </node>
          </node>
          <node concept="3w_OXm" id="3zf55DMrvj$" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="3zf55DMrtPy" role="3clFbx">
          <node concept="a7r0C" id="3zf55DMrvoQ" role="3cqZAp">
            <node concept="Xl_RD" id="3zf55DMrvp0" role="a7wSD">
              <property role="Xl_RC" value="Company information is not specified; the standalone application will fail to start" />
            </node>
            <node concept="1YBJjd" id="3zf55DMrvpJ" role="1urrMF">
              <ref role="1YBMHb" node="3zf55DMrtOh" resolve="branding" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3zf55DMrtOh" role="1YuTPh">
      <property role="TrG5h" value="branding" />
      <ref role="1YaFvo" to="kdzh:6Iq8148eRud" resolve="BuildMps_Branding" />
    </node>
  </node>
</model>

