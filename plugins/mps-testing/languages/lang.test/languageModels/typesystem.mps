<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpeh" ref="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="tpeq" ref="r:00000000-0000-4000-0000-011c895902fe(jetbrains.mps.lang.smodel.typesystem)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" implicit="true" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ngI" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1224760201579" name="jetbrains.mps.lang.typesystem.structure.InfoStatement" flags="nn" index="Dpp1Q">
        <child id="1224760230762" name="infoText" index="Dpw9R" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096620180" name="jetbrains.mps.lang.typesystem.structure.ReferenceMessageTarget" flags="ng" index="2OE7Q9">
        <reference id="1227096645744" name="linkDeclaration" index="2OEe5H" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246643443" name="messageTarget" index="1urrC5" />
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
      <concept id="1174663314467" name="jetbrains.mps.lang.typesystem.structure.CreateComparableEquationStatement" flags="nn" index="1ZoVOM" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="hBxWoh3">
    <property role="TrG5h" value="typeof_TestNodeReference" />
    <node concept="3clFbS" id="hBxWoh4" role="18ibNy">
      <node concept="3cpWs8" id="hBxYg20" role="3cqZAp">
        <node concept="3cpWsn" id="hBxYg21" role="3cpWs9">
          <property role="TrG5h" value="concept" />
          <node concept="3Tqbb2" id="6ALWH9fZ9fV" role="1tU5fm">
            <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
          </node>
          <node concept="2YIFZM" id="4RDU6R_DyGJ" role="33vP2m">
            <ref role="37wK5l" to="tpeq:4RDU6R_Aj3j" resolve="closestConcept4NodeType" />
            <ref role="1Pybhc" to="tpeq:h9nq4jh" resolve="RulesUtil" />
            <node concept="2OqwBi" id="4RDU6R_DyGL" role="37wK5m">
              <node concept="2OqwBi" id="4RDU6R_DyGM" role="2Oq$k0">
                <node concept="1YBJjd" id="4RDU6R_DyGN" role="2Oq$k0">
                  <ref role="1YBMHb" node="hBxWoh5" resolve="nodeToCheck" />
                </node>
                <node concept="3TrEf2" id="4RDU6R_DyGO" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:hBxOPr6" resolve="declaration" />
                </node>
              </node>
              <node concept="1mfA1w" id="4RDU6R_DyGP" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="hBxWumM" role="3cqZAp">
        <node concept="mw_s8" id="hBxWve1" role="1ZfhKB">
          <node concept="2c44tf" id="hBxXA0w" role="mwGJk">
            <node concept="3Tqbb2" id="hBxXWYG" role="2c44tc">
              <node concept="2c44tb" id="hBxXXL0" role="lGtFl">
                <property role="2qtEX8" value="concept" />
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                <node concept="37vLTw" id="3GM_nagTvSd" role="2c44t1">
                  <ref role="3cqZAo" node="hBxYg21" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hBxWumP" role="1ZfhK$">
          <node concept="1Z2H0r" id="hBxWsUe" role="mwGJk">
            <node concept="1YBJjd" id="hBxWtD7" role="1Z2MuG">
              <ref role="1YBMHb" node="hBxWoh5" resolve="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hBxWoh5" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp5g:hBxON8j" resolve="TestNodeReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="hCJE7wz">
    <property role="TrG5h" value="typeof_AssertMatch" />
    <node concept="3clFbS" id="hCJE7w$" role="18ibNy">
      <node concept="2Gpval" id="hCJEwE2" role="3cqZAp">
        <node concept="2GrKxI" id="hCJEwE3" role="2Gsz3X">
          <property role="TrG5h" value="node" />
        </node>
        <node concept="2OqwBi" id="hCJEyoY" role="2GsD0m">
          <node concept="1YBJjd" id="hCJEy2f" role="2Oq$k0">
            <ref role="1YBMHb" node="hCJE7w_" resolve="nodeToCheck" />
          </node>
          <node concept="3Tsc0h" id="hCJEyxm" role="2OqNvi">
            <ref role="3TtcxE" to="tp5g:hCJA96l" resolve="before" />
          </node>
        </node>
        <node concept="3clFbS" id="hCJEwE5" role="2LFqv$">
          <node concept="1ZobV4" id="hCJM4HG" role="3cqZAp">
            <node concept="mw_s8" id="hCJM4HH" role="1ZfhK$">
              <node concept="1Z2H0r" id="hCJM4HI" role="mwGJk">
                <node concept="2GrUjf" id="hCJM4HJ" role="1Z2MuG">
                  <ref role="2Gs0qQ" node="hCJEwE3" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hCJM4HK" role="1ZfhKB">
              <node concept="2c44tf" id="hCJM4HL" role="mwGJk">
                <node concept="3Tqbb2" id="hCJM4HM" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="hCJHWz5" role="3cqZAp">
        <node concept="2GrKxI" id="hCJHWz6" role="2Gsz3X">
          <property role="TrG5h" value="node" />
        </node>
        <node concept="2OqwBi" id="hCJHWz7" role="2GsD0m">
          <node concept="1YBJjd" id="hCJHWz8" role="2Oq$k0">
            <ref role="1YBMHb" node="hCJE7w_" resolve="nodeToCheck" />
          </node>
          <node concept="3Tsc0h" id="hCJHZn1" role="2OqNvi">
            <ref role="3TtcxE" to="tp5g:hCJAdgf" resolve="after" />
          </node>
        </node>
        <node concept="3clFbS" id="hCJHWza" role="2LFqv$">
          <node concept="1ZobV4" id="hCJM3Im" role="3cqZAp">
            <node concept="mw_s8" id="hCJM3In" role="1ZfhK$">
              <node concept="1Z2H0r" id="hCJM3Io" role="mwGJk">
                <node concept="2GrUjf" id="hCJM3Ip" role="1Z2MuG">
                  <ref role="2Gs0qQ" node="hCJHWz6" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="hCJM3Iq" role="1ZfhKB">
              <node concept="2c44tf" id="hCJM3Ir" role="mwGJk">
                <node concept="3Tqbb2" id="hCJM3Is" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1_o_46" id="5ZcqSl_Rjpf" role="3cqZAp">
        <node concept="1_o_bx" id="5ZcqSl_Rjph" role="1_o_by">
          <node concept="1_o_bG" id="5ZcqSl_Rjpj" role="1_o_aQ">
            <property role="TrG5h" value="nodeBefore" />
          </node>
          <node concept="2OqwBi" id="5ZcqSl_Rj$w" role="1_o_bz">
            <node concept="1YBJjd" id="5ZcqSl_RjqP" role="2Oq$k0">
              <ref role="1YBMHb" node="hCJE7w_" resolve="nodeToCheck" />
            </node>
            <node concept="3Tsc0h" id="5ZcqSl_RjO4" role="2OqNvi">
              <ref role="3TtcxE" to="tp5g:hCJA96l" resolve="before" />
            </node>
          </node>
        </node>
        <node concept="1_o_bx" id="5ZcqSl_RjTo" role="1_o_by">
          <node concept="1_o_bG" id="5ZcqSl_RjTp" role="1_o_aQ">
            <property role="TrG5h" value="nodeAfter" />
          </node>
          <node concept="2OqwBi" id="5ZcqSl_Rk4a" role="1_o_bz">
            <node concept="1YBJjd" id="5ZcqSl_RjUv" role="2Oq$k0">
              <ref role="1YBMHb" node="hCJE7w_" resolve="nodeToCheck" />
            </node>
            <node concept="3Tsc0h" id="5ZcqSl_RkkI" role="2OqNvi">
              <ref role="3TtcxE" to="tp5g:hCJAdgf" resolve="after" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5ZcqSl_Rjpn" role="2LFqv$">
          <node concept="1X3_iC" id="5ZcqSl_RmXg" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="1Z5TYs" id="hFv29iM" role="8Wnug">
              <node concept="mw_s8" id="hFv29Gf" role="1ZfhKB">
                <node concept="1Z2H0r" id="hFv29Gg" role="mwGJk">
                  <node concept="3M$PaV" id="5ZcqSl_RkxD" role="1Z2MuG">
                    <ref role="3M$S_o" node="5ZcqSl_RjTp" resolve="nodeAfter" />
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="hFv29iP" role="1ZfhK$">
                <node concept="1Z2H0r" id="hFv26pB" role="mwGJk">
                  <node concept="3M$PaV" id="5ZcqSl_RkxF" role="1Z2MuG">
                    <ref role="3M$S_o" node="5ZcqSl_Rjpj" resolve="nodeBefore" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1ZoVOM" id="5ZcqSl_RFLh" role="3cqZAp">
            <property role="3wDh2S" value="false" />
            <node concept="mw_s8" id="5ZcqSl_RFLj" role="1ZfhK$">
              <node concept="1Z2H0r" id="5ZcqSl_RFLk" role="mwGJk">
                <node concept="3M$PaV" id="5ZcqSl_RFLl" role="1Z2MuG">
                  <ref role="3M$S_o" node="5ZcqSl_Rjpj" resolve="nodeBefore" />
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="5ZcqSl_RFLm" role="1ZfhKB">
              <node concept="1Z2H0r" id="5ZcqSl_RFLn" role="mwGJk">
                <node concept="3M$PaV" id="5ZcqSl_RFLo" role="1Z2MuG">
                  <ref role="3M$S_o" node="5ZcqSl_RjTp" resolve="nodeAfter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hCJE7w_" role="1YuTPh">
      <property role="TrG5h" value="nodeToCheck" />
      <ref role="1YaFvo" to="tp5g:hCJA54K" resolve="AssertMatch" />
    </node>
  </node>
  <node concept="18kY7G" id="hIdQMiN">
    <property role="TrG5h" value="checkTestMethodDataflow" />
    <node concept="3clFbS" id="hIdQMiO" role="18ibNy">
      <node concept="3clFbF" id="hNAO8h1" role="3cqZAp">
        <node concept="2YIFZM" id="79XQS8VgLae" role="3clFbG">
          <ref role="37wK5l" to="tpeh:79XQS8VgL7r" resolve="checkDataFlow" />
          <ref role="1Pybhc" to="tpeh:hNACUz_" resolve="DataFlowUtil" />
          <node concept="2OqwBi" id="79XQS8VgLaf" role="37wK5m">
            <node concept="1YBJjd" id="79XQS8VgLag" role="2Oq$k0">
              <ref role="1YBMHb" node="hIdQRfr" resolve="nodesTestMethod" />
            </node>
            <node concept="3TrEf2" id="79XQS8VgLah" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hIdQRfr" role="1YuTPh">
      <property role="TrG5h" value="nodesTestMethod" />
      <ref role="1YaFvo" to="tp5g:hHlHkQ8" resolve="NodesTestMethod" />
    </node>
  </node>
  <node concept="1YbPZF" id="hRNnbDw">
    <property role="TrG5h" value="typeof_ModelExpression" />
    <property role="3GE5qa" value="expression" />
    <node concept="3clFbS" id="hRNnbDx" role="18ibNy">
      <node concept="1Z5TYs" id="5hxrPJSoI3H" role="3cqZAp">
        <node concept="mw_s8" id="5hxrPJSoI45" role="1ZfhK$">
          <node concept="1Z2H0r" id="5hxrPJSoI41" role="mwGJk">
            <node concept="1YBJjd" id="5hxrPJSoI4S" role="1Z2MuG">
              <ref role="1YBMHb" node="hRNnbDy" resolve="expression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5hxrPJSoI5A" role="1ZfhKB">
          <node concept="2c44tf" id="5hxrPJSoI5y" role="mwGJk">
            <node concept="H_c77" id="5hxrPJSoI64" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hRNnbDy" role="1YuTPh">
      <property role="TrG5h" value="expression" />
      <ref role="1YaFvo" to="tp5g:hPjGwIs" resolve="ModelExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="hRNo2tn">
    <property role="TrG5h" value="typeof_ProjectExpression" />
    <property role="3GE5qa" value="expression" />
    <node concept="3clFbS" id="hRNo2to" role="18ibNy">
      <node concept="1Z5TYs" id="hSU_o8Y" role="3cqZAp">
        <node concept="mw_s8" id="hSU_o8Z" role="1ZfhK$">
          <node concept="1Z2H0r" id="hSU_o90" role="mwGJk">
            <node concept="1YBJjd" id="hSU_o91" role="1Z2MuG">
              <ref role="1YBMHb" node="hRNo2tp" resolve="expression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="hSU_o92" role="1ZfhKB">
          <node concept="2c44tf" id="hSU_o93" role="mwGJk">
            <node concept="3uibUv" id="4X4PJUnn4Ut" role="2c44tc">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="hRNo2tp" role="1YuTPh">
      <property role="TrG5h" value="expression" />
      <ref role="1YaFvo" to="tp5g:hPjxXux" resolve="ProjectExpression" />
    </node>
  </node>
  <node concept="1YbPZF" id="50vRVamfPZv">
    <property role="TrG5h" value="typeof_EditorComponentExpression" />
    <property role="3GE5qa" value="expression" />
    <node concept="3clFbS" id="50vRVamfPZw" role="18ibNy">
      <node concept="1Z5TYs" id="50vRVamfU0w" role="3cqZAp">
        <node concept="mw_s8" id="50vRVamfU0x" role="1ZfhKB">
          <node concept="2c44tf" id="50vRVamfU0y" role="mwGJk">
            <node concept="3uibUv" id="50vRVamfUL$" role="2c44tc">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="50vRVamfU0$" role="1ZfhK$">
          <node concept="1Z2H0r" id="50vRVamfU0_" role="mwGJk">
            <node concept="1YBJjd" id="50vRVamfU0A" role="1Z2MuG">
              <ref role="1YBMHb" node="50vRVamfPZx" resolve="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="50vRVamfPZx" role="1YuTPh">
      <property role="TrG5h" value="expression" />
      <ref role="1YaFvo" to="tp5g:50vRVameF3Z" resolve="EditorComponentExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="3CVcUJxN1tW">
    <property role="TrG5h" value="check_DragMouseStatement" />
    <property role="3GE5qa" value="editor" />
    <node concept="3clFbS" id="3CVcUJxN1B1" role="18ibNy">
      <node concept="3clFbJ" id="3CVcUJxNrn5" role="3cqZAp">
        <node concept="3clFbS" id="3CVcUJxNrn8" role="3clFbx">
          <node concept="2MkqsV" id="3CVcUJxNutM" role="3cqZAp">
            <node concept="Xl_RD" id="3CVcUJxNuu4" role="2MkJ7o">
              <property role="Xl_RC" value="Drag Mouse statement should be located inside Press Mouse statement" />
            </node>
            <node concept="1YBJjd" id="3CVcUJxNuuo" role="1urrMF">
              <ref role="1YBMHb" node="3CVcUJxN1B3" resolve="dragMouseStatement" />
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="3CVcUJxNuoM" role="3clFbw">
          <node concept="10Nm6u" id="3CVcUJxNuoX" role="3uHU7w" />
          <node concept="2OqwBi" id="3CVcUJxN3tG" role="3uHU7B">
            <node concept="1YBJjd" id="3CVcUJxN3tH" role="2Oq$k0">
              <ref role="1YBMHb" node="3CVcUJxN1B3" resolve="dragMouseStatement" />
            </node>
            <node concept="3zqWPK" id="70OdufORdAL" role="2OqNvi">
              <ref role="37wK5l" to="tp5o:3CVcUJxN49_" resolve="getPressMouseStatement" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3CVcUJxN1B3" role="1YuTPh">
      <property role="TrG5h" value="dragMouseStatement" />
      <ref role="1YaFvo" to="tp5g:bG3Ez5na2z" resolve="DragMouseStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="7JT4LO$rKvf">
    <property role="TrG5h" value="typeof_InvokeIntentionStatement" />
    <property role="3GE5qa" value="editor" />
    <node concept="3clFbS" id="7JT4LO$rKvg" role="18ibNy">
      <node concept="3clFbJ" id="7JT4LO$rKvm" role="3cqZAp">
        <node concept="2OqwBi" id="7JT4LO$rT8t" role="3clFbw">
          <node concept="2OqwBi" id="7JT4LO$rT8u" role="2Oq$k0">
            <node concept="1YBJjd" id="7JT4LO$rT8v" role="2Oq$k0">
              <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
            </node>
            <node concept="3TrEf2" id="7JT4LO$rT8w" role="2OqNvi">
              <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
            </node>
          </node>
          <node concept="1mIQ4w" id="7JT4LO$rT8x" role="2OqNvi">
            <node concept="chp4Y" id="7JT4LO$rT8y" role="cj9EA">
              <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="4aGUDa$4Yx6" role="3clFbx">
          <node concept="3clFbJ" id="4aGUDa$4ZKH" role="3cqZAp">
            <node concept="3clFbS" id="4aGUDa$4ZKJ" role="3clFbx">
              <node concept="2MkqsV" id="4aGUDa$514Z" role="3cqZAp">
                <node concept="Xl_RD" id="4aGUDa$515e" role="2MkJ7o">
                  <property role="Xl_RC" value="Missing parameter value for parameterized intention" />
                </node>
                <node concept="2OE7Q9" id="4aGUDa$517a" role="1urrC5">
                  <ref role="2OEe5H" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                </node>
                <node concept="1YBJjd" id="4aGUDa$516H" role="1urrMF">
                  <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                </node>
              </node>
              <node concept="3cpWs6" id="4aGUDa$52BA" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="4aGUDa$50EO" role="3clFbw">
              <node concept="2OqwBi" id="4aGUDa$4ZV9" role="2Oq$k0">
                <node concept="1YBJjd" id="4aGUDa$4ZL$" role="2Oq$k0">
                  <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                </node>
                <node concept="3TrEf2" id="4aGUDa$50mN" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                </node>
              </node>
              <node concept="3w_OXm" id="4aGUDa$5133" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="4aGUDa$560R" role="3cqZAp" />
          <node concept="3cpWs8" id="7JT4LO$rSND" role="3cqZAp">
            <node concept="3cpWsn" id="7JT4LO$rSNE" role="3cpWs9">
              <property role="TrG5h" value="decl" />
              <node concept="3Tqbb2" id="7JT4LO$rSNA" role="1tU5fm">
                <ref role="ehGHo" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
              </node>
              <node concept="1PxgMI" id="7JT4LO$rSNF" role="33vP2m">
                <node concept="2OqwBi" id="7JT4LO$rSNG" role="1m5AlR">
                  <node concept="1YBJjd" id="7JT4LO$rSNH" role="2Oq$k0">
                    <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                  </node>
                  <node concept="3TrEf2" id="7JT4LO$rSNI" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:hPMFYKr" resolve="intention" />
                  </node>
                </node>
                <node concept="chp4Y" id="714IaVdGZ4g" role="3oSUPX">
                  <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7JT4LO$rT83" role="3cqZAp" />
          <node concept="3clFbJ" id="7JT4LO$rTKR" role="3cqZAp">
            <node concept="3clFbS" id="7JT4LO$rTKT" role="3clFbx">
              <node concept="3cpWs6" id="7JT4LO$rVwf" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7JT4LO$rUTN" role="3clFbw">
              <node concept="2OqwBi" id="7JT4LO$rTZD" role="2Oq$k0">
                <node concept="37vLTw" id="7JT4LO$rTLC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JT4LO$rSNE" resolve="decl" />
                </node>
                <node concept="3TrEf2" id="7JT4LO$rUt5" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3j:i3dlsyr" resolve="queryFunction" />
                </node>
              </node>
              <node concept="3w_OXm" id="7JT4LO$rVtv" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="7JT4LO$rVwi" role="3cqZAp" />
          <node concept="3cpWs8" id="7JT4LO$rQSE" role="3cqZAp">
            <node concept="3cpWsn" id="7JT4LO$rQSK" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3Tqbb2" id="7JT4LO$rQT8" role="1tU5fm">
                <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
              </node>
              <node concept="2OqwBi" id="7JT4LO$rRpB" role="33vP2m">
                <node concept="2OqwBi" id="7JT4LO$rQTs" role="2Oq$k0">
                  <node concept="37vLTw" id="7JT4LO$rSNJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JT4LO$rSNE" resolve="decl" />
                  </node>
                  <node concept="3TrEf2" id="7JT4LO$rQTx" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3j:i3dlsyr" resolve="queryFunction" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7JT4LO$rRQ6" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp3j:i3ddBrI" resolve="paramType" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7JT4LO$rVyq" role="3cqZAp">
            <node concept="3clFbS" id="7JT4LO$rVys" role="3clFbx">
              <node concept="3cpWs6" id="7JT4LO$rVQj" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="7JT4LO$rVF_" role="3clFbw">
              <node concept="37vLTw" id="7JT4LO$rVzl" role="2Oq$k0">
                <ref role="3cqZAo" node="7JT4LO$rQSK" resolve="type" />
              </node>
              <node concept="3w_OXm" id="7JT4LO$rVO9" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="7JT4LO$rVQm" role="3cqZAp" />
          <node concept="1ZobV4" id="7JT4LO$rNdT" role="3cqZAp">
            <node concept="mw_s8" id="7JT4LO$rS2t" role="1ZfhKB">
              <node concept="37vLTw" id="7JT4LO$rS2r" role="mwGJk">
                <ref role="3cqZAo" node="7JT4LO$rQSK" resolve="type" />
              </node>
            </node>
            <node concept="mw_s8" id="7JT4LO$rNdW" role="1ZfhK$">
              <node concept="1Z2H0r" id="7JT4LO$rM0r" role="mwGJk">
                <node concept="2OqwBi" id="7JT4LO$rM9P" role="1Z2MuG">
                  <node concept="1YBJjd" id="7JT4LO$rM2b" role="2Oq$k0">
                    <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                  </node>
                  <node concept="3TrEf2" id="7JT4LO$rMDy" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="4aGUDa$4Yx4" role="9aQIa">
          <node concept="3clFbS" id="7JT4LO$rT8_" role="9aQI4">
            <node concept="3SKdUt" id="4aGUDa$57xj" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXo4BN" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXo4BO" role="1PaTwD">
                  <property role="3oM_SC" value="Not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BP" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BQ" role="1PaTwD">
                  <property role="3oM_SC" value="parameterized" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BR" role="1PaTwD">
                  <property role="3oM_SC" value="intention" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BS" role="1PaTwD">
                  <property role="3oM_SC" value="-" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BT" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BU" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BV" role="1PaTwD">
                  <property role="3oM_SC" value="have" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BW" role="1PaTwD">
                  <property role="3oM_SC" value="a" />
                </node>
                <node concept="3oM_SD" id="ATZLwXo4BX" role="1PaTwD">
                  <property role="3oM_SC" value="parameter" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4aGUDa$561L" role="3cqZAp">
              <node concept="3clFbS" id="4aGUDa$561N" role="3clFbx">
                <node concept="2MkqsV" id="4aGUDa$57xx" role="3cqZAp">
                  <node concept="Xl_RD" id="4aGUDa$57xK" role="2MkJ7o">
                    <property role="Xl_RC" value="Parameter value specified for a non-parameterized intention" />
                  </node>
                  <node concept="2OqwBi" id="4aGUDa$57FA" role="1urrMF">
                    <node concept="1YBJjd" id="4aGUDa$57zM" role="2Oq$k0">
                      <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                    </node>
                    <node concept="3TrEf2" id="4aGUDa$58kz" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4aGUDa$56X$" role="3clFbw">
                <node concept="2OqwBi" id="4aGUDa$56bA" role="2Oq$k0">
                  <node concept="1YBJjd" id="4aGUDa$5621" role="2Oq$k0">
                    <ref role="1YBMHb" node="7JT4LO$rKvi" resolve="statement" />
                  </node>
                  <node concept="3TrEf2" id="4aGUDa$56Dz" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:7JT4LO$qcEi" resolve="parameter" />
                  </node>
                </node>
                <node concept="3x8VRR" id="4aGUDa$57vc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbH" id="7JT4LO$rVwY" role="3cqZAp" />
    </node>
    <node concept="1YaCAy" id="7JT4LO$rKvi" role="1YuTPh">
      <property role="TrG5h" value="statement" />
      <ref role="1YaFvo" to="tp5g:hPMFPyi" resolve="InvokeIntentionStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="wUiM63T4IZ">
    <property role="TrG5h" value="typeof_IsIntentionApplicableExpression" />
    <property role="3GE5qa" value="expression" />
    <node concept="3clFbS" id="wUiM63T4J0" role="18ibNy">
      <node concept="1Z5TYs" id="wUiM63T4PR" role="3cqZAp">
        <node concept="mw_s8" id="wUiM63T4Qb" role="1ZfhKB">
          <node concept="2ShNRf" id="wUiM63T4Q7" role="mwGJk">
            <node concept="3zrR0B" id="wUiM63T51S" role="2ShVmc">
              <node concept="3Tqbb2" id="wUiM63T51U" role="3zrR0E">
                <ref role="ehGHo" to="tpee:f_0P_4Y" resolve="BooleanType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="wUiM63T4PU" role="1ZfhK$">
          <node concept="1Z2H0r" id="wUiM63T4J6" role="mwGJk">
            <node concept="1YBJjd" id="wUiM63T4KQ" role="1Z2MuG">
              <ref role="1YBMHb" node="wUiM63T4J2" resolve="isIntentionApplicableExpression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="wUiM63T4J2" role="1YuTPh">
      <property role="TrG5h" value="isIntentionApplicableExpression" />
      <ref role="1YaFvo" to="tp5g:wUiM63T4Ip" resolve="IsIntentionApplicableExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="7dAoyMZUdWZ">
    <property role="TrG5h" value="check_AssertStatementInsideEditorTestCase" />
    <property role="3GE5qa" value="editor" />
    <node concept="3clFbS" id="7dAoyMZUdX0" role="18ibNy">
      <node concept="3cpWs8" id="7dAoyMZUgYJ" role="3cqZAp">
        <node concept="3cpWsn" id="7dAoyMZUgYM" role="3cpWs9">
          <property role="TrG5h" value="current" />
          <node concept="3Tqbb2" id="7dAoyMZUgYH" role="1tU5fm" />
          <node concept="1YBJjd" id="7dAoyMZUgZq" role="33vP2m">
            <ref role="1YBMHb" node="7dAoyMZUdX2" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="7dAoyMZUfKj" role="3cqZAp">
        <node concept="3cpWsn" id="7dAoyMZUfKk" role="3cpWs9">
          <property role="TrG5h" value="parent" />
          <node concept="3Tqbb2" id="7dAoyMZUfKi" role="1tU5fm" />
          <node concept="2OqwBi" id="7dAoyMZUfKl" role="33vP2m">
            <node concept="1YBJjd" id="7dAoyMZUfKm" role="2Oq$k0">
              <ref role="1YBMHb" node="7dAoyMZUdX2" resolve="node" />
            </node>
            <node concept="1mfA1w" id="7dAoyMZUfKn" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2$JKZl" id="7dAoyMZUfL6" role="3cqZAp">
        <node concept="3clFbS" id="7dAoyMZUfL8" role="2LFqv$">
          <node concept="3clFbF" id="7dAoyMZUh1m" role="3cqZAp">
            <node concept="37vLTI" id="7dAoyMZUh7G" role="3clFbG">
              <node concept="37vLTw" id="7dAoyMZUh9u" role="37vLTx">
                <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
              </node>
              <node concept="37vLTw" id="7dAoyMZUh1k" role="37vLTJ">
                <ref role="3cqZAo" node="7dAoyMZUgYM" resolve="current" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7dAoyMZUgLv" role="3cqZAp">
            <node concept="37vLTI" id="7dAoyMZUgTh" role="3clFbG">
              <node concept="2OqwBi" id="7dAoyMZUhhz" role="37vLTx">
                <node concept="37vLTw" id="7dAoyMZUhbb" role="2Oq$k0">
                  <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
                </node>
                <node concept="1mfA1w" id="7dAoyMZUhnP" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="7dAoyMZUgLu" role="37vLTJ">
                <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="7dAoyMZUfTM" role="2$JKZa">
          <node concept="3fqX7Q" id="7dAoyMZUfUn" role="3uHU7w">
            <node concept="2OqwBi" id="7dAoyMZUg34" role="3fr31v">
              <node concept="37vLTw" id="7dAoyMZUfUU" role="2Oq$k0">
                <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
              </node>
              <node concept="1mIQ4w" id="7dAoyMZUgcB" role="2OqNvi">
                <node concept="chp4Y" id="7dAoyMZUgeP" role="cj9EA">
                  <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7dAoyMZUfTb" role="3uHU7B">
            <node concept="37vLTw" id="7dAoyMZUfLp" role="3uHU7B">
              <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
            </node>
            <node concept="10Nm6u" id="7dAoyMZUfTs" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7dAoyMZUhoE" role="3cqZAp">
        <node concept="3clFbS" id="7dAoyMZUhoG" role="3clFbx">
          <node concept="Dpp1Q" id="7i4U50br4iF" role="3cqZAp">
            <node concept="Xl_RD" id="7i4U50br4sK" role="Dpw9R">
              <property role="Xl_RC" value="This is a usual Java assert statement. For testing with JUnit use assert constructions from jetbrains.mps.baseLanguage.unitTest" />
            </node>
            <node concept="1YBJjd" id="7dAoyMZUvVr" role="1urrMF">
              <ref role="1YBMHb" node="7dAoyMZUdX2" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="1Wc70l" id="7dAoyMZUi1I" role="3clFbw">
          <node concept="17R0WA" id="7dAoyMZUkOC" role="3uHU7w">
            <node concept="359W_D" id="7dAoyMZUkW8" role="3uHU7w">
              <ref role="359W_E" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
              <ref role="359W_F" to="tp5g:hSLjaOj" resolve="code" />
            </node>
            <node concept="2OqwBi" id="7dAoyMZUjda" role="3uHU7B">
              <node concept="2JrnkZ" id="7dAoyMZUj0W" role="2Oq$k0">
                <node concept="37vLTw" id="7dAoyMZUi6I" role="2JrQYb">
                  <ref role="3cqZAo" node="7dAoyMZUgYM" resolve="current" />
                </node>
              </node>
              <node concept="liA8E" id="7dAoyMZUjnT" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7dAoyMZUhx9" role="3uHU7B">
            <node concept="37vLTw" id="7dAoyMZUhpo" role="2Oq$k0">
              <ref role="3cqZAo" node="7dAoyMZUfKk" resolve="parent" />
            </node>
            <node concept="1mIQ4w" id="7dAoyMZUhEj" role="2OqNvi">
              <node concept="chp4Y" id="7dAoyMZUhG6" role="cj9EA">
                <ref role="cht4Q" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7dAoyMZUdX2" role="1YuTPh">
      <property role="TrG5h" value="node" />
      <ref role="1YaFvo" to="tpee:gTgVbCX" resolve="AssertStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="5aRyplrTxTz">
    <property role="TrG5h" value="checkBeforePresents_EditorTestCase" />
    <property role="3GE5qa" value="editor" />
    <node concept="3clFbS" id="5aRyplrTxT$" role="18ibNy">
      <node concept="3clFbJ" id="5aRyplrTxTH" role="3cqZAp">
        <node concept="2OqwBi" id="5aRyplrTS8t" role="3clFbw">
          <node concept="2OqwBi" id="5aRyplrTya_" role="2Oq$k0">
            <node concept="1YBJjd" id="5aRyplrTxTT" role="2Oq$k0">
              <ref role="1YBMHb" node="5aRyplrTxTA" resolve="test" />
            </node>
            <node concept="3TrEf2" id="2IvnPUIqdz3" role="2OqNvi">
              <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
            </node>
          </node>
          <node concept="3w_OXm" id="5aRyplrTSh3" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="5aRyplrTxTJ" role="3clFbx">
          <node concept="a7r0C" id="5aRyplrTz1m" role="3cqZAp">
            <node concept="Xl_RD" id="5aRyplrT$4z" role="a7wSD">
              <property role="Xl_RC" value="A node in the 'before' section must be provided" />
            </node>
            <node concept="1YBJjd" id="5aRyplrTz1C" role="1urrMF">
              <ref role="1YBMHb" node="5aRyplrTxTA" resolve="test" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5aRyplrTxTA" role="1YuTPh">
      <property role="TrG5h" value="test" />
      <ref role="1YaFvo" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
    </node>
  </node>
  <node concept="18kY7G" id="5aRyplrT$il">
    <property role="TrG5h" value="checkBeforeContainsCellAnnotation_EditorTestCase" />
    <property role="3GE5qa" value="editor" />
    <node concept="3clFbS" id="5aRyplrT$im" role="18ibNy">
      <node concept="3clFbJ" id="5aRyplrT$in" role="3cqZAp">
        <node concept="1Wc70l" id="5aRyplrTWEA" role="3clFbw">
          <node concept="2OqwBi" id="5aRyplrTYd8" role="3uHU7B">
            <node concept="2OqwBi" id="2IvnPUIqcGC" role="2Oq$k0">
              <node concept="2OqwBi" id="5aRyplrTXhz" role="2Oq$k0">
                <node concept="1YBJjd" id="5aRyplrTWMr" role="2Oq$k0">
                  <ref role="1YBMHb" node="5aRyplrT$iz" resolve="test" />
                </node>
                <node concept="3TrEf2" id="2IvnPUIqcw1" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                </node>
              </node>
              <node concept="3TrEf2" id="2IvnPUIqcRL" role="2OqNvi">
                <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
              </node>
            </node>
            <node concept="3x8VRR" id="5aRyplrTYqq" role="2OqNvi" />
          </node>
          <node concept="2OqwBi" id="5aRyplrTEDT" role="3uHU7w">
            <node concept="2OqwBi" id="5aRyplrT$iq" role="2Oq$k0">
              <node concept="2OqwBi" id="2IvnPUIqddw" role="2Oq$k0">
                <node concept="2OqwBi" id="5aRyplrTQvI" role="2Oq$k0">
                  <node concept="1YBJjd" id="5aRyplrT$ir" role="2Oq$k0">
                    <ref role="1YBMHb" node="5aRyplrT$iz" resolve="test" />
                  </node>
                  <node concept="3TrEf2" id="2IvnPUIqcXT" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp5g:2IvnPUIp3ly" resolve="testNodeBefore" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2IvnPUIqdsn" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:hHqenIi" resolve="nodeToCheck" />
                </node>
              </node>
              <node concept="2Rf3mk" id="5aRyplrT$EV" role="2OqNvi">
                <node concept="1xMEDy" id="5aRyplrT$EX" role="1xVPHs">
                  <node concept="chp4Y" id="5aRyplrT$Ge" role="ri$Ld">
                    <ref role="cht4Q" to="tp5g:hSLIFSi" resolve="AnonymousCellAnnotation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1v1jN8" id="5aRyplrTM4L" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="5aRyplrT$it" role="3clFbx">
          <node concept="a7r0C" id="5aRyplrT$iu" role="3cqZAp">
            <node concept="Xl_RD" id="5aRyplrT$iy" role="a7wSD">
              <property role="Xl_RC" value="The 'before' section must have an AnonymousCellAnnotation attached" />
            </node>
            <node concept="1YBJjd" id="5aRyplrT$iw" role="1urrMF">
              <ref role="1YBMHb" node="5aRyplrT$iz" resolve="test" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5aRyplrT$iz" role="1YuTPh">
      <property role="TrG5h" value="test" />
      <ref role="1YaFvo" to="tp5g:hSLiM3w" resolve="EditorTestCase" />
    </node>
  </node>
  <node concept="1YbPZF" id="5IYRzU$yPXN">
    <property role="TrG5h" value="typeof_IsActionApplicableExpression" />
    <property role="3GE5qa" value="expression" />
    <node concept="3clFbS" id="5IYRzU$yPXO" role="18ibNy">
      <node concept="1Z5TYs" id="5IYRzU$yQum" role="3cqZAp">
        <node concept="mw_s8" id="5IYRzU$yQup" role="1ZfhK$">
          <node concept="1Z2H0r" id="5IYRzU$yPXU" role="mwGJk">
            <node concept="1YBJjd" id="5IYRzU$yQ1p" role="1Z2MuG">
              <ref role="1YBMHb" node="5IYRzU$yPXQ" resolve="isActionApplicableExpression" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5IYRzU$yQuA" role="1ZfhKB">
          <node concept="2ShNRf" id="5IYRzU$yQuB" role="mwGJk">
            <node concept="3zrR0B" id="5IYRzU$yQuC" role="2ShVmc">
              <node concept="3Tqbb2" id="5IYRzU$yQuD" role="3zrR0E">
                <ref role="ehGHo" to="tpee:f_0P_4Y" resolve="BooleanType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5IYRzU$yPXQ" role="1YuTPh">
      <property role="TrG5h" value="isActionApplicableExpression" />
      <ref role="1YaFvo" to="tp5g:H9$uslP7vo" resolve="IsActionApplicableExpression" />
    </node>
  </node>
  <node concept="18kY7G" id="7OB8Y3vLuA$">
    <property role="TrG5h" value="check_ScopesTest" />
    <property role="3GE5qa" value="scopes" />
    <node concept="3clFbS" id="7OB8Y3vLuA_" role="18ibNy">
      <node concept="3clFbJ" id="7OB8Y3vLuAF" role="3cqZAp">
        <node concept="3fqX7Q" id="7OB8Y3vLxXy" role="3clFbw">
          <node concept="2OqwBi" id="7OB8Y3vLxX$" role="3fr31v">
            <node concept="2OqwBi" id="7OB8Y3vLxX_" role="2Oq$k0">
              <node concept="1YBJjd" id="7OB8Y3vLxXA" role="2Oq$k0">
                <ref role="1YBMHb" node="7OB8Y3vLuAB" resolve="scopesTest" />
              </node>
              <node concept="2yIwOk" id="7OB8Y3vLxXB" role="2OqNvi" />
            </node>
            <node concept="3zqWPK" id="70OdufORdAN" role="2OqNvi">
              <ref role="37wK5l" to="tp5o:4IvydoGvpbr" resolve="isSimple" />
              <node concept="2OqwBi" id="70OdufORdAP" role="37wK5m">
                <node concept="1YBJjd" id="70OdufORdAQ" role="2Oq$k0">
                  <ref role="1YBMHb" node="7OB8Y3vLuAB" resolve="scopesTest" />
                </node>
                <node concept="3zqWPK" id="47jP3PjRleG" role="2OqNvi">
                  <ref role="37wK5l" to="tp5o:38gbJV0XvZR" resolve="getAnnotatedNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="7OB8Y3vLuAH" role="3clFbx">
          <node concept="2Mj0R9" id="7OB8Y3vLxY_" role="3cqZAp">
            <node concept="2OqwBi" id="7OB8Y3vLyE_" role="2MkoU_">
              <node concept="2OqwBi" id="7OB8Y3vLybC" role="2Oq$k0">
                <node concept="1YBJjd" id="7OB8Y3vLxYT" role="2Oq$k0">
                  <ref role="1YBMHb" node="7OB8Y3vLuAB" resolve="scopesTest" />
                </node>
                <node concept="3TrEf2" id="7OB8Y3vLyyc" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp5g:4IvydoGulmm" resolve="checkingReference" />
                </node>
              </node>
              <node concept="3x8VRR" id="7OB8Y3vLyV9" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="7OB8Y3vLyWW" role="2MkJ7o">
              <property role="Xl_RC" value="should specify reference link to check" />
            </node>
            <node concept="1YBJjd" id="7OB8Y3vLyZM" role="1urrMF">
              <ref role="1YBMHb" node="7OB8Y3vLuAB" resolve="scopesTest" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7OB8Y3vLuAB" role="1YuTPh">
      <property role="TrG5h" value="scopesTest" />
      <ref role="1YaFvo" to="tp5g:so7passww9" resolve="ScopesTest" />
    </node>
  </node>
  <node concept="18kY7G" id="7LE6pKGylSl">
    <property role="TrG5h" value="check_BeforeTestsMethod" />
    <node concept="3clFbS" id="7LE6pKGylSm" role="18ibNy">
      <node concept="3clFbF" id="7LE6pKGymzr" role="3cqZAp">
        <node concept="2OqwBi" id="7LE6pKGyujs" role="3clFbG">
          <node concept="2OqwBi" id="7LE6pKGyp5v" role="2Oq$k0">
            <node concept="2OqwBi" id="7LE6pKGymOW" role="2Oq$k0">
              <node concept="1YBJjd" id="7LE6pKGymzq" role="2Oq$k0">
                <ref role="1YBMHb" node="7LE6pKGylSo" resolve="beforeTestsMethod" />
              </node>
              <node concept="3TrEf2" id="7LE6pKGyoMV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
              </node>
            </node>
            <node concept="2Rf3mk" id="7LE6pKGyTCL" role="2OqNvi">
              <node concept="1xMEDy" id="7LE6pKGyTCN" role="1xVPHs">
                <node concept="chp4Y" id="7LE6pKGyTHj" role="ri$Ld">
                  <ref role="cht4Q" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2es0OD" id="7LE6pKGyuTw" role="2OqNvi">
            <node concept="1bVj0M" id="7LE6pKGyuTy" role="23t8la">
              <node concept="3clFbS" id="7LE6pKGyuTz" role="1bW5cS">
                <node concept="2MkqsV" id="7LE6pKGyv_S" role="3cqZAp">
                  <node concept="Xl_RD" id="7LE6pKGyvCR" role="2MkJ7o">
                    <property role="Xl_RC" value="Cannot refer to this in static context" />
                  </node>
                  <node concept="37vLTw" id="7LE6pKGyvSq" role="1urrMF">
                    <ref role="3cqZAo" node="7LE6pKGyuT$" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="7LE6pKGyuT$" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="7LE6pKGyuT_" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7LE6pKGylSo" role="1YuTPh">
      <property role="TrG5h" value="beforeTestsMethod" />
      <ref role="1YaFvo" to="tp5g:2154_0wV2x7" resolve="BeforeTestsMethod" />
    </node>
  </node>
  <node concept="18kY7G" id="7LE6pKGyYqW">
    <property role="TrG5h" value="check_AfterTestsMethod" />
    <node concept="3clFbS" id="7LE6pKGyYqX" role="18ibNy">
      <node concept="3clFbF" id="7LE6pKGyYr3" role="3cqZAp">
        <node concept="2OqwBi" id="7LE6pKGyYr4" role="3clFbG">
          <node concept="2OqwBi" id="7LE6pKGyYr5" role="2Oq$k0">
            <node concept="2OqwBi" id="7LE6pKGyYr6" role="2Oq$k0">
              <node concept="3TrEf2" id="7LE6pKGyYr8" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
              </node>
              <node concept="1YBJjd" id="7LE6pKGyYKW" role="2Oq$k0">
                <ref role="1YBMHb" node="7LE6pKGyYqZ" resolve="afterTestsMethod" />
              </node>
            </node>
            <node concept="2Rf3mk" id="7LE6pKGyYr9" role="2OqNvi">
              <node concept="1xMEDy" id="7LE6pKGyYra" role="1xVPHs">
                <node concept="chp4Y" id="7LE6pKGyYrb" role="ri$Ld">
                  <ref role="cht4Q" to="tp4f:hyWthE1" resolve="ThisClassifierExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2es0OD" id="7LE6pKGyYrc" role="2OqNvi">
            <node concept="1bVj0M" id="7LE6pKGyYrd" role="23t8la">
              <node concept="3clFbS" id="7LE6pKGyYre" role="1bW5cS">
                <node concept="2MkqsV" id="7LE6pKGyYrf" role="3cqZAp">
                  <node concept="Xl_RD" id="7LE6pKGyYrg" role="2MkJ7o">
                    <property role="Xl_RC" value="Cannot refer to this in static context" />
                  </node>
                  <node concept="37vLTw" id="7LE6pKGyYrh" role="1urrMF">
                    <ref role="3cqZAo" node="7LE6pKGyYri" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="7LE6pKGyYri" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="7LE6pKGyYrj" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7LE6pKGyYqZ" role="1YuTPh">
      <property role="TrG5h" value="afterTestsMethod" />
      <ref role="1YaFvo" to="tp5g:2154_0wV2x8" resolve="AfterTestsMethod" />
    </node>
  </node>
</model>

