<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ac4cce94-c169-4971-be8f-807482637028(jetbrains.mps.debugger.java.api.state.proxy)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="dcbi" ref="r:ea2e6d1f-eab5-4a08-8299-1abe57148f37(jetbrains.mps.debugger.java.api.evaluation.proxies)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="2s0o" ref="r:6ed9d174-6cbf-4569-b2b8-259c43efcbd9(jetbrains.mps.debugger.java.api.state.watchables)" />
    <import index="vjwt" ref="r:96c2681b-d258-4b28-81fb-0850456a3cee(jetbrains.mps.debugger.java.api.ui)" />
    <import index="pry4" ref="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" />
    <import index="frkw" ref="b387285c-3448-452c-b3bb-a3f8de8eaf08/java:com.sun.jdi(JDK-tools/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="qgwr" ref="r:f326a98e-32f7-47a0-ba29-239107a89ca4(jetbrains.mps.debugger.java.api.evaluation)" />
    <import index="wtoj" ref="r:42278aae-7cc0-4e00-9041-018f7301c362(jetbrains.mps.debugger.java.api.state.customViewers)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="1l1h" ref="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="312cEu" id="2Y$mRnIClP8">
    <property role="TrG5h" value="ValueWrapper" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="16euLQ" id="6bMlO3sVoYg" role="16eVyc">
      <property role="TrG5h" value="V" />
      <node concept="3uibUv" id="6bMlO3sVsZF" role="3ztrMU">
        <ref role="3uigEE" to="dcbi:46sxDGTfnwG" resolve="IValueProxy" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2Y$mRnIClP9" role="1B3o_S" />
    <node concept="3uibUv" id="2Y$mRnIClPa" role="1zkMxy">
      <ref role="3uigEE" node="2Y$mRnIClHy" resolve="JavaValue" />
      <node concept="16syzq" id="6bMlO3sVsZJ" role="11_B2D">
        <ref role="16sUi3" node="6bMlO3sVoYg" resolve="V" />
      </node>
    </node>
    <node concept="3uibUv" id="2g7jLxixq8Q" role="EKbjA">
      <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
    </node>
    <node concept="312cEg" id="OCKLzzQf6Y" role="jymVt">
      <property role="TrG5h" value="myPresentation" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="OCKLzzQf8K" role="1tU5fm" />
      <node concept="3Tm6S6" id="OCKLzzQf6Z" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="2Y$mRnIClPj" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnIClPk" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnIClPl" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnIClPm" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="16syzq" id="6bMlO3sVsZL" role="1tU5fm">
          <ref role="16sUi3" node="6bMlO3sVoYg" resolve="V" />
        </node>
        <node concept="2AHcQZ" id="3E$bVnPdnER" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="6OGoYT50IvA" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <node concept="3uibUv" id="6OGoYT50IvH" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
        <node concept="2AHcQZ" id="6OGoYT50VXd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnIClPo" role="3clF47">
        <node concept="XkiVB" id="2Y$mRnIClPp" role="3cqZAp">
          <ref role="37wK5l" node="2Y$mRnICm2T" resolve="JavaValue" />
          <node concept="37vLTw" id="2BHiRxghiDX" role="37wK5m">
            <ref role="3cqZAo" node="2Y$mRnIClPm" resolve="value" />
          </node>
          <node concept="37vLTw" id="6OGoYT50Iw5" role="37wK5m">
            <ref role="3cqZAo" node="6OGoYT50IvA" resolve="threadReference" />
          </node>
        </node>
        <node concept="3clFbF" id="OCKLzzQfdK" role="3cqZAp">
          <node concept="37vLTI" id="OCKLzzQfri" role="3clFbG">
            <node concept="2OqwBi" id="6OGoYT50Pcu" role="37vLTx">
              <node concept="37vLTw" id="6OGoYT50VwS" role="2Oq$k0">
                <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
              </node>
              <node concept="liA8E" id="5j5ipK29oHm" role="2OqNvi">
                <ref role="37wK5l" to="dcbi:6OGoYT55y5B" resolve="getPresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="OCKLzzQfdJ" role="37vLTJ">
              <ref role="3cqZAo" node="OCKLzzQf6Y" resolve="myPresentation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClPL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentationIcon" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClPM" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIClPN" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClPO" role="3clF47">
        <node concept="3clFbJ" id="6OGoYT55LA8" role="3cqZAp">
          <node concept="3clFbS" id="6OGoYT55LAb" role="3clFbx">
            <node concept="3cpWs6" id="6OGoYT55LCn" role="3cqZAp">
              <node concept="10M0yZ" id="6OGoYT55LCF" role="3cqZAk">
                <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                <ref role="3cqZAo" to="vjwt:15fzu3GFwyV" resolve="VALUE_PRIMITIVE" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6OGoYT55LC7" role="3clFbw">
            <node concept="3uibUv" id="6OGoYT55LCe" role="2ZW6by">
              <ref role="3uigEE" to="dcbi:46sxDGTfogo" resolve="INullValueProxy" />
            </node>
            <node concept="37vLTw" id="6OGoYT55LAD" role="2ZW6bz">
              <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6OGoYT50R4t" role="3cqZAp">
          <node concept="3clFbS" id="6OGoYT50R4w" role="3clFbx">
            <node concept="3cpWs6" id="6OGoYT50R6K" role="3cqZAp">
              <node concept="10M0yZ" id="62cXPsTLK95" role="3cqZAk">
                <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                <ref role="3cqZAo" to="vjwt:15fzu3GFwyV" resolve="VALUE_PRIMITIVE" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6OGoYT50R6p" role="3clFbw">
            <node concept="3uibUv" id="6OGoYT50R6w" role="2ZW6by">
              <ref role="3uigEE" to="dcbi:46sxDGTfohp" resolve="PrimitiveValueProxy" />
            </node>
            <node concept="37vLTw" id="6OGoYT50R4V" role="2ZW6bz">
              <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6OGoYT50R73" role="3cqZAp">
          <node concept="3clFbS" id="6OGoYT50R74" role="3clFbx">
            <node concept="3cpWs6" id="6OGoYT50R75" role="3cqZAp">
              <node concept="10M0yZ" id="6OGoYT50R76" role="3cqZAk">
                <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                <ref role="3cqZAo" to="vjwt:Udqlnt87$A" resolve="VALUE_ARRAY" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6OGoYT50R77" role="3clFbw">
            <node concept="3uibUv" id="6OGoYT50Uu9" role="2ZW6by">
              <ref role="3uigEE" to="dcbi:46sxDGTfo14" resolve="IArrayValueProxy" />
            </node>
            <node concept="37vLTw" id="6OGoYT50R79" role="2ZW6bz">
              <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6OGoYT50R7w" role="3cqZAp">
          <node concept="10M0yZ" id="6OGoYT50R7x" role="3cqZAk">
            <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
            <ref role="3cqZAo" to="vjwt:15fzu3GFwyM" resolve="VALUE_OBJECT" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClPT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClPU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getValuePresentation" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClPV" role="1B3o_S" />
      <node concept="17QB3L" id="2g7jLxixq6R" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnIClPX" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClPY" role="3cqZAp">
          <node concept="37vLTw" id="OCKLzzQg2_" role="3cqZAk">
            <ref role="3cqZAo" node="OCKLzzQf6Y" resolve="myPresentation" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClQ2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="OCKLzzQcAE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="calculateSubvalues" />
      <node concept="3Tm1VV" id="OCKLzzQcAF" role="1B3o_S" />
      <node concept="_YKpA" id="OCKLzzQcAH" role="3clF45">
        <node concept="3uibUv" id="OCKLzzQcAI" role="_ZDj9">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
      <node concept="3clFbS" id="OCKLzzQcAJ" role="3clF47">
        <node concept="3cpWs8" id="2Y$mRnIClQ8" role="3cqZAp">
          <node concept="3cpWsn" id="2Y$mRnIClQ9" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Y$mRnIClQa" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2g7jLxixq8P" role="11_B2D">
                <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
              </node>
            </node>
            <node concept="2ShNRf" id="2Y$mRnIClQc" role="33vP2m">
              <node concept="1pGfFk" id="2Y$mRnIClQd" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2g7jLxixq6V" role="1pMfVU">
                  <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2Y$mRnIClQf" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyHTz" role="1DdaDG">
            <ref role="37wK5l" node="2Y$mRnIClQs" resolve="getSubvaluesImpl" />
          </node>
          <node concept="3cpWsn" id="2Y$mRnIClQh" role="1Duv9x">
            <property role="TrG5h" value="watchable" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2g7jLxixq6Y" role="1tU5fm">
              <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
            </node>
          </node>
          <node concept="3clFbS" id="2Y$mRnIClQj" role="2LFqv$">
            <node concept="3clFbF" id="2Y$mRnIClQk" role="3cqZAp">
              <node concept="2OqwBi" id="2Y$mRnIClQl" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagT_hx" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Y$mRnIClQ9" resolve="result" />
                </node>
                <node concept="liA8E" id="2Y$mRnIClQn" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="3GM_nagT_jP" role="37wK5m">
                    <ref role="3cqZAo" node="2Y$mRnIClQh" resolve="watchable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Y$mRnIClQp" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTv01" role="3cqZAk">
            <ref role="3cqZAo" node="2Y$mRnIClQ9" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_S3bB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClQs" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getSubvaluesImpl" />
      <property role="DiZV1" value="false" />
      <node concept="_YKpA" id="6bMlO3sVGbX" role="3clF45">
        <node concept="3qUE_q" id="6bMlO3sVCpx" role="_ZDj9">
          <node concept="3uibUv" id="6bMlO3sVJ7Q" role="3qUE_r">
            <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2Y$mRnIClQt" role="1B3o_S" />
      <node concept="3clFbS" id="2Y$mRnIClQw" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2Y$mRnIClQx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isStructure" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClQy" role="1B3o_S" />
      <node concept="10P_77" id="2Y$mRnIClQz" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnIClQ$" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClQ_" role="3cqZAp">
          <node concept="3clFbT" id="2Y$mRnIClQA" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClQB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClQC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getThreadReference" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClQD" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIClQE" role="3clF45">
        <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClQF" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClQG" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuT$J" role="3cqZAk">
            <ref role="3cqZAo" node="2Y$mRnICm2Q" resolve="myThreadReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2q5$iJmAtPa" role="jymVt">
      <property role="TrG5h" value="getVM" />
      <node concept="3Tm1VV" id="2q5$iJmAtPc" role="1B3o_S" />
      <node concept="3clFbS" id="2q5$iJmAtPd" role="3clF47">
        <node concept="3clFbF" id="2q5$iJmAu3x" role="3cqZAp">
          <node concept="2OqwBi" id="5j5ipK2arj4" role="3clFbG">
            <node concept="2OqwBi" id="2q5$iJmAu3J" role="2Oq$k0">
              <node concept="37vLTw" id="5j5ipK2ahdj" role="2Oq$k0">
                <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
              </node>
              <node concept="liA8E" id="2q5$iJmAu3P" role="2OqNvi">
                <ref role="37wK5l" to="dcbi:46sxDGTfnwJ" resolve="getJDIValue" />
              </node>
            </node>
            <node concept="liA8E" id="5j5ipK2aseG" role="2OqNvi">
              <ref role="37wK5l" to="frkw:~Mirror.virtualMachine()" resolve="virtualMachine" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2q5$iJmAtPe" role="3clF45">
        <ref role="3uigEE" to="frkw:~VirtualMachine" resolve="VirtualMachine" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Y$mRnIClQT">
    <property role="TrG5h" value="JavaThread" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="2Y$mRnIClQU" role="1B3o_S" />
    <node concept="3uibUv" id="2Y$mRnIClQV" role="1zkMxy">
      <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
    </node>
    <node concept="3uibUv" id="2g7jLxixDpY" role="EKbjA">
      <ref role="3uigEE" to="pry4:3SnNvqCaJfr" resolve="IThread" />
    </node>
    <node concept="312cEg" id="2Y$mRnIClR2" role="jymVt">
      <property role="TrG5h" value="myThreadReference" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2Y$mRnIClR3" role="1tU5fm">
        <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
      </node>
      <node concept="3Tm6S6" id="2Y$mRnIClR4" role="1B3o_S" />
      <node concept="2AHcQZ" id="2Y$mRnIClR5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="2Y$mRnIClR6" role="jymVt">
      <property role="TrG5h" value="myCachedIcon" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2Y$mRnIClR7" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm6S6" id="2Y$mRnIClR8" role="1B3o_S" />
      <node concept="2AHcQZ" id="2Y$mRnIClRa" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="312cEg" id="1Ba1dBdGu$$" role="jymVt">
      <property role="TrG5h" value="myStackFrames" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1Ba1dBdGu$_" role="1B3o_S" />
      <node concept="_YKpA" id="1Ba1dBdGu$O" role="1tU5fm">
        <node concept="3uibUv" id="1Ba1dBdGu$Q" role="_ZDj9">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
        </node>
      </node>
      <node concept="2ShNRf" id="1Ba1dBdGu$S" role="33vP2m">
        <node concept="Tc6Ow" id="1Ba1dBdGu$U" role="2ShVmc">
          <node concept="3uibUv" id="1Ba1dBdGu$W" role="HW$YZ">
            <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1Ba1dBdGu$X" role="jymVt">
      <property role="TrG5h" value="myInitialized" />
      <property role="34CwA1" value="false" />
      <node concept="3Tm6S6" id="1Ba1dBdGu$Y" role="1B3o_S" />
      <node concept="10P_77" id="1Ba1dBdGu_d" role="1tU5fm" />
      <node concept="3clFbT" id="1Ba1dBdGu_f" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="2Jh_PqefK30" role="jymVt">
      <property role="TrG5h" value="myPresentation" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2Jh_PqefK31" role="1B3o_S" />
      <node concept="17QB3L" id="2Jh_PqefK33" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6k4GBOyf6Vl" role="jymVt">
      <property role="TrG5h" value="myDebugSession" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6k4GBOyf6Vm" role="1B3o_S" />
      <node concept="3uibUv" id="6k4GBOyf6Vo" role="1tU5fm">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        <node concept="3qTvmN" id="6k4GBOyf6Vp" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="6k4GBOyf6b9" role="jymVt" />
    <node concept="3clFbW" id="2Y$mRnIClRb" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnIClRc" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnIClRd" role="3clF45" />
      <node concept="37vLTG" id="6k4GBOyeW4a" role="3clF46">
        <property role="TrG5h" value="debugSession" />
        <node concept="3uibUv" id="6k4GBOyf0Ua" role="1tU5fm">
          <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
          <node concept="3qTvmN" id="6k4GBOyf69g" role="11_B2D" />
        </node>
        <node concept="2AHcQZ" id="6k4GBOyf7Ur" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2Y$mRnIClRe" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2Y$mRnIClRf" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
        <node concept="2AHcQZ" id="2Y$mRnIClRg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnIClRh" role="3clF47">
        <node concept="XkiVB" id="2Y$mRnIClRi" role="3cqZAp">
          <ref role="37wK5l" node="2Y$mRnICm0g" resolve="ProxyForJava" />
          <node concept="37vLTw" id="2BHiRxgld_I" role="37wK5m">
            <ref role="3cqZAo" node="2Y$mRnIClRe" resolve="threadReference" />
          </node>
        </node>
        <node concept="3clFbF" id="2Y$mRnIClRk" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnIClRl" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuWSG" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
            </node>
            <node concept="37vLTw" id="2BHiRxghhOg" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnIClRe" resolve="threadReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Jh_PqefK35" role="3cqZAp">
          <node concept="37vLTI" id="2Jh_PqefK37" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyyY$l" role="37vLTx">
              <ref role="37wK5l" node="2Jh_PqefK2w" resolve="calculatePresentation" />
            </node>
            <node concept="37vLTw" id="2BHiRxeul6i" role="37vLTJ">
              <ref role="3cqZAo" node="2Jh_PqefK30" resolve="myPresentation" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HPXYdN5F0B" role="3cqZAp">
          <node concept="37vLTI" id="6HPXYdN5F0P" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyyYz_" role="37vLTx">
              <ref role="37wK5l" node="6HPXYdN5EZT" resolve="calculateIcon" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuqMm" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnIClR6" resolve="myCachedIcon" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6k4GBOyf6Vq" role="3cqZAp">
          <node concept="37vLTI" id="6k4GBOyf6Vs" role="3clFbG">
            <node concept="37vLTw" id="6k4GBOyf6Vv" role="37vLTJ">
              <ref role="3cqZAo" node="6k4GBOyf6Vl" resolve="myDebugSession" />
            </node>
            <node concept="37vLTw" id="6k4GBOyf6Vw" role="37vLTx">
              <ref role="3cqZAo" node="6k4GBOyeW4a" resolve="debugSession" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1Ba1dBdGw5b" role="jymVt">
      <property role="TrG5h" value="initializeFrames" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="1Ba1dBdGw5c" role="3clF45" />
      <node concept="3Tm1VV" id="7I7en9Qj2F5" role="1B3o_S" />
      <node concept="3clFbS" id="1Ba1dBdGw5e" role="3clF47">
        <node concept="3clFbJ" id="1Ba1dBdGw6W" role="3cqZAp">
          <node concept="3clFbS" id="1Ba1dBdGw6X" role="3clFbx">
            <node concept="3cpWs6" id="1Ba1dBdGw73" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="2BHiRxeuTvA" role="3clFbw">
            <ref role="3cqZAo" node="1Ba1dBdGu$X" resolve="myInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="1Ba1dBdGw6t" role="3cqZAp">
          <node concept="37vLTI" id="1Ba1dBdGw6F" role="3clFbG">
            <node concept="3clFbT" id="1Ba1dBdGw6I" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuW45" role="37vLTJ">
              <ref role="3cqZAo" node="1Ba1dBdGu$X" resolve="myInitialized" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1Ba1dBdGw5t" role="3cqZAp">
          <node concept="3clFbS" id="1Ba1dBdGw5D" role="1zxBo7">
            <node concept="1Dw8fO" id="1Ba1dBdGw5L" role="3cqZAp">
              <node concept="3cpWsn" id="1Ba1dBdGw5M" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="1Ba1dBdGw5N" role="1tU5fm" />
                <node concept="3cmrfG" id="1Ba1dBdGw5O" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="1Ba1dBdGw5P" role="1Dwp0S">
                <node concept="37vLTw" id="3GM_nagTvAD" role="3uHU7B">
                  <ref role="3cqZAo" node="1Ba1dBdGw5M" resolve="i" />
                </node>
                <node concept="2OqwBi" id="1Ba1dBdGw5R" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxeuNVj" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
                  </node>
                  <node concept="liA8E" id="1Ba1dBdGw5T" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~ThreadReference.frameCount()" resolve="frameCount" />
                  </node>
                </node>
              </node>
              <node concept="3uNrnE" id="1Ba1dBdGw5U" role="1Dwrff">
                <node concept="37vLTw" id="3GM_nagTvL4" role="2$L3a6">
                  <ref role="3cqZAo" node="1Ba1dBdGw5M" resolve="i" />
                </node>
              </node>
              <node concept="3clFbS" id="1Ba1dBdGw5W" role="2LFqv$">
                <node concept="3clFbF" id="1Ba1dBdGw5X" role="3cqZAp">
                  <node concept="2OqwBi" id="3GtPtwP4goT" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuyVN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1Ba1dBdGu$$" resolve="myStackFrames" />
                    </node>
                    <node concept="TSZUe" id="3GtPtwP4kgD" role="2OqNvi">
                      <node concept="2ShNRf" id="1Ba1dBdGw61" role="25WWJ7">
                        <node concept="1pGfFk" id="1Ba1dBdGw62" role="2ShVmc">
                          <ref role="37wK5l" node="2Y$mRnICmp1" resolve="JavaStackFrame" />
                          <node concept="Xjq3P" id="5n7fGGQgeCO" role="37wK5m" />
                          <node concept="37vLTw" id="3GM_nagT_7B" role="37wK5m">
                            <ref role="3cqZAo" node="1Ba1dBdGw5M" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1Ba1dBdGw5u" role="1zxBo5">
            <node concept="XOnhg" id="1Ba1dBdGw5B" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="xvs04dGZbU" role="1tU5fm">
                <node concept="3uibUv" id="1Ba1dBdGw5C" role="nSUat">
                  <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1Ba1dBdGw5v" role="1zc67A">
              <node concept="RRSsy" id="3jYQuSB36Yk" role="3cqZAp">
                <node concept="Xl_RD" id="1Ba1dBdGw6L" role="RRSoy">
                  <property role="Xl_RC" value="IncompatibleThreadStateException" />
                </node>
                <node concept="37vLTw" id="3GM_nagTtsp" role="RRSow">
                  <ref role="3cqZAo" node="1Ba1dBdGw5B" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClRo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFrames" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClRp" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIClRq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2g7jLxixrDC" role="11_B2D">
          <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnIClRs" role="3clF47">
        <node concept="3cpWs6" id="1Ba1dBdGu_n" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeumZ_" role="3cqZAk">
            <ref role="3cqZAo" node="1Ba1dBdGu$$" resolve="myStackFrames" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClS8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClS9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFramesCount" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClSa" role="1B3o_S" />
      <node concept="10Oyi0" id="2Y$mRnIClSb" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnIClSc" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClSr" role="3cqZAp">
          <node concept="2OqwBi" id="3GtPtwP3Tty" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeuq6U" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ba1dBdGu$$" resolve="myStackFrames" />
            </node>
            <node concept="34oBXx" id="3GtPtwP3Wg$" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClSv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClSw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFrame" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClSx" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixrDF" role="3clF45">
        <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
      </node>
      <node concept="37vLTG" id="2Y$mRnIClSz" role="3clF46">
        <property role="TrG5h" value="index" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="2Y$mRnIClS$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClS_" role="3clF47">
        <node concept="3clFbF" id="1Ba1dBdGw7d" role="3cqZAp">
          <node concept="2OqwBi" id="1Ba1dBdGw7r" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuLci" role="2Oq$k0">
              <ref role="3cqZAo" node="1Ba1dBdGu$$" resolve="myStackFrames" />
            </node>
            <node concept="34jXtK" id="1Ba1dBdGw7x" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgm8LT" role="25WWJ7">
                <ref role="3cqZAo" node="2Y$mRnIClSz" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClT2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClT3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getThread" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClT4" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIClT5" role="3clF45">
        <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClT6" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClT7" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukxP" role="3cqZAk">
            <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClT9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="6k4GBOyftFX" role="jymVt" />
    <node concept="3clFb_" id="6k4GBOyflXT" role="jymVt">
      <property role="TrG5h" value="getDebugSession" />
      <node concept="3uibUv" id="6k4GBOyfmOX" role="3clF45">
        <ref role="3uigEE" to="1l1h:3SnNvqCaJaG" resolve="AbstractDebugSession" />
        <node concept="3qTvmN" id="6k4GBOyfnBs" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="6k4GBOyflXW" role="1B3o_S" />
      <node concept="3clFbS" id="6k4GBOyflXX" role="3clF47">
        <node concept="3cpWs6" id="6k4GBOyfsMl" role="3cqZAp">
          <node concept="37vLTw" id="6k4GBOyfsXA" role="3cqZAk">
            <ref role="3cqZAo" node="6k4GBOyf6Vl" resolve="myDebugSession" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6k4GBOyfuuo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="6k4GBOyfkm4" role="jymVt" />
    <node concept="3clFb_" id="2Y$mRnIClTa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClTb" role="1B3o_S" />
      <node concept="17QB3L" id="2g7jLxixq6O" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnIClTd" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnIClTe" role="3cqZAp">
          <node concept="2OqwBi" id="2Y$mRnIClTf" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeuwCl" role="2Oq$k0">
              <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
            </node>
            <node concept="liA8E" id="2Y$mRnIClTh" role="2OqNvi">
              <ref role="37wK5l" to="frkw:~ThreadReference.name()" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClTi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClTj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClTk" role="1B3o_S" />
      <node concept="17QB3L" id="2g7jLxixq6P" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnIClTm" role="3clF47">
        <node concept="3clFbF" id="2Jh_PqefK3c" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuTwU" role="3clFbG">
            <ref role="3cqZAo" node="2Jh_PqefK30" resolve="myPresentation" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClTQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Jh_PqefK2w" role="jymVt">
      <property role="TrG5h" value="calculatePresentation" />
      <node concept="3Tm6S6" id="2Jh_PqefK2x" role="1B3o_S" />
      <node concept="17QB3L" id="2Jh_PqefK2y" role="3clF45" />
      <node concept="3clFbS" id="2Jh_PqefK2z" role="3clF47">
        <node concept="1gVbGN" id="Is3U_yNMWw" role="3cqZAp">
          <node concept="3fqX7Q" id="Is3U_yNMWx" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvcwA" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Jh_PqefK2$" role="3cqZAp">
          <node concept="3cpWs3" id="2Jh_PqefK2_" role="3cqZAk">
            <node concept="3cpWs3" id="2Jh_PqefK2A" role="3uHU7B">
              <node concept="3cpWs3" id="2Jh_PqefK2B" role="3uHU7B">
                <node concept="3cpWs3" id="2Jh_PqefK2C" role="3uHU7B">
                  <node concept="3cpWs3" id="2Jh_PqefK2D" role="3uHU7B">
                    <node concept="3cpWs3" id="2Jh_PqefK2E" role="3uHU7B">
                      <node concept="2OqwBi" id="2Jh_PqefK2F" role="3uHU7B">
                        <node concept="37vLTw" id="2BHiRxeuTr$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
                        </node>
                        <node concept="liA8E" id="2Jh_PqefK2H" role="2OqNvi">
                          <ref role="37wK5l" to="frkw:~ThreadReference.name()" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2Jh_PqefK2I" role="3uHU7w">
                        <property role="Xl_RC" value=" (" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2Jh_PqefK2J" role="3uHU7w">
                      <node concept="2OqwBi" id="2Jh_PqefK2K" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxeutra" role="2Oq$k0">
                          <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
                        </node>
                        <node concept="liA8E" id="2Jh_PqefK2M" role="2OqNvi">
                          <ref role="37wK5l" to="frkw:~ObjectReference.referenceType()" resolve="referenceType" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2Jh_PqefK2N" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~ReferenceType.name()" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2Jh_PqefK2O" role="3uHU7w">
                    <property role="Xl_RC" value=" from group " />
                  </node>
                </node>
                <node concept="2OqwBi" id="2Jh_PqefK2P" role="3uHU7w">
                  <node concept="2OqwBi" id="2Jh_PqefK2Q" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxeujoj" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
                    </node>
                    <node concept="liA8E" id="2Jh_PqefK2S" role="2OqNvi">
                      <ref role="37wK5l" to="frkw:~ThreadReference.threadGroup()" resolve="threadGroup" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2Jh_PqefK2T" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~ThreadGroupReference.name()" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2Jh_PqefK2U" role="3uHU7w">
                <property role="Xl_RC" value=") : " />
              </node>
            </node>
            <node concept="2YIFZM" id="2Jh_PqefK2V" role="3uHU7w">
              <ref role="1Pybhc" node="2Y$mRnIClQT" resolve="JavaThread" />
              <ref role="37wK5l" node="2Y$mRnIClUv" resolve="getThreadStatusText" />
              <node concept="2OqwBi" id="2Jh_PqefK2W" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxeukH6" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
                </node>
                <node concept="liA8E" id="2Jh_PqefK2Y" role="2OqNvi">
                  <ref role="37wK5l" to="frkw:~ThreadReference.status()" resolve="status" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnIClTR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentationIcon" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnIClTS" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnIClTT" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClTU" role="3clF47">
        <node concept="3clFbF" id="6HPXYdN5F0s" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeumZg" role="3clFbG">
            <ref role="3cqZAo" node="2Y$mRnIClR6" resolve="myCachedIcon" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnIClUu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6HPXYdN5EZT" role="jymVt">
      <property role="TrG5h" value="calculateIcon" />
      <node concept="3Tm6S6" id="6HPXYdN5EZU" role="1B3o_S" />
      <node concept="3clFbS" id="6HPXYdN5EZW" role="3clF47">
        <node concept="1gVbGN" id="6HPXYdN5EZX" role="3cqZAp">
          <node concept="3fqX7Q" id="6HPXYdN5EZY" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvcy8" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6HPXYdN5F02" role="3cqZAp">
          <node concept="2OqwBi" id="6HPXYdN5F03" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeukZo" role="2Oq$k0">
              <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
            </node>
            <node concept="liA8E" id="6HPXYdN5F05" role="2OqNvi">
              <ref role="37wK5l" to="frkw:~ThreadReference.isAtBreakpoint()" resolve="isAtBreakpoint" />
            </node>
          </node>
          <node concept="3clFbJ" id="6HPXYdN5F06" role="9aQIa">
            <node concept="2OqwBi" id="6HPXYdN5F07" role="3clFbw">
              <node concept="37vLTw" id="2BHiRxeuq7Q" role="2Oq$k0">
                <ref role="3cqZAo" node="2Y$mRnIClR2" resolve="myThreadReference" />
              </node>
              <node concept="liA8E" id="6HPXYdN5F09" role="2OqNvi">
                <ref role="37wK5l" to="frkw:~ThreadReference.isSuspended()" resolve="isSuspended" />
              </node>
            </node>
            <node concept="9aQIb" id="6HPXYdN5F0a" role="9aQIa">
              <node concept="3clFbS" id="6HPXYdN5F0b" role="9aQI4">
                <node concept="3cpWs6" id="6HPXYdN5F0$" role="3cqZAp">
                  <node concept="10M0yZ" id="6HPXYdN5F0f" role="3cqZAk">
                    <ref role="3cqZAo" to="vjwt:15fzu3GFwxE" resolve="THREAD_RUNNING" />
                    <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6HPXYdN5F0g" role="3clFbx">
              <node concept="3cpWs6" id="6HPXYdN5F0y" role="3cqZAp">
                <node concept="10M0yZ" id="6HPXYdN5F0k" role="3cqZAk">
                  <ref role="3cqZAo" to="vjwt:15fzu3GFwxx" resolve="THREAD_SUSPENDED" />
                  <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6HPXYdN5F0l" role="3clFbx">
            <node concept="3cpWs6" id="6HPXYdN5F0w" role="3cqZAp">
              <node concept="10M0yZ" id="6HPXYdN5F0p" role="3cqZAk">
                <ref role="1PxDUh" to="vjwt:2Y$mRnIClK2" resolve="Icons" />
                <ref role="3cqZAo" to="vjwt:15fzu3GFwxo" resolve="THREAD_CURRENT" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6HPXYdN5F0u" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="2YIFZL" id="2Y$mRnIClUv" role="jymVt">
      <property role="TrG5h" value="getThreadStatusText" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="2Y$mRnIClUw" role="1B3o_S" />
      <node concept="17QB3L" id="2g7jLxixq6Q" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnIClUy" role="3clF46">
        <property role="TrG5h" value="statusId" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="2Y$mRnIClUz" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2Y$mRnIClU$" role="3clF47">
        <node concept="3KaCP$" id="2Y$mRnIClU_" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxgmqfm" role="3KbGdf">
            <ref role="3cqZAo" node="2Y$mRnIClUy" resolve="statusId" />
          </node>
          <node concept="3clFbS" id="2Y$mRnIClUB" role="3Kb1Dw">
            <node concept="3cpWs6" id="2Y$mRnIClUC" role="3cqZAp">
              <node concept="Xl_RD" id="2Y$mRnIClUD" role="3cqZAk">
                <property role="Xl_RC" value="UNDEFINED" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClUE" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClUF" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_MONITOR" resolve="THREAD_STATUS_MONITOR" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClUG" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClUH" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClUI" role="3cqZAk">
                  <property role="Xl_RC" value="MONITOR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClUJ" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClUK" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_NOT_STARTED" resolve="THREAD_STATUS_NOT_STARTED" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClUL" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClUM" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClUN" role="3cqZAk">
                  <property role="Xl_RC" value="NOT_STARTED" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClUO" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClUP" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_RUNNING" resolve="THREAD_STATUS_RUNNING" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClUQ" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClUR" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClUS" role="3cqZAk">
                  <property role="Xl_RC" value="RUNNING" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClUT" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClUU" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_SLEEPING" resolve="THREAD_STATUS_SLEEPING" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClUV" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClUW" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClUX" role="3cqZAk">
                  <property role="Xl_RC" value="SLEEPING" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClUY" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClUZ" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_UNKNOWN" resolve="THREAD_STATUS_UNKNOWN" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClV0" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClV1" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClV2" role="3cqZAk">
                  <property role="Xl_RC" value="UNKNOWN" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClV3" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClV4" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_WAIT" resolve="THREAD_STATUS_WAIT" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClV5" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClV6" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClV7" role="3cqZAk">
                  <property role="Xl_RC" value="WAIT" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Y$mRnIClV8" role="3KbHQx">
            <node concept="10M0yZ" id="2Y$mRnIClV9" role="3Kbmr1">
              <ref role="1PxDUh" to="frkw:~ThreadReference" resolve="ThreadReference" />
              <ref role="3cqZAo" to="frkw:~ThreadReference.THREAD_STATUS_ZOMBIE" resolve="THREAD_STATUS_ZOMBIE" />
            </node>
            <node concept="3clFbS" id="2Y$mRnIClVa" role="3Kbo56">
              <node concept="3cpWs6" id="2Y$mRnIClVb" role="3cqZAp">
                <node concept="Xl_RD" id="2Y$mRnIClVc" role="3cqZAk">
                  <property role="Xl_RC" value="ZOMBIE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Y$mRnIClHx">
    <property role="TrG5h" value="ProxyForJava" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="2Y$mRnICm0c" role="1B3o_S" />
    <node concept="312cEg" id="2Y$mRnICm0d" role="jymVt">
      <property role="TrG5h" value="myObject" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2Y$mRnICm0e" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="2Y$mRnICm0f" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="2Y$mRnICm0g" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnICm0h" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnICm0i" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnICm0j" role="3clF46">
        <property role="TrG5h" value="o" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2Y$mRnICm0k" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICm0l" role="3clF47">
        <node concept="3clFbF" id="2Y$mRnICm0m" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnICm0n" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeulQd" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnICm0d" resolve="myObject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgldxd" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnICm0j" resolve="o" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICm0q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICm0r" role="1B3o_S" />
      <node concept="10Oyi0" id="2Y$mRnICm0s" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnICm0t" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnICm0u" role="3cqZAp">
          <node concept="2OqwBi" id="2Y$mRnICm0v" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeuE6A" role="2Oq$k0">
              <ref role="3cqZAo" node="2Y$mRnICm0d" resolve="myObject" />
            </node>
            <node concept="liA8E" id="2Y$mRnICm0x" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICm0y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICm0z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICm0$" role="1B3o_S" />
      <node concept="10P_77" id="2Y$mRnICm0_" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnICm0A" role="3clF46">
        <property role="TrG5h" value="obj" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="2Y$mRnICm0B" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICm0C" role="3clF47">
        <node concept="3clFbJ" id="2Y$mRnICm0D" role="3cqZAp">
          <node concept="2ZW3vV" id="2Y$mRnICm0E" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm7fa" role="2ZW6bz">
              <ref role="3cqZAo" node="2Y$mRnICm0A" resolve="obj" />
            </node>
            <node concept="3uibUv" id="2Y$mRnICm0G" role="2ZW6by">
              <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
            </node>
          </node>
          <node concept="3clFbS" id="2Y$mRnICm0H" role="3clFbx">
            <node concept="3cpWs8" id="2Y$mRnICm0I" role="3cqZAp">
              <node concept="3cpWsn" id="2Y$mRnICm0J" role="3cpWs9">
                <property role="TrG5h" value="proxyForJava" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="2Y$mRnICm0K" role="1tU5fm">
                  <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
                </node>
                <node concept="10QFUN" id="2Y$mRnICm0L" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmCKA" role="10QFUP">
                    <ref role="3cqZAo" node="2Y$mRnICm0A" resolve="obj" />
                  </node>
                  <node concept="3uibUv" id="2Y$mRnICm0N" role="10QFUM">
                    <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2Y$mRnICm0O" role="3cqZAp">
              <node concept="3clFbC" id="2Y$mRnICm0P" role="3cqZAk">
                <node concept="2OqwBi" id="2Y$mRnICm0Q" role="3uHU7B">
                  <node concept="2OwXpG" id="2Y$mRnICm0R" role="2OqNvi">
                    <ref role="2Oxat5" node="2Y$mRnICm0d" resolve="myObject" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTviI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Y$mRnICm0J" resolve="proxyForJava" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeul$u" role="3uHU7w">
                  <ref role="3cqZAo" node="2Y$mRnICm0d" resolve="myObject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2Y$mRnICm0U" role="3cqZAp">
          <node concept="3clFbT" id="2Y$mRnICm0V" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICm0W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Y$mRnIClHy">
    <property role="TrG5h" value="JavaValue" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="16euLQ" id="6OGoYT50i8a" role="16eVyc">
      <property role="TrG5h" value="V" />
      <node concept="3uibUv" id="6OGoYT50i8e" role="3ztrMU">
        <ref role="3uigEE" to="dcbi:46sxDGTfnwG" resolve="IValueProxy" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2Y$mRnICm2G" role="1B3o_S" />
    <node concept="3uibUv" id="2Y$mRnICm2H" role="1zkMxy">
      <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
    </node>
    <node concept="3uibUv" id="2g7jLxixpMb" role="EKbjA">
      <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
    </node>
    <node concept="312cEg" id="2Y$mRnICm2J" role="jymVt">
      <property role="TrG5h" value="myValue" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="16syzq" id="6OGoYT50i8k" role="1tU5fm">
        <ref role="16sUi3" node="6OGoYT50i8a" resolve="V" />
      </node>
      <node concept="3Tmbuc" id="2Y$mRnICm2L" role="1B3o_S" />
      <node concept="2AHcQZ" id="2Y$mRnICm2M" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="312cEg" id="2Y$mRnICm2Q" role="jymVt">
      <property role="TrG5h" value="myThreadReference" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2Y$mRnICm2R" role="1tU5fm">
        <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
      </node>
      <node concept="3Tmbuc" id="2Y$mRnICm2S" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="OCKLzzO44N" role="jymVt">
      <property role="TrG5h" value="mySubvalues" />
      <property role="34CwA1" value="true" />
      <node concept="_YKpA" id="OCKLzzO45W" role="1tU5fm">
        <node concept="3uibUv" id="OCKLzzO467" role="_ZDj9">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="OCKLzzO44O" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="2Y$mRnICm2T" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnICm2U" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnICm2V" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnICm2W" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="16syzq" id="6OGoYT50i8i" role="1tU5fm">
          <ref role="16sUi3" node="6OGoYT50i8a" resolve="V" />
        </node>
        <node concept="2AHcQZ" id="6OGoYT50faG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2Y$mRnICm30" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="6OGoYT50faI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="2Y$mRnICm31" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICm32" role="3clF47">
        <node concept="XkiVB" id="2Y$mRnICm33" role="3cqZAp">
          <ref role="37wK5l" node="2Y$mRnICm0g" resolve="ProxyForJava" />
          <node concept="37vLTw" id="2BHiRxgmuZB" role="37wK5m">
            <ref role="3cqZAo" node="2Y$mRnICm2W" resolve="value" />
          </node>
        </node>
        <node concept="3clFbF" id="2Y$mRnICm35" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnICm36" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuPIo" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
            </node>
            <node concept="37vLTw" id="2BHiRxgheYR" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnICm2W" resolve="value" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Y$mRnICm3d" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnICm3e" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuVvO" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnICm2Q" resolve="myThreadReference" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm_np" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnICm30" resolve="threadReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICm5S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getValue" />
      <property role="DiZV1" value="false" />
      <node concept="16syzq" id="6OGoYT50i8g" role="3clF45">
        <ref role="16sUi3" node="6OGoYT50i8a" resolve="V" />
      </node>
      <node concept="3Tm1VV" id="2Y$mRnICm5T" role="1B3o_S" />
      <node concept="3clFbS" id="2Y$mRnICm5V" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnICm5W" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuh$_" role="3cqZAk">
            <ref role="3cqZAo" node="2Y$mRnICm2J" resolve="myValue" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICm5Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="OCKLzzO3PM" role="jymVt">
      <property role="TrG5h" value="initSubvalues" />
      <node concept="3cqZAl" id="OCKLzzO3PO" role="3clF45" />
      <node concept="3Tm1VV" id="OCKLzzO3PP" role="1B3o_S" />
      <node concept="3clFbS" id="OCKLzzO3PQ" role="3clF47">
        <node concept="3clFbF" id="OCKLzzO49G" role="3cqZAp">
          <node concept="37vLTI" id="OCKLzzO57C" role="3clFbG">
            <node concept="1rXfSq" id="OCKLzzO5oe" role="37vLTx">
              <ref role="37wK5l" node="OCKLzzNZe_" resolve="calculateSubvalues" />
            </node>
            <node concept="37vLTw" id="OCKLzzO49F" role="37vLTJ">
              <ref role="3cqZAo" node="OCKLzzO44N" resolve="mySubvalues" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SeMW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="OCKLzzNZe_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="calculateSubvalues" />
      <node concept="3Tm1VV" id="OCKLzzNZeC" role="1B3o_S" />
      <node concept="3clFbS" id="OCKLzzNZeD" role="3clF47" />
      <node concept="_YKpA" id="OCKLzzO3Cd" role="3clF45">
        <node concept="3uibUv" id="OCKLzzO3Ch" role="_ZDj9">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="OCKLzzO3GG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getSubvalues" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="OCKLzzO3GH" role="1B3o_S" />
      <node concept="3uibUv" id="OCKLzzO3GI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="OCKLzzO3GJ" role="11_B2D">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
      <node concept="3clFbS" id="OCKLzzO3GL" role="3clF47">
        <node concept="3clFbF" id="OCKLzzO3GN" role="3cqZAp">
          <node concept="37vLTw" id="OCKLzzO5Eb" role="3clFbG">
            <ref role="3cqZAo" node="OCKLzzO44N" resolve="mySubvalues" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SeMV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Y$mRnICmoJ">
    <property role="TrG5h" value="JavaStackFrame" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="2Y$mRnICmoK" role="1B3o_S" />
    <node concept="3uibUv" id="2Y$mRnICmoL" role="1zkMxy">
      <ref role="3uigEE" node="2Y$mRnIClHx" resolve="ProxyForJava" />
    </node>
    <node concept="3uibUv" id="2g7jLxixq8w" role="EKbjA">
      <ref role="3uigEE" to="pry4:3SnNvqCaJt9" resolve="IStackFrame" />
    </node>
    <node concept="312cEg" id="2Y$mRnICmoV" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="2Y$mRnICmoW" role="1tU5fm" />
      <node concept="3Tm6S6" id="2Y$mRnICmoX" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5n7fGGQgatI" role="jymVt">
      <property role="TrG5h" value="myLocation" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5n7fGGQgatJ" role="1B3o_S" />
      <node concept="3uibUv" id="5n7fGGQgatR" role="1tU5fm">
        <ref role="3uigEE" node="3DGS_W7MKYf" resolve="JavaLocation" />
      </node>
    </node>
    <node concept="312cEg" id="5n7fGGQgauX" role="jymVt">
      <property role="TrG5h" value="myThread" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5n7fGGQgauY" role="1B3o_S" />
      <node concept="3uibUv" id="5n7fGGQgav6" role="1tU5fm">
        <ref role="3uigEE" node="2Y$mRnIClQT" resolve="JavaThread" />
      </node>
    </node>
    <node concept="312cEg" id="7I7en9Qj5kg" role="jymVt">
      <property role="TrG5h" value="myContextWatchable" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7I7en9Qj5kh" role="1B3o_S" />
      <node concept="3uibUv" id="1YTTEQ7Xk0Z" role="1tU5fm">
        <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
      </node>
    </node>
    <node concept="312cEg" id="7SN$RPLZvO6" role="jymVt">
      <property role="TrG5h" value="myVariables" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7SN$RPLZvO7" role="1B3o_S" />
      <node concept="_YKpA" id="7SN$RPLZvO8" role="1tU5fm">
        <node concept="3uibUv" id="7SN$RPLZvOj" role="_ZDj9">
          <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
        </node>
      </node>
      <node concept="2ShNRf" id="7SN$RPLZvOa" role="33vP2m">
        <node concept="Tc6Ow" id="7SN$RPLZvOb" role="2ShVmc">
          <node concept="3uibUv" id="7SN$RPLZvOk" role="HW$YZ">
            <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7I7en9Qj5kw" role="jymVt">
      <property role="TrG5h" value="myInitialized" />
      <node concept="3Tm6S6" id="7I7en9Qj5kx" role="1B3o_S" />
      <node concept="10P_77" id="7I7en9Qj5kD" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="2Y$mRnICmp1" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnICmp2" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnICmp3" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnICmp4" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5n7fGGQgavr" role="1tU5fm">
          <ref role="3uigEE" node="2Y$mRnIClQT" resolve="JavaThread" />
        </node>
      </node>
      <node concept="37vLTG" id="2Y$mRnICmp6" role="3clF46">
        <property role="TrG5h" value="i" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="2Y$mRnICmp7" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2Y$mRnICmp8" role="3clF47">
        <node concept="XkiVB" id="2Y$mRnICmp9" role="3cqZAp">
          <ref role="37wK5l" node="2Y$mRnICm0g" resolve="ProxyForJava" />
          <node concept="2ShNRf" id="2Y$mRnICmpa" role="37wK5m">
            <node concept="1pGfFk" id="2Y$mRnICmpb" role="2ShVmc">
              <ref role="37wK5l" to="18ew:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
              <node concept="3uibUv" id="5n7fGGQgcd1" role="1pMfVU">
                <ref role="3uigEE" node="2Y$mRnIClQT" resolve="JavaThread" />
              </node>
              <node concept="3uibUv" id="2Y$mRnICmpd" role="1pMfVU">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
              <node concept="37vLTw" id="2BHiRxgl1$X" role="37wK5m">
                <ref role="3cqZAo" node="2Y$mRnICmp4" resolve="threadReference" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmcrT" role="37wK5m">
                <ref role="3cqZAo" node="2Y$mRnICmp6" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Y$mRnICmpg" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnICmph" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuq7O" role="37vLTJ">
              <ref role="3cqZAo" node="2Y$mRnICmoV" resolve="myIndex" />
            </node>
            <node concept="37vLTw" id="2BHiRxglWKZ" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnICmp6" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Y$mRnICmpk" role="3cqZAp">
          <node concept="37vLTI" id="2Y$mRnICmpl" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuncE" role="37vLTJ">
              <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmesR" role="37vLTx">
              <ref role="3cqZAo" node="2Y$mRnICmp4" resolve="threadReference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Y$mRnICmpy" role="3cqZAp">
          <node concept="3cpWsn" id="2Y$mRnICmpz" role="3cpWs9">
            <property role="TrG5h" value="stackFrame" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Y$mRnICmp$" role="1tU5fm">
              <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyVrn" role="33vP2m">
              <ref role="37wK5l" node="2Y$mRnICmqa" resolve="getStackFrame" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Y$mRnICmpA" role="3cqZAp">
          <node concept="3y3z36" id="5n7fGGQgau2" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTzq2" role="3uHU7B">
              <ref role="3cqZAo" node="2Y$mRnICmpz" resolve="stackFrame" />
            </node>
            <node concept="10Nm6u" id="5n7fGGQgau4" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2Y$mRnICmpE" role="3clFbx">
            <node concept="3clFbF" id="5n7fGGQgatW" role="3cqZAp">
              <node concept="37vLTI" id="5n7fGGQgatY" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuvxH" role="37vLTJ">
                  <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
                </node>
                <node concept="2ShNRf" id="2Y$mRnICmpI" role="37vLTx">
                  <node concept="1pGfFk" id="2Y$mRnICmpJ" role="2ShVmc">
                    <ref role="37wK5l" node="3DGS_W7MKYt" resolve="JavaLocation" />
                    <node concept="2OqwBi" id="5n7fGGQgau7" role="37wK5m">
                      <node concept="37vLTw" id="3GM_nagTzXg" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Y$mRnICmpz" resolve="stackFrame" />
                      </node>
                      <node concept="liA8E" id="5n7fGGQgau9" role="2OqNvi">
                        <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5n7fGGQgaua" role="9aQIa">
            <node concept="3clFbS" id="5n7fGGQgaub" role="9aQI4">
              <node concept="3clFbF" id="5n7fGGQgauc" role="3cqZAp">
                <node concept="37vLTI" id="5n7fGGQgauL" role="3clFbG">
                  <node concept="10Nm6u" id="5n7fGGQgauO" role="37vLTx" />
                  <node concept="37vLTw" id="2BHiRxeufBy" role="37vLTJ">
                    <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICmpu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLocation" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmpv" role="1B3o_S" />
      <node concept="3uibUv" id="5n7fGGQgatA" role="3clF45">
        <ref role="3uigEE" node="3DGS_W7MKYf" resolve="JavaLocation" />
      </node>
      <node concept="3clFbS" id="2Y$mRnICmpx" role="3clF47">
        <node concept="3clFbF" id="5n7fGGQgatS" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuOR0" role="3clFbG">
            <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICmpN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="5n7fGGQgauQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICmpO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getThread" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmpP" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixrD_" role="3clF45">
        <ref role="3uigEE" node="2Y$mRnIClQT" resolve="JavaThread" />
      </node>
      <node concept="3clFbS" id="2Y$mRnICmpR" role="3clF47">
        <node concept="3clFbF" id="5n7fGGQgazt" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeun5E" role="3clFbG">
            <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICmq9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICmqa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getStackFrame" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmqb" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnICmqc" role="3clF45">
        <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
      </node>
      <node concept="3clFbS" id="2Y$mRnICmqd" role="3clF47">
        <node concept="1gVbGN" id="5n7fGGQgbJG" role="3cqZAp">
          <node concept="3fqX7Q" id="5n7fGGQgbJI" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvdJ7" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2Y$mRnICmqe" role="3cqZAp">
          <node concept="3clFbS" id="2Y$mRnICmqq" role="1zxBo7">
            <node concept="3cpWs6" id="2Y$mRnICmqr" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzjLb" role="3cqZAk">
                <ref role="37wK5l" node="7SN$RPLZvSq" resolve="getFrame" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="2Y$mRnICmqf" role="1zxBo5">
            <node concept="XOnhg" id="2Y$mRnICmqo" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="xvs04dGZbY" role="1tU5fm">
                <node concept="3uibUv" id="2Y$mRnICmqp" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2Y$mRnICmqg" role="1zc67A">
              <node concept="3clFbF" id="2Y$mRnICmqh" role="3cqZAp">
                <node concept="2OqwBi" id="2Y$mRnICmqi" role="3clFbG">
                  <node concept="liA8E" id="2Y$mRnICmqk" role="2OqNvi">
                    <ref role="37wK5l" to="wwqx:~Logger.error(java.lang.Throwable)" resolve="error" />
                    <node concept="37vLTw" id="3GM_nagT_Un" role="37wK5m">
                      <ref role="3cqZAo" node="2Y$mRnICmqo" resolve="t" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2hdoiXP3HHZ" role="2Oq$k0">
                    <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
                    <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
                    <node concept="3VsKOn" id="2hdoiXP3P3r" role="37wK5m">
                      <ref role="3VsUkX" node="2Y$mRnICmoJ" resolve="JavaStackFrame" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2Y$mRnICmqm" role="3cqZAp">
                <node concept="10Nm6u" id="2Y$mRnICmqn" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICmqw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICmsf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getVisibleWatchables" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmsg" role="1B3o_S" />
      <node concept="3clFbS" id="2Y$mRnICmsj" role="3clF47">
        <node concept="3cpWs8" id="7SN$RPLZvQC" role="3cqZAp">
          <node concept="3cpWsn" id="7SN$RPLZvQD" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="_YKpA" id="7SN$RPLZvQE" role="1tU5fm">
              <node concept="3uibUv" id="7SN$RPLZvQG" role="_ZDj9">
                <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
              </node>
            </node>
            <node concept="2ShNRf" id="7SN$RPLZvQI" role="33vP2m">
              <node concept="Tc6Ow" id="7SN$RPLZvQK" role="2ShVmc">
                <node concept="3uibUv" id="7SN$RPLZvQM" role="HW$YZ">
                  <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7SN$RPLZvRc" role="3cqZAp">
          <node concept="2OqwBi" id="7SN$RPLZvRq" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTuoA" role="2Oq$k0">
              <ref role="3cqZAo" node="7SN$RPLZvQD" resolve="watchables" />
            </node>
            <node concept="X8dFx" id="7SN$RPLZvRw" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxeuhTx" role="25WWJ7">
                <ref role="3cqZAo" node="7SN$RPLZvO6" resolve="myVariables" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1YTTEQ7Xk12" role="3cqZAp">
          <node concept="3clFbS" id="1YTTEQ7Xk13" role="3clFbx">
            <node concept="3clFbF" id="1YTTEQ7Xk1o" role="3cqZAp">
              <node concept="2OqwBi" id="1YTTEQ7Xk1A" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTtWw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7SN$RPLZvQD" resolve="watchables" />
                </node>
                <node concept="TSZUe" id="1YTTEQ7Xk1G" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxeukE3" role="25WWJ7">
                    <ref role="3cqZAo" node="7I7en9Qj5kg" resolve="myContextWatchable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1YTTEQ7Xk1k" role="3clFbw">
            <node concept="10Nm6u" id="1YTTEQ7Xk1n" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuVwh" role="3uHU7B">
              <ref role="3cqZAo" node="7I7en9Qj5kg" resolve="myContextWatchable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7SN$RPLZvR$" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTrSN" role="3clFbG">
            <ref role="3cqZAo" node="7SN$RPLZvQD" resolve="watchables" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICmtJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="_YKpA" id="7I7en9Qj5k7" role="3clF45">
        <node concept="3uibUv" id="7I7en9Qj5kf" role="_ZDj9">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7SN$RPLZvTa" role="jymVt">
      <property role="TrG5h" value="getVisibleVariables" />
      <property role="od$2w" value="true" />
      <node concept="3Tm1VV" id="7SN$RPLZvTc" role="1B3o_S" />
      <node concept="3clFbS" id="7SN$RPLZvTd" role="3clF47">
        <node concept="3clFbF" id="7SN$RPLZvTr" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeun7Z" role="3clFbG">
            <ref role="3cqZAo" node="7SN$RPLZvO6" resolve="myVariables" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7SN$RPLZvTi" role="3clF45">
        <node concept="3uibUv" id="7SN$RPLZvTm" role="_ZDj9">
          <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1YTTEQ7Xk1Z" role="jymVt">
      <property role="TrG5h" value="getContextWatchable" />
      <property role="od$2w" value="true" />
      <node concept="3Tm1VV" id="1YTTEQ7Xk21" role="1B3o_S" />
      <node concept="3clFbS" id="1YTTEQ7Xk22" role="3clF47">
        <node concept="3clFbF" id="1YTTEQ7Xppn" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeudJg" role="3clFbG">
            <ref role="3cqZAo" node="7I7en9Qj5kg" resolve="myContextWatchable" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1YTTEQ7Xppk" role="3clF45">
        <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
      </node>
    </node>
    <node concept="3clFb_" id="7I7en9Qj5jx" role="jymVt">
      <property role="TrG5h" value="initializeWatchables" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="7I7en9Qj5jy" role="3clF45" />
      <node concept="3Tm1VV" id="7I7en9Qj5jz" role="1B3o_S" />
      <node concept="3clFbS" id="7I7en9Qj5j$" role="3clF47">
        <node concept="3clFbJ" id="7I7en9Qj5kN" role="3cqZAp">
          <node concept="3clFbS" id="7I7en9Qj5kO" role="3clFbx">
            <node concept="3cpWs6" id="7I7en9Qj5kT" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="2BHiRxeussI" role="3clFbw">
            <ref role="3cqZAo" node="7I7en9Qj5kw" resolve="myInitialized" />
          </node>
        </node>
        <node concept="3clFbF" id="7I7en9Qj5lp" role="3cqZAp">
          <node concept="37vLTI" id="7I7en9Qj5lr" role="3clFbG">
            <node concept="3clFbT" id="7I7en9Qj5lu" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuyTy" role="37vLTJ">
              <ref role="3cqZAo" node="7I7en9Qj5kw" resolve="myInitialized" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7SN$RPLZvSR" role="3cqZAp">
          <node concept="3clFbS" id="7SN$RPLZvSS" role="1zxBo7">
            <node concept="3clFbF" id="7SN$RPLZvRB" role="3cqZAp">
              <node concept="2OqwBi" id="7SN$RPLZvRP" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuPF2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7SN$RPLZvO6" resolve="myVariables" />
                </node>
                <node concept="X8dFx" id="7SN$RPLZvRV" role="2OqNvi">
                  <node concept="1rXfSq" id="4hiugqyz90a" role="25WWJ7">
                    <ref role="37wK5l" node="7I7en9Qj5jH" resolve="fetchVisibleVariables" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7I7en9Qj5l1" role="3cqZAp">
              <node concept="37vLTI" id="1YTTEQ7Xk1V" role="3clFbG">
                <node concept="1rXfSq" id="4hiugqyz9Xo" role="37vLTx">
                  <ref role="37wK5l" node="7SN$RPLZvOs" resolve="fetchContextWatchable" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuu5f" role="37vLTJ">
                  <ref role="3cqZAo" node="7I7en9Qj5kg" resolve="myContextWatchable" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7SN$RPLZvSU" role="1zxBo5">
            <node concept="XOnhg" id="7SN$RPLZvSV" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dGZc0" role="1tU5fm">
                <node concept="3uibUv" id="7SN$RPLZvSY" role="nSUat">
                  <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7SN$RPLZvSX" role="1zc67A" />
          </node>
          <node concept="3uVAMA" id="7SN$RPLZvSZ" role="1zxBo5">
            <node concept="XOnhg" id="7SN$RPLZvT0" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ignore" />
              <node concept="nSUau" id="xvs04dGZc2" role="1tU5fm">
                <node concept="3uibUv" id="7SN$RPLZvT3" role="nSUat">
                  <ref role="3uigEE" to="frkw:~AbsentInformationException" resolve="AbsentInformationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7SN$RPLZvT2" role="1zc67A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7I7en9Qj5jH" role="jymVt">
      <property role="TrG5h" value="fetchVisibleVariables" />
      <node concept="3Tm6S6" id="7SN$RPLZvOl" role="1B3o_S" />
      <node concept="3clFbS" id="7I7en9Qj5jK" role="3clF47">
        <node concept="1gVbGN" id="1xqI2oUaa9n" role="3cqZAp">
          <node concept="3fqX7Q" id="1xqI2oUabSi" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvdKb" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1YTTEQ7Xk0y" role="3cqZAp" />
        <node concept="3cpWs8" id="2Y$mRnICmsC" role="3cqZAp">
          <node concept="3cpWsn" id="2Y$mRnICmsD" role="3cpWs9">
            <property role="TrG5h" value="stackFrame" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2Y$mRnICmsE" role="1tU5fm">
              <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
            </node>
            <node concept="1rXfSq" id="4hiugqyyI21" role="33vP2m">
              <ref role="37wK5l" node="7SN$RPLZvSq" resolve="getFrame" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Y$mRnICmsG" role="3cqZAp">
          <node concept="3cpWsn" id="2Y$mRnICmsH" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="false" />
            <node concept="2ShNRf" id="2Y$mRnICmsK" role="33vP2m">
              <node concept="1pGfFk" id="2Y$mRnICmsL" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7SN$RPLZvSe" role="1pMfVU">
                  <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="7SN$RPLZvSa" role="1tU5fm">
              <node concept="3uibUv" id="7SN$RPLZvSd" role="_ZDj9">
                <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2Y$mRnICmsN" role="3cqZAp">
          <node concept="3y3z36" id="2Y$mRnICmsO" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTy6i" role="3uHU7B">
              <ref role="3cqZAo" node="2Y$mRnICmsD" resolve="stackFrame" />
            </node>
            <node concept="10Nm6u" id="2Y$mRnICmsQ" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="2Y$mRnICmsR" role="3clFbx">
            <node concept="1DcWWT" id="2Y$mRnICmsS" role="3cqZAp">
              <node concept="2OqwBi" id="2Y$mRnICmsT" role="1DdaDG">
                <node concept="37vLTw" id="3GM_nagTuEd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Y$mRnICmsD" resolve="stackFrame" />
                </node>
                <node concept="liA8E" id="2Y$mRnICmsV" role="2OqNvi">
                  <ref role="37wK5l" to="frkw:~StackFrame.visibleVariables()" resolve="visibleVariables" />
                </node>
              </node>
              <node concept="3cpWsn" id="2Y$mRnICmsW" role="1Duv9x">
                <property role="TrG5h" value="variable" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="2Y$mRnICmsX" role="1tU5fm">
                  <ref role="3uigEE" to="frkw:~LocalVariable" resolve="LocalVariable" />
                </node>
              </node>
              <node concept="3clFbS" id="2Y$mRnICmsY" role="2LFqv$">
                <node concept="3clFbF" id="2Y$mRnICmsZ" role="3cqZAp">
                  <node concept="2OqwBi" id="3GtPtwP3JhH" role="3clFbG">
                    <node concept="37vLTw" id="7U0uo_Gwujo" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Y$mRnICmsH" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="3GtPtwP3L9_" role="2OqNvi">
                      <node concept="2ShNRf" id="2Y$mRnICmt3" role="25WWJ7">
                        <node concept="1pGfFk" id="2Y$mRnICmt4" role="2ShVmc">
                          <ref role="37wK5l" to="2s0o:2Y$mRnICmAV" resolve="JavaLocalVariable" />
                          <node concept="37vLTw" id="7U0uo_Gwwmr" role="37wK5m">
                            <ref role="3cqZAo" node="2Y$mRnICmsW" resolve="variable" />
                          </node>
                          <node concept="Xjq3P" id="2Y$mRnICmt6" role="37wK5m" />
                          <node concept="2OqwBi" id="5n7fGGQgavU" role="37wK5m">
                            <node concept="37vLTw" id="7U0uo_Gwuj3" role="2Oq$k0">
                              <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                            </node>
                            <node concept="liA8E" id="5n7fGGQgaw0" role="2OqNvi">
                              <ref role="37wK5l" node="2Y$mRnIClT3" resolve="getThread" />
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
        <node concept="3cpWs6" id="2Y$mRnICmtH" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTtHz" role="3cqZAk">
            <ref role="3cqZAo" node="2Y$mRnICmsH" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="7I7en9Qj5jP" role="3clF45">
        <node concept="3uibUv" id="7SN$RPLZvRZ" role="_ZDj9">
          <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
        </node>
      </node>
      <node concept="3uibUv" id="7SN$RPLZvSG" role="Sfmx6">
        <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
      </node>
      <node concept="3uibUv" id="7SN$RPLZvSJ" role="Sfmx6">
        <ref role="3uigEE" to="frkw:~AbsentInformationException" resolve="AbsentInformationException" />
      </node>
    </node>
    <node concept="3clFb_" id="7SN$RPLZvOs" role="jymVt">
      <property role="TrG5h" value="fetchContextWatchable" />
      <node concept="3Tm6S6" id="7SN$RPLZvOt" role="1B3o_S" />
      <node concept="3clFbS" id="7SN$RPLZvOu" role="3clF47">
        <node concept="1gVbGN" id="7SN$RPLZvOv" role="3cqZAp">
          <node concept="3fqX7Q" id="7SN$RPLZvOw" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvdLx" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7SN$RPLZvSf" role="3cqZAp" />
        <node concept="3cpWs8" id="7SN$RPLZvP2" role="3cqZAp">
          <node concept="3cpWsn" id="7SN$RPLZvP3" role="3cpWs9">
            <property role="TrG5h" value="stackFrame" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="7SN$RPLZvP4" role="1tU5fm">
              <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
            </node>
            <node concept="1rXfSq" id="4hiugqyz8Fd" role="33vP2m">
              <ref role="37wK5l" node="7SN$RPLZvSq" resolve="getFrame" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7SN$RPLZvPi" role="3cqZAp">
          <node concept="3y3z36" id="7SN$RPLZvPj" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTs2F" role="3uHU7B">
              <ref role="3cqZAo" node="7SN$RPLZvP3" resolve="stackFrame" />
            </node>
            <node concept="10Nm6u" id="7SN$RPLZvPl" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7SN$RPLZvPm" role="3clFbx">
            <node concept="3cpWs8" id="7SN$RPLZvPE" role="3cqZAp">
              <node concept="3cpWsn" id="7SN$RPLZvPF" role="3cpWs9">
                <property role="TrG5h" value="thisObject" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="7SN$RPLZvPG" role="1tU5fm">
                  <ref role="3uigEE" to="frkw:~ObjectReference" resolve="ObjectReference" />
                </node>
                <node concept="2OqwBi" id="7SN$RPLZvPH" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTyG3" role="2Oq$k0">
                    <ref role="3cqZAo" node="7SN$RPLZvP3" resolve="stackFrame" />
                  </node>
                  <node concept="liA8E" id="7SN$RPLZvPJ" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~StackFrame.thisObject()" resolve="thisObject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7SN$RPLZvPK" role="3cqZAp">
              <node concept="3y3z36" id="7SN$RPLZvPL" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTBZY" role="3uHU7B">
                  <ref role="3cqZAo" node="7SN$RPLZvPF" resolve="thisObject" />
                </node>
                <node concept="10Nm6u" id="7SN$RPLZvPN" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="7SN$RPLZvPO" role="9aQIa">
                <node concept="3clFbS" id="7SN$RPLZvPP" role="9aQI4">
                  <node concept="3cpWs6" id="1YTTEQ7Xk0s" role="3cqZAp">
                    <node concept="2ShNRf" id="2O4D8QgWy2B" role="3cqZAk">
                      <node concept="1pGfFk" id="2O4D8QgWy2C" role="2ShVmc">
                        <ref role="37wK5l" to="2s0o:2Y$mRnICmcU" resolve="JavaStaticContext" />
                        <node concept="2OqwBi" id="2O4D8QgWy2D" role="37wK5m">
                          <node concept="2OqwBi" id="2O4D8QgWy2E" role="2Oq$k0">
                            <node concept="liA8E" id="2O4D8QgWy2F" role="2OqNvi">
                              <ref role="37wK5l" to="frkw:~StackFrame.location()" resolve="location" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTtdj" role="2Oq$k0">
                              <ref role="3cqZAo" node="7SN$RPLZvP3" resolve="stackFrame" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2O4D8QgWy2H" role="2OqNvi">
                            <ref role="37wK5l" to="frkw:~Location.declaringType()" resolve="declaringType" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2O4D8QgWy2J" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxeuSta" role="2Oq$k0">
                            <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                          </node>
                          <node concept="liA8E" id="2O4D8QgWy2L" role="2OqNvi">
                            <ref role="37wK5l" node="2Y$mRnIClT3" resolve="getThread" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7SN$RPLZvQ5" role="3clFbx">
                <node concept="3cpWs6" id="1YTTEQ7Xk0q" role="3cqZAp">
                  <node concept="2ShNRf" id="2O4D8QgWxrW" role="3cqZAk">
                    <node concept="1pGfFk" id="2O4D8QgWxrX" role="2ShVmc">
                      <ref role="37wK5l" to="2s0o:2Y$mRnIClNk" resolve="JavaThisObject" />
                      <node concept="37vLTw" id="3GM_nagTybF" role="37wK5m">
                        <ref role="3cqZAo" node="7SN$RPLZvPF" resolve="thisObject" />
                      </node>
                      <node concept="Xjq3P" id="2O4D8QgWxrZ" role="37wK5m" />
                      <node concept="2OqwBi" id="2O4D8QgWxs1" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxeuTtj" role="2Oq$k0">
                          <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                        </node>
                        <node concept="liA8E" id="2O4D8QgWxs3" role="2OqNvi">
                          <ref role="37wK5l" node="2Y$mRnIClT3" resolve="getThread" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1YTTEQ7Xk0v" role="3cqZAp">
          <node concept="10Nm6u" id="1YTTEQ7Xk0x" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="7SN$RPLZvSM" role="Sfmx6">
        <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
      </node>
      <node concept="3uibUv" id="1YTTEQ7Xk0n" role="3clF45">
        <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
      </node>
    </node>
    <node concept="3clFb_" id="7SN$RPLZvSq" role="jymVt">
      <property role="TrG5h" value="getFrame" />
      <node concept="3Tm6S6" id="7SN$RPLZvSr" role="1B3o_S" />
      <node concept="3uibUv" id="7SN$RPLZvSs" role="3clF45">
        <ref role="3uigEE" to="frkw:~StackFrame" resolve="StackFrame" />
      </node>
      <node concept="3clFbS" id="7SN$RPLZvSt" role="3clF47">
        <node concept="3cpWs6" id="7SN$RPLZvSu" role="3cqZAp">
          <node concept="2OqwBi" id="7SN$RPLZvSv" role="3cqZAk">
            <node concept="2OqwBi" id="7SN$RPLZvSw" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeumxC" role="2Oq$k0">
                <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
              </node>
              <node concept="liA8E" id="7SN$RPLZvSy" role="2OqNvi">
                <ref role="37wK5l" node="2Y$mRnIClT3" resolve="getThread" />
              </node>
            </node>
            <node concept="liA8E" id="7SN$RPLZvSz" role="2OqNvi">
              <ref role="37wK5l" to="frkw:~ThreadReference.frame(int)" resolve="frame" />
              <node concept="37vLTw" id="2BHiRxeuqMo" role="37wK5m">
                <ref role="3cqZAo" node="2Y$mRnICmoV" resolve="myIndex" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7SN$RPLZvS_" role="Sfmx6">
        <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
      </node>
    </node>
    <node concept="3clFb_" id="2Y$mRnICmtK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getValue" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmtL" role="1B3o_S" />
      <node concept="3uibUv" id="2g7jLxixq8A" role="3clF45">
        <ref role="3uigEE" to="pry4:3SnNvqCaJHZ" resolve="IValue" />
      </node>
      <node concept="37vLTG" id="2Y$mRnICmtN" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="7yuXYdyoL1A" role="1tU5fm">
          <ref role="3uigEE" to="pry4:3SnNvqCaK3Q" resolve="IWatchable" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICmtP" role="3clF47">
        <node concept="1gVbGN" id="1xqI2oUabSn" role="3cqZAp">
          <node concept="3fqX7Q" id="1xqI2oUabSo" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRzvdMS" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5n7fGGQgbMA" role="3cqZAp">
          <node concept="3clFbS" id="5n7fGGQgbMB" role="1zxBo7">
            <node concept="3clFbJ" id="2Y$mRnICmtQ" role="3cqZAp">
              <node concept="2ZW3vV" id="2Y$mRnICmtR" role="3clFbw">
                <node concept="37vLTw" id="2BHiRxgmeVE" role="2ZW6bz">
                  <ref role="3cqZAo" node="2Y$mRnICmtN" resolve="watchable" />
                </node>
                <node concept="3uibUv" id="2Y$mRnICmtT" role="2ZW6by">
                  <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
                </node>
              </node>
              <node concept="3clFbS" id="2Y$mRnICmtU" role="3clFbx">
                <node concept="3cpWs8" id="2Y$mRnICmtV" role="3cqZAp">
                  <node concept="3cpWsn" id="2Y$mRnICmtW" role="3cpWs9">
                    <property role="TrG5h" value="localVariable" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3uibUv" id="2Y$mRnICmtX" role="1tU5fm">
                      <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
                    </node>
                    <node concept="10QFUN" id="2Y$mRnICmtY" role="33vP2m">
                      <node concept="37vLTw" id="2BHiRxgm9pA" role="10QFUP">
                        <ref role="3cqZAo" node="2Y$mRnICmtN" resolve="watchable" />
                      </node>
                      <node concept="3uibUv" id="2Y$mRnICmu0" role="10QFUM">
                        <ref role="3uigEE" to="2s0o:2Y$mRnIClN4" resolve="JavaLocalVariable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2Y$mRnICmu1" role="3cqZAp">
                  <node concept="2OqwBi" id="4cAZkbEv0BO" role="3cqZAk">
                    <node concept="2YIFZM" id="4cAZkbEv0C1" role="2Oq$k0">
                      <ref role="37wK5l" to="wtoj:2Y$mRnICmw7" resolve="getInstance" />
                      <ref role="1Pybhc" to="wtoj:2Y$mRnICm2F" resolve="CustomViewersManager" />
                    </node>
                    <node concept="liA8E" id="4cAZkbEv0Ca" role="2OqNvi">
                      <ref role="37wK5l" to="wtoj:6bMlO3sXPXQ" resolve="fromJdi" />
                      <node concept="2OqwBi" id="4cAZkbEv0C2" role="37wK5m">
                        <node concept="liA8E" id="4cAZkbEv0C4" role="2OqNvi">
                          <ref role="37wK5l" to="frkw:~StackFrame.getValue(com.sun.jdi.LocalVariable)" resolve="getValue" />
                          <node concept="2OqwBi" id="4cAZkbEv0C5" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTwAA" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Y$mRnICmtW" resolve="localVariable" />
                            </node>
                            <node concept="liA8E" id="4cAZkbEv0C7" role="2OqNvi">
                              <ref role="37wK5l" to="2s0o:2Y$mRnICmBB" resolve="getLocalVariable" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="4hiugqyzf1d" role="2Oq$k0">
                          <ref role="37wK5l" node="7SN$RPLZvSq" resolve="getFrame" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5n7fGGQgawN" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxeuwt9" role="2Oq$k0">
                          <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                        </node>
                        <node concept="liA8E" id="5n7fGGQgawS" role="2OqNvi">
                          <ref role="37wK5l" node="2Y$mRnIClT3" resolve="getThread" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5n7fGGQgbMD" role="1zxBo5">
            <node concept="XOnhg" id="5n7fGGQgbME" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="xvs04dGZc4" role="1tU5fm">
                <node concept="3uibUv" id="5n7fGGQgbMH" role="nSUat">
                  <ref role="3uigEE" to="frkw:~IncompatibleThreadStateException" resolve="IncompatibleThreadStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5n7fGGQgbMG" role="1zc67A" />
          </node>
        </node>
        <node concept="3cpWs6" id="2Y$mRnICmub" role="3cqZAp">
          <node concept="10Nm6u" id="2Y$mRnICmuc" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2Y$mRnICmud" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5n7fGGQgax3" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5n7fGGQgax4" role="3clF45" />
      <node concept="3Tm1VV" id="5n7fGGQgax5" role="1B3o_S" />
      <node concept="3clFbS" id="5n7fGGQgax6" role="3clF47">
        <node concept="3clFbJ" id="5n7fGGQgax7" role="3cqZAp">
          <node concept="3clFbS" id="5n7fGGQgax8" role="3clFbx">
            <node concept="3cpWs6" id="5n7fGGQgax9" role="3cqZAp">
              <node concept="3clFbT" id="5n7fGGQgaxa" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5n7fGGQgaxb" role="3clFbw">
            <node concept="Xjq3P" id="5n7fGGQgaxc" role="3uHU7B" />
            <node concept="37vLTw" id="2BHiRxgm7EC" role="3uHU7w">
              <ref role="3cqZAo" node="5n7fGGQgayn" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5n7fGGQgaxe" role="3cqZAp">
          <node concept="3clFbS" id="5n7fGGQgaxf" role="3clFbx">
            <node concept="3cpWs6" id="5n7fGGQgaxg" role="3cqZAp">
              <node concept="3clFbT" id="5n7fGGQgaxh" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5n7fGGQgaxi" role="3clFbw">
            <node concept="3clFbC" id="5n7fGGQgaxj" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm9w0" role="3uHU7B">
                <ref role="3cqZAo" node="5n7fGGQgayn" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5n7fGGQgaxl" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5n7fGGQgaxm" role="3uHU7w">
              <node concept="2OqwBi" id="5n7fGGQgaxn" role="3uHU7B">
                <node concept="Xjq3P" id="5n7fGGQgaxo" role="2Oq$k0" />
                <node concept="liA8E" id="5n7fGGQgaxp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5n7fGGQgaxq" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgm6vh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5n7fGGQgayn" resolve="o" />
                </node>
                <node concept="liA8E" id="5n7fGGQgaxs" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5n7fGGQgaxt" role="3cqZAp" />
        <node concept="3cpWs8" id="5n7fGGQgaxu" role="3cqZAp">
          <node concept="3cpWsn" id="5n7fGGQgax2" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5n7fGGQgaxv" role="1tU5fm">
              <ref role="3uigEE" node="2Y$mRnICmoJ" resolve="JavaStackFrame" />
            </node>
            <node concept="10QFUN" id="5n7fGGQgaxw" role="33vP2m">
              <node concept="3uibUv" id="5n7fGGQgaxx" role="10QFUM">
                <ref role="3uigEE" node="2Y$mRnICmoJ" resolve="JavaStackFrame" />
              </node>
              <node concept="37vLTw" id="2BHiRxghelM" role="10QFUP">
                <ref role="3cqZAo" node="5n7fGGQgayn" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5n7fGGQgaxz" role="3cqZAp">
          <node concept="3y3z36" id="5n7fGGQgax$" role="3clFbw">
            <node concept="2OqwBi" id="5n7fGGQgax_" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTBVJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5n7fGGQgax2" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5n7fGGQgaxB" role="2OqNvi">
                <ref role="2Oxat5" node="2Y$mRnICmoV" resolve="myIndex" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuraf" role="3uHU7B">
              <ref role="3cqZAo" node="2Y$mRnICmoV" resolve="myIndex" />
            </node>
          </node>
          <node concept="3clFbS" id="5n7fGGQgaxD" role="3clFbx">
            <node concept="3cpWs6" id="5n7fGGQgaxE" role="3cqZAp">
              <node concept="3clFbT" id="5n7fGGQgaxF" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5n7fGGQgaxG" role="3cqZAp">
          <node concept="3clFbS" id="5n7fGGQgaxH" role="3clFbx">
            <node concept="3cpWs6" id="5n7fGGQgaxI" role="3cqZAp">
              <node concept="3clFbT" id="5n7fGGQgaxJ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="5n7fGGQgaxK" role="3clFbw">
            <node concept="3fqX7Q" id="5n7fGGQgaxL" role="3K4E3e">
              <node concept="2OqwBi" id="5n7fGGQgaxM" role="3fr31v">
                <node concept="liA8E" id="5n7fGGQgaxN" role="2OqNvi">
                  <ref role="37wK5l" node="3DGS_W7MKZv" resolve="equals" />
                  <node concept="2OqwBi" id="5n7fGGQgaxO" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTtmZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5n7fGGQgax2" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="5n7fGGQgaxQ" role="2OqNvi">
                      <ref role="2Oxat5" node="5n7fGGQgatI" resolve="myLocation" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeun0z" role="2Oq$k0">
                  <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5n7fGGQgaxS" role="3K4Cdx">
              <node concept="10Nm6u" id="5n7fGGQgaxT" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuu5J" role="3uHU7B">
                <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
              </node>
            </node>
            <node concept="3y3z36" id="5n7fGGQgaxV" role="3K4GZi">
              <node concept="10Nm6u" id="5n7fGGQgaxW" role="3uHU7w" />
              <node concept="2OqwBi" id="5n7fGGQgaxX" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagT_Mp" role="2Oq$k0">
                  <ref role="3cqZAo" node="5n7fGGQgax2" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5n7fGGQgaxZ" role="2OqNvi">
                  <ref role="2Oxat5" node="5n7fGGQgatI" resolve="myLocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5n7fGGQgay0" role="3cqZAp">
          <node concept="3clFbS" id="5n7fGGQgay1" role="3clFbx">
            <node concept="3cpWs6" id="5n7fGGQgay2" role="3cqZAp">
              <node concept="3clFbT" id="5n7fGGQgay3" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="5n7fGGQgay4" role="3clFbw">
            <node concept="3fqX7Q" id="5n7fGGQgay5" role="3K4E3e">
              <node concept="2OqwBi" id="5n7fGGQgay6" role="3fr31v">
                <node concept="liA8E" id="5n7fGGQgay7" role="2OqNvi">
                  <ref role="37wK5l" node="2Y$mRnICm0z" resolve="equals" />
                  <node concept="2OqwBi" id="5n7fGGQgay8" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTulu" role="2Oq$k0">
                      <ref role="3cqZAo" node="5n7fGGQgax2" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="5n7fGGQgaya" role="2OqNvi">
                      <ref role="2Oxat5" node="5n7fGGQgauX" resolve="myThread" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeunig" role="2Oq$k0">
                  <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5n7fGGQgayc" role="3K4Cdx">
              <node concept="10Nm6u" id="5n7fGGQgayd" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuh$F" role="3uHU7B">
                <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
              </node>
            </node>
            <node concept="3y3z36" id="5n7fGGQgayf" role="3K4GZi">
              <node concept="10Nm6u" id="5n7fGGQgayg" role="3uHU7w" />
              <node concept="2OqwBi" id="5n7fGGQgayh" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTyE0" role="2Oq$k0">
                  <ref role="3cqZAo" node="5n7fGGQgax2" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5n7fGGQgayj" role="2OqNvi">
                  <ref role="2Oxat5" node="5n7fGGQgauX" resolve="myThread" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5n7fGGQgayk" role="3cqZAp" />
        <node concept="3clFbF" id="5n7fGGQgayl" role="3cqZAp">
          <node concept="3clFbT" id="5n7fGGQgaym" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5n7fGGQgayn" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5n7fGGQgayo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5n7fGGQgayp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5n7fGGQgayq" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5n7fGGQgayr" role="3clF45" />
      <node concept="3Tm1VV" id="5n7fGGQgays" role="1B3o_S" />
      <node concept="3clFbS" id="5n7fGGQgayt" role="3clF47">
        <node concept="3cpWs8" id="5n7fGGQgayv" role="3cqZAp">
          <node concept="3cpWsn" id="5n7fGGQgayw" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5n7fGGQgayx" role="1tU5fm" />
            <node concept="3cmrfG" id="5n7fGGQgayy" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5n7fGGQgayz" role="3cqZAp">
          <node concept="37vLTI" id="5n7fGGQgay$" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBx7" role="37vLTJ">
              <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
            </node>
            <node concept="3cpWs3" id="5n7fGGQgayA" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxeuwz5" role="3uHU7w">
                <ref role="3cqZAo" node="2Y$mRnICmoV" resolve="myIndex" />
              </node>
              <node concept="17qRlL" id="5n7fGGQgayC" role="3uHU7B">
                <node concept="3cmrfG" id="5n7fGGQgayD" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagTtp0" role="3uHU7w">
                  <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5n7fGGQgayF" role="3cqZAp">
          <node concept="37vLTI" id="5n7fGGQgayG" role="3clFbG">
            <node concept="3cpWs3" id="5n7fGGQgayH" role="37vLTx">
              <node concept="1eOMI4" id="5n7fGGQgayI" role="3uHU7w">
                <node concept="3K4zz7" id="5n7fGGQgayJ" role="1eOMHV">
                  <node concept="3cmrfG" id="5n7fGGQgayK" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="5n7fGGQgayL" role="3K4Cdx">
                    <node concept="10Nm6u" id="5n7fGGQgayM" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeuFkF" role="3uHU7B">
                      <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5n7fGGQgayO" role="3K4E3e">
                    <node concept="1eOMI4" id="5n7fGGQgayP" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxeuRQ$" role="1eOMHV">
                        <ref role="3cqZAo" node="5n7fGGQgatI" resolve="myLocation" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5n7fGGQgayT" role="2OqNvi">
                      <ref role="37wK5l" node="3DGS_W7ML1k" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5n7fGGQgayU" role="3uHU7B">
                <node concept="3cmrfG" id="5n7fGGQgayV" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$QJ" role="3uHU7w">
                  <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTtv5" role="37vLTJ">
              <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5n7fGGQgayY" role="3cqZAp">
          <node concept="37vLTI" id="5n7fGGQgayZ" role="3clFbG">
            <node concept="3cpWs3" id="5n7fGGQgaz0" role="37vLTx">
              <node concept="1eOMI4" id="5n7fGGQgaz1" role="3uHU7w">
                <node concept="3K4zz7" id="5n7fGGQgaz2" role="1eOMHV">
                  <node concept="3cmrfG" id="5n7fGGQgaz3" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="5n7fGGQgaz4" role="3K4Cdx">
                    <node concept="10Nm6u" id="5n7fGGQgaz5" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeulzm" role="3uHU7B">
                      <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5n7fGGQgaz7" role="3K4E3e">
                    <node concept="1eOMI4" id="5n7fGGQgaz8" role="2Oq$k0">
                      <node concept="37vLTw" id="2BHiRxeucSR" role="1eOMHV">
                        <ref role="3cqZAo" node="5n7fGGQgauX" resolve="myThread" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5n7fGGQgazc" role="2OqNvi">
                      <ref role="37wK5l" node="2Y$mRnICm0q" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5n7fGGQgazd" role="3uHU7B">
                <node concept="3cmrfG" id="5n7fGGQgaze" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagTxFF" role="3uHU7w">
                  <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3GM_nagTw0B" role="37vLTJ">
              <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5n7fGGQgazh" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTBoi" role="3clFbG">
            <ref role="3cqZAo" node="5n7fGGQgayw" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5n7fGGQgayu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2Y$mRnICmxQ">
    <property role="TrG5h" value="ValueWrapperFactory" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="2Y$mRnICmxR" role="1B3o_S" />
    <node concept="3clFbW" id="2Y$mRnICmxS" role="jymVt">
      <node concept="3Tm1VV" id="2Y$mRnICmxT" role="1B3o_S" />
      <node concept="3cqZAl" id="2Y$mRnICmxU" role="3clF45" />
      <node concept="3clFbS" id="2Y$mRnICmxV" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2Y$mRnICmxW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="canWrapValue" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmxX" role="1B3o_S" />
      <node concept="10P_77" id="2Y$mRnICmxY" role="3clF45" />
      <node concept="37vLTG" id="2Y$mRnICmxZ" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6OGoYT560gU" role="1tU5fm">
          <ref role="3uigEE" to="dcbi:46sxDGTfnwG" resolve="IValueProxy" />
        </node>
        <node concept="2AHcQZ" id="2Y$mRnICmy1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICmy2" role="3clF47">
        <node concept="3cpWs6" id="2Y$mRnICmy3" role="3cqZAp">
          <node concept="3clFbT" id="2Y$mRnICmy4" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5j5ipK2aw9Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getWrappedType" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5j5ipK2aw9T" role="3clF47">
        <node concept="3cpWs6" id="5j5ipK2ayxT" role="3cqZAp">
          <node concept="10M0yZ" id="5j5ipK2fumj" role="3cqZAk">
            <ref role="1PxDUh" to="qgwr:46sxDGTfnGj" resolve="EvaluationUtils" />
            <ref role="3cqZAo" to="qgwr:5j5ipK2ftOy" resolve="JAVA_LANG_OBJECT" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5j5ipK2aw9s" role="1B3o_S" />
      <node concept="17QB3L" id="5j5ipK2frtR" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2Y$mRnICmy5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createValueWrapper" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="2Y$mRnICmy6" role="1B3o_S" />
      <node concept="3uibUv" id="2Y$mRnICmy7" role="3clF45">
        <ref role="3uigEE" node="2Y$mRnIClP8" resolve="ValueWrapper" />
      </node>
      <node concept="37vLTG" id="2Y$mRnICmy8" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6OGoYT560gW" role="1tU5fm">
          <ref role="3uigEE" to="dcbi:46sxDGTfnwG" resolve="IValueProxy" />
        </node>
      </node>
      <node concept="37vLTG" id="6OGoYT56MCe" role="3clF46">
        <property role="TrG5h" value="threadReference" />
        <node concept="3uibUv" id="6OGoYT56MCk" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~ThreadReference" resolve="ThreadReference" />
        </node>
      </node>
      <node concept="3clFbS" id="2Y$mRnICmya" role="3clF47" />
    </node>
    <node concept="3clFb_" id="45l905tDWfp" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getName" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="45l905tDWfs" role="3clF47" />
      <node concept="3Tm1VV" id="45l905tDWeR" role="1B3o_S" />
      <node concept="17QB3L" id="45l905tDWfn" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7E$SATCMcyo" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="7E$SATCMcyp" role="1B3o_S" />
      <node concept="3uibUv" id="7E$SATCMcyr" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7E$SATCMcys" role="3clF47">
        <node concept="3clFbF" id="7E$SATCMcGH" role="3cqZAp">
          <node concept="1rXfSq" id="7E$SATCMcGG" role="3clFbG">
            <ref role="37wK5l" node="45l905tDWfp" resolve="getName" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3DGS_W7MKYf">
    <property role="TrG5h" value="JavaLocation" />
    <node concept="3Tm1VV" id="3DGS_W7MKYs" role="1B3o_S" />
    <node concept="3uibUv" id="3DGS_W7MKZ6" role="EKbjA">
      <ref role="3uigEE" to="pry4:3SnNvqCaJt$" resolve="ILocation" />
    </node>
    <node concept="312cEg" id="3DGS_W7MKYg" role="jymVt">
      <property role="TrG5h" value="myFileName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DGS_W7MKYh" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKYi" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3DGS_W7MKYj" role="jymVt">
      <property role="TrG5h" value="myUnitName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DGS_W7MKYk" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKYl" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3DGS_W7MKYm" role="jymVt">
      <property role="TrG5h" value="myRoutineName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DGS_W7MKYn" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKYo" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3DGS_W7MKYp" role="jymVt">
      <property role="TrG5h" value="myLineNumber" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DGS_W7MKYq" role="1B3o_S" />
      <node concept="10Oyi0" id="3DGS_W7MKYr" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="3DGS_W7MKYt" role="jymVt">
      <node concept="3cqZAl" id="3DGS_W7MKYu" role="3clF45" />
      <node concept="3Tm1VV" id="3DGS_W7MKYv" role="1B3o_S" />
      <node concept="3clFbS" id="3DGS_W7MKYw" role="3clF47">
        <node concept="1gVbGN" id="3DGS_W7MKYx" role="3cqZAp">
          <node concept="3fqX7Q" id="3DGS_W7MKYy" role="1gVkn0">
            <node concept="2YIFZM" id="5XQGVRztU39" role="3fr31v">
              <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
              <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1M217LyLn$t" role="3cqZAp">
          <node concept="3cpWsn" id="1M217LyLn$s" role="3cpWs9">
            <property role="TrG5h" value="fileName" />
            <node concept="17QB3L" id="1M217LyLILV" role="1tU5fm" />
            <node concept="Xl_RD" id="1M217LyLn$v" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1M217LyLn$F" role="3cqZAp">
          <node concept="3uVAMA" id="1M217LyLn$G" role="1zxBo5">
            <node concept="3clFbS" id="1M217LyLn$E" role="1zc67A" />
            <node concept="XOnhg" id="1M217LyLn$A" role="1zc67B">
              <property role="TrG5h" value="ignored" />
              <node concept="nSUau" id="1M217LyLn$C" role="1tU5fm">
                <node concept="3uibUv" id="1M217LyLn$B" role="nSUat">
                  <ref role="3uigEE" to="frkw:~AbsentInformationException" resolve="com.sun.jdi.AbsentInformationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1M217LyLn$x" role="1zxBo7">
            <node concept="3clFbF" id="1M217LyLn$y" role="3cqZAp">
              <node concept="37vLTI" id="1M217LyLn$z" role="3clFbG">
                <node concept="37vLTw" id="1M217LyLn$$" role="37vLTJ">
                  <ref role="3cqZAo" node="1M217LyLn$s" resolve="fileName" />
                </node>
                <node concept="2OqwBi" id="1M217LyLoOt" role="37vLTx">
                  <node concept="37vLTw" id="1M217LyLoOh" role="2Oq$k0">
                    <ref role="3cqZAo" node="3DGS_W7MKZ2" resolve="location" />
                  </node>
                  <node concept="liA8E" id="1M217LyLoOu" role="2OqNvi">
                    <ref role="37wK5l" to="frkw:~Location.sourceName()" resolve="sourceName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7MKYA" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7MKYB" role="3clFbG">
            <node concept="37vLTw" id="1M217LyLruq" role="37vLTx">
              <ref role="3cqZAo" node="1M217LyLn$s" resolve="fileName" />
            </node>
            <node concept="37vLTw" id="2BHiRxeutxG" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7MKYG" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7MKYH" role="3clFbG">
            <node concept="2OqwBi" id="3DGS_W7MKYI" role="37vLTx">
              <node concept="2OqwBi" id="3DGS_W7MKYJ" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm_$x" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7MKZ2" resolve="location" />
                </node>
                <node concept="liA8E" id="3DGS_W7MKYL" role="2OqNvi">
                  <ref role="37wK5l" to="frkw:~Location.declaringType()" resolve="declaringType" />
                </node>
              </node>
              <node concept="liA8E" id="3DGS_W7MKYM" role="2OqNvi">
                <ref role="37wK5l" to="frkw:~ReferenceType.name()" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuROX" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7MKYO" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7MKYP" role="3clFbG">
            <node concept="2OqwBi" id="3DGS_W7MKYQ" role="37vLTx">
              <node concept="2OqwBi" id="3DGS_W7MKYR" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm5Hr" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7MKZ2" resolve="location" />
                </node>
                <node concept="liA8E" id="3DGS_W7MKYT" role="2OqNvi">
                  <ref role="37wK5l" to="frkw:~Location.method()" resolve="method" />
                </node>
              </node>
              <node concept="liA8E" id="3DGS_W7MKYU" role="2OqNvi">
                <ref role="37wK5l" to="frkw:~TypeComponent.name()" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuKVu" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7MKYW" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7MKYX" role="3clFbG">
            <node concept="2OqwBi" id="3DGS_W7MKYY" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxgll2j" role="2Oq$k0">
                <ref role="3cqZAo" node="3DGS_W7MKZ2" resolve="location" />
              </node>
              <node concept="liA8E" id="3DGS_W7MKZ0" role="2OqNvi">
                <ref role="37wK5l" to="frkw:~Location.lineNumber()" resolve="lineNumber" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeul8u" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7MKYp" resolve="myLineNumber" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3DGS_W7MKZ2" role="3clF46">
        <property role="TrG5h" value="location" />
        <node concept="3uibUv" id="3DGS_W7MKZ3" role="1tU5fm">
          <ref role="3uigEE" to="frkw:~Location" resolve="Location" />
        </node>
        <node concept="2AHcQZ" id="3DGS_W7MKZ4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7MKZ7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFileName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3DGS_W7MKZ8" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKZ9" role="3clF45" />
      <node concept="3clFbS" id="3DGS_W7MKZa" role="3clF47">
        <node concept="3clFbF" id="3DGS_W7MKZb" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuqTc" role="3clFbG">
            <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sel4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7MKZd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUnitName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3DGS_W7MKZe" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKZf" role="3clF45" />
      <node concept="3clFbS" id="3DGS_W7MKZg" role="3clF47">
        <node concept="3clFbF" id="3DGS_W7MKZh" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuL85" role="3clFbG">
            <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sel2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7MKZj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoutineName" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3DGS_W7MKZk" role="1B3o_S" />
      <node concept="17QB3L" id="3DGS_W7MKZl" role="3clF45" />
      <node concept="3clFbS" id="3DGS_W7MKZm" role="3clF47">
        <node concept="3clFbF" id="3DGS_W7MKZn" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuoQw" role="3clFbG">
            <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sel3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7MKZp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLineNumber" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3DGS_W7MKZq" role="1B3o_S" />
      <node concept="10Oyi0" id="3DGS_W7MKZr" role="3clF45" />
      <node concept="3clFbS" id="3DGS_W7MKZs" role="3clF47">
        <node concept="3clFbF" id="3DGS_W7MKZt" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeumOk" role="3clFbG">
            <ref role="3cqZAo" node="3DGS_W7MKYp" resolve="myLineNumber" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Sel1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7MKZv" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3DGS_W7MKZw" role="3clF45" />
      <node concept="3Tm1VV" id="3DGS_W7MKZx" role="1B3o_S" />
      <node concept="3clFbS" id="3DGS_W7MKZy" role="3clF47">
        <node concept="3clFbJ" id="3DGS_W7MKZz" role="3cqZAp">
          <node concept="3clFbS" id="3DGS_W7MKZ$" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7MKZ_" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7MKZA" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3DGS_W7MKZB" role="3clFbw">
            <node concept="Xjq3P" id="3DGS_W7MKZC" role="3uHU7B" />
            <node concept="37vLTw" id="2BHiRxglt5R" role="3uHU7w">
              <ref role="3cqZAo" node="3DGS_W7ML1h" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DGS_W7MKZE" role="3cqZAp">
          <node concept="3clFbS" id="3DGS_W7MKZF" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7MKZG" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7MKZH" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3DGS_W7MKZI" role="3clFbw">
            <node concept="3clFbC" id="3DGS_W7MKZJ" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm$EM" role="3uHU7B">
                <ref role="3cqZAo" node="3DGS_W7ML1h" resolve="o" />
              </node>
              <node concept="10Nm6u" id="3DGS_W7MKZL" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="3DGS_W7MKZM" role="3uHU7w">
              <node concept="2OqwBi" id="3DGS_W7MKZN" role="3uHU7B">
                <node concept="Xjq3P" id="3DGS_W7MKZO" role="2Oq$k0" />
                <node concept="liA8E" id="3DGS_W7MKZP" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="3DGS_W7MKZQ" role="3uHU7w">
                <node concept="37vLTw" id="2BHiRxgl6si" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7ML1h" resolve="o" />
                </node>
                <node concept="liA8E" id="3DGS_W7MKZS" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DGS_W7MKZT" role="3cqZAp" />
        <node concept="3cpWs8" id="3DGS_W7MKZU" role="3cqZAp">
          <node concept="3cpWsn" id="3DGS_W7MKZV" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="3DGS_W7MKZW" role="1tU5fm">
              <ref role="3uigEE" node="3DGS_W7MKYf" resolve="JavaLocation" />
            </node>
            <node concept="10QFUN" id="3DGS_W7MKZX" role="33vP2m">
              <node concept="3uibUv" id="3DGS_W7MKZY" role="10QFUM">
                <ref role="3uigEE" node="3DGS_W7MKYf" resolve="JavaLocation" />
              </node>
              <node concept="37vLTw" id="2BHiRxghiqE" role="10QFUP">
                <ref role="3cqZAo" node="3DGS_W7ML1h" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DGS_W7ML00" role="3cqZAp">
          <node concept="3clFbS" id="3DGS_W7ML01" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7ML02" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7ML03" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="3DGS_W7ML04" role="3clFbw">
            <node concept="3fqX7Q" id="3DGS_W7ML05" role="3K4E3e">
              <node concept="2OqwBi" id="3DGS_W7ML06" role="3fr31v">
                <node concept="liA8E" id="3DGS_W7ML07" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3DGS_W7ML08" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTxCk" role="2Oq$k0">
                      <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="3DGS_W7ML0a" role="2OqNvi">
                      <ref role="2Oxat5" node="3DGS_W7MKYg" resolve="myFileName" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="3DGS_W7ML0b" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuoLr" role="1eOMHV">
                    <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML0f" role="3K4Cdx">
              <node concept="10Nm6u" id="3DGS_W7ML0g" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeugbg" role="3uHU7B">
                <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML0i" role="3K4GZi">
              <node concept="10Nm6u" id="3DGS_W7ML0j" role="3uHU7w" />
              <node concept="2OqwBi" id="3DGS_W7ML0k" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTAwz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                </node>
                <node concept="2OwXpG" id="3DGS_W7ML0m" role="2OqNvi">
                  <ref role="2Oxat5" node="3DGS_W7MKYg" resolve="myFileName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DGS_W7ML0n" role="3cqZAp">
          <node concept="3clFbS" id="3DGS_W7ML0o" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7ML0p" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7ML0q" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="3DGS_W7ML0r" role="3clFbw">
            <node concept="3fqX7Q" id="3DGS_W7ML0s" role="3K4E3e">
              <node concept="2OqwBi" id="3DGS_W7ML0t" role="3fr31v">
                <node concept="liA8E" id="3DGS_W7ML0u" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3DGS_W7ML0v" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTsSp" role="2Oq$k0">
                      <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="3DGS_W7ML0x" role="2OqNvi">
                      <ref role="2Oxat5" node="3DGS_W7MKYj" resolve="myUnitName" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="3DGS_W7ML0y" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeucU6" role="1eOMHV">
                    <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML0A" role="3K4Cdx">
              <node concept="10Nm6u" id="3DGS_W7ML0B" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuWTa" role="3uHU7B">
                <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML0D" role="3K4GZi">
              <node concept="10Nm6u" id="3DGS_W7ML0E" role="3uHU7w" />
              <node concept="2OqwBi" id="3DGS_W7ML0F" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTBQA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                </node>
                <node concept="2OwXpG" id="3DGS_W7ML0H" role="2OqNvi">
                  <ref role="2Oxat5" node="3DGS_W7MKYj" resolve="myUnitName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DGS_W7ML0I" role="3cqZAp">
          <node concept="3clFbS" id="3DGS_W7ML0J" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7ML0K" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7ML0L" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="3DGS_W7ML0M" role="3clFbw">
            <node concept="3fqX7Q" id="3DGS_W7ML0N" role="3K4E3e">
              <node concept="2OqwBi" id="3DGS_W7ML0O" role="3fr31v">
                <node concept="liA8E" id="3DGS_W7ML0P" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="3DGS_W7ML0Q" role="37wK5m">
                    <node concept="37vLTw" id="3GM_nagTywX" role="2Oq$k0">
                      <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="3DGS_W7ML0S" role="2OqNvi">
                      <ref role="2Oxat5" node="3DGS_W7MKYm" resolve="myRoutineName" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="3DGS_W7ML0T" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuIxc" role="1eOMHV">
                    <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML0X" role="3K4Cdx">
              <node concept="10Nm6u" id="3DGS_W7ML0Y" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuE39" role="3uHU7B">
                <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
              </node>
            </node>
            <node concept="3y3z36" id="3DGS_W7ML10" role="3K4GZi">
              <node concept="10Nm6u" id="3DGS_W7ML11" role="3uHU7w" />
              <node concept="2OqwBi" id="3DGS_W7ML12" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagT$md" role="2Oq$k0">
                  <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
                </node>
                <node concept="2OwXpG" id="3DGS_W7ML14" role="2OqNvi">
                  <ref role="2Oxat5" node="3DGS_W7MKYm" resolve="myRoutineName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3DGS_W7ML15" role="3cqZAp">
          <node concept="3y3z36" id="3DGS_W7ML16" role="3clFbw">
            <node concept="2OqwBi" id="3DGS_W7ML17" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTwul" role="2Oq$k0">
                <ref role="3cqZAo" node="3DGS_W7MKZV" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3DGS_W7ML19" role="2OqNvi">
                <ref role="2Oxat5" node="3DGS_W7MKYp" resolve="myLineNumber" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuqRh" role="3uHU7B">
              <ref role="3cqZAo" node="3DGS_W7MKYp" resolve="myLineNumber" />
            </node>
          </node>
          <node concept="3clFbS" id="3DGS_W7ML1b" role="3clFbx">
            <node concept="3cpWs6" id="3DGS_W7ML1c" role="3cqZAp">
              <node concept="3clFbT" id="3DGS_W7ML1d" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DGS_W7ML1e" role="3cqZAp" />
        <node concept="3clFbF" id="3DGS_W7ML1f" role="3cqZAp">
          <node concept="3clFbT" id="3DGS_W7ML1g" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3DGS_W7ML1h" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3DGS_W7ML1i" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3DGS_W7ML1j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3DGS_W7ML1k" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3DGS_W7ML1l" role="3clF45" />
      <node concept="3Tm1VV" id="3DGS_W7ML1m" role="1B3o_S" />
      <node concept="3clFbS" id="3DGS_W7ML1n" role="3clF47">
        <node concept="3cpWs8" id="3DGS_W7ML1o" role="3cqZAp">
          <node concept="3cpWsn" id="3DGS_W7ML1p" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="3DGS_W7ML1q" role="1tU5fm" />
            <node concept="3cmrfG" id="3DGS_W7ML1r" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7ML1s" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7ML1t" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagT_in" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3DGS_W7ML1v" role="37vLTx">
              <node concept="17qRlL" id="3DGS_W7ML1w" role="3uHU7B">
                <node concept="3cmrfG" id="3DGS_W7ML1x" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyUk" role="3uHU7w">
                  <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="3DGS_W7ML1z" role="3uHU7w">
                <node concept="3K4zz7" id="3DGS_W7ML1$" role="1eOMHV">
                  <node concept="3cmrfG" id="3DGS_W7ML1_" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3DGS_W7ML1A" role="3K4Cdx">
                    <node concept="10Nm6u" id="3DGS_W7ML1B" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeuNWN" role="3uHU7B">
                      <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3DGS_W7ML1D" role="3K4E3e">
                    <node concept="2YIFZM" id="3DGS_W7ML1E" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <node concept="37vLTw" id="2BHiRxeuwuy" role="37wK5m">
                        <ref role="3cqZAo" node="3DGS_W7MKYg" resolve="myFileName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3DGS_W7ML1G" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7ML1H" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7ML1I" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTw3$" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3DGS_W7ML1K" role="37vLTx">
              <node concept="17qRlL" id="3DGS_W7ML1L" role="3uHU7B">
                <node concept="3cmrfG" id="3DGS_W7ML1M" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagTtkB" role="3uHU7w">
                  <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="3DGS_W7ML1O" role="3uHU7w">
                <node concept="3K4zz7" id="3DGS_W7ML1P" role="1eOMHV">
                  <node concept="3cmrfG" id="3DGS_W7ML1Q" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3DGS_W7ML1R" role="3K4Cdx">
                    <node concept="10Nm6u" id="3DGS_W7ML1S" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeunnm" role="3uHU7B">
                      <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3DGS_W7ML1U" role="3K4E3e">
                    <node concept="2YIFZM" id="3DGS_W7ML1V" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <node concept="37vLTw" id="2BHiRxeumWr" role="37wK5m">
                        <ref role="3cqZAo" node="3DGS_W7MKYj" resolve="myUnitName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3DGS_W7ML1X" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7ML1Y" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7ML1Z" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxxG" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3DGS_W7ML21" role="37vLTx">
              <node concept="17qRlL" id="3DGS_W7ML22" role="3uHU7B">
                <node concept="3cmrfG" id="3DGS_W7ML23" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagT_Q9" role="3uHU7w">
                  <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="3DGS_W7ML25" role="3uHU7w">
                <node concept="3K4zz7" id="3DGS_W7ML26" role="1eOMHV">
                  <node concept="3cmrfG" id="3DGS_W7ML27" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3DGS_W7ML28" role="3K4Cdx">
                    <node concept="10Nm6u" id="3DGS_W7ML29" role="3uHU7w" />
                    <node concept="37vLTw" id="2BHiRxeuktY" role="3uHU7B">
                      <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3DGS_W7ML2b" role="3K4E3e">
                    <node concept="2YIFZM" id="3DGS_W7ML2c" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <node concept="37vLTw" id="2BHiRxeumuh" role="37wK5m">
                        <ref role="3cqZAo" node="3DGS_W7MKYm" resolve="myRoutineName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3DGS_W7ML2e" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7ML2f" role="3cqZAp">
          <node concept="37vLTI" id="3DGS_W7ML2g" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBKB" role="37vLTJ">
              <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3DGS_W7ML2i" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxeusHb" role="3uHU7w">
                <ref role="3cqZAo" node="3DGS_W7MKYp" resolve="myLineNumber" />
              </node>
              <node concept="17qRlL" id="3DGS_W7ML2k" role="3uHU7B">
                <node concept="3cmrfG" id="3DGS_W7ML2l" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3GM_nagTynv" role="3uHU7w">
                  <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DGS_W7ML2n" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTx7x" role="3clFbG">
            <ref role="3cqZAo" node="3DGS_W7ML1p" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3DGS_W7ML2p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

