<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:16e1d5b7-80ca-4570-9d1a-1cf2ce305e08(jetbrains.mps.debugger.api.ui)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="lt1n" ref="r:4a0301da-c964-420c-8e35-486843de9df5(jetbrains.mps.debug.api.evaluation)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="cjdg" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
  </registry>
  <node concept="312cEu" id="24OxoGwU3IV">
    <property role="TrG5h" value="DebugActionsUtil" />
    <node concept="3Tm1VV" id="24OxoGwU3IW" role="1B3o_S" />
    <node concept="3clFbW" id="24OxoGwU3IX" role="jymVt">
      <node concept="3Tm1VV" id="24OxoGwU3IY" role="1B3o_S" />
      <node concept="3cqZAl" id="24OxoGwU3IZ" role="3clF45" />
      <node concept="3clFbS" id="24OxoGwU3J0" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="24OxoGwU3J1" role="jymVt">
      <property role="TrG5h" value="getDebugSession" />
      <node concept="3Tm1VV" id="24OxoGwU3J2" role="1B3o_S" />
      <node concept="3uibUv" id="24OxoGwU3J3" role="3clF45">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
      </node>
      <node concept="37vLTG" id="24OxoGwU3J4" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="24OxoGwU3J5" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="24OxoGwU3J6" role="3clF47">
        <node concept="3cpWs8" id="24OxoGwU3J7" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwU3J8" role="3cpWs9">
            <property role="TrG5h" value="dataContext" />
            <node concept="3uibUv" id="24OxoGwU3J9" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
            </node>
            <node concept="2OqwBi" id="24OxoGwU3Ja" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmaZ$" role="2Oq$k0">
                <ref role="3cqZAo" node="24OxoGwU3J4" resolve="event" />
              </node>
              <node concept="liA8E" id="24OxoGwU3Jc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getDataContext()" resolve="getDataContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="24OxoGwU3Jd" role="3cqZAp">
          <node concept="2YIFZM" id="24OxoGwU3Je" role="3cqZAk">
            <ref role="1Pybhc" node="24OxoGwU3IV" resolve="DebugActionsUtil" />
            <ref role="37wK5l" node="24OxoGwU3JC" resolve="getDebugSession" />
            <node concept="37vLTw" id="3GM_nagTA5p" role="37wK5m">
              <ref role="3cqZAo" node="24OxoGwU3J8" resolve="dataContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="24OxoGwU3Jg" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2YIFZL" id="24OxoGwU3Jh" role="jymVt">
      <property role="TrG5h" value="getEvaluationProvider" />
      <node concept="3Tm1VV" id="24OxoGwU3Ji" role="1B3o_S" />
      <node concept="3uibUv" id="24OxoGwU3Jj" role="3clF45">
        <ref role="3uigEE" to="lt1n:3SnNvqCaJu1" resolve="IEvaluationProvider" />
      </node>
      <node concept="37vLTG" id="24OxoGwU3Jk" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="24OxoGwU3Jl" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="24OxoGwU3Jm" role="3clF47">
        <node concept="3cpWs8" id="24OxoGwU3Jn" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwU3Jo" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <node concept="3uibUv" id="24OxoGwU3Jp" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
            <node concept="2YIFZM" id="24OxoGwU3Jq" role="33vP2m">
              <ref role="1Pybhc" node="24OxoGwU3IV" resolve="DebugActionsUtil" />
              <ref role="37wK5l" node="24OxoGwU3J1" resolve="getDebugSession" />
              <node concept="37vLTw" id="2BHiRxgmaMY" role="37wK5m">
                <ref role="3cqZAo" node="24OxoGwU3Jk" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="24OxoGwU3Js" role="3cqZAp">
          <node concept="3y3z36" id="24OxoGwU3Jt" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTvxq" role="3uHU7B">
              <ref role="3cqZAo" node="24OxoGwU3Jo" resolve="debugSession" />
            </node>
            <node concept="10Nm6u" id="24OxoGwU3Jv" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="24OxoGwU3Jw" role="3clFbx">
            <node concept="3cpWs6" id="24OxoGwU3Jx" role="3cqZAp">
              <node concept="2OqwBi" id="24OxoGwU3Jy" role="3cqZAk">
                <node concept="37vLTw" id="3GM_nagTA0q" role="2Oq$k0">
                  <ref role="3cqZAo" node="24OxoGwU3Jo" resolve="debugSession" />
                </node>
                <node concept="liA8E" id="24OxoGwU3J$" role="2OqNvi">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaKcv" resolve="getEvaluationProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="24OxoGwU3J_" role="3cqZAp">
          <node concept="10Nm6u" id="24OxoGwU3JA" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="24OxoGwU3JB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2YIFZL" id="24OxoGwU3JC" role="jymVt">
      <property role="TrG5h" value="getDebugSession" />
      <node concept="3Tm1VV" id="24OxoGwU3JD" role="1B3o_S" />
      <node concept="3uibUv" id="24OxoGwU3JE" role="3clF45">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
      </node>
      <node concept="37vLTG" id="24OxoGwU3JF" role="3clF46">
        <property role="TrG5h" value="dataContext" />
        <node concept="3uibUv" id="24OxoGwU3JG" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
        </node>
      </node>
      <node concept="3clFbS" id="24OxoGwU3JH" role="3clF47">
        <node concept="3cpWs8" id="24OxoGwU3JP" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwU3JQ" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="24OxoGwU3JR" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="24OxoGwU3JS" role="33vP2m">
              <node concept="10M0yZ" id="24OxoGwU3JT" role="2Oq$k0">
                <ref role="1PxDUh" to="qkt:~PlatformDataKeys" resolve="PlatformDataKeys" />
                <ref role="3cqZAo" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
              </node>
              <node concept="liA8E" id="24OxoGwU3JU" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getData(com.intellij.openapi.actionSystem.DataContext)" resolve="getData" />
                <node concept="37vLTw" id="2BHiRxgh9Xj" role="37wK5m">
                  <ref role="3cqZAo" node="24OxoGwU3JF" resolve="dataContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5N5J$YBiDYe" role="3cqZAp">
          <node concept="3clFbC" id="5N5J$YBiDYf" role="3clFbw">
            <node concept="37vLTw" id="5N5J$YBiDYg" role="3uHU7B">
              <ref role="3cqZAo" node="24OxoGwU3JQ" resolve="project" />
            </node>
            <node concept="10Nm6u" id="5N5J$YBiDYh" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5N5J$YBiDYi" role="3clFbx">
            <node concept="3cpWs6" id="5N5J$YBiDYj" role="3cqZAp">
              <node concept="10Nm6u" id="5N5J$YBiDYk" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5N5J$YBiJL9" role="3cqZAp" />
        <node concept="3cpWs8" id="24OxoGwU3JI" role="3cqZAp">
          <node concept="3cpWsn" id="24OxoGwU3JJ" role="3cpWs9">
            <property role="TrG5h" value="runContentDescriptor" />
            <node concept="3uibUv" id="24OxoGwU3JK" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
            </node>
            <node concept="2OqwBi" id="43U_o2NISyG" role="33vP2m">
              <node concept="37vLTw" id="43U_o2NISpl" role="2Oq$k0">
                <ref role="3cqZAo" node="24OxoGwU3JF" resolve="dataContext" />
              </node>
              <node concept="liA8E" id="43U_o2NISHp" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="43U_o2NISZI" role="37wK5m">
                  <ref role="3cqZAo" to="qkt:~ExecutionDataKeys.RUN_CONTENT_DESCRIPTOR" />
                  <ref role="1PxDUh" to="qkt:~ExecutionDataKeys" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5N5J$YBiK5X" role="3cqZAp">
          <node concept="3clFbS" id="5N5J$YBiK60" role="3clFbx">
            <node concept="3SKdUt" id="5N5J$YBiKru" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXobBl" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXobBm" role="1PaTwD">
                  <property role="3oM_SC" value="tool" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBn" role="1PaTwD">
                  <property role="3oM_SC" value="window" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5N5J$YBiKaR" role="3cqZAp">
              <node concept="2OqwBi" id="5N5J$YBiKaS" role="3cqZAk">
                <node concept="2YIFZM" id="5N5J$YBiKaT" role="2Oq$k0">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaJob" resolve="getInstance" />
                  <ref role="1Pybhc" to="1l1h:3SnNvqCaJmA" resolve="DebugSessionManagerComponent" />
                  <node concept="37vLTw" id="5N5J$YBiKaU" role="37wK5m">
                    <ref role="3cqZAo" node="24OxoGwU3JQ" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="5N5J$YBiKaV" role="2OqNvi">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaJqz" resolve="getDebugSession" />
                  <node concept="2OqwBi" id="5N5J$YBiDZ3" role="37wK5m">
                    <node concept="37vLTw" id="5N5J$YBiDZ4" role="2Oq$k0">
                      <ref role="3cqZAo" node="24OxoGwU3JJ" resolve="runContentDescriptor" />
                    </node>
                    <node concept="liA8E" id="5N5J$YBiDZ5" role="2OqNvi">
                      <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getProcessHandler()" resolve="getProcessHandler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5N5J$YBiKad" role="3clFbw">
            <node concept="10Nm6u" id="5N5J$YBiKap" role="3uHU7w" />
            <node concept="37vLTw" id="5N5J$YBiK7A" role="3uHU7B">
              <ref role="3cqZAo" node="24OxoGwU3JJ" resolve="runContentDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5N5J$YBiKde" role="3cqZAp" />
        <node concept="3SKdUt" id="5N5J$YBiDYc" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXobBo" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXobBp" role="1PaTwD">
              <property role="3oM_SC" value="main" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobBq" role="1PaTwD">
              <property role="3oM_SC" value="menu" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5N5J$YBiDYl" role="3cqZAp">
          <node concept="3cpWsn" id="5N5J$YBiDYm" role="3cpWs9">
            <property role="TrG5h" value="selectedContent" />
            <node concept="3uibUv" id="5N5J$YBiDYn" role="1tU5fm">
              <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
            </node>
            <node concept="2OqwBi" id="5N5J$YBiDYo" role="33vP2m">
              <node concept="2OqwBi" id="5N5J$YBiDYp" role="2Oq$k0">
                <node concept="2YIFZM" id="5N5J$YBiDYq" role="2Oq$k0">
                  <ref role="1Pybhc" to="3v5a:~ExecutionManager" resolve="ExecutionManager" />
                  <ref role="37wK5l" to="3v5a:~ExecutionManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <node concept="37vLTw" id="5N5J$YBiDYr" role="37wK5m">
                    <ref role="3cqZAo" node="24OxoGwU3JQ" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="5N5J$YBiDYs" role="2OqNvi">
                  <ref role="37wK5l" to="3v5a:~ExecutionManager.getContentManager()" resolve="getContentManager" />
                </node>
              </node>
              <node concept="liA8E" id="5N5J$YBiDYt" role="2OqNvi">
                <ref role="37wK5l" to="cjdg:~RunContentManager.getSelectedContent()" resolve="getSelectedContent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5N5J$YBiDYu" role="3cqZAp">
          <node concept="3clFbC" id="5N5J$YBiDYv" role="3clFbw">
            <node concept="37vLTw" id="5N5J$YBiDYw" role="3uHU7B">
              <ref role="3cqZAo" node="5N5J$YBiDYm" resolve="selectedContent" />
            </node>
            <node concept="10Nm6u" id="5N5J$YBiDYx" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5N5J$YBiDYy" role="3clFbx">
            <node concept="3SKdUt" id="5N5J$YBiDYz" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXobBr" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXobBs" role="1PaTwD">
                  <property role="3oM_SC" value="when" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBt" role="1PaTwD">
                  <property role="3oM_SC" value="Debug" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBu" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBv" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBw" role="1PaTwD">
                  <property role="3oM_SC" value="started" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBx" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBy" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBz" role="1PaTwD">
                  <property role="3oM_SC" value="first" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobB$" role="1PaTwD">
                  <property role="3oM_SC" value="time," />
                </node>
                <node concept="3oM_SD" id="ATZLwXobB_" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBA" role="1PaTwD">
                  <property role="3oM_SC" value="debug" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBB" role="1PaTwD">
                  <property role="3oM_SC" value="tool" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBC" role="1PaTwD">
                  <property role="3oM_SC" value="window" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBD" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBE" role="1PaTwD">
                  <property role="3oM_SC" value="shown" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBF" role="1PaTwD">
                  <property role="3oM_SC" value="but" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBG" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBH" role="1PaTwD">
                  <property role="3oM_SC" value="activated" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5N5J$YBiDY_" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXobBI" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXobBJ" role="1PaTwD">
                  <property role="3oM_SC" value="here" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBK" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBL" role="1PaTwD">
                  <property role="3oM_SC" value="deal" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBM" role="1PaTwD">
                  <property role="3oM_SC" value="with" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBN" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXobBO" role="1PaTwD">
                  <property role="3oM_SC" value="situation" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5N5J$YBiDYB" role="3cqZAp">
              <node concept="37vLTI" id="5N5J$YBiDYC" role="3clFbG">
                <node concept="37vLTw" id="5N5J$YBiDYD" role="37vLTJ">
                  <ref role="3cqZAo" node="5N5J$YBiDYm" resolve="selectedContent" />
                </node>
                <node concept="2OqwBi" id="5N5J$YBiDYE" role="37vLTx">
                  <node concept="2OqwBi" id="5N5J$YBiDYF" role="2Oq$k0">
                    <node concept="2YIFZM" id="5N5J$YBiDYG" role="2Oq$k0">
                      <ref role="37wK5l" to="3v5a:~ExecutionManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                      <ref role="1Pybhc" to="3v5a:~ExecutionManager" resolve="ExecutionManager" />
                      <node concept="37vLTw" id="5N5J$YBiDYH" role="37wK5m">
                        <ref role="3cqZAo" node="24OxoGwU3JQ" resolve="project" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5N5J$YBiDYI" role="2OqNvi">
                      <ref role="37wK5l" to="3v5a:~ExecutionManager.getContentManager()" resolve="getContentManager" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5N5J$YBiDYJ" role="2OqNvi">
                    <ref role="37wK5l" to="cjdg:~RunContentManager.getSelectedContent()" resolve="getSelectedContent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5N5J$YBiKY7" role="3cqZAp">
              <node concept="3clFbS" id="5N5J$YBiKYa" role="3clFbx">
                <node concept="3cpWs6" id="5N5J$YBiL2t" role="3cqZAp">
                  <node concept="10Nm6u" id="5N5J$YBiL2B" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="5N5J$YBiL29" role="3clFbw">
                <node concept="10Nm6u" id="5N5J$YBiL2l" role="3uHU7w" />
                <node concept="37vLTw" id="5N5J$YBiKZy" role="3uHU7B">
                  <ref role="3cqZAo" node="5N5J$YBiDYm" resolve="selectedContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5N5J$YBiEkM" role="3cqZAp">
          <node concept="2OqwBi" id="5N5J$YBiEkN" role="3cqZAk">
            <node concept="2YIFZM" id="5N5J$YBiEkO" role="2Oq$k0">
              <ref role="37wK5l" to="1l1h:3SnNvqCaJob" resolve="getInstance" />
              <ref role="1Pybhc" to="1l1h:3SnNvqCaJmA" resolve="DebugSessionManagerComponent" />
              <node concept="37vLTw" id="5N5J$YBiEkP" role="37wK5m">
                <ref role="3cqZAo" node="24OxoGwU3JQ" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="5N5J$YBiEkQ" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaJqz" resolve="getDebugSession" />
              <node concept="2OqwBi" id="5N5J$YBiDYU" role="37wK5m">
                <node concept="37vLTw" id="5N5J$YBiDYV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5N5J$YBiDYm" resolve="selectedContent" />
                </node>
                <node concept="liA8E" id="5N5J$YBiDYW" role="2OqNvi">
                  <ref role="37wK5l" to="cjdg:~RunContentDescriptor.getProcessHandler()" resolve="getProcessHandler" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="24OxoGwU3K0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
</model>

