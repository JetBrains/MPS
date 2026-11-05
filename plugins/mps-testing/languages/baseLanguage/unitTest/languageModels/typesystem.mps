<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b2539c5-00c8-487d-9567-ecc2b9274c7b(jetbrains.mps.baseLanguage.unitTest.typesystem)">
  <persistence version="9" />
  <languages>
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="3235159848334022093" name="jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall" flags="nn" index="3zqWPK" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1224760201579" name="jetbrains.mps.lang.typesystem.structure.InfoStatement" flags="nn" index="Dpp1Q">
        <child id="1224760230762" name="infoText" index="Dpw9R" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
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
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
      <concept id="1174663118805" name="jetbrains.mps.lang.typesystem.structure.CreateLessThanInequationStatement" flags="nn" index="1ZobV4" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="8329979535468945057" name="jetbrains.mps.lang.smodel.structure.Node_PresentationOperation" flags="ng" index="2Iv5rx" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="3661776679762942774" name="jetbrains.mps.lang.smodel.structure.Node_IsOperation" flags="ng" index="1QLmlb">
        <child id="3661776679762942860" name="ref" index="1QLmnL" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
    </language>
  </registry>
  <node concept="1YbPZF" id="692cUnf6SXC">
    <property role="TrG5h" value="typeof_Message" />
    <property role="3GE5qa" value="assert" />
    <node concept="3clFbS" id="692cUnf6SXD" role="18ibNy">
      <node concept="1ZobV4" id="1KPHzfPK7sW" role="3cqZAp">
        <node concept="mw_s8" id="1KPHzfPK7sX" role="1ZfhK$">
          <node concept="1Z2H0r" id="1KPHzfPK7sY" role="mwGJk">
            <node concept="2OqwBi" id="1KPHzfPK7sZ" role="1Z2MuG">
              <node concept="1YBJjd" id="1KPHzfPK7t0" role="2Oq$k0">
                <ref role="1YBMHb" node="692cUnf6SXE" resolve="message" />
              </node>
              <node concept="3TrEf2" id="1KPHzfPK7t1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpe3:h3_1ByX" resolve="message" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1KPHzfPK7t2" role="1ZfhKB">
          <node concept="2c44tf" id="1KPHzfPK7t3" role="mwGJk">
            <node concept="17QB3L" id="1KPHzfPK7t4" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="692cUnf6SXE" role="1YuTPh">
      <property role="TrG5h" value="message" />
      <ref role="1YaFvo" to="tpe3:h3_1$Uf" resolve="Message" />
    </node>
  </node>
  <node concept="18kY7G" id="7Cm4l4AYZ5g">
    <property role="TrG5h" value="check_TestIsCompiledAndLoadedByMPS" />
    <node concept="3clFbS" id="7Cm4l4AZ0Vv" role="18ibNy">
      <node concept="3cpWs8" id="6wwt__L9Lhu" role="3cqZAp">
        <node concept="3cpWsn" id="6wwt__L9Lhv" role="3cpWs9">
          <property role="TrG5h" value="tcm" />
          <node concept="H_c77" id="6wwt__L9L5a" role="1tU5fm" />
          <node concept="2OqwBi" id="6wwt__L9Lhw" role="33vP2m">
            <node concept="1YBJjd" id="6wwt__L9Lhx" role="2Oq$k0">
              <ref role="1YBMHb" node="7Cm4l4AZ8s1" resolve="testCase" />
            </node>
            <node concept="I4A8Y" id="6wwt__L9Lhy" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="6wwt__L9EKw" role="3cqZAp">
        <node concept="3clFbS" id="6wwt__L9EKy" role="3clFbx">
          <node concept="3cpWs6" id="6wwt__L9Lby" role="3cqZAp" />
        </node>
        <node concept="22lmx$" id="6wwt__L9Gec" role="3clFbw">
          <node concept="2ZW3vV" id="6wwt__L9H9h" role="3uHU7w">
            <node concept="3uibUv" id="6wwt__L9KZB" role="2ZW6by">
              <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
            </node>
            <node concept="37vLTw" id="6wwt__L9Lhz" role="2ZW6bz">
              <ref role="3cqZAo" node="6wwt__L9Lhv" resolve="tcm" />
            </node>
          </node>
          <node concept="3clFbC" id="6wwt__L9G1M" role="3uHU7B">
            <node concept="37vLTw" id="6wwt__L9Lh$" role="3uHU7B">
              <ref role="3cqZAo" node="6wwt__L9Lhv" resolve="tcm" />
            </node>
            <node concept="10Nm6u" id="6wwt__L9Gam" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7Cm4l4B9v9B" role="3cqZAp">
        <node concept="3clFbS" id="7Cm4l4B9v9D" role="3clFbx">
          <node concept="2MkqsV" id="7Cm4l4B9pJ8" role="3cqZAp">
            <node concept="Xl_RD" id="7Cm4l4B9pJp" role="2MkJ7o">
              <property role="Xl_RC" value="Tests must be created in modules compiled by MPS" />
            </node>
            <node concept="1YBJjd" id="7Cm4l4B9pSB" role="1urrMF">
              <ref role="1YBMHb" node="7Cm4l4AZ8s1" resolve="testCase" />
            </node>
          </node>
        </node>
        <node concept="3fqX7Q" id="7bvvztf1c_7" role="3clFbw">
          <node concept="2YIFZM" id="yrgDsjpIWS" role="3fr31v">
            <ref role="37wK5l" to="z1c3:~SModuleOperations.isCompileInMps(org.jetbrains.mps.openapi.module.SModule)" resolve="isCompileInMps" />
            <ref role="1Pybhc" to="z1c3:~SModuleOperations" resolve="SModuleOperations" />
            <node concept="2OqwBi" id="6wwt__L9Lp6" role="37wK5m">
              <node concept="2JrnkZ" id="6wwt__L9LP_" role="2Oq$k0">
                <node concept="37vLTw" id="6wwt__L9Lh_" role="2JrQYb">
                  <ref role="3cqZAo" node="6wwt__L9Lhv" resolve="tcm" />
                </node>
              </node>
              <node concept="liA8E" id="7Cm4l4B9s7j" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Cm4l4AZ8s1" role="1YuTPh">
      <property role="TrG5h" value="testCase" />
      <ref role="1YaFvo" to="tpe3:hGB2rPm" resolve="ITestCase" />
    </node>
  </node>
  <node concept="18kY7G" id="7i4U50br2rF">
    <property role="TrG5h" value="check_AssertStatementInsideTestMethod" />
    <node concept="3clFbS" id="7i4U50br2rG" role="18ibNy">
      <node concept="3clFbJ" id="7i4U50br3zQ" role="3cqZAp">
        <node concept="3clFbS" id="7i4U50br3zS" role="3clFbx">
          <node concept="Dpp1Q" id="7i4U50br4iF" role="3cqZAp">
            <node concept="Xl_RD" id="7i4U50br4sK" role="Dpw9R">
              <property role="Xl_RC" value="This is a usual Java assert statement. For testing with JUnit use assert constructions from jetbrains.mps.baseLanguage.unitTest" />
            </node>
            <node concept="1YBJjd" id="7i4U50br4o$" role="1urrMF">
              <ref role="1YBMHb" node="7i4U50br2rI" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="1wEcoXjJlaY" role="3clFbw">
          <node concept="2OqwBi" id="1wEcoXjJlaZ" role="2Oq$k0">
            <node concept="1YBJjd" id="7i4U50br3Lo" role="2Oq$k0">
              <ref role="1YBMHb" node="7i4U50br2rI" resolve="node" />
            </node>
            <node concept="2Xjw5R" id="1wEcoXjJlb1" role="2OqNvi">
              <node concept="1xMEDy" id="1wEcoXjJlb2" role="1xVPHs">
                <node concept="chp4Y" id="7i4U50br3XB" role="ri$Ld">
                  <ref role="cht4Q" to="tpee:htgVS9_" resolve="IStatementListContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1mIQ4w" id="7i4U50br4dh" role="2OqNvi">
            <node concept="chp4Y" id="7i4U50br4fj" role="cj9EA">
              <ref role="cht4Q" to="tpe3:h3s$Bie" resolve="TestMethod" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7i4U50br2rI" role="1YuTPh">
      <property role="TrG5h" value="node" />
      <ref role="1YaFvo" to="tpee:gTgVbCX" resolve="AssertStatement" />
    </node>
  </node>
  <node concept="18kY7G" id="2MZLbQXn49N">
    <property role="TrG5h" value="check_AssertThrows" />
    <property role="3GE5qa" value="assert" />
    <node concept="3clFbS" id="2MZLbQXn49O" role="18ibNy">
      <node concept="3clFbJ" id="2MZLbQXn4d$" role="3cqZAp">
        <node concept="2OqwBi" id="2MZLbQXnkjw" role="3clFbw">
          <node concept="2OqwBi" id="2MZLbQXndth" role="2Oq$k0">
            <node concept="2OqwBi" id="2MZLbQXncFE" role="2Oq$k0">
              <node concept="2OqwBi" id="2MZLbQXncFF" role="2Oq$k0">
                <node concept="1YBJjd" id="2MZLbQXncFG" role="2Oq$k0">
                  <ref role="1YBMHb" node="2MZLbQXn49Q" resolve="assertThrows" />
                </node>
                <node concept="3TrEf2" id="2MZLbQXncFH" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpe3:h3$Qgrf" resolve="exceptionType" />
                </node>
              </node>
              <node concept="3TrEf2" id="2MZLbQXncFI" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:g7uigIF" resolve="classifier" />
              </node>
            </node>
            <node concept="3zqWPK" id="70OdufORdn$" role="2OqNvi">
              <ref role="37wK5l" to="tpek:59G_UM6ah0X" resolve="getAllSuperClassifiers" />
            </node>
          </node>
          <node concept="2HwmR7" id="2MZLbQXnD8a" role="2OqNvi">
            <node concept="1bVj0M" id="2MZLbQXnD8c" role="23t8la">
              <node concept="3clFbS" id="2MZLbQXnD8d" role="1bW5cS">
                <node concept="3clFbF" id="2MZLbQXnDfg" role="3cqZAp">
                  <node concept="2OqwBi" id="2MZLbQXnDDN" role="3clFbG">
                    <node concept="37vLTw" id="2MZLbQXnDff" role="2Oq$k0">
                      <ref role="3cqZAo" node="5W7E4fV0WVb" resolve="it" />
                    </node>
                    <node concept="1QLmlb" id="2MZLbQXnEQX" role="2OqNvi">
                      <node concept="ZC_QK" id="2MZLbQXnFaR" role="1QLmnL">
                        <ref role="2aWVGs" to="wyt6:~AssertionError" resolve="AssertionError" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gl6BB" id="5W7E4fV0WVb" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="5W7E4fV0WVc" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2MZLbQXn4dA" role="3clFbx">
          <node concept="2MkqsV" id="2MZLbQXFeuX" role="3cqZAp">
            <node concept="3cpWs3" id="2MZLbQXFeuZ" role="2MkJ7o">
              <node concept="2OqwBi" id="2MZLbQXFhxi" role="3uHU7B">
                <node concept="2OqwBi" id="2MZLbQXFev0" role="2Oq$k0">
                  <node concept="1YBJjd" id="2MZLbQXFev1" role="2Oq$k0">
                    <ref role="1YBMHb" node="2MZLbQXn49Q" resolve="assertThrows" />
                  </node>
                  <node concept="3TrEf2" id="2MZLbQXFev2" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpe3:h3$Qgrf" resolve="exceptionType" />
                  </node>
                </node>
                <node concept="2Iv5rx" id="2MZLbQXFi8u" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="2MZLbQXFev3" role="3uHU7w">
                <property role="Xl_RC" value=" cannot be detected by the 'assert throws' statement" />
              </node>
            </node>
            <node concept="1YBJjd" id="2MZLbQXFev4" role="1urrMF">
              <ref role="1YBMHb" node="2MZLbQXn49Q" resolve="assertThrows" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2MZLbQXn49Q" role="1YuTPh">
      <property role="TrG5h" value="assertThrows" />
      <ref role="1YaFvo" to="tpe3:h3$NIwG" resolve="AssertThrows" />
    </node>
  </node>
</model>

