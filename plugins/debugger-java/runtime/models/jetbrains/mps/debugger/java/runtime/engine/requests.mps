<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d716148b-c6f9-495f-b5e7-22263b704aca(jetbrains.mps.debugger.java.runtime.engine.requests)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="xptu" ref="r:6c060161-192f-4aa3-a797-df89b30aa449(jetbrains.mps.debugger.java.runtime.engine.events)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="5qx8" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi.event(JDK-tools/)" />
    <import index="frkw" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi(JDK-tools/)" />
    <import index="rpq9" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi.request(JDK-tools/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
  <node concept="3HP615" id="2wxFklq8Gs9">
    <property role="TrG5h" value="Requestor" />
    <node concept="3Tm1VV" id="2wxFklq8Gsa" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2wxFklq8Mlb">
    <property role="TrG5h" value="ClassPrepareRequestor" />
    <node concept="3Tm1VV" id="2wxFklq8Mlc" role="1B3o_S" />
    <node concept="3uibUv" id="2wxFklq8Mld" role="3HQHJm">
      <ref role="3uigEE" node="2wxFklq8Gs9" resolve="Requestor" />
    </node>
    <node concept="3clFb_" id="2wxFklq8Mle" role="jymVt">
      <property role="TrG5h" value="processClassPrepare" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2wxFklq8Mlf" role="1B3o_S" />
      <node concept="3cqZAl" id="2wxFklq8Mlg" role="3clF45" />
      <node concept="37vLTG" id="2wxFklq8Mlh" role="3clF46">
        <property role="TrG5h" value="debugProcess" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4cAPFLA9jfJ" role="1tU5fm">
          <ref role="3uigEE" to="xptu:5ABJGODL8qN" resolve="EventsProcessor" />
        </node>
      </node>
      <node concept="37vLTG" id="2wxFklq8Mlj" role="3clF46">
        <property role="TrG5h" value="classType" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2wxFklq8Mlk" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ReferenceType" resolve="ReferenceType" />
        </node>
      </node>
      <node concept="3clFbS" id="2wxFklq8Mll" role="3clF47" />
    </node>
  </node>
  <node concept="3HP615" id="2wxFklq8UNi">
    <property role="TrG5h" value="LocatableEventRequestor" />
    <node concept="3Tm1VV" id="2wxFklq8UNj" role="1B3o_S" />
    <node concept="3uibUv" id="2wxFklq8UNk" role="3HQHJm">
      <ref role="3uigEE" node="2wxFklq8Gs9" resolve="Requestor" />
    </node>
    <node concept="3clFb_" id="2wxFklq8UNl" role="jymVt">
      <property role="TrG5h" value="isRequestHitByEvent" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2wxFklq8UNm" role="1B3o_S" />
      <node concept="10P_77" id="2wxFklq8UNn" role="3clF45" />
      <node concept="37vLTG" id="5MCUugRdJPW" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5MCUugRdJQd" role="1tU5fm">
          <ref role="3uigEE" to="xptu:5ABJGODL8$2" resolve="EventContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2wxFklq8UNq" role="3clF46">
        <property role="TrG5h" value="event" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2wxFklq8UNr" role="1tU5fm">
          <ref role="3uigEE" to="5qx8:~LocatableEvent" resolve="LocatableEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="2wxFklq8UNs" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2wxFklq8UNt" role="jymVt">
      <property role="TrG5h" value="getSuspendPolicy" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2wxFklq8UNu" role="1B3o_S" />
      <node concept="10Oyi0" id="2wxFklq8UNv" role="3clF45" />
      <node concept="3clFbS" id="2wxFklq8UNw" role="3clF47" />
    </node>
  </node>
  <node concept="3HP615" id="5ABJGODLbS2">
    <property role="TrG5h" value="IRequestManager" />
    <node concept="3Tm1VV" id="5ABJGODLbS3" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5ABJGODLc2W">
    <property role="TrG5h" value="StepRequestor" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5ABJGODLc2X" role="1B3o_S" />
    <node concept="3uibUv" id="5ABJGODLc2Y" role="EKbjA">
      <ref role="3uigEE" node="2wxFklq8Gs9" resolve="Requestor" />
    </node>
    <node concept="Wx3nA" id="5ABJGODLc2Z" role="jymVt">
      <property role="TrG5h" value="STOP" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="5ABJGODLc30" role="1tU5fm" />
      <node concept="3Tm1VV" id="5ABJGODLc31" role="1B3o_S" />
      <node concept="3cmrfG" id="5ABJGODLc32" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="5ABJGODLc33" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="2YIFZM" id="Hn0$MvbYv2" role="33vP2m">
        <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
        <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <node concept="3VsKOn" id="Hn0$MvbYv3" role="37wK5m">
          <ref role="3VsUkX" node="5ABJGODLc2W" resolve="StepRequestor" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5ABJGODLc35" role="1B3o_S" />
      <node concept="3uibUv" id="Hn0$MvbYuU" role="1tU5fm">
        <ref role="3uigEE" to="wwqx:~Logger" resolve="Logger" />
      </node>
    </node>
    <node concept="312cEg" id="5ABJGODLc38" role="jymVt">
      <property role="TrG5h" value="myStepType" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="5ABJGODLc39" role="1tU5fm" />
      <node concept="3Tm6S6" id="5ABJGODLc3a" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5ABJGODLc3b" role="jymVt">
      <property role="TrG5h" value="myDeclaringType" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5ABJGODLc3c" role="1tU5fm" />
      <node concept="3Tm6S6" id="5ABJGODLc3d" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5ABJGODLc3e" role="jymVt">
      <property role="TrG5h" value="myLineNumber" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10Oyi0" id="5ABJGODLc3f" role="1tU5fm" />
      <node concept="3Tm6S6" id="5ABJGODLc3g" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5ABJGODLc3h" role="jymVt">
      <property role="TrG5h" value="myFrameCount" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10Oyi0" id="5ABJGODLc3i" role="1tU5fm" />
      <node concept="3Tm6S6" id="5ABJGODLc3j" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5ABJGODLc3k" role="jymVt">
      <property role="TrG5h" value="mySourceName" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5ABJGODLc3l" role="1tU5fm" />
      <node concept="3Tm6S6" id="5ABJGODLc3m" role="1B3o_S" />
      <node concept="Xl_RD" id="4RIgh0JxiPH" role="33vP2m" />
    </node>
    <node concept="312cEg" id="5ABJGODLc3n" role="jymVt">
      <property role="TrG5h" value="myFramesSelector" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5ABJGODLc3o" role="1tU5fm">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJur" resolve="IDebuggableFramesSelector" />
      </node>
      <node concept="3Tm6S6" id="5ABJGODLc3p" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5ABJGODLc3q" role="jymVt">
      <node concept="3Tm1VV" id="5ABJGODLc3r" role="1B3o_S" />
      <node concept="3cqZAl" id="5ABJGODLc3s" role="3clF45" />
      <node concept="37vLTG" id="5ABJGODLc3t" role="3clF46">
        <property role="TrG5h" value="thread" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5ABJGODLcb$" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5ABJGODLc3v" role="3clF46">
        <property role="TrG5h" value="stepType" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="5ABJGODLc3w" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5ABJGODLc3x" role="3clF46">
        <property role="TrG5h" value="framesSelector" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5ABJGODLc3y" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJur" resolve="IDebuggableFramesSelector" />
        </node>
      </node>
      <node concept="3clFbS" id="5ABJGODLc3z" role="3clF47">
        <node concept="3clFbF" id="5ABJGODLc3$" role="3cqZAp">
          <node concept="37vLTI" id="5ABJGODLc3_" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuqNl" role="37vLTJ">
              <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm5Vs" role="37vLTx">
              <ref role="3cqZAo" node="5ABJGODLc3v" resolve="stepType" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ABJGODLc3C" role="3cqZAp">
          <node concept="37vLTI" id="5ABJGODLc3D" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyTI" role="37vLTJ">
              <ref role="3cqZAo" node="5ABJGODLc3n" resolve="myFramesSelector" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm8TB" role="37vLTx">
              <ref role="3cqZAo" node="5ABJGODLc3x" resolve="framesSelector" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5ABJGODLc3G" role="3cqZAp">
          <node concept="3clFbS" id="5ABJGODLc3Z" role="1zxBo7">
            <node concept="3clFbJ" id="5ABJGODLc46" role="3cqZAp">
              <node concept="3y3z36" id="5ABJGODLc47" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmclN" role="3uHU7B">
                  <ref role="3cqZAo" node="5ABJGODLc3t" resolve="thread" />
                </node>
                <node concept="10Nm6u" id="5ABJGODLc49" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="5ABJGODLc4a" role="3clFbx">
                <node concept="3clFbF" id="5ABJGODLc4b" role="3cqZAp">
                  <node concept="37vLTI" id="5ABJGODLc4c" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuh_V" role="37vLTJ">
                      <ref role="3cqZAo" node="5ABJGODLc3h" resolve="myFrameCount" />
                    </node>
                    <node concept="2OqwBi" id="5ABJGODLc4e" role="37vLTx">
                      <node concept="37vLTw" id="2BHiRxgmawV" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc3t" resolve="thread" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc4g" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~ThreadReference.frameCount()" resolve="frameCount" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5ABJGODLc4h" role="3cqZAp">
                  <node concept="3cpWsn" id="5ABJGODLc4i" role="3cpWs9">
                    <property role="TrG5h" value="frame" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="5ABJGODLc4j" role="1tU5fm">
                      <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
                    </node>
                    <node concept="2OqwBi" id="5ABJGODLc4k" role="33vP2m">
                      <node concept="37vLTw" id="2BHiRxglpNJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc3t" resolve="thread" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc4m" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~ThreadReference.frame(int)" resolve="frame" />
                        <node concept="3cmrfG" id="5ABJGODLc4n" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5ABJGODLc4o" role="3cqZAp">
                  <node concept="3y3z36" id="5ABJGODLc4p" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTwMo" role="3uHU7B">
                      <ref role="3cqZAo" node="5ABJGODLc4i" resolve="frame" />
                    </node>
                    <node concept="10Nm6u" id="5ABJGODLc4r" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="5ABJGODLc4s" role="3clFbx">
                    <node concept="3clFbF" id="5ABJGODLc4t" role="3cqZAp">
                      <node concept="37vLTI" id="5ABJGODLc4u" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxeug3q" role="37vLTJ">
                          <ref role="3cqZAo" node="5ABJGODLc3b" resolve="myDeclaringType" />
                        </node>
                        <node concept="2OqwBi" id="5ABJGODLc4w" role="37vLTx">
                          <node concept="2OqwBi" id="5ABJGODLc4x" role="2Oq$k0">
                            <node concept="2OqwBi" id="5ABJGODLc4y" role="2Oq$k0">
                              <node concept="37vLTw" id="3GM_nagTs2N" role="2Oq$k0">
                                <ref role="3cqZAo" node="5ABJGODLc4i" resolve="frame" />
                              </node>
                              <node concept="liA8E" id="5ABJGODLc4$" role="2OqNvi">
                                <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5ABJGODLc4_" role="2OqNvi">
                              <ref role="37wK5l" to="frkw:~Location.declaringType()" resolve="declaringType" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5ABJGODLc4A" role="2OqNvi">
                            <ref role="37wK5l" to="frkw:~ReferenceType.name()" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5ABJGODLc4B" role="3cqZAp">
                      <node concept="37vLTI" id="5ABJGODLc4C" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxeun2k" role="37vLTJ">
                          <ref role="3cqZAo" node="5ABJGODLc3e" resolve="myLineNumber" />
                        </node>
                        <node concept="2OqwBi" id="5ABJGODLc4E" role="37vLTx">
                          <node concept="2OqwBi" id="5ABJGODLc4F" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTynJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ABJGODLc4i" resolve="frame" />
                            </node>
                            <node concept="liA8E" id="5ABJGODLc4H" role="2OqNvi">
                              <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5ABJGODLc4I" role="2OqNvi">
                            <ref role="37wK5l" to="frkw:~Location.lineNumber()" resolve="lineNumber" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="5ABJGODLc4J" role="3cqZAp">
                      <node concept="37vLTI" id="5ABJGODLc4K" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxeuIxB" role="37vLTJ">
                          <ref role="3cqZAo" node="5ABJGODLc3k" resolve="mySourceName" />
                        </node>
                        <node concept="2OqwBi" id="5ABJGODLc4M" role="37vLTx">
                          <node concept="2OqwBi" id="5ABJGODLc4N" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTt8K" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ABJGODLc4i" resolve="frame" />
                            </node>
                            <node concept="liA8E" id="5ABJGODLc4P" role="2OqNvi">
                              <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5ABJGODLc4Q" role="2OqNvi">
                            <ref role="37wK5l" to="frkw:~Location.sourceName()" resolve="sourceName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5ABJGODLc3H" role="1zxBo5">
            <node concept="XOnhg" id="5ABJGODLc3O" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGZXy" role="1tU5fm">
                <node concept="3uibUv" id="5ABJGODLc3P" role="nSUat">
                  <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5ABJGODLc3I" role="1zc67A">
              <node concept="3clFbF" id="5ABJGODLc3J" role="3cqZAp">
                <node concept="2OqwBi" id="5ABJGODLc3K" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeofRB" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ABJGODLc33" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="5ABJGODLc3M" role="2OqNvi">
                    <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.Throwable)" resolve="error" />
                    <node concept="37vLTw" id="3GM_nagTw$z" role="37wK5m">
                      <ref role="3cqZAo" node="5ABJGODLc3O" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4RIgh0Jxteq" role="1zxBo5">
            <node concept="XOnhg" id="4RIgh0Jxter" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="4RIgh0Jxtes" role="1tU5fm">
                <node concept="3uibUv" id="4RIgh0Jxteu" role="nSUat">
                  <ref role="3uigEE" to="frkw:~AbsentInformationException" resolve="AbsentInformationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4RIgh0Jxtev" role="1zc67A">
              <node concept="3clFbF" id="4RIgh0Jxtew" role="3cqZAp">
                <node concept="2OqwBi" id="4RIgh0Jxtex" role="3clFbG">
                  <node concept="37vLTw" id="4RIgh0Jxtey" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ABJGODLc33" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="4RIgh0Jxtez" role="2OqNvi">
                    <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String,java.lang.Throwable)" />
                    <node concept="Xl_RD" id="4RIgh0JxZau" role="37wK5m">
                      <property role="Xl_RC" value="no source information for the current location" />
                    </node>
                    <node concept="37vLTw" id="4RIgh0Jxte$" role="37wK5m">
                      <ref role="3cqZAo" node="4RIgh0Jxter" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5ABJGODLc7u" role="jymVt">
      <property role="TrG5h" value="nextStep" />
      <node concept="3Tm1VV" id="5ABJGODLc7w" role="1B3o_S" />
      <node concept="3clFbS" id="5ABJGODLc7x" role="3clF47">
        <node concept="3cpWs8" id="5ABJGODLc1E" role="3cqZAp">
          <node concept="3cpWsn" id="5ABJGODLc1F" role="3cpWs9">
            <property role="TrG5h" value="thread" />
            <node concept="3uibUv" id="5ABJGODLc1G" role="1tU5fm">
              <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
            </node>
            <node concept="2OqwBi" id="5ABJGODLc1H" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgkWo2" role="2Oq$k0">
                <ref role="3cqZAo" node="5ABJGODLc7M" resolve="event" />
              </node>
              <node concept="liA8E" id="5ABJGODLc1J" role="2OqNvi">
                <ref role="37wK5l" to="5qx8:~LocatableEvent.thread()" resolve="thread" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5ABJGODLc9_" role="3cqZAp">
          <node concept="3clFbS" id="5ABJGODLc9A" role="3clFbx">
            <node concept="3cpWs6" id="5ABJGODLc9o" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz8xH" role="3cqZAk">
                <ref role="37wK5l" node="5ABJGODLc97" resolve="defaultStepType" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5ABJGODLc9K" role="3clFbw">
            <node concept="10Nm6u" id="5ABJGODLc9N" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagT_VM" role="3uHU7B">
              <ref role="3cqZAo" node="5ABJGODLc1F" resolve="thread" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5ABJGODLcbf" role="3cqZAp">
          <node concept="3clFbS" id="5ABJGODLcbg" role="1zxBo7">
            <node concept="3clFbJ" id="5ABJGODLc9P" role="3cqZAp">
              <node concept="3clFbS" id="5ABJGODLc9Q" role="3clFbx">
                <node concept="3cpWs6" id="5ABJGODLcah" role="3cqZAp">
                  <node concept="1rXfSq" id="4hiugqyz8xn" role="3cqZAk">
                    <ref role="37wK5l" node="5ABJGODLc97" resolve="defaultStepType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5ABJGODLcad" role="3clFbw">
                <node concept="3cmrfG" id="5ABJGODLcag" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="5ABJGODLca0" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTBla" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ABJGODLc1F" resolve="thread" />
                  </node>
                  <node concept="liA8E" id="5ABJGODLca6" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~ThreadReference.frameCount()" resolve="frameCount" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5ABJGODLc7V" role="3cqZAp">
              <node concept="3cpWsn" id="5ABJGODLc7W" role="3cpWs9">
                <property role="TrG5h" value="frame" />
                <node concept="3uibUv" id="5ABJGODLc7X" role="1tU5fm">
                  <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
                </node>
                <node concept="2OqwBi" id="5ABJGODLc7Y" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTxjJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ABJGODLc1F" resolve="thread" />
                  </node>
                  <node concept="liA8E" id="5ABJGODLc80" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~ThreadReference.frame(int)" resolve="frame" />
                    <node concept="3cmrfG" id="5ABJGODLc81" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5ABJGODLcbr" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyUHE" role="3cqZAk">
                <ref role="37wK5l" node="5ABJGODLc5d" resolve="nextStep" />
                <node concept="37vLTw" id="3GM_nagTtUM" role="37wK5m">
                  <ref role="3cqZAo" node="5ABJGODLc1F" resolve="thread" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyO3" role="37wK5m">
                  <ref role="3cqZAo" node="5ABJGODLc7W" resolve="frame" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5ABJGODLcbi" role="1zxBo5">
            <node concept="XOnhg" id="5ABJGODLcbj" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGZXA" role="1tU5fm">
                <node concept="3uibUv" id="5ABJGODLcbm" role="nSUat">
                  <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5ABJGODLcbl" role="1zc67A">
              <node concept="3cpWs6" id="5ABJGODLcbn" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyyYgC" role="3cqZAk">
                  <ref role="37wK5l" node="5ABJGODLc97" resolve="defaultStepType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="5ABJGODLc7G" role="3clF45" />
      <node concept="37vLTG" id="5ABJGODLc7M" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="5ABJGODLcb5" role="1tU5fm">
          <ref role="3uigEE" to="5qx8:~StepEvent" resolve="StepEvent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5ABJGODLc97" role="jymVt">
      <property role="TrG5h" value="defaultStepType" />
      <node concept="3Tm6S6" id="5ABJGODLc98" role="1B3o_S" />
      <node concept="10Oyi0" id="5ABJGODLc99" role="3clF45" />
      <node concept="3clFbS" id="5ABJGODLc9a" role="3clF47">
        <node concept="3clFbJ" id="5ABJGODLc9b" role="3cqZAp">
          <node concept="3clFbS" id="5ABJGODLc9c" role="3clFbx">
            <node concept="3cpWs6" id="5ABJGODLc9d" role="3cqZAp">
              <node concept="37vLTw" id="2BHiRxeusPM" role="3cqZAk">
                <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5ABJGODLc9f" role="3clFbw">
            <node concept="3clFbC" id="5ABJGODLc9g" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuwxU" role="3uHU7B">
                <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
              </node>
              <node concept="10M0yZ" id="5ABJGODLc9i" role="3uHU7w">
                <ref role="3cqZAo" to="rpq9:~StepRequest.STEP_OVER" resolve="STEP_OVER" />
                <ref role="1PxDUh" to="rpq9:~StepRequest" resolve="StepRequest" />
              </node>
            </node>
            <node concept="3clFbC" id="5ABJGODLc9j" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeus6O" role="3uHU7B">
                <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
              </node>
              <node concept="10M0yZ" id="5ABJGODLc9l" role="3uHU7w">
                <ref role="3cqZAo" to="rpq9:~StepRequest.STEP_INTO" resolve="STEP_INTO" />
                <ref role="1PxDUh" to="rpq9:~StepRequest" resolve="StepRequest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5ABJGODLc9m" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeoq7u" role="3cqZAk">
            <ref role="3cqZAo" node="5ABJGODLc2Z" resolve="STOP" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5ABJGODLc5d" role="jymVt">
      <property role="TrG5h" value="nextStep" />
      <node concept="3Tm6S6" id="5ABJGODLcbt" role="1B3o_S" />
      <node concept="10Oyi0" id="5ABJGODLc5f" role="3clF45" />
      <node concept="37vLTG" id="5ABJGODLc5g" role="3clF46">
        <property role="TrG5h" value="thread" />
        <node concept="3uibUv" id="5ABJGODLc5h" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
        <node concept="2AHcQZ" id="5ABJGODLcau" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5ABJGODLc5i" role="3clF46">
        <property role="TrG5h" value="frame" />
        <node concept="3uibUv" id="5ABJGODLc5j" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
        </node>
        <node concept="2AHcQZ" id="5ABJGODLcax" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5ABJGODLc5k" role="3clF47">
        <node concept="3SKdUt" id="5ABJGODLc5l" role="3cqZAp">
          <node concept="1PaTwC" id="ATZLwXocwe" role="1aUNEU">
            <node concept="3oM_SD" id="ATZLwXocwf" role="1PaTwD">
              <property role="3oM_SC" value="decides" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwg" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwh" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwi" role="1PaTwD">
              <property role="3oM_SC" value="need" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwj" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwk" role="1PaTwD">
              <property role="3oM_SC" value="step" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwl" role="1PaTwD">
              <property role="3oM_SC" value="again;" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwm" role="1PaTwD">
              <property role="3oM_SC" value="depends" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwn" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwo" role="1PaTwD">
              <property role="3oM_SC" value="whether" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwp" role="1PaTwD">
              <property role="3oM_SC" value="our" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwq" role="1PaTwD">
              <property role="3oM_SC" value="current" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwr" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocws" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwt" role="1PaTwD">
              <property role="3oM_SC" value="generated" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwu" role="1PaTwD">
              <property role="3oM_SC" value="java" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwv" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocww" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwx" role="1PaTwD">
              <property role="3oM_SC" value="been" />
            </node>
            <node concept="3oM_SD" id="ATZLwXocwy" role="1PaTwD">
              <property role="3oM_SC" value="changed." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5ABJGODLc5n" role="3cqZAp">
          <node concept="22lmx$" id="5ABJGODLc5o" role="3clFbw">
            <node concept="3clFbC" id="5ABJGODLc5p" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuq4r" role="3uHU7B">
                <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
              </node>
              <node concept="10M0yZ" id="5ABJGODLc5r" role="3uHU7w">
                <ref role="1PxDUh" to="rpq9:~StepRequest" resolve="StepRequest" />
                <ref role="3cqZAo" to="rpq9:~StepRequest.STEP_OVER" resolve="STEP_OVER" />
              </node>
            </node>
            <node concept="3clFbC" id="5ABJGODLc5s" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuN4G" role="3uHU7B">
                <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
              </node>
              <node concept="10M0yZ" id="5ABJGODLc5u" role="3uHU7w">
                <ref role="1PxDUh" to="rpq9:~StepRequest" resolve="StepRequest" />
                <ref role="3cqZAo" to="rpq9:~StepRequest.STEP_INTO" resolve="STEP_INTO" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5ABJGODLc5v" role="3clFbx">
            <node concept="3cpWs8" id="5ABJGODLc5F" role="3cqZAp">
              <node concept="3cpWsn" id="5ABJGODLc5G" role="3cpWs9">
                <property role="TrG5h" value="frameCount" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="5ABJGODLc5H" role="1tU5fm" />
                <node concept="1ZRNhn" id="5ABJGODLc5I" role="33vP2m">
                  <node concept="3cmrfG" id="5ABJGODLc5J" role="2$L3a6">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5ABJGODLc5K" role="3cqZAp">
              <node concept="3cpWsn" id="5ABJGODLc5L" role="3cpWs9">
                <property role="TrG5h" value="location" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="5ABJGODLc5M" role="1tU5fm">
                  <ref role="3uigEE" to="frkw:~Location" resolve="Location" />
                </node>
                <node concept="2OqwBi" id="5ABJGODLc5N" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmw1n" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ABJGODLc5i" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="5ABJGODLc5P" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5ABJGODLc5Q" role="3cqZAp">
              <node concept="3cpWsn" id="5ABJGODLc5R" role="3cpWs9">
                <property role="TrG5h" value="sourceName" />
                <property role="3TUv4t" value="false" />
                <node concept="17QB3L" id="5ABJGODLcbz" role="1tU5fm" />
                <node concept="Xl_RD" id="5ABJGODLc5T" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="5ABJGODLc5U" role="3cqZAp">
              <node concept="3clFbS" id="5ABJGODLc6d" role="1zxBo7">
                <node concept="3clFbF" id="5ABJGODLc6e" role="3cqZAp">
                  <node concept="37vLTI" id="5ABJGODLc6f" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTuHP" role="37vLTJ">
                      <ref role="3cqZAo" node="5ABJGODLc5G" resolve="frameCount" />
                    </node>
                    <node concept="2OqwBi" id="5ABJGODLc6h" role="37vLTx">
                      <node concept="37vLTw" id="2BHiRxgm5EZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc5g" resolve="thread" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc6j" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~ThreadReference.frameCount()" resolve="frameCount" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5ABJGODLc6k" role="3cqZAp">
                  <node concept="37vLTI" id="5ABJGODLc6l" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTsc3" role="37vLTJ">
                      <ref role="3cqZAo" node="5ABJGODLc5R" resolve="sourceName" />
                    </node>
                    <node concept="2OqwBi" id="5ABJGODLc6n" role="37vLTx">
                      <node concept="37vLTw" id="3GM_nagTsWP" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc5L" resolve="location" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc6p" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~Location.sourceName()" resolve="sourceName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="5ABJGODLc5V" role="1zxBo5">
                <node concept="XOnhg" id="5ABJGODLc62" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="xvs04dGZWc" role="1tU5fm">
                    <node concept="3uibUv" id="5ABJGODLc63" role="nSUat">
                      <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="5ABJGODLc5W" role="1zc67A">
                  <node concept="3clFbF" id="5ABJGODLc5X" role="3cqZAp">
                    <node concept="2OqwBi" id="5ABJGODLc5Y" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeodlx" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc33" resolve="LOG" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc60" role="2OqNvi">
                        <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.Throwable)" resolve="error" />
                        <node concept="37vLTw" id="3GM_nagTBat" role="37wK5m">
                          <ref role="3cqZAo" node="5ABJGODLc62" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="4RIgh0Jy7cf" role="1zxBo5">
                <node concept="XOnhg" id="4RIgh0Jy7cg" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="4RIgh0Jy7ch" role="1tU5fm">
                    <node concept="3uibUv" id="4RIgh0Jy7cj" role="nSUat">
                      <ref role="3uigEE" to="frkw:~AbsentInformationException" resolve="AbsentInformationException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4RIgh0Jy7ck" role="1zc67A">
                  <node concept="3clFbF" id="4RIgh0Jy7cl" role="3cqZAp">
                    <node concept="2OqwBi" id="4RIgh0Jy7cm" role="3clFbG">
                      <node concept="37vLTw" id="4RIgh0Jy7cn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc33" resolve="LOG" />
                      </node>
                      <node concept="liA8E" id="4RIgh0Jy7co" role="2OqNvi">
                        <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String,java.lang.Throwable)" />
                        <node concept="Xl_RD" id="4RIgh0JyC3P" role="37wK5m">
                          <property role="Xl_RC" value="no source information for the current location" />
                        </node>
                        <node concept="37vLTw" id="4RIgh0Jy7cp" role="37wK5m">
                          <ref role="3cqZAo" node="4RIgh0Jy7cg" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5ABJGODLc6q" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXocwz" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXocw$" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocw_" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwA" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwB" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwC" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwD" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwE" role="1PaTwD">
                  <property role="3oM_SC" value="debuggable" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwF" role="1PaTwD">
                  <property role="3oM_SC" value="position" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwG" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwH" role="1PaTwD">
                  <property role="3oM_SC" value="step" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwI" role="1PaTwD">
                  <property role="3oM_SC" value="again" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5ABJGODLc6s" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXocwJ" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXocwK" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwL" role="1PaTwD">
                  <property role="3oM_SC" value="TODO" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwM" role="1PaTwD">
                  <property role="3oM_SC" value="this" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwN" role="1PaTwD">
                  <property role="3oM_SC" value="place" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwO" role="1PaTwD">
                  <property role="3oM_SC" value="may" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwP" role="1PaTwD">
                  <property role="3oM_SC" value="lead" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwQ" role="1PaTwD">
                  <property role="3oM_SC" value="(and" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwR" role="1PaTwD">
                  <property role="3oM_SC" value="does" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwS" role="1PaTwD">
                  <property role="3oM_SC" value="lead)" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwT" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwU" role="1PaTwD">
                  <property role="3oM_SC" value="bad" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwV" role="1PaTwD">
                  <property role="3oM_SC" value="performance" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwW" role="1PaTwD">
                  <property role="3oM_SC" value="(see" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocwX" role="1PaTwD">
                  <property role="3oM_SC" value="MPS-8725)" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5ABJGODLc6u" role="3cqZAp">
              <node concept="1Wc70l" id="5ABJGODLc6v" role="3clFbw">
                <node concept="3fqX7Q" id="5ABJGODLc6w" role="3uHU7B">
                  <node concept="2OqwBi" id="5ABJGODLc6x" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagTBh6" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ABJGODLc5R" resolve="sourceName" />
                    </node>
                    <node concept="liA8E" id="5ABJGODLc6z" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="5ABJGODLc6$" role="3uHU7w">
                  <node concept="2OqwBi" id="5ABJGODLc6_" role="3fr31v">
                    <node concept="37vLTw" id="2BHiRxeuNTZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ABJGODLc3n" resolve="myFramesSelector" />
                    </node>
                    <node concept="liA8E" id="5ABJGODLc6B" role="2OqNvi">
                      <ref role="37wK5l" to="1l1h:3SnNvqCaJuN" resolve="isDebuggablePosition" />
                      <node concept="2OqwBi" id="5ABJGODLc6C" role="37wK5m">
                        <node concept="2OqwBi" id="5ABJGODLc6D" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTtGP" role="2Oq$k0">
                            <ref role="3cqZAo" node="5ABJGODLc5L" resolve="location" />
                          </node>
                          <node concept="liA8E" id="5ABJGODLc6F" role="2OqNvi">
                            <ref role="37wK5l" to="frkw:~Location.declaringType()" resolve="declaringType" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5ABJGODLc6G" role="2OqNvi">
                          <ref role="37wK5l" to="frkw:~ReferenceType.name()" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_gs" role="37wK5m">
                        <ref role="3cqZAo" node="5ABJGODLc5R" resolve="sourceName" />
                      </node>
                      <node concept="2OqwBi" id="5ABJGODLc6I" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTtcp" role="2Oq$k0">
                          <ref role="3cqZAo" node="5ABJGODLc5L" resolve="location" />
                        </node>
                        <node concept="liA8E" id="5ABJGODLc6K" role="2OqNvi">
                          <ref role="37wK5l" to="frkw:~Location.lineNumber()" resolve="lineNumber" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5ABJGODLc6L" role="3clFbx">
                <node concept="3cpWs6" id="5ABJGODLc6M" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxeuxQ4" role="3cqZAk">
                    <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="5ABJGODLc6Z" role="3cqZAp">
              <node concept="1PaTwC" id="ATZLwXocwY" role="1aUNEU">
                <node concept="3oM_SD" id="ATZLwXocwZ" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx0" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx1" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx2" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx3" role="1PaTwD">
                  <property role="3oM_SC" value="on" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx4" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx5" role="1PaTwD">
                  <property role="3oM_SC" value="same" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx6" role="1PaTwD">
                  <property role="3oM_SC" value="place" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx7" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx8" role="1PaTwD">
                  <property role="3oM_SC" value="should" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocx9" role="1PaTwD">
                  <property role="3oM_SC" value="step" />
                </node>
                <node concept="3oM_SD" id="ATZLwXocxa" role="1PaTwD">
                  <property role="3oM_SC" value="again" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5ABJGODLc71" role="3cqZAp">
              <node concept="2OqwBi" id="5ABJGODLc72" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxeusp0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ABJGODLc3n" resolve="myFramesSelector" />
                </node>
                <node concept="liA8E" id="5ABJGODLc74" role="2OqNvi">
                  <ref role="37wK5l" to="1l1h:3SnNvqCaJuX" resolve="isSamePosition" />
                  <node concept="37vLTw" id="2BHiRxeug4u" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc3b" resolve="myDeclaringType" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuWQL" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc3k" resolve="mySourceName" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuO0O" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc3e" resolve="myLineNumber" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeujnY" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc3h" resolve="myFrameCount" />
                  </node>
                  <node concept="2OqwBi" id="5ABJGODLc79" role="37wK5m">
                    <node concept="2OqwBi" id="5ABJGODLc7a" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTrpL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5ABJGODLc5L" resolve="location" />
                      </node>
                      <node concept="liA8E" id="5ABJGODLc7c" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~Location.declaringType()" resolve="declaringType" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5ABJGODLc7d" role="2OqNvi">
                      <ref role="37wK5l" to="frkw:~ReferenceType.name()" resolve="name" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTvjr" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc5R" resolve="sourceName" />
                  </node>
                  <node concept="2OqwBi" id="5ABJGODLc7f" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTuEP" role="2Oq$k0">
                      <ref role="3cqZAo" node="5ABJGODLc5L" resolve="location" />
                    </node>
                    <node concept="liA8E" id="5ABJGODLc7h" role="2OqNvi">
                      <ref role="37wK5l" to="frkw:~Location.lineNumber()" resolve="lineNumber" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrPo" role="37wK5m">
                    <ref role="3cqZAo" node="5ABJGODLc5G" resolve="frameCount" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5ABJGODLc7j" role="3clFbx">
                <node concept="3cpWs6" id="5ABJGODLc7k" role="3cqZAp">
                  <node concept="37vLTw" id="2BHiRxeuoYN" role="3cqZAk">
                    <ref role="3cqZAo" node="5ABJGODLc38" resolve="myStepType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5ABJGODLc7m" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeooZL" role="3cqZAk">
            <ref role="3cqZAo" node="5ABJGODLc2Z" resolve="STOP" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

