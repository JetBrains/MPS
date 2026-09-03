<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959028a(jetbrains.mps.lang.structure.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="twe9" ref="r:28e6d713-c3c3-493e-8d97-e9a2c49f28ce(jetbrains.mps.lang.structure.util)" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5948027493682789918" name="jetbrains.mps.lang.actions.structure.CopyPasteHandlers" flags="ng" index="21GTPz">
        <child id="5948027493682790174" name="postProcessor" index="21GTLz" />
      </concept>
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <property id="1158952310477" name="description" index="3mWdv0" />
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
      <concept id="5584396657084920670" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode" flags="nn" index="1r4N1M" />
      <concept id="5584396657084920413" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode" flags="nn" index="1r4N5L" />
      <concept id="6026743057587447931" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToPastePostProcess" flags="nn" index="1JFAaq" />
      <concept id="6026743057587433039" name="jetbrains.mps.lang.actions.structure.PastePostProcessFunction" flags="in" index="1JFUiI" />
      <concept id="564335015825199468" name="jetbrains.mps.lang.actions.structure.PastePostProcessor" flags="ng" index="3ZhVFo">
        <reference id="6026743057587410043" name="concept" index="1JFXUq" />
        <child id="3887139083693416947" name="postProcessFunction" index="3xT8ml" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="3320646261221695165" name="jetbrains.mps.lang.smodel.structure.NodePointerArg_Identity" flags="ng" index="1QN52j">
        <child id="3320646261221695238" name="ref" index="1QN54C" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37WguZ" id="gVeOXtZ">
    <property role="TrG5h" value="STRL_node_factories" />
    <node concept="37WvkG" id="gVeP5Yc" role="37WGs$">
      <property role="3mWdv0" value="extends BaseConcept by default" />
      <ref role="37XkoT" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      <node concept="37Y9Zx" id="gVeP5Yd" role="37ZfLb">
        <node concept="3clFbS" id="gVeP5Ye" role="2VODD2">
          <node concept="3clFbF" id="gVePfyj" role="3cqZAp">
            <node concept="2OqwBi" id="hx3pFt1" role="3clFbG">
              <node concept="2OqwBi" id="hx3pFzE" role="2Oq$k0">
                <node concept="1r4Lsj" id="gVePfyk" role="2Oq$k0" />
                <node concept="3TrEf2" id="gVePrWB" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
                </node>
              </node>
              <node concept="1AR3kn" id="3XR0QgVCo82" role="2OqNvi">
                <node concept="1QN52j" id="3XR0QgVCo83" role="1AR3km">
                  <node concept="ZC_QK" id="3XR0QgVCo81" role="1QN54C">
                    <ref role="2aWVGs" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="JeRNd$SkLP">
    <property role="TrG5h" value="DeclarationFactories" />
    <node concept="37WvkG" id="JeRNd$SkWs" role="37WGs$">
      <ref role="37XkoT" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <node concept="37Y9Zx" id="JeRNd$SkWt" role="37ZfLb">
        <node concept="3clFbS" id="JeRNd$SkWu" role="2VODD2">
          <node concept="3clFbJ" id="JeRNd$Sl7b" role="3cqZAp">
            <node concept="3clFbS" id="JeRNd$Sl7c" role="3clFbx">
              <node concept="3cpWs8" id="JeRNd$Sl$B" role="3cqZAp">
                <node concept="3cpWsn" id="JeRNd$Sl$E" role="3cpWs9">
                  <property role="TrG5h" value="sampleLink" />
                  <node concept="3Tqbb2" id="JeRNd$Sl$A" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                  </node>
                  <node concept="1PxgMI" id="JeRNd$SlBr" role="33vP2m">
                    <node concept="1r4N5L" id="JeRNd$Sl_i" role="1m5AlR" />
                    <node concept="chp4Y" id="714IaVdH1xY" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$SnFd" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$SoBs" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$SoTd" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$SoIa" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$Sl$E" resolve="sampleLink" />
                    </node>
                    <node concept="3TrcHB" id="JeRNd$Spwi" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$SnJT" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$SnFb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="JeRNd$SohT" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8$" resolve="metaClass" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$SlQx" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$SmII" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$SmWV" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$SmLW" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$Sl$E" resolve="sampleLink" />
                    </node>
                    <node concept="3TrcHB" id="JeRNd$Snxv" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$SlUF" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$SlQv" role="2Oq$k0" />
                    <node concept="3TrcHB" id="JeRNd$Smpb" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:3Ftr4R6BH8A" resolve="sourceCardinality" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$SpLE" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$SqM3" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$Srqt" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$Srmq" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$Sl$E" resolve="sampleLink" />
                    </node>
                    <node concept="3TrcHB" id="JeRNd$Ss3v" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$SpQS" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$SpLC" role="2Oq$k0" />
                    <node concept="3TrcHB" id="JeRNd$Sqsw" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$SsrY" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$StpN" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$StTs" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$StPn" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$Sl$E" resolve="sampleLink" />
                    </node>
                    <node concept="3TrEf2" id="JeRNd$Surh" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$SsxI" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$SsrW" role="2Oq$k0" />
                    <node concept="3TrEf2" id="JeRNd$St7u" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="JeRNd$Sl8P" role="3clFbw">
              <node concept="1r4N5L" id="JeRNd$Sl7t" role="2Oq$k0" />
              <node concept="1mIQ4w" id="JeRNd$SllN" role="2OqNvi">
                <node concept="chp4Y" id="JeRNd$SlmO" role="cj9EA">
                  <ref role="cht4Q" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="JeRNd$ZE2G" role="37WGs$">
      <ref role="37XkoT" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <node concept="37Y9Zx" id="JeRNd$ZE2H" role="37ZfLb">
        <node concept="3clFbS" id="JeRNd$ZE2I" role="2VODD2">
          <node concept="3clFbJ" id="JeRNd$ZEh8" role="3cqZAp">
            <node concept="3clFbS" id="JeRNd$ZEh9" role="3clFbx">
              <node concept="3cpWs8" id="JeRNd$ZELr" role="3cqZAp">
                <node concept="3cpWsn" id="JeRNd$ZELu" role="3cpWs9">
                  <property role="TrG5h" value="sampleProperty" />
                  <node concept="3Tqbb2" id="JeRNd$ZELq" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                  </node>
                  <node concept="1PxgMI" id="JeRNd$ZENr" role="33vP2m">
                    <node concept="1r4N5L" id="JeRNd$ZELY" role="1m5AlR" />
                    <node concept="chp4Y" id="714IaVdH1xB" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$ZF5g" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$ZFSG" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$ZG0u" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$ZFTL" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$ZELu" resolve="sampleProperty" />
                    </node>
                    <node concept="3TrEf2" id="JeRNd$ZGxQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$ZF9i" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$ZF5e" role="2Oq$k0" />
                    <node concept="3TrEf2" id="JeRNd$ZFBM" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="JeRNd$ZGB8" role="3cqZAp">
                <node concept="37vLTI" id="JeRNd$ZHyg" role="3clFbG">
                  <node concept="2OqwBi" id="JeRNd$ZHDx" role="37vLTx">
                    <node concept="37vLTw" id="JeRNd$ZH_u" role="2Oq$k0">
                      <ref role="3cqZAo" node="JeRNd$ZELu" resolve="sampleProperty" />
                    </node>
                    <node concept="3TrcHB" id="JeRNd$ZIeJ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="JeRNd$ZGFG" role="37vLTJ">
                    <node concept="1r4Lsj" id="JeRNd$ZGB6" role="2Oq$k0" />
                    <node concept="3TrcHB" id="JeRNd$ZHac" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="JeRNd$ZEiM" role="3clFbw">
              <node concept="1r4N5L" id="JeRNd$ZEhq" role="2Oq$k0" />
              <node concept="1mIQ4w" id="JeRNd$ZEvK" role="2OqNvi">
                <node concept="chp4Y" id="JeRNd$ZEwL" role="cj9EA">
                  <ref role="cht4Q" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="37WguZ" id="4H96pIbHeJk">
    <property role="TrG5h" value="SetStructureIds" />
    <node concept="37WvkG" id="4H96pIbHeOr" role="37WGs$">
      <ref role="37XkoT" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      <node concept="37Y9Zx" id="4H96pIbHeOs" role="37ZfLb">
        <node concept="3clFbS" id="4H96pIbHeOt" role="2VODD2">
          <node concept="3clFbF" id="4H96pIbHeYd" role="3cqZAp">
            <node concept="37vLTI" id="4H96pIbHg1U" role="3clFbG">
              <node concept="3cpWs3" id="4H96pIbHijr" role="37vLTx">
                <node concept="Xl_RD" id="4H96pIbHiju" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2YIFZM" id="4H96pIbHgdz" role="3uHU7B">
                  <ref role="37wK5l" to="twe9:5OIo7_R8hLh" resolve="generateConceptId" />
                  <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                  <node concept="1Q6Npb" id="4H96pIbHgRS" role="37wK5m" />
                  <node concept="1r4Lsj" id="4H96pIbHhl_" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="4H96pIbHf8d" role="37vLTJ">
                <node concept="1r4Lsj" id="4H96pIbHeYc" role="2Oq$k0" />
                <node concept="3TrcHB" id="4H96pIbHfyO" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:5OIo7_R7SN0" resolve="conceptId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="6Kv_6E71ge0" role="37WGs$">
      <ref role="37XkoT" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
      <node concept="37Y9Zx" id="6Kv_6E71ge1" role="37ZfLb">
        <node concept="3clFbS" id="6Kv_6E71ge2" role="2VODD2">
          <node concept="3clFbF" id="6Kv_6E71gkZ" role="3cqZAp">
            <node concept="37vLTI" id="6Kv_6E71gl1" role="3clFbG">
              <node concept="3cpWs3" id="6Kv_6E71gl2" role="37vLTx">
                <node concept="Xl_RD" id="6Kv_6E71gl3" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2YIFZM" id="6Kv_6E71lTJ" role="3uHU7B">
                  <ref role="37wK5l" to="twe9:6Kv_6E71hCq" resolve="generateDatatypeId" />
                  <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                  <node concept="1Q6Npb" id="6Kv_6E71lTK" role="37wK5m" />
                  <node concept="1r4Lsj" id="6Kv_6E71lTL" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="6Kv_6E71gl7" role="37vLTJ">
                <node concept="1r4Lsj" id="6Kv_6E71gl8" role="2Oq$k0" />
                <node concept="3TrcHB" id="6Kv_6E71gXF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:6Kv_6E714g3" resolve="datatypeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="4H96pIbHlsz" role="37WGs$">
      <ref role="37XkoT" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <node concept="37Y9Zx" id="4H96pIbHls$" role="37ZfLb">
        <node concept="3clFbS" id="4H96pIbHls_" role="2VODD2">
          <node concept="3clFbF" id="4H96pIbHlsA" role="3cqZAp">
            <node concept="37vLTI" id="4H96pIbHlsB" role="3clFbG">
              <node concept="3cpWs3" id="4H96pIbHlsC" role="37vLTx">
                <node concept="Xl_RD" id="4H96pIbHlsD" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2YIFZM" id="4H96pIbHmXk" role="3uHU7B">
                  <ref role="37wK5l" to="twe9:5hUt6kO_oUV" resolve="generatePropertyId" />
                  <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                  <node concept="1PxgMI" id="4H96pIbHprL" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="1r4N1M" id="4H96pIbHoMN" role="1m5AlR" />
                    <node concept="chp4Y" id="714IaVdH1yh" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                  </node>
                  <node concept="1r4Lsj" id="4H96pIbHmXm" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="4H96pIbHlsH" role="37vLTJ">
                <node concept="1r4Lsj" id="4H96pIbHlsI" role="2Oq$k0" />
                <node concept="3TrcHB" id="4H96pIbHm$V" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:dqwjwHwEjp" resolve="propertyId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="4H96pIbHltd" role="37WGs$">
      <ref role="37XkoT" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <node concept="37Y9Zx" id="4H96pIbHlte" role="37ZfLb">
        <node concept="3clFbS" id="4H96pIbHltf" role="2VODD2">
          <node concept="3clFbF" id="4H96pIbHqdC" role="3cqZAp">
            <node concept="37vLTI" id="4H96pIbHqdE" role="3clFbG">
              <node concept="3cpWs3" id="4H96pIbHqdF" role="37vLTx">
                <node concept="Xl_RD" id="4H96pIbHqdG" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2YIFZM" id="4H96pIbHrzd" role="3uHU7B">
                  <ref role="37wK5l" to="twe9:5hUt6kO_s$Q" resolve="generateLinkId" />
                  <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                  <node concept="1PxgMI" id="4H96pIbHrze" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="1r4N1M" id="4H96pIbHrzf" role="1m5AlR" />
                    <node concept="chp4Y" id="714IaVdH1xD" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                    </node>
                  </node>
                  <node concept="1r4Lsj" id="4H96pIbHrzg" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="4H96pIbHqdL" role="37vLTJ">
                <node concept="1r4Lsj" id="4H96pIbHqdM" role="2Oq$k0" />
                <node concept="3TrcHB" id="4H96pIbHrap" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:dqwjwHwEj$" resolve="linkId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="1eSXJRel8VF" role="37WGs$">
      <ref role="37XkoT" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
      <node concept="37Y9Zx" id="1eSXJRel8VG" role="37ZfLb">
        <node concept="3clFbS" id="1eSXJRel8VH" role="2VODD2">
          <node concept="3clFbF" id="1eSXJRel8VI" role="3cqZAp">
            <node concept="37vLTI" id="1eSXJRel8VJ" role="3clFbG">
              <node concept="3cpWs3" id="1eSXJRel8VK" role="37vLTx">
                <node concept="Xl_RD" id="1eSXJRel8VL" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="2YIFZM" id="6Kv_6E71e6A" role="3uHU7B">
                  <ref role="37wK5l" to="twe9:1eSXJRelbs0" resolve="generateEnumMemberId" />
                  <ref role="1Pybhc" to="twe9:5OIo7_R8hKr" resolve="ConceptIdHelper" />
                  <node concept="1PxgMI" id="6Kv_6E71e6B" role="37wK5m">
                    <property role="1BlNFB" value="true" />
                    <node concept="1r4N1M" id="6Kv_6E71e6C" role="1m5AlR" />
                    <node concept="chp4Y" id="6Kv_6E71fgw" role="3oSUPX">
                      <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                    </node>
                  </node>
                  <node concept="1r4Lsj" id="6Kv_6E71e6E" role="37wK5m" />
                </node>
              </node>
              <node concept="2OqwBi" id="1eSXJRel8VR" role="37vLTJ">
                <node concept="1r4Lsj" id="1eSXJRel8VS" role="2Oq$k0" />
                <node concept="3TrcHB" id="1eSXJRel9V6" role="2OqNvi">
                  <ref role="3TsBF5" to="tpce:1eSXJRel0SS" resolve="memberId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="21GTPz" id="Z3rhdFZr6m">
    <property role="TrG5h" value="StructureIds" />
    <node concept="3ZhVFo" id="Z3rhdFZr6n" role="21GTLz">
      <ref role="1JFXUq" to="tpce:h0PkWnZ" />
      <node concept="1JFUiI" id="Z3rhdFZr6o" role="3xT8ml">
        <node concept="3clFbS" id="Z3rhdFZr6p" role="2VODD2">
          <node concept="3clFbF" id="Z3rhdFZQAQ" role="3cqZAp">
            <node concept="2YIFZM" id="Z3rhdFZQBZ" role="3clFbG">
              <ref role="37wK5l" to="twe9:Z3rhdFZzmy" resolve="processConcept" />
              <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
              <node concept="1JFAaq" id="Z3rhdFZSL1" role="37wK5m" />
              <node concept="2OqwBi" id="Z3rhdFZREW" role="37wK5m">
                <node concept="I4A8Y" id="Z3rhdFZRQn" role="2OqNvi" />
                <node concept="1JFAaq" id="Z3rhdFZSHL" role="2Oq$k0" />
              </node>
              <node concept="3clFbT" id="Z3rhdFZRlU" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="Z3rhdFZyv2" role="21GTLz">
      <ref role="1JFXUq" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      <node concept="1JFUiI" id="Z3rhdFZyv3" role="3xT8ml">
        <node concept="3clFbS" id="Z3rhdFZyv4" role="2VODD2">
          <node concept="3cpWs8" id="Z3rhdFZUkA" role="3cqZAp">
            <node concept="3cpWsn" id="Z3rhdFZUkB" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3Tqbb2" id="Z3rhdFZUky" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="Z3rhdFZUkC" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="2OqwBi" id="Z3rhdFZUkD" role="1m5AlR">
                  <node concept="2Rxl7S" id="Z3rhdFZUkE" role="2OqNvi" />
                  <node concept="1JFAaq" id="Z3rhdFZUkF" role="2Oq$k0" />
                </node>
                <node concept="chp4Y" id="714IaVdH1yo" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Z3rhdFZUoC" role="3cqZAp">
            <node concept="3clFbS" id="Z3rhdFZUoE" role="3clFbx">
              <node concept="3clFbF" id="Z3rhdFZSQ7" role="3cqZAp">
                <node concept="2YIFZM" id="Z3rhdFZT0m" role="3clFbG">
                  <ref role="37wK5l" to="twe9:Z3rhdFZNVc" resolve="processProperty" />
                  <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
                  <node concept="1JFAaq" id="Z3rhdFZT0n" role="37wK5m" />
                  <node concept="37vLTw" id="Z3rhdFZUA$" role="37wK5m">
                    <ref role="3cqZAo" node="Z3rhdFZUkB" resolve="c" />
                  </node>
                  <node concept="3clFbT" id="Z3rhdFZT0r" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="Z3rhdFZU$L" role="3clFbw">
              <node concept="10Nm6u" id="Z3rhdFZU_x" role="3uHU7w" />
              <node concept="37vLTw" id="Z3rhdFZUqn" role="3uHU7B">
                <ref role="3cqZAo" node="Z3rhdFZUkB" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="Z3rhdFZyvv" role="21GTLz">
      <ref role="1JFXUq" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      <node concept="1JFUiI" id="Z3rhdFZyvw" role="3xT8ml">
        <node concept="3clFbS" id="Z3rhdFZyvx" role="2VODD2">
          <node concept="3cpWs8" id="Z3rhdFZUFr" role="3cqZAp">
            <node concept="3cpWsn" id="Z3rhdFZUFs" role="3cpWs9">
              <property role="TrG5h" value="c" />
              <node concept="3Tqbb2" id="Z3rhdFZUFt" role="1tU5fm">
                <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
              </node>
              <node concept="1PxgMI" id="Z3rhdFZUFu" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="2OqwBi" id="Z3rhdFZUFv" role="1m5AlR">
                  <node concept="2Rxl7S" id="Z3rhdFZUFw" role="2OqNvi" />
                  <node concept="1JFAaq" id="Z3rhdFZUFx" role="2Oq$k0" />
                </node>
                <node concept="chp4Y" id="714IaVdH1ym" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Z3rhdFZUFy" role="3cqZAp">
            <node concept="3clFbS" id="Z3rhdFZUFz" role="3clFbx">
              <node concept="3clFbF" id="Z3rhdFZUF$" role="3cqZAp">
                <node concept="2YIFZM" id="Z3rhdFZUKh" role="3clFbG">
                  <ref role="37wK5l" to="twe9:Z3rhdFZN4y" resolve="processLink" />
                  <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
                  <node concept="1JFAaq" id="Z3rhdFZUKi" role="37wK5m" />
                  <node concept="37vLTw" id="Z3rhdFZUKj" role="37wK5m">
                    <ref role="3cqZAo" node="Z3rhdFZUFs" resolve="c" />
                  </node>
                  <node concept="3clFbT" id="Z3rhdFZUKk" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="Z3rhdFZUFD" role="3clFbw">
              <node concept="10Nm6u" id="Z3rhdFZUFE" role="3uHU7w" />
              <node concept="37vLTw" id="Z3rhdFZUFF" role="3uHU7B">
                <ref role="3cqZAo" node="Z3rhdFZUFs" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="6Kv_6E71QoN" role="21GTLz">
      <ref role="1JFXUq" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
      <node concept="1JFUiI" id="6Kv_6E71QoO" role="3xT8ml">
        <node concept="3clFbS" id="6Kv_6E71QoP" role="2VODD2">
          <node concept="3clFbF" id="6Kv_6E71Qsq" role="3cqZAp">
            <node concept="2YIFZM" id="6Kv_6E723t3" role="3clFbG">
              <ref role="37wK5l" to="twe9:6Kv_6E71QEy" resolve="processDatatype" />
              <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
              <node concept="1JFAaq" id="6Kv_6E723t4" role="37wK5m" />
              <node concept="2OqwBi" id="6Kv_6E723t5" role="37wK5m">
                <node concept="I4A8Y" id="6Kv_6E723t6" role="2OqNvi" />
                <node concept="1JFAaq" id="6Kv_6E723t7" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3ZhVFo" id="1eSXJRelQPA" role="21GTLz">
      <ref role="1JFXUq" to="tpce:2TR3acGo7Lw" resolve="EnumerationMemberDeclaration" />
      <node concept="1JFUiI" id="1eSXJRelQPB" role="3xT8ml">
        <node concept="3clFbS" id="1eSXJRelQPC" role="2VODD2">
          <node concept="3cpWs8" id="1eSXJRelQRi" role="3cqZAp">
            <node concept="3cpWsn" id="1eSXJRelQRj" role="3cpWs9">
              <property role="TrG5h" value="e" />
              <node concept="3Tqbb2" id="1eSXJRelQRk" role="1tU5fm">
                <ref role="ehGHo" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
              </node>
              <node concept="1PxgMI" id="1eSXJRelQRl" role="33vP2m">
                <property role="1BlNFB" value="true" />
                <node concept="2OqwBi" id="1eSXJRelQRm" role="1m5AlR">
                  <node concept="2Rxl7S" id="1eSXJRelQRn" role="2OqNvi" />
                  <node concept="1JFAaq" id="1eSXJRelQRo" role="2Oq$k0" />
                </node>
                <node concept="chp4Y" id="1eSXJRelRdI" role="3oSUPX">
                  <ref role="cht4Q" to="tpce:2TR3acGo7Lv" resolve="EnumerationDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1eSXJRelQRq" role="3cqZAp">
            <node concept="3clFbS" id="1eSXJRelQRr" role="3clFbx">
              <node concept="3clFbF" id="1eSXJRelQRs" role="3cqZAp">
                <node concept="2YIFZM" id="1eSXJRelY1K" role="3clFbG">
                  <ref role="37wK5l" to="twe9:1eSXJRelRnt" resolve="processEnumMember" />
                  <ref role="1Pybhc" to="twe9:Z3rhdFZzlq" resolve="ConceptIdSetter" />
                  <node concept="1JFAaq" id="1eSXJRelY1L" role="37wK5m" />
                  <node concept="37vLTw" id="1eSXJRelY1M" role="37wK5m">
                    <ref role="3cqZAo" node="1eSXJRelQRj" resolve="e" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1eSXJRelQRx" role="3clFbw">
              <node concept="10Nm6u" id="1eSXJRelQRy" role="3uHU7w" />
              <node concept="37vLTw" id="1eSXJRelQRz" role="3uHU7B">
                <ref role="3cqZAo" node="1eSXJRelQRj" resolve="e" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

