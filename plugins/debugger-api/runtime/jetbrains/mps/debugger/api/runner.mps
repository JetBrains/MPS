<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2a614e43-21e7-49b5-9503-c8251b638b89(jetbrains.mps.debugger.api.runner)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="5ths" ref="r:0cf7389f-e174-4742-a3d2-15c79317838a(jetbrains.mps.debug.api.run)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="fhz7" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.runners(MPS.IDEA/)" />
    <import index="dj99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.configurations(MPS.IDEA/)" />
    <import index="cjdg" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="9mrk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.executors(MPS.IDEA/)" />
    <import index="hq8m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.options(MPS.IDEA/)" />
    <import index="63nd" ref="r:891e5016-c8e3-4b89-90ed-01a5f21e6fc3(jetbrains.mps.debugger.api.ui.tool)" />
    <import index="eibu" ref="r:49e72ff8-8ace-42fd-8f9f-5961eed9792e(jetbrains.mps.execution.api.configurations)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="9mrl" ref="b00f36f0-49b7-456c-8405-740447ebb192/java:com.intellij.execution.executors(MPS.IDEA.Modules/)" />
  </imports>
  <registry>
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
      </concept>
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
  <node concept="312cEu" id="3SnNvqCbzlK">
    <property role="TrG5h" value="MPSDebugRunner" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3clFbW" id="3SnNvqCbzlS" role="jymVt">
      <node concept="3cqZAl" id="3SnNvqCbzlU" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbzlV" role="3clF47" />
      <node concept="3Tm1VV" id="3SnNvqCbzlT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3WEbiHBF2dN" role="jymVt" />
    <node concept="3clFb_" id="3SnNvqCbzlW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canRun" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SnNvqCbzm5" role="3clF47">
        <node concept="3cpWs6" id="3WEbiHBEXJw" role="3cqZAp">
          <node concept="1Wc70l" id="3WEbiHBEXJz" role="3cqZAk">
            <node concept="1Wc70l" id="3WEbiHBEXJx" role="3uHU7B">
              <node concept="2OqwBi" id="3WEbiHBEXJK" role="3uHU7B">
                <node concept="liA8E" id="3WEbiHBEXJL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="10M0yZ" id="3WEbiHBEXJM" role="37wK5m">
                    <ref role="1PxDUh" to="9mrl:~DefaultDebugExecutor" />
                    <ref role="3cqZAo" to="9mrl:~DefaultDebugExecutor.EXECUTOR_ID" />
                  </node>
                </node>
                <node concept="37vLTw" id="3WEbiHBEXJN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SnNvqCbzlZ" resolve="executorId" />
                </node>
              </node>
              <node concept="1eOMI4" id="3WEbiHBEXJ$" role="3uHU7w">
                <node concept="2ZW3vV" id="3WEbiHBEXJ_" role="1eOMHV">
                  <node concept="3uibUv" id="3WEbiHBEXJA" role="2ZW6by">
                    <ref role="3uigEE" to="eibu:3oW7HLfqDgM" resolve="BaseMpsRunConfiguration" />
                  </node>
                  <node concept="37vLTw" id="3WEbiHBEXJB" role="2ZW6bz">
                    <ref role="3cqZAo" node="3SnNvqCbzm2" resolve="profile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3WEbiHBEXJD" role="3uHU7w">
              <node concept="liA8E" id="3WEbiHBEXJE" role="2OqNvi">
                <ref role="37wK5l" to="eibu:3oW7HLfqDgN" resolve="canExecute" />
                <node concept="10M0yZ" id="3WEbiHBEXJF" role="37wK5m">
                  <ref role="1PxDUh" to="9mrl:~DefaultDebugExecutor" />
                  <ref role="3cqZAo" to="9mrl:~DefaultDebugExecutor.EXECUTOR_ID" />
                </node>
              </node>
              <node concept="1eOMI4" id="3WEbiHBEXJG" role="2Oq$k0">
                <node concept="10QFUN" id="3WEbiHBEXJH" role="1eOMHV">
                  <node concept="37vLTw" id="3WEbiHBEXJI" role="10QFUP">
                    <ref role="3cqZAo" node="3SnNvqCbzm2" resolve="profile" />
                  </node>
                  <node concept="3uibUv" id="3WEbiHBEXJJ" role="10QFUM">
                    <ref role="3uigEE" to="eibu:3oW7HLfqDgM" resolve="BaseMpsRunConfiguration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3SnNvqCbzlY" role="3clF45" />
      <node concept="37vLTG" id="3SnNvqCbzlZ" role="3clF46">
        <property role="TrG5h" value="executorId" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6s9bz$sl3VU" role="1tU5fm" />
        <node concept="2AHcQZ" id="3SnNvqCbzm1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbzm2" role="3clF46">
        <property role="TrG5h" value="profile" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="3SnNvqCbzm4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="3oTAX9lRJVQ" role="1tU5fm">
          <ref role="3uigEE" to="dj99:~RunProfile" resolve="RunProfile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbzlX" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_S9$w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3WEbiHBF2H9" role="jymVt" />
    <node concept="3clFb_" id="3SnNvqCbzn6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRunnerId" />
      <property role="DiZV1" value="false" />
      <node concept="2AHcQZ" id="3SnNvqCbznc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="17QB3L" id="6s9bz$sl3$P" role="3clF45" />
      <node concept="3clFbS" id="3SnNvqCbzn9" role="3clF47">
        <node concept="3cpWs6" id="3SnNvqCbzna" role="3cqZAp">
          <node concept="Xl_RD" id="3SnNvqCbznb" role="3cqZAk">
            <property role="Xl_RC" value="Default Debug Runner" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbzn7" role="1B3o_S" />
      <node concept="2AHcQZ" id="3tYsUK_S9$D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbznd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3SnNvqCbzny" role="Sfmx6">
        <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
      </node>
      <node concept="3clFbS" id="3SnNvqCbznq" role="3clF47">
        <node concept="3SKdUt" id="3SnNvqCbzti" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXobBd" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXobBe" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobBf" role="1PaTwD">
              <property role="3oM_SC" value="FileDocumentManager.getInstance().saveAllDocuments();" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbznr" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9Pi" role="3cqZAk">
            <ref role="37wK5l" node="3SnNvqCbznz" resolve="createContentDescriptor" />
            <node concept="2OqwBi" id="6s9bz$sl612" role="37wK5m">
              <node concept="37vLTw" id="6s9bz$sl5_O" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzno" resolve="enviroment" />
              </node>
              <node concept="liA8E" id="6s9bz$sl6pk" role="2OqNvi">
                <ref role="37wK5l" to="fhz7:~ExecutionEnvironment.getProject()" resolve="getProject" />
              </node>
            </node>
            <node concept="2OqwBi" id="7zMLEC01igj" role="37wK5m">
              <node concept="37vLTw" id="7zMLEC01cZm" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzno" resolve="enviroment" />
              </node>
              <node concept="liA8E" id="7zMLEC01yGO" role="2OqNvi">
                <ref role="37wK5l" to="fhz7:~ExecutionEnvironment.getExecutor()" resolve="getExecutor" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxghat$" role="37wK5m">
              <ref role="3cqZAo" node="3SnNvqCbznk" resolve="state" />
            </node>
            <node concept="2OqwBi" id="6s9bz$sl6ZZ" role="37wK5m">
              <node concept="37vLTw" id="6s9bz$sl6G$" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzno" resolve="enviroment" />
              </node>
              <node concept="liA8E" id="6s9bz$sl7n4" role="2OqNvi">
                <ref role="37wK5l" to="fhz7:~ExecutionEnvironment.getContentToReuse()" resolve="getContentToReuse" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgmiZw" role="37wK5m">
              <ref role="3cqZAo" node="3SnNvqCbzno" resolve="enviroment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3SnNvqCbzne" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbznf" role="3clF45">
        <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
      </node>
      <node concept="37vLTG" id="3SnNvqCbznk" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3oTAX9lRJVW" role="1tU5fm">
          <ref role="3uigEE" to="dj99:~RunProfileState" resolve="RunProfileState" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbzno" role="3clF46">
        <property role="TrG5h" value="enviroment" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3SnNvqCbznp" role="1tU5fm">
          <ref role="3uigEE" to="fhz7:~ExecutionEnvironment" resolve="ExecutionEnvironment" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S9$_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbznz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createContentDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3SnNvqCbzp0" role="Sfmx6">
        <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
      </node>
      <node concept="2AHcQZ" id="3SnNvqCbzoZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3SnNvqCbznK" role="3clF47">
        <node concept="3cpWs8" id="3SnNvqCbznL" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbznM" role="3cpWs9">
            <property role="TrG5h" value="debugger" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbznN" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaH" resolve="IDebugger" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3SnNvqCbztk" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXobBg" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXobBh" role="1PaTwD">
              <property role="3oM_SC" value="todo" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobBi" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobBj" role="1PaTwD">
              <property role="3oM_SC" value="connection" />
            </node>
            <node concept="3oM_SD" id="ATZLwXobBk" role="1PaTwD">
              <property role="3oM_SC" value="settings" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbznO" role="3cqZAp">
          <node concept="3clFbS" id="3SnNvqCbznY" role="3clFbx">
            <node concept="3clFbF" id="3SnNvqCbznZ" role="3cqZAp">
              <node concept="37vLTI" id="3SnNvqCbzo0" role="3clFbG">
                <node concept="2OqwBi" id="3SnNvqCbzo2" role="37vLTx">
                  <node concept="2OqwBi" id="3SnNvqCbzo3" role="2Oq$k0">
                    <node concept="1eOMI4" id="3SnNvqCbzo4" role="2Oq$k0">
                      <node concept="10QFUN" id="3SnNvqCbzo5" role="1eOMHV">
                        <node concept="3uibUv" id="3oTAX9lRJW0" role="10QFUM">
                          <ref role="3uigEE" to="5ths:3SnNvqCaJfM" resolve="DebuggerRunProfileState" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgm9Qv" role="10QFUP">
                          <ref role="3cqZAo" node="3SnNvqCbznE" resolve="state" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3SnNvqCbzo8" role="2OqNvi">
                      <ref role="37wK5l" to="5ths:3SnNvqCaJgL" resolve="getDebuggerConfiguration" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3SnNvqCbzo9" role="2OqNvi">
                    <ref role="37wK5l" to="5ths:3SnNvqCaJfn" resolve="getDebugger" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTrXv" role="37vLTJ">
                  <ref role="3cqZAo" node="3SnNvqCbznM" resolve="debugger" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3SnNvqCbznS" role="9aQIa">
            <node concept="3clFbS" id="3SnNvqCbznT" role="9aQI4">
              <node concept="YS8fn" id="3SnNvqCbznU" role="3cqZAp">
                <node concept="2ShNRf" id="3SnNvqCbznV" role="YScLw">
                  <node concept="1pGfFk" id="3SnNvqCbznW" role="2ShVmc">
                    <ref role="37wK5l" to="3v5a:~ExecutionException.&lt;init&gt;(java.lang.String)" resolve="ExecutionException" />
                    <node concept="Xl_RD" id="3SnNvqCbznX" role="37wK5m">
                      <property role="Xl_RC" value="Unknown Run Profile State" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3SnNvqCbznP" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm5DP" role="2ZW6bz">
              <ref role="3cqZAo" node="3SnNvqCbznE" resolve="state" />
            </node>
            <node concept="3uibUv" id="3oTAX9lRJVZ" role="2ZW6by">
              <ref role="3uigEE" to="5ths:3SnNvqCaJfM" resolve="DebuggerRunProfileState" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SnNvqCbzoa" role="3cqZAp">
          <node concept="3clFbS" id="3SnNvqCbzoe" role="3clFbx">
            <node concept="YS8fn" id="3SnNvqCbzof" role="3cqZAp">
              <node concept="2ShNRf" id="3SnNvqCbzog" role="YScLw">
                <node concept="1pGfFk" id="3SnNvqCbzoh" role="2ShVmc">
                  <ref role="37wK5l" to="3v5a:~ExecutionException.&lt;init&gt;(java.lang.String)" resolve="ExecutionException" />
                  <node concept="Xl_RD" id="3SnNvqCbzoi" role="37wK5m">
                    <property role="Xl_RC" value="Can't Start Debugger" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3SnNvqCbzob" role="3clFbw">
            <node concept="10Nm6u" id="3SnNvqCbzod" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTrqE" role="3uHU7B">
              <ref role="3cqZAo" node="3SnNvqCbznM" resolve="debugger" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbzoj" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbzok" role="3cpWs9">
            <property role="TrG5h" value="debugSessionCreator" />
            <property role="3TUv4t" value="false" />
            <node concept="2OqwBi" id="3SnNvqCbzom" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTypN" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbznM" resolve="debugger" />
              </node>
              <node concept="liA8E" id="3SnNvqCbzoo" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJIz" resolve="createDebugSessionCreator" />
                <node concept="37vLTw" id="2BHiRxglGU2" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznA" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3SnNvqCbzol" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJiH" resolve="AbstractDebugSessionCreator" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbzoq" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbzor" role="3cpWs9">
            <property role="TrG5h" value="executionResult" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbzos" role="1tU5fm">
              <ref role="3uigEE" to="3v5a:~ExecutionResult" resolve="ExecutionResult" />
            </node>
            <node concept="2OqwBi" id="3SnNvqCbzot" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTxWL" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzok" resolve="debugSessionCreator" />
              </node>
              <node concept="liA8E" id="3SnNvqCbzov" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJiS" resolve="startSession" />
                <node concept="37vLTw" id="2BHiRxgheGq" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznC" resolve="executor" />
                </node>
                <node concept="Xjq3P" id="3SnNvqCbzox" role="37wK5m" />
                <node concept="37vLTw" id="2BHiRxgm9kn" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznE" resolve="state" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm90M" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznA" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbzo$" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbzo_" role="3cpWs9">
            <property role="TrG5h" value="debugSession" />
            <property role="3TUv4t" value="false" />
            <node concept="2OqwBi" id="3SnNvqCbzoB" role="33vP2m">
              <node concept="liA8E" id="3SnNvqCbzoD" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaJjr" resolve="getDebugSession" />
              </node>
              <node concept="37vLTw" id="3GM_nagTAEv" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzok" resolve="debugSessionCreator" />
              </node>
            </node>
            <node concept="3uibUv" id="3SnNvqCbzoA" role="1tU5fm">
              <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5p_z32FSCKQ" role="3cqZAp">
          <node concept="Xl_RD" id="5p_z32FSCLz" role="1gVpfI">
            <property role="Xl_RC" value="Two process handlers for the same debug session" />
          </node>
          <node concept="3clFbC" id="5p_z32FSCLc" role="1gVkn0">
            <node concept="2OqwBi" id="5p_z32FSCKZ" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTwFm" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzo_" resolve="debugSession" />
              </node>
              <node concept="liA8E" id="5p_z32FSCL5" role="2OqNvi">
                <ref role="37wK5l" to="1l1h:3SnNvqCaKa4" resolve="getProcessHandler" />
              </node>
            </node>
            <node concept="2OqwBi" id="5p_z32FSCLm" role="3uHU7w">
              <node concept="liA8E" id="5p_z32FSCLs" role="2OqNvi">
                <ref role="37wK5l" to="3v5a:~ExecutionResult.getProcessHandler()" resolve="getProcessHandler" />
              </node>
              <node concept="37vLTw" id="3GM_nagT_nQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3SnNvqCbzor" resolve="executionResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SnNvqCbzoE" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbzoF" role="3clFbG">
            <node concept="2YIFZM" id="3SnNvqCbzoG" role="2Oq$k0">
              <ref role="1Pybhc" to="1l1h:3SnNvqCaJmA" resolve="DebugSessionManagerComponent" />
              <ref role="37wK5l" to="1l1h:3SnNvqCaJob" resolve="getInstance" />
              <node concept="37vLTw" id="2BHiRxghbBP" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbznA" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="3SnNvqCbzoI" role="2OqNvi">
              <ref role="37wK5l" to="1l1h:3SnNvqCaJqX" resolve="addDebugSession" />
              <node concept="37vLTw" id="3GM_nagTB58" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbzo_" resolve="debugSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3SnNvqCbzoK" role="3cqZAp">
          <node concept="3cpWsn" id="3SnNvqCbzoL" role="3cpWs9">
            <property role="TrG5h" value="contentBuilder" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3SnNvqCbzoM" role="1tU5fm">
              <ref role="3uigEE" to="63nd:3SnNvqCbxLP" resolve="DebuggerToolContentBuilder" />
            </node>
            <node concept="2ShNRf" id="3SnNvqCbzoN" role="33vP2m">
              <node concept="1pGfFk" id="3SnNvqCbzoO" role="2ShVmc">
                <ref role="37wK5l" to="63nd:3SnNvqCbxMN" resolve="DebuggerToolContentBuilder" />
                <node concept="37vLTw" id="2BHiRxglBzp" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznA" resolve="project" />
                </node>
                <node concept="Xjq3P" id="3SnNvqCbzoQ" role="37wK5m" />
                <node concept="37vLTw" id="2BHiRxgmMVg" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznC" resolve="executor" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$BG" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbzor" resolve="executionResult" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm5L4" role="37wK5m">
                  <ref role="3cqZAo" node="3SnNvqCbznI" resolve="env" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SnNvqCbzoU" role="3cqZAp">
          <node concept="2OqwBi" id="3SnNvqCbzoV" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagTwa2" role="2Oq$k0">
              <ref role="3cqZAo" node="3SnNvqCbzoL" resolve="contentBuilder" />
            </node>
            <node concept="liA8E" id="3SnNvqCbzoX" role="2OqNvi">
              <ref role="37wK5l" to="63nd:3SnNvqCbxRp" resolve="showRunContent" />
              <node concept="37vLTw" id="2BHiRxghh6$" role="37wK5m">
                <ref role="3cqZAo" node="3SnNvqCbznG" resolve="contentToReuse" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbznA" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3oTAX9lRJVY" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbznC" role="3clF46">
        <property role="TrG5h" value="executor" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbznD" role="1tU5fm">
          <ref role="3uigEE" to="3v5a:~Executor" resolve="Executor" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbznE" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3oTAX9lRJVX" role="1tU5fm">
          <ref role="3uigEE" to="dj99:~RunProfileState" resolve="RunProfileState" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbznG" role="3clF46">
        <property role="TrG5h" value="contentToReuse" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbznH" role="1tU5fm">
          <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbznI" role="3clF46">
        <property role="TrG5h" value="env" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3SnNvqCbznJ" role="1tU5fm">
          <ref role="3uigEE" to="fhz7:~ExecutionEnvironment" resolve="ExecutionEnvironment" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3SnNvqCbzn$" role="1B3o_S" />
      <node concept="3uibUv" id="3SnNvqCbzn_" role="3clF45">
        <ref role="3uigEE" to="cjdg:~RunContentDescriptor" resolve="RunContentDescriptor" />
      </node>
    </node>
    <node concept="3clFb_" id="3SnNvqCbzp1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSettingsEditor" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3oTAX9lRJW1" role="3clF45">
        <ref role="3uigEE" to="hq8m:~SettingsEditor" resolve="SettingsEditor" />
      </node>
      <node concept="3Tm1VV" id="3SnNvqCbzp2" role="1B3o_S" />
      <node concept="37vLTG" id="3SnNvqCbzp4" role="3clF46">
        <property role="TrG5h" value="executor" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3SnNvqCbzp5" role="1tU5fm">
          <ref role="3uigEE" to="3v5a:~Executor" resolve="Executor" />
        </node>
      </node>
      <node concept="37vLTG" id="3SnNvqCbzp6" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3oTAX9lRJW2" role="1tU5fm">
          <ref role="3uigEE" to="dj99:~RunConfiguration" resolve="RunConfiguration" />
        </node>
      </node>
      <node concept="3clFbS" id="3SnNvqCbzp8" role="3clF47">
        <node concept="3cpWs6" id="3SnNvqCbzp9" role="3cqZAp">
          <node concept="10Nm6u" id="3SnNvqCbzpa" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S9$G" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3SnNvqCbzlL" role="1B3o_S" />
    <node concept="3uibUv" id="3SnNvqCbzlM" role="1zkMxy">
      <ref role="3uigEE" to="fhz7:~GenericProgramRunner" resolve="GenericProgramRunner" />
    </node>
  </node>
</model>

