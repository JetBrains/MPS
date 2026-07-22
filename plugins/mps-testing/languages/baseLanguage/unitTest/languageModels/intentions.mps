<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ae5a3427-e70c-4b57-99b6-7ec8fc28a394(jetbrains.mps.baseLanguage.unitTest.intentions)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="u132" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:junit.framework(JUnit/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="yqm7" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.jupiter.api(JUnit/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
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
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
      <concept id="8182547171709614739" name="jetbrains.mps.lang.quotation.structure.NodeBuilderRef" flags="nn" index="36bGnv">
        <reference id="8182547171709614741" name="target" index="36bGnp" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
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
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2S6QgY" id="1VOvYDNoMUM">
    <property role="TrG5h" value="convert_test_case_to_unittest_case" />
    <ref role="2ZfgGC" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="2S6ZIM" id="1VOvYDNoMUN" role="2ZfVej">
      <node concept="3clFbS" id="1VOvYDNoMUO" role="2VODD2">
        <node concept="3clFbF" id="1VOvYDNoOkb" role="3cqZAp">
          <node concept="Xl_RD" id="1VOvYDNoOkc" role="3clFbG">
            <property role="Xl_RC" value="Convert to UnitTest Case" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1VOvYDNoMUP" role="2ZfgGD">
      <node concept="3clFbS" id="1VOvYDNoMUQ" role="2VODD2">
        <node concept="3cpWs8" id="1ngiNkTy4no" role="3cqZAp">
          <node concept="3cpWsn" id="1ngiNkTy4np" role="3cpWs9">
            <property role="TrG5h" value="testCase" />
            <node concept="3Tqbb2" id="1ngiNkTy4nq" role="1tU5fm">
              <ref role="ehGHo" to="tpe3:h3s_e$z" resolve="BTestCase" />
            </node>
            <node concept="2OqwBi" id="1ngiNkTy4nr" role="33vP2m">
              <node concept="2Sf5sV" id="1ngiNkTy4ns" role="2Oq$k0" />
              <node concept="2DeJnW" id="5wUAOoBBjob" role="2OqNvi">
                <ref role="1_rbq0" to="tpe3:h3s_e$z" resolve="BTestCase" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ngiNkTy4nv" role="3cqZAp">
          <node concept="37vLTI" id="1ngiNkTy4nA" role="3clFbG">
            <node concept="2OqwBi" id="1ngiNkTyp3t" role="37vLTx">
              <node concept="2Sf5sV" id="1ngiNkTyp3u" role="2Oq$k0" />
              <node concept="3TrcHB" id="1ngiNkTyp3v" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="1ngiNkTy4nx" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTwMw" role="2Oq$k0">
                <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
              </node>
              <node concept="3TrcHB" id="1ngiNkTy4n_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ngiNkTyp3x" role="3cqZAp">
          <node concept="37vLTI" id="1ngiNkTyp3C" role="3clFbG">
            <node concept="2OqwBi" id="1ngiNkTyp3G" role="37vLTx">
              <node concept="2Sf5sV" id="1ngiNkTyp3F" role="2Oq$k0" />
              <node concept="3TrcHB" id="1ngiNkTyp3K" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="1ngiNkTyp3z" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTAbF" role="2Oq$k0">
                <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
              </node>
              <node concept="3TrcHB" id="1ngiNkTyp3B" role="2OqNvi">
                <ref role="3TsBF5" to="tpe3:h3s_e$_" resolve="testCaseName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1ngiNkTy4ob" role="3cqZAp">
          <node concept="3clFbS" id="1ngiNkTy4oc" role="3clFbx">
            <node concept="3clFbF" id="1ngiNkTy4nK" role="3cqZAp">
              <node concept="37vLTI" id="1ngiNkTy4nW" role="3clFbG">
                <node concept="2OqwBi" id="1ngiNkTy4nR" role="37vLTJ">
                  <node concept="2OqwBi" id="1ngiNkTy4nM" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagT_jN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
                    </node>
                    <node concept="3TrEf2" id="1ngiNkTy4nQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1ngiNkTy4nV" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1ngiNkTy4o5" role="37vLTx">
                  <node concept="2OqwBi" id="1ngiNkTy4o0" role="2Oq$k0">
                    <node concept="2Sf5sV" id="1ngiNkTy4nZ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1ngiNkTy4o4" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="1ngiNkTy4o9" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1ngiNkTy4oq" role="3clFbw">
            <node concept="2OqwBi" id="1ngiNkTy4ol" role="3uHU7B">
              <node concept="2OqwBi" id="1ngiNkTy4og" role="2Oq$k0">
                <node concept="2Sf5sV" id="1ngiNkTy4of" role="2Oq$k0" />
                <node concept="3TrEf2" id="1ngiNkTy4ok" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                </node>
              </node>
              <node concept="3x8VRR" id="1ngiNkTy4op" role="2OqNvi" />
            </node>
            <node concept="3fqX7Q" id="5iUdt5bPc4X" role="3uHU7w">
              <node concept="2OqwBi" id="5iUdt5bPc4V" role="3fr31v">
                <node concept="2OqwBi" id="5iUdt5bPc4P" role="2Oq$k0">
                  <node concept="2OqwBi" id="5iUdt5bPc4Q" role="2Oq$k0">
                    <node concept="2Sf5sV" id="5iUdt5bPc4R" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5iUdt5bPc4S" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5iUdt5bPc4T" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
                  </node>
                </node>
                <node concept="1QLmlb" id="5iUdt5bPc4W" role="2OqNvi">
                  <node concept="ZC_QK" id="5iUdt5bPc4U" role="1QLmnL">
                    <ref role="2aWVGs" to="u132:~TestCase" resolve="TestCase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1VOvYDNp9Rm" role="3cqZAp">
          <node concept="2GrKxI" id="1VOvYDNp9Rn" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="2OqwBi" id="1VOvYDNp9Rs" role="2GsD0m">
            <node concept="3zqWPK" id="70OdufORdnw" role="2OqNvi">
              <ref role="37wK5l" to="tpek:4_LVZ3pBKCn" resolve="methods" />
            </node>
            <node concept="2Sf5sV" id="1VOvYDNp9Rr" role="2Oq$k0" />
          </node>
          <node concept="3clFbS" id="1VOvYDNp9Rp" role="2LFqv$">
            <node concept="3clFbJ" id="1VOvYDNp9Rz" role="3cqZAp">
              <node concept="2OqwBi" id="1VOvYDNp9RI" role="3clFbw">
                <node concept="2OqwBi" id="1VOvYDNp9RD" role="2Oq$k0">
                  <node concept="2GrUjf" id="1VOvYDNp9RA" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1VOvYDNp9Rn" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="1VOvYDNp9RH" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="liA8E" id="1VOvYDNp9RM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="1VOvYDNp9RN" role="37wK5m">
                    <property role="Xl_RC" value="test" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1VOvYDNp9R_" role="3clFbx">
                <node concept="3clFbF" id="1VOvYDNp9TR" role="3cqZAp">
                  <node concept="2OqwBi" id="1VOvYDNp9U3" role="3clFbG">
                    <node concept="2OqwBi" id="1VOvYDNp9TY" role="2Oq$k0">
                      <node concept="2OqwBi" id="1VOvYDNp9TT" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTBiF" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
                        </node>
                        <node concept="3TrEf2" id="1VOvYDNp9TX" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpe3:h3s_e$$" resolve="testMethodList" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="1VOvYDNp9U2" role="2OqNvi">
                        <ref role="3TtcxE" to="tpe3:h3s_gou" resolve="testMethod" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="1$wX9nnD7cx" role="2OqNvi">
                      <node concept="2pJPEk" id="4EpdKCCrnZx" role="25WWJ7">
                        <node concept="2pJPED" id="4EpdKCCrnZq" role="2pJPEn">
                          <ref role="2pJxaS" to="tpe3:h3s$Bie" resolve="TestMethod" />
                          <node concept="2pJxcG" id="4EpdKCCrnZr" role="2pJxcM">
                            <ref role="2pJxcJ" to="tpe3:h3s$Big" resolve="methodName" />
                            <node concept="WxPPo" id="4EpdKCCrnZs" role="28ntcv">
                              <node concept="2OqwBi" id="1VOvYDNp9Ul" role="WxPPp">
                                <node concept="2OqwBi" id="1VOvYDNp9Um" role="2Oq$k0">
                                  <node concept="2GrUjf" id="1VOvYDNp9Ut" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="1VOvYDNp9Rn" resolve="m" />
                                  </node>
                                  <node concept="3TrcHB" id="1VOvYDNp9Uo" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="1VOvYDNp9Up" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                  <node concept="2OqwBi" id="1VOvYDNp9Uq" role="37wK5m">
                                    <node concept="Xl_RD" id="1VOvYDNp9Ur" role="2Oq$k0">
                                      <property role="Xl_RC" value="test" />
                                    </node>
                                    <node concept="liA8E" id="1VOvYDNp9Us" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2pIpSj" id="4EpdKCCrnZu" role="2pJxcM">
                            <ref role="2pIpSl" to="tpee:fzclF7Z" resolve="body" />
                            <node concept="36biLy" id="4EpdKCCrnZt" role="28nt2d">
                              <node concept="2OqwBi" id="1VOvYDNp9Uf" role="36biLW">
                                <node concept="2OqwBi" id="1VOvYDNp9Ug" role="2Oq$k0">
                                  <node concept="2GrUjf" id="1VOvYDNp9Uv" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="1VOvYDNp9Rn" resolve="m" />
                                  </node>
                                  <node concept="3TrEf2" id="1VOvYDNp9Ui" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                                  </node>
                                </node>
                                <node concept="3YRAZt" id="1VOvYDNp9Uj" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="2pIpSj" id="4EpdKCCrnZw" role="2pJxcM">
                            <ref role="2pIpSl" to="tpee:fzclF7X" resolve="returnType" />
                            <node concept="2pJPED" id="4EpdKCCrnZv" role="28nt2d">
                              <ref role="2pJxaS" to="tpee:fzcqZ_H" resolve="VoidType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="1ngiNkTy4oO" role="9aQIa">
                <node concept="3clFbS" id="1ngiNkTy4oP" role="9aQI4">
                  <node concept="3clFbF" id="1ngiNkTy4oQ" role="3cqZAp">
                    <node concept="2OqwBi" id="1ngiNkTy4p8" role="3clFbG">
                      <node concept="2OqwBi" id="1ngiNkTy4p3" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTtEz" role="2Oq$k0">
                          <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
                        </node>
                        <node concept="3Tsc0h" id="1ngiNkTy4p7" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="1$wX9nnD7cz" role="2OqNvi">
                        <node concept="2OqwBi" id="1ngiNkTy4pi" role="25WWJ7">
                          <node concept="2GrUjf" id="1ngiNkTy4pf" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="1VOvYDNp9Rn" resolve="m" />
                          </node>
                          <node concept="3YRAZt" id="1ngiNkTy4pn" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1ngiNkTy4pr" role="3cqZAp">
          <node concept="2GrKxI" id="1ngiNkTy4ps" role="2Gsz3X">
            <property role="TrG5h" value="f" />
          </node>
          <node concept="2OqwBi" id="1ngiNkTy4px" role="2GsD0m">
            <node concept="3zqWPK" id="70OdufORdny" role="2OqNvi">
              <ref role="37wK5l" to="tpek:4_LVZ3pBr7M" resolve="staticFields" />
            </node>
            <node concept="2Sf5sV" id="1ngiNkTy4pw" role="2Oq$k0" />
          </node>
          <node concept="3clFbS" id="1ngiNkTy4pu" role="2LFqv$">
            <node concept="3clFbF" id="1ngiNkTy4pC" role="3cqZAp">
              <node concept="2OqwBi" id="1ngiNkTy4pJ" role="3clFbG">
                <node concept="2OqwBi" id="1ngiNkTy4pE" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTzal" role="2Oq$k0">
                    <ref role="3cqZAo" node="1ngiNkTy4np" resolve="testCase" />
                  </node>
                  <node concept="3Tsc0h" id="1ngiNkTy4pI" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                  </node>
                </node>
                <node concept="TSZUe" id="1$wX9nnD7cv" role="2OqNvi">
                  <node concept="2OqwBi" id="1ngiNkTy4pT" role="25WWJ7">
                    <node concept="2GrUjf" id="1ngiNkTy4pQ" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1ngiNkTy4ps" resolve="f" />
                    </node>
                    <node concept="3YRAZt" id="1ngiNkTy4pZ" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1VOvYDNoOkd" role="2ZfVeh">
      <node concept="3clFbS" id="1VOvYDNoOke" role="2VODD2">
        <node concept="3clFbF" id="1VOvYDNoOkf" role="3cqZAp">
          <node concept="1Wc70l" id="1VOvYDNp9ps" role="3clFbG">
            <node concept="2OqwBi" id="1VOvYDNoOkn" role="3uHU7B">
              <node concept="2OqwBi" id="7saShkZNT$P" role="2Oq$k0">
                <node concept="2yIwOk" id="7saShkZNT$Q" role="2OqNvi" />
                <node concept="2Sf5sV" id="1VOvYDNoOkg" role="2Oq$k0" />
              </node>
              <node concept="3O6GUB" id="7saShkZNT$R" role="2OqNvi">
                <node concept="chp4Y" id="7saShkZNT$S" role="3QVz_e">
                  <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                </node>
              </node>
            </node>
            <node concept="3JuTUA" id="1VOvYDNp9pw" role="3uHU7w">
              <node concept="2OqwBi" id="1VOvYDNp9px" role="3JuY14">
                <node concept="2Sf5sV" id="1VOvYDNp9py" role="2Oq$k0" />
                <node concept="3TrEf2" id="1VOvYDNp9pz" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gXzkM_H" resolve="superclass" />
                </node>
              </node>
              <node concept="2c44tf" id="1VOvYDNp9p$" role="3JuZjQ">
                <node concept="3uibUv" id="1VOvYDNp9p_" role="2c44tc">
                  <ref role="3uigEE" to="u132:~TestCase" resolve="TestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="692cUnf72BB">
    <property role="2ZfUl0" value="true" />
    <property role="TrG5h" value="AddRemoveMessage" />
    <property role="3GE5qa" value="assert" />
    <ref role="2ZfgGC" to="tpe3:h3_9g$o" resolve="MessageHolder" />
    <node concept="2S6ZIM" id="692cUnf72BC" role="2ZfVej">
      <node concept="3clFbS" id="692cUnf72BD" role="2VODD2">
        <node concept="3clFbF" id="692cUnf72C0" role="3cqZAp">
          <node concept="3K4zz7" id="692cUnf72C1" role="3clFbG">
            <node concept="2OqwBi" id="692cUnf72Cj" role="3K4Cdx">
              <node concept="2OqwBi" id="692cUnf72Ce" role="2Oq$k0">
                <node concept="2OqwBi" id="692cUnf72C9" role="2Oq$k0">
                  <node concept="2Sf5sV" id="692cUnf72C5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="692cUnf72Cd" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                  </node>
                </node>
                <node concept="3TrEf2" id="692cUnf72Ci" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
                </node>
              </node>
              <node concept="3w_OXm" id="692cUnf72Co" role="2OqNvi" />
            </node>
            <node concept="Xl_RD" id="692cUnf72Cp" role="3K4E3e">
              <property role="Xl_RC" value="Add message" />
            </node>
            <node concept="Xl_RD" id="692cUnf72Cq" role="3K4GZi">
              <property role="Xl_RC" value="Remove message" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="692cUnf72BE" role="2ZfgGD">
      <node concept="3clFbS" id="692cUnf72BF" role="2VODD2">
        <node concept="3clFbJ" id="692cUnf72Cr" role="3cqZAp">
          <node concept="2OqwBi" id="692cUnf72CD" role="3clFbw">
            <node concept="2OqwBi" id="692cUnf72C$" role="2Oq$k0">
              <node concept="2OqwBi" id="692cUnf72Cv" role="2Oq$k0">
                <node concept="2Sf5sV" id="692cUnf72Cu" role="2Oq$k0" />
                <node concept="3TrEf2" id="692cUnf72Cz" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                </node>
              </node>
              <node concept="3TrEf2" id="692cUnf72CC" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
              </node>
            </node>
            <node concept="3w_OXm" id="692cUnf72CH" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="692cUnf72Ct" role="3clFbx">
            <node concept="3clFbF" id="692cUnf72CI" role="3cqZAp">
              <node concept="2OqwBi" id="692cUnf72CP" role="3clFbG">
                <node concept="2OqwBi" id="692cUnf72CK" role="2Oq$k0">
                  <node concept="2Sf5sV" id="692cUnf72CJ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="692cUnf72CO" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                  </node>
                </node>
                <node concept="2DeJnY" id="5wUAOoBBjp2" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="692cUnf72CV" role="9aQIa">
            <node concept="3clFbS" id="692cUnf72CW" role="9aQI4">
              <node concept="3clFbF" id="692cUnf72CX" role="3cqZAp">
                <node concept="2OqwBi" id="692cUnf72D4" role="3clFbG">
                  <node concept="2OqwBi" id="692cUnf72CZ" role="2Oq$k0">
                    <node concept="2Sf5sV" id="692cUnf72CY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="692cUnf72D3" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpe3:h3_9lvq" resolve="message" />
                    </node>
                  </node>
                  <node concept="2oxUTD" id="692cUnf72D8" role="2OqNvi">
                    <node concept="10Nm6u" id="692cUnf72Db" role="2oxUTC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="6xD3woJonA8">
    <property role="TrG5h" value="FlipAssertEquals" />
    <property role="3GE5qa" value="assert" />
    <ref role="2ZfgGC" to="tpe3:7jPoEeD$ZOX" resolve="BinaryAssert" />
    <node concept="2S6ZIM" id="6xD3woJonA9" role="2ZfVej">
      <node concept="3clFbS" id="6xD3woJonAa" role="2VODD2">
        <node concept="3clFbF" id="6xD3woJonAu" role="3cqZAp">
          <node concept="Xl_RD" id="6xD3woJonAv" role="3clFbG">
            <property role="Xl_RC" value="Flip Assert Statement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="6xD3woJonAb" role="2ZfgGD">
      <node concept="3clFbS" id="6xD3woJonAc" role="2VODD2">
        <node concept="3cpWs8" id="6xD3woJonAy" role="3cqZAp">
          <node concept="3cpWsn" id="6xD3woJonAz" role="3cpWs9">
            <property role="TrG5h" value="expected" />
            <node concept="3Tqbb2" id="6xD3woJonA$" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="6xD3woJonA_" role="33vP2m">
              <node concept="2Sf5sV" id="6xD3woJonAA" role="2Oq$k0" />
              <node concept="3TrEf2" id="7jPoEeD$ZPr" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xD3woJonAC" role="3cqZAp">
          <node concept="3cpWsn" id="6xD3woJonAD" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="3Tqbb2" id="6xD3woJonAE" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
            </node>
            <node concept="2OqwBi" id="6xD3woJonAF" role="33vP2m">
              <node concept="2Sf5sV" id="6xD3woJonAG" role="2Oq$k0" />
              <node concept="3TrEf2" id="7jPoEeD$ZPu" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xD3woJonAI" role="3cqZAp">
          <node concept="2OqwBi" id="6xD3woJonAJ" role="3clFbG">
            <node concept="2OqwBi" id="6xD3woJonAK" role="2Oq$k0">
              <node concept="2Sf5sV" id="6xD3woJonAL" role="2Oq$k0" />
              <node concept="3TrEf2" id="7jPoEeD$ZPx" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP4" resolve="expected" />
              </node>
            </node>
            <node concept="2oxUTD" id="6xD3woJonAN" role="2OqNvi">
              <node concept="2OqwBi" id="6xD3woJonAO" role="2oxUTC">
                <node concept="37vLTw" id="3GM_nagTzih" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xD3woJonAD" resolve="actual" />
                </node>
                <node concept="1$rogu" id="6xD3woJonAQ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xD3woJonAR" role="3cqZAp">
          <node concept="2OqwBi" id="6xD3woJonAS" role="3clFbG">
            <node concept="2OqwBi" id="6xD3woJonAT" role="2Oq$k0">
              <node concept="2Sf5sV" id="6xD3woJonAU" role="2Oq$k0" />
              <node concept="3TrEf2" id="7jPoEeD$ZP$" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:7jPoEeD$ZP5" resolve="actual" />
              </node>
            </node>
            <node concept="2oxUTD" id="6xD3woJonAW" role="2OqNvi">
              <node concept="2OqwBi" id="6xD3woJonAX" role="2oxUTC">
                <node concept="37vLTw" id="3GM_nagTyaa" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xD3woJonAz" resolve="expected" />
                </node>
                <node concept="1$rogu" id="6xD3woJonAZ" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4MTm4Dk9aZo">
    <property role="TrG5h" value="ConvertJUnit4_To_JUnit5" />
    <ref role="2ZfgGC" to="tpee:g7pOWCK" resolve="Classifier" />
    <node concept="2S6ZIM" id="4MTm4Dk9aZp" role="2ZfVej">
      <node concept="3clFbS" id="4MTm4Dk9aZq" role="2VODD2">
        <node concept="3clFbF" id="4MTm4Dk9b3u" role="3cqZAp">
          <node concept="Xl_RD" id="4MTm4Dk9b3t" role="3clFbG">
            <property role="Xl_RC" value="Convert JUnit4 Test Case to JUnit5 \&quot;jupiter\&quot; Test Case" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4MTm4Dk9aZr" role="2ZfgGD">
      <node concept="3clFbS" id="4MTm4Dk9aZs" role="2VODD2">
        <node concept="3cpWs8" id="4MTm4Dk9MQ6" role="3cqZAp">
          <node concept="3cpWsn" id="4MTm4Dk9MQ7" role="3cpWs9">
            <property role="TrG5h" value="allMethods" />
            <node concept="A3Dl8" id="4MTm4Dk9MQ8" role="1tU5fm">
              <node concept="3Tqbb2" id="4MTm4Dk9MQ9" role="A3Ik2">
                <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="4MTm4Dk9MQa" role="33vP2m">
              <node concept="2OqwBi" id="4MTm4Dk9MQb" role="2Oq$k0">
                <property role="hSjvv" value="true" />
                <node concept="2Sf5sV" id="4MTm4Dk9MQc" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4MTm4Dk9MQd" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                </node>
              </node>
              <node concept="v3k3i" id="4MTm4Dk9MQe" role="2OqNvi">
                <node concept="chp4Y" id="4MTm4Dk9MQf" role="v3oSu">
                  <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4Dka3_L" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4Dka3_M" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4Dka4aB" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4l7" role="1PaTwD">
              <property role="3oM_SC" value="@Test" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4n1" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4oO" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4xu" role="1PaTwD">
              <property role="3oM_SC" value="@Test" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dk9PBi" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4Dk9MQk" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4Dk9MQm" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4Dk9WYR" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4Dk9WYT" role="23t8la">
                <node concept="3clFbS" id="4MTm4Dk9WYU" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4Dk9WYV" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4Dk9XhC" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4Dk9WYW" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4Dk9WYX" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4Dk9WYY" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WUH" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4Dk9WYZ" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4Dk9WZ0" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4Dk9WZ1" role="23t8la">
                            <node concept="3clFbS" id="4MTm4Dk9WZ2" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4Dk9WZ3" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4Dk9WZ4" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4Dk9WZ5" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dk9WZ6" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dk9WZ7" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4Dk9WZ8" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4Dk9WZ9" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4Dk9WZa" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4Dk9WZb" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUF" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4Dk9WZc" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4Dk9WZd" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4Dk9WZe" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~Test" resolve="Test" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUF" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WUG" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4Dka0tn" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4Dka0AN" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4Dka0AP" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4Dka15U" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4Dka1fn" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~Test" resolve="Test" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WUH" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WUI" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4DkabG7" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4DkabG8" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4DkabG9" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4DkabGa" role="1PaTwD">
              <property role="3oM_SC" value="@Ignore" />
            </node>
            <node concept="3oM_SD" id="4MTm4DkabGb" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4DkabGc" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4DkabGd" role="1PaTwD">
              <property role="3oM_SC" value="@Disabled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4DkabFz" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4DkabF$" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4DkabF_" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4DkabFA" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4DkabFB" role="23t8la">
                <node concept="3clFbS" id="4MTm4DkabFC" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4DkabFD" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4DkabFE" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4DkabFF" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4DkabFG" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4DkabFH" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WUL" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4DkabFI" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4DkabFJ" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4DkabFK" role="23t8la">
                            <node concept="3clFbS" id="4MTm4DkabFL" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4DkabFM" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4DkabFN" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4DkabFO" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4DkabFP" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4DkabFQ" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4DkabFR" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4DkabFS" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4DkabFT" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4DkabFU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUJ" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4DkabFV" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4DkabFW" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4DkabFX" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~Ignore" resolve="Ignore" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUJ" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WUK" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4DkabG0" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4DkabG1" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4DkabG2" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4DkabG3" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4DkabG4" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~Disabled" resolve="Disabled" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WUL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WUM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4Dka4Ec" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4Dka4Ed" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4Dka4Ee" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4Ef" role="1PaTwD">
              <property role="3oM_SC" value="@Before" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4Eg" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4Eh" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka4Ei" role="1PaTwD">
              <property role="3oM_SC" value="@BeforeEach" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dka1zm" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4Dka1zn" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4Dka1zp" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4Dka1zF" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4Dka1zG" role="23t8la">
                <node concept="3clFbS" id="4MTm4Dka1zH" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4Dka1zI" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4Dka1zJ" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4Dka1zK" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4Dka1zL" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4Dka1zM" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WUP" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4Dka1zN" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4Dka1zO" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4Dka1zP" role="23t8la">
                            <node concept="3clFbS" id="4MTm4Dka1zQ" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4Dka1zR" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4Dka1zS" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4Dka1zT" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka1zU" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka1zV" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4Dka1zW" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4Dka1zX" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4Dka1zY" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4Dka1zZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUN" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4Dka1$0" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4Dka1$1" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4Dka1$2" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~Before" resolve="Before" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUN" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WUO" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4Dka1$5" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4Dka1$6" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4Dka1$7" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4Dka1$8" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4Dka1$9" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~BeforeEach" resolve="BeforeEach" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WUP" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WUQ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4Dka7w7" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4Dka7w8" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4Dka7w9" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka7wa" role="1PaTwD">
              <property role="3oM_SC" value="@After" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka7wb" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka7wc" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka7wd" role="1PaTwD">
              <property role="3oM_SC" value="@AfterEach" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dka7vz" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4Dka7v$" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4Dka7v_" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4Dka7vA" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4Dka7vB" role="23t8la">
                <node concept="3clFbS" id="4MTm4Dka7vC" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4Dka7vD" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4Dka7vE" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4Dka7vF" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4Dka7vG" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4Dka7vH" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WUT" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4Dka7vI" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4Dka7vJ" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4Dka7vK" role="23t8la">
                            <node concept="3clFbS" id="4MTm4Dka7vL" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4Dka7vM" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4Dka7vN" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4Dka7vO" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka7vP" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka7vQ" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4Dka7vR" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4Dka7vS" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4Dka7vT" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4Dka7vU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUR" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4Dka7vV" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4Dka7vW" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4Dka7vX" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~After" resolve="After" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUR" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WUS" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4Dka7w0" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4Dka7w1" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4Dka7w2" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4Dka7w3" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4Dka7w4" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~AfterEach" resolve="AfterEach" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WUT" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WUU" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4Dka9J3" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4Dka9J4" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4Dka9J5" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9J6" role="1PaTwD">
              <property role="3oM_SC" value="@BeforeClass" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9J7" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9J8" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9J9" role="1PaTwD">
              <property role="3oM_SC" value="@BeforeAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dka9Iv" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4Dka9Iw" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4Dka9Ix" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4Dka9Iy" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4Dka9Iz" role="23t8la">
                <node concept="3clFbS" id="4MTm4Dka9I$" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4Dka9I_" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4Dka9IA" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4Dka9IB" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4Dka9IC" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4Dka9ID" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WUX" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4Dka9IE" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4Dka9IF" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4Dka9IG" role="23t8la">
                            <node concept="3clFbS" id="4MTm4Dka9IH" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4Dka9II" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4Dka9IJ" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4Dka9IK" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka9IL" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka9IM" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4Dka9IN" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4Dka9IO" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4Dka9IP" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4Dka9IQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUV" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4Dka9IR" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4Dka9IS" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4Dka9IT" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~BeforeClass" resolve="BeforeClass" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUV" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WUW" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4Dka9IW" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4Dka9IX" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4Dka9IY" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4Dka9IZ" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4Dka9J0" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~BeforeAll" resolve="BeforeAll" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WUX" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WUY" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4MTm4Dka9Io" role="3cqZAp">
          <node concept="1PaTwC" id="4MTm4Dka9Ip" role="1aUNEU">
            <node concept="3oM_SD" id="4MTm4Dka9Iq" role="1PaTwD">
              <property role="3oM_SC" value="JUnit4's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9Ir" role="1PaTwD">
              <property role="3oM_SC" value="@AfterClass" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9Is" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9It" role="1PaTwD">
              <property role="3oM_SC" value="JUnit5's" />
            </node>
            <node concept="3oM_SD" id="4MTm4Dka9Iu" role="1PaTwD">
              <property role="3oM_SC" value="@AfterAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dka9HO" role="3cqZAp">
          <node concept="2OqwBi" id="4MTm4Dka9HP" role="3clFbG">
            <property role="hSjvv" value="true" />
            <node concept="37vLTw" id="4MTm4Dka9HQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4MTm4Dk9MQ7" resolve="allMethods" />
            </node>
            <node concept="2es0OD" id="4MTm4Dka9HR" role="2OqNvi">
              <node concept="1bVj0M" id="4MTm4Dka9HS" role="23t8la">
                <node concept="3clFbS" id="4MTm4Dka9HT" role="1bW5cS">
                  <node concept="3clFbF" id="4MTm4Dka9HU" role="3cqZAp">
                    <node concept="2OqwBi" id="4MTm4Dka9HV" role="3clFbG">
                      <node concept="2OqwBi" id="4MTm4Dka9HW" role="2Oq$k0">
                        <node concept="2OqwBi" id="4MTm4Dka9HX" role="2Oq$k0">
                          <node concept="37vLTw" id="4MTm4Dka9HY" role="2Oq$k0">
                            <ref role="3cqZAo" node="5W7E4fV0WV1" resolve="it" />
                          </node>
                          <node concept="3Tsc0h" id="4MTm4Dka9HZ" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4MTm4Dka9I0" role="2OqNvi">
                          <node concept="1bVj0M" id="4MTm4Dka9I1" role="23t8la">
                            <node concept="3clFbS" id="4MTm4Dka9I2" role="1bW5cS">
                              <node concept="3SKdUt" id="4MTm4Dka9I3" role="3cqZAp">
                                <node concept="1PaTwC" id="4MTm4Dka9I4" role="1aUNEU">
                                  <node concept="3oM_SD" id="4MTm4Dka9I5" role="1PaTwD">
                                    <property role="3oM_SC" value="JUnit4's" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka9I6" role="1PaTwD">
                                    <property role="3oM_SC" value="@Test" />
                                  </node>
                                  <node concept="3oM_SD" id="4MTm4Dka9I7" role="1PaTwD">
                                    <property role="3oM_SC" value="annotation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4MTm4Dka9I8" role="3cqZAp">
                                <node concept="2OqwBi" id="4MTm4Dka9I9" role="3clFbG">
                                  <node concept="2OqwBi" id="4MTm4Dka9Ia" role="2Oq$k0">
                                    <node concept="37vLTw" id="4MTm4Dka9Ib" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5W7E4fV0WUZ" resolve="a" />
                                    </node>
                                    <node concept="3TrEf2" id="4MTm4Dka9Ic" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                    </node>
                                  </node>
                                  <node concept="1QLmlb" id="4MTm4Dka9Id" role="2OqNvi">
                                    <node concept="ZC_QK" id="4MTm4Dka9Ie" role="1QLmnL">
                                      <ref role="2aWVGs" to="rjhg:~AfterClass" resolve="AfterClass" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="5W7E4fV0WUZ" role="1bW2Oz">
                              <property role="TrG5h" value="a" />
                              <node concept="2jxLKc" id="5W7E4fV0WV0" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1P9Npp" id="4MTm4Dka9Ih" role="2OqNvi">
                        <node concept="2pJPEk" id="4MTm4Dka9Ii" role="1P9ThW">
                          <node concept="2pJPED" id="4MTm4Dka9Ij" role="2pJPEn">
                            <ref role="2pJxaS" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                            <node concept="2pIpSj" id="4MTm4Dka9Ik" role="2pJxcM">
                              <ref role="2pIpSl" to="tpee:hiAI5P0" resolve="annotation" />
                              <node concept="36bGnv" id="4MTm4Dka9Il" role="28nt2d">
                                <ref role="36bGnp" to="yqm7:~AfterAll" resolve="AfterAll" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="5W7E4fV0WV1" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5W7E4fV0WV2" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4MTm4Dk9c7u" role="2ZfVeh">
      <node concept="3clFbS" id="4MTm4Dk9c7v" role="2VODD2">
        <node concept="3clFbJ" id="4MTm4Dk9f4Q" role="3cqZAp">
          <node concept="3clFbS" id="4MTm4Dk9f5g" role="3clFbx">
            <node concept="3cpWs8" id="5gsHVK_lC9k" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVK_lC9l" role="3cpWs9">
                <property role="TrG5h" value="allMethods" />
                <node concept="A3Dl8" id="5gsHVK_lBJ0" role="1tU5fm">
                  <node concept="3Tqbb2" id="5gsHVK_lBJ3" role="A3Ik2">
                    <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5gsHVK_lC9m" role="33vP2m">
                  <node concept="2OqwBi" id="5gsHVK_lC9n" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2Sf5sV" id="4MTm4Dk9HIh" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5gsHVK_lC9p" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                    </node>
                  </node>
                  <node concept="v3k3i" id="5gsHVK_lC9q" role="2OqNvi">
                    <node concept="chp4Y" id="5gsHVK_lC9r" role="v3oSu">
                      <ref role="cht4Q" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5gsHVK_krCo" role="3cqZAp">
              <node concept="3cpWsn" id="5gsHVK_krCp" role="3cpWs9">
                <property role="TrG5h" value="junit4TestMethods" />
                <node concept="A3Dl8" id="5gsHVK_krcV" role="1tU5fm">
                  <node concept="3Tqbb2" id="5gsHVK_krcY" role="A3Ik2">
                    <ref role="ehGHo" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5gsHVK_krCq" role="33vP2m">
                  <property role="hSjvv" value="true" />
                  <node concept="37vLTw" id="5gsHVK_lC9s" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gsHVK_lC9l" resolve="allMethods" />
                  </node>
                  <node concept="3zZkjj" id="5gsHVK_krCN" role="2OqNvi">
                    <node concept="1bVj0M" id="5gsHVK_krCO" role="23t8la">
                      <node concept="3clFbS" id="5gsHVK_krCP" role="1bW5cS">
                        <node concept="3clFbF" id="5gsHVK_krCQ" role="3cqZAp">
                          <node concept="2OqwBi" id="5gsHVK_krCR" role="3clFbG">
                            <node concept="2OqwBi" id="5gsHVK_krCS" role="2Oq$k0">
                              <node concept="37vLTw" id="5gsHVK_krCT" role="2Oq$k0">
                                <ref role="3cqZAo" node="5W7E4fV0WV5" resolve="it" />
                              </node>
                              <node concept="3Tsc0h" id="5gsHVK_krCU" role="2OqNvi">
                                <ref role="3TtcxE" to="tpee:hiAJF2X" resolve="annotation" />
                              </node>
                            </node>
                            <node concept="2HwmR7" id="5gsHVK_krCV" role="2OqNvi">
                              <node concept="1bVj0M" id="5gsHVK_krCW" role="23t8la">
                                <node concept="3clFbS" id="5gsHVK_krCX" role="1bW5cS">
                                  <node concept="3SKdUt" id="5gsHVK_lzA5" role="3cqZAp">
                                    <node concept="1PaTwC" id="5gsHVK_lzA6" role="1aUNEU">
                                      <node concept="3oM_SD" id="5gsHVK_l$QE" role="1PaTwD">
                                        <property role="3oM_SC" value="JUnit4's" />
                                      </node>
                                      <node concept="3oM_SD" id="5gsHVK_l_H7" role="1PaTwD">
                                        <property role="3oM_SC" value="@Test" />
                                      </node>
                                      <node concept="3oM_SD" id="5gsHVK_lAx3" role="1PaTwD">
                                        <property role="3oM_SC" value="annotation" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="5gsHVK_krCY" role="3cqZAp">
                                    <node concept="2OqwBi" id="5gsHVK_krCZ" role="3clFbG">
                                      <node concept="2OqwBi" id="5gsHVK_krD0" role="2Oq$k0">
                                        <node concept="37vLTw" id="5gsHVK_krD1" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5W7E4fV0WV3" resolve="a" />
                                        </node>
                                        <node concept="3TrEf2" id="5gsHVK_krD2" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:hiAI5P0" resolve="annotation" />
                                        </node>
                                      </node>
                                      <node concept="1QLmlb" id="5gsHVK_krD3" role="2OqNvi">
                                        <node concept="ZC_QK" id="5gsHVK_krD4" role="1QLmnL">
                                          <ref role="2aWVGs" to="rjhg:~Test" resolve="Test" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="5W7E4fV0WV3" role="1bW2Oz">
                                  <property role="TrG5h" value="a" />
                                  <node concept="2jxLKc" id="5W7E4fV0WV4" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="5W7E4fV0WV5" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5W7E4fV0WV6" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4MTm4Dk9KKx" role="3cqZAp">
              <node concept="2OqwBi" id="4MTm4Dk9M0O" role="3cqZAk">
                <node concept="37vLTw" id="4MTm4Dk9L9A" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gsHVK_krCp" resolve="junit4TestMethods" />
                </node>
                <node concept="3GX2aA" id="4MTm4Dk9MAr" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4MTm4Dk9e4$" role="3clFbw">
            <node concept="2OqwBi" id="4MTm4Dk9d_Q" role="2Oq$k0">
              <node concept="2Sf5sV" id="4MTm4Dk9cdF" role="2Oq$k0" />
              <node concept="2yIwOk" id="4MTm4Dk9dGb" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="4MTm4Dk9eIj" role="2OqNvi">
              <node concept="chp4Y" id="4MTm4Dk9eQd" role="3QVz_e">
                <ref role="cht4Q" to="tpee:g7uibYu" resolve="ClassifierType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MTm4Dk9f8t" role="3cqZAp">
          <node concept="3clFbT" id="4MTm4Dk9f8s" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
</model>

